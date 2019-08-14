# LIBRARIES
import pandas as pd


def analyse(path1, path2):
	df = pd.read_excel(path1, header = 7)
	df = df.drop(['Unnamed: 1', 'Unnamed: 28', 'Unnamed: 29'], axis = 1)

	# HEADER LIST
	col = list(df.columns.values)
	c = col[:]
	unclean_column_names = col.copy()
	col2 = df.iloc[:1, :].values[0]

	i = 2
	while i < len(col) - 3:
		x = col[i - 1]
		while 'Unnamed' in col[i]:
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

	# print(l)
	cols = list(zip(col, col2))
	header = ["-".join(i).strip('-') for i in cols]

	col.insert(1, 'NAME')  # For Storing orignal order of columns

	newdf = pd.read_excel(path1, header = 6)
	coursenum = list(newdf.columns)
	coursenum = [i for i in coursenum if 'Unnamed' not in i][1:-5]
	subject_names = [i for i in unclean_column_names if 'Unnamed' not in i]
	subjectcodes = dict(zip(coursenum, subject_names))

	df = df.rename(columns = dict(zip(c, header)))
	df = df.iloc[3:, :]
	df.index = pd.RangeIndex(len(df.index))
	dfmarks = df.loc[::2]
	dfnames = df.loc[1::2]

	# dfmarks.loc[:,'NAME'] = dfnames['SEAT NUM'].values
	dfmarks.loc[:, 'NAME'] = dfnames.loc[:, 'SEAT NUM'].values
	dfmarks.index = pd.RangeIndex(len(dfmarks.index))

	l = [i for i in dfnames.columns if 'TOT' in i][:-1] + list(dfnames.columns[-3:])
	dfnames = dfnames.drop(l, axis = 1)

	def clean(x):
		if x == 'Ab':
			return int(0)
		x = list(str(x))
		if x[-1] == 'E' or x[-1] == 'F':
			return int("".join(x[:-1]))
		else:
			return int("".join(x))

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

	dftotalmarks.to_csv(path2+'/TOTALMARKS.csv')
