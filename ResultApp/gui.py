from tkinter import *
from tkinter import filedialog

root = Tk()  # blank widow
root.title("RESULT ANALYSIS")
root.geometry('800x400')
label_1 = Label(root, text = "FILE 1")
label_2 = Label(root, text = "FILE 2")
# entry of the text
e1 = StringVar()
e2 = StringVar()
entry_1 = Entry(root, width = 40, textvariable = e1)
entry_2 = Entry(root, width = 40, textvariable = e2)
# grid  positioning
label_1.grid(row = 1, sticky = E)
label_2.grid(row = 2, sticky = E)
entry_1.grid(row = 1, column = 2)
entry_2.grid(row = 2, column = 2)


# func path,open
def open_file1():
	file_path = filedialog.askopenfilename()
	e1.set(file_path)


def open_file2():
	file_path = filedialog.askopenfilename()
	e2.set(file_path)


def get_path():
	path_1 = entry_1.get()
	path_2 = entry_2.get()
	print(path_1)
	print(path_2)


# submit button
button_submit = Button(root, text = "SUBMIT", command = get_path)
button_submit.grid(row = 3, column = 2)
# button browse
button_browse1 = Button(root, text = "BROWSE", command = open_file1)
button_browse1.grid(row = 1, column = 3)
# button browse
# button browse
button_browse2 = Button(root, text = "BROWSE", command = open_file2)
button_browse2.grid(row = 2, column = 3)

root.mainloop()  # window constantly display
