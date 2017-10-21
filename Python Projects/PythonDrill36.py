# Python: 2.7.13
#
# Author: Julia Cervantes
#
# Purpose: Tech Academy student project in basic Python operations, statements, and functions.


#defines three variables to start
x = 5
y = "Number"
z = 3.6

#prints the three variables
print 'x, y, and z equal ' + '{}'.format(x) + ', ' + '{}'.format(y) + ', and ' + '{}'.format(z) + ', ' + 'respectively.'

#performs addition on variables and prints result
print '\nx + z = ' + str(x+z)

#uses the += operator on variable x
x+=3.6

#demonstrates the use of the += operator and adds in multiplation, subtraction, and division to our examples.
print '\nx + z is the same value as x += 3.6, but the later operation changes the value of our x variable.'
print '\nx += 3.6 = ' + str(x)
print '\nOur new value for x is now 8.6. Using that value for x, we can compute the following:'
print 'x * z = ' + str(x*z)
print 'x - z = ' + str(x-z)
print 'x / z = ' + str(x/z)

#demonstrates the use of the "%" operator, which yields the remainder 
print '\nx % z is equal to the remainer of x / z, which in this case is ' + str(x%z)

#assigns new global variable
w = x%z
print '\nNow we can use the "=" operator, assigning values from the right side operands\nto the left side operand. Thus, we can say w = x % z, making w = ' + str(x%z) 

#Demonstrates the not operator and if/elif/else statements
print '\nThe "not" operator inverts the value of a boolean variable. In this example, \nwe know that x does not equal z. So we can say if x = z, return true; \notherwise return false, and we get: ' 

if x == z:
    print 'True'
elif x != z:
    print 'False'
print '\nBut if we add "not" to that same statement, as in "if not", we get:'

if not x == z:
    print 'True'
elif not x != z:
    print 'False'
print '\nWe can also use an else statement if none of the conditions are met. \nSo we say if x equals z (it does not), print true,\nand if it equals y (it does not) print true, ELSE if it is neither, print false, like so:'

if x == z:
    print 'True'
elif x == y:
    print 'True'
else:
    print 'False'

#Assigns new empty global variable
v = ''

#Demonstrates and/or operators
print '\nWe will assign a new empty variable as v = ''. \nThis makes "v" a false value in Python. \nFor the and/or operators, v and y returns y if v is True, else returns v. \nv or y returns v if v is True, else returns y. \nSince v is a false value, you will see "Number" returned.'
print v and y
print v or y

#creates a list
number_list = [1,2,3,4,5,6,7,8,9,10]

#start count at 0
count = 0

print '\nHere are some number lists printed with while and for loops:'

#Demonstrates while loop (while count is less than 10, run loop)
while count <= 10:
    #show count value
    print count
    #increase by 1
    count += 1

#Demonstrate for loop and run loop in range 0-10
#count changes automatically in each iteration
for count in range (0,11):
    #show value of count
    print count

#Demonstrate a tuple
print '\nWe can also iterate through tuples with for loops, like so:'
tuple1 = 2*(3,'blind', 'mice') + ('see', 'how', 'they', 'run')
for item in tuple1:
    print item

#Demonstrates a function that returns a string   
def print_authors():
    print "\nCharles Dickens: David Copperfield, A Christmas Carol, A Tale of Two Cities;"
    print "Jane Austen: Sense and Sensibility, Northanger Abbey, Pride and Prejudice;"
    print "Virginia Woolf: Mrs. Dalloway, A Room of One's Own, To the Lighthouse."   

print "\nHere's an example of calling a function that returns a string and printing it to the shell:"
#calls the print_authors() function and prints to shell
print_authors() 

print "\nHere's a fun riddle:"
#Demonstrates a try/except in a while loop
userInput = True
while userInput==True:
    userNumber = raw_input("\nHow much wood could a woodchuck chuck if a woodchuck could chuck wood?")
    try:
        int(userNumber)
        print "I doubt it."
        userInput = False
    except ValueError:
        print "This is not a digit. Please guess a number."


    

