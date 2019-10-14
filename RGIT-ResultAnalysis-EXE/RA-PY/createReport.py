import pandas as pd
from fpdf import FPDF, HTMLMixin

def resource_path(relative_path):
    try:
        base_path = sys._MEIPASS
    except Exception:
        base_path = os.path.abspath(".")

    return os.path.join(base_path, relative_path)


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
    pdf.cell(0, 5, 'KT STUDENTS', 0, 1, 'C')
    pdf.cell(0, ln = 1)

    pdf.set_font('Arial', '', 12)
    pdf.write_html(KTtable(ktStudent))

    pdf.output(outputpath + '/KTStudents.pdf', 'F')
