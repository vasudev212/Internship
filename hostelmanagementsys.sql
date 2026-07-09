create database hostelmanagementsystem;
use hostelmanagementsystem; 

CREATE TABLE Students (StudentID INT PRIMARY KEY , StudentName VARCHAR(100) NOT NULL , Gender VARCHAR(10) , Department VARCHAR(100) , Phone VARCHAR(15) , Email VARCHAR(100) UNIQUE); 

CREATE TABLE Hostels (HostelID INT PRIMARY KEY , HostelName VARCHAR(100) NOT NULL , HostelType VARCHAR(20) , Capacity INT NOT NULL); 

CREATE TABLE Rooms (RoomID INT PRIMARY KEY , RoomNumber VARCHAR(20) NOT NULL , RoomType VARCHAR(50) , Capacity INT , HostelID INT , FOREIGN KEY (HostelID) REFERENCES Hostels(HostelID)); 

CREATE TABLE Allocations (AllocationID INT PRIMARY KEY , StudentID INT , RoomID INT , AllocationDate DATE , FOREIGN KEY (StudentID) REFERENCES Students(StudentID) , FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID));

CREATE TABLE Fees (FeeID INT PRIMARY , StudentID INT , Amount DECIMAL(10,2) , PaymentDate DATE , PaymentStatus VARCHAR(20) , FOREIGN KEY (StudentID) REFERENCES Students(StudentID)); 

CREATE TABLE Wardens (WardenID INT PRIMARY KEY AUTO_INCREMENT , WardenName VARCHAR(100) , Phone VARCHAR(15) , Email VARCHAR(100) , HostelID INT UNIQUE , FOREIGN KEY (HostelID) REFERENCES Hostels(HostelID));


show tables;

Desc students;
Desc rooms;
Desc allocations;
Desc Fees;
Desc Wardens;

