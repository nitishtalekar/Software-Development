from tkinter import *
from tkinter import filedialog
from createReport import *
from coreAnalysis import *
from plotGraphs import *

path1 = ''
path2 = ''


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
	imgpath = createplots(dftm)
	createreport(dftm, imgpath, path2, dept.get())


def main_function():
	root.mainloop()


root = Tk()

inputFileVar = StringVar()
outputFolderVar = StringVar()
dept = StringVar()

# Gets the requested values of the height and widht.
windowWidth = 800
windowHeight = 300
positionRight = int(root.winfo_screenwidth() / 2 - windowWidth / 2)
positionDown = int(root.winfo_screenheight() / 2 - windowHeight / 2)

root.title('Result Analysis')
root.geometry("{}x{}+{}+{}".format(windowWidth, windowHeight, positionRight, positionDown))

root.resizable(False, False)

# LAYOUT X Y VARIABLE
X = 40
Y = 40

labelName = Label(root, text = 'Select Result (Excel File)', width = 20, justify = LEFT, anchor = 'w')
labelName.place(x = X, y = Y)

entryName = Entry(root, textvariable = inputFileVar, width = 40)
entryName.place(x = X + 210, y = Y)

buttonBrowse1 = Button(root, text = "Browse file", command = open_file1)
buttonBrowse1.place(x = X + 600, y = Y + 2)

labelRollList = Label(root, text = 'Select Output Folder', width = 20, justify = LEFT, anchor = 'w')
labelRollList.place(x = X, y = Y + 40)


entryRoll = Entry(root, textvariable = outputFolderVar, width = 40)
entryRoll.place(x = X + 210, y = Y + 40)

buttonBrowse1 = Button(root, text = "Browse Folder", command = open_file2)
buttonBrowse1.place(x = X + 600, y = Y + 42)

labelDept = Label(root, text="Department", justify = LEFT, width = 40, anchor = 'w')
labelDept.place(x = X, y = Y+80)

radioDept1 = Radiobutton(root, text="COMPS", variable=dept,value='COMPUTER ENGINEERING')
radioDept1.place(x = X + 210, y = Y + 80)

radioDept2 = Radiobutton(root,text="EXTC", variable=dept, value='ELECTRONICS AND TELECOMMUNICATION ENGINEERING')
radioDept2.place(x = X + 300, y = Y + 80)

radioDept3 = Radiobutton(root,text="INSTR", variable=dept, value='INSTRUMENTATION ENGINEERING')
radioDept3.place(x = X + 390, y = Y + 80)

radioDept4 = Radiobutton(root,text="IT", variable=dept, value='INFORMATION TECHNOLOGY ENGINEERING')
radioDept4.place(x = X + 480, y = Y + 80)

radioDept5 = Radiobutton(root,text="MECH", variable=dept, value='MECHANICAL ENGINEERING')
radioDept5.place(x = X + 570, y = Y + 80)

buttonSubmit = Button(root, text = "Submit", command = file_submit, width = 10)
buttonSubmit.place(x = (windowWidth - 100) // 2, y = windowHeight - 100)

