def GenerateUsersInsert(numberOfEntries):

    import random

    characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
    requete = "insert into Users(password, mail, username, image, rank, account_state, creation_date, People_id) values\n"
    People_id = 1;
    currentEntries = 0
    
    while currentEntries < numberOfEntries:

        password = ""
        mail = ""
        username = ""
        image = ""
        rank = ""
        account_state = ""
        creation_date = ""
        random.seed(currentEntries)
        
        for y in range (0, random.randint(4,45)):
            i = random.randint(0,61)
            password += characters[i]

        for y in range (0, random.randint(4,45)):
            i = random.randint(0,61)
            mail += characters[i]

        for y in range (0, random.randint(4,45)):
            i = random.randint(0,61)
            username += characters[i]

        for y in range (0, random.randint(4,45)):
            i = random.randint(0,61)
            image += characters[i]

        for y in range (0, random.randint(1,4)):
            i = random.randint(0,9)
            rank += str(i)

            i = random.randint(0,9)
            account_state = str(i)    

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
            
        requete += "(" + "'" + password + "'" + "," + "'" + mail + "'" + "," + "'" + username + "'" + "," + "'" + image + "'" + "," + rank + "," + account_state + "," + "'" + creation_date + "'," + str(People_id) + "),\n"
        People_id = People_id + 1
        currentEntries += 1

    requete = requete[:-2]
    requete += ";\n\n"
    return requete

