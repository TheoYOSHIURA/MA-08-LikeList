import random

requete = "insert into Works_has_Posts(Works_id, Posts_id) values "
data = []
Works_id = 1
Posts_id = 1

while len(data) < 1000:

    values = ""
    random.seed(len(data) + 2000)
        
    values += "(" + str(Works_id) + "," + str(Posts_id) + "),"
    
    if values not in data:
        data.append(values)
        
    Works_id = Works_id + 1
    Posts_id = Posts_id +1
    
f = open("script.sql", "a")
f.write(requete)
for y in range (0, len(data)):
    f.write(data[y])
f.close()
