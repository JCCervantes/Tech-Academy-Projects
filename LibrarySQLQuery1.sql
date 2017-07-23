
USE MyLibrary
GO

<----------- TABLE CREATION -------------------------------------------
	CREATE TABLE tbl_Book (
		Book_Id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
		Title VARCHAR (75) NOT NULL,
		Publisher_Name VARCHAR (50) NOT NULL,
	);


	CREATE TABLE tbl_Publisher (
		Name VARCHAR (50) NOT NULL,
		Address_col VARCHAR (50),
		Phone VARCHAR (20) 
);

	
		CREATE TABLE tbl_BookAuthors (
		Book_Id INT NOT NULL CONSTRAINT fk_Book_Id FOREIGN KEY REFERENCES tbl_Book(Book_Id) ON UPDATE CASCADE ON DELETE CASCADE, 
		Author_Name VARCHAR (50) NOT NULL,
	);


	CREATE TABLE tbl_BookLoans (
		Book_Id INT NOT NULL CONSTRAINT fk_Book_Id2 FOREIGN KEY REFERENCES tbl_Book(Book_Id) ON UPDATE CASCADE ON DELETE CASCADE, 
		Branch_Id INT NOT NULL CONSTRAINT fk_Branch_Id FOREIGN KEY REFERENCES tbl_LibraryBranch(Branch_Id) ON UPDATE CASCADE ON DELETE CASCADE, 
		Card_No INT NOT NULL CONSTRAINT fk_Card_No FOREIGN KEY REFERENCES tbl_Borrower(Card_No) ON UPDATE CASCADE ON DELETE CASCADE, 
		Date_Out DATE NOT NULL, 
		Due_Date DATE NOT NULL
	);


	CREATE TABLE tbl_BookCopies (
		Book_Id INT NOT NULL CONSTRAINT fk_Book_Id3 FOREIGN KEY REFERENCES tbl_Book(Book_Id) ON UPDATE CASCADE ON DELETE CASCADE,
		Branch_Id INT NOT NULL CONSTRAINT fk_Branch_Id2 FOREIGN KEY REFERENCES tbl_LibraryBranch(Branch_Id) ON UPDATE CASCADE ON DELETE CASCADE,
		No_Of_Copies INT
	);


	CREATE TABLE tbl_Borrower (
		Card_No INT PRIMARY KEY NOT NULL IDENTITY (100,1),
		Name VARCHAR (50) NOT NULL,
		Address_col VARCHAR (50),
		Phone VARCHAR (20) 
);

	CREATE TABLE tbl_LibraryBranch (
		Branch_Id INT PRIMARY KEY NOT NULL IDENTITY (500,10),
		Branch_Name VARCHAR (50) NOT NULL,
		Address_col VARCHAR (50),
	);

	<------END TABEL CREATION ---------------------------------------------------

	<------------------TABLE POPULATION --------------------------------------------

	
	INSERT INTO tbl_Book
			(Title, Publisher_Name)
			VALUES 
			('Norwegian Wood','Harry Abrams'),
			('How Proust Can Change Your Life','Vintage'),
			('Between the World and Me','Spiegel & Grau'),
			('Cooked','Penguin'),
			('Me Talk Pretty One Day','Back Bay Books'),
			('How to Be a Tudor','Liveright'),
			('Birds of America','Vintage'),
			('The Wordy Shipmates','Riverhead Books'),
			('Assassination Vacation','Simon and Schuster'),
			('A Short History of Nearly Everything','Broadway Books'),
			('David Copperfield','Penguin'),
			('Wolf Hall','Picador'),
			('Jonathan Strange and Mr. Norrell','Tor Books'),
			('Stories of Your Life and Others','Vinatage'),
			('The Name of the Wind','DAW Books'),
			('The Wise Man''s Fear','DAW Books'),
			('At Home: A Short History of Private Life','Anchor Books'),
			('The Road to Little Dribbling','Anchor Books'),
			('A Game of Thrones','Bantam'),
			('A Clash of Kings','Bantam'),
			('A Storm of Swords','Bantam'),
			('A Feast of Crows','Bantam'),
			('A Dance with Dragons','Bantam'),
			('The Lost Tribe','CreateSpace'),
			('Night Shift','Doubleday'),
			('Assassin''s Apprentice','Spectra'),
			('Royal Assassin','Spectra'),
			('Assassin''s Quest','Spectra'),
			('Ship of Magic','Spectra'),
			('Mad Ship','Spectra'),
			('Ship of Destiny','Spectra'),
			('Fool''s Errand','Spectra'),
			('Golden Fool','Spectra'),
			('Fool''s Fate','Spectra'),
			('Fool''s Assassin','Spectra'),
			('Fool''s Quest','Spectra'),
			('Assassin''s Fate','Spectra')

			UPDATE tbl_Book SET Publisher_name = 'Vintage' WHERE Publisher_name = 'Vinatage';

			INSERT INTO tbl_Publisher
			(Name, Address_col, Phone)
			VALUES 
			('Harry Abrams','195 Broadway','UNKNOWN'),
			('Vintage','1745 Broadway','212-940-7390'),
			('Spiegel & Grau','1745 Broadway','212-940-7390'),
			('Penguin','1745 Broadway','212-940-7390'),
			('Back Bay Books','1290 6th Ave','212-364-1100'),
			('Liveright','500 Fifth Avenue','212-354-5500'),
			('Riverhead Books','1745 Broadway','212-940-7390'),
			('Simon and Schuster','Rockefeller Center','212-698-7000'),
			('Broadway Books','1745 Broadway','212-940-7390'),
			('Picador','175 5th Avenue','212-674-6132'),
			('Tor Books','175 5th Avenue','212-674-6132'),
			('DAW Books','375 Hudson St','212-366-2096'),
			('Anchor Books','1745 Broadway','212-940-7390'),
			('Bantam','1745 Broadway','212-940-7390'),
			('CreateSpace','UNKNOWN','UNKNOWN'),
			('Doubleday','1745 Broadway','212-940-7390'),
			('Spectra','1745 Broadway','212-940-7390')

			INSERT INTO tbl_BookAuthors
			(Book_Id, Author_Name)
			VALUES 
			(1,'Lars Mytting'),
			(2,'Alain de Botton'),
			(3,'Ta-Nehisi Coates'),
			(4,'Michael Pollan'),
			(5,'David Sedaris'),
			(6,'Ruth Goodman'),
			(7,'Lorrie Moore'),
			(8,'Sarah Vowell'),
			(9,'Sarah Vowell'),
			(10,'Bill Bryson'),
			(11,'Charles Dickens'),
			(12,'Hilary Mantel'),
			(13,'Susanna Clarke'),
			(14,'Ted Chiang'),
			(15,'Patrick Rothfuss'),
			(16,'Patrick Rothfuss'),
			(17,'Bill Bryson'),
			(18,'Bill Bryson'),
			(19,'George R. R. Martin'),
			(20,'George R. R. Martin'),
			(21,'George R. R. Martin'),
			(22,'George R. R. Martin'),
			(23,'George R. R. Martin'),
			(24,'Matthew Caldwell'),
			(25,'Stephen King'),
			(26,'Robin Hobb'),
			(27,'Robin Hobb'),
			(28,'Robin Hobb'),
			(29,'Robin Hobb'),
			(30,'Robin Hobb'),
			(31,'Robin Hobb'),
			(32,'Robin Hobb'),
			(33,'Robin Hobb'),
			(34,'Robin Hobb'),
			(35,'Robin Hobb'),
			(36,'Robin Hobb'),
			(37,'Robin Hobb')

