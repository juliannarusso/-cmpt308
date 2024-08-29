CREATE TABLE Sells
   (
      DNum      NVARCHAR2 (4),
      LNum      NVARCHAR2 (4),
      SNum      NVARCHAR2 (4),
      NumCases  INTEGER,
      CONSTRAINT pk_Sells PRIMARY KEY (DNum, LNum, SNum),
      CONSTRAINT fk_Sells_Distributors FOREIGN KEY (DNum) REFERENCES Distributors(DNum),
      CONSTRAINT fk_Sells_Liquors FOREIGN KEY (LNum) REFERENCES Liquors(LNum),
      CONSTRAINT fk_Sells_Stores FOREIGN KEY (SNum) REFERENCES Stores(SNum)
   );
   
INSERT INTO Sells
        VALUES('D10', 'L100', 'S100', 25);
INSERT INTO Sells
        VALUES('D10', 'L100', 'S400', 75);
INSERT INTO Sells      
        VALUES('D20', 'L300', 'S100', 40);
INSERT INTO Sells      
        VALUES('D20', 'L300', 'S200', 25);
INSERT INTO Sells      
        VALUES('D20', 'L300', 'S300', 25);
INSERT INTO Sells      
        VALUES('D20', 'L300', 'S400', 50);
INSERT INTO Sells      
        VALUES('D20', 'L300', 'S500', 60);
INSERT INTO Sells      
        VALUES('D20', 'L300', 'S600', 40);
INSERT INTO Sells      
        VALUES('D20', 'L300', 'S700', 80);
INSERT INTO Sells      
        VALUES('D20', 'L500', 'S200', 10);
INSERT INTO Sells      
        VALUES('D30', 'L300', 'S100', 25);
INSERT INTO Sells      
        VALUES('D30', 'L400', 'S200', 50);
INSERT INTO Sells      
        VALUES('D40', 'L600', 'S300', 30);
INSERT INTO Sells      
        VALUES('D40', 'L600', 'S700', 30);
INSERT INTO Sells      
        VALUES('D50', 'L100', 'S400', 10);
INSERT INTO Sells      
        VALUES('D50', 'L200', 'S200', 25);
INSERT INTO Sells      
        VALUES('D50', 'L200', 'S400', 10);
INSERT INTO Sells      
        VALUES('D50', 'L300', 'S400', 25);
INSERT INTO Sells      
        VALUES('D50', 'L400', 'S400', 80);
INSERT INTO Sells      
        VALUES('D50', 'L500', 'S400', 40);
INSERT INTO Sells      
        VALUES('D50', 'L500', 'S500', 50);
INSERT INTO Sells      
        VALUES('D50', 'L500', 'S700', 10);
INSERT INTO Sells      
        VALUES('D50', 'L600', 'S200', 20);
INSERT INTO Sells      
        VALUES('D50', 'L600', 'S400', 50);
COMMIT;