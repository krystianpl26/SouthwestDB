DROP DATABASE IF EXISTS SouthwestDB;
CREATE DATABASE SouthWestDB;
USE SouthWestDB;

CREATE TABLE Flight (
    FlightID INT NOT NULL,
    DepartureAirport CHAR(3) NOT NULL,
    ArrivalAirport CHAR(3) NOT NULL,
    DepartureTime VARCHAR(10) NOT NULL,
    ArrivalTime VARCHAR(10) NOT NULL,
    Date DATE,
    PRIMARY KEY (FlightID)
);
INSERT INTO Flight(FlightID,DepartureAirport,ArrivalAirport,DepartureTime,ArrivalTime,Date) VALUES (0,'N/A','N/A','N/A','N/A','1970-01-01');
INSERT INTO Flight(FlightID,DepartureAirport,ArrivalAirport,DepartureTime,ArrivalTime,Date) VALUES (1,'VNC','QRR','12:34 PM','6:31 PM','2018-07-28');
INSERT INTO Flight(FlightID,DepartureAirport,ArrivalAirport,DepartureTime,ArrivalTime,Date) VALUES (2,'RZA','SAH','5:35 PM','6:18 PM','2019-11-03');
INSERT INTO Flight(FlightID,DepartureAirport,ArrivalAirport,DepartureTime,ArrivalTime,Date) VALUES (3,'SWV','AKC','3:50 PM','6:40 AM','2018-12-04');
INSERT INTO Flight(FlightID,DepartureAirport,ArrivalAirport,DepartureTime,ArrivalTime,Date) VALUES (4,'CTL','KKL','9:25 AM','11:55 PM','2020-06-16');
INSERT INTO Flight(FlightID,DepartureAirport,ArrivalAirport,DepartureTime,ArrivalTime,Date) VALUES (5,'PRA','PNE','9:52 PM','1:59 AM','2018-11-21');
INSERT INTO Flight(FlightID,DepartureAirport,ArrivalAirport,DepartureTime,ArrivalTime,Date) VALUES (6,'RTI','SPX','2:03 PM','1:52 PM','2019-01-24');
INSERT INTO Flight(FlightID,DepartureAirport,ArrivalAirport,DepartureTime,ArrivalTime,Date) VALUES (7,'GUV','RAG','2:50 PM','5:46 AM','2022-08-20');
INSERT INTO Flight(FlightID,DepartureAirport,ArrivalAirport,DepartureTime,ArrivalTime,Date) VALUES (8,'JMS','AAR','8:03 PM','6:09 AM','2022-04-30');
INSERT INTO Flight(FlightID,DepartureAirport,ArrivalAirport,DepartureTime,ArrivalTime,Date) VALUES (9,'PTZ','DAT','12:21 AM','10:38 AM','2020-07-10');
INSERT INTO Flight(FlightID,DepartureAirport,ArrivalAirport,DepartureTime,ArrivalTime,Date) VALUES (10,'ECO','QPA','2:33 AM','7:51 PM','2021-05-16');
INSERT INTO Flight(FlightID,DepartureAirport,ArrivalAirport,DepartureTime,ArrivalTime,Date) VALUES (11,'NTL','CZE','3:11 PM','8:02 AM','2017-02-10');
INSERT INTO Flight(FlightID,DepartureAirport,ArrivalAirport,DepartureTime,ArrivalTime,Date) VALUES (12,'CAQ','LUF','10:50 PM','7:26 AM','2019-10-16');
INSERT INTO Flight(FlightID,DepartureAirport,ArrivalAirport,DepartureTime,ArrivalTime,Date) VALUES (13,'PUI','TR7','7:39 PM','10:07 PM','2018-05-12');
INSERT INTO Flight(FlightID,DepartureAirport,ArrivalAirport,DepartureTime,ArrivalTime,Date) VALUES (14,'ZFM','PCO','10:28 AM','11:22 PM','2023-01-25');
INSERT INTO Flight(FlightID,DepartureAirport,ArrivalAirport,DepartureTime,ArrivalTime,Date) VALUES (15,'DPB','JAI','7:43 AM','1:25 AM','2021-06-05');

CREATE TABLE RewardsProgram (
    RewardsID INT,
    PointsEarned INT NOT NULL,
    PointsRedeemed INT NOT NULL,
    PRIMARY KEY (RewardsID),
    CONSTRAINT check_points CHECK (PointsRedeemed <= PointsEarned)
);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (0,0,0);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (1,1881,1396);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (2,3987,433);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (3,908,617);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (4,3242,1702);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (5,4265,4265);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (6,3977,3713);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (7,1052,1052);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (8,2443,2224);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (9,1257,71);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (10,1462,1462);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (11,3001,1671);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (12,2063,159);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (13,890,890);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (14,3031,3031);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (15,1404,1404);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (16,3627,1049);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (17,3939,944);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (18,3353,2906);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (19,293,293);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (20,4114,4114);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (21,243,243);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (22,3217,2290);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (23,1565,1565);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (24,555,555);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (25,4969,3434);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (26,3194,3194);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (27,625,625);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (28,3419,2629);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (29,3617,452);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (30,2597,2597);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (31,2962,2962);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (32,1624,1624);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (33,2307,2307);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (34,4036,2570);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (35,107,107);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (36,28,28);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (37,3081,2626);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (38,1872,1872);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (39,2146,2146);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (40,2305,1806);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (41,4778,806);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (42,1304,608);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (43,1673,1395);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (44,3932,2301);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (45,875,875);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (46,4982,2425);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (47,4696,4696);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (48,3143,2811);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (49,1989,1402);
INSERT INTO RewardsProgram(RewardsID,PointsEarned,PointsRedeemed) VALUES (50,417,417);