INSERT INTO tbl_LibraryBranch
			(Branch_Name, Address_col )
			VALUES 
			('Sharpstown','300 Elm St'),
			('Central','345 Main St'),
			('Sahara West','1600 W Sahara'),
			('Enterprise','800 Green Valley')

INSERT INTO tbl_BookCopies
			(Book_Id, Branch_Id, No_Of_Copies)
			VALUES 
			(1,500,4),
			(2,500,8),
			(3,500,12),
			(4,500,7),
			(5,500,4),
			(6,500,10),
			(7,500,10),
			(8,500,5),
			(9,500,3),
			(10,500,4),
			(11,510,4),
			(12,510,5),
			(13,510,2),
			(14,510,5),
			(15,510,3),
			(16,510,5),
			(17,510,7),
			(18,510,10),
			(19,510,3),
			(20,510,3),
			(21,520,3),
			(22,520,5),
			(23,520,4),
			(24,520,4),
			(25,520,6),
			(26,520,2),
			(27,520,2),
			(28,520,2),
			(29,520,2),
			(30,520,5),
			(31,530,3),
			(32,530,4),
			(33,530,4),
			(34,530,3),
			(35,530,3),
			(36,530,7),
			(23,530,7),
			(20,530,8),
			(1,530,3),
			(18,530,5),
			(5,530,2),
			(37,500,4)

