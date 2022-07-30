CREATE DATABASE pratica-modelagem;

CREATE TABLE customers (
	id serial NOT NULL PRIMARY KEY,
	fullName text NOT NULL,
	cpf varchar(11) NOT NULL UNIQUE,
	email text NOT NULL UNIQUE,
	password text NOT NULL
);