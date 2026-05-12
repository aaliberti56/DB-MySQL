
INSERT INTO Admin (username, password, nome, cognome) VALUES
('admin1', '8ba303c72612d2dffa3bfb3f73ca6da820ba9ac45293d903bb3d1a1c56fd7699f5e7f06f84bbff7970761b4f09a1c67a9353b29974d331b58096a7c173143069', 'Antonio', 'Aliberti'),
('admin2', '1d8f430280f59389cec02084d078abf197c1b94b6cf0dbbbd917c60ae9aa03ca60ff089914d5f9178fd6e57c82469106fb40d5f821f52afb62bd734e1b070bda', 'Vincenzo', 'Martucci'),
('admin3', '5e660963555b0fa9be13c66ef9db77aad7c06fea29efaaa21a02dfb05a989775e710a79cd2b1f2d0db7d245da255ec3385bdef6f5c6a777e2c05a2574bef7dbd', 'Raffaella', 'Di Pasquale');


-- Popolamento Cliente
INSERT INTO Cliente (nome_utente, pass, nome, cognome, email, sesso, eta, num_telefono) VALUES
('marioRossi', 'b66dd5a7a689f88e302ab2ae4a9567f9c7572c18e520b3bf712bb2630b3931a503d647baedf48df470006312d07984216578b60526e5ee6137ef1fd215190a0c', 'Mario', 'Rossi', 'mario.rossi@email.com', 'm', 35, '3911234567'),
('luciaVerdi', '3c5ad1bdb50c2706c814aabeec7828acbf8aaf9a23d66c4d0cc05e790006e1d1338d5d43e7b79f05e645482304555999cc8c8b6e005b9a5c706bd60de49ef13a', 'Lucia', 'Verdi','lucia.verdi@email.com', 'f', 28, '3922345678'),
('gianniBianchi', 'b1a19b00d0ed1ce70ed40421ce6a75a09af0a30aba9c3e204c0bebe3fd2398037208d06b0d6309b056458978a9e1f66c2d3909796df8e90bf2ebd3412e191072', 'Gianni', 'Bianchi', 'gianni.bianchi@email.com', 'm', 42, '3933456789'),
('annaNeri', 'a2bbdd080b7a2d1f9fa5b7835d5c4eed9f7f3f2386acd3d0458b49ac7380a6e8869ed378323555fa2bb62f86115a901051189588d1f61d4b5eef4a4a03a9c99b', 'Anna', 'Neri',  'anna.neri@email.com', 'f', 31, '3944567890'),
('paoloBlu', 'b365adbbf569730dd24cf6535bb9530c887ef05946acd12a47b0b7d23ca66e725249f287e21af29063e078d7697022516d66b2b2deb8b8a3cd9ad4cc369ebc7e', 'Paolo', 'Blu',  'paolo.blu@email.com', 'm', 47, '3955678901');


-- Popolamento Indirizzo (associati a clienti esistenti)
INSERT INTO Indirizzo (via, citta, provincia, cap, paese, preferito, nome_utente) VALUES
('Via Roma 1', 'Roma', 'RM', '00100', 'Italia', TRUE, 'marioRossi'),
('Via Milano 2', 'Milano', 'MI', '20100', 'Italia', TRUE, 'luciaVerdi'),
('Via Napoli 3', 'Napoli', 'NA', '80100', 'Italia', FALSE, 'gianniBianchi'),
('Via Torino 4', 'Torino', 'TO', '10100', 'Italia', TRUE, 'annaNeri'),
('Via Firenze 5', 'Firenze', 'FI', '50100', 'Italia', FALSE, 'paoloBlu');



-- Popolamento Categoria
INSERT INTO Categoria (id_categoria, tipologia) VALUES
(1, 'Mobili'),
(2, 'Sedie'),
(3, 'Divani'),
(4, 'Letti'),
(5, 'Illuminazione'),
(6, 'Tavolini'),
(7, 'Accessori'),
(8, 'Esterni'),
(9, 'Bambini');

