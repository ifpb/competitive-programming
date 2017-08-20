n = int(input())
temp = input().split(' ')

a = False
b = False

for x in temp:
	a = not a
	if x == 2:
		b = not b

print(a and "1" or "0")
print(b and "1" or "0")
