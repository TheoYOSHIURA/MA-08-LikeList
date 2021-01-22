def GenerateDiscussionsInsert(numberOfEntries):                
        import random

        characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
        requete = "insert into Discussions(name, creation_date, Groups_id) values\n"
        Groups_id = 1
        currentEntries = 0
        
        while currentEntries < numberOfEntries:
            
                name = ""
                creation_date = ""
                random.seed(currentEntries)
            
                for y in range (0, random.randint(4,45)):
                        i = random.randint(0,61)
                        name += characters[i]

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
                
                requete += "(" + "'" + name + "','" + creation_date + "'," + str(Groups_id) + "),\n"
                currentEntries
                        
                Groups_id = Groups_id + 1
                currentEntries += 1
        
        requete = requete[:-2]
        requete += ";\n\n"
        return requete
