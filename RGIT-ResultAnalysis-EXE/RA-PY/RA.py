#LIBRARIES
import pandas as pd
from tkinter import *
from tkinter import filedialog
import matplotlib.pyplot as plt
import numpy as np
from fpdf import FPDF, HTMLMixin



final_analysis = pd.DataFrame()
endSemMarks = pd.DataFrame()
iaMarks = pd.DataFrame()
totalMarks = pd.DataFrame()

totalCols = []
endsSemCols = []
iaCols = []

subjectcodes = {}

def resource_path(relative_path):
    try:
        base_path = sys._MEIPASS
    except Exception:
        base_path = os.path.abspath(".")

    return os.path.join(base_path, relative_path)


def exportData(outputpath, **listOfDataFrames):
    for name, df in listOfDataFrames.items():
        df.to_excel(outputpath + '/' + name + '.xlsx')

def checkpass(x,val):
    if x == 'Ab':
        return 0
    return int(int(x)>val)


def checkrange(x, p,q):
    if x == 'Ab':
        return 0
    return int(p < int(str(x).strip()) and int(str(x).strip())< q)

def CreateMarkList(inputpath):
    # include global variables
    global totalCols, endsSemCols, iaCols, endSemMarks, iaMarks, totalMarks, subjectcodes

    # READ FILE + DROP NULL COLUMNS
    original_file = pd.read_excel(inputpath)

    # remove rows wiht all na
    original_file.dropna(how = "all", inplace = True)

    # remove redundant column
    original_file.drop(['Unnamed: 1'], axis = 1, inplace = True)
    original_file = original_file.iloc[:, :-1]

    # scrap part of original dataframe
    original_file1 = original_file.iloc[3:, :]
    original_file1 = original_file1.dropna(axis = 'columns', how = 'all')

    # regenerating old file for selected columns only
    original_file = original_file.loc[:, original_file1.columns]

    # Working with Header for further use
    curr_header = [str(i) for i in original_file.iloc[2, :].values]
    add_details = [str(i) for i in original_file.iloc[3, :].values]

    header = ['SEAT', 'TOTAL', 'SGPI', 'RESULT']

    for i in range(1, len(curr_header) - 4):
        j = i
        while curr_header[j] == 'nan':
            j = j - 1
        header.insert(-3, (curr_header[j].strip() + '-' + add_details[i].strip()))

    header_later = header.copy()
    header_later.insert(1, 'NAME')

    # Creating a list of subject names and codes and mapping them
    subjectlist = [i for i in curr_header if i != 'nan']
    subjectcode = [i for i in original_file.iloc[1, :].values[1:-4] if str(i) != 'nan']
    subjectcodes = dict(zip(subjectcode, subjectlist))

    # Creating a dataframe to work on
    df = original_file1.iloc[:, :]
    df = df.loc[df['Unnamed: 2'].isna() == False]

    # removing CGPA column
    df = df.iloc[:, :-1]

    df.columns = header

    df = df.iloc[3:, :]

    # dataframe to store marks
    dfmarks = df.iloc[::2]

    # dataframe that stores names
    dfnames = df.iloc[1::2]

    # adding names to the marks dataframe
    dfmarks = dfmarks.copy()
    dfmarks['NAME'] = dfnames.loc[:, 'SEAT'].values
    dfmarks = dfmarks.loc[:, header_later]

    dfmarks.loc[:, 'NAME'] = dfmarks.loc[:, 'NAME'].apply(lambda x: x.strip('/ '))

    dfmarks.index = pd.RangeIndex(1, len(dfmarks.index) + 1)

    # Removing Old Students
    def getOld(x):
        if '+' in str(x):
            return x
    oldStudents = []
    for i in dfmarks.columns[2:-3]:
        tmp = [i for i in dfmarks[i].apply(getOld).values if i]
        try:
            oldStudents.append(min([dfmarks[i].values.tolist().index(tmp[j]) for j in range(len(tmp))]))
        except:
            pass
    if len(oldStudents) > 0:
        dfmarks = dfmarks.iloc[:min(oldStudents),]

    labstr = subjectcode[-1][:3]
    totalsubs = []
    for k, v in subjectcodes.items():
        if labstr not in k:
            totalsubs.append(v)
    if len(totalsubs) == 0:
        totalsubs = subjectlist.copy()
    df_header = list(dfmarks.columns)

    # Restructuring The Header
    totalCols = df_header[:2] + [str(i.strip() + '-TOT') for i in totalsubs] + df_header[-3:]
    endsSemCols = df_header[:2] + [str(i.strip() + '-ESE') for i in totalsubs] + df_header[-3:]
    iaCols = df_header[:2] + [str(i.strip() + '-IA') for i in totalsubs] + df_header[-3:]

    totalMarks = dfmarks[totalCols]
    endSemMarks = dfmarks[endsSemCols]
    iaMarks = dfmarks[iaCols]

    def formatMarks(x):
        x = str(x)
        if x == 'Ab':
            return int(0)

        elif '*' in x:
            x = int(x[:x.index('\r')])
            if abs(int(x) - 32) < 5:
                return 32
            elif abs(int(x) - 8) < 5:
                return 8
        elif '!' in x:
            return 8
        elif '@' in x:
            return int(x[:x.index('\r')]) + int(x[-1])
        elif x[-1] == 'E' or x[-1] == 'F':
            return int("".join(x[:-1]).strip())

        return int(x)

    for i in endSemMarks.columns[2:-3]:
        endSemMarks.loc[:,i] = endSemMarks.loc[:,i].apply(formatMarks)

    for i in iaMarks.columns[2:-3]:
        iaMarks.loc[:,i] = iaMarks.loc[:,i].apply(formatMarks)

    endSemMarks.loc[:, 'TOTAL'] = endSemMarks.loc[:, 'TOTAL'].apply(formatMarks)
    iaMarks.loc[:, 'TOTAL'] = iaMarks.loc[:, 'TOTAL'].apply(formatMarks)
    totalMarks.loc[:, 'TOTAL'] = totalMarks.loc[:, 'TOTAL'].apply(formatMarks)

    endSemMarks = endSemMarks.loc[:,~endSemMarks.columns.duplicated()]
    iaMarks = iaMarks.loc[:,~iaMarks.columns.duplicated()]
    totalMarks = totalMarks.loc[:,~totalMarks.columns.duplicated()]

    for i in range(2, len(totalMarks.columns)-3):
        totalMarks.iloc[:,i] = endSemMarks.iloc[:,i] + iaMarks.iloc[:,i]


    # Export MarkLists
    # endSemMarks.to_excel('ESE-Marks.xlsx')
    # iaMarks.to_excel('IA-Marks.xlsx')
    # totalMarks.to_excel('TOT-Marks.xlsx')

    return endSemMarks, iaMarks, totalMarks


