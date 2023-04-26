--Ryan Kim
--Player:
--（pnumber,team,coach,fname,lname,dob,height,statsID)

--Bucks Players
INSERT INTO player VALUES
  (21, 'Bucks', 'MikeBudenholzer', 'Jrue', 'Holiday', 12-JUN-1990, 76, 61);
INSERT INTO player VALUES
  (12, 'Bucks', 'MikeBudenholzer', 'Grayson', 'Allen', 8-OCT-1995, 76, 62);
INSERT INTO player VALUES
  (22, 'Bucks', 'MikeBudenholzer', 'Khris', 'Middleton', 12-AUG-1991, 79, 63);
INSERT INTO player VALUES
  (34, 'Bucks', 'MikeBudenholzer', 'Giannis', 'Antetokounmpo', 6-DEC-1994, 83, 64);
INSERT INTO player VALUES
  (11, 'Bucks', 'MikeBudenholzer', 'Brook', 'Lopez', 1-APR-1988, 84, 65);
  
--StatsP:
 --(SID, points, rebounds, assists, blocks, steals, fgoals, fgpercent, threeptrs, threepercent)
 
INSERT INTO StatsP VALUES
  (61, 1290, 341, 495, 25, 79, 490, '47.9%', 158, '38.4%');
INSERT INTO StatsP VALUES
  (62, 750, 237, 163, 14, 62, 245, '44.0%', 146, '39.9%'); 
INSERT INTO StatsP VALUES
  (63, 497, 140, 163, 5, 23, 177, '43.6%', 51, '31.5%');
INSERT INTO StatsP VALUES
  (64, 1959, 742, 359, 51, 52, 707, '55.3%', 47, '27.5%');
INSERT INTO StatsP VALUES
  (65, 1239, 520, 99, 193, 37, 477, '53.1%', 136, '37.4%'); 


--Celtics Players
INSERT INTO player VALUES
  (36, 'Celtics', 'JoeMazzulla', 'Marcus', 'Smart', 6-MAR-1994, 76, 66);
INSERT INTO player VALUES
  (9, 'Celtics', 'JoeMazzulla', 'Derrick', 'White', 2-JUL-1994, 76, 67);
INSERT INTO player VALUES
  (7, 'Celtics', 'JoeMazzulla', 'Jaylen', 'Brown', 24-OCT-1996, 78, 68);
INSERT INTO player VALUES
  (0, 'Celtics', 'JoeMazzulla', 'Jayson', 'Tatum', 3-MAR-1998, 80, 69);
INSERT INTO player VALUES
  (42, 'Celtics', 'JoeMazzulla', 'Al', 'Horford', 3-JUN-1986, 81, 70);
  
INSERT INTO StatsP VALUES
   (66, 703, 191, 382, 23, 93, 250, '41.5%', 115, '33.6%')
INSERT INTO StatsP VALUES
   (67, 1017, 293, 321, 76, 54, 350, '46.2%', 149, '38.1%')
INSERT INTO StatsP VALUES
   (68, 1784, 459, 232, 26, 75, 679, '49.1%', 163, '33.5%')
INSERT INTO StatsP VALUES
   (69, 2225, 649, 342, 51, 78, 727, '46.6%', 240, '35.0%')
INSERT INTO StatsP VALUES
   (70, 616, 390, 189, 61, 30, 228, '47.6%', 145, '44.6%')
  
--76ers Players
INSERT INTO player VALUES
  (1, '76ers', 'DocRivers', 'James', 'Harden', 26-AUG-1989, 77, 71);
INSERT INTO player VALUES
  (0, '76ers', 'DocRivers', 'Tyrese', 'Maxey', 4-NOV-2000, 75, 72);
INSERT INTO player VALUES
  (12, '76ers', 'DocRivers', 'Tobias', 'Harris', 15-JUL-1992, 79, 73);
INSERT INTO player VALUES
  (17, '76ers', 'DocRivers', 'PJ', 'Tucker', 5-May-1985, 77, 74);
INSERT INTO player VALUES
  (21, '76ers', 'DocRivers', 'Joel', 'Embiid', 16-MAR-1994, 84, 75);

  
INSERT INTO StatsP VALUES
   (71, 1216, 354, 618, 31, 71, 371, '44.1%', 161, '38.5%');
INSERT INTO StatsP VALUES
   (72, 1218, 176, 212, 8, 49, 439, '48.1%', 160, '43.4%');
INSERT INTO StatsP VALUES
   (73, 1085, 424, 186, 40, 68, 423, '50.1%', 126, '38.9%');
INSERT INTO StatsP VALUES
   (74, 266, 295, 60, 15, 39, 96, '42.7%', 55, '39.3%');
INSERT INTO StatsP VALUES
   (75, 2183, 670, 274, 112, 66, 728, '54.8', 66, '33.0%');

--Team:
--(tname, StateOrigin, coach, mascott, yearCreated, numPlayers, statsID)
INSERT INTO Team VALUES
	('Bucks', 'Wisconsin', 'MikeBudenholzer', 'Bango', 1968, 17, 1); 
INSERT INTO Team VALUES
	('Celtics', 'Massachusetts', 'JoeMazzulla', 'Lucky', 1946, 17, 2); 
INSERT INTO Team VALUES
	('76ers', 'Pennsylvania', 'DocRivers', 'HipHop', 1946, 17, 3); 

--StatsT:
--(SID, wins, losses, winpercent, conference, rank)
INSERT INTO StatsT VALUES
	(1, 58, 24, '70.7%', 'Eastern', 1);
INSERT INTO StatsT VALUES
	(2, 57, 25, '69.5%', 'Eastern', 2);
INSERT INTO StatsT VALUES
	(3, 54, 28, '65.9%', 'Eastern', 3);

--Coach:
--(fullname, teamname, pcoachingjob, StateIn, dob)
INSERT INTO Coach VALUES
	('MikeBudenholzer', 'Bucks', 'Hawks', 'Arizona', 6-AUG-1969);
INSERT INTO Coach VALUES
	('JoeMazzulla', 'Celtics', 'FairmontState', 'RhodeIsland', 30-JUN-1988);
INSERT INTO Coach VALUES
	('DocRivers', '76ers', 'Clippers', 'Illinois', 13-OCT-1961);