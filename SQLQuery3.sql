--Visualizzare tutti gli impiegati oltre i 29 anni;
--Select * from Impiegati where Eta >29 

--Visualizzare tutti gli impiegati con un reddito di almeno 2800 euro mensili; 
--Select * from Impiegati where RedditoMensile >= 2800

--Visualizzare tutti gli impiegati che posseggono la detrazione fiscale; 
--Select * from Impiegati where DetrazioneFiscale = 1

--Visualizzare tutti gli impiegati che non posseggono la detrazione fiscale; 
--Select * from Impiegati where DetrazioneFiscale = 0

--Visualizzare tutti gli impiegati cui il cognome cominci con una lettera G e li visualizzi in ordine alfabetico
--Select * from Impiegati where Nome like 'G%' order by Nome ASC

--Visualizzare il numero totale degli impiegati registrati nella base dati; 
--Select Count(*) as TotaleImpiegati from Impiegati 

--Visualizzare il totale dei redditi mensili di tutti gli impiegati; 
--Select sum(RedditoMensile) as TotaleRedditoImpiegati from Impiegati

--Visualizzare la media dei redditi mensili di tutti gli impiegati; 
--Select AVG(RedditoMensile) as MediaRedditoImpiegati from Impiegati

--Visualizzare l’importo del reddito mensile maggiore;
--Select top (1) RedditoMensile from Impiegati Order by RedditoMensile DESC

--Visualizzare l’importo del reddito mensile minore;
--Select top (1) RedditoMensile from Impiegati Order by RedditoMensile ASC

--Visualizzare gli impiegati assunti dall’ 01/01/2007 all’ 01/01/2008; 
--Select count(*) as ImpiegatiAssuntiInQuelPeriodo from Impieghi  where DataAssunzione between '2022-01-01' and '2023-01-01'

--Tramite una query parametrica che identifichi il tipo di impiego, 
--visualizzare tutti gli impiegati che corrispondono a quel tipo di impiego; 
Select Cognome, Nome, CodiceFiscale, Eta, RedditoMensile, Impiego, DataAssunzione from Impiegati as E
INNER JOIN
Impieghi as I ON 
E.IDImpiego = I.IDImpiego

--Visualizzare l’età media dei lavoratori all’interno dell’azienda.
--Select AVG(Eta) as EtaMedia from Impiegati