INSERT INTO tbl_Borrower
			(Name, Address_col, Phone)
			VALUES 
			('Chris Thile','86 Green St','555-555-5555'),
			('Sara Watkins','34 Blue St','666-666-6666'),
			('Sean Watkins','67 Red St','777-777-7777'),
			('Sarah Jarosz','123 Yellow St','333-333-3333'),
			('Noam Pikelny','234 Brown St','222-222-2222'),
			('John Cown','78 Purple St','444-444-4444'),
			('Gillian Welch','45 Black St','888-888-8888'),
			('Bela Fleck','76 Orange St','999-999-9999'),
			('Tim O''Brien','98 Violet St','111-111-1111'),
			('Alison Brown','79 Indigo St','123-456-7891')

INSERT INTO tbl_BookLoans
			(Book_Id, Branch_Id, Card_No, Date_Out, Due_Date)
			VALUES 
			(1,500,100,'2016-12-24','2016-01-24'),
			(2,500,100,'2016-11-24','2016-12-24'),
			(3,500,100,'2016-10-24','2016-11-24'),
			(4,500,100,'2016-10-24','2016-11-24'),
			(5,500,100,'2016-10-24','2016-11-24'),
			(6,500,106,'2016-10-20','2016-11-20'),
			(7,500,106,'2016-10-20','2016-11-20'),
			(8,500,106,'2016-10-20','2016-11-20'),
			(9,500,106,'2016-10-20','2016-11-20'),
			(10,500,106,'2016-10-20','2016-11-20'),
			(11,510,106,'2016-10-20','2016-11-20'),
			(12,510,106,'2016-10-20','2016-11-20'),
			(13,510,106,'2016-10-20','2016-11-20'),
			(14,510,100,'2016-12-24','2016-01-24'),
			(15,510,100,'2016-12-24','2016-01-24'),
			(16,510,101,'2017-02-18','2017-03-18'),
			(17,510,101,'2017-02-18','2017-03-18'),
			(18,510,101,'2017-02-18','2017-03-18'),
			(19,510,101,'2017-02-18','2017-03-18'),
			(20,510,102,'2017-05-03','2016-06-03'),
			(21,520,102,'2017-05-03','2016-06-03'),
			(22,520,102,'2017-05-03','2016-06-03'),
			(23,520,102,'2017-05-03','2016-06-03'),
			(24,520,102,'2017-05-03','2016-06-03'),
			(25,520,103,'2017-04-15','2016-05-15'),
			(26,520,103,'2017-04-15','2016-05-15'),
			(27,520,104,'2017-04-15','2016-05-15'),
			(28,520,104,'2017-04-15','2016-05-15'),
			(29,520,104,'2017-04-15','2016-05-15'),
			(30,520,104,'2017-04-15','2016-05-15'),
			(31,530,104,'2017-04-15','2016-05-15'),
			(32,530,104,'2017-04-15','2016-05-15'),
			(33,530,104,'2017-04-15','2016-05-15'),
			(34,530,104,'2017-04-15','2016-05-15'),
			(35,530,104,'2017-04-15','2016-05-15'),
			(36,530,105,'2017-01-22','2016-02-22'),
			(37,530,105,'2017-01-22','2016-02-22'),
			(1,530,105,'2017-01-22','2016-02-22'),
			(2,500,105,'2017-01-22','2016-02-22'),
			(3,500,107,'2017-01-22','2016-02-22'),
			(4,500,107,'2017-01-22','2016-02-22'),
			(5,530,108,'2017-05-08','2016-06-08'),
			(6,500,108,'2017-05-08','2016-06-08'),
			(7,500,108,'2017-05-08','2016-06-08'),
			(8,500,108,'2017-05-08','2016-06-08'),
			(9,500,108,'2017-05-08','2016-06-08'),
			(10,500,108,'2017-05-08','2016-06-08'),
			(11,510,108,'2017-05-08','2016-06-08'),
			(12,510,108,'2017-05-08','2016-06-08'),
			(13,510,109,'2017-06-24','2016-07-24')