INSERT INTO Articolo (codice, nome, descrizione, colore, sconto, prezzo, peso, dimensione, id_categoria) VALUES
(1, 'Divano 3 posti', 'Divano a 3 posti con rivestimento in tessuto resistente, struttura portante in legno massello e imbottitura ad alta densità per il massimo comfort', 'Blu petrolio', 0.30, 499.99, 54.000, '220x90x85 cm', 3),
(2, 'Tavolo da pranzo', 'Tavolo rettangolare in rovere massello naturale, con piano levigato e gambe robuste, ideale per 6-8 persone', 'Rovere naturale', 0.40, 299.99, 42.500, '180x90x75 cm', 6),
(3, 'Sedia imbottita', 'Sedia da pranzo rivestita in morbido velluto con struttura in legno e imbottitura ergonomica', 'Verde oliva', 0.08, 79.99, 6.200, '50x50x90 cm', 2),
(4, 'Libreria modulare', 'Libreria componibile moderna con ripiani regolabili in legno MDF e finitura opaca', 'Bianco opaco', 0.30, 199.99, 28.000, '100x35x200 cm', 1),
(5, 'Comodino in legno', 'Comodino compatto con due cassetti scorrevoli, realizzato in legno impiallacciato con finitura naturale', 'Noce', 0.10, 89.99, 9.000, '45x40x55 cm', 4),
(6, 'Scrivania minimal', 'Scrivania dallo stile minimalista con piano in legno laminato e struttura in metallo nero, perfetta per ambienti moderni', 'Nero', 0.22, 149.99, 21.000, '120x60x75 cm', 6),
(7, 'Armadio 2 ante', 'Armadio con 2 ante a battente, realizzato in laminato effetto rovere con ripiani interni e barra appendiabiti', 'Rovere chiaro', 0.00, 399.99, 63.000, '100x60x200 cm', 1),
(8, 'Lampada da terra', 'Lampada moderna da terra con struttura in metallo verniciato e paralume cilindrico orientabile', 'Nero opaco', 0.00, 59.99, 4.500, '40x40x150 cm', 5),
(9, 'Lampada da tavolo', 'Lampada da tavolo con base in metallo e paralume in tessuto beige, ideale per l’illuminazione d’atmosfera', 'Beige', 0.20, 39.99, 2.200, '20x20x50 cm', 5),
(10, 'Plafoniera LED', 'Plafoniera LED circolare con struttura in plastica bianca e diffusore opaco, adatta a qualsiasi ambiente', 'Bianco', 0.30, 49.99, 1.800, 'Ø60x10 cm', 5),
(11, 'Lampada a sospensione moderna', 'Lampada a sospensione in vetro soffiato con supporti in metallo nero, ideale per salotto o cucina moderna', 'Trasparente', 0.00, 89.99, 3.800, 'Ø30x120 cm', 5),
(12, 'Faretto da incasso', 'Set di faretti LED da incasso con struttura in alluminio satinato, perfetti per controsoffitti moderni', 'Alluminio', 0.00, 9.99, 0.200, 'Ø8x5 cm', 5),
(13, 'Applique da parete', 'Lampada da parete con corpo in metallo e diffusore opalino, dal design minimal per corridoi e ambienti moderni', 'Grigio', 0.10, 29.99, 1.200, '30x15x10 cm', 5),
(14, 'Tenda oscurante', 'Tenda blackout in poliestere, ideale per ambienti in cui si vuole bloccare completamente la luce', 'Grigio scuro', 0.012, 24.99, 1.000, '140x260 cm', 7),
(15, 'Cuscino decorativo', 'Cuscino quadrato con fodera in cotone e imbottitura in fibra anallergica, ideale per divani o letti', 'Bordeaux', 0.00, 14.99, 0.650, '45x45 cm', 8),
(16, 'Copripiumino matrimoniale', 'Set copripiumino matrimoniale con due federe, in cotone morbido con chiusura a bottoni', 'Blu petrolio', 0.15, 39.99, 1.800, '250x220 cm', 4),
(17, 'Tappeto moderno', 'Tappeto a pelo corto con design geometrico, fondo antiscivolo e tessitura resistente all’usura', 'Multicolore', 0.06, 89.99, 8.500, '160x230 cm', 3),
(18, 'Plaid in lana', 'Plaid caldo in pura lana, perfetto per divani o letti, lavorato a maglia con finitura elegante', 'Crema', 0.00, 34.99, 1.200, '130x170 cm', 3),
(19, 'Asciugamani set', 'Set composto da due asciugamani in cotone ad alta assorbenza, ideali per uso quotidiano', 'Bianco', 0.00, 19.99, 1.000, '70x140 cm', 7),
(20, 'Tenda leggera', 'Tenda traspirante per ambienti luminosi, tessuto leggero che lascia filtrare la luce naturale', 'Sabbia', 0.00, 22.99, 0.700, '140x280 cm', 7),
(21, 'Specchio rotondo', 'Specchio da parete con cornice in legno naturale, ideale per ingressi e bagni moderni', 'Rovere', 0.045, 59.99, 4.000, 'Ø60x3 cm', 7),
(22, 'Orologio da parete', 'Orologio moderno da parete con movimento silenzioso e quadrante minimalista', 'Nero opaco', 0.012, 24.99, 1.200, 'Ø35x4 cm', 7),
(23, 'Pouf contenitore', 'Pouf quadrato in velluto con vano contenitore interno, struttura solida e imbottitura soffice', 'Verde', 0.038, 39.99, 5.500, '40x40x40 cm', 2),
(24, 'Mensola sospesa', 'Mensola in MDF con staffe metalliche, ideale per libri o decorazioni leggere', 'Bianco opaco', 0.00, 19.99, 2.000, '80x20x3 cm', 1),
(25, 'Portaombrelli', 'Portaombrelli cilindrico in metallo traforato, resistente all’acqua e facile da pulire', 'Grigio chiaro', 0.025, 19.99, 1.300, 'Ø25x50 cm', 8),
(26, 'Panca ingresso', 'Panca da ingresso con ripiano inferiore portascarpe, struttura in legno effetto rovere', 'Rovere scuro', 0.00, 49.99, 8.000, '90x35x45 cm', 1),
(27, 'Cornice fotografica', 'Cornice da parete per foto 30x40 cm con vetro frontale e supporto per appenderla', 'Nero', 0.10, 9.99, 0.900, '33x43x2 cm', 7),
(28, 'Cesta in tessuto', 'Cesta portaoggetti pieghevole in lino, con manici laterali in corda e struttura rinforzata', 'Beige', 0.20, 14.99, 0.850, '35x25x25 cm', 9),
(29, 'Scatola in feltro', 'Contenitore in feltro con manici, ideale per armadi e scaffali modulari', 'Grigio scuro', 0.00, 9.99, 0.700, '32x32x30 cm', 9),
(30, 'Contenitore con coperchio', 'Scatola rigida in tessuto con coperchio e maniglie, pensata per organizzare armadi e mensole', 'Blu', 0.012, 19.99, 1.200, '60x40x20 cm', 9),
(31, 'Organizer per cassetti', 'Set di divisori in tessuto per organizzare biancheria e accessori all’interno dei cassetti', 'Bianco', 0.00, 5.99, 0.300, '30x15x10 cm', 1),
(32, 'Cassettiera modulare', 'Cassettiera trasparente in plastica rigida con 3 cassetti impilabili, perfetta per armadi e bagni', 'Trasparente', 0.00, 39.99, 4.800, '40x30x60 cm', 1),
(33, 'Porta riviste', 'Contenitore da pavimento in metallo verniciato, ideale per conservare riviste e giornali', 'Blu', 0.015, 14.99, 1.400, '35x15x30 cm', 8),
(34, 'Appendiabiti a muro', 'Set di 5 ganci in metallo cromato con supporto per fissaggio a parete, resistenti e salvaspazio', 'Cromo', 0.00, 9.99, 0.600, '6x6x4 cm', 7),
(35, 'Barra portautensili', 'Barra magnetica da cucina per appendere coltelli e utensili, con fissaggio a parete', 'Nero', 0.008, 12.99, 0.900, '50x5x2 cm', 7),
(36, 'Scaffale pieghevole', 'Scaffale in metallo con 4 ripiani pieghevoli, facile da montare e adatto a garage o ripostigli', 'Bianco', 0.10, 79.99, 10.500, '75x35x140 cm', 1),
(37, 'Portascarpe verticale', 'Portascarpe da appendere con 10 tasche in tessuto, salvaspazio per armadi o porte', 'Grigio', 0.012, 24.99, 1.200, '50x150 cm', 1),
(38, 'Ganci adesivi', 'Set di 10 ganci da parete in plastica trasparente con adesivo forte, ideali per piccoli oggetti', 'Trasparente', 0.002, 4.99, 0.100, '5x5 cm', 7),
(39, 'Portachiavi a parete', 'Portachiavi con 4 ganci e ripiano superiore, perfetto per tenere in ordine chiavi e accessori', 'Rovere', 0.00, 9.99, 0.800, '40x10x15 cm', 7),
(40, 'Sedia in rattan', 'Sedia da pranzo in rattan naturale intrecciato a mano con struttura in metallo nera', 'Naturale', 0.15, 59.99, 5.200, '55x60x85 cm', 2),
(41, 'Sedia imbottita moderna', 'Sedia da pranzo con seduta in velluto grigio scuro e gambe in legno massello, design contemporaneo', 'Grigio scuro', 0.00, 69.99, 6.800, '48x52x84 cm', 2),
(42, 'Sedia pieghevole in legno', 'Sedia pieghevole in legno massello verniciato, ideale per ambienti interni ed esterni', 'Noce', 0.20, 39.99, 5.500, '45x50x80 cm', 2),
(43, 'Sgabello alto', 'Sgabello con struttura in metallo verniciato nero e seduta in similpelle, ideale per banconi cucina', 'Nero', 0.00, 44.99, 4.500, '40x40x75 cm', 2),
(44, 'Tavolo da giardino', 'Tavolo rettangolare per esterno in plastica resistente agli agenti atmosferici, facile da pulire', 'Grigio antracite', 0.07, 99.99, 12.000, '160x90x75 cm', 8),
(45, 'Poltrona da esterno', 'Poltrona in resina intrecciata con cuscini sfoderabili e struttura resistente, perfetta per il giardino', 'Marrone scuro', 0.00, 89.99, 9.000, '75x70x85 cm', 8),
(46, 'Sedia a sdraio pieghevole', 'Sedia reclinabile con struttura in alluminio e rivestimento in tessuto traspirante, richiudibile', 'Blu navy', 0.00, 69.99, 6.500, '60x180x90 cm', 8),
(47, 'Set da balcone', 'Set composto da un tavolino rotondo e due sedie pieghevoli in metallo verniciato verde, compatto e pratico', 'Verde salvia', 0.00, 119.99, 13.000, '60x70 cm', 8),
(48, 'Ombrellone da giardino', 'Ombrellone rotondo con tessuto UV resistente e palo centrale in metallo con apertura manuale', 'Beige sabbia', 0.10, 79.99, 7.000, 'Ø250x240 cm', 8),
(49, 'Lettino in legno', 'Letto per bambini con sponde laterali di sicurezza, struttura robusta in legno laccato bianco', 'Bianco', 0.00, 109.99, 18.000, '140x70x65 cm', 9),
(50, 'Sedia per bambini', 'Sedia in plastica resistente e colorata, progettata per l’uso sicuro da parte dei più piccoli', 'Rosso', 0.10, 19.99, 1.800, '30x30x55 cm', 9),
(51, 'Tavolino attività', 'Tavolino multifunzione per bambini, con superficie lavabile, bordi arrotondati e contenitori integrati', 'Multicolore', 0.00, 34.99, 3.200, '60x60x50 cm', 9),
(52, 'Armadio basso', 'Armadio basso per giochi, con due ante colorate e ripiani interni in MDF, ideale per camerette', 'Verde menta', 0.40, 69.99, 12.000, '80x40x80 cm', 9),
(53, 'Scaffale con contenitori', 'Scaffale modulare per bambini con 6 box in tessuto colorato, perfetto per organizzare giochi', 'Blu e giallo', 0.10, 59.99, 9.500, '90x30x100 cm', 9),
(54, 'Tavolino rotondo', 'Tavolino rotondo da interno con struttura in corda bianca e piano in vetro temperato, stile etnico', 'Bianco', 0.10, 38.41, 4.800, '50 cm', 6),
(55, 'Tavolino effetto rovere', 'Tavolino rettangolare con finitura rovere e nero, dotato di scomparti portaoggetti integrati', 'Nero-rovere', 0.15, 88.00, 9.000, '90 x 59,8 cm', 6),
(56, 'Letto matrimoniale', 'Letto matrimoniale con struttura imbottita in tessuto verde salvia, rete e contenitore inclusi', 'Verde salvia', 0.25, 596.00, 65.000, '170 x 205 cm', 4),
(57, 'Letto singolo', 'Letto singolo sommier in tessuto crema con prese USB integrate sui lati, senza testiera', 'Crema', 0.20, 190.00, 38.000, '89 x 200 cm', 4),
(58, 'Divano letto', 'Divano letto 3 posti con schienale reclinabile, rivestimento in tessuto verde e apertura rapida', 'Verde', 0.10, 207.00, 48.000, '180 x 81 cm', 3);


