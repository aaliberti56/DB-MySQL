-- ==========================================================
-- 📊 QUERY DI ANALISI PER RE-VAMP ASCENT (FURNITURE E-COMMERCE)
-- Queste query dimostrano la capacità di estrarre business insights dal DB.
-- ==========================================

-- 1. FATTURATO TOTALE PER CATEGORIA
-- Utile per capire quali tipi di mobili vendono di più (es. Divani vs Scrivanie).
SELECT 
    c.tipologia AS Categoria, 
    SUM(ct.prezzo_unitario * ct.quantita) AS Fatturato_Totale
FROM Categoria c
JOIN Articolo a ON c.id_categoria = a.id_categoria
JOIN Contenimento ct ON a.codice = ct.codice
GROUP BY c.tipologia
ORDER BY Fatturato_Totale DESC;


-- 2. I "TOP SPENDER" (CLIENTI PIÙ FEDELI)
-- Identifica i clienti che hanno speso di più nel sistema.
SELECT 
    cl.nome_utente, 
    cl.email, 
    COUNT(o.id_ordine) AS Numero_Ordini, 
    SUM(o.importo_totale) AS Totale_Speso
FROM Cliente cl
JOIN Ordine o ON cl.nome_utente = o.nome_utente
GROUP BY cl.nome_utente
HAVING Totale_Speso > 100 -- Filtriamo solo chi ha speso cifre rilevanti
ORDER BY Totale_Speso DESC;


-- 3. VALUTAZIONE MEDIA PER ARTICOLO
-- Mostra i prodotti più amati dagli utenti (Rating medio).
SELECT 
    a.nome AS Prodotto, 
    AVG(r.valutazione) AS Media_Voti, 
    COUNT(r.id) AS Numero_Recensioni
FROM Articolo a
LEFT JOIN Recensione r ON a.codice = r.codice
GROUP BY a.codice
ORDER BY Media_Voti DESC;


-- 4. ARTICOLI PIÙ PRESENTI NEI CARRELLI (ANALISI INTERESSE)
-- Analizza quali prodotti sono nel carrello ma non sono ancora stati acquistati.
SELECT 
    a.nome AS Prodotto, 
    SUM(ca.quantita) AS Quantita_Totale_Nei_Carrelli
FROM Articolo a
JOIN Carrello ca ON a.codice = ca.codice_articolo
GROUP BY a.codice
ORDER BY Quantita_Totale_Nei_Carrelli DESC;


-- 5. DETTAGLIO ORDINI CON STATO PAGAMENTO
-- Query operativa per il magazzino: cosa è stato ordinato e se è stato pagato.
SELECT 
    o.id_ordine, 
    o.data, 
    cl.email, 
    p.stato_pagamento, 
    p.metodo_pagamento, 
    o.importo_totale
FROM Ordine o
JOIN Cliente cl ON o.nome_utente = cl.nome_utente
JOIN Pagamento p ON o.id_ordine = p.id_ordine
WHERE p.stato_pagamento = 'Confermato'
ORDER BY o.data DESC;
