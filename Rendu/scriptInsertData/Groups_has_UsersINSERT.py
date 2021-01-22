def GenerateGroups_has_UsersInsert(numberOfEntries):

    import random

    requete = "insert into Groups_has_Users(Groups_id, Users_id) values\n"
    Users_id = 1
    Groups_id = 1
    currentEntries = 0

    while currentEntries < numberOfEntries:
            
        requete += "(" + str(Groups_id) + "," + str(Users_id) + "),\n"
        Users_id = Users_id + 1
        Groups_id = Groups_id +1
        currentEntries += 1
        
    requete = requete[:-2]
    requete += "\n\n"
    return requete
