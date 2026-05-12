create database tsw39;
USE tsw39;


CREATE TABLE Admin (
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    nome VARCHAR(50),
    cognome VARCHAR(50)
);

CREATE TABLE Cliente(
	nome_utente VARCHAR(50) PRIMARY KEY,
    pass VARCHAR(225) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    cognome VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    sesso ENUM('m', 'f') NOT NULL,
	eta INT UNSIGNED CHECK (eta BETWEEN 0 AND 120),
    num_telefono VARCHAR(15) NOT NULL 
    );
    
CREATE TABLE Indirizzo (
    id_indirizzo INT AUTO_INCREMENT PRIMARY KEY,
    via VARCHAR(100) NOT NULL,
    citta VARCHAR(50) NOT NULL,
    provincia VARCHAR(50) NOT NULL,
    cap VARCHAR(10) NOT NULL,
    paese VARCHAR(50) NOT NULL,
    preferito BOOLEAN DEFAULT FALSE,
    nome_utente VARCHAR(50) NOT NULL,
    FOREIGN KEY (nome_utente) REFERENCES Cliente(nome_utente)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


CREATE TABLE Ordine (
    id_ordine INT AUTO_INCREMENT PRIMARY KEY,
    num_articoli INT UNSIGNED NOT NULL,
    data DATE NOT NULL,
    importo_totale DECIMAL(10,2) NOT NULL,
    id_indirizzo INT, 
    nome_utente VARCHAR(50),
    FOREIGN KEY (nome_utente) REFERENCES Cliente(nome_utente)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_indirizzo) REFERENCES Indirizzo(id_indirizzo)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);



-- DELETE CASCADE: Se un cliente viene eliminato, anche i relativi ordini saranno rimossi.
-- ON UPDATE CASCADE: Se il valore di nome_utente in Cliente viene modificato, il valore corrispondente in Ordine sarà aggiornato automaticamente.
CREATE TABLE Categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    tipologia VARCHAR(50) NOT NULL
);

CREATE TABLE Articolo (
    codice INT PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    descrizione TEXT NOT NULL,
    colore VARCHAR(30),
    sconto DECIMAL(5,4),
    prezzo DECIMAL(10,2) NOT NULL,
    peso DECIMAL(10,3),
    dimensione VARCHAR(30),
	id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
	);

CREATE TABLE Contenimento (
    codice INT,
    id_ordine INT,
    quantita INT UNSIGNED NOT NULL,
    nome_articolo VARCHAR(100) NOT NULL,
    prezzo_unitario DECIMAL(10,2) NOT NULL,
    sconto DECIMAL(5,4) DEFAULT 0,
	PRIMARY KEY (codice, id_ordine),
    FOREIGN KEY (codice) REFERENCES Articolo(codice)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_ordine) REFERENCES Ordine(id_ordine)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


CREATE TABLE Pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    data_pagamento DATE NOT NULL,
    importo DECIMAL(10,2) NOT NULL,
    metodo_pagamento VARCHAR(50) NOT NULL,
    stato_pagamento ENUM('In attesa', 'Completato', 'Fallito') NOT NULL,
    id_ordine INT,
    FOREIGN KEY (id_ordine) REFERENCES Ordine(id_ordine)
);

CREATE TABLE Metodi_pagamento (
  num_carta VARCHAR(30) PRIMARY KEY,
  intestatario VARCHAR(60) NOT NULL,
  data_scadenza DATE NOT NULL,
  nome_utente VARCHAR(50) NOT NULL,
  FOREIGN KEY (nome_utente) REFERENCES Cliente(nome_utente) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE Recensione (
    id INT AUTO_INCREMENT PRIMARY KEY,
    valutazione INT CHECK (valutazione BETWEEN 1 AND 5),
    titolo VARCHAR(100) NOT NULL,
    testo TEXT NOT NULL,
    data DATE NOT NULL,
    codice int NOT NULL,
    nome_utente VARCHAR(50) NOT NULL,
    FOREIGN KEY (nome_utente) REFERENCES Cliente(nome_utente) ON DELETE CASCADE ON update CASCADE,
    FOREIGN KEY (codice) REFERENCES Articolo(codice)
);


CREATE TABLE ImmagineArticolo (
  id_immagine INT AUTO_INCREMENT PRIMARY KEY,
  codice_articolo INT,
  url VARCHAR(255) NOT NULL,
  is_principale BOOLEAN DEFAULT FALSE,                        -- permette di indicare qual e l immagine principale
  descrizione VARCHAR(255),
  FOREIGN KEY (codice_articolo) REFERENCES Articolo(codice) ON DELETE CASCADE
);


CREATE TABLE Carrello (
    id_carrello INT PRIMARY KEY AUTO_INCREMENT,
    nome_utente VARCHAR(50) NOT NULL,
    codice_articolo INT NOT NULL,
    quantita INT UNSIGNED NOT NULL,
    CONSTRAINT unq_nome_articolo UNIQUE (nome_utente, codice_articolo),
    FOREIGN KEY (nome_utente) REFERENCES Cliente(nome_utente)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (codice_articolo) REFERENCES Articolo(codice)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)
