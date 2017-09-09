# Python: 3.6.2
#
# Author: Julia Cervantes
#
# Purpose: Tech Academy student project to see if London and NY offices
#          are open based on current time.

from datetime import datetime
import time

now = datetime.now()
currentHour = now.hour

if currentHour in range(1,13):
    print("The London office is open.")
else:
    print("The London office is closed.")

if currentHour in range(6,18):
    print("The New York office is open.")
else:
    print("The New York office is closed.")
