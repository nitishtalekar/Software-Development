from tkinter import *
from tkinter import filedialog
from createReport import *
from coreAnalysis import *
from plotGraphs import *


root = Tk()

inputFileVar = StringVar()
outputFolderVar = StringVar()
department = StringVar()
progressVar = StringVar()

inputpath = ''
outputpath = ''

windowWidth = 900
windowHeight = 300
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
        Y = 40

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
        entryName1 = Entry(self, textvariable = inputFileVar, width = 50)
        entryName1.place(x = X + 210, y = Y)
        buttonBrowse1 = Button(self, text = "Browse file", command = open_input_file, relief=RAISED )
        buttonBrowse1.place(x = X + 700, y = Y + 2)

        Y = Y + 40

        labelRollList = Label(self, text = 'Select Output Folder', width = 20, justify = LEFT, anchor = 'w')
        labelRollList.place(x = X, y = Y)

        entryRoll = Entry(self, textvariable = outputFolderVar, width = 50)
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

        b1 = Button(buttonframe, text="Analyse Departmental Results", command=p1.lift)
        b1.config(bd=5, relief=RAISED)
        # b2 = Button(buttonframe, text="Find KT Students", command=p2.lift)
        # b2.config(bd=5, relief=RAISED)
        # b2.config(fg='red')
        # b3 = Button(buttonframe, text="Page 3", command=p3.lift)
        # b3.config(bd=5, relief=RAISED)
        # b3.config(fg='blue')

        b1.pack(side = LEFT, expand = True, fill = BOTH)
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

if __name__ == "__main__":

    main = MainView(root)

    # Gets the requested values of the height and widht.

    main.pack(side="top", fill="both", expand=True)

    root.title('Result Analysis')
    root.geometry("{}x{}+{}+{}".format(windowWidth, windowHeight, positionRight, positionDown))
    root.resizable(False, False)

    root.mainloop()
