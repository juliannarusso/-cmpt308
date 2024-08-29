CREATE TABLE Liquors  
   (
      LNum          NVARCHAR2 (4),
      LiquorType    NVARCHAR2 (20),
      Price         FLOAT,	
      CaseSize      INTEGER,
      OriginCity    NVARCHAR2 (20),
      CONSTRAINT pk_Liquors PRIMARY KEY (LNum)		
   );
	
INSERT INTO Liquors
   VALUES('L100', 'Beer', 25, 12, 'Milwaukee');
INSERT INTO Liquors	
   VALUES('L200', 'Rum', 60, 6, 'Albany');
INSERT INTO Liquors	
   VALUES('L300', 'Whiskey', 40, 8, 'NewOrleans');
INSERT INTO Liquors	
   VALUES('L400', 'Moonshine', 25, 15, 'Milwaukee');
INSERT INTO Liquors	
   VALUES('L500', 'Tequila', 40, 10, 'Albany');
INSERT INTO Liquors	
   VALUES('L600', 'Wine', 25, 4, 'Milwaukee');
COMMIT;