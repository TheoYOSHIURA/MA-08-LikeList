def GenerateMessagesInsert(numberOfEntries):

    import random

    characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
    requete = "insert into Messages(description, creation_date, Users_id, Posts_id, Discussions_id) values\n"
    Users_id = 1
    Posts_id = 1
    Disscussions_id = 1
    currentEntries = 0

    while currentEntries < numberOfEntries:
            
        description = ""
        creation_date = ""
        random.seed(currentEntries)
            
        for y in range (0, random.randint(4,45)):
            i = random.randint(0,61)
            description += characters[i]

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
                
        requete += "(" + "'" + description + "','" + creation_date + "'," + str(Users_id) + "," + str(Posts_id) + "," + str(Disscussions_id) + "),\n"
        Users_id = Users_id + 1
        Posts_id = Posts_id +1
        Disscussions_id = Disscussions_id + 1
        currentEntries += 1
               
    requete = requete[:-2]
    requete += ";\n\n"
    return requete