CREATE TABLE Customer (
    CustomerID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    PhoneNumber VARCHAR(50) NOT NULL,
    Street VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    RewardsID INT,
    PRIMARY KEY (CustomerID),
    FOREIGN KEY (RewardsID)
        REFERENCES RewardsProgram (RewardsID)
        ON UPDATE CASCADE
);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (1,'Leonora','Cammell','lcammell0@odnoklassniki.ru','686-858-0611','35618 Warner Road','Depok',49);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (2,'Dodi','Winckles','dwinckles1@amazonaws.com','909-432-1611','36 Brickson Park Place','Murcia',4);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (3,'Hamlen','Cragg','hcragg2@123-reg.co.uk','348-184-4293','7 Dahle Trail','Vamvakou',43);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (4,'Gerry','De Fries','gdefries3@i2i.jp','429-683-8683','04152 Dayton Parkway','Bautista',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (5,'Jerry','Abrahamsen','jabrahamsen4@engadget.com','324-927-8477','5 Namekagon Alley','Harnosand',22);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (6,'Hayley','Akitt','hakitt5@army.mil','723-720-7244','3669 Dwight Road','Balyqshy',39);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (7,'Irina','Tither','itither6@diigo.com','959-801-5439','05 Waxwing Drive','Kasoa',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (8,'Rosita','Cowperthwaite','rcowperthwaite7@ted.com','600-778-7069','0901 Upham Center','Bagay',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (9,'Keene','Aumerle','kaumerle8@aboutads.info','763-801-0480','9844 Bobwhite Lane','Requiao',16);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (10,'Inglebert','Kemmett','ikemmett9@princeton.edu','842-269-9503','3 Cascade Court','Gluchow',41);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (11,'Case','Linbohm','clinbohma@mapquest.com','222-913-3977','2112 Esch Way','Kotabaru',11);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (12,'Janot','Panchin','jpanchinb@symantec.com','813-391-6109','2151 Springs Trail','Fahmah',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (13,'Adelaida','Camacke','acamackec@tinypic.com','245-392-5675','4 Onsgard Place','Vyborg',42);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (14,'Danette','Juleff','djuleffd@disqus.com','413-933-6855','0633 Pepper Wood Alley','Berkovitsa',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (15,'Billy','Chevalier','bchevaliere@pcworld.com','314-355-2812','67828 Memorial Street','San Celestio',29);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (16,'Myles','Jancik','mjancikf@bing.com','541-255-8787','111 Warner Center','Maomiaoji',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (17,'Brigida','Heading','bheadingg@java.com','158-982-4622','40 Park Meadow Junction','Ban Khlong Bang Sao Thong',15);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (18,'Ricca','Sebrens','rsebrensh@moonfruit.com','369-280-7826','700 Westport Park','Kakata',24);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (19,'Cosetta','Aiken','caikeni@comsenz.com','537-772-4597','65 Kinsman Parkway','Karata',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (20,'Odo','Saylor','osaylorj@umn.edu','371-810-1680','7859 Del Mar Plaza','Xiakou',1);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (21,'Alanna','Stampfer','astampferk@prnewswire.com','504-924-8958','077 Melody Point','Klagen',28);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (22,'Elie','Keston','ekestonl@ezinearticles.com','401-869-3015','70625 Cardinal Terrace','Nema',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (23,'Rita','Arnaudin','rarnaudinm@flavors.me','320-243-5432','86 Aberg Drive','Cunday',33);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (24,'Patric','Starr','pstarrn@parallels.com','836-220-3532','37825 Lien Crossing','Zhongwei',19);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (25,'Mick','Kroon','mkroono@earthlink.net','591-511-1278','69231 Transport Avenue','Nggalak',44);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (26,'Lexie','McKinna','lmckinnap@goo.ne.jp','306-125-8897','5 Autumn Leaf Park','Paris',19);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (27,'Thorstein','Heinsen','theinsenq@delicious.com','553-848-1792','4884 Dorton Trail','Huangjindong',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (28,'Goddart','Borzoni','gborzonir@sourceforge.net','166-632-4543','92893 Maple Pass','Hovsan',7);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (29,'Candra','Yakunchikov','cyakunchikovs@github.com','215-576-6910','8 Northview Plaza','Xinwu',5);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (30,'Seumas','Kienl','skienlt@umn.edu','959-140-0452','93 Golden Leaf Way','Bordeaux',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (31,'Symon','Sudell','ssudellu@arstechnica.com','414-164-9831','21550 Magdeline Crossing','Huage',6);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (32,'Elsworth','Lapley','elapleyv@wikimedia.org','931-388-0289','71 Fairview Drive','Khodzhi-Gasan',2);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (33,'Alanah','Birtchnell','abirtchnellw@studiopress.com','115-171-5922','1 South Circle','Warungawi',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (34,'Marc','Hamlen','mhamlenx@cnbc.com','552-688-1159','536 School Way','Gaojia',12);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (35,'Harman','Cleft','hclefty@plala.or.jp','469-852-2682','1 Canary Terrace','Ales',40);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (36,'Morganica','Krause','mkrausez@gmpg.org','595-405-1218','18 Burning Wood Alley','Krajan',10);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (37,'Oona','Fountaine','ofountaine10@nydailynews.com','113-233-6670','5755 Hallows Parkway','Krenggan',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (38,'Candie','Murthwaite','cmurthwaite11@over-blog.com','877-163-4816','4233 Kings Alley','Tembisa',30);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (39,'Kira','Meigh','kmeigh12@mtv.com','790-580-4780','92 Marcy Parkway','Eystur',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (40,'Mariann','Odell','modell13@google.pl','318-435-7287','82 Valley Edge Avenue','Jintang',14);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (41,'Laurel','Larroway','llarroway14@t.co','928-442-7910','816 Express Street','Kobenhavn',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (42,'Guglielmo','Philpin','gphilpin15@zimbio.com','544-791-9496','52042 2nd Junction','Xinhe',8);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (43,'Rex','Yardy','ryardy16@123-reg.co.uk','375-267-0658','4448 Onsgard Alley','Karangpocok',50);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (44,'Jorey','Daughtery','jdaughtery17@tripadvisor.com','726-776-0132','7142 Grayhawk Street','Nong Khai',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (45,'Allianora','Byrnes','abyrnes18@google.ca','486-211-5228','5 Oakridge Parkway','Canggetelo',35);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (46,'Zorana','Cuningham','zcuningham19@hostgator.com','987-635-6513','67340 Lakewood Gardens Trail','Bazhu',27);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (47,'Janean','Rait','jrait1a@soundcloud.com','325-972-2421','65 Valley Edge Court','Taoudenni',38);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (48,'Kipper','Giberd','kgiberd1b@reference.com','307-725-7919','32320 Coolidge Circle','Jingtan',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (49,'Nicolai','Brundell','nbrundell1c@eepurl.com','517-239-7916','330 Everett Point','Tuchomerice',48);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (50,'Eugenius','Oliff','eoliff1d@cpanel.net','632-616-6300','2757 Di Loreto Way','Hinunangan',25);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (51,'Tyrone','Wynne','twynne1e@hp.com','494-461-1113','7541 Claremont Crossing','Jiangkou',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (52,'Garrott','Skipsey','gskipsey1f@geocities.jp','916-720-9955','4 Hanover Junction','San Jose',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (53,'Mario','Davenall','mdavenall1g@google.it','325-237-9596','3069 Cambridge Park','Dapawan',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (54,'Dylan','Kingh','dkingh1h@cmu.edu','204-162-0844','61 Hoard Crossing','Nacimiento',47);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (55,'Shirline','Dunphy','sdunphy1i@barnesandnoble.com','154-665-1197','82847 Stoughton Junction','Irakleia',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (56,'Richie','Flintoff','rflintoff1j@yellowbook.com','375-912-8195','3 Prairie Rose Trail','Horana South',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (57,'Theodora','Rumsey','trumsey1k@sogou.com','387-403-1387','16049 Dixon Lane','Wuli',26);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (58,'Durand','Caudwell','dcaudwell1l@dmoz.org','911-403-7337','25722 International Point','Nankang',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (59,'Johnathan','Cowburn','jcowburn1m@stanford.edu','208-697-4705','96 Haas Parkway','Khurrianwala',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (60,'Pail','Macconachy','pmacconachy1n@ft.com','870-141-8933','72025 Oneill Parkway','Lokavec',45);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (61,'Dorotea','Cottrell','dcottrell1o@feedburner.com','517-410-8820','7 Lunder Court','Ploso',37);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (62,'Kellen','Haeslier','khaeslier1p@youku.com','583-961-7599','9447 Bultman Crossing','Embu',20);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (63,'Gwenneth','Couttes','gcouttes1q@gizmodo.com','969-642-1429','4116 Sundown Point','Ampara',9);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (64,'Sharity','Swinford','sswinford1r@github.com','621-613-4467','26853 Monument Parkway','Kovrov',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (65,'Lenora','Liepins','lliepins1s@google.de','442-694-5058','4207 Dixon Way','Abovyan',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (66,'Alden','Basterfield','abasterfield1t@weather.com','631-233-4011','5 Laurel Drive','Emar',34);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (67,'Mitch','Kennington','mkennington1u@blog.com','164-843-4993','2655 North Circle','Nida',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (68,'Annamarie','Tumasian','atumasian1v@google.es','654-202-2871','80 Bartelt Alley','Bernay',32);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (69,'Nerty','Courtier','ncourtier1w@shutterfly.com','675-511-4000','9301 Porter Way','Guataqui',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (70,'Hamid','Mapam','hmapam1x@godaddy.com','784-302-9317','61 Sunfield Street','Varzea',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (71,'Mariellen','Privost','mprivost1y@ftc.gov','463-994-9852','90 Harper Court','Necochea',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (72,'Merline','Zaczek','mzaczek1z@nyu.edu','448-534-0471','1 American Ash Court','Adela',23);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (73,'Lurleen','Cowden','lcowden20@symantec.com','755-620-7933','526 Manufacturers Place','Tyukalinsk',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (74,'Madeleine','MacAirt','mmacairt21@ebay.co.uk','355-403-0103','6031 Green Ridge Point','Pontivy',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (75,'Blinnie','McCray','bmccray22@bravesites.com','646-691-3834','4319 Oak Valley Plaza','Phetchaburi',13);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (76,'Emmet','Mylchreest','emylchreest23@discovery.com','379-566-6300','96882 North Street','Dokolo',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (77,'Elyn','Ferrillo','eferrillo24@vkontakte.ru','940-841-3536','59105 Center Drive','Gegernoong',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (78,'Sal','Di Batista','sdibatista25@admin.ch','781-217-1571','71951 Westend Plaza','Czerniewice',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (79,'Corby','Joire','cjoire26@amazonaws.com','987-866-6252','55 Kropf Alley','Shiguai',17);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (80,'Doro','Spinola','dspinola27@addthis.com','610-432-7569','93 Sutherland Hill','Aleksotas',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (81,'Weston','Gorry','wgorry28@privacy.gov.au','838-571-4700','86 Bunting Place','Delft',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (82,'Ced','Horney','chorney29@wordpress.org','169-944-8973','4 Carpenter Circle','Khlevnoye',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (83,'Gratia','Niesegen','gniesegen2a@princeton.edu','381-983-6407','79761 Hazelcrest Alley','Anding',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (84,'Joell','Kimmitt','jkimmitt2b@state.gov','808-535-8581','120 3rd Center','Drajak',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (85,'Stanford','Kwiek','skwiek2c@utexas.edu','715-192-9983','0761 Karstens Hill','Niono',3);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (86,'Christiano','Durno','cdurno2d@census.gov','565-434-6300','816 Arizona Place','Sungai Raya',31);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (87,'Cherice','McHale','cmchale2e@oracle.com','320-788-2759','26 2nd Park','Carmelo',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (88,'Mignonne','Breissan','mbreissan2f@typepad.com','759-517-8882','33704 Lotheville Avenue','Pszczew',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (89,'Guilbert','O''Hartnett','gohartnett2g@samsung.com','620-384-6319','29873 Armistice Circle','Pueblo Nuevo',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (90,'Fidel','Kitman','fkitman2h@facebook.com','922-224-5608','20662 Loomis Road','Jinfeng',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (91,'Johny','Rankine','jrankine2i@ehow.com','188-660-5985','85 Dwight Drive','Norrtalje',21);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (92,'Oralee','Lewsy','olewsy2j@blogger.com','871-809-2294','74420 Hoard Trail','Bang Krathum',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (93,'Zulema','Boness','zboness2k@bloglovin.com','175-863-8149','6458 Golf Course Avenue','Lille',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (94,'Josselyn','Rolin','jrolin2l@ox.ac.uk','140-525-1630','6 Crowley Parkway','Gardanne',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (95,'Michal','Gianni','mgianni2m@businesswire.com','118-251-3844','978 Westend Place','Xicheng',18);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (96,'Zenia','McIlenna','zmcilenna2n@uol.com.br','150-621-9403','6101 Mccormick Park','Andradas',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (97,'Noby','Scranny','nscranny2o@amazon.co.jp','861-235-3004','5 Talisman Place','Baisha',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (98,'Phillis','Delos','pdelos2p@independent.co.uk','635-208-8657','367 Pond Way','Quimper',0);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (99,'Dulcea','Laminman','dlaminman2q@webmd.com','183-848-3021','45745 Ohio Parkway','Sosnovka',36);
INSERT INTO Customer(CustomerID,FirstName,LastName,Email,PhoneNumber,Street,City,RewardsID) VALUES (100,'Keely','Eblein','keblein2r@howstuffworks.com','315-484-3102','74 Grayhawk Place','Suruhwadang',46);

CREATE TABLE Payment (
    PaymentID INT NOT NULL AUTO_INCREMENT,
    Cost DECIMAL(6 , 2 ) NOT NULL,
    PaymentMethod VARCHAR(50) NOT NULL,
    PRIMARY KEY (PaymentID)
);
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (1,940.34,'Southwest gift card');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (2,943.11,'Google Pay');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (3,651.33,'Venmo');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (4,437.86,'debit card');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (5,956.02,'Southwest gift card');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (6,545.27,'flight credit');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (7,778.38,'flight credit');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (8,227.07,'Venmo');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (9,734.57,'Southwest gift card');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (10,475.91,'PayPal');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (11,441.51,'Southwest gift card');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (12,327,'Apple Pay');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (13,601.24,'flight credit');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (14,344.33,'Southwest gift card');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (15,125.59,'Southwest gift card');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (16,987.58,'Apple Pay');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (17,377.97,'credit card');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (18,152.55,'Venmo');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (19,456.53,'Venmo');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (20,685.56,'Southwest gift card');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (21,438.79,'Southwest gift card');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (22,293.59,'PayPal');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (23,949.84,'Google Pay');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (24,340.36,'flight credit');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (25,663.65,'credit card');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (26,436.07,'flight credit');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (27,728.25,'debit card');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (28,718.46,'PayPal');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (29,760.11,'Google Pay');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (30,115.71,'Apple Pay');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (31,744.36,'PayPal');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (32,587.76,'Apple Pay');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (33,973.77,'Google Pay');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (34,696.91,'Venmo');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (35,717.39,'Apple Pay');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (36,473.12,'Venmo');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (37,581.85,'Southwest gift card');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (38,662.88,'Southwest gift card');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (39,301.14,'PayPal');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (40,449.42,'Venmo');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (41,375.44,'Google Pay');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (42,389.76,'Southwest gift card');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (43,352.72,'debit card');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (44,573.13,'PayPal');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (45,336.49,'PayPal');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (46,834.31,'Venmo');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (47,251.28,'Apple Pay');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (48,800.25,'Apple Pay');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (49,764.61,'credit card');
INSERT INTO Payment(PaymentID,Cost,PaymentMethod) VALUES (50,451.05,'Venmo');

CREATE TABLE Booking (
    BookingID INT NOT NULL AUTO_INCREMENT,
    BookingDate DATE NOT NULL,
    SeatNumber CHAR(3) NOT NULL,
    FlightID INT NOT NULL,
    CustomerID INT NOT NULL,
    PaymentID INT NOT NULL,
    PRIMARY KEY (BookingID),
    FOREIGN KEY (CustomerID)
        REFERENCES Customer (CustomerID)
        ON UPDATE CASCADE,
    FOREIGN KEY (FlightID)
        REFERENCES Flight (FlightID)
        ON UPDATE CASCADE,
    FOREIGN KEY (PaymentID)
        REFERENCES Payment (PaymentID)
        ON UPDATE CASCADE
);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (1,'2001-12-26','T50',15,26,16);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (2,'2004-01-24','J04',11,50,47);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (3,'2012-07-27','G55',13,73,11);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (4,'2020-01-15','X84',7,5,29);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (5,'2022-06-12','R10',6,98,29);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (6,'2019-08-15','N10',9,90,49);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (7,'2009-06-12','O35',3,58,46);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (8,'2009-11-30','E41',1,49,10);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (9,'2021-06-09','D91',15,62,48);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (10,'2016-03-18','F84',12,9,45);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (11,'2005-10-01','W31',2,19,43);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (12,'2001-07-07','Q33',12,83,39);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (13,'2016-06-04','Q53',6,32,44);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (14,'2021-04-06','G15',1,4,35);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (15,'2015-09-14','H50',12,25,5);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (16,'2022-08-16','M74',12,27,34);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (17,'2003-02-20','J86',1,89,45);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (18,'2008-02-15','R25',7,89,25);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (19,'2004-07-29','B57',3,95,3);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (20,'2003-05-15','F76',12,90,47);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (21,'2016-07-18','P58',8,80,22);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (22,'2019-02-06','R38',7,55,35);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (23,'2000-03-02','T96',1,79,38);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (24,'2016-08-10','W51',10,88,48);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (25,'2014-04-13','Q75',4,75,42);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (26,'2012-09-10','O07',4,29,24);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (27,'2022-10-14','X35',14,25,43);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (28,'2010-06-30','W03',13,29,22);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (29,'2020-01-22','Y27',5,2,41);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (30,'2007-02-22','P85',14,99,7);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (31,'2000-06-17','F43',15,28,15);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (32,'2023-11-23','T24',3,59,29);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (33,'2015-03-18','D85',7,15,26);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (34,'2016-11-18','S03',4,90,3);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (35,'2006-06-16','S61',7,60,45);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (36,'2016-04-12','C00',8,1,16);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (37,'2007-05-11','R43',2,43,44);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (38,'2018-08-15','O18',5,73,21);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (39,'2022-09-25','B29',15,81,23);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (40,'2000-05-04','B71',2,75,28);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (41,'2010-03-28','Y76',1,58,23);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (42,'2016-03-24','D55',9,27,37);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (43,'2000-09-19','S17',14,44,43);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (44,'2019-04-03','H69',5,96,11);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (45,'2023-01-25','S26',4,87,27);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (46,'2016-03-29','O60',2,75,4);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (47,'2000-03-30','D11',11,47,15);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (48,'2020-09-09','M04',11,86,8);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (49,'2014-02-07','Y63',4,29,9);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (50,'2012-07-26','E10',13,69,12);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (51,'2008-03-25','G61',10,40,12);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (52,'2023-06-05','R03',5,96,48);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (53,'2005-07-11','X99',4,94,34);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (54,'2024-04-02','T80',1,67,29);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (55,'2021-12-09','M20',10,8,24);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (56,'2015-11-14','Z85',4,21,9);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (57,'2020-10-12','W06',15,64,38);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (58,'2021-12-15','C00',6,2,9);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (59,'2004-11-13','L14',9,1,14);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (60,'2006-08-31','I92',8,13,37);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (61,'2004-06-19','F63',10,76,47);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (62,'2007-04-11','L58',4,74,31);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (63,'2008-01-16','J33',4,80,29);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (64,'2003-04-08','Z88',4,26,14);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (65,'2003-10-05','E68',1,86,29);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (66,'2009-12-13','R61',6,50,6);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (67,'2011-03-11','S56',1,35,10);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (68,'2014-07-02','F80',5,20,42);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (69,'2008-08-09','N30',4,49,28);
INSERT INTO Booking(BookingID,BookingDate,SeatNumber,FlightID,CustomerID,PaymentID) VALUES (70,'2013-12-17','R99',9,77,11);

CREATE TABLE CustomerServiceRepresentative (
    ServiceID INT NOT NULL AUTO_INCREMENT,
    ServiceStatus VARCHAR(10) NOT NULL,
    ContactMethod VARCHAR(5) NOT NULL,
    ContactDetails VARCHAR(50) NOT NULL,
    CustomerID INT NOT NULL,
    PRIMARY KEY (ServiceID),
    FOREIGN KEY (CustomerID)
        REFERENCES Customer (CustomerID)
        ON UPDATE CASCADE,
    CHECK ((ContactMethod = 'email'
        AND ContactDetails LIKE '%@%.%')
        OR (ContactMethod = 'call'
        AND ContactDetails LIKE '___-___-____')
        OR (ContactMethod = 'text'
        AND ContactDetails LIKE '___-___-____'))
);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (1,'resolved','call','544-791-9496',42);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (2,'resolved','email','khaeslier1p@youku.com',62);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (3,'resolved','call','320-788-2759',87);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (4,'resolved','text','553-848-1792',27);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (5,'unresolved','text','401-869-3015',22);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (6,'resolved','call','504-924-8958',21);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (7,'resolved','call','164-893-4993',67);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (8,'resolved','text','517-239-7916',49);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (9,'resolved','email','zcuningham19@hostgator.com',46);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (10,'resolved','text','118-251-3844',95);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (11,'resolved','text','375-267-0658',43);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (12,'unresolved','call','541-255-8787',16);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (13,'resolved','text','486-211-5228',45);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (14,'resolved','text','928-442-7910',41);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (15,'unresolved','text','324-927-8477',5);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (16,'resolved','text','448-534-0471',72);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (17,'resolved','email','abyrnes18@google.ca',45);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (18,'resolved','call','877-163-4816',38);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (19,'unresolved','call','348-184-4293',3);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (20,'resolved','email','bchevaliere@pcworld.com',15);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (21,'resolved','text','325-237-9596',53);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (22,'resolved','email','dcaudwell1l@dmoz.org',58);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (23,'resolved','text','140-525-1630',94);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (24,'resolved','text','544-791-9496',42);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (25,'resolved','call','959-801-5439',7);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (26,'resolved','email','ofountaine10@nydailynews.com',37);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (27,'resolved','text','448-534-0471',72);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (28,'unresolved','text','916-720-9955',52);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (29,'resolved','call','371-810-1680',20);
INSERT INTO CustomerServiceRepresentative(ServiceID,ServiceStatus,ContactMethod,ContactDetails,CustomerID) VALUES (30,'unresolved','email','cmurthwaite11@over-blog.com',38);


CREATE TABLE SpecialOffer (
    OfferID INT NOT NULL AUTO_INCREMENT,
    `Discount%` DECIMAL(4 , 2 ) NOT NULL,
    CustomerID INT NOT NULL,
    PRIMARY KEY (OfferID),
    FOREIGN KEY (CustomerID)
        REFERENCES Customer (CustomerID)
        ON UPDATE CASCADE
);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (1,30.25,54);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (2,15.79,34);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (3,55.82,19);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (4,7.68,34);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (5,46.14,55);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (6,3.78,12);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (7,58.3,65);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (8,58.29,91);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (9,5.96,78);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (10,58.53,62);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (11,67.29,85);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (12,20.45,84);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (13,36.32,65);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (14,14.98,94);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (15,17.48,2);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (16,23.36,81);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (17,16.6,69);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (18,25.73,6);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (19,39.66,25);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (20,56.62,34);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (21,33.58,63);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (22,15.46,25);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (23,16.56,24);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (24,9.29,60);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (25,48.35,23);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (26,19.04,53);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (27,67.09,42);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (28,59.87,41);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (29,45.71,41);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (30,17.14,9);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (31,4.74,29);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (32,32.62,2);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (33,47.46,87);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (34,16.42,69);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (35,3.7,50);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (36,31.31,74);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (37,55.51,23);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (38,48.21,44);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (39,24.4,29);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (40,17.76,27);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (41,10.24,56);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (42,59.27,90);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (43,36.64,23);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (44,4.88,54);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (45,32.95,81);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (46,35.44,26);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (47,57.25,97);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (48,35.19,27);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (49,42.15,93);
INSERT INTO SpecialOffer(OfferID,`Discount%`,CustomerID) VALUES (50,20.16,26);

CREATE TABLE Crew (
    CrewID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Role VARCHAR(16) NOT NULL,
    FlightID INT NOT NULL,
    PRIMARY KEY (CrewID),
    FOREIGN KEY (FlightID)
        REFERENCES Flight (FlightID)
        ON UPDATE CASCADE
);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (1,'Elset','O''Sheilds','flight attendant',11);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (2,'Harmonie','Scarsbrooke','flight attendant',11);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (3,'Georas','Portman','co-pilot',13);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (4,'Gilly','McCluin','co-pilot',4);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (5,'Judi','Bautiste','pilot',11);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (6,'Davine','Collingham','pilot',9);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (7,'Ganny','Cotilard','flight attendant',4);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (8,'Hort','Howarth','flight attendant',4);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (9,'Blythe','Chin','co-pilot',6);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (10,'Koressa','Gebbie','flight attendant',5);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (11,'Stevie','Oliva','pilot',8);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (12,'Petra','Foye','pilot',3);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (13,'Ravi','Kinsman','pilot',3);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (14,'Harley','Goodding','pilot',7);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (15,'Boonie','Weldrake','flight attendant',2);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (16,'Scarlett','Collard','co-pilot',5);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (17,'Pris','Ionesco','co-pilot',15);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (18,'Helaine','Tolliday','pilot',6);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (19,'Dyna','Kelberer','flight attendant',8);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (20,'Cynthia','Liepina','flight attendant',14);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (21,'Selig','Shewery','flight attendant',11);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (22,'Haydon','Rocco','co-pilot',15);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (23,'Jervis','Hill','pilot',2);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (24,'Kalinda','Beggi','pilot',13);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (25,'Kynthia','English','flight attendant',10);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (26,'Anya','Kimmins','flight attendant',12);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (27,'Corbie','Claremont','flight attendant',14);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (28,'Maxi','Elcoat','co-pilot',1);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (29,'Myron','Kybbye','flight attendant',8);
INSERT INTO Crew(CrewID,FirstName,LastName,Role,FlightID) VALUES (30,'Milicent','Dyball','co-pilot',13);

-- Create:
-- Insert a new tuple into Customer
INSERT INTO Customer VALUES (101, 'Document', 'Example', 'docexample123@iit.edu', '123-123-1234', 'space', 'Chicago', 7);
SELECT * FROM Customer;

-- READ:
-- Display the amount of points earned by each customer
SELECT customerID, firstname, lastname, pointsearned
FROM Customer, RewardsProgram
WHERE Customer.rewardsID = rewardsprogram.rewardsID
ORDER BY CustomerID;

-- Update:
-- Update a customer's first name
UPDATE Customer 
SET FirstName = 'Project'
WHERE CustomerID = 101;
SELECT *
FROM Customer;

-- Delete:
-- Delete Customer with ID 101
DELETE FROM Customer 
WHERE CustomerID = 101;
SELECT *
FROM Customer;

-- Describe the tables:
DESCRIBE Flight;
DESCRIBE Customer;
DESCRIBE Crew;
DESCRIBE Booking;
DESCRIBE Payment;
DESCRIBE CustomerServiceRepresentative;
DESCRIBE SpecialOffer;
DESCRIBE RewardsProgram;

-- Show all tables:
SHOW FULL TABLES;

-- Indexes:
-- For primary key index
CREATE INDEX idx_customer_id ON Customer (CustomerID);
CREATE INDEX idx_flight_id ON Flight (FlightID);
CREATE INDEX idx_booking_id ON Booking (BookingID);
CREATE INDEX idx_payment_id ON Payment (PaymentID);

-- For foreign keys
CREATE INDEX idx_booking_customer_id ON Booking (CustomerID);
CREATE INDEX idx_booking_flight_id ON Booking (FlightID);
CREATE INDEX idx_booking_payment_id ON Booking (PaymentID);

-- For WHERE clauses
CREATE INDEX idx_booking_date ON Booking (BookingDate);

-- For join conditions
CREATE INDEX idx_crew_flight_id ON Crew (FlightID);

-- For unique constraints
CREATE UNIQUE INDEX idx_customer_email ON Customer (Email);

-- Show all indexes related to a specific table 
SHOW INDEX FROM customer;
SHOW INDEX FROM flight;
SHOW INDEX FROM booking;
SHOW INDEX FROM crew;
SHOW INDEX FROM payment;
SHOW INDEX FROM customerservicerepresentative;
SHOW INDEX FROM rewardsprogram;
SHOW INDEX FROM specialoffer;

-- Views:
-- customer - booking view
CREATE VIEW CustomerBooking AS
    SELECT Customer.CustomerID, FirstName, LastName, BookingID, BookingDate, SeatNumber, FlightID
    FROM Customer, Booking
    WHERE Customer.CustomerID = Booking.CustomerID
    ORDER BY CustomerID;
SELECT * FROM CustomerBooking;

-- customer-payment view
CREATE VIEW CustomerPayment AS
    SELECT Customer.CustomerID, FirstName, LastName, Payment.PaymentID, Cost, PaymentMethod
    FROM Payment, Customer, Booking
    WHERE Booking.CustomerID = Customer.CustomerID AND Booking.PaymentID = Payment.PaymentID
    ORDER BY CustomerID;
SELECT * FROM CustomerPayment;

-- customer - c.s.r view
CREATE VIEW CustomerCustomerServiceRepresentative AS
    SELECT Customer.CustomerID, ServiceID, FirstName, LastName, ServiceStatus, ContactDetails
    FROM customerservicerepresentative AS CSR, customer
    WHERE Customer.CustomerID = CSR.CustomerID
    ORDER BY CustomerID;
SELECT * FROM CustomerCustomerServiceRepresentative;

-- customer - special offer view
CREATE VIEW CustomerSpecialOffer AS
    SELECT Customer.CustomerID, FirstName, LastName, OfferID, `Discount%`
    FROM specialoffer, customer
    WHERE Customer.CustomerID = SpecialOffer.CustomerID
    ORDER BY CustomerID;
SELECT * FROM CustomerSpecialOffer;

-- customer-flight view
CREATE VIEW CustomerFlight AS
    SELECT Customer.CustomerID, FirstName, LastName, Flight.FlightID, Date, DepartureAirport, ArrivalAirport, DepartureTime, ArrivalTime
    FROM Customer, Booking, Flight
    WHERE Customer.CustomerID = Booking.CustomerID AND Booking.FlightID = Flight.FlightID
    ORDER BY FlightID , CustomerID;
SELECT * FROM CustomerFlight;

-- customer-rewards program
CREATE VIEW CustomerRewardsProgram AS
	SELECT CustomerID, RewardsProgram.RewardsID, FirstName, LastName, PointsEarned, PointsRedeemed
    FROM Customer, RewardsProgram
    WHERE Customer.RewardsID = RewardsProgram.RewardsID
    ORDER BY PointsEarned DESC;
SELECT * FROM CustomerRewardsProgram;

-- View to display payments with cost greater than $800
CREATE VIEW high_cost_payments AS
    SELECT *
    FROM Payment
    WHERE Cost > 800
    ORDER BY Cost;
SELECT * FROM high_cost_payments;

-- Triggers:
-- Check for invalid FlightID, CustomerID, or PaymentIDs after each booking entry.
DELIMITER //
CREATE TRIGGER before_insert_booking
BEFORE INSERT ON Booking
FOR EACH ROW
BEGIN
    DECLARE flight_exists INT;
    DECLARE customer_exists INT;
    DECLARE payment_exists INT;

    SELECT COUNT(*) INTO flight_exists FROM Flight WHERE FlightID = NEW.FlightID;
    IF flight_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'FlightID does not exist in Flight table';
    END IF;
    SELECT COUNT(*) INTO customer_exists FROM Customer WHERE CustomerID = NEW.CustomerID;
    IF customer_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'CustomerID does not exist in Customer table';
    END IF;
    SELECT COUNT(*) INTO payment_exists FROM Payment WHERE PaymentID = NEW.PaymentID;
    IF payment_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'PaymentID does not exist in Payment table';
    END IF;
END; //

-- Update a customer's points with Southwest by 100 points after every booking
DELIMITER //
CREATE TRIGGER update_rewards_program AFTER INSERT ON Booking
FOR EACH ROW
BEGIN
     UPDATE RewardsProgram
    SET PointsEarned = PointsEarned + 100
    WHERE RewardsProgram.RewardsID = (
		SELECT Customer.CustomerID
        FROM CUSTOMER
        WHERE Customer.customerID = NEW.CustomerID
	);
END;
//
CALL AddBooking(71, '2004-06-1', 'WWW', 15, 100, 42);
SELECT * FROM BOOKING;
DELETE FROM BOOKING WHERE BOOKINGID = 71;
-- CALL AddBooking(71, '2004-06-1', 'WWW', 15, 101, 42);
-- SELECT * FROM BOOKING;
-- CALL AddBooking(71, '2004-06-1', 'WWW', 666, 100, 69);
-- SELECT * FROM BOOKING;

-- Temporary Tables:
-- Temporay table for Flight
DROP TEMPORARY TABLE IF EXISTS `#temp_Flight`;
CREATE TEMPORARY TABLE `#temp_Flight` (
    FlightID INT NOT NULL,
    DepartureAirport CHAR(3) NOT NULL,
    ArrivalAirport CHAR(3) NOT NULL,
    DepartureTime VARCHAR(10) NOT NULL,
    ArrivalTime VARCHAR(10) NOT NULL,
    Date DATE,
    PRIMARY KEY (FlightID)
);

-- Temporary table for Customer
DROP TEMPORARY TABLE IF EXISTS `#temp_Customer`;
CREATE TEMPORARY TABLE `#temp_Customer` (
    CustomerID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    PhoneNumber VARCHAR(50) NOT NULL,
    Street VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL,
    PRIMARY KEY (CustomerID)
);

-- Temporary table for Payment
DROP TEMPORARY TABLE IF EXISTS `#temp_Payment`;
CREATE TEMPORARY TABLE `#temp_Payment` (
    PaymentID INT NOT NULL AUTO_INCREMENT,
    Cost DECIMAL(6,2) NOT NULL,
    PaymentMethod VARCHAR(50) NOT NULL,
    PRIMARY KEY (PaymentID)
);
-- Temporary table for Booking
DROP TEMPORARY TABLE IF EXISTS `#temp_Booking`;
CREATE TEMPORARY TABLE `#temp_Booking` (
    BookingID INT NOT NULL AUTO_INCREMENT,
    BookingDate DATE NOT NULL,
    SeatNumber CHAR(3) NOT NULL,
    FlightID INT NOT NULL,
    CustomerID INT NOT NULL,
    PaymentID INT NOT NULL,
    PRIMARY KEY (BookingID)
);

-- Temporary table for CustomerServiceRepresentative
DROP TEMPORARY TABLE IF EXISTS `#temp_CustomerServiceRepresentative`;
CREATE TEMPORARY TABLE `#temp_CustomerServiceRepresentative` (
    ServiceID INT NOT NULL AUTO_INCREMENT,
    ServiceStatus VARCHAR(10) NOT NULL,
    ContactMethod VARCHAR(5) NOT NULL,
    ContactDetails VARCHAR(50),
    CustomerID INT NOT NULL,
    PRIMARY KEY (ServiceID),
    CHECK (
        (ContactMethod = 'email' AND ContactDetails LIKE '%@%.%') OR
        (ContactMethod = 'call' AND ContactDetails LIKE '___-___-____') OR
        (ContactMethod = 'text' AND ContactDetails LIKE '___-___-____')
    )
);

-- Temporary table for SpecialOffer
DROP TEMPORARY TABLE IF EXISTS `#temp_SpecialOffer`;
CREATE TEMPORARY TABLE `#temp_SpecialOffer` (
    OfferID INT NOT NULL AUTO_INCREMENT,
    `Discount%` DECIMAL(4,2) NOT NULL,
    CustomerID INT NOT NULL,
    PRIMARY KEY (OfferID)
);
-- Temporary table for RewardsProgram
DROP TEMPORARY TABLE IF EXISTS `#temp_RewardsProgram`;
CREATE TEMPORARY TABLE `#temp_RewardsProgram` (
    RewardsID INT,
    PointsEarned INT,
    PointsRedeemed INT,
    PRIMARY KEY (RewardsID),
    CONSTRAINT check_points CHECK (PointsRedeemed <= PointsEarned)
);

-- Temporary table for Crew
DROP TEMPORARY TABLE IF EXISTS `#temp_Crew`;
CREATE TEMPORARY TABLE `#temp_Crew` (
    CrewID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Role VARCHAR(16) NOT NULL,
    FlightID INT NOT NULL,
    PRIMARY KEY (CrewID)
);

-- Procedures:
-- procedure to add entries into flight
DELIMITER //
CREATE PROCEDURE AddFlight(
	IN ID INT,
	IN DepAir CHAR(3),
	IN ArrAir CHAR(3),
    IN DepTime VARCHAR(10),
	IN ArrTime VARCHAR(10),
    IN date1 DATE
)
BEGIN
	INSERT INTO Flight 
    VALUES (ID, DepAir, ArrAir, DepTime, ArrTime, date1);
END; //
CALL AddFlight(666, 'ABC', 'XYZ', '12:34 PM', '06:09 AM', '1997-04-20');
SELECT * FROM flight;
DELETE FROM Flight WHERE FlightID = 666;
SELECT * FROM flight;

-- procedure to add entries into customer
DELIMITER //
CREATE PROCEDURE AddCustomer(
	IN ID INT,
	IN fn VARCHAR(50),
    IN ln VARCHAR(50),
    IN email VARCHAR(50),
    IN phonenum VARCHAR(50),
    IN street VARCHAR(50),
    IN city VARCHAR(50),
    IN ID2 INT
)
BEGIN
	INSERT INTO Customer 
    VALUES (ID, fn, ln, email, phonenum, street, city, ID2);
END; //
CALL AddCustomer(69420, 'ligma', 'sugma', 'jeff@hawk.iit.edu', '123-456-7890', 'Heaven', 'Hell', 14);
SELECT * FROM CUSTOMER;
DELETE FROM customer WHERE CustomerID = 69420;
SELECT * FROM CUSTOMER;

-- procedure to add entries into crew
DELIMITER //
CREATE PROCEDURE AddCrew(
	IN ID INT,
    IN fn VARCHAR(50),
    IN ln VARCHAR(50),
    IN role VARCHAR (16),
    IN ID2 INT
)
BEGIN 
	INSERT INTO CREW
    VALUES (ID, fn, ln, role, ID2);
END; //
CALL AddCrew(1234, 'null', '01j2d012dj12d', 'bomber', 13);
SELECT * FROM CREW;
DELETE FROM Crew WHERE CrewID = 1234;
SELECT * FROM CREW;

-- procedure to add entries into payment
DELIMITER //
CREATE PROCEDURE AddPayment(
	IN ID INT,
    IN cost varchar(10),
    IN method varchar(50)
)
BEGIN
	INSERT INTO Payment
	VALUES (ID, cost, method);
END; //
CALL AddPayment(777, 133.70, 'bribery');
SELECT * FROM PAYMENT;
DELETE FROM payment where paymentID = 777;
SELECT * FROM PAYMENT;

-- procedure to add entries into booking
DELIMITER //
CREATE PROCEDURE AddBooking(
	IN ID INT,
	IN date DATE,
    IN seat CHAR(3),
    IN fID INT,
    IN cID INT,
    IN pID INT
)
BEGIN 
	INSERT INTO Booking
    VALUES (ID, date, seat, fID, cID, pID);
END; //
CALL AddBooking(13579, '2011-09-11', 'AAA', 6, 9, 42);
Select * FROM BOOKING;
DELETE FROM Booking where bookingID = 13579;
Select * FROM BOOKING;

-- procedure to add entries into customerservicerepresentative
DELIMITER //
CREATE PROCEDURE AddSupport(
	IN ID INT,
	IN status VARCHAR(10),
    IN method varchar(5),
    IN contact varchar(50),
    IN custID INT
)
BEGIN
	INSERT INTO CustomerServiceRepresentative 
    VALUES(ID, status, method, contact, custID);
END; //
Call AddSupport(999, 'hacked', 'email', 'ihackedyouremail123@gone.com', 1);
SELECT * FROM CustomerServiceRepresentative;
DELETE FROM CustomerServiceRepresentative where serviceID = 999;
SELECT * FROM CustomerServiceRepresentative;

-- procedure to add entries into specialoffer
DELIMITER //
CREATE PROCEDURE AddOffer (
	IN ID INT,
    IN discount Decimal(4,2),
    IN custID INT
)
BEGIN
	INSERT INTO SpecialOffer
    VALUES(ID, discount, custID);
END; //
CALL AddOffer(777, '77.77', 7);
SELECT * FROM SPECIALOFFER;
DELETE FROM SpecialOFFer where OFFerID = 777;
SELECT * FROM SPECIALOFFER;

-- procedure to add entries into rewardsprogram
DELIMITER //
CREATE PROCEDURE AddRewards (
	IN ID INT,
    IN earned INT,
    IN redeemed INT
)
BEGIN
	INSERT INTO RewardsProgram
    VALUES (ID, earned, redeemed);
END; //
CALL AddRewards(51, 69, 42);
SELECT * FROM REWARDSPROGRAM;
DELETE FROM RewardsProgram WHERE RewardsID = 51;
SELECT * FROM REWARDSPROGRAM;

-- procedure to edit customer name
DELIMITER //
CREATE PROCEDURE UpdateCustomerName (
	IN ID INT,
	IN fn VARCHAR(50),
    IN ln VARCHAR(50)
)
BEGIN
	UPDATE Customer
    SET FirstName = fn, LastName = ln
    WHERE CustomerID = ID;
END; //
CALL UpdateCustomerName(1, "Leon", "Cammell");
SELECT * FROM CUSTOMER;
CALL UpdateCustomerName(1, "Leonara", "Cammell");
SELECT * FROM CUSTOMER;

-- procedure to edit customer contact info
DELIMITER //
CREATE PROCEDURE UpdateCustomerContact (
	IN ID INT,
	IN email VARCHAR(50),
    IN phonenum VARCHAR(50)
)
BEGIN
	UPDATE Customer
    SET Email = email, PhoneNumber = phonenum
    WHERE CustomerID = ID;
END; //
CALL UpdateCustomerContact(1, "hi@mail.com", "123-123-1234");
SELECT * FROM CUSTOMER;
CALL UpdateCustomerContact(1, "lcammell0@odnoklassniki.ru", "686-858-0611");
SELECT * FROM CUSTOMER;

-- procedure to edit customer address
DELIMITER //
CREATE PROCEDURE UpdateCustomerAddress (
	IN ID INT,
	IN street VARCHAR(50),
    IN city VARCHAR(50)
)
BEGIN
	UPDATE Customer
    SET Street = street, City = city
    WHERE CustomerID = ID;
END; //
CALL UpdateCustomerAddress(1, "Frying Pan Road", "Accident");
SELECT * FROM CUSTOMER;
CALL UpdateCustomerAddress(1, "35618 Warner Road", "Depok");
SELECT * FROM CUSTOMER;

-- procedure to update flight times
DELIMITER //
CREATE PROCEDURE UpdateFlightTime (
	IN ID INT,
	IN deptime VARCHAR(10),
    IN arrtime VARCHAR(10)
)
BEGIN
	UPDATE Flight
    SET DepartureTime = deptime, ArrivalTime = arrtime
    WHERE FlightID = ID;
END; //
CALL UpdateFlightTime(1, "4:20 PM", "4:20 AM");
SELECT * FROM FLIGHT;
CALL UpdateFlightTime(1, "9:52 PM", "1:59 AM");
SELECT * FROM FLIGHT;

-- procedure to update service status
DELIMITER //
CREATE PROCEDURE UpdateServiceStatus (
	IN ID INT,
	IN status VARCHAR(10)
)
BEGIN
	UPDATE CustomerServiceRepresentative
    SET ServiceStatus = status
    WHERE ServiceID = ID;
END; //
CALL UpdateServiceStatus(5, "resolved");
SELECT * FROM CUSTOMERSERVICEREPRESENTATIVE;
CALL UpdateServiceStatus(5, "unresolved");
SELECT * FROM CUSTOMERSERVICEREPRESENTATIVE;

-- procedure to update points
DELIMITER //
CREATE PROCEDURE UpdatePoints (
	IN ID INT,
	IN earned INT,
    IN redeemed INT
)
BEGIN
	UPDATE RewardsProgram
    SET PointsEarned = earned, PointsRedeemed = redeemed
    WHERE RewardsID = ID;
END; //
CALL UpdatePoints(1, 77777, 44444);
SELECT * FROM REWARDSPROGRAM;
CALL UpdatePoints(1, 1881, 1396);
SELECT * FROM REWARDSPROGRAM;

-- procedure to cancel a booked flight
DELIMITER //
CREATE PROCEDURE CancelBooking (
	IN custID INT
)
BEGIN
	DELETE FROM BOOKING
    WHERE Booking.CustomerID = custID;
END; //
CALL CancelBooking(26);
SELECT * FROM BOOKING;
UPDATE BOOKING SET Booking.FlightID = 15 WHERE Booking.CustomerID = 26;
SELECT * FROM BOOKING;

-- procedure to locate a customer's flight and booking given customerID
DELIMITER //
CREATE PROCEDURE LocateFlight (
	IN custID INT
)
BEGIN
	SELECT Customer.CustomerID, Flight.FlightID, BookingID, PaymentID, DepartureAirport, ArrivalAirport, DepartureTime, ArrivalTime, Date, SeatNumber
    FROM FLIGHT, CUSTOMER, Booking
    WHERE Customer.CustomerID = custID AND Booking.CustomerID = custID AND Booking.FlightID = Flight.FlightID;
END; //
CALL LocateFlight(50);

-- procedure to locate a customer's payment given CustomerID
DELIMITER //
CREATE PROCEDURE LocatePayment (
	IN custID INT
)
BEGIN
	SELECT Customer.CustomerID, FirstName, LastName, Email, PhoneNumber, Booking.BookingID, Booking.FlightID, Booking.PaymentID, Cost, PaymentMethod
    FROM Booking, Customer, Payment
    WHERE Customer.CustomerID = custID AND Customer.CustomerID = Booking.CustomerID AND Booking.PaymentID = Payment.PaymentID;
END; //
CALL LocatePayment(49);

-- procedure to locate a customer's service request
DELIMITER //
CREATE PROCEDURE LocateService (
	IN custID INT
)
BEGIN
	SELECT Customer.CustomerID, FirstName, LastName, ServiceID, ServiceStatus, ContactMethod, ContactDetails
    FROM Customer, CustomerServiceRepresentative CSR
    WHERE Customer.CustomerID = custID AND Customer.CustomerID = CSR.CustomerID;
END; //
CALL LocateService(42);

-- procedure to locate a customer's rewards and offers
DELIMITER //
CREATE PROCEDURE LocateRewards (
	IN custID INT
)
BEGIN
	SELECT Customer.CustomerID, FirstName, LastName, Email, PhoneNumber, PointsEarned, PointsRedeemed, OfferID, `Discount%`
    FROM Customer, RewardsProgram RP, specialoffer
    WHERE Customer.CustomerID = custID AND Customer.RewardsID = RP.RewardsID AND Customer.CustomerID = SpecialOffer.CustomerID;
END; //
CALL LocateRewards(2);

-- procedure to cancel a flight
DELIMITER //
CREATE PROCEDURE CancelFlight (
	IN fID INT
)
BEGIN
	UPDATE Flight
    SET DepartureAirport = "n/a", ArrivalAirport = "n/a", DepartureTime = "n/a", ArrivalTime = "n/a"
    WHERE FlightID = fID;
END; //
CALL CancelFlight(9);
SELECT * FROM FLIGHT;
UPDATE Flight SET DepartureAirport = 'PTZ', ArrivalAirport = 'DAT', DepartureTime = '12:21 AM', ArrivalTime = '10:38 AM' WHERE FlightID = 9;

-- count the amount of bookings a customer has
DELIMITER //
CREATE PROCEDURE CountBooks(
    IN cID INT,
    OUT books INT
)
BEGIN
    SELECT COUNT(*) INTO books
    FROM Booking
    WHERE CustomerID = cID;
END; //
CALL CountBooks(2, @books);
SELECT @books AS '# of books';

-- check if a customer has made a payment
DELIMITER //
CREATE PROCEDURE CheckPayment (
	IN cID INT,
	OUT result CHAR(1)
)
BEGIN
	DECLARE PaymentCount INT;
    
    SELECT COUNT(*) 
    INTO PaymentCount
	FROM Booking, Payment
	WHERE Booking.CustomerID = cID AND Booking.PaymentID = Payment.PaymentID;
    
    IF PaymentCount > 0 THEN 
		SET result = 'y';
	ELSE 
		SET result = 'n';
	END IF;
END; //
CALL CheckPayment(2, @result);
SELECT @result AS 'PaymentMade';
CALL CheckPayment(3, @result);
SELECT @result AS 'PaymentMade';

-- display customers by seat given flightID
DELIMITER //
CREATE PROCEDURE DisplaySeating (
	IN fID INT
)
BEGIN    
    SELECT Customer.CustomerID, FirstName, LastName, SeatNumber, Booking.FlightID
	FROM Booking, Customer
    WHERE Customer.CustomerID = Booking.CustomerID AND Booking.FlightID = fID
	ORDER BY SeatNumber;
END; //
CALL DisplaySeating(1);

-- Functions:
-- function to calculate customer's discounted flight price
DELIMITER //
CREATE FUNCTION SalesCalculation(custID INT) RETURNS DECIMAL(5,2)
DETERMINISTIC
BEGIN
	DECLARE price DECIMAL(6,2);
    DECLARE discount DECIMAL(4,2);
    DECLARE DiscountedPrice DECIMAL (5,2);
    
	SELECT MAX(`Discount%`) INTO discount
    FROM SpecialOffer
    WHERE SpecialOffer.CustomerID = custID;
    
    SELECT SUM(Cost) INTO price
    FROM (
		SELECT Cost 
		FROM Payment, Booking
		WHERE Booking.CustomerID = custID AND Payment.PaymentID = Booking.PaymentID
		GROUP BY Payment.PaymentID HAVING COUNT(*) = 1
	) AS UniqueSumCost;
    
    SET DiscountedPrice = price * ((100 - discount)/100);
    RETURN discountedPrice;
END; //
SELECT BookingID, BookingDate, Booking.CustomerID, Payment.PaymentID, Cost, `Discount%`, MAX(`Discount%`) OVER () AS MaxDiscount, salesCalculation(2) 
FROM Booking, Payment, SpecialOffer
WHERE Booking.PaymentID = Payment.PaymentID AND Booking.CustomerID = 2 AND SpecialOffer.CustomerID = Booking.CustomerID;

-- function to count the total number of customers on a flight
DELIMITER //
CREATE FUNCTION FlightCount(fID INT) RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE counter INT;

	SELECT COUNT(*) INTO counter
    FROM Booking
    WHERE Booking.flightID = fID;
    
    RETURN counter;
END; //
SELECT Booking.FlightID, BookingID, Customer.CustomerID, FirstName, LastName, FlightCount(2) 
FROM Booking, Customer
WHERE Booking.FlightID = 2 AND Booking.CustomerID = Customer.CustomerID;

-- function to count the total number of crews on a flight
DELIMITER //
CREATE FUNCTION CrewCount(fID INT) RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE counter INT;

	SELECT COUNT(*) INTO counter
    FROM Crew
    WHERE Crew.flightID = fID;
    
    RETURN counter;
END; //
SELECT Crew.FlightID, Crew.CrewID, Role, FirstName, LastName, CrewCount(4)
FROM Crew
WHERE Crew.FlightID = 4;

-- function to count the current number of points a customer has
DELIMITER //
CREATE FUNCTION CurrentPoints(cID INT) RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE earned, redeemed INT;

	SELECT PointsEarned, PointsRedeemed INTO earned, redeemed
    FROM RewardsProgram, Customer
    WHERE customer.CustomerID = cID AND rewardsprogram.rewardsID = customer.rewardsID;
    
    RETURN earned - redeemed;
END; //
SELECT CustomerID, rewardsprogram.RewardsID, PointsEarned, PointsRedeemed, CURRENTPOINTS()
FROM rewardsprogram, customer
WHERE customerID = 1 AND rewardsprogram.rewardsID = customer.rewardsID;

-- Queries:
-- 1) Return top 5 customers with the most points
SELECT CustomerID, FirstName, LastName, PointsEarned
FROM Customer, RewardsProgram
WHERE Customer.RewardsID = RewardsProgram.RewardsID
ORDER BY PointsEarned DESC
LIMIT 5;

-- 2) Calculate running total cost of all payments received
SELECT PaymentID, Cost,
    SUM(CAST(REPLACE(Cost, '$', '') AS DECIMAL(6,2))) OVER (ORDER BY PaymentID) AS RunningTotal
FROM Payment;

-- 3) Assign customers to 5 groups based on how much points they have
SELECT CustomerID, FirstName, LastName, PointsEarned,
	ntile(5) OVER (ORDER BY PointsEarned DESC) AS Quartile
FROM Customer, RewardsProgram
WHERE Customer.RewardsID = RewardsProgram.RewardsID
ORDER BY Quartile, CustomerID;

-- 4) Retrieves user information of those who have an unresolved ticket in customer service
SELECT ServiceID, ServiceStatus, Customer.customerID, FirstName, LastName, ContactMethod, ContactDetails
FROM CustomerServiceRepresentative AS CSR, Customer
WHERE Customer.CustomerID = CSR.CustomerID AND ServiceStatus != 'resolved';

-- 5) Find out top % of customers by adding their total payments and using percent_rank
WITH table1 AS (
	SELECT Customer.CustomerID, FirstName, LastName, BookingID, Payment.PaymentID, Cost,
    SUM(Cost) OVER (PARTITION BY Booking.CustomerID) AS TotalCost
	FROM Customer, Payment, Booking
	WHERE Customer.CustomerID = Booking.CustomerID AND Booking.PaymentID = Payment.PaymentID
) SELECT CustomerID, FirstName, LastName, BookingID, PaymentID, Cost, TotalCost, 
ROUND(PERCENT_RANK() OVER (ORDER BY TotalCost DESC)*100, 2) AS 'Top Paying Customer (%)'
FROM table1;

-- 6) Find moving total revenue per year from customers
SELECT EXTRACT(YEAR FROM BookingDate) AS Year, BookingID, BookingDate, Cost, 
SUM(Cost) OVER (PARTITION BY EXTRACT(YEAR FROM BookingDate) ORDER BY BookingDate ROWS UNBOUNDED PRECEDING) as 'Yearly Total'
FROM Booking, Payment
WHERE Booking.PaymentID = Payment.PaymentID;

-- 7) Find the total sales of each booking for each flight, including subtotals and the grand total (using rollup)
SELECT Flight.FlightID, CustomerID, Cost, SUM(Cost) AS TotalCost
FROM Flight, Booking, Payment
WHERE Flight.FlightID = Booking.FlightID AND Booking.PaymentID = Payment.PaymentID
GROUP BY Flight.FlightID, CustomerID, Cost WITH ROLLUP;

-- 8) Count the number of unique bookings (bookings not from the same customers) and total bookings in every flight. 
SELECT FlightID, COUNT(DISTINCT CustomerID) AS UniqueBookings, COUNT(CustomerID) AS TotalBookings
FROM BOOKING
GROUP BY FlightID;

-- 9) Finds flight where arrival time is lesser (earlier) than the departure time. 
SELECT * FROM Flight
WHERE STR_TO_DATE(ArrivalTime, '%h:%i %p') < STR_TO_DATE(DepartureTime, '%h:%i %p');

-- 10) Return the biggest and smallest payment.
WITH MinCost AS (
	SELECT PaymentID, Cost, 
	FIRST_VALUE(Cost) OVER (ORDER BY Cost ASC) AS FirstCost
    FROM Payment
), 
MaxCost AS (
	SELECT PaymentID, Cost, 
	LAST_VALUE(Cost) OVER (ORDER BY Cost ASC ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LastCost
    FROM Payment
) SELECT 'Lowest' AS CostType, PaymentID, Cost
FROM MinCost
WHERE Cost = FirstCost
UNION ALL 
SELECT 'Highest' AS CostType, PaymentID, Cost
FROM MaxCost
WHERE Cost = LastCost;

-- 11) Calculate the amount of bookings per customer.
SELECT c.CustomerID, c.FirstName, c.LastName,
    COUNT(*) AS BookingFrequency
FROM Customer c
JOIN Booking b ON c.CustomerID = b.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName
ORDER BY BookingFrequency DESC;

-- 12) Find the moving totals of books per flight.
SELECT FlightID, BookingDate, 
	COUNT(BookingID) OVER (PARTITION BY FlightID ORDER BY BookingDate) AS RunningTotalBookings
FROM Booking
ORDER BY FlightID, BookingDate;

-- 13) Find moving averages and totals for bookings by cost and date.
SELECT YEAR(BookingDate) AS Booking_Year, MONTH(BookingDate) AS Booking_Month, BookingID, cost,
    ROUND(AVG(Cost) OVER (PARTITION BY YEAR(BookingDate) ORDER BY BookingDate), 2) AS Moving_Avg_Cost,
    SUM(Cost) OVER (PARTITION BY YEAR(BookingDate) ORDER BY BookingDate) AS Total_Cost
FROM (
    SELECT BookingID, BookingDate, Payment.Cost
    FROM Booking
	JOIN Payment ON Booking.PaymentID = Payment.PaymentID) AS dt
ORDER BY Booking_Year, Booking_Month, BookingDate;

-- 14) Group customers in a tier by frequency of bookings using ntile.
SELECT CustomerID, count(bookingID) AS Bookings,
	NTILE(4) OVER (ORDER BY COUNT(BookingID) DESC) AS LoyaltyTier
FROM Booking
GROUP BY CustomerID
ORDER BY LoyaltyTier;

-- 15) Find total revenue from each payment grouped by payment method.
SELECT PaymentMethod, SUM(Cost) AS TotalRevenue
FROM Payment
GROUP BY PaymentMethod
ORDER BY TotalRevenue DESC;

-- 16) Display the amount of flight attendants, pilots, and co-pilots per flight.
SELECT FlightID,
    SUM(CASE WHEN Role = 'Pilot' THEN 1 ELSE 0 END) AS NumberOfPilots,
    SUM(CASE WHEN Role = 'Co-Pilot' THEN 1 ELSE 0 END) AS NumberOfCoPilots,
    SUM(CASE WHEN Role = 'Flight Attendant' THEN 1 ELSE 0 END) AS NumberOfFlightAttendants
FROM Crew
GROUP BY FlightID
ORDER BY FlightID;

-- ------------------------
-- Interesting Use Cases
-- 1) Calculates flight duration
SELECT FlightID, DepartureAirport, ArrivalAirport, DepartureTime, ArrivalTime, Date, 
    CASE
        WHEN TIMEDIFF(STR_TO_DATE(ArrivalTime, '%h:%i %p'), STR_TO_DATE(DepartureTime, '%h:%i %p')) >= 0 
            THEN TIMEDIFF(STR_TO_DATE(ArrivalTime, '%h:%i %p'), STR_TO_DATE(DepartureTime, '%h:%i %p'))
        ELSE ADDTIME(TIMEDIFF(STR_TO_DATE(ArrivalTime, '%h:%i %p'), STR_TO_DATE(DepartureTime, '%h:%i %p')), '24:00:00')
    END AS Duration
FROM Flight
ORDER BY Duration DESC;

-- 2) Use temp table to allow customers to see their pending bookings before a purchase and add it to booking once purchased.

-- CREATE THE TEMPORARY TABLE AND INITIALIZE ATTRIBUTES
DROP TEMPORARY TABLE IF EXISTS `#temp_Booking1`;
CREATE TEMPORARY TABLE `#temp_Booking1` (
    BookingID INT NOT NULL AUTO_INCREMENT,
    BookingDate DATE NOT NULL,
    SeatNumber CHAR(3) NOT NULL,
    FlightID INT NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	PhoneNumber VARCHAR(50) NOT NULL,
	Street VARCHAR(50) NOT NULL,
	City VARCHAR(50) NOT NULL,
    Confirmation CHAR(1),
    PRIMARY KEY (BookingID)
);
INSERT INTO `#temp_Booking1` (BookingDate, SeatNumber, FlightID, FirstName, LastName, Email, PhoneNumber, Street, City, Confirmation) VALUES 
	('2048-10-24', 'C04', 3, 'Ben', 'Dover', 'Bendover101@gmail.com', '696-696-6969', '123 W St', 'Ney York City', ''),
    ('2100-06-09', 'M08', 9, 'Ben', 'Dover', 'Bendover101@gmail.com', '696-696-6969', '123 W St', 'Ney York City', '');
SELECT *, 'Update Confirmation value to Y to confirm booking' FROM `#temp_Booking1`;

-- UPDATE TABLE WITH CONFIRMATION OR DENIAL OF BOOKING
UPDATE `#temp_Booking1` SET Confirmation = 'N' WHERE BookingID = 1;
UPDATE `#temp_Booking1` SET Confirmation = 'Y' WHERE BookingID = 2;
SELECT * FROM `#temp_Booking1`;

-- UPDATE ACTUAL TABLE WITH TUPLES THAT CONTAIN CONFIRMATION
INSERT INTO Customer(FirstName, LastName, Email, PhoneNumber, Street, City)
	SELECT `#temp_Booking1`.FirstName, `#temp_Booking1`.LastName, `#temp_Booking1`.Email, `#temp_Booking1`.PhoneNumber, 
    `#temp_Booking1`.Street, `#temp_Booking1`.City
    FROM `#temp_Booking1`
	WHERE Confirmation LIKE 'Y';
INSERT INTO Booking(BookingDate, SeatNumber, FlightID, CustomerID, PaymentID)
	SELECT `#temp_Booking1`.BookingDate, `#temp_Booking1`.SeatNumber, `#temp_Booking1`.FlightID, MaxCID, MaxPID
    FROM `#temp_Booking1`, (SELECT MAX(CustomerID) AS MAXCID FROM Customer) AS MaxCID, (SELECT MAX(PaymentID) AS MAXPID FROM Payment) as MaxPID
    WHERE CONFIRMATION LIKE 'Y';

-- 3) Find the percentage a customer's payment is of the total revenue.
SELECT B.CustomerID, B.BookingID, P.Cost, TR.TotalRevenue,
    ROUND((P.Cost / TR.TotalRevenue) * 100,2) AS PercentCost
FROM Booking B
JOIN Payment P ON B.PaymentID = P.PaymentID,
    (SELECT SUM(Cost) AS TotalRevenue FROM Payment) TR
ORDER BY PercentCost DESC;

-- 4) Compare customer loyalty by computing the z-score of customer points (how many standard deviations each customer is from the mean customer points).
WITH table1 AS (
	SELECT AVG(pointsEarned) AS averagepoints, STDDEV(pointsEarned) AS stddev
    FROM rewardsprogram
) SELECT CustomerID, FirstName, LastName, RewardsProgram.RewardsID, PointsEarned, 
	ROUND(table1.averagepoints,2) AS average, ROUND(table1.stddev,2) AS StdDev, 
    ROUND((rewardsprogram.pointsearned - table1.averagepoints) / stddev,2) AS z_score
FROM Customer, RewardsProgram, table1
WHERE Customer.RewardsID = RewardsProgram.RewardsID
ORDER BY z_score DESC;

-- View customer's current points,
SELECT CustomerID, RP.RewardsID, FirstName, LastName, PointsEarned, PointsRedeemed, PointsEarned - PointsRedeemed AS CurrentPoints
FROM Customer, RewardsProgram RP
WHERE Customer.RewardsID = RP.RewardsID
ORDER BY CurrentPoints DESC;

-- Count C.S.R handles by ContactMethod
SELECT ContactMethod, COUNT(*) AS cases_count
FROM CustomerServiceRepresentative
GROUP BY ContactMethod
ORDER BY cases_count DESC;

-- drop trigger convert_flight_time_before_insert;
-- drop trigger convert_flight_time_before_update;
-- drop function calculate_flight_duration;

-- DELIMITER //
-- -- Trigger to convert departure and arrival time from AM/PM to 24-hour format on insert
-- CREATE TRIGGER convert_flight_time_before_insert
-- BEFORE INSERT ON Flight
-- FOR EACH ROW
-- BEGIN
--     SET NEW.departureTime = STR_TO_DATE(NEW.departureTime, '%h:%i %p');
--     SET NEW.arrivalTime = STR_TO_DATE(NEW.arrivalTime, '%h:%i %p');
-- END; //

-- DELIMITER //
-- -- Trigger to convert departure and arrival time from AM/PM to 24-hour format on update
-- CREATE TRIGGER convert_flight_time_before_update
-- BEFORE UPDATE ON Flight
-- FOR EACH ROW
-- BEGIN
--     SET NEW.departureTime = STR_TO_DATE(NEW.departureTime, '%h:%i %p');
--     SET NEW.arrivalTime = STR_TO_DATE(NEW.arrivalTime, '%h:%i %p');
-- END; //

-- DELIMITER //
-- -- Function to calculate flight duration and handle flights that cross over midnight
-- CREATE FUNCTION calculate_flight_duration(departure DATETIME, arrival DATETIME)
-- RETURNS VARCHAR(5)
-- DETERMINISTIC
-- BEGIN
--     DECLARE duration INT;
--     -- Check if the flight duration is negative (crosses over midnight)
--     IF TIMESTAMPDIFF(MINUTE, departure, arrival) < 0 THEN
--         -- Add 24 hours to the arrival time and recalculate the duration
--         SET duration = TIMESTAMPDIFF(MINUTE, departure, ADDTIME(arrival, '24:00:00'));
--     ELSE
--         -- Calculate duration as is
--         SET duration = TIMESTAMPDIFF(MINUTE, departure, arrival);
--     END IF;
--     -- Return the duration formatted as HH:MM
--     RETURN CONCAT(LPAD(FLOOR(duration / 60), 2, '0'), ':', LPAD(MOD(duration, 60), 2, '0'));
-- END; //

-- -- Query to select flights with calculated flight duration
-- SELECT departureTime, arrivalTime, calculate_flight_duration(departureTime, arrivalTime) AS flight_duration
-- FROM Flight;

-- WITH fduration AS (
-- 	SELECT FlightID, DepartureAirport, ArrivalAirport, DepartureTime, ArrivalTime, Date, 
-- 		CASE
-- 			WHEN TIMEDIFF(STR_TO_DATE(ArrivalTime, '%h:%i %p'), STR_TO_DATE(DepartureTime, '%h:%i %p')) >= 0 
-- 				THEN TIMEDIFF(STR_TO_DATE(ArrivalTime, '%h:%i %p'), STR_TO_DATE(DepartureTime, '%h:%i %p'))
-- 			ELSE ADDTIME(TIMEDIFF(STR_TO_DATE(ArrivalTime, '%h:%i %p'), STR_TO_DATE(DepartureTime, '%h:%i %p')), '24:00:00')
-- 		END AS Duration FROM Flight
-- ) SELECT MAX(Duration) AS Longest, MIN(Duration) AS Shortest
-- FROM fduration;