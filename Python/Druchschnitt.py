
student_heights = input("Input a list of student heights (example: 60 80 100) ").split()
for n in range(0, len(student_heights)):
  student_heights[n] = int(student_heights[n])

counter = 0
a = 0
for height in student_heights:
    counter += 1
    a+= height
result = a /counter
print(round(result))