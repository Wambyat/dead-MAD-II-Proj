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