INSERT INTO ImmagineArticolo (codice_articolo, url, is_principale, descrizione) VALUES
(35, 'img/articoli/barra magnetica da cucina nero/aa1.jpg', TRUE, 'Barra magnetica da cucina nero'),
(35, 'img/articoli/barra magnetica da cucina nero/aa2.jpg', FALSE, 'Barra magnetica da cucina nero'),
(35, 'img/articoli/barra magnetica da cucina nero/aa3.jpg', FALSE, 'Barra magnetica da cucina nero'),

(32, 'img/articoli/cassettiera/bb1.jpg', TRUE, 'Cassettiera ondulare trasparente'),
(32, 'img/articoli/cassettiera/bb2.jpg', FALSE, 'Cassettiera ondulare trasparente'),
(32, 'img/articoli/cassettiera/bb3.jpg', FALSE, 'Cassettiera ondulare trasparente'),

(28, 'img/articoli/cesta portaoggetti/cc1.jpg', TRUE, 'Cesta portaoggetti'),
(28, 'img/articoli/cesta portaoggetti/cc2.jpg', FALSE, 'Cesta portaoggetti'),
(28, 'img/articoli/cesta portaoggetti/cc3.jpg', FALSE, 'Cesta portaoggetti'),

(29, 'img/articoli/contenitore grigio con manici/dd1.jpg', TRUE, 'Contenitore grigio con manici'),
(29, 'img/articoli/contenitore grigio con manici/dd2.jpg', FALSE, 'Contenitore grigio con manici'),
(29, 'img/articoli/contenitore grigio con manici/dd3.jpg', FALSE, 'Contenitore grigio con manici'),

