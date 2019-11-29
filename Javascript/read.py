filename = "file.xml"

#Type of errors
AuxClasspathEntry=0
ClassStats=0
ClassProfile=0


#opened file for reading
file = open (filename,'r')
while True:
    # read a single line
    line = file.readline()
    if not line:
        break
    # Till here it will read all the line in the file till the end
    if "AuxClasspathEntry" in line:
        print(line)
        AuxClasspathEntry = AuxClasspathEntry + 1
    elif "ClassStats" in line:
        print(line)
        ClassStats = ClassStats + 1
    elif "ClassProfile" in line:
        print(line)
        ClassProfile = ClassProfile + 1
    
# close the pointer to that file
file.close()

print('Errors in the project :')
print('1. AuxClasspathEntry - {}'.format(AuxClasspathEntry))
print('2. ClassStats        - {}'.format(ClassStats))
print('3. ClassProfile      - {}'.format(ClassProfile))

