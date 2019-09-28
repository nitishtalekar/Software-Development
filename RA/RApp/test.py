from tkinter import *
from tkinter import filedialog
from createReport import *
from coreAnalysis import *
from plotGraphs import *


root = Tk()

inputFileVar1 = StringVar()
inputFileVar2 = StringVar()
outputFolderVar = StringVar()
dept = StringVar()

path1 = ''
path2 = ''

windowWidth = 800
windowHeight = 400
positionRight = int(root.winfo_screenwidth() / 2 - windowWidth / 2)
positionDown = int(root.winfo_screenheight() / 2 - windowHeight / 2)

def open_file1():
	global path1
	path1 = filedialog.askopenfilename()
	inputFileVar.set(path1)


def open_file2():
	global path2
	path2 = filedialog.askdirectory()
	outputFolderVar.set(path2)


def file_submit():
	global path1, path2, dept
	dftm = analyse(path1, path2)
	imgpath, subimgpath = createplots(dftm)
	createreport(dftm, imgpath,subimgpath, path2, dept.get())


class Page(Frame):
    def __init__(self, *args, **kwargs):
        Frame.__init__(self, *args, **kwargs)
    def show(self):
        self.lift()

class Page1(Page):
   def __init__(self, *args, **kwargs):
       Page.__init__(self, *args, **kwargs)
       # label = Label(self, text="This is page 1")
       # label.pack(side="top", fill="both", expand=True)

       X = 40
       Y = 40
       labelName = Label(self, text = 'Select 1 File for Single Result File. Select File 2 for 2nd Elective', width = 100, justify = LEFT, anchor = 'w' )
       labelName.place(x = X, y = Y)

       Y = Y + 40

       labelName = Label(self, text = 'Select Result (Excel File) - 1', width = 20, justify = LEFT, anchor = 'w')
       labelName.place(x = X, y = Y)

       entryName = Entry(self, textvariable = inputFileVar1, width = 40)
       entryName.place(x = X + 210, y = Y)

       buttonBrowse1 = Button(self, text = "Browse file", command = open_file1)
       buttonBrowse1.place(x = X + 600, y = Y + 2)

       Y = Y + 40

       labelName = Label(self, text = 'Select Result (Excel File) - 2', width = 20, justify = LEFT, anchor = 'w')
       labelName.place(x = X, y = Y)

       entryName = Entry(self, textvariable = inputFileVar2, width = 40)
       entryName.place(x = X + 210, y = Y)

       buttonBrowse1 = Button(self, text = "Browse file", command = open_file1)
       buttonBrowse1.place(x = X + 600, y = Y + 2)

       Y = Y + 40

       labelRollList = Label(self, text = 'Select Output Folder', width = 20, justify = LEFT, anchor = 'w')
       labelRollList.place(x = X, y = Y)

       entryRoll = Entry(self, textvariable = outputFolderVar, width = 40)
       entryRoll.place(x = X + 210, y = Y)

       buttonBrowse1 = Button(self, text = "Browse Folder", command = open_file2)
       buttonBrowse1.place(x = X + 600, y = Y + 2)

       Y = Y + 40

       labelDept = Label(self, text="Department", justify = LEFT, width = 40, anchor = 'w')
       labelDept.place(x = X, y = Y)

       radioDept1 = Radiobutton(self, text="COMPS", variable=dept,value='COMPUTER ENGINEERING')
       radioDept1.place(x = X + 210, y = Y)

       radioDept2 = Radiobutton(self,text="EXTC", variable=dept, value='ELECTRONICS AND TELECOMMUNICATION ENGINEERING')
       radioDept2.place(x = X + 300, y = Y)

       radioDept3 = Radiobutton(self,text="INSTR", variable=dept, value='INSTRUMENTATION ENGINEERING')
       radioDept3.place(x = X + 390, y = Y)

       radioDept4 = Radiobutton(self,text="IT", variable=dept, value='INFORMATION TECHNOLOGY ENGINEERING')
       radioDept4.place(x = X + 480, y = Y)

       radioDept5 = Radiobutton(self,text="MECH", variable=dept, value='MECHANICAL ENGINEERING')
       radioDept5.place(x = X + 570, y = Y)

       buttonSubmit = Button(self, text = "Submit", command = file_submit, width = 10)
       buttonSubmit.place(x = (windowWidth - 100) // 2, y = windowHeight - 100)

class Page2(Page):
   def __init__(self, *args, **kwargs):
       Page.__init__(self, *args, **kwargs)
       label = Label(self, text="This is page 2")
       label.pack(side="top", fill="both", expand=True)

class Page3(Page):
   def __init__(self, *args, **kwargs):
       Page.__init__(self, *args, **kwargs)
       label = Label(self, text="This is page 3")
       label.pack(side="top", fill="both", expand=True)

class MainView(Frame):
    def __init__(self, *args, **kwargs):
        Frame.__init__(self, *args, **kwargs)
        p1 = Page1(self)
        p2 = Page2(self)
        p3 = Page3(self)

        buttonframe = Frame(self)
        container = Frame(self)
        buttonframe.pack(side="top", fill="x", expand=False)
        container.pack(side="top", fill="both", expand=True)

        p1.place(in_=container, x=0, y=0, relwidth=1, relheight=1)
        p2.place(in_=container, x=0, y=0, relwidth=1, relheight=1)
        p3.place(in_=container, x=0, y=0, relwidth=1, relheight=1)

        b1 = Button(buttonframe, text="Analyse Result", fg='blue', command=p1.lift)
        b2 = Button(buttonframe, text="Find KT Students", command=p2.lift)
        b3 = Button(buttonframe, text="Page 3", command=p3.lift)

        b1.pack(side = LEFT, expand = True, fill = BOTH)
        b2.pack(side = LEFT, expand = True, fill = BOTH)
        b3.pack(side = LEFT, expand = True, fill = BOTH)

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

    root.mainloop()