(38, 'img/articoli/10 ganci trasprente/ff1.jpg', TRUE, '10 ganci trasparenti'),
(38, 'img/articoli/10 ganci trasprente/ff2.jpg', FALSE, '10 ganci trasparenti'),
(38, 'img/articoli/10 ganci trasprente/ff3.jpg', FALSE, '10 ganci trasparenti'),

(34, 'img/articoli/5 ganci da parete/ee1.webp', TRUE, '5 ganci da parete'),
(34, 'img/articoli/5 ganci da parete/ee2.webp', FALSE, '5 ganci da parete'),
(34, 'img/articoli/5 ganci da parete/ee3.webp', FALSE, '5 ganci da parete'),

(31, 'img/articoli/divisori biancheria bianca/gg1.jpg', TRUE, 'Divisori bianchwria bianca'),
(31, 'img/articoli/divisori biancheria bianca/gg2.jpg', FALSE, 'Divisori bianchwria bianca'),
(31, 'img/articoli/divisori biancheria bianca/gg3.jpg', FALSE, 'Divisori bianchwria bianca'),

(49, 'img/articoli/Lettino in legno/hh1.jpg', TRUE, 'Lettino in legno'),
(49, 'img/articoli/Lettino in legno/hh2.jpg', FALSE, 'Lettino in legno'),
(49, 'img/articoli/Lettino in legno/hh3.jpg', FALSE, 'Lettino in legno'),

