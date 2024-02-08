
CREATE PROCEDURE DeleteImpiegato
	@IDImpiegato int
AS
BEGIN

Delete From Impiegati
Where IDImpiegato = @IDImpiegato
END;

