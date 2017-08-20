n = int(input())

temp = input()
temp = temp.split(' ')
a = int(temp[0])
b = int(temp[1])
c = int(temp[2])
d = int(temp[3])
e = int(temp[4])
f = int(temp[5])
g = int(temp[6])

n -= d + e + f + g
a -= d + e
b -= d + f
c -= e + f

if n < 0 or a < 0 or b < 0 or c < 0 or n != a+b+c:
    print("S")
else:
    print("N")