def createFinalAnalysisDF(dftotalmarks, totalcols):
    passing = pd.DataFrame()

    passing['Topper'] = dftotalmarks.loc[:, 'SGPI'].apply(lambda x: int(float(x) > 9.3))

    for i in totalcols[2:-3]:
        passing[i.replace('TOT', 'PASSED')] = dftotalmarks[i].apply(lambda x: checkpass(x, 40))

    for i in totalcols[2:-3]:
        passing[i.replace('TOT', '40<X<50')] = dftotalmarks[i].apply(lambda x: checkrange(x, 40, 50))
        passing[i.replace('TOT', '50<X<60')] = dftotalmarks[i].apply(lambda x: checkrange(x, 50, 60))
        passing[i.replace('TOT', 'X>60')] = dftotalmarks[i].apply(lambda x: checkrange(x, 60, 100))

    passing['SGPI < 40'] = dftotalmarks.loc[:, 'SGPI'].apply(lambda x: int(float(x) < 4))
    passing['40 < SGPI < 50'] = dftotalmarks.loc[:, 'SGPI'].apply(lambda x: int(float(x) > 3.9 and float(x) < 5.1))
    passing['50 < SGPI < 60'] = dftotalmarks.loc[:, 'SGPI'].apply(lambda x: int(float(x) > 5.0 and float(x) < 6.1))
    passing['60 < SGPI < 70'] = dftotalmarks.loc[:, 'SGPI'].apply(lambda x: int(float(x) > 6.0 and float(x) < 7.1))
    passing['70 < SGPI < 80'] = dftotalmarks.loc[:, 'SGPI'].apply(lambda x: int(float(x) > 7.0 and float(x) < 8.1))
    passing['80 < SGPI < 90'] = dftotalmarks.loc[:, 'SGPI'].apply(lambda x: int(float(x) > 8.0 and float(x) < 9.1))
    passing['90 < SGPI < 100'] = dftotalmarks.loc[:, 'SGPI'].apply(lambda x: int(float(x) > 9.0 and float(x) < 10.1))

    passing['Perfect 100'] = dftotalmarks.loc[:, 'SGPI'].apply(lambda x: int(float(x) == 10))

    # Export Files
    global final_analysis
    final_analysis = pd.concat([dftotalmarks, passing], axis = 1)

    return final_analysis



