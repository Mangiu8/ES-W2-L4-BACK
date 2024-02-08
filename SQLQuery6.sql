

CREATE PROCEDURE UpdateImpiegato
@IDImpiegato int,
@IDImpiego int,
@Nome nvarchar(50),
@Cognome nvarchar(50),
@Eta int,
@CodiceFiscale nvarchar(16),
@RedditoMensile Money,
@DetrazioneFiscale Bit

AS
BEGIN

Update Impiegati
Set 
IDImpiego = @IDImpiego,
Nome = @Nome,
Cognome = @Cognome, 
Eta = @Eta,
CodiceFiscale = @CodiceFiscale,
RedditoMensile = @RedditoMensile,
DetrazioneFiscale = @DetrazioneFiscale

Where IDImpiegato = @IDImpiegato

END;

