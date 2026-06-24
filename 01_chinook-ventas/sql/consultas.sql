-- 1. Total earnings by genre, ordered desc
SELECT 
	Genre.Name AS Genre_Name,
	ROUND(SUM(InvoiceLine.UnitPrice * InvoiceLine.Quantity), 2) as Total_Earnings
FROM InvoiceLine
INNER JOIN Track ON Track.TrackId = InvoiceLine.TrackId
INNER JOIN Genre ON Genre.GenreId = Track.GenreId
GROUP BY Genre.GenreId, Genre.Name
ORDER BY ROUND(SUM(InvoiceLine.UnitPrice * InvoiceLine.Quantity), 2) DESC;


-- 2. Top 10 artists by earnings
SELECT 
	Artist.Name AS Artist_Name,
	ROUND(SUM(InvoiceLine.UnitPrice * InvoiceLine.Quantity), 2) AS Artist_Earning
FROM InvoiceLine
INNER JOIN Track ON Track.TrackId = InvoiceLine.TrackId
INNER JOIN Album ON Album.AlbumId = Track.AlbumId
INNER JOIN Artist ON Artist.ArtistId = Album.ArtistId
GROUP BY Artist.ArtistId, Artist.Name
ORDER BY ROUND(SUM(InvoiceLine.UnitPrice * InvoiceLine.Quantity), 2) DESC
LIMIT 10;


-- 3. Country earnings, ordered desc
SELECT 
	Invoice.BillingCountry AS Country,
	SUM(total) AS Country_Earnings
FROM Invoice
GROUP BY Invoice.BillingCountry
ORDER BY SUM(total) DESC;


-- 4. Earnings monthly aggregated
SELECT 
	strftime('%Y-%m', InvoiceDate) AS Year_Month,
	SUM(total) as Monthly_Earnings 
FROM Invoice
GROUP BY strftime('%Y-%m', InvoiceDate)
ORDER BY strftime('%Y-%m', InvoiceDate);


-- 5. Country average tickets
SELECT 
	Invoice.BillingCountry AS Country,
	ROUND(AVG(total),2) AS Country_Average_Ticket
FROM Invoice
GROUP BY Invoice.BillingCountry
ORDER BY AVG(total) DESC;
