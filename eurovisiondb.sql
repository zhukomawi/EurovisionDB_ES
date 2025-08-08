/*CREACION DE LAS TABLAS*/
/*PAIS*/
CREATE TABLE pais(
id_pais INT PRIMARY KEY AUTO_INCREMENT,
nombre_pais varchar(50) UNIQUE,
tv_publica varchar(50)
);
/*CERTAMEN*/
CREATE TABLE certamen(
id_certamen INT PRIMARY KEY AUTO_INCREMENT,
id_pais INT,
ciudad VARCHAR(35),
anyo_celebracion DATE UNIQUE,
lugar_celebracion varchar(50),
CONSTRAINT fk_certamen1 FOREIGN KEY (id_pais) REFERENCES pais (id_pais)
);
/*CANCION*/
CREATE TABLE cancion(
id_cancion INT PRIMARY KEY AUTO_INCREMENT,
nombre_cancion VARCHAR(50),
artista VARCHAR(50),
duracion timestamp
);
/*ME HE EQUIVOCADO Y HE USADO TIMESTAMP EN VEZ DE TIME*/
ALTER TABLE cancion MODIFY duracion TIME;
/*RELACION TERNARIA MANDAN*/
CREATE TABLE mandan(
id_pais INT,
id_certamen INT,
id_cancion INT,
CONSTRAINT fk_mandan1 FOREIGN KEY (id_pais) REFERENCES pais(id_pais),
CONSTRAINT fk_mandan2 FOREIGN KEY (id_certamen) REFERENCES certamen(id_certamen),
CONSTRAINT fk_mandan3 FOREIGN KEY (id_cancion) REFERENCES cancion(id_cancion)
);

/*AÑADIMOS VALORES A LAS TABLAS*/
/*PAISES*/
INSERT INTO pais(nombre_pais,tv_publica) VALUES ("Alemania","ARD/NDR"),("Albania","RTSH"),("Andorra","RTVA"),("Armenia","AMPTV"),("Australia","SBS"),("Austria","ORF"),("Azerbaiyán","ITV"),("Bélgica","VTR/RTBF"),("Bielorrusia","BTRC")
						,("Bosnia y Herzegovina","BHRT"),("Bulgaria","BNT"),("Chipre","CyBC"),("Croacia","HRT"),("Chequia","ČT"),("Dinamarca","DR"),("Eslovenia","RTVSLO"),("España","TVE"),("Estonia","ERR"),("Finlandia","YLE")
                        ,("Francia","France Télévisions"),("Georgia","GPB"),("Grecia","ERT"),("Hungría","MTVA"),("Islandia","RÚV"),("Irlanda","RTÉ"),("Israel","IBA/Kan"),("Italia","RAI"),("Letonia","LTV")
                        ,("Lituania","LTR"),("Macedonia del Norte","MRT"),("Malta","PBS"),("Moldavia","TRM"),("Mónaco","TMC"),("Montenegro","RTCG"),("Noruega","NRK"),("Países Bajos","AVOTROS"),("Polonia","TVP")
                        ,("Portugal","RTP"),("Reino Unido","BBC"),("Rumanía","TVR"),("Rusia","C1R/RTR/Channel One/VGTRK"),("San Marino","SMRTV"),("Serbia","RTS"),("Serbia y Montenegro","UJRT"),("Suecia","SVT")
                        ,("Suiza","SRG/SRR"),("Turquía","TRT"),("Ucrania","UA:PBC/Suspilne");
/*Ha faltado añadir Luxemburgo*/
INSERT INTO pais (nombre_pais,tv_publica) VALUES ("Luxemburgo","RTl Télé Lëtzebuerg");

/*AÑADIMOS CERTAMENES*/
INSERT INTO certamen (id_pais,ciudad,anyo_celebracion,lugar_celebracion) VALUES(45,"Estocolmo",'2000-05-13',"Globen Arena"),(15,"Copenhague",'2001-05-12',"Parker Staudium"),(18,"Tallin",'2002-05-25',"Saku Suurhall")
					 ,(28,"Riga",'2003-05-24',"Skonto Hall"),(47,"Estambul",'2004-05-15',"Abdi Ipekçi Arena"),(48,"Kiev",'2005-05-21',"Palace of Sports"),(22,"Atenas",'2006-05-20',"Olympic Indoor Hall")
                     ,(19,"Helsinki",'2007-05-12',"Hartwall Arena"),(43,"Belgrado",'2008-05-24',"Belgrade Arena"),(41,"Moscú",'2009-05-16',"Olimpiyskiy Stadium"),(35,"Oslo",'2010-05-29',"Telenor Arena")
                     ,(1,"Düsseldorf",'2011-05-14',"Esprit Arena"),(7,"Bakú",'2012-05-26',"Bakú Crystal Hall"),(45,"Malmö",'2013-05-18',"Malmö Arena"),(15,"Copenhague",'2014-05-10',"B&W Hallerne")
                     ,(6,"Viena",'2015-05-23',"Wiener Stadthalle"),(45,"Estocolmo",'2016-05-14',"Globen Arena"),(48,"Kiev",'2017-05-13',"International Exhibition Centre"),(38,"Lisboa",'2018-05-12',"Altice Arena")
                     ,(26,"Tel Aviv",'2019-05-18',"Expo Tel Aviv (Pavillion 2)"),(36,"Róterdam",'2020-05-16',"Rotterdam Ahoy (Cancelado por COVID)"),(36,"Róterdam",'2021-05-22',"Róterdam Ahoy"),(27,"Turín",'2022-05-14',"Pala Alpitour")
                     ,(48,"Liverpool",'2023-05-13',"M&S Bank Arena"),(45,"Malmö",'2024-05-11',"Malmö Arena"),(46,"Basilea",'2025-05-17',"St. Jacobshalle");     

/*AÑADIMOS CANCIONES*/
/*2000*/
INSERT INTO Cancion (nombre_cancion, artista, duracion) VALUES
('Sameyach (Be happy)', 'Ping Pong', '00:02:52'),
('No goodbyes', 'Linda Wagenmakers', '00:02:48'),
('Don''t play that song again', 'Nikki French', '00:02:59'),
('Once in a lifetime', 'Ines', '00:02:53'),
('On aura le ciel', 'Sofia Mestari', '00:02:57'),
('The Moon', 'Taxi', '00:02:49'),
('Desire', 'Claudette Pace', '00:02:56'),
('My heart goes boom', 'Charmed', '00:02:57'),
('Solo', 'Alsou', '00:02:57'),
('Envie de vivre', 'Nathalie Sorce', '00:02:53'),
('Nomiza', 'Voice', '00:02:53'),
('Tell me!', 'August & Telma', '00:02:56'),
('Colgado de un sueño', 'Serafín Zubiri', '00:02:54'),
('Fly on the wings of love', 'Olsen Brothers', '00:02:50'),
('Wadde hadde dudde da?', 'Stefan Raab', '00:02:53'),
('La vita cos''è?', 'Jane Bogaert', '00:02:52'),
('Kad zaspu anđeli', 'Goran Karan', '00:02:57'),
('When spirits are calling my name', 'Roger Pontare', '00:02:51'),
('100% te ljubam', 'XXL', '00:02:57'),
('A little bit', 'Nina Åström', '00:02:58'),
('My star', 'Brainstorm', '00:02:58'),
('Yorgunum anla', 'Pinar Ayhan & The SOS', '00:02:52'),
('Millennium of love', 'Eamonn Toal', '00:02:56'),
('All to you', 'The Rounder Girls', '00:02:49');

/*UNIMOS LAS CANCIONES A LOS CERTAMENES Y A LOS PAISES*/
INSERT INTO mandan VALUES (26,27,1),(36,27,2),(39,27,3),(18,27,4),(20,27,5),(40,27,6),(31,27,7),(35,27,8),(41,27,9),(8,27,10),(12,27,11),(24,27,12),(17,27,13),(15,27,14),(1,27,15),(46,27,16),(13,27,17)
						,(45,27,18),(30,27,19),(19,27,20),(28,27,21),(47,27,22),(25,27,23),(6,27,24);
                        