def createplots(marks):
    imgpath = []
    subimgpath = []
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




def toppertable(top3):
	html = """
    <font size=10>
    <table border="0" align="center" width="80%">
    <thead>
    <tr>
    <th width="15%">ID</th>
    <th width="70%">Name</th>
    <th width="15%">SGPI</th>
    </tr>
    </thead>
    <tbody >
    """
	s = """"""
	for i in range(len(top3)):
		s = s + '''
        <tr>
        <td align="center" width="15%">''' + str(i + 1) + '''</td>
        <td align="center" width="70%">''' + str(top3.iloc[i, 1]).strip('/') + '''</td>
        <td align="center" width="15%">''' + str(top3.iloc[i, -2]) + '''</td>
        </tr>'''
	html = html + s
	s = """
    </tbody>
    </table>
    </font>
    """
	html = html + s
	return html


def subtoppertable(subtopper):
	html = ''''''
	for k, v in subtopper.items():
		html = html + """<br>
        <font size=10>
        <b align="Left">""" + k.split("-")[0] + """<b>
        <table border="0" align="center" width="80%">
        <thead>
        <tr>
        <th width="15%">Subject</th>
        <th width="70%">Name</th>
        <th width="15%">Marks</th>
        </tr>
        </thead>
        <tbody >"""
		s = ''
		for i in v:
			s = s + '''
            <tr>
            <td align="center" width="15%">''' + str(i[0] + 1) + '''</td>
            <td align="center" width="70%">''' + str(i[1]).strip('/') + '''</td>
            <td align="center" width="15%">''' + str(i[2]) + '''</td>
            </tr>
            '''
		html = html + s + """
        </tbody>
        </table>
        </font>
        """
	return html


def overalltable(overallresult):
	html = '''
    <font size=10>
    <table border="0" align="center" width="100%">
    <thead>
    <tr>
    <th width="52%">Subject</th>
    <th width="8%">Total</th>
    <th width="8%">Pass</th>
    <th width="8%">Pass%</th>
    <th width="8%">40-50</th>
    <th width="8%">50-60</th>
    <th width="8%">60+</th>
    </tr>
    </thead>
    <tbody >'''
	s = ''
	for i in range(len(overallresult)):
		s = s + '''
        <tr>
        <td align="center" width="52%">''' + str(overallresult.iloc[i, 0]) + '''</td>
        <td align="center" width="8%">''' + str(overallresult.iloc[i, 1]) + '''</td>
        <td align="center" width="8%">''' + str(overallresult.iloc[i, 2]) + '''</td>
        <td align="center" width="8%">''' + str(overallresult.iloc[i, 3]) + '''</td>
        <td align="center" width="8%">''' + str(overallresult.iloc[i, 4]) + '''</td>
        <td align="center" width="8%">''' + str(overallresult.iloc[i, 5]) + '''</td>
        <td align="center" width="8%">''' + str(overallresult.iloc[i, 6]) + '''</td>
        </tr>'''

	html = html + s + '''
    </tbody>
    </table>
    </font>
    '''
	return html


