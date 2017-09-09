import shutil
import os
import glob

source = 'C:/Users/PJ/Desktop/Folder A'
dest = 'C:/Users/PJ/Desktop/Folder B'
files = glob.iglob(os.path.join(source, "*.txt"))

for file in files:
    if os.path.isfile(file):
        shutil.move(file, dest)

print os.listdir('C:/Users/PJ/Desktop/Folder B')