/*2001*/
INSERT INTO Cancion (nombre_cancion, artista, duracion) VALUES
('Everybody', 'Tanel Padar, Dave Benton & 2XL', '00:02:52'),
('Never Ever Let You Go', 'Rollo & King', '00:02:57'),
('Die for You', 'Antique', '00:02:49'),
('Je n''ai que mon âme', 'Natasha St-Pier', '00:02:54'),
('Listen to Your Heartbeat', 'Friends', '00:02:50'),
('Dile que la quiero', 'David Civera', '00:02:59'),
('Energy', 'Nuša Derenda', '00:02:48'),
('Wer Liebe lebt', 'Michelle', '00:02:53'),
('Another Summer Night', 'Fabrizio Faniello', '00:02:46'),
('Strings of My Heart', 'Vanna', '00:02:55'),
('Sevgiliye Son', 'Sedat Yüce', '00:02:48'),
('Lady Alpine Blue', 'Mumiy Troll', '00:02:56'),
('You Got Style', 'Skamp', '00:02:51'),
('Hano', 'Nino Pršeš', '00:02:47'),
('No Dream Impossible', 'Lindsay Dracass', '00:02:58'),
('Ein Davar', 'Tal Sondak', '00:02:45'),
('2 Long', 'Piasek', '00:02:49'),
('On My Own', 'Haldor Lægreid', '00:02:57'),
('Too Much', 'Arnis Mednis', '00:02:46'),
('Angel', 'Two Tricky', '00:02:53'),
('Out on My Own', 'Michelle', '00:02:58'),
('Without Your Love', 'Gary O''Shaughnessy', '00:02:58'),
('Só sei ser feliz assim', 'MTM', '00:02:57');

/*Unimos las canciones con los certamenes y los paises*/
INSERT INTO mandan VALUES (18,28,25),(15,28,26),(22,28,27),(20,28,28),(45,28,29),(17,28,30),(16,28,31),(1,28,32),(31,28,33),(13,28,34),(47,28,35),(41,28,36),(29,28,37),(10,28,38),(39,28,39),(26,28,40),(37,28,41)
						,(35,28,42),(28,28,43),(24,28,44),(36,28,45),(25,28,46),(38,28,47);

/*2002*/
/*Insertamos las canciones de 2002*/
INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('Gimme', 'One', '00:02:55'),
('Come back', 'Jessica Garlick', '00:02:49'),
('Say a word', 'Manuel Ortega', '00:02:53'),
('S.A.G.A.P.O.', 'Michalis Rakintzis', '00:02:48'),
('Europe''s living a celebration', 'Rosa', '00:02:57'),
('Everything I want', 'Vesna Pisarović', '00:02:46'),
('Northern girl', 'Prime Minister', '00:02:58'),
('Runaway', 'Sahlene', '00:02:50'),
('Od nas zavisi', 'Karolina Gočeva', '00:02:47'),
('Light a candle (Nadlik beyachad ner)', 'Sarit Hadad', '00:02:54'),
('Dans le jardin de mon âme', 'Francine Jordi', '00:02:45'),
('Never let it go', 'Afro-dite', '00:02:56'),
('Addicted to you', 'Laura Voutilainen', '00:02:59'),
('Tell me who you are', 'Malene Mortensen', '00:02:49'),
('Na jastuku za dvoje', 'Maja Tatić', '00:02:53'),
('Sister', 'Sergio & the Ladies', '00:02:51'),
('Il faut du temps (Je me battrai pour ça)', 'Sandrine François', '00:02:55'),
('I can''t live without music', 'Corinna May', '00:02:52'),
('Leylaklar soldu kalbinde', 'Buket Bengisu y Grup Safir', '00:02:46'),
('7th wonder', 'Ira Losco', '00:02:58'),
('Tell me why', 'Monica Anghel y Marcel Pavel', '00:02:50'),
('Samo ljubezen', 'Sestre', '00:02:57'),
('I wanna', 'Marie N', '00:02:47'),
('Happy you', 'Aivaras', '00:02:56');

/*Lo insertamos en la tabla intermedia*/
INSERT INTO mandan values (12,29,48),(39,29,49),(6,29,50),(22,29,51),(17,29,52),(13,29,53),(41,29,54),(18,29,55),(30,29,56),
						  (26,29,57),(46,29,58),(45,29,59),(19,29,60),(15,29,61),(10,29,62),(8,29,63),(20,29,64),(1,29,65),(47,29,66),
                          (31,29,67),(40,29,68),(16,29,69),(28,29,70),(29,29,71);
                          
/*2003*/
INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('Open Your Heart', 'Birgitta Haukdal', '00:02:59'),
('Weil Der Mensch Zählt', 'Alf Poier', '00:02:47'),
('We''ve Got The World', 'Mickey Joe Harte', '00:02:53'),
('Everyway That I Can', 'Sertab Erener', '00:02:58'),
('To Dream Again', 'Lynn Chircop', '00:02:45'),
('Ne Brini (Could It Be?)', 'Mija Martina', '00:02:49'),
('Deixa-me Sonhar (só mais uma vez)', 'Rita Guerra', '00:02:56'),
('Više Nisam Tvoja', 'Claudia Beni', '00:02:54'),
('Feeling Alive', 'Stelios Constantas', '00:02:50'),
('Let''s Get Happy', 'Lou', '00:02:52'),
('Ne Ver'', Ne Boysia', 't.A.T.u.', '00:02:59'),
('Dime', 'Beth', '00:02:48'),
('Words For Love (Milim La''ahava)', 'Lior Narkis', '00:02:46'),
('One More Night', 'Esther Hart', '00:02:57'),
('Cry Baby', 'Jemini', '00:02:55'),
('Hasta La Vista', 'Oleksandr Ponomariov', '00:02:51'),
('Never Let You Go', 'Mando', '00:02:45'),
('I''m Not Afraid To Move On', 'Jostein Hasselgård', '00:02:53'),
('Monts Et Merveilles', 'Louisa Baïleche', '00:02:47'),
('Keine Grenzen-Żadnych Granic', 'Ich Troje', '00:02:58'),
('Hello From Mars', 'F.L.Y.', '00:02:49'),
('Sanomi', 'Urban Trad', '00:02:56'),
('Eighties Coming Back', 'Ruffus', '00:02:54'),
('Don''t Break My Heart', 'Nicola', '00:02:50'),
('Give Me Your Love', 'Fame', '00:02:48'),
('Nanana', 'Karmen Stavec', '00:02:55');

/*AÑadimos los datos en la tabla Mandan*/
INSERT INTO mandan VALUES(24,30,72),(6,30,73),(25,30,74),(47,30,75),(31,30,76),(10,30,77),(38,30,78),(13,30,79),(12,30,80),(1,30,81),
						 (41,30,82),(17,30,83),(26,30,84),(36,30,85),(39,30,86),(48,30,87),(22,30,88),(35,30,89),(20,30,90),(37,30,91),
                         (28,30,92),(8,30,93),(18,30,94),(45,30,95),(45,30,96),(16,30,97);
                         
/*2004*/

INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('Takes 2 To Tango', 'Jari Sillanpää', '00:02:48'),
('My Galileo', 'Aleksandra & Konstantin', '00:02:55'),
('Celebrate!', 'Piero & The MusicStars', '00:02:59'),
('Dziesma Par Laimi', 'Fomins & Kleins', '00:02:46'),
('Leha''amin', 'David D''or', '00:02:47'),
('Jugarem a Estimar-nos', 'Marta Roure', '00:02:56'),
('Foi Magia', 'Sofia Vitória', '00:02:52'),
('On Again... Off Again', 'Julie & Ludwig', '00:02:49'),
('Notre Planète', 'Märyon', '00:02:45'),
('Shake It', 'Sakis Rouvas', '00:02:58'),
('Wild Dances', 'Ruslana', '00:02:57'),
('What''s Happened To Your Love?', 'Linas & Simona', '00:02:50'),
('The Image Of You', 'Anjeza Shahini', '00:02:54'),
('Stronger Every Minute', 'Lisa Andreas', '00:02:59'),
('Life', 'Toše Proeski', '00:02:48'),
('Stay Forever', 'Platin', '00:02:53'),
('Tii', 'Neiokõsõ', '00:02:47'),
('You Are The Only One', 'Ivan Mikulić', '00:02:51'),
('Shame On You', 'Tomas Thordarson', '00:02:45'),
('Lane Moje', 'Željko Joksimović', '00:02:58'),
('In The Disco', 'Deen', '00:02:55'),
('Without You', 'Re-Union', '00:02:49');


