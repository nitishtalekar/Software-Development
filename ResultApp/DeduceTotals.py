# LIBRARIES
import pandas as pd


def clean(x):
	if x == 'Ab':
		return int(0)
	x = list(str(x))
	if x[-1] == 'E' or  x[-1] == 'F':
		return "".join(x[:-1]).strip()
	else:
		return "".join(x)


def findtotals(path1, path2):
	original_file = pd.read_excel(path1)
	original_file.dropna(how="all", inplace=True)
	original_file = original_file.drop(['Unnamed: 1','Unnamed: 28','Unnamed: 29'], axis=1)

	df = original_file.iloc[3:, :]
	df.columns = original_file.iloc[2, :]

	# HEADER LIST
	colog = list(df.columns.values)
	col = [str(i) for i in list(df.columns.values)]
	c = col[:]
	unclean_column_names = col.copy()
	col2 = df.iloc[:1, :].values[0]

	for i in col:
		if col.count(i) == 2:
			col[col.index(i)] = i + '-T'

	i = 2
	while i < len(col) - 3:
		x = col[i - 1]
		while 'nan' in col[i]:
			col[i] = x
			i = i + 1
		i = i + 1

	# INITIALIZE
	col[0] = 'SEAT NUM'
	col[i] = 'TOTAL'
	col[i + 1] = 'GPA'
	col[i + 2] = 'RESULT'
	col2[0] = ''
	col2[-1] = ''
	col2[-2] = ''
	col2[-3] = ''

	cols = list(zip(col, col2))
	header = ["-".join(i).strip('-') for i in cols]

	col.insert(1, 'NAME')  # For Storing original order of columns

	# To store subject names and subject codes - To be used later
	newdf = df.iloc[2:, :]
	newdf.columns = original_file.iloc[1, :]
	coursenum = [str(i) for i in list(newdf.columns)][1:-3]
	coursenum = [i for i in coursenum if 'nan' not in i]
	subject_names = [i for i in unclean_column_names if 'nan' not in i]
	subjectcodes = dict(zip(coursenum, subject_names))

	# setting clean header to data frame
	df.columns = header
	df = df.iloc[3:, :]
	df.index = pd.RangeIndex(len(df.index))

	dfmarks = df.loc[::2]
	dfnames = df.loc[1::2]

	dfmarks.loc[:, 'NAME'] = dfnames.loc[:, 'SEAT NUM'].values
	dfmarks.index = pd.RangeIndex(len(dfmarks.index))

	l = [i for i in dfnames.columns if 'TOT' in i][:-1] + list(dfnames.columns[-3:])
	dfnames = dfnames.drop(l, axis = 1)

	for i in dfmarks.columns[1:-4]:
		dfmarks.loc[:, i] = dfmarks.loc[:, i].apply(clean)

	dfcolumns = list(dfmarks.columns)
	totalcols = [dfcolumns[0]] + [i for i in dfcolumns if 'TOT' in i]
	totalcols = totalcols + dfcolumns[-3:]
	dftotalmarks = dfmarks.loc[:, totalcols]

	originalcol = col[:]
	originalcol = list(dict.fromkeys(originalcol))  # Stores Original Order of columns

	# REORDER COLUMNS
	totalmarkscol = []
	for i in originalcol:
		if i in dftotalmarks.columns:
			totalmarkscol.append(i)
		elif str(i + str('-TOT')) in dftotalmarks.columns:
			totalmarkscol.append(str(i + str('-TOT')))

	temp = [i for i in coursenum if coursenum[0][:3] in i]
	subjectcols = list(dftotalmarks)[2:-3]
	subjectcols = subjectcols[:len(temp)]
	totalmarkscol = totalmarkscol[:2] + subjectcols + totalmarkscol[-3:]
	dftotalmarks = dftotalmarks[totalmarkscol]

	dftotalmarks.to_csv(path2 + '/TOTALMARKS.csv')