#####################################################


class PDF(FPDF, HTMLMixin):
	def header(self):
		self.image(resource_path("RGIT.png"), x = 25, h = 30)


# pdf.cell(w, h = 0, txt = '', border = 0, ln = 0, align = '', fill = False, link = '')
def createreport(dftotalmarks, dfendSemMarks, dfiaMarks, imgpath, subimgpath, outputpath, department):
	for i in dftotalmarks.columns[2:-3]:
		dftotalmarks[i] = dftotalmarks[i].apply(lambda x: int(x))
	# dftotalmarks = pd.read_excel('TotalMarks.xlsx').iloc[:, 1:]

	pdf = PDF()
	pdf.add_page()
	pdf.dashed_line(10, 35, 200, 35)
	pdf.set_font('Arial', 'B', 14)
	pdf.cell(0, 5, 'DEPARTMENT OF '+ department, 0, 1, 'C')

	#####################################################

	# TOP3
	pdf.set_font('Arial', 'B', 12)
	pdf.cell(0, 5, 'Overall Topper:', 0, 1, 'L')
	pdf.cell(0, ln = 1)

	top3 = dftotalmarks.sort_values(['SGPI', 'TOTAL'], axis = 0, ascending = False, inplace = False, kind = 'quicksort',
	                      na_position = 'last').iloc[:3, :]
	pdf.set_font('Arial', '', 12)
	pdf.write_html(toppertable(top3))

	#####################################################

	# SUBJECTTOPPERS
	pdf.cell(0, ln = 1)
	pdf.set_font('Arial', 'B', 12)
	pdf.cell(0, 5, 'Subject Toppers:', 0, 1, 'L')

	subtoppers = {}

	for i in dftotalmarks.columns[2:-3]:
		sub2 = dftotalmarks.sort_values(i, axis = 0, ascending = False, inplace = False, kind = 'quicksort').iloc[:2, :]
		for j in range(2):
			if j == 0:
				subtoppers[i] = [0, sub2.iloc[j, 1], sub2.iloc[j, list(dftotalmarks.columns).index(i)]]
			else:
				subtoppers[i] = [subtoppers[i], [1, sub2.iloc[j, 1], sub2.iloc[j, list(dftotalmarks.columns).index(i)]]]

	pdf.cell(0, ln = 1)
	pdf.set_font('Arial', 'B', 14)
	pdf.write_html(subtoppertable(subtoppers))

	#####################################################

	overallresult = pd.DataFrame(columns = ['Subjects', 'Appeared', 'Passed', 'Pass%', '40-50', '51-59', '60+'])
	overallresult['Subjects'] = dftotalmarks.columns[2:-3]
	app = []
	passed = []
	psp = []
	m1 = []
	m2 = []
	m3 = []

	for i in range(2, 2+len(dftotalmarks.columns[2:-3])):
		app.append(sum(dftotalmarks.iloc[:,i].apply(lambda x: int(x) > 0)))
		dfendSemMarks, dfiaMarks,
		passed.append(sum(dfendSemMarks.iloc[:,i].apply(lambda x: int(x) >= 32) & dfiaMarks.iloc[:,i].apply(lambda x: int(x) >= 8)))
		psp.append(round(passed[-1] * 100 / app[-1], 2))
		m1.append(sum(dftotalmarks.iloc[:,i].apply(lambda x: int(x) >= 40 and int(x) < 50)))
		m2.append(sum(dftotalmarks.iloc[:,i].apply(lambda x: int(x) >= 50 and int(x) < 60)))
		m3.append(sum(dftotalmarks.iloc[:,i].apply(lambda x: int(x) >= 60)))

	overallresult['Appeared'] = app
	overallresult['Passed'] = passed
	overallresult['Pass%'] = psp
	overallresult['40-50'] = m1
	overallresult['51-59'] = m2
	overallresult['60+'] = m3
	overallresult['Subjects'] = overallresult['Subjects'].apply(lambda x: x.split("-")[0])

	pdf.cell(0, ln = 1)
	pdf.set_font('Arial', 'B', 12)
	pdf.cell(0, 5, 'Result Summary:', 0, 1, 'L')
	pdf.set_font('Arial', 'B', 11)
	pdf.cell(0, 5, 'Result :- ' + str(round(sum(dftotalmarks['RESULT'].apply(lambda x: x == 'P')) * 100 / len(dftotalmarks), 2)), 0, 1, 'L')

	pdf.write_html(overalltable(overallresult))

	#####################################################

	pdf.cell(0, ln = 1)
	pdf.set_font('Arial', 'B', 12)
	pdf.cell(0, 5, 'Statistical Analysis:', 0, 1, 'L')
	pdf.image(imgpath[0], h = 95)

	pdf.cell(0, ln = 1)
	pdf.set_font('Arial', 'B', 12)
	pdf.cell(0, 5, 'SGPI Statistical Analysis:', 0, 1, 'L')
	pdf.image(imgpath[1], h = 95)

	#####################################################

	pdf.cell(0, ln = 1)
	pdf.set_font('Arial', 'B', 12)
	pdf.cell(0, 5, 'Subjectwise Analysis:', 0, 1, 'L')

	for i in range(len(subimgpath)):
		pdf.ln(h=2)
		pdf.image(subimgpath[i], h = 95)

	pdf.output(outputpath + '/ResultAnalysis.pdf', 'F')


