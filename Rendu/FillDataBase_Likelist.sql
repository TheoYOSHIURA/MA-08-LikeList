USE Likelist
GO

insert into People(firstname, name, gender, birthday) values
('W5Acq0GFz7Y2t0EwL67nGisiWgNZ','7ITZM6jtgUe63RvEJgwB','femme','20561107'),
('K3ZWeqhFWCEP','YngFb62yBMWXaSCrUZoL9g6ubbbP','indefini','19020722'),
('ffx2kVZ','qMnMcLRkBOzZU4G9xI8CGr6','homme','19070615'),
('LIix7MEOLeMa72EqJom','I2JEzO4joOj48HyVaQXekW0LctXb14rEMU','femme','20820713'),
('tgUzEjfebzJ7sZWdoHI','rXl1gqn98b2PZqZrmktsO4U0335','femme','19221011'),
('qVwYS92VP8Hb2DX9pPd6khxE4pyIgKpaUnArl74XykW','iNNCiia4','homme','19530406'),
('1fFWqcajQLE0WVxuXbrFZmU4A7IIRgmKJSZUqQZN','3BvfxZAZq','femme','20790225'),
('9jzPde1IgxLd7GncfBAepfJB','1Kh9oOO','indefini','19151019'),
('x0yimTcfipZGnzPbDF','yFKm62zfFoWbSrHAE67yUhQqg1eyN2ygQ','homme','19860423'),
('Nxril4RavGD6MfvJ8NScUykT9C9UBkkpd','iG48LeXSyYV','homme','19740422');

insert into Works(title, image, description, creation_date, rating) values
('W5Acq0GFz7Y2t0EwL67nGisiWgNZ','7ITZM6jtgUe63RvEJgwB','NO7n0JEC4HqdZ7J7afU2zT1Y','20600120',10),
('K3ZWeqhFWCEP','YngFb62yBMWXaSCrUZoL9g6ubbbP','a95yRnBUbHoWC9FJowoRoWD9s8bA27J8PglOU4','19301211',4),
('ffx2kVZ','qMnMcLRkBOzZU4G9xI8CGr6','4bxD8u','20080906',6),
('LIix7MEOLeMa72EqJom','I2JEzO4joOj48HyVaQXekW0LctXb14rEMU','TY7BzUZKC08i5xgciFnq0RBXO3tA','19981012',8),
('tgUzEjfebzJ7sZWdoHI','rXl1gqn98b2PZqZrmktsO4U0335','f3MvQyGplpErf98149J2ta7sKT5','20950907',4),
('qVwYS92VP8Hb2DX9pPd6khxE4pyIgKpaUnArl74XykW','iNNCiia4','nXn0','19420511',2),
('1fFWqcajQLE0WVxuXbrFZmU4A7IIRgmKJSZUqQZN','3BvfxZAZq','SgWmSOYsg9cL6m1P7xF827mGKPS6ZG7b','19920420',10),
('9jzPde1IgxLd7GncfBAepfJB','1Kh9oOO','9dKLzdocJ3isAjIhKtJ1RlgLKOmxgJTeKdNnFRIBX','20191015',5),
('x0yimTcfipZGnzPbDF','yFKm62zfFoWbSrHAE67yUhQqg1eyN2ygQ','vpSfF6P','19531026',8),
('Nxril4RavGD6MfvJ8NScUykT9C9UBkkpd','iG48LeXSyYV','7snRoUYA5f','19530709',4);

