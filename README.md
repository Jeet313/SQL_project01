# SQL_project01

Author: Gourab Karmakar

Project Overview:

This project analyzes a **Music Store Database** using SQL queries to answer key business questions. The database contains information about customers, tracks, albums, artists, employees, and sales.  

The project includes **8 SQL queries** that provide insights into music sales, customer data, and employee performance. 

-------------------------------------------------------------------------------------------------------------------
Dataset:

This project contains multiple tables, including 

(1) 'album' - Album information

(2) 'album2' - Another album information

(3) 'artist' - Artists details

(4) 'customer' - Customer information

(5) 'employee' - Employee details

(6) 'genre' - Genre information

(7) 'invoice' - Per item sold

(8) 'invoice_line' - Item in each sales

(9) 'media_type' - Media related info

(10) 'playlist' - List of songs contains

(11) 'playlist_track' - Types of songs contains 

(12) 'track' - Music tracks metadata

------------------------------------------------------------------------------------------------------------------------------
The following business questions are answered using SQL queries: 

[Q.1] Who is the most senior employee based on the job title?

[Q.2] Which country have the most invoices?

[Q.3] What are top 3 values of total incoice?

[Q.4] Which city has the best customers? We would like to throw a promotional Music Festivals in the city we made the most money.Write aquery that returns one city that has the highest sum of invoice totals. Return both the city name and sum of all invoice totals.

[Q.5] Who is the best customer? The customer who has spent the most money will be declared the best customer. Write a query that returns the person who has spent the most money.

[Q.6] Write query to return the email, first name, last name, Genre of all Rock music listeners
Return your list ordered alphabetically by email starting with A

[Q.7] Let's invite the artists who have written the most Rock music in our dataset. Write a query that returns the artist name and total track count of the top 10 rock bands.

[Q.8] Return all the track names that have a song length longer than the average song length. Return the Name and Milliseconds for each track. Order by the song length with the longest songs listed first.

------------------------------------------------------------------------------------------------------------------------------
SQL Query

Each question is solved using SQL queries with **JOINs, GROUP BY, ORDER BY, and Aggregate Functions**. Queries are well-optimized for efficiency.  

All queries are in this file:  [`Solved_questions.sql`](./queries.sql)

------------------------------------------------------------------------------------------------------------------------------
Tools & Technologies used:

PostgreSQL
