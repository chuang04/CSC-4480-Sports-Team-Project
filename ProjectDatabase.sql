--Author: Calum Huang
CREATE TABLE Player (
    pnumber number(3) not null,
    team varchar2(15) not null,
    fname varchar2(15),
    lname varchar2(15),
    dob date,
    height number(4),
    statsID number(10),
    constraint p_key primary key(pnumber, team),
    foreign key (team) references team(tname),
    foreign key (statsID) references StatsP(SID)
);

CREATE TABLE StatsP (
    SID number(10) not null,
    Points number(10),
    Rebounds number(10),
    Assists number(10),
    Blocks number(10),
    Steals number(10),
    fgoals number(10),
    fgpercent varchar2(5),
    threeptrs number(10),
    threepercent varchar2(5),
    primary key(SID)
);

CREATE TABLE Team (
    tname varchar2(15),
    mascott varchar2(15),
    coach varchar2(30),
    StateOrgin varchar2(15),
    yearcreated number(4),
    numPlayers  number(3),
    statsID number(10),
    constraint t_key primary key(tname,mascott),
    foreign key (coach) references coach(name),
    foreign key (statsID) references statsT(SID)
);

CREATE TABLE StatsT (
    SID number(10) not null,
    wins number(5),
    losses number(5),
    winpercent varchar2(5),
    conference varchar2(15),
    rank number(3),
    
    primary key (sid)
);

CREATE TABLE Coach (
    fullname varchar2(30) not null,
    teamname varchar2(15),
    pcoachingjob varchar2(15),
    dob date,
    
    primary key (fullname),
    foreign key (teamname) references team(tname)
);