(24, 'img/articoli/mensola a scala/ii1.jpg', TRUE, 'Mensola a scala'),
(24, 'img/articoli/mensola a scala/ii2.jpg', FALSE, 'Mensola a scala'),
(24, 'img/articoli/mensola a scala/ii3.jpg', FALSE, 'Mensola a scala'),

(48, 'img/articoli/Ombrellone rotondo/ll1.jpg', TRUE, 'Ombrellone rotondo'),
(48, 'img/articoli/Ombrellone rotondo/ll2.jpg', FALSE, 'Ombrellone rotondo'),

(22, 'img/articoli/orologio moderno/mm1.jpg', TRUE, 'Orologio moderno'),
(22, 'img/articoli/orologio moderno/mm2.jpg', FALSE, 'Orologio moderno'),
(22, 'img/articoli/orologio moderno/mm3.jpg', FALSE, 'Orologio moderno'),

(45, 'img/articoli/poltrona intrecciata/nn1.jpg', TRUE, 'Poltrona intrecciata'),
(45, 'img/articoli/poltrona intrecciata/nn2.jpg', FALSE, 'Poltrona intrecciata'),
(45, 'img/articoli/poltrona intrecciata/nn3.jpg', FALSE, 'Poltrona intrecciata'),

(33, 'img/articoli/porta riviste blu/oo1.jpg', TRUE, 'Porta riviste blu'),
(33, 'img/articoli/porta riviste blu/oo2.jpg', FALSE, 'Porta riviste blu'),
(33, 'img/articoli/porta riviste blu/oo3.jpg', FALSE, 'Porta riviste blu'),

(37, 'img/articoli/porta scarpe da appendere grigio/pp1.jpg', TRUE, 'Porta scarpe da appendere grigio'),
(37, 'img/articoli/porta scarpe da appendere grigio/pp2.jpg', FALSE, 'Porta scarpe da appendere grigio'),
(37, 'img/articoli/porta scarpe da appendere grigio/pp3.jpg', FALSE, 'Porta scarpe da appendere grigio'),

(39, 'img/articoli/portachiavi rovere/qq1.jpg', TRUE, 'Portachiavi rovere'),
(39, 'img/articoli/portachiavi rovere/qq2.jpg', FALSE, 'Portachiavi rovere'),
(39, 'img/articoli/portachiavi rovere/qq3.jpg', FALSE, 'Portachiavi rovere'),

(25, 'img/articoli/portaombrelli/rr1.jpg', TRUE, 'Portaombrelli'),
(25, 'img/articoli/portaombrelli/rr2.jpg', FALSE, 'Portaombrelli'),
(25, 'img/articoli/portaombrelli/rr3.jpg', FALSE, 'Portaombrelli'),

(23, 'img/articoli/pouf in velluto/ss1.webp', TRUE, 'Pouf in velluto'),
(23, 'img/articoli/pouf in velluto/ss2.webp', FALSE, 'Pouf in velluto'),
(23, 'img/articoli/pouf in velluto/ss3.webp', FALSE, 'Pouf in velluto'),

(54, 'img/articoli/tav/tavolino.webp', TRUE, 'Tavolino rotondo'),
(54, 'img/articoli/tav/tavolino3.webp', FALSE, 'Tavolino rotondo'),
(54, 'img/articoli/tav/tavolino2.webp', FALSE, 'Tavolino rotondo'),
(54, 'img/articoli/tav/tavolino4.webp', FALSE, 'Tavolino rotondo'),

(58, 'img/articoli/div/dds.webp', TRUE, 'Divano letto'),
(58, 'img/articoli/div/dds2.webp', FALSE, 'Divano letto'),
(58, 'img/articoli/div/dds3.webp', FALSE, 'Divano letto'),
(58, 'img/articoli/div/dds4.webp', FALSE, 'Divano letto'),


(56, 'img/articoli/letto/lee1.webp', TRUE, 'Letto matrimoniale'),
(56, 'img/articoli/letto/lee2.webp', FALSE, 'Letto matrimoniale'),
(56, 'img/articoli/letto/lee3.webp', FALSE, 'Letto matrimoniale'),
(56, 'img/articoli/letto/lee4.webp', FALSE, 'Letto matrimoniale'),

