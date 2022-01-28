# DatenbankMatch
Datenbank für unser Projekt

Wie vorzugehen ist:

# 1. Lade Microsoft SQL Server Management Studio herunter.
Link: https://aka.ms/ssmsfullsetup

# 2. Erstelle eine neue Datenbank und gebe ihr z.B. den Namen "DatenbankMatch".

# 3. Erstelle nun die entsprechenden Tabellen:

(Folgendes ist nicht ausführlich, aber für Dokumentationszwecke genügend, da die Einstellungen bezüglich Datentypen wie z.B. nvarchar usw. selbsterklärend erscheinen.)
1. Erstelle die Tabelle mit dem Namen "T_Personen". Diese Tabelle besitzt die Spalten "ID_Person" (Primärschlüssel), "Vorname", "Nachname" und "Klasse".
2. Erstelle nun die Tabelle mit dem Namen "T_Fragen". Diese Tabelle besitzt die Spalten "ID_Fragen" (Primärschlüssel) und "Frage".
3. Erstelle schlussendlich die Tabelle mit dem Namen "T_Person_Antwort". Diese Tabelle besitzt die Spalten "ID_Person", "ID_Frage" und "Antwort".

# 4. Befülle alle Tabellen mit den entsprechenden Daten.
# 5. Query Sortierung_nach_Antwort.sql

# Wichtige Anmerkung:

Wenn nicht nur nach dem Match für die Person für welche "ID_Person" eins ist gesucht werden soll, so muss die Zeile WHERE Pa1.ID_Person = 1 AND Pa2.ID_Person <> 1 gedanklich als 
WHERE Pa1.ID_Person = n AND Pa2.ID_Person <> n aufgefasst werden, wobei n die "ID_Person", für welche das Match gefunden werden soll, ist.  
