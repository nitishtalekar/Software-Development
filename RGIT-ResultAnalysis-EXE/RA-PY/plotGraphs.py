import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

imgpath = []
subimgpath = []


def createplots(marks):
	cols = list(marks.columns[2:-3])

	histogram = []
	for i in cols:
		x = [len([j for j in marks.loc[:, i] if int(j) <= 50])]
		x.append(len([j for j in marks.loc[:, i] if int(j) > 50 and int(j) <= 60]))
		x.append(len([j for j in marks.loc[:, i] if int(j) > 60]))
		histogram.append(x)

	df1 = [['1. <50', cols[i], histogram[i][0]] for i in range(len(cols))]
	df1 = df1 + [['2. 5060', cols[i], histogram[i][1]] for i in range(len(cols))]
	df1 = df1 + [['3. 60+', cols[i], histogram[i][2]] for i in range(len(cols))]
	df1 = df1 + [['4. Total', cols[i], sum(marks.iloc[:, 2+i].apply(lambda x: int(x) > 0))] for i in range(len(cols))]
	df1 = df1 + [['5. Passed', cols[i], sum(marks.iloc[:, 2 + i].apply(lambda x: int(x) > 35))] for i in range(len(cols))]

	df1 = pd.DataFrame(df1, columns = ['Ranges', 'Subject', 'No.of Students'])

	df1 = df1.pivot('Ranges', 'Subject', 'No.of Students')
	df1.columns = [i.split('-')[0] for i in df1.columns]

	df1.plot(kind = 'bar', figsize = (20, 10))
	plt.xticks(np.arange(5),
	           ('Less than 50', 'Between 50 and 60', 'Greater than 60', 'Total Appeared', 'Passed Percentages'),
	           rotation = 'horizontal')
	plt.ylabel('No. of Students', fontsize = 20)
	plt.xlabel('Subject Wise Distribution', fontsize = 20)
	path = 'media/SUB.png'
	plt.savefig(path)

	imgpath.append(path)

	sgpi = [['Less Than 4', sum(marks['SGPI'].apply(lambda x: float(x) < 4))],
	        ['Between 4 & 5', sum(marks['SGPI'].apply(lambda x: float(x) > 4 and float(x) < 5))],
	        ['Between 5 & 6', sum(marks['SGPI'].apply(lambda x: float(x) > 5 and float(x) < 6))],
	        ['Between 6 & 7', sum(marks['SGPI'].apply(lambda x: float(x) > 6 and float(x) < 7))],
	        ['Between 7 & 8', sum(marks['SGPI'].apply(lambda x: float(x) > 7 and float(x) < 8))],
	        ['Between 8 & 9', sum(marks['SGPI'].apply(lambda x: float(x) > 8 and float(x) < 9))],
	        ['Between 9 & 10', sum(marks['SGPI'].apply(lambda x: float(x) > 9 and float(x) < 10))]]
	sgpi = pd.DataFrame(sgpi, columns = ['Range', 'No. of Students'])

	ax = sgpi.plot.bar(x = 'Range', y = 'No. of Students', rot = 0, figsize = (20, 10), grid = True)
	plt.xlabel('SGPI Statistics', fontsize = 20)
	plt.ylabel('No. of Students', fontsize = 20)

	path = 'media/SGPI.png'
	plt.savefig(path)

	imgpath.append(path)

	for i in marks.columns[2:-3]:
		subject = [['Less Than 40', sum(marks[i].apply(lambda x: float(x) > 0 and float(x)< 40))],
					['Between 40 & 50', sum(marks[i].apply(lambda x: float(x) >= 40 and float(x) <50))],
					['Between 50 & 60', sum(marks[i].apply(lambda x: float(x) >= 50 and float(x) <60))],
					['Between 60 & 70', sum(marks[i].apply(lambda x: float(x) >= 60 and float(x) <70))],
					['Between 70 & 80', sum(marks[i].apply(lambda x: float(x) >= 70 and float(x) <80))],
					['Above 80', sum(marks[i].apply(lambda x: float(x) >= 80))]]
		subject = pd.DataFrame(subject, columns=['Range','No. of Students'])
		ax = subject.plot.bar(x='Range', y='No. of Students', rot=0, figsize=(20,10), grid=True)
		plt.xlabel(i.split("-")[0], fontsize=20)
		plt.ylabel('No. of Students',fontsize=20)
		path = 'media/'+i.split("-")[0]+'.png'
		plt.savefig(path)
		subimgpath.append(path)

	return imgpath, subimgpath
