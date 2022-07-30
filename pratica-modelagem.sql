CREATE DATABASE pratica-modelagem;

CREATE TABLE customers (
	id serial NOT NULL PRIMARY KEY,
	fullName text NOT NULL,
	cpf varchar(11) NOT NULL UNIQUE,
	email text NOT NULL UNIQUE,
	password text NOT NULL
);

CREATE TABLE customerPhones (
	id serial NOT NULL PRIMARY KEY,
	"customerId" integer REFERENCES customers(id),
	number varchar (10) NOT NULL UNIQUE,
	type text
);

CREATE TABLE states (
	id serial NOT NULL PRIMARY KEY,
	name text NOT NULL
);

CREATE TABLE cities (
	id serial NOT NULL PRIMARY KEY,
	name text NOT NULL,
	"stateId" integer REFERENCES states(id)
);

