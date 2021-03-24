-- create database

CREATE DATABASE bibliothek;

-- only necessary in the the MySQL shell
-- USE biliothek;

-- create TABLES

CREATE TABLE bankverbindung(
    bankverbindung_id INT PRIMARY KEY AUTO_INCREMENT,
    kontobesitzer VARCHAR(30) NOT NULL,
    kontonummer VARCHAR(30) UNIQUE,
    bankleitzahl VARCHAR(30),
    iban VARCHAR(34) NOT NULL UNIQUE
);


CREATE TABLE kundenkonto(
    kundenkonto_id INT PRIMARY KEY AUTO_INCREMENT,
    kontotyp VARCHAR(30),
    jahresbeitrag FlOAT NOT NULL,
    bankverbindung_id INT,
    CONSTRAINT FK_bankverbindung
        FOREIGN KEY (bankverbindung_id) REFERENCES bankverbindung (bankverbindung_id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
);


CREATE TABLE benutzer(
    benutzer_id INT PRIMARY KEY AUTO_INCREMENT,
    vorname VARCHAR(30) NOT NULL,
    nachname VARCHAR(30) NOT NULL,
    geburtsdatum DATE,
    kundenkonto_id INT,
    CONSTRAINT FK_kundenkonto
        FOREIGN KEY (kundenkonto_id) REFERENCES kundenkonto (kundenkonto_id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
);


CREATE TABLE medien(
    medien_id INT PRIMARY KEY AUTO_INCREMENT,
    autor VARCHAR(50),
    typ VARCHAR(30),
    verleihdauer DATE NOT NULL,
    titel VARCHAR(90) NOT NULL,
    usk VARCHAR(20)
);


CREATE TABLE ausleihen(
    ausleih_id INT PRIMARY KEY AUTO_INCREMENT,
    benutzer_id INT,
    medien_id INT,
    ausleihdatum DATE,
    rueckgabedatum DATE,
    CONSTRAINT FK_benutzer
        FOREIGN KEY (benutzer_id) REFERENCES benutzer (benutzer_id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT,
    CONSTRAINT FK_medien
        FOREIGN KEY (medien_id) REFERENCES medien (medien_id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
);
