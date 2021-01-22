import random

requete = "insert into Users_has_Posts(Posts_id, Users_id) values "
data = []
Users_id = 1
Posts_id = 1

while len(data) < 1000:

    values = ""
    random.seed(len(data) + 2000)
        
    values += "(" + str(Posts_id) + "," + str(Users_id) + "),"
    
    if values not in data:
        data.append(values)
    Users_id = Users_id + 1
    Posts_id = Posts_id +1
    
f = open("script.sql", "a")
f.write(requete)
for y in range (0, len(data)):
    f.write(data[y])
f.close()
