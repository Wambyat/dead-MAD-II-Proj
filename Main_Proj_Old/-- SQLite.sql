CREATE TABLE IF NOT EXISTS Users (
    ID int NOT NULL,
    UName varchar(255) NOT NULL,
    PASSWORD varchar(255) NOT NULL,
    PRIMARY KEY (ID)
);


CREATE TABLE IF NOT EXISTS UserDetails (
    ID int NOT NULL,
    Name varchar(255) NOT NULL,
    Age int NOT NULL,
    Gender varchar(255) NOT NULL,
    PRIMARY KEY (ID)
);


CREATE TABLE IF NOT EXISTS Admin (
    ID int NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (ID) REFERENCES User(ID)
);


CREATE TABLE IF NOT EXISTS Ticket (
    TID int NOT NULL,
    ID int NOT NULL,
    SID int NOT NULL,
    NumTickets int NOT NULL,
    BookingDate datetime NOT NULL,
    FOREIGN KEY (ID) REFERENCES User(ID),
    FOREIGN KEY (SID) REFERENCES SHOW(SID),
    PRIMARY KEY (TID)
);


CREATE TABLE IF NOT EXISTS SHOW (
    SID int NOT NULL,
    Details varchar(255) NOT NULL,
    SName varchar(255) NOT NULL,
    Location varchar(255) NOT NULL,
    TotalSeats int NOT NULL,
    AvailableSeats int NOT NULL,
    SDate datetime NOT NULL,
    PRIMARY KEY (SID)
);


CREATE TABLE IF NOT EXISTS ShowTags (
    SID int NOT NULL,
    Tag varchar(255) NOT NULL,
    PRIMARY KEY (SID)
);


INSERT INTO
    Users (ID, UName, PASSWORD)
VALUES
    (1, 'a', 'a'),
    (2, 'user2', 'password2'),
    (3, 'user3', 'password3');


INSERT INTO
    UserDetails (ID, Name, Age, Gender)
VALUES
    (1, 'A.A', 25, 'Male'),
    (2, 'Ayo Amma', 30, 'Female'),
    (3, 'Papa Johns', 22, 'Male');


INSERT INTO
    Admin (ID)
VALUES
    (1);


INSERT INTO
    Ticket (TID, ID, SID, NumTickets, BookingDate)
VALUES
    (1, 1, 1, 3, '2023-08-08 10:00:00'),
    (2, 2, 2, 1, '2023-08-08 11:00:00'),
    (3, 3, 3, 3, '2023-08-08 12:00:00');


INSERT INTO
    SHOW (
        SID,
        Details,
        SName,
        Location,
        TotalSeats,
        AvailableSeats,
        SDate
    )
VALUES
    (
        1,
        'Comedy Show',
        'Laugh Factory',
        'New York',
        100,
        97,
        '2023-08-15 20:00:00'
    ),
    (
        2,
        'Music Concert',
        'Arena Stadium',
        'Los Angeles',
        500,
        499,
        '2023-08-20 18:30:00'
    ),
    (
        3,
        'Theater Play',
        'City Theater',
        'Chicago',
        200,
        197,
        '2023-08-25 19:00:00'
    );


DROP TABLE IF EXISTS ShowTags;


CREATE TABLE IF NOT EXISTS ShowTags (
    TagID INTEGER PRIMARY KEY,
    SID INTEGER NOT NULL,
    Tag varchar(255) NOT NULL,
    FOREIGN KEY (SID) REFERENCES SHOW(SID)
);


INSERT INTO
    ShowTags (SID, Tag)
VALUES
    (1, 'Comedy'),
    (1, 'Crowd Work'),
    (2, 'Concert'),
    (2, 'Music'),
    (3, 'Theater'),
    (3, 'Play');