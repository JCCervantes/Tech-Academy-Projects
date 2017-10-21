list_a = [67, 45, 2, 13, 1, 998]

list_b = [89, 23, 33, 45, 10, 12, 45, 45, 45]

def mySort(list_a):
    for x in range(len(list_a)-1,0,-1):
        for i in range(x):
            if list_a[i] > list_a[i+1]:
                temp = list_a[i]
                list_a[i] = list_a[i+1]
                list_a[i+1] = temp
                    
mySort(list_a)
print(list_a)

mySort(list_b)
print(list_b)
