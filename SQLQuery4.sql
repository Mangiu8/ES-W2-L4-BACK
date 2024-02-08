
CREATE PROCEDURE InsertImpiegato 
@IDImpiego int,
@Nome nvarchar(50),
@Cognome nvarchar(50),
@Eta int,
@CodiceFiscale nvarchar(16),
@RedditoMensile Money,
@DetrazioneFiscale Bit	
AS

BEGIN
Insert Into Impiegati(IDImpiego,Nome,Cognome,Eta,CodiceFiscale,RedditoMensile,DetrazioneFiscale)
Values (@IDImpiego,@Nome,@Cognome,@Eta,@CodiceFiscale,@RedditoMensile,@DetrazioneFiscale)

END;