(57, 'img/articoli/lettoSingolo/sing.webp', TRUE, 'Letto singolo'),
(57, 'img/articoli/lettoSingolo/sing2.webp', FALSE, 'Letto singolo'),
(57, 'img/articoli/lettoSingolo/sing3.webp', FALSE, 'Letto singolo'),


(55, 'img/articoli/t/ant1.webp', TRUE, 'Tavolino effetto rovere'),
(55, 'img/articoli/t/ant2.webp', FALSE, 'Tavolino effetto rovere'),
(55, 'img/articoli/t/ant3.webp', FALSE, 'Tavolino effetto rovere'),

(53, 'img/articoli/Scaffale con contenitori/tt1.jpg', TRUE, 'Scaffale con contenitori'),
(53, 'img/articoli/Scaffale con contenitori/tt2.jpg', FALSE, 'Scaffale con contenitori'),
(53, 'img/articoli/Scaffale con contenitori/tt3.jpg', FALSE, 'Scaffale con contenitori'),

(26, 'img/articoli/scarpiera rovere/uu1.png', TRUE, 'Scarpiera rovere'),
(26, 'img/articoli/scarpiera rovere/uu2.png', FALSE, 'Scarpiera rovere'),
(26, 'img/articoli/scarpiera rovere/uu3.png', FALSE, 'Scarpiera rovere'),

(30, 'img/articoli/scatola blu per armadio/vv1.jpg', TRUE, 'Scatola blu per armadio'),
(30, 'img/articoli/scatola blu per armadio/vv2.jpg', FALSE, 'Scatola blu per armadio'),
(30, 'img/articoli/scatola blu per armadio/vv3.jpg', FALSE, 'Scatola blu per armadio'),

(46, 'img/articoli/sedia a sdraio/zz1.jpg', TRUE, 'Sedia a sdraio'),
(46, 'img/articoli/sedia a sdraio/zz2.jpg', FALSE, 'Sedia a sdraio'),
(46, 'img/articoli/sedia a sdraio/zz3.jpg', FALSE, 'Sedia a sdraio'),

(41, 'img/articoli/Sedia imbottita moderna/media.jpg', TRUE, 'Sedia imbottita moderna'),
(41, 'img/articoli/Sedia imbottita moderna/media-2.jpg', FALSE, 'Sedia imbottita moderna'),
(41, 'img/articoli/Sedia imbottita moderna/media-3.jpg', FALSE, 'Sedia imbottita moderna'),

(50, 'img/articoli/Sedia per bambini/mio1.jpg', TRUE, 'Sedia per bambini'),
(50, 'img/articoli/Sedia per bambini/mio2.jpg', FALSE, 'Sedia per bambini'),
(50, 'img/articoli/Sedia per bambini/mio3.jpg', FALSE, 'Sedia per bambini'),

(40, 'img/articoli/sedia rattan/zar1.jpeg', TRUE, 'Sedia rattan'),
(40, 'img/articoli/sedia rattan/zar2.jpeg', FALSE, 'Sedia rattan'),
(40, 'img/articoli/sedia rattan/zar3.jpeg', FALSE, 'Sedia rattan'),

(42, 'img/articoli/Sedia scandinava/sed1.webp', TRUE, 'Sedia scandinava'),
(42, 'img/articoli/Sedia scandinava/sed2.webp', FALSE, 'Sedia scandinava'),
(42, 'img/articoli/Sedia scandinava/sed3.webp', FALSE, 'Sedia scandinava'),

(43, 'img/articoli/Sgabello in metallo/sga1.webp', TRUE, 'Sgabello in metallo'),
(43, 'img/articoli/Sgabello in metallo/sga2.webp', FALSE, 'Sgabello in metallo'),
(43, 'img/articoli/Sgabello in metallo/sga3.webp', FALSE, 'Sgabello in metallo'),

(21, 'img/articoli/specchio da parete/spe1.jpg', TRUE, 'Specchio da parete'),
(21, 'img/articoli/specchio da parete/spe2.jpg', FALSE, 'Specchio da parete'),
(21, 'img/articoli/specchio da parete/spe3.jpg', FALSE, 'Specchio da parete'),


(51, 'img/articoli/tavolino/tav1.webp', TRUE, 'Tavolino'),
(51, 'img/articoli/tavolino/tav2.webp', FALSE, 'Tavolino'),

(47, 'img/articoli/Tavolino rotondo e 2 sedie/mix1.webp', TRUE, 'Tavolino rotondo e 2 sedie'),
(47, 'img/articoli/Tavolino rotondo e 2 sedie/mix2.webp', FALSE, 'Tavolino rotondo e 2 sedie'),
(47, 'img/articoli/Tavolino rotondo e 2 sedie/mix3.webp', FALSE, 'Tavolino rotondo e 2 sedie'),

