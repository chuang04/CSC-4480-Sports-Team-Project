--Ryan Kim

--Demonstrating exists and not exists
--Showing which coach had a previous job
SELECT fullname, teamname, pcoachingjob 
FROM coach c1
WHERE EXISTS
(SELECT * FROM coach c2 
  WHERE c2.pcoachingjob IS NOT NULL 
	AND c2.FULLNAME = c1.FULLNAME
);

--Showing which coach didn't have a previous job
SELECT fullname, teamname, pcoachingjob 
FROM coach c1
WHERE NOT EXISTS
(SELECT * FROM coach c2 
  WHERE c2.pcoachingjob IS NOT NULL 
	AND c2.FULLNAME = c1.FULLNAME
);

--Demonstrating max and correlated nested queries
--Showing who had the most three pointers made
SELECT p.fname || ' ' || p.lname AS name, s.threeptrs
FROM player p
JOIN statsp s ON p.statsid = s.sid
WHERE s.threeptrs = (SELECT MAX(threeptrs) FROM statsp);

--Demonstrating min and correlated nested queries
--Showing who had the least three pointers made
SELECT p.fname || ' ' || p.lname AS name, s.threeptrs
FROM player p
JOIN statsp s ON p.statsid = s.sid
WHERE s.threeptrs = (SELECT MIN(threeptrs) FROM statsp);

--Showing when teams were founded
SELECT tname, yearcreated
FROM team
ORDER BY yearcreated ASC;

--Demonstrating 'like'
--To show players whose first names start with "J"
SELECT fname, lname
FROM player
WHERE fname like 'J%'
ORDER BY lname;

--Demonstrating 'union' and grouping
--To show players and coaches born in the month of October
SELECT fname || ' ' || lname AS name, dob
FROM player
WHERE dob like '%-OCT-%'
UNION
SELECT fullname AS name, dob
FROM coach
WHERE dob like '%-OCT-%';

--Demonstrating implicit join
--To show Eastern Conference players who scored more than a thousand points for the season
SELECT p.FNAME, p.LNAME, s.POINTS
FROM PLAYER p 
JOIN STATSP s ON p.STATSID = s.SID
WHERE s.POINTS > 1000
ORDER BY s.POINTS DESC;

--Demonstrating between
--Showing players with points between 500 and 1000
SELECT p.fname || ' ' || p.lname AS name, s.points
FROM player p
JOIN statsp s ON p.statsid = s.sid
WHERE (s.points BETWEEN 500 AND 1000)
ORDER BY s.points DESC;