<------------------END OF POPULATION-----------------------------
		
			SELECT * FROM tbl_Book 
			SELECT * FROM tbl_BookAuthors
			SELECT * FROM tbl_BookCopies
			SELECT * FROM tbl_BookLoans
			SELECT * FROM tbl_Borrower
			SELECT * FROM tbl_LibraryBranch
			SELECT * FROM tbl_Publisher

			UPDATE tbl_BookLoans SET Due_Date = '2017-07-24' WHERE Due_Date = '2016-07-24';

			USE MyLibrary
			GO

			CREATE SCHEMA Lib

<--------STORED PROCEDURE 1---------------------------------------
/* How many copies of the book titled "The Lost Tribe" are owned 
by the library branch whose name is "Sharpstown"? */

	USE MyLibrary
	GO

	CREATE PROCEDURE Lib.uspLostTribe
	AS
	SELECT SUM(No_Of_Copies)
	FROM tbl_BookCopies b1
	INNER JOIN tbl_Book b2 ON b2.Book_Id = b1.Book_Id
	INNER JOIN tbl_LibraryBranch b3 ON b3.Branch_Id = b1.Branch_Id 
	WHERE Title = 'The Lost Tribe' AND Branch_Name = 'Sharpstown'
	GO

EXEC Lib.uspLostTribe

<--------END OF STORED PROCEDURE 1-------------------------------

<--------STORED PROCEDURE 2---------------------------------------
/* How many copies of the book titled "The Lost Tribe" are owned by 
each library branch? */

	USE MyLibrary
	GO

	CREATE PROCEDURE Lib.uspLostTribeCopies
	AS
	SELECT b2.Title, b3.Branch_Name, b1.No_Of_Copies
	FROM tbl_BookCopies b1
	INNER JOIN tbl_Book b2 ON b2.Book_Id = b1.Book_Id
	INNER JOIN tbl_LibraryBranch b3 ON b3.Branch_Id = b1.Branch_Id 
	WHERE Title = 'The Lost Tribe' 
	GO

EXEC Lib.uspLostTribeCopiesEachBranch

<--------END OF STORED PROCEDURE 2-------------------------------

<--------STORED PROCEDURE 3---------------------------------------
/* Retrieve the names of all borrowers who do not have any books 
checked out. */

	USE MyLibrary
	GO

	CREATE PROCEDURE Lib.uspCheckedOutNow @Date_Out DATE 
	AS
	SELECT DISTINCT b1.Name 
	FROM tbl_Borrower b1
	INNER JOIN tbl_BookLoans b2 ON b2.Card_No = b1.Card_No
	WHERE Date_Out <= @Date_Out
	GO

EXEC Lib.uspNo_Books_Checked_Out_Now @Date_Out = '2017-06-22'


<--------END OF STORED PROCEDURE 3-------------------------------

