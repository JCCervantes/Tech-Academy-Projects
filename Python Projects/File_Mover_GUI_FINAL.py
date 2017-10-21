# Python Ver:   3.6.2
#
# Author:       Julia Cervantes
#
# Purpose:      File Mover GUI




from tkinter import *
from tkinter import filedialog
from tkinter import ttk
from tkinter import messagebox
import shutil
import os
import glob
import datetime
from datetime import datetime
import time
import sqlite3







class Feedback:

    def __init__(self, master):


        master.title('Instant File Copy')
        master.resizable(False, False)
        master.configure(background = '#FFFFFF')
        
        self.style = ttk.Style()
        self.style.configure('TFrame', background = ('#FFFFFF'))
        self.style.configure('TLabel', font = ('Arial', 10), background = ('#FFFFFF'))
        self.style.configure('TButton', font = ('Arial', 10), background = ('#FFFFFF'))
        self.style.configure('Header.TLabel', font = ('Arial', 10,), background = ('#FFFFFF'))  

        self.frame_header = ttk.Frame(master)
        self.frame_header.pack()
        
        self.logo = PhotoImage(file = 'ftp_icon2.png')
        ttk.Label(self.frame_header, image = self.logo).grid(row = 0, column = 0, sticky = W)
        ttk.Label(self.frame_header, wraplength = 300, text = 'Move all text files that have been recently modified into a new folder. Choose a source folder (A) and destination folder (B) to get started.', style = 'Header.TLabel').grid(row = 0, column = 1, columnspan = 4, padx = 5, pady = 10, sticky = W)

        self.frame_content = ttk.Frame(master)
        self.frame_content.pack()

        ttk.Button(self.frame_content, text = 'Browse Folder A:', command = self.choose_file_1).grid(row = 3, column = 0, padx = 5, pady = 5, sticky = W)
        ttk.Button(self.frame_content, text = 'Browse Folder B:', command = self.choose_file_2).grid(row = 4, column = 0, padx = 5, pady = 5, sticky = W) 
    
        self.entryText1 = StringVar()
        self.entryText2 = StringVar()
        self.entry_source = ttk.Entry(self.frame_content, textvariable = self.entryText1, width = 40, font = ('Arial', 10))
        self.entry_dest = ttk.Entry(self.frame_content, textvariable = self.entryText2, width = 40, font = ('Arial', 10))
        self.entry_source.grid(row = 3, column = 1, columnspan = 4, padx = 5, pady = 5, sticky = W)
        self.entry_dest.grid(row = 4, column = 1, columnspan = 4, padx = 5, pady = 5, sticky = W)

        
        ttk.Button(self.frame_content, text = 'Move Files', command = self.move_files).grid(row = 5, column = 4, padx = 5, pady = 5, ipadx = 3, sticky = E)             


    def choose_file_1(self):
        self.file_browser_1 = filedialog.askdirectory(initialdir = "/")
        self.entryText1.set(self.file_browser_1)
        if len(self.file_browser_1) > 0:
            return self.file_browser_1

           
    def choose_file_2(self):
        self.file_browser_2 = filedialog.askdirectory(initialdir = "/")
        self.entryText2.set(self.file_browser_2)
        if len(self.file_browser_2) > 0:
            return self.file_browser_2
        
    
    def move_files(self):
        lastTime = self.useDate()#passes in last runtime variable from useDate()
        self.getDate()#prints current date to database automatically (this becomes the new lastTime)
        src=self.entryText1.get() 
        #Proceeds to run the file copier 
        for f in os.listdir(self.file_browser_1):
            if f.endswith(".txt"):
                srcFile=os.path.join(self.file_browser_1,f)
                Times = os.path.getmtime(srcFile)
                modTime = time.ctime(Times)
                obj_FileTimes = datetime.strptime(modTime, '%a %b %d %H:%M:%S %Y')##back to python (datetime) object that we can use
                print(lastTime)
                print(obj_FileTimes)    
                if obj_FileTimes > lastTime:
                    shutil.move(srcFile, self.file_browser_2)
                    print("modified")
                else:
                    print("not modified")       
                


    def getDate(self):
        conn = sqlite3.connect('pythonFileMover.db')
        c = conn.cursor()
        c.execute('CREATE TABLE IF NOT EXISTS timeLog(ID INTEGER PRIMARY KEY, datestamp TEXT)')
        now = datetime.now()
        timestamp = now.strftime('%a %b %d %H:%M:%S %Y')
        c.execute('INSERT INTO timeLog (datestamp) VALUES (?)', (str(timestamp),))
        conn.commit()


    def useDate(self):
        #Function gets time and displays it in a messagebox. Then returns the last used time.
        with sqlite3.connect('pythonFileMover.db') as conn:
            c = conn.cursor()
            c.execute('SELECT MAX (datestamp) FROM timeLog')
            data = c.fetchall()
            timeData = datetime.strptime(str(data[0][0]), '%a %b %d %H:%M:%S %Y')
            messagebox.showinfo(title = 'Time Log', message = 'This program was last run on ' + (str(timeData)))
            return timeData 

        
    def ask_quit(self):
        # catch if the user's clicks on the windows upper-right 'X' to ensure they want to close
        if messagebox.askokcancel("Exit program", "Okay to exit the application?"):
            # This closes app
            self.master.destroy()
            os._exit(0)

        
def main():            
    
    root = Tk()
    feedback = Feedback(root)
    root.mainloop()

if __name__ == "__main__": main()



#calls file browser window
#   root.file_browser = filedialog.askopenfilename(initialdir = "/", title = "Select document", filetypes = (("All files", "*.*"),("Text files","*.txt")))




    
    