INSERT INTO mandan VALUES (19,31,98),(9,31,99),(46,31,100),(28,31,101),(26,31,102),(3,31,103),(38,31,104),(31,31,105),(33,31,106),(22,31,107),
						  (48,31,108),(29,31,109),(2,31,110),(12,31,111),(30,31,112),(16,31,113),(18,31,114),(13,31,115),(15,31,116),
                          (44,31,117),(10,31,118),(36,31,119);
						
/*2005*/
INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('Y Así', 'Global Kryner', '00:02:49'),
('Little By Little', 'Laura & the Lovers', '00:02:58'),
('Amar', '2B', '00:02:47'),
('Boonika Bate Doba', 'Zdob şi Zdub', '00:02:52'),
('The War Is Not Over', 'Walters & Kazha', '00:02:50'),
('Tout De Moi', 'Lise Darly', '00:02:46'),
('Hasheket Shenish''ar', 'Shiri Maimon', '00:02:59'),
('Love Me Tonight', 'Angelica Agurbash', '00:02:54'),
('My Impossible Dream', 'Glennis Grace', '00:02:51'),
('If I Had Your Love', 'Selma', '00:02:53'),
('Le Grand Soir', 'Nuno Resende', '00:02:48'),
('Let''s Get Loud', 'Suntribe', '00:02:56'),
('In My Dreams', 'Wig Wam', '00:02:55'),
('Let Me Try', 'Luminita Anghel & Sistem', '00:02:45'),
('Forogj, Világ!', 'NOX', '00:02:58'),
('Why?', 'Geir Rönning', '00:02:50'),
('Make My Day', 'Martin Vučić', '00:02:57'),
('La Mirada Interior', 'Marian van de Wal', '00:02:47'),
('Cool Vibes', 'Vanilla Ninja', '00:02:49'),
('Vukovi Umiru Sami', 'Boris Novković & Lado', '00:02:59'),
('Lorraine', 'Kaffe', '00:02:46'),
('Love?', 'Donna & Joseph McCaul', '00:02:48'),
('Stop', 'Omar Naber', '00:02:54'),
('Talking To You', 'Jacob Sveistrup', '00:02:53'),
('Czarna Dziewczyna', 'Ivan & Delfín', '00:02:55');

INSERT INTO mandan VALUES (6,32,120),(29,32,121),(38,32,122),(32,32,123),(28,32,124),(33,32,125),(26,32,126),(9,32,127),(36,32,128),(24,32,129),
						  (8,32,130),(18,32,131),(35,32,132),(40,32,133),(23,32,134),(19,32,135),(30,32,136),(3,32,137),(46,32,138),(13,32,139),(11,32,140),(25,32,141),
                          (16,32,142),(15,32,143),(37,32,144);
/*2006*/

INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('If We All Give a Little', 'Six4one', '00:02:49'),
('Loca', 'Arsenium & Natalia Gordienko', '00:02:57'),
('Together We Are One', 'Eddie Butler', '00:02:46'),
('I Hear Your Heart', 'Cosmos', '00:02:55'),
('Alvedansen', 'Christine Guldbrandsen', '00:02:48'),
('Un Blodymary', 'Las Ketchup', '00:02:54'),
('I Do', 'Fabrizio Faniello', '00:02:47'),
('No, No, Never', 'Texas Lightning', '00:02:58'),
('Twist Of Love', 'Sidsel Ben Semmane', '00:02:51'),
('Never Let You Go', 'Dima Bilán', '00:02:59'),
('Ninanajna', 'Elena Risteska', '00:02:53'),
('Tornerò', 'Mihai Trăistariu', '00:02:50'),
('Lejla', 'Hari Mata Hari', '00:02:45'),
('We Are The Winners', 'LT United', '00:02:56'),
('Teenage Life', 'Daz Sampson', '00:02:48'),
('Everything', 'Anna Vissi', '00:02:49'),
('Hard Rock Hallelujah', 'Lordi', '00:02:59'),
('Show Me Your Love', 'Tina Karol', '00:02:52'),
('Il Était Temps', 'Virginie Pouchain', '00:02:47'),
('Moja Štikla', 'Severina', '00:02:55'),
('Every Song Is a Cry For Love', 'Brian Kennedy', '00:02:50'),
('Invincible', 'Carola', '00:02:58'),
('Süper Star', 'Sibel Tüzün', '00:02:53'),
('Without Your Love', 'André', '00:02:46');

INSERT INTO mandan VALUES (46,33,145),(32,33,146),(26,33,147),(28,33,148),(35,33,149),(17,33,150),(31,33,151),(1,33,152),(15,33,153),(41,33,154),
						  (30,33,155),(40,33,156),(10,33,157),(29,33,158),(39,33,159),(22,33,160),(19,33,161),(48,33,162),(20,33,163),(13,33,164),(25,33,165),(45,33,166),
                          (47,33,167),(4,33,168);


/*2007*/

INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('Rijeka Bez Imena', 'Marija', '00:02:46'),
('I Love You Mi Vida', 'D''Nash', '00:02:58'),
('Work Your Magic', 'Koldun', '00:02:49'),
('They Can''t Stop The Spring', 'Dervish', '00:02:50'),
('Leave Me Alone', 'Hanna Pakarinen', '00:02:53'),
('Mojot Svet', 'Karolina Gočeva', '00:02:45'),
('Cvet z Juga', 'Alenka Gotar', '00:02:57'),
('Unsubstantial Blues', 'Magdi Rúzsa', '00:02:55'),
('Love Or Leave', '4Fun', '00:02:48'),
('Yassou Maria', 'Sarbel', '00:02:59'),
('Visionary Dream', 'Sopho', '00:02:47'),
('The Worrying Kind', 'The Ark', '00:02:51'),
('L''amour à La Française', 'Les Fatals Picards', '00:02:54'),
('Questa Notte', 'Bonaparti.lv', '00:02:50'),
('Song Nº1', 'Serebró', '00:02:45'),
('Frauen Regier''n Die Welt', 'Roger Cicero', '00:02:49'),
('Molitva', 'Marija Šerifović', '00:02:57'),
('Dancing Lasha Tumbai', 'Verka Serdyuchka', '00:02:55'),
('Flying The Flag', 'Scooch', '00:02:52'),
('Liubi, Liubi, I Love You', 'Todomondo', '00:02:56'),
('Water', 'Elitsa Todorova & Stoyan Yankulov', '00:02:53'),
('Shake It Up, Shekerim', 'Kenan Doğulu', '00:02:46'),
('Anytime You Need', 'Hayko', '00:02:58'),
('Fight', 'Natalia Barbu', '00:02:47');


INSERT INTO mandan VALUES (10,34,169),(17,34,170),(9,34,171),(25,34,172),(19,34,173),(30,34,174),(16,34,175),(23,34,176),(29,34,177),(22,34,178),(21,34,179),(45,34,180),
						  (20,34,181),(28,34,182),(41,34,183),(1,34,184),(43,34,185),(48,34,186),(39,34,187),(40,34,188),(11,34,189),(47,34,190),(4,34,191),(32,34,192);

/*2008*/

INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('Pe-o margine de lume', 'Nico y Vlad Miriţă', '00:02:55'),
('Even if', 'Andy Abraham', '00:02:47'),
('Zemrën lamë peng', 'Olta Boka', '00:02:52'),
('Disappear', 'No Angels', '00:02:48'),
('Qele qele', 'Sirusho', '00:02:58'),
('Pokušaj', 'Elvir Laković', '00:02:50'),
('The fire in your eyes', 'Boaz Mauda', '00:02:53'),
('Missä miehet ratsastaa', 'Teräsbetoni', '00:02:45'),
('Romanca', 'Kraljevi Ulice y 75 cents', '00:02:56'),
('For life', 'Isis Gee', '00:02:46'),
('This is my life', 'Eurobandið', '00:02:54'),
('Deli', 'Mor ve Ötesi', '00:02:57'),
('Senhora do mar (Negras aguas)', 'Vânia Fernandes', '00:02:49'),
('Wolves of the sea', 'Pirates of the Sea', '00:02:55'),
('Hero', 'Charlotte Perrelli', '00:02:59'),
('All night long', 'Simon Mathew', '00:02:51'),
('Peace will come', 'Diana Gurtskaya', '00:02:48'),
('Shady lady', 'Ani Lorak', '00:02:53'),
('Divine', 'Sébastien Tellier', '00:02:47'),
('Day after day', 'Elnur Hüseynov y Samir Javadzadeh', '00:02:56'),
('Secret combination', 'Kalomira', '00:02:58'),
('Baila el Chiki-chiki', 'Rodolfo Chikilicuatre', '00:02:45'),
('Oro', 'Jelena Tomašević feat. Bora Dugić', '00:02:59'),
('Believe', 'Dima Bilán', '00:02:54'),
('Hold On Be Strong', 'Maria Haukaas Storeng', '00:02:50');


INSERT INTO mandan VALUES (40,35,193),(39,35,194),(2,35,195),(1,35,196),(4,35,197),(10,35,198),(26,35,199),(19,35,200),(13,35,201),(37,35,202),(24,35,203),
						  (47,35,204),(38,35,205),(28,35,206),(45,35,207),(15,35,208),(21,35,209),(48,35,210),(20,35,211),(7,35,212),(22,35,213),(17,35,214),
                          (43,35,215),(41,35,216),(35,35,217);

/*2009*/
INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('Love', 'Sasha Son', '00:02:47'),
('There Must Be Another Way', 'Noa & Mira Awad', '00:02:52'),
('Et s''il fallait le faire', 'Patricia Kaas', '00:02:58'),
('La Voix', 'Malena Ernman', '00:02:49'),
('Lijepa Tena', 'Igor Cukrov y Andrea Šušnjara', '00:02:53'),
('Todas as ruas do amor', 'Flor-de-Lis', '00:02:55'),
('Is it true?', 'Yohanna', '00:02:54'),
('This is our night', 'Sakis Rouvas', '00:02:57'),
('Nor par (Jan Jan)', 'Inga & Anush', '00:02:45'),
('Mamo', 'Anastasija Prikhodko', '00:02:50'),
('Always', 'AySel y Arash', '00:02:59'),
('Bistra voda', 'Regina', '00:02:48'),
('Hora din Moldova', 'Nelly Ciobanu', '00:02:51'),
('What if we?', 'Chiara', '00:02:46'),
('Rändajad', 'Sandra Nurmsalu feat. Urban Symphony', '00:02:56'),
('Believe Again', 'Niels Brinck', '00:02:55'),
('Miss Kiss Kiss Bang', 'Alex Swings Oscar Sings', '00:02:47'),
('Düm Tek Tek', 'Hadise', '00:02:59'),
('Carry me in your dreams', 'Kejsi Tola', '00:02:48'),
('Fairytale', 'Alexander Rybak', '00:02:58'),
('Be My Valentine!', 'Svetlana Loboda', '00:02:53'),
('The Balkan girls', 'Elena Gheorghe', '00:02:50'),
('It''s My Time', 'Jade Ewen', '00:02:57'),
('Lose Control', 'Waldo''s People', '00:02:45'),
('La noche es para mí', 'Soraya Arnelas', '00:02:46');

INSERT INTO mandan VALUES (29,36,218),(26,36,219),(20,36,220),(45,36,221),(13,36,222),(38,36,223),(24,36,224),(22,36,225),(4,36,226),(41,36,227),(7,36,228),
						  (10,36,229),(32,36,230),(31,36,231),(18,36,232),(15,36,233),(1,36,234),(47,36,235),(2,36,236),(35,36,237),(48,36,238),(40,36,239),
                          (39,36,240),(19,36,241),(17,36,242);
                          
/*2010*/

INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('Drip Drop', 'Safura Alizadeh', '00:02:47'),
('Algo pequeñito', 'Daniel Diges', '00:02:53'),
('My heart is yours', 'Didrik Solli-Tangen', '00:02:56'),
('Run Away', 'SunStroke Project & Olia Tira', '00:02:49'),
('Life looks better in spring', 'Jon Lilygreen & The Islanders', '00:02:55'),
('Thunder and lightning', 'Vukasin Brajic', '00:02:52'),
('Me and my guitar', 'Tom Dice', '00:02:48'),
('Ovo je Balkan', 'Milan Stanković', '00:02:57'),
('Butterflies', '3+2 junto a Robert Wells', '00:02:50'),
('It''s for you', 'Niamh Kavanagh', '00:02:54'),
('OPA!', 'Giorgos Alkaios', '00:02:46'),
('That sounds good to me', 'Josh Dubovie', '00:02:59'),
('Shine', 'Sopho Nizharadze', '00:02:45'),
('We could be the same', 'maNga', '00:02:58'),
('It''s all about you', 'Juliana Pasha', '00:02:47'),
('Je ne sais quoi', 'Hera Björk', '00:02:51'),
('Sweet people', 'Alyosha', '00:02:55'),
('Allez! Ola! Olé!', 'Jessy Matador', '00:02:53'),
('Playing with Fire', 'Paula Seling & Ovi', '00:02:56'),
('Lost and forgotten', 'Peter Nalitch', '00:02:50'),
('Apricot stone', 'Eva Rivas', '00:02:49'),
('Satellite', 'Lena', '00:02:59'),
('Há dias assim', 'Filipa Azevedo', '00:02:48'),
('Milim', 'Harel Skaat', '00:02:45'),
('In a moment like this', 'Chanée & N''evergreen', '00:02:57');


INSERT INTO mandan VALUES(7,37,243),(17,37,244),(35,37,245),(32,37,246),(12,37,247),(10,37,248),(8,37,249),(43,37,250),(9,37,251),(25,37,252),(22,37,253),
						 (39,37,254),(21,37,255),(47,37,256),(2,37,257),(24,37,258),(48,37,259),(20,37,260),(40,37,261),(41,37,262),(4,37,263),(1,37,264),
                         (38,37,265),(26,37,266),(15,37,267);

/*2011*/

INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('Da, da, dam', 'Paradise Oskar', '00:02:47'),
('Love in rewind', 'Dino Merlin', '00:02:53'),
('New tomorrow', 'A Friend in London', '00:02:56'),
('C''est ma vie', 'Evelina Sašenko', '00:02:48'),
('What about my dreams?', 'Kati Wolf', '00:02:50'),
('Lipstick', 'Jedward', '00:02:55'),
('Popular', 'Eric Saade', '00:02:49'),
('Rockefeller Street', 'Getter Jaani', '00:02:52'),
('Watch my dance', 'Loucas Yiorkas ft. Stereo Mike', '00:02:54'),
('Get you', 'Alexey Vorobyov', '00:02:58'),
('Sognu', 'Amaury Vassili', '00:02:46'),
('Madness of love', 'Raphael Gualazzi', '00:02:59'),
('In love for a while', 'Anna Rossinelli', '00:02:47'),
('I Can', 'Blue', '00:02:57'),
('So lucky', 'Zdob şi Zdub', '00:02:51'),
('Taken by a stranger', 'Lena', '00:02:53'),
('Change', 'Hotel FM', '00:02:45'),
('The secret is love', 'Nadine Beiler', '00:02:55'),
('Running Scared', 'Ell & Nikki', '00:02:56'),
('No one', 'Maja Keuc', '00:02:50'),
('Coming home', 'Sigurjón''s Friends', '00:02:48'),
('Que me quiten lo bailao', 'Lucía Pérez', '00:02:57'),
('Angel', 'Mika Newton', '00:02:49'),
('Čaroban', 'Nina', '00:02:54'),
('One more day', 'Eldrine', '00:02:59');



