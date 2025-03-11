Q.1) Who is the most senior employee based on the job title?
= SELECT * FROM employee
ORDER BY levels DESC
LIMIT 1
Answer: Madan Mohan levels L7 Senior General Manager
----------------------------------------------------------
Q.2) Which country have the most invoices?
= 
SELECT COUNT(*) AS c,billing_country
FROM invoice
GROUP BY billing_country
ORDER BY c DESC
LIMIT 5 ( If asked top 5)

Answer: USA - 131
------------------------------------------------------------
Q.3) What are top 3 values of total incoice?
= SELECT * FROM invoice
ORDER BY total DESC
LIMIT 3

Answer- 
23.75
19.8
19.8
-------------------------------------------------------------
Q.4) Which city has the best customers? We would like to throw a promotional Music Festivals in the city we made the most money.Write aquery that returns one city that has the highest sum of invoice totals. Return both the city name and sum of all invoice totals.
= SELECT SUM(total) AS invoice_total,billing_city
FROM invoice
GROUP BY billing_city
ORDER BY invoice_total DESC

Answer- 
Prague | 273.24
Mountain View | 169.29
Berlin | 166.32
-------------------------------------------------------------------
Q.5) Who is the best customer? The customer who has spent the most money will be declared the best customer. Write a query that returns the person who has spent the most money.
= 
SELECT customer.customer_id,customer.first_name,customer.last_name,SUM(invoice.total) AS total
FROM customer
JOIN invoice
ON customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id
ORDER BY total DESC
LIMIT 1

Answer - 5 | R | Madhav | 144.54
-------------------------------------------------------------------------------
Q.6) Write query to return the email, first name, last name, Genre of all Rock music listeners
Return your list ordered alphabetically by email starting with A
= 
SELECT DISTINCT email,first_name,last_name
FROM customer
JOIN invoice
ON customer.customer_id = invoice.customer_id
JOIN invoice_line
ON invoice.invoice_id = invoice_line.invoice_id
WHERE track_id IN(
	SELECT track_id FROM track
	JOIN genre
	ON genre.genre_id = track.genre_id
	WHERE genre.name LIKE 'Rock'
)
ORDER BY email
------------------------------------------------------------------------
Q.7) Let's invite the artists who have written the most Rock music in our dataset. Write a query that returns the artist name and total track count of the top 10 rock bands.
= 
SELECT artist.artist_id,artist.name,COUNT(artist.artist_id) AS number_of_songs
FROM track
JOIN album
ON track.album_id = album.album_id
JOIN artist
ON artist.artist_id = album.artist_id
JOIN genre
ON genre.genre_id = track.genre_id
WHERE genre.name LIKE 'Rock'
GROUP BY artist.artist_id
ORDER BY number_of_songs DESC
LIMIT 10
------------------------------------------------------------------------------
Q.8) Return all the track names that have a song length longer than the average song length. Return the Name and Milliseconds for each track. Order by the song length with the longest songs listed first.
= 
SELECT name,milliseconds
FROM track
WHERE milliseconds > (
	SELECT AVG(milliseconds) AS average_track_length
	FROM track
	)
ORDER BY milliseconds DESC
----------------------------------------------------------------------------------


