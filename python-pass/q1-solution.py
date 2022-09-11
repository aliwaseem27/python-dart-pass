def isolate(students):
    result = {}
    
    for name, grade in students.items():
        if (grade) not in result:
            result[grade] = [name]
        else:
            result[grade].append(name)

    return result


students = {
    'Ahmed': 'Class 1',
    'Mustafa': 'Class 3',
    'Ali': 'Class 2',
    'Sara': 'Class 1',
    'Zainab': 'Class 1',
    'Zain': 'Class 2',
    
}   
print(isolate(students))