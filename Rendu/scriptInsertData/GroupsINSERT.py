def GenerateGroupsInsert(numberOfEntries):

    import random

    characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
    requete = "insert into Groups(image, description, title, creation_date) values\n"
    currentEntries = 0
    
    while currentEntries < numberOfEntries:
        title = ""
        description = ""
        image = ""
        creation_date = ""
        random.seed(currentEntries)
        
        for y in range (0, random.randint(4,45)):
            i = random.randint(0,61)
            title += characters[i]

        for y in range (0, random.randint(4,45)):
            i = random.randint(0,61)
            description += characters[i]

        for y in range (0, random.randint(4,45)):
            i = random.randint(0,61)
            image += characters[i]

        i = random.randint(1900,2100)
        creation_date += str(i)
        i = random.randint(1,12)
        if i < 10:
            creation_date += "0" + str(i)
        else:
            creation_date += str(i)
        i = random.randint(1,28)
        if i < 10:
            creation_date += "0" + str(i)
        else:
            creation_date += str(i)
            
        requete += "(" + "'" + image + "'" + "," + "'" + description + "'" + "," + "'" + title + "'" + "," + "'" + creation_date + "'" + "),\n"
        currentEntries += 1
        
    requete = requete[:-2]
    requete += ";\n\n"
    return requete