insert into Users(password, mail, username, image, rank, account_state, creation_date, People_id) values
('W5Acq0GFz7Y2t0EwL67nGisiWgNZ','7ITZM6jtgUe63RvEJgwB','NO7n0JEC4HqdZ7J7afU2zT1Y','aNF14vpUuT4em7KopZ0jZICffu5G8FgtJsThJv18In0Z',795,9,'19610506',1),
('K3ZWeqhFWCEP','YngFb62yBMWXaSCrUZoL9g6ubbbP','a95yRnBUbHoWC9FJowoRoWD9s8bA27J8PglOU4','hVv6UTG80BG27QmtsL5F39',9762,5,'20401225',2),
('ffx2kVZ','qMnMcLRkBOzZU4G9xI8CGr6','4bxD8u','B65HkJlpobluliGGxGRJl6CYAVH7',952,6,'20831215',3),
('LIix7MEOLeMa72EqJom','I2JEzO4joOj48HyVaQXekW0LctXb14rEMU','TY7BzUZKC08i5xgciFnq0RBXO3tA','2yKwILALo6vR78b3rMQSkS4u0I6KKgTPnO2K',417,1,'19880214',4),
('tgUzEjfebzJ7sZWdoHI','rXl1gqn98b2PZqZrmktsO4U0335','f3MvQyGplpErf98149J2ta7sKT5','3WGmABMsBCkotq1ZcfcDOrH',5367,4,'19470614',5),
('qVwYS92VP8Hb2DX9pPd6khxE4pyIgKpaUnArl74XykW','iNNCiia4','nXn0','4ksu0mI5ROnl90',60,5,'20060305',6),
('1fFWqcajQLE0WVxuXbrFZmU4A7IIRgmKJSZUqQZN','3BvfxZAZq','SgWmSOYsg9cL6m1P7xF827mGKPS6ZG7b','xpMBtwLhfG5RHmhMQrtUmyEoiMn245SHamXkbPvJ6QNN',584,2,'20730802',7),
('9jzPde1IgxLd7GncfBAepfJB','1Kh9oOO','9dKLzdocJ3isAjIhKtJ1RlgLKOmxgJTeKdNnFRIBX','DL8DxtpYlSXpfKtHF5vUCsMe',8,6,'19420605',8),
('x0yimTcfipZGnzPbDF','yFKm62zfFoWbSrHAE67yUhQqg1eyN2ygQ','vpSfF6P','6nLZjMeI9cFSmj94LDUL5CsJw35BikWMgISuS',794,2,'19910910',9),
('Nxril4RavGD6MfvJ8NScUykT9C9UBkkpd','iG48LeXSyYV','7snRoUYA5f','7nzrvZcmT5a5Ad6y3Fibp',1093,5,'19020205',10);

insert into Groups(image, description, title, creation_date) values
('NO7n0JEC4HqdZ7J7afU2zT1Y','7ITZM6jtgUe63RvEJgwB','W5Acq0GFz7Y2t0EwL67nGisiWgNZ','20711101'),
('a95yRnBUbHoWC9FJowoRoWD9s8bA27J8PglOU4','YngFb62yBMWXaSCrUZoL9g6ubbbP','K3ZWeqhFWCEP','19750224'),
('4bxD8u','qMnMcLRkBOzZU4G9xI8CGr6','ffx2kVZ','19970717'),
('TY7BzUZKC08i5xgciFnq0RBXO3tA','I2JEzO4joOj48HyVaQXekW0LctXb14rEMU','LIix7MEOLeMa72EqJom','20290719'),
('f3MvQyGplpErf98149J2ta7sKT5','rXl1gqn98b2PZqZrmktsO4U0335','tgUzEjfebzJ7sZWdoHI','19790907'),
('nXn0','iNNCiia4','qVwYS92VP8Hb2DX9pPd6khxE4pyIgKpaUnArl74XykW','19420310'),
('SgWmSOYsg9cL6m1P7xF827mGKPS6ZG7b','3BvfxZAZq','1fFWqcajQLE0WVxuXbrFZmU4A7IIRgmKJSZUqQZN','20620608'),
('9dKLzdocJ3isAjIhKtJ1RlgLKOmxgJTeKdNnFRIBX','1Kh9oOO','9jzPde1IgxLd7GncfBAepfJB','19800819'),
('vpSfF6P','yFKm62zfFoWbSrHAE67yUhQqg1eyN2ygQ','x0yimTcfipZGnzPbDF','20320419'),
('7snRoUYA5f','iG48LeXSyYV','Nxril4RavGD6MfvJ8NScUykT9C9UBkkpd','20970507');

