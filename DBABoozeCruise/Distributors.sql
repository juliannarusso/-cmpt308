CREATE TABLE Distributors
   (
   DNum             NVARCHAR2(4),
   DistributorName  NVARCHAR2(20),
   Region           INTEGER,
   Location         NVARCHAR2(25),
   CONSTRAINT pk_Distributors PRIMARY KEY (DNum)
   );

INSERT INTO Distributors
   VALUES('D10', 'BeerBros', 10, 'Milwaukee');
INSERT INTO Distributors	
   VALUES('D20', 'BottleBabes', 20, 'Albany');
INSERT INTO Distributors	
   VALUES('D30' , 'KegStand', 30, 'Albany');
INSERT INTO Distributors	
   VALUES('D40', 'BrewHaHa', 50, 'Milwaukee');
INSERT INTO Distributors	
   VALUES('D50', 'PeekABrew', 30, 'Madison');
COMMIT;