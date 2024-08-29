CREATE TABLE Stores
   (
      SNum            NVARCHAR2 (4),
      StoreName       NVARCHAR2 (20),
      Franchises      INTEGER,
      HQLocation      NVARCHAR2 (25),
      CONSTRAINT pk_Stores PRIMARY KEY (SNum)
   );

INSERT INTO Stores
   VALUES('S100', 'LiquorLand', 20, 'Albany');
INSERT INTO Stores
   VALUES('S200', 'TapHouse', 195, 'NewOrleans');
INSERT INTO Stores	
   VALUES('S300', 'BetterBooze', 20, 'Madison');
INSERT INTO Stores	
   VALUES('S400', 'SpiritedAway', 140, 'Madison');
INSERT INTO Stores	
   VALUES('S500', 'BoozeBodega', 80, 'Milwaukee');
INSERT INTO Stores	
   VALUES('S600', 'SuperShots', 70, 'Poughkeepsie');
INSERT INTO Stores	
   VALUES('S700', 'BourbonStreet', 120, 'Milwaukee');
COMMIT;