from  tkinter import filedialog
from tkinter import *
root=Tk()#blank widow
root.title("RESULT ANALYSIS")
label_1=Label(root,text="FILE 1",padx=50,pady=50)#research
label_2=Label(root,text="FILE 2",padx=50,pady=50)#research 
#entry of the text 
entry_1=Entry(root,width=60)
entry_2=Entry(root,width=60)
#grid  positioning
label_1.grid(row=1,sticky=E)
label_2.grid(row=2,sticky=E)
entry_1.grid(row=1,column=2)
entry_2.grid(row=2,column=2)

#func path,open
def open_file():
    root.directory = filedialog.askopenfilename(initialdir="/",title="Select file",filetype=(("jpeg files","*.jpg"),("All Files","*.*")))
    print (root.directory)
    
def get_path():
    path_1=entry_1.get()
    path_2=entry_2.get()
    print(path_1)
    print(path_2)
#submit button
button_submit=Button(root, text="SUBMIT",command=get_path,width=60)
button_submit.grid(row=3,column=2)
#button browse
button_browse1=Button(root,text="BROWSE",command=open_file,width=40)
button_browse1.grid(row=1,column=3);
#button browse
#button browse
button_browse2=Button(root,text="BROWSE",command=open_file,width=40)
button_browse2.grid(row=2,column=3);
# Menu button
main_menu=Button(root ,text="DATA", relief = RAISED,width=100)
main_menu.grid(row=0,column=0,columnspan=2)
# Menu button
main_menu1=Button(root ,text="GRAPH GENERATE", relief = RAISED,width=100)
main_menu1.grid(row=0,column=2,columnspan=2)


root.mainloop()#window constantly display