(44, 'img/articoli/Tavolo da giardino/gia1.jpg', TRUE, 'Tavolo da giardino'),
(44, 'img/articoli/Tavolo da giardino/gia2.jpg', FALSE, 'Tavolo da giardino'),
(44, 'img/articoli/Tavolo da giardino/gia3.jpg', FALSE, 'Tavolo da giardino'),

(4, 'img/articoli/accessorio da scrivanai/acc1.webp', TRUE, 'Accessori da scrivania'),
(4, 'img/articoli/accessorio da scrivanai/acc2.webp', FALSE, 'Accessori da scrivania'),
(4, 'img/articoli/accessorio da scrivanai/acc3.webp', FALSE, 'Accessori da scrivania'),

(7, 'img/articoli/armadio effetto rovere 2 ante/amm.jpg', TRUE, 'Armadio effetto rovere 2 ante'),
(7, 'img/articoli/armadio effetto rovere 2 ante/arm2.jpg', FALSE, 'Armadio effetto rovere 2 ante'),
(7, 'img/articoli/armadio effetto rovere 2 ante/arm3.jpg', FALSE, 'Armadio effetto rovere 2 ante'),

(19, 'img/articoli/asciugamani bianchi/media.jpg', TRUE, 'Asciugamani bianchi'),
(19, 'img/articoli/asciugamani bianchi/media-1.jpg', FALSE, 'Asciugamani bianchi'),
(19, 'img/articoli/asciugamani bianchi/media-2.jpg', FALSE, 'Asciugamani bianchi'),


(5, 'img/articoli/Comodino in legno/com1.webp', TRUE, 'Comodino in legno'),
(5, 'img/articoli/Comodino in legno/com2.jpg', FALSE, 'Comodino in legno'),
(5, 'img/articoli/Comodino in legno/com3.jpg', FALSE, 'Comodino in legno'),

(16, 'img/articoli/copripiumino petrolio/cop1.jpg', TRUE, 'Copripiumino petrolio'),
(16, 'img/articoli/copripiumino petrolio/com2.jpg', FALSE, 'Copripiumino petrolio'),
(16, 'img/articoli/copripiumino petrolio/com3.jpg', FALSE, 'Copripiumino petrolio'),

(15, 'img/articoli/cuscino bordeaux/bor1.jpg', TRUE, 'Cuscino bordeaux'),
(15, 'img/articoli/cuscino bordeaux/bor2.jpg', FALSE, 'Cuscino bordeaux'),
(15, 'img/articoli/cuscino bordeaux/bor3.jpg', FALSE, 'Cuscino bordeaux'),

(1, 'img/articoli/divano petrolio/div1.jpg', TRUE, 'Divano 3 posti'),
(1, 'img/articoli/divano petrolio/div2.jpg', FALSE, 'Divano 3 posti'),
(1, 'img/articoli/divano petrolio/div3.jpeg', FALSE, 'Divano 3 posti'),



(13, 'img/articoli/applique da parete/app1.jpg', TRUE, 'Applique parete'),
(13, 'img/articoli/applique da parete/app2.jpg',FALSE, 'Applique parete'),
(13, 'img/articoli/applique da parete/app3.jpg', FALSE, 'Applique parete'),

(12, 'img/articoli/faretti da incasso/fa1.jpg', TRUE, 'Faretti da incasso'),
(12, 'img/articoli/faretti da incasso/fa2.jpg', FALSE, 'Faretti da incasso'),
(12, 'img/articoli/faretti da incasso/fa3.jpg', FALSE, 'Faretti da incasso'),

(11, 'img/articoli/Lampada a sospensione in vetro/la1.jpg', TRUE, 'Lampada a sospensione in vetro'),
(11, 'img/articoli/Lampada a sospensione in vetro/la2.jpg', FALSE, 'Lampada a sospensione in vetro'),
(11, 'img/articoli/Lampada a sospensione in vetro/la3.jpg', FALSE, 'Lampada a sospensione in vetro'),


(9, 'img/articoli/lampada beige/media.jpg', TRUE, 'Lampada beige'),
(9, 'img/articoli/lampada beige/media-1.jpg', FALSE, 'Lampada beige'),
(9, 'img/articoli/lampada beige/media-2.jpg', FALSE, 'Lampada beige'),

(8, 'img/articoli/lampada da terra nera/lucia-2.jpg', TRUE, 'Lampada da terra nera'),
(8, 'img/articoli/lampada da terra nera/lucia-3.jpg', FALSE, 'Lampada da terra nera'),
(8, 'img/articoli/lampada da terra nera/lucia-4.jpg', FALSE, 'Lampada da terra nera'),

(4, 'img/articoli/libreria modulare/lib1.webp', TRUE, 'Libreria modulare'),
(4, 'img/articoli/libreria modulare/lib2.webp', FALSE, 'Libreria modulare'),
(4, 'img/articoli/libreria modulare/lib3.jpeg', FALSE, 'Libreria modulare'),