def CreateKT(outputpath, ktStudent, department):
    def KTtable(ktStudent):
        html = ''
        for k, v in ktStudent.items():
            if len(v) > 0:
                html = html + """<br>
                <font size=10>
                <table border="0" align="center" width="80%">
                <thead>
                <tr>
                    <th width="100%">"""+k.split('-')[0]+"""</th>
                </tr>
                </thead>
                <tbody >"""
                s = ''
                for i in v:
                    s = s + '''
                    <tr>
                    <td align="center" width="100%">''' + str(i).strip('/ ') + '''</td>
                    </tr>
                    '''
                html = html + s + """
                </tbody>
                </table>
                </font>
                """
        return html


    # department, ktStudent
    # department = 'COMPUTER ENGINEERING'
    pdf = PDF()
    pdf.add_page()
    pdf.dashed_line(10, 35, 200, 35)
    pdf.set_font('Arial', 'B', 14)
    pdf.cell(0, 5, 'DEPARTMENT OF '+ department, 0, 1, 'C')

    #####################################################

    pdf.cell(0, ln = 1)
    pdf.set_font('Arial', 'B', 12)
    pdf.cell(0, 5, 'INTERNAL KT STUDENTS', 0, 1, 'C')
    pdf.cell(0, ln = 1)

    pdf.set_font('Arial', '', 12)
    pdf.write_html(KTtable(ktStudent))

    pdf.output(outputpath + '/KTStudents.pdf', 'F')



root = Tk()

inputFileVar = StringVar()
outputFolderVar = StringVar()
department = StringVar()
progressVar = StringVar()

inputpath = ''
outputpath = ''

windowWidth = 900
windowHeight = 400
positionRight = int(root.winfo_screenwidth() / 2 - windowWidth / 2)
positionDown = int(root.winfo_screenheight() / 2 - windowHeight / 2)

def open_input_file():
    global inputpath

    inputpath = filedialog.askopenfilenames(filetypes=[("Excel files", ".xlsx .xls")])
    text = [i.split('/')[-1] for i in inputpath]
    inputFileVar.set(", ".join(text))


def select_output_folder():
    global outputpath
    outputpath = filedialog.askdirectory()
    outputFolderVar.set(outputpath)

