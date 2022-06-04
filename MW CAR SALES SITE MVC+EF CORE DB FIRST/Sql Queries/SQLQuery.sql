USE master
CREATE DATABASE CarSales
GO
USE CarSales

CREATE TABLE Ads(
ID int PRIMARY KEY IDENTITY,
[Name] nvarchar(100) NOT NULL,
[Price] decimal(18,2) NOT NULL,
[Description] nvarchar(1000) NOT NULL,
[Image] nvarchar(1000)
)

INSERT INTO Ads(Name, Description, Price, Image)
VALUES (
N'Ferrari Roma', 
N'The Ferrari Roma, the new mid-front-engined 2+ coupe of the Prancing Horse, features refined proportions and timeless design combined with unparalleled performance and handling. With its distinctive flair and style, the car is a contemporary representation of the carefree, pleasurable way of life that characterised Rome in the 1950s and ''60s.',
226570,
N'https://api.ferrari.com/cms/network/medias//resize/5f993356fe3b8d087f91e1c5-ferrari-roma-car-design-award_2020?apikey=9QscUiwr5n0NhOuQb463QEKghPrVlpaF&width=768&height=430'
)

INSERT INTO Ads(Name, Description, Price, Image)
VALUES (
N'McLAREN ARTURA',
N'With Artura, we started with a clean sheet. The McLaren Carbon Fibre Lightweight Architecture (MCLA) at its core is all-new. As is the High-Performance Hybrid powertrain. And so much more. Our relentless pursuit of lightness reaches another level. Aerodynamic efficiency is more advanced than ever. Helping to shape a minimal, beautiful new design.
From the rear suspension to the advanced E-differential, every new element contributes to a uniquely intense driving experience. Ultra-light supercar engineering. Blistering electrified power. Sublime agility and engagement. McLaren to the core. For the next generation.',
225000,
N'https://mclaren.scene7.com/is/image/mclaren/Mclaren_Artura_Zenith%20Black_03:crop-16x9?wid=1980&hei=1114'
)

INSERT INTO Ads(Name, Description, Price, Image)
VALUES (
N'BUGATTI CHIRON SUPER SPORT',
N'THE ULTIMATE GRAND TOURISME, DELIVERING BRUTAL PERFORMANCE IN TOTAL COMFORT',
3825000,
N'https://www.bugatti.com/fileadmin/_processed_/9/5/csm_HEADER_22de7ed3a8.jpg'
)

SELECT * FROM Ads