<--------STORED PROCEDURE 4---------------------------------------
/* For each book that is loaned out from the "Sharpstown" branch 
and whose DueDate is today, retrieve the book title, the borrower's 
name, and the borrower's address. */

	USE MyLibrary
	GO

	CREATE PROCEDURE Lib.uspSharpstownDue 
	AS
	SELECT b1.Title, b3.Name, b3.Address_col
	FROM tbl_Book b1
	INNER JOIN tbl_BookLoans b2 ON b2.Book_Id = b1.Book_Id
	INNER JOIN tbl_Borrower b3 ON b3.Card_No = b2.Card_No
	INNER JOIN tbl_LibraryBranch b4 ON b4.Branch_Id = b2.Branch_Id
	WHERE Due_Date = GETDATE() AND Branch_Name = 'Sharpstown'
	GO

EXEC Lib.uspSharpstownDue 

<--------END OF STORED PROCEDURE 4-------------------------------

<--------STORED PROCEDURE 5---------------------------------------
/* For each library branch, retrieve the branch name and the total 
number of books loaned out from that branch.  */

--This is v.2 of Stored Procedure 5.
	USE MyLibrary
	GO

	CREATE PROCEDURE Lib.NumOfBooksByBranchVersion2
	AS

	SELECT COUNT (tbl_BookLoans.Branch_Id) AS Books_Loaned_Out, tbl_LibraryBranch.Branch_Name
	FROM tbl_BookLoans
	INNER JOIN tbl_LibraryBranch
	ON tbl_BookLoans.Branch_Id = tbl_LibraryBranch.Branch_Id
	GROUP BY tbl_LibraryBranch.Branch_Name


--This is v.1 of Stored Procedure 5. It uses set variables and prints them.
	USE MyLibrary
	GO

	CREATE PROCEDURE Lib.NumOfBooksByBranchVersion1
	AS
	DECLARE @SharpBooks INT;
	DECLARE @CentralBooks INT;
	DECLARE @SaharaBooks INT;
	DECLARE @EnterpriseBooks INT;
	SET @SharpBooks = (SELECT COUNT(Branch_Id) FROM tbl_BookLoans WHERE Branch_Id = 500);
	SET @CentralBooks = (SELECT COUNT(Branch_Id) FROM tbl_BookLoans WHERE Branch_Id = 510);
	SET @SaharaBooks = (SELECT COUNT(Branch_Id) FROM tbl_BookLoans WHERE Branch_Id = 520);
	SET @EnterpriseBooks = (SELECT COUNT(Branch_Id) FROM tbl_BookLoans WHERE Branch_Id = 530);
	PRINT 'Sharpstown Branch Books Loaned Out:' + char(9) + CONVERT(varchar(50),@SharpBooks) + char(13);
	PRINT 'Central Branch Books Currently Loaned Out:' + char(9) + CONVERT(varchar(50),@CentralBooks) + char(13); 
	PRINT 'Sahara West Branch Books Currently Loaned Out:' + char(9) + CONVERT(varchar(50),@SaharaBooks) + char(13);  
	PRINT 'Enterprise Branch Books Currently Loaned Out:' + char(9) + CONVERT(varchar(50),@EnterpriseBooks) + char(13) 


<--------END OF STORED PROCEDURE 5-------------------------------