(10, 'img/articoli/plafoniera circolare/pla1.jpg', TRUE, 'Plafoniera circolare'),
(10, 'img/articoli/plafoniera circolare/pla2.jpg', FALSE, 'Plafoniera circolare'),
(10, 'img/articoli/plafoniera circolare/pla3.jpg', FALSE, 'Plafoniera circolare'),

(18, 'img/articoli/plaid crema/pd1.webp', TRUE, 'Plaid crema'),
(18, 'img/articoli/plaid crema/pd2.webp', FALSE, 'Plaid crema'),
(18, 'img/articoli/plaid crema/pd3.webp', FALSE, 'Plaid crema'),


(6, 'img/articoli/scrivania egno e metallo/sc1.jpg', TRUE, 'Scrivania egno e metallo'),
(6, 'img/articoli/scrivania egno e metallo/sc2.jpg', FALSE, 'Scrivania egno e metallo'),
(6, 'img/articoli/scrivania egno e metallo/sc3.jpg', FALSE, 'Scrivania egno e metallo'),


(3, 'img/articoli/sedie oliva/ov1.webp', TRUE, 'Sedie oliva'),
(3, 'img/articoli/sedie oliva/ov2.webp', FALSE, 'Sedie oliva'),
(3, 'img/articoli/sedie oliva/ov3.webp', FALSE, 'Sedie oliva'),

(17, 'img/articoli/tappeto multicolore/ta1.jpg', TRUE, 'Tappeto multicolore'),
(17, 'img/articoli/tappeto multicolore/ta2.jpg', FALSE, 'Tappeto multicolore'),
(17, 'img/articoli/tappeto multicolore/ta3.jpg', FALSE, 'Tappeto multicolore'),

(27, 'img/articoli/cornice nera/r.jpg', TRUE, 'Cornice nera'),
(27, 'img/articoli/cornice nera/r1.jpg', FALSE, 'Cornice nera'),

(36, 'img/articoli/scaffale 4 piani bianco/sc.jpg', TRUE, 'Scaffale 4 piani bianco'),
(36, 'img/articoli/scaffale 4 piani bianco/sc2.jpg', FALSE, 'Scaffale 4 piani bianco'),

(2, 'img/articoli/tavolo in rovere massere/tp1.webp', TRUE, 'Tavolo in rovere massere'),
(2, 'img/articoli/tavolo in rovere massere/tp2.webp', FALSE, 'Tavolo in rovere massere'),
(2, 'img/articoli/tavolo in rovere massere/tp3.webp', FALSE, 'Tavolo in rovere massere'),

(14, 'img/articoli/tenda oscurante/te1.jpg', TRUE, 'Tenda oscurante'),
(14, 'img/articoli/tenda oscurante/te2.jpg', FALSE, 'Tenda oscurante'),
(14, 'img/articoli/tenda oscurante/te3.jpg', FALSE, 'Tenda oscurante'),

(20, 'img/articoli/tenda sabbia/sa1.webp', TRUE, 'Tenda sabbia'),
(20, 'img/articoli/tenda sabbia/sa2.webp', FALSE, 'Tenda sabbia'),
(20, 'img/articoli/tenda sabbia/sa3.jpg', FALSE, 'Tenda sabbia'),

(52, 'img/articoli/Armadio basso/as1.webp', TRUE, 'Armadio basso'),
(52, 'img/articoli/Armadio basso/arm1.jpg', FALSE, 'Armadio basso');


INSERT INTO Metodi_pagamento (num_carta, intestatario, data_scadenza, nome_utente) VALUES
('4111111111111111', 'Mario Rossi', '2027-08-01', 'marioRossi'),
('5555444433332222', 'Lucia Verdi', '2026-04-01', 'luciaVerdi'),
('378282246310005', 'Giovanni Bianchi', '2028-12-01', 'gianniBianchi'),
('6011000990139424', 'Anna Neri', '2025-11-01', 'annaNeri'),
('3530111333300000', 'Paolo Blu', '2029-06-01', 'paoloBlu');


INSERT INTO Recensione (valutazione, titolo, testo, data, codice, nome_utente) VALUES
(5, 'Fantastico!', 'Prodotto eccellente, consegna rapidissima e ottima qualità.', '2025-06-20', '1', 'marioRossi'),
(4, 'Buono ma migliorabile', 'Design molto bello ma il montaggio non era semplicissimo.', '2025-06-21', '3', 'luciaVerdi'),
(3, 'Nella media', 'Prezzo giusto, qualità nella norma, nulla di eccezionale.', '2025-06-22', '9', 'annaNeri'),
(5, 'Top di gamma', 'Ho acquistato questo mobile per la mia sala, tutti mi fanno i complimenti.', '2025-06-22', '12', 'gianniBianchi'),
(2, 'Deludente', 'Materiali poco resistenti, montaggio complicato e mancano dei pezzi.', '2025-06-23', '15', 'paoloBlu');