insert into Posts(title, description, creation_date, Users_id) values
('W5Acq0GFz7Y2t0EwL67nGisiWgNZ','7ITZM6jtgUe63RvEJgwB','19801021',1),
('K3ZWeqhFWCEP','YngFb62yBMWXaSCrUZoL9g6ubbbP','20380113',2),
('ffx2kVZ','qMnMcLRkBOzZU4G9xI8CGr6','19090112',3),
('LIix7MEOLeMa72EqJom','I2JEzO4joOj48HyVaQXekW0LctXb14rEMU','19991226',4),
('tgUzEjfebzJ7sZWdoHI','rXl1gqn98b2PZqZrmktsO4U0335','19950228',5),
('qVwYS92VP8Hb2DX9pPd6khxE4pyIgKpaUnArl74XykW','iNNCiia4','19010425',6),
('1fFWqcajQLE0WVxuXbrFZmU4A7IIRgmKJSZUqQZN','3BvfxZAZq','20131204',7),
('9jzPde1IgxLd7GncfBAepfJB','1Kh9oOO','20490119',8),
('x0yimTcfipZGnzPbDF','yFKm62zfFoWbSrHAE67yUhQqg1eyN2ygQ','19140608',9),
('Nxril4RavGD6MfvJ8NScUykT9C9UBkkpd','iG48LeXSyYV','19260507',10);

insert into Discussions(name, creation_date, Groups_id) values
('W5Acq0GFz7Y2t0EwL67nGisiWgNZ','19640923',1),
('K3ZWeqhFWCEP','19970404',2),
('ffx2kVZ','20710509',3),
('LIix7MEOLeMa72EqJom','20830818',4),
('tgUzEjfebzJ7sZWdoHI','19920525',5),
('qVwYS92VP8Hb2DX9pPd6khxE4pyIgKpaUnArl74XykW','19180320',6),
('1fFWqcajQLE0WVxuXbrFZmU4A7IIRgmKJSZUqQZN','20750228',7),
('9jzPde1IgxLd7GncfBAepfJB','19151004',8),
('x0yimTcfipZGnzPbDF','20160716',9),
('Nxril4RavGD6MfvJ8NScUykT9C9UBkkpd','19280317',10);

insert into Messages(description, creation_date, Users_id, Posts_id, Discussions_id) values
('W5Acq0GFz7Y2t0EwL67nGisiWgNZ','19640923',1,1,1),
('K3ZWeqhFWCEP','19970404',2,2,2),
('ffx2kVZ','20710509',3,3,3),
('LIix7MEOLeMa72EqJom','20830818',4,4,4),
('tgUzEjfebzJ7sZWdoHI','19920525',5,5,5),
('qVwYS92VP8Hb2DX9pPd6khxE4pyIgKpaUnArl74XykW','19180320',6,6,6),
('1fFWqcajQLE0WVxuXbrFZmU4A7IIRgmKJSZUqQZN','20750228',7,7,7),
('9jzPde1IgxLd7GncfBAepfJB','19151004',8,8,8),
('x0yimTcfipZGnzPbDF','20160716',9,9,9),
('Nxril4RavGD6MfvJ8NScUykT9C9UBkkpd','19280317',10,10,10);

insert into Rights(name) values
('Admin'),
('Moderateur'),
('Plebe'),
('Martyr'),
('Bourgeois'),
('Roi'),
('Rebut'),
('Exile');

insert into Medias(name) values
('Anime'),
('Cartoon'),
('Film'),
('Manga'),
('Roman'),
('Reccueil'),
('BD'),
('Emission'),
('Article');

insert into Genres(name) values
('Documentaire'),
('Erotique'),
('Action'),
('Comédie'),
('Romance'),
('Drama'),
('Science Fiction'),
('Horreur'),
('Suspense');

insert into Genres_has_Works(Genres_id, Works_id) values
(2,1),
(7,2),
(2,3),
(5,4),
(4,5),
(4,6),
(7,7),
(2,8),
(5,9),
(4,10)

insert into Groups_has_Users(Groups_id, Users_id) values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10)

insert into Rights_has_Users(Rights_id, Users_id) values
(7,1),
(5,2),
(6,3),
(1,4),
(4,5),
(1,6),
(7,7),
(1,8),
(7,9),
(8,10)

insert into Medias_has_Works(Medias_id, Works_id) values
(3,1),
(1,2),
(4,3),
(7,4),
(2,5),
(1,6),
(2,7),
(4,8),
(4,9),
(6,10)

insert into People_has_Works(People_id, Works_id) values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10)

insert into Users_has_Posts(Posts_id, Users_id) values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10)

insert into Works_has_Posts(Works_id, Posts_id) values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10)

GO