INSERT INTO mandan VALUES (19,38,268),(10,38,269),(15,38,270),(29,38,271),(23,38,272),(25,38,273),(45,38,274),(18,38,275),(22,38,276),(41,38,277),(20,38,278),
						  (27,38,279),(46,38,280),(39,38,281),(32,38,282),(1,38,283),(40,38,284),(6,38,285),(7,38,286),(16,38,287),(24,38,288),(17,38,289),
                          (48,38,290),(43,38,291),(21,38,292);
/*2012*/

INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('Love Will Set You Free', 'Engelbert Humperdinck', '00:02:48'),
('Sound Of Our Hearts', 'Compact Disco', '00:02:56'),
('Suus', 'Rona Nishliu', '00:02:59'),
('Love Is Blind', 'Donny Montell', '00:02:50'),
('Korake ti znam', 'Maya Sar', '00:02:52'),
('Party For Everybody', 'Buránovskiye Bábushki', '00:02:54'),
('Never Forget', 'Gréta Salóme & Jónsi', '00:02:45'),
('La La Love', 'Ivi Adamou', '00:02:53'),
('Echo (You and I)', 'Anggun', '00:02:51'),
('L''amore è Femmina (Out Of Love)', 'Nina Zilli', '00:02:58'),
('Kuula', 'Ott Lepland', '00:02:49'),
('Stay', 'Tooji', '00:02:55'),
('When The Music Dies', 'Sabina Babayeva', '00:02:47'),
('Zaleilah', 'Mandinga', '00:02:59'),
('Should''ve Known Better', 'Soluna Samay', '00:02:50'),
('Aphrodisiac', 'Eleftheria Eleftheriou', '00:02:46'),
('Euphoria', 'Loreen', '00:02:57'),
('Love Me Back', 'Can Bonomo', '00:02:52'),
('Quédate conmigo', 'Pastora Soler', '00:02:49'),
('Standing Still', 'Roman Lob', '00:02:56'),
('This Is The Night', 'Kurt Calleja', '00:02:53'),
('Crno i Belo', 'Kaliopi', '00:02:45'),
('Waterline', 'Jedward', '00:02:58'),
('Nije Ljubav Stvar', 'Željko Joksimović', '00:02:54'),
('Be My Guest', 'Gaitana', '00:02:50'),
('Lăutar', 'Pasha Parfeny', '00:02:51');


INSERT INTO mandan VALUES (39,39,293),(23,39,294),(2,39,295),(29,39,296),(10,39,297),(41,39,298),(24,39,299),(13,39,300),(20,39,301),(27,39,302),(18,39,303),(35,39,304),
						  (7,39,305),(40,39,306),(15,39,307),(22,39,308),(45,39,309),(47,39,310),(17,39,311),(1,39,312),(31,39,313),(30,39,314),(25,39,315),(43,39,316),
                          (48,39,317),(32,39,318);

/*2013*/

INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('L''enfer et moi', 'Amandine Bourgeois', '00:02:45'),
('Something', 'Andrius Pojavis', '00:02:49'),
('O mie', 'Aliona Moon', '00:02:56'),
('Marry me', 'Krista Siegfrids', '00:02:46'),
('Contigo hasta el final', 'El Sueño de Morfeo', '00:02:58'),
('Love kills', 'Roberto Bellarosa', '00:02:50'),
('Et uus saaks alguse', 'Birgit Õigemeel', '00:02:47'),
('Solayoh', 'Alyona Lanskaya', '00:02:59'),
('Tomorrow', 'Gianluca Bezzina', '00:02:48'),
('What if', 'Dina Garipova', '00:02:55'),
('Glorious', 'Cascada', '00:02:52'),
('Lonely planet', 'Dorians', '00:02:53'),
('Birds', 'Anouk', '00:02:50'),
('It''s my life', 'Cezar', '00:02:59'),
('Believe in me', 'Bonnie Tyler', '00:02:45'),
('You', 'Robin Stjernberg', '00:02:47'),
('Kedvesem (Zoohacker Remix)', 'ByeAlex', '00:02:51'),
('Only teardrops', 'Emmelie de Forest', '00:02:54'),
('Ég á líf', 'Eythor Ingi', '00:02:49'),
('Hold me', 'Farid Mammadov', '00:02:55'),
('Alcohol is free', 'Koza Mostra & Agathonas Iakovidis', '00:02:48'),
('Gravity', 'Zlata Ognevich', '00:02:57'),
('L''essenziale', 'Marco Mengoni', '00:02:46'),
('I feed you my love', 'Margaret Berger', '00:02:53'),
('Waterfall', 'Nodi Tatishvili & Sophie Gelovani', '00:02:45'),
('Only love survives', 'Ryan Dolan', '00:02:59');


INSERT INTO mandan VALUES(20,40,319),(29,40,320),(32,40,321),(19,40,322),(17,40,323),(8,40,324),(18,40,325),(9,40,326),(31,40,327),(41,40,328),(1,40,329),(4,40,330),
						 (36,40,331),(40,40,332),(39,40,333),(45,40,334),(23,40,335),(15,40,336),(24,40,337),(7,40,338),(22,40,339),(48,40,340),(27,40,341),(35,40,342),
                         (21,40,343),(25,40,344);

/*2014*/

INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('Tick-Tock', 'Maria Yaremchuk', '00:02:58'),
('Cheesecake', 'TEO', '00:02:47'),
('Start a Fire!', 'Dilara Kazimova', '00:02:56'),
('No Prejudice', 'Pollapönk', '00:02:49'),
('Silent Storm', 'Carl Espen', '00:02:52'),
('Miracle', 'Paula Seling & Ovi', '00:02:45'),
('Not Alone', 'Aram Mp3', '00:02:59'),
('Moj svijet', 'Sergej Ćetković', '00:02:48'),
('My Słowianie', 'Donatan & Cleo', '00:02:57'),
('Rise Up', 'Freaky Fortune & Riskykidd', '00:02:46'),
('Rise Like a Phoenix', 'Conchita Wurst', '00:02:55'),
('Is It Right', 'Elaiza', '00:02:47'),
('Undo', 'Sanna Nielsen', '00:02:59'),
('Moustache', 'Twin Twin', '00:02:45'),
('Shine', 'Hermanas Tolmachovy', '00:02:48'),
('La mia città', 'Emma Marrone', '00:02:53'),
('Round & Round (Spet)', 'Tinkara Kovač', '00:02:46'),
('Something Better', 'Softengine', '00:02:50'),
('Dancing in the rain', 'Ruth Lorenzo', '00:02:49'),
('Hunter of Stars', 'Sebalter', '00:02:58'),
('Running', 'András Kállay-Saunders', '00:02:57'),
('Coming Home', 'Firelight', '00:02:45'),
('Cliché Love Song', 'Basim', '00:02:54'),
('Calm After the Storm', 'The Common Linnets', '00:02:56'),
('Maybe (Forse)', 'Valentina Monetta', '00:02:47'),
('Children of the Universe', 'Molly', '00:02:51');


INSERT INTO mandan VALUES (48,41,345),(9,41,346),(7,41,347),(24,41,348),(35,41,349),(40,41,350),(4,41,351),(34,41,352),(37,41,353),(22,41,354),(6,41,355),(1,41,356),
						  (45,41,357),(20,41,358),(41,41,359),(27,41,360),(16,41,361),(19,41,362),(17,41,363),(46,41,364),(23,41,365),(31,41,366),(15,41,367),(36,41,368),
                          (42,41,369),(39,41,370);

/*2015*/

INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('Here for you', 'Maraaya', '00:02:53'),
('N\'oubliez pas', 'Lisa Angell', '00:02:45'),
('Golden boy', 'Nadav Guedj', '00:02:59'),
('Goodbye to yesterday', 'Elina Born & Stig Rästa', '00:02:56'),
('Still in love with you', 'Electro Velvet', '00:02:48'),
('Face the shadow', 'Genealogy', '00:02:57'),
('This time', 'Monika Linkytė & Vaidas Baumila', '00:02:50'),
('Beauty never lies', 'Bojana Stamenov', '00:02:49'),
('A monster like me', 'Mørland & Debrah Scarlett', '00:02:52'),
('Heroes', 'Måns Zelmerlöw', '00:02:58'),
('One thing I should have done', 'John Karayiannis', '00:02:46'),
('Tonight again', 'Guy Sebastian', '00:02:57'),
('Rhythm inside', 'Loïc Nottet', '00:02:59'),
('I am yours', 'The Makemakes', '00:02:47'),
('One last breath', 'Maria Elena Kyriakou', '00:02:45'),
('Adio', 'Knez', '00:02:55'),
('Black smoke', 'Ann Sophie', '00:02:48'),
('In the name of love', 'Monika Kuszyńska', '00:02:46'),
('Love injected', 'Aminata', '00:02:59'),
('De la capăt', 'Voltaj', '00:02:50'),
('Amanecer', 'Edurne', '00:02:47'),
('Wars for nothing', 'Boggie', '00:02:45'),
('Warrior', 'Nina Sublatti', '00:02:51'),
('Hour of the wolf', 'Elnur Hüseynov', '00:02:54'),
('A million voices', 'Polina Gagarina', '00:02:58'),
('I\'m alive', 'Elhaida Dani', '00:02:49'),
('Grande amore', 'Il Volo', '00:02:59');

INSERT INTO mandan VALUES (16,42,371),(20,42,372),(26,42,373),(18,42,374),(39,42,375),(4,42,376),(29,42,377),(43,42,378),(15,42,379),(45,42,380),(12,42,381),(5,42,382),
						  (8,42,383),(6,42,384),(22,42,385),(34,42,386),(1,42,387),(37,42,388),(28,42,389),(40,42,390),(17,42,391),(23,42,392),(21,42,393),(7,42,394),
                          (41,42,395),(2,42,396),(27,42,397);
/*2016*/

INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('What''s The Pressure?', 'Laura Tesoro', '00:02:49'),
('I Stand', 'Gabriela Gunčíková', '00:02:53'),
('Slow Down', 'Douwe Bob', '00:02:55'),
('Miracle', 'Samra Rahimli', '00:02:45'),
('Pioneer', 'Freddie', '00:02:47'),
('No Degree Of Separation', 'Francesca Michielin', '00:02:59'),
('Made of Stars', 'Hovi Star', '00:02:56'),
('If Love Was a Crime', 'Poli Genova', '00:02:58'),
('If I Were Sorry', 'Frans', '00:02:52'),
('Ghost', 'Jamie-Lee Kriewitz', '00:02:48'),
('J''ai cherché', 'Amir Haddad', '00:02:59'),
('Color of Your Life', 'Michał Szpak', '00:02:50'),
('Sound of Silence', 'Dami Im', '00:02:54'),
('Alter Ego', 'Minus One', '00:02:46'),
('Goodbye (Shelter)', 'Sanja Vučić', '00:02:49'),
('I''ve Been Waiting for This Night', 'Donny Montell', '00:02:57'),
('Lighthouse', 'Nina Kraljić', '00:02:45'),
('You Are the Only One', 'Sergey Lazarev', '00:02:58'),
('Say Yay!', 'Barei', '00:02:55'),
('Heartbeat', 'Justs', '00:02:50'),
('1944', 'Jamala', '00:02:59'),
('Walk on Water', 'Ira Losco', '00:02:51'),
('Midnight Gold', 'Nika Kocharov & Young Georgian Lolitaz', '00:02:48'),
('Loin d''ici', 'Zoë', '00:02:53'),
('You''re Not Alone', 'Joe & Jake', '00:02:47'),
('LoveWave', 'Iveta Mukuchyan', '00:02:56');

INSERT INTO mandan VALUES (8,43,398),(14,43,399),(36,43,400),(7,43,401),(23,43,402),(27,43,403),(26,43,404),(11,43,405),(45,43,406),(1,43,407),(20,43,408),(37,43,409),
						  (5,43,410),(12,43,411),(43,43,412),(29,43,413),(13,43,414),(41,43,415),(17,43,416),(28,43,417),(48,43,418),(31,43,419),(21,43,420),(6,43,421),
                          (39,43,422),(4,43,423);
/*2017*/

INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('I Feel Alive', 'IMRI', '00:02:45'),
('Flashlight', 'Kasia Moś', '00:02:49'),
('Story of My Life', 'Naviband', '00:02:53'),
('Running on Air', 'Nathan Trent', '00:02:46'),
('Fly with Me', 'Artsvik', '00:02:48'),
('Lights and Shadows', 'O''G3NE', '00:02:55'),
('Hey, Mamma!', 'SunStroke Project', '00:02:59'),
('Origo', 'Joci Pápai', '00:02:54'),
('Occidentali''s Karma', 'Francesco Gabbani', '00:02:56'),
('Where I Am', 'Anja Nissen', '00:02:50'),
('Amar pelos dois', 'Salvador Sobral', '00:02:58'),
('Skeletons', 'Dihaj', '00:02:51'),
('My Friend', 'Jacques Houdek', '00:02:53'),
('Don''t Come Easy', 'Isaiah Firebrace', '00:02:47'),
('This Is Love', 'Demy', '00:02:49'),
('Do It for Your Lover', 'Manel Navarro', '00:02:45'),
('Grab the Moment', 'JOWST & Aleksander Walmann', '00:02:52'),
('Never Give Up on You', 'Lucie Jones', '00:02:57'),
('Gravity', 'Hovig', '00:02:50'),
('Yodel It!', 'Ilinca & Alex Florea', '00:02:59'),
('Perfect Life', 'Levina', '00:02:46'),
('Time', 'O.Torvald', '00:02:48'),
('City Lights', 'Blanche', '00:02:56'),
('I Can''t Go On', 'Robin Bengtsson', '00:02:55'),
('Beautiful Mess', 'Kristian Kostov', '00:02:58'),
('Requiem', 'Alma', '00:02:49');


INSERT INTO mandan VALUES(26,44,424),(37,44,425),(9,44,426),(6,44,427),(4,44,428),(36,44,429),(32,44,430),(23,44,431),(27,44,432),(15,44,433),(38,44,434),(7,44,435),
						 (13,44,436),(5,44,437),(22,44,438),(17,44,439),(35,44,440),(39,44,441),(12,44,442),(40,44,443),(1,44,444),(48,44,445),(8,44,446),(45,44,447),
                         (11,44,448),(20,44,449);

/*2018*/

INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('Under the Ladder', 'Mélovin', '00:02:48'),
('Tu canción', 'Amaia y Alfred', '00:02:56'),
('Hvala, ne!', 'Lea Sirk', '00:02:45'),
('When We''re Old', 'Ieva Zasimauskaitė', '00:02:59'),
('Nobody but You', 'Cesár Sampson', '00:02:51'),
('La forza', 'Elina Nechayeva', '00:02:58'),
('That''s How You Write a Song', 'Alexander Rybak', '00:02:47'),
('O Jardim', 'Cláudia Pascoal', '00:02:46'),
('Storm', 'SuRie', '00:02:49'),
('Nova Deca', 'Sanja Ilić & Balkanika', '00:02:54'),
('You Let Me Walk Alone', 'Michael Schulte', '00:02:52'),
('Mall', 'Eugent Bushpepa', '00:02:57'),
('Mercy', 'Madame Monsieur', '00:02:53'),
('Lie to Me', 'Mikolas Josef', '00:02:50'),
('Higher Ground', 'Rasmussen', '00:02:58'),
('We Got Love', 'Jessica Mauboy', '00:02:48'),
('Monsters', 'Saara Aalto', '00:02:56'),
('Bones', 'Equinox', '00:02:55'),
('My Lucky Day', 'DoReDos', '00:02:45'),
('Dance You Off', 'Benjamin Ingrosso', '00:02:59'),
('Viszlát nyár', 'AWS', '00:02:50'),
('Toy', 'Netta', '00:02:57'),
('Outlaw In ''Em', 'Waylon', '00:02:54'),
('Together', 'Ryan O''Shaughnessy', '00:02:47'),
('Fuego', 'Eleni Foureira', '00:02:55'),
('Non mi avete fatto niente', 'Ermal Meta & Fabrizio Moro', '00:02:53');


INSERT INTO mandan VALUES (48,45,450),(17,45,451),(16,45,452),(29,45,453),(6,45,454),(18,45,455),(35,45,456),(38,45,457),(39,45,458),(43,45,459),(1,45,460),(2,45,461),
						  (20,45,462),(14,45,463),(15,45,464),(5,45,465),(19,45,466),(11,45,467),(32,45,468),(45,45,469),(23,45,470),(26,45,471),(36,45,472),(25,45,473),
                          (12,45,474),(27,45,475);

/*2019*/

INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('Chameleon', 'Michela', '00:02:53'),
('Ktheju tokës', 'Jonida Maliqi', '00:02:48'),
('Friend of a Friend', 'Lake Malawi', '00:02:57'),
('Sister', 'S!sters', '00:02:46'),
('Scream', 'Sergey Lazarev', '00:02:59'),
('Love is Forever', 'Leonora', '00:02:51'),
('Say Na Na Na', 'Serhat', '00:02:47'),
('Proud', 'Tamara Todevska', '00:02:58'),
('Too Late for Love', 'John Lundvik', '00:02:55'),
('Sebi', 'Zala Kralj & Gašper Šantl', '00:02:49'),
('Replay', 'Tamta', '00:02:50'),
('Arcade', 'Duncan Laurence', '00:02:59'),
('Better Love', 'Katerine Duska', '00:02:54'),
('Home', 'Kobi Marimi', '00:02:45'),
('Spirit in the Sky', 'KEiiNO', '00:02:57'),
('Bigger than Us', 'Michael Rice', '00:02:47'),
('Hatrið mun sigra', 'Hatari', '00:02:56'),
('Storm', 'Victor Crone', '00:02:48'),
('Like It', 'Zena', '00:02:52'),
('Truth', 'Chingiz', '00:02:58'),
('Roi', 'Bilal Hassani', '00:02:49'),
('Soldi', 'Mahmood', '00:02:59'),
('Kruna', 'Nevena Božović', '00:02:53'),
('She Got Me', 'Luca Hänni', '00:02:55'),
('Zero Gravity', 'Kate Miller-Heidke', '00:02:50'),
('La venda', 'Miki', '00:02:45');


INSERT INTO mandan VALUES (31,46,476),(2,46,477),(14,46,478),(1,46,479),(41,46,480),(15,46,481),(42,46,482),(30,46,483),(45,46,484),(16,46,485),(12,46,486),(36,46,487),
						  (22,46,488),(26,46,489),(35,46,490),(39,46,491),(24,46,492),(18,46,493),(9,46,494),(7,46,495),(20,46,496),(27,46,497),(43,46,498),(46,46,499),
                          (5,46,500),(17,46,501);

/*2020*/

INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('Alive', 'Vincent Bueno', '00:02:54'),
('Feker Libi', 'Eden Alene', '00:02:56'),
('Release Me', 'Hooverphonic', '00:02:50'),
('Alcohol You', 'Roxen', '00:02:58'),
('Violent Thing', 'Ben Dolic', '00:02:57'),
('Répondez-moi', 'Gjon''s Tears', '00:02:51'),
('All Of My Love', 'Destiny', '00:02:53'),
('Cleopatra', 'Efendi', '00:02:59'),
('Fai Rumore', 'Diodato', '00:02:55'),
('Chains on You', 'Athena Manoukian', '00:02:47'),
('Attention', 'Ulrikke', '00:02:52'),
('Uno', 'Little Big', '00:02:45'),
('Grow', 'Jeangu Macrooy', '00:02:48'),
('Story Of My Life', 'Lesley Roy', '00:02:49'),
('Fall From the Sky', 'Arilena Ara', '00:02:55'),
('On Fire', 'The Roop', '00:02:46'),
('Hasta la Vista', 'Hurricane', '00:02:50'),
('Superg!rl', 'Stefania', '00:02:57'),
('My Last Breath', 'James Newman', '00:02:45'),
('Think About Things', 'Daði & Gagnamagnið', '00:02:58'),
('Still Breathing', 'Samanta Tina', '00:02:47'),
('Universo', 'Blas Cantó', '00:02:59'),
('Move', 'The Mamas', '00:02:53'),
('Mon Alliée (The Best in Me)', 'Tom Leeb', '00:02:54'),
('Tears Getting Sober', 'VICTORIA', '00:02:56'),
('Freaky!', 'Senhit', '00:02:50');


INSERT INTO mandan VALUES (6,47,502),(26,47,503),(8,47,504),(40,47,505),(1,47,506),(46,47,507),(31,47,508),(7,47,509),(27,47,510),(4,47,511),(15,47,512),(41,47,513),
						  (36,47,514),(25,47,515),(2,47,516),(29,47,517),(43,47,518),(22,47,519),(39,47,520),(24,47,521),(28,47,522),(17,47,523),(45,47,524),(20,47,525),
                          (11,47,526),(42,47,527);

/*2021*/

INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('El Diablo', 'Elena Tsagrinou', '00:02:54'),
('Karma', 'Anxhela Peristeri', '00:02:57'),
('Set Me Free', 'Eden Alene', '00:02:56'),
('The Wrong Place', 'Hooverphonic', '00:02:58'),
('Russian Woman', 'Manizha', '00:02:59'),
('Je Me Casse', 'Destiny Chukunyere', '00:02:53'),
('Love is on my Side', 'The Black Mamba', '00:02:56'),
('Loco Loco', 'Hurricane', '00:02:55'),
('Embers', 'James Newman', '00:02:54'),
('Last Dance', 'Stefania Liberakakis', '00:02:52'),
('Tout l''Univers', 'Gjon''s Tears', '00:02:57'),
('10 Years', 'Daði & Gagnamagnið', '00:02:58'),
('Voy a quedarme', 'Blas Cantó', '00:02:59'),
('Sugar', 'Natalia Gordienko', '00:02:53'),
('I Don’t Feel Hate', 'Jendrik Sigwart', '00:02:54'),
('Dark Side', 'Blind Channel', '00:02:56'),
('Growing Up Is Getting Old', 'Victoria Georgieva', '00:02:57'),
('Discoteque', 'The Roop', '00:02:53'),
('Shum', 'Go_A', '00:02:54'),
('Voilà', 'Barbara Pravi', '00:02:58'),
('Mata Hari', 'Samira Efendi', '00:02:51'),
('Fallen Angel', 'Tix', '00:02:52'),
('Birth of a New Age', 'Jeangu Macrooy', '00:02:50'),
('Zitti e buoni', 'Måneskin', '00:02:57'),
('Voices', 'Tusse', '00:02:55'),
('Adrenalina', 'Senhit', '00:02:56');


INSERT INTO mandan VALUES (12,48,528),(2,48,529),(26,48,530),(8,48,531),(41,48,532),(31,48,533),(38,48,534),(43,48,535),(39,48,536),(22,48,537),(46,48,538),(24,48,539),
						  (17,48,540),(32,48,541),(1,48,542),(19,48,543),(11,48,544),(29,48,545),(48,48,546),(20,48,547),(7,48,548),(35,48,549),(36,48,550),(27,48,551),
                          (45,48,552),(42,48,553);

/*2022*/

INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('Lights Off', 'We Are Domi', '00:02:38'),
('Llámame', 'WRS', '00:02:45'),
('Saudade, Saudade', 'Maro', '00:02:57'),
('Jezebel', 'The Rasmus', '00:02:38'),
('Boys Do Cry', 'Marius Bear', '00:02:48'),
('Fulenn', 'Alvan & Ahez', '00:02:57'),
('Give That Wolf A Banana', 'Subwoolfer', '00:03:02'),
('Snap', 'Rosa Linn', '00:02:41'),
('Brividi', 'Mahmood & Blanco', '00:02:48'),
('SloMo', 'Chanel', '00:02:59'),
('De Diepte', 'S10', '00:02:51'),
('Stefania', 'Kalush Orchestra', '00:03:00'),
('Rockstars', 'Malik Harris', '00:02:54'),
('Sentimentai', 'Monika Liu', '00:02:08'),
('Fade To Black', 'Nadir Rüstəmli', '00:02:46'),
('Miss you', 'Jérémie Makiese', '00:02:44'),
('Die together', 'Amanda Georgiadi Tenfjord', '00:03:00'),
('Með hækkandi sól', 'Systur', '00:02:20'),
('Trenulețul', 'Zdob și Zdub & Frații Advahov', '00:02:53'),
('Hold Me Closer', 'Cornelia Jakobs', '00:02:58'),
('Not the Same', 'Sheldon Riley', '00:02:55'),
('Space Man', 'Sam Ryder', '00:02:56'),
('River', 'Ochman', '00:02:31'),
('In Corpore Sano', 'Konstrakta', '00:03:00'),
('Hope', 'Stefan', '00:02:21');


INSERT INTO mandan VALUES (14,49,554),(40,49,555),(38,49,556),(19,49,557),(46,49,558),(20,49,559),(35,49,560),(4,49,561),(27,49,562),(17,49,563),(36,49,564),(48,49,565),
						  (1,49,566),(29,49,567),(7,49,568),(8,49,569),(22,49,570),(24,49,571),(32,49,572),(45,49,573),(5,49,574),(39,49,575),(37,49,576),(43,49,577),
                          (18,49,578);

/*2023*/


INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('Who the Hell Is Edgar?', 'Teya & Salena', '00:02:50'),
('Ai Coração', 'Mimicat', '00:02:59'),
('Watergun', 'Remo Forrer', '00:02:52'),
('Solo', 'Blanka', '00:02:53'),
('Samo mi se spava', 'Luke Black', '00:02:49'),
('Évidemment', 'La Zarra', '00:02:49'),
('Break a Broken Heart', 'Andrew Lambrou', '00:02:56'),
('Eaea', 'Blanca Paloma', '00:02:50'),
('Tattoo', 'Loreen', '00:02:53'),
('Duje', 'Albina & Familja Kelmendi', '00:02:56'),
('Due Vite', 'Marco Mengoni', '00:02:50'),
('Bridges', 'Alika', '00:02:48'),
('Cha Cha Cha', 'Käärijä', '00:02:56'),
('My Sister''s Crown', 'Vesna', '00:02:59'),
('Promise', 'Voyager', '00:02:51'),
('Because of You', 'Gustaph', '00:03:02'),
('Future Lover', 'Brunette', '00:02:52'),
('Soarele şi Luna', 'Pasha Parfeni', '00:02:56'),
('Heart of Steel', 'Tvorchi', '00:02:53'),
('Queen of Kings', 'Alessandra', '00:02:58'),
('Blood & Glitter', 'Lord of the Lost', '00:02:58'),
('Stay', 'Monika Linkytė', '00:02:57'),
('Unicorn', 'Noa Kirel', '00:02:52'),
('Carpe Diem', 'Joker Out', '00:02:48'),
('Mama ŠČ!', 'Let 3', '00:02:53'),
('I Wrote a Song', 'Mae Muller', '00:02:54');


INSERT INTO mandan VALUES (6,50,579),(38,50,580),(46,50,581),(37,50,582),(43,50,583),(20,50,584),(12,50,585),(17,50,586),(45,50,587),(2,50,588),(27,50,589),(18,50,590),
						  (19,50,591),(14,50,592),(5,50,593),(8,50,594),(4,50,595),(32,50,596),(48,50,597),(15,50,598),(1,50,599),(29,50,600),(26,50,601),(16,50,602),
                          (13,50,603),(39,51,604);
/*2024*/

INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('Unforgettable', 'Marcus & Martinus', '00:02:45'),
('Teresa & Maria', 'Alyona Alyona & Jerry Heil', '00:02:52'),
('Always on the Run', 'Isaak', '00:02:57'),
('Fighter', 'Tali', '00:02:59'),
('Hurricane', 'Edén Golán', '00:02:47'),
('Luktelk', 'Silvester Belt', '00:02:56'),
('Zorra', 'Nebulossa', '00:02:58'),
('(Nendest) Narkootikumidest ei tea me (küll) midagi', '5miinust & Puuluup', '00:02:54'),
('Doomsday Blue', 'Bambie Thug', '00:02:46'),
('Hollow', 'Dons', '00:02:59'),
('Zari', 'Marina Satti', '00:02:48'),
('Dizzy', 'Olly Alexander', '00:02:55'),
('Ulveham', 'Gåte', '00:02:53'),
('La noia', 'Angelina Mango', '00:02:49'),
('Ramonda', 'Teya Dora', '00:02:47'),
('No Rules!', 'Windows95man', '00:02:50'),
('Grito', 'Iolanda', '00:02:58'),
('Jako', 'Ladaniva', '00:02:51'),
('Liar', 'Sília Kapsís', '00:02:57'),
('The Code', 'Nemo', '00:02:45'),
('Veronika', 'Raiven', '00:02:59'),
('Rim tim tagi dim', 'Baby Lasagna', '00:02:56'),
('Firefighter', 'Nutsa Buzaladze', '00:02:46'),
('Mon Amour', 'Slimane', '00:02:48'),
('We Will Rave', 'Kaleen', '00:02:55');


INSERT INTO mandan VALUES (45,51,605),(48,51,606),(1,51,607),(49,51,608),(26,51,609),(29,51,610),(17,51,611),(18,51,612),(25,51,613),(28,51,614),(22,51,615),(39,51,616),
						  (35,51,617),(27,51,618),(43,51,619),(19,51,620),(38,51,621),(4,51,622),(12,51,623),(46,51,624),(16,51,625),(14,51,626),(21,51,627),(20,51,628),
                          (6,51,629);

/*2025*/

INSERT INTO cancion (nombre_cancion, artista, duracion) VALUES
('Lighter', 'Kyle Alessandro', '00:02:45'),
('La poupée monte le son', 'Laura Thorn', '00:02:56'),
('Espresso Macchiato', 'Tommy Cash', '00:02:49'),
('New day will rise', 'Yuval Raphael', '00:02:58'),
('Tavo akys', 'Katarsis', '00:02:54'),
('Esa diva', 'Melody', '00:02:48'),
('Bird of Pray', 'Ziferblat', '00:02:53'),
('What the hell just happened?', 'Remember Monday', '00:02:55'),
('Wasted Love', 'JJ', '00:02:59'),
('RÓA', 'Væb', '00:02:52'),
('Bur man laimi', 'Tautumeitas', '00:02:47'),
('C\'est la vie', 'Claude', '00:02:51'),
('Ich komme', 'Erika Vikman', '00:02:59'),
('Volevo essere un duro', 'Lucio Corsi', '00:02:46'),
('Gaja', 'Justyna Steczkowska', '00:02:50'),
('Baller', 'Abor & Tynna', '00:02:57'),
('Asteromáta', 'Klavdia', '00:02:48'),
('Survivor', 'Parg', '00:02:45'),
('Voyage', 'Zoë Më', '00:02:58'),
('Serving', 'Miriana Conte', '00:02:49'),
('Deslocado', 'Napa', '00:02:55'),
('Hallucination', 'Sissal', '00:02:47'),
('Bara bada bastu', 'KAJ', '00:02:53'),
('Maman', 'Louane', '00:02:50'),
('Tutta l\'Italia', 'Gabry Ponte', '00:02:57'),
('Zjerm', 'Shkodra Elektronike', '00:02:54');


INSERT INTO mandan VALUES (35,52,630),(49,52,631),(18,52,632),(26,52,633),(29,52,634),(17,52,635),(48,52,636),(39,52,637),(6,52,638),(24,52,639),(28,52,640),(36,52,641),
						  (19,52,642),(27,52,643),(37,52,644),(1,52,645),(22,52,646),(4,52,647),(46,52,648),(31,52,649),(38,52,650),(15,52,651),(45,52,652),(20,52,653),
                          (42,52,654),(2,52,655);