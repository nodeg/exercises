-- create database

CREATE DATABASE bibliothek;

-- only necessary in the the MySQL shell
-- USE biliothek;

-- create TABLES

CREATE TABLE bankverbindung(
    PK_bankverbindung_id INT PRIMARY KEY AUTO_INCREMENT,
    kontobesitzer VARCHAR(30) NOT NULL,
    kontonummer VARCHAR(30) UNIQUE,
    bankleitzahl VARCHAR(30),
    iban VARCHAR(34) NOT NULL UNIQUE
);


CREATE TABLE kundenkonto(
    PK_kundenkonto_id INT PRIMARY KEY AUTO_INCREMENT,
    kontotyp VARCHAR(30),
    jahresbeitrag FlOAT NOT NULL,
    FK_bankverbindung_id INT,
    CONSTRAINT FK_bankverbindung -- only the name of the connection line
        FOREIGN KEY (FK_bankverbindung_id) REFERENCES bankverbindung (PK_bankverbindung_id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
);


CREATE TABLE benutzer(
    PK_benutzer_id INT PRIMARY KEY AUTO_INCREMENT,
    vorname VARCHAR(30) NOT NULL,
    nachname VARCHAR(30) NOT NULL,
    geburtsdatum DATE,
    FK_kundenkonto_id INT,
    CONSTRAINT FK_kundenkonto -- only the name of the connection line
        FOREIGN KEY (FK_kundenkonto_id) REFERENCES kundenkonto (PK_kundenkonto_id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
);


CREATE TABLE medien(
    PK_medien_id INT PRIMARY KEY AUTO_INCREMENT,
    autor VARCHAR(50),
    typ VARCHAR(30),
    verleihdauer DATE NOT NULL,
    titel VARCHAR(90) NOT NULL,
    usk VARCHAR(20)
);


CREATE TABLE ausleihen(
    ausleih_id INT PRIMARY KEY AUTO_INCREMENT,
    FK_benutzer_id INT,
    FK_medien_id INT,
    ausleihdatum DATE,
    rueckgabedatum DATE,
    CONSTRAINT FK_benutzer -- only the name of the connection line
        FOREIGN KEY (FK_benutzer_id) REFERENCES benutzer (PK_benutzer_id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT,
    CONSTRAINT FK_medien -- only the name of the connection line
        FOREIGN KEY (FK_medien_id) REFERENCES medien (PK_medien_id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
);