<--------STORED PROCEDURE 6---------------------------------------
/* Retrieve the names, addresses, and number of books checked out 
for all borrowers who have more than five books checked out. */

	USE MyLibrary
	GO

	CREATE PROCEDURE Lib.uspMoreThanFive 
	AS

	SELECT COUNT (tbl_Borrower.Card_No) AS Over5BooksOut, tbl_Borrower.Card_No, tbl_Borrower.Name, tbl_Borrower.Address_col, tbl_Borrower.Phone
	FROM tbl_Borrower  
	INNER JOIN tbl_BookLoans
	ON tbl_Borrower.Card_No = tbl_BookLoans.Card_No
	GROUP BY tbl_Borrower.Card_No, tbl_Borrower.Name, tbl_Borrower.Address_col, tbl_Borrower.Phone
	HAVING
	COUNT(*) > 5 
 
 <------------------Other Option --------------------

	USE MyLibrary
	GO

	CREATE PROCEDURE Lib.uspMoreThanFive 
	AS

	DECLARE @Borrower100 INT
	SELECT @Borrower100 = COUNT(b1.Card_No)
	FROM tbl_BookLoans b1
	WHERE Card_No = 100

	DECLARE @Borrower101 INT
	SELECT @Borrower101 = COUNT(b1.Card_No)
	FROM tbl_BookLoans b1
	WHERE Card_No = 101

	DECLARE @Borrower102 INT
	SELECT @Borrower102 = COUNT(b1.Card_No)
	FROM tbl_BookLoans b1
	WHERE Card_No = 102

	DECLARE @Borrower103 INT
	SELECT @Borrower103 = COUNT(b1.Card_No)
	FROM tbl_BookLoans b1
	WHERE Card_No = 103

	DECLARE @Borrower104 INT
	SELECT @Borrower104 = COUNT(b1.Card_No)
	FROM tbl_BookLoans b1
	WHERE Card_No = 104

	DECLARE @Borrower105 INT
	SELECT @Borrower105 = COUNT(b1.Card_No)
	FROM tbl_BookLoans b1
	WHERE Card_No = 105

	DECLARE @Borrower106 INT
	SELECT @Borrower106 = COUNT(b1.Card_No)
	FROM tbl_BookLoans b1
	WHERE Card_No = 106

	DECLARE @Borrower107 INT
	SELECT @Borrower107 = COUNT(b1.Card_No)
	FROM tbl_BookLoans b1
	WHERE Card_No = 107

	DECLARE @Borrower108 INT
	SELECT @Borrower108 = COUNT(b1.Card_No)
	FROM tbl_BookLoans b1
	WHERE Card_No = 108

	DECLARE @Borrower109 INT
	SELECT @Borrower109 = COUNT(b1.Card_No)
	FROM tbl_BookLoans b1
	WHERE Card_No = 109

	SELECT DISTINCT b1.Name, b1.Address_col, @Borrower100, @Borrower101, @Borrower102, @Borrower103, @Borrower104, @Borrower105, @Borrower106, @Borrower107, @Borrower108, @Borrower109
	FROM tbl_Borrower b1
	INNER JOIN tbl_BookLoans b2 ON b2.Card_No = b1.Card_No
	WHERE b1.Card_No = 100 IF @Borrower100 > 5
	AND b1.Card_No = 101 IF @Borrower101 > 5
	AND b1.Card_No = 102 IF @Borrower102 > 5
	AND b1.Card_No = 103 IF @Borrower103 > 5
	AND b1.Card_No = 104 IF @Borrower104 > 5
	AND b1.Card_No = 105 IF @Borrower105 > 5
	AND b1.Card_No = 106 IF @Borrower106 > 5
	AND b1.Card_No = 107 IF @Borrower107 > 5
	AND b1.Card_No = 108 IF @Borrower108 > 5
	AND b1.Card_No = 109 IF @Borrower109 > 5

	EXEC Lib.uspMoreThanFive


<--------END OF STORED PROCEDURE 6-------------------------------

<--------STORED PROCEDURE 7---------------------------------------
/* For each book authored (or co-authored) by "Stephen King", retrieve 
the title and the number of copies owned by the library branch whose 
name is "Central". */

	USE MyLibrary
	GO


	CREATE PROCEDURE Lib.uspGetKing 
	AS

	SELECT b2.Title, b1.No_Of_Copies, b3.Branch_Name
	FROM tbl_BookCopies b1
	INNER JOIN tbl_Book b2 ON b2.Book_Id = b1.Book_Id
	INNER JOIN tbl_LibraryBranch b3 ON b3.Branch_Id = b1.Branch_Id
	INNER JOIN tbl_BookAuthors b4 ON b4.Book_Id = b2.Book_Id
	WHERE Author_Name = 'Stephen King' AND Branch_Name = 'Central'


<--------END OF STORED PROCEDURE 7-------------------------------
  

--Sub-queries!!!! This is for the query that asks for the person with no books out.

  SELECT Name FROM BORROWER
	WHERE NOT EXISTS (Select * from BOOK_LOANS
	WHERE BOOK_LOANS.CardNo=BORROWER.CardNo);
  
