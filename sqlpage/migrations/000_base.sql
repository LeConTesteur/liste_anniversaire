CREATE TABLE Evenements (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT
);

CREATE TABLE Cadeaux (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT,
    link TEXT,
    evenement_id INTEGER,
    FOREIGN KEY (evenement_id) REFERENCES Evenements(id)
);

CREATE TABLE Comptes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

CREATE TABLE MotsPasse (
    id INTEGER,
    password TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id) REFERENCES Compte(id)
);


/* CREATE FUNCTION dbo.fn_getRandom_Value()
RETURNS BigInt
AS
BEGIN
    SELECT CAST(
            RAND(1000)*POWER(
                CAST(10 AS BIGINT),
                CAST(15 AS BIGINT)
            ) AS BIGINT
        ) AS Rand_Value;
END */
-- abs(random())
CREATE TABLE Invites (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    rand INTEGER NOT NULL,
    name TEXT DEFAULT NULL,
    compte_id INTEGER DEFAULT NULL,
    FOREIGN KEY (compte_id) REFERENCES Compte(id),
    CHECK (name IS NOT NULL OR compte_id IS NOT NULL)
);