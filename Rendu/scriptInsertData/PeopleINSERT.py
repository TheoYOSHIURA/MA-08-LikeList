def GeneratePeopleInsert(numberOfEntries):

    import random
    
    characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
    genders = ["homme", "femme", "indefini"]
    requete = "insert into People(firstname, name, gender, birthday) values\n"
    currentEntries = 0
    
    while currentEntries < numberOfEntries:

        firstname = ""
        name = ""
        gender = ""
        birthday = ""
        random.seed(currentEntries)
        
        for y in range (0, random.randint(4,45)):
            i = random.randint(0,61)
            firstname += characters[i]

        for y in range (0, random.randint(4,45)):
            i = random.randint(0,61)
            name += characters[i]

        i = random.randint(0,2)
        gender += genders[i]

        i = random.randint(1900,2100)
        birthday += str(i)
        i = random.randint(1,12)
        if i < 10:
            birthday += "0" + str(i)
        else:
            birthday += str(i)
        i = random.randint(1,28)
        if i < 10:
            birthday += "0" + str(i)
        else:
            birthday += str(i)
            
        requete += "(" + "'" + firstname + "'" + "," + "'" + name + "'" + "," + "'" + gender + "'" + "," + "'" + birthday + "'" + "),\n"
        currentEntries += 1

    requete = requete[:-2]
    requete += ";\n\n"
    return requete