def file_submit():
    global progressVar
    global inputpath, outputpath, department
    global totalCols, endsSemCols, iaCols, endSemMarks, iaMarks, totalMarks, subjectcodes
    if len(inputpath) > 0:
        dftotalMarks = pd.DataFrame()
        dfendSemMarks = pd.DataFrame()
        dfiaMarks = pd.DataFrame()
        for i in range(len(inputpath)):
            progressVar.set('Reading File ' + str(i+1))
            endSemMarks, iaMarks, totalMarks = CreateMarkList(inputpath[i])

            dfendSemMarks = pd.concat([dfendSemMarks, endSemMarks], sort=False)
            dfiaMarks = pd.concat([dfiaMarks, iaMarks], sort=False)
            dftotalMarks = pd.concat([dftotalMarks, totalMarks], sort=False)

            if i > 0:
                col = list(endSemMarks.columns)
                col2 = list(dfendSemMarks.columns[2:-3])
                column = col[:-3] + [i for i in col2 if i not in col] + col[-3:]
                dfendSemMarks = dfendSemMarks[column]
                dfendSemMarks = dfendSemMarks.fillna(0)
                dfendSemMarks.index = pd.RangeIndex(1, len(dfendSemMarks.index)+1)

                col = list(iaMarks.columns)
                col2 = list(dfiaMarks.columns[2:-3])
                column = col[:-3] + [i for i in col2 if i not in col] + col[-3:]
                dfiaMarks = dfiaMarks[column]
                dfiaMarks = dfiaMarks.fillna(0)
                dfiaMarks.index = pd.RangeIndex(1, len(dfiaMarks.index)+1)

                col = list(totalMarks.columns)
                col2 = list(dftotalMarks.columns[2:-3])
                column = col[:-3] + [i for i in col2 if i not in col] + col[-3:]
                dftotalMarks = dftotalMarks[column]
                dftotalMarks = dftotalMarks.fillna(0)
                dftotalMarks.index = pd.RangeIndex(1, len(dftotalMarks.index)+1)

        progressVar.set('Creating Pass Analysis')
        passAnalysis = createFinalAnalysisDF(dftotalMarks, totalCols)

        progressVar.set('Exporting Files')
        exportData(outputpath, TotalMarks = dftotalMarks, PassingAnalysis = passAnalysis, ESEMarks = dfendSemMarks, IAMarks = dfiaMarks)

        progressVar.set('Plotting the data')
        imgpath, subimgpath = createplots(dftotalMarks)

        progressVar.set('Creating Result Report')
        createreport(dftotalMarks, dfendSemMarks, dfiaMarks, imgpath, subimgpath, outputpath, department.get())

        progressVar.set('Finding Internal KT Students')
        ktIA = {}
        for i in dfiaMarks.columns[2:-3]:
            ktIA[i] = dfiaMarks[(dfiaMarks[i] < 8) & (dfiaMarks[i] > 0)][i]

        ktStudent = {}
        for k, v in ktIA.items():
            ktStudent[k] = []
            for i in list(v.index.values):
                ktStudent[k].append(dfiaMarks.iloc[i-1,1])
        progressVar.set('Creating KT Students List')
        CreateKT(outputpath, ktStudent, department.get())

        progressVar.set('Analysis Complete. Proceed to Next Set of Results, if any.')


class Page(Frame):
    def __init__(self, *args, **kwargs):
        Frame.__init__(self, *args, **kwargs)
    def show(self):
        self.lift()

class Page1(Page):
    def __init__(self, *args, **kwargs):
        Page.__init__(self, *args, **kwargs)

        X = 40
        Y = 60

        MainLabel = Label(self, text = 'RESULT ANALYSIS', width = 200, font = "Helvetica 24 bold", pady=10).pack()

        progressVar.set('Select All Results and Output Folder and Submit')
        progressLabel = Label(self, textvariable = progressVar, width = 200,font = "Helvetica 12 bold", pady=5).pack()

        # Y = Y + 40
        #
        # labelName = Label(self, text = 'Select 1 File for Single Result File. Select File 2 for 2nd Elective', width = 100, justify = LEFT, anchor = 'w' )
        # labelName.place(x = X, y = Y)

        Y = Y + 40

        labelName1 = Label(self, text = 'Select Results (Excel File)', width = 20, justify = LEFT, anchor = 'w')
        labelName1.place(x = X, y = Y)
        entryName1 = Entry(self, textvariable = inputFileVar, width = 60)
        entryName1.place(x = X + 210, y = Y)
        buttonBrowse1 = Button(self, text = "Browse file", command = open_input_file, relief=RAISED )
        buttonBrowse1.place(x = X + 700, y = Y + 2)

        Y = Y + 40

        labelRollList = Label(self, text = 'Select Output Folder', width = 20, justify = LEFT, anchor = 'w')
        labelRollList.place(x = X, y = Y)

        entryRoll = Entry(self, textvariable = outputFolderVar, width = 60)
        entryRoll.place(x = X + 210, y = Y)

        buttonBrowse3 = Button(self, text = "Browse Folder", command = select_output_folder, relief=RAISED )
        buttonBrowse3.place(x = X + 700, y = Y + 2)

        Y = Y + 40

        labelDept = Label(self, text="Department", justify = LEFT, width = 40, anchor = 'w')
        labelDept.place(x = X, y = Y)

        radioDept1 = Radiobutton(self, text="COMPS", variable=department,value='COMPUTER ENGINEERING')
        radioDept1.place(x = X + 210, y = Y)

        radioDept2 = Radiobutton(self,text="EXTC", variable=department, value='ELECTRONICS AND TELECOMMUNICATION ENGINEERING')
        radioDept2.place(x = X + 320, y = Y)

        radioDept3 = Radiobutton(self,text="INSTR", variable=department, value='INSTRUMENTATION ENGINEERING')
        radioDept3.place(x = X + 410, y = Y)

        radioDept4 = Radiobutton(self,text="IT", variable=department, value='INFORMATION TECHNOLOGY ENGINEERING')
        radioDept4.place(x = X + 500, y = Y)

        radioDept5 = Radiobutton(self,text="MECH", variable=department, value='MECHANICAL ENGINEERING')
        radioDept5.place(x = X + 590, y = Y)

        Y = Y + 40

        buttonSubmit = Button(self, text = "Submit", command = file_submit, width = 10, relief=RAISED )
        buttonSubmit.place(x = (windowWidth - 100) // 2, y = windowHeight - 100)

# class Page2(Page):
#     def __init__(self, *args, **kwargs):
#         Page.__init__(self, *args, **kwargs)
#
#
# class Page3(Page):
#     def __init__(self, *args, **kwargs):
#         Page.__init__(self, *args, **kwargs)


class MainView(Frame):
    def __init__(self, *args, **kwargs):
        Frame.__init__(self, *args, **kwargs)
        p1 = Page1(self)
        # p2 = Page2(self)
        # p3 = Page3(self)

        buttonframe = Frame(self)
        container = Frame(self)
        buttonframe.pack(side="top", fill="x", expand=False)
        container.pack(side="top", fill="both", expand=True)

        p1.place(in_=container, x=0, y=0, relwidth=1, relheight=1)
        # p2.place(in_=container, x=0, y=0, relwidth=1, relheight=1)
        # p3.place(in_=container, x=0, y=0, relwidth=1, relheight=1)
        # 
        # b1 = Button(buttonframe, text="Analyse Departmental Results", command=p1.lift)
        # b1.config(bd=5, relief=RAISED)
        # b2 = Button(buttonframe, text="Find KT Students", command=p2.lift)
        # b2.config(bd=5, relief=RAISED)
        # b2.config(fg='red')
        # b3 = Button(buttonframe, text="Page 3", command=p3.lift)
        # b3.config(bd=5, relief=RAISED)
        # # b3.config(fg='blue')
        # 
        # b1.pack(side = LEFT, expand = True, fill = BOTH)
        # b2.pack(side = LEFT, expand = True, fill = BOTH)
        # b3.pack(side = LEFT, expand = True, fill = BOTH)

        p1.show()

def main_function():
    main = MainView(root)

    # Gets the requested values of the height and widht.

    main.pack(side="top", fill="both", expand=True)

    root.title('Result Analysis')
    root.geometry("{}x{}+{}+{}".format(windowWidth, windowHeight, positionRight, positionDown))

    root.mainloop()


if __name__ == '__main__':
	main_function()
