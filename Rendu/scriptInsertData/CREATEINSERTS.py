import os

from PeopleINSERT import GeneratePeopleInsert
from WorksINSERT import GenerateWorksInsert
from UsersINSERT import GenerateUsersInsert
from GroupsINSERT import GenerateGroupsInsert
from PostsINSERT import GeneratePostsInsert
from DiscussionsINSERT import GenerateDiscussionsInsert
from MessagesINSERT import GenerateMessagesInsert
from Genres_has_WorksINSERT import GenerateGenre_has_WorksInsert
from Groups_has_UsersINSERT import GenerateGroups_has_UsersInsert
from Rights_has_UsersINSERT import GenerateRights_has_UsersInsert
from Medias_has_WorksINSERT import GenerateMedias_has_WorksInsert
from People_has_UsersINSERT import GeneratePeople_has_UsersInsert
from Users_has_PostsINSERT import GenerateUsers_has_PostsInsert
from Works_has_PostsINSERT import GenerateWorks_has_PostsInsert

numberOfEntries = 10

content = "USE Likelist\nGO\n\n"

content += GeneratePeopleInsert(numberOfEntries)
content += GenerateWorksInsert(numberOfEntries)
content += GenerateUsersInsert(numberOfEntries)
content += GenerateGroupsInsert(numberOfEntries)
content += GeneratePostsInsert(numberOfEntries)
content += GenerateDiscussionsInsert(numberOfEntries)
content += GenerateMessagesInsert(numberOfEntries)

g = open('ManualINSERT.txt')
content += g.read()
g.close()

content += GenerateGenre_has_WorksInsert(numberOfEntries)
content += GenerateGroups_has_UsersInsert(numberOfEntries)
content += GenerateRights_has_UsersInsert(numberOfEntries)
content += GenerateMedias_has_WorksInsert(numberOfEntries)
content += GeneratePeople_has_UsersInsert(numberOfEntries)
content += GenerateUsers_has_PostsInsert(numberOfEntries)
content += GenerateWorks_has_PostsInsert(numberOfEntries)

content = content + "GO"

if os.path.isfile('./FillDataBase_Likelist.sql'):
    os.remove("FillDataBase_Likelist.sql")
f = open("FillDataBase_Likelist.sql", "w")
f.write(content)
f.close()

