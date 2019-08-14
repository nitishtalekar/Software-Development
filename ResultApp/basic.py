from tkinter import *
from tkinter import filedialog

from analyse import *
from DeduceTotals import *

path1 = ''
path2 = ''


def open_file1():
	global path1
	path1 = filedialog.askopenfilename()
	entryNameVar.set(path1)


def open_file2():
	global path2
	path2 = filedialog.askdirectory()
	entryRollVar.set(path2)


def file_submit():
	global path1, path2
	findtotals(path1, path2)


root = Tk()

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

entryNameVar = StringVar()
entryName = Entry(root, textvariable = entryNameVar, width = 40)
entryName.place(x = X + 210, y = Y)

buttonBrowse1 = Button(root, text = "Browse file", command = open_file1)
buttonBrowse1.place(x = X + 600, y = Y + 2)

labelRollList = Label(root, text = 'Select Output Folder', width = 20, justify = LEFT, anchor = 'w')
labelRollList.place(x = X, y = Y + 40)

entryRollVar = StringVar()
entryRoll = Entry(root, textvariable = entryRollVar, width = 40)
entryRoll.place(x = X + 210, y = Y + 40)

buttonBrowse1 = Button(root, text = "Browse Folder", command = open_file2)
buttonBrowse1.place(x = X + 600, y = Y + 42)

buttonSubmit = Button(root, text = "Submit", command = file_submit, width = 10)
buttonSubmit.place(x = (windowWidth - 100) // 2, y = windowHeight - 100)


def main_function():
	root.mainloop()
