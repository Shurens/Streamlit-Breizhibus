import mysql.connector as mysqlpy
import pandas as pd
import streamlit as st

#Fonction de connection à la base de donnée
def get_bdd():
    global bdd
    bdd = mysqlpy.connect(
        user = 'root',
        password = 'example',
        host = 'localhost',
        port = '3307',
        database = 'streamlit_breizhibus')
    return bdd

#Requête pour le menu des horaires par ligne
def horaire():
    get_bdd()
    cursor = bdd.cursor()

    cursor.execute("SELECT horaires.heure, lignes.nom, arrets.libelle from horaires join lignes ON lignes.id= horaires.ligne join arrets ON horaires.arret= arrets.id")
    df = pd.DataFrame(cursor.fetchall(), columns = cursor.column_names)
    cursor.close()
    bdd.close()
    return df

#Requête pour l'histogramme de fréquentation par ligne
def frequentation_par_ligne():
    get_bdd()
    cursor = bdd.cursor()

    cursor.execute("SELECT lignes.nom, SUM(frequentation.nombre_passagers) AS total_passagers FROM frequentation INNER JOIN horaires ON frequentation.horaire = horaires.id INNER JOIN lignes ON horaires.ligne = lignes.id GROUP BY lignes.nom")
    df = pd.DataFrame(cursor.fetchall(), columns = cursor.column_names)
    cursor.close()
    bdd.close()
    return df

#Requête du graphique de fréquentation par heure 
def frequentation_par_heure():
    get_bdd()
    cursor = bdd.cursor()

    cursor.execute("SELECT SUM(frequentation.nombre_passagers) AS passagers, horaires.heure, lignes.nom AS ligne FROM frequentation JOIN horaires ON frequentation.horaire = horaires.id JOIN lignes ON horaires.ligne = lignes.id GROUP BY horaires.heure, ligne")
    df = pd.DataFrame(cursor.fetchall(), columns = cursor.column_names)
    cursor.close()
    bdd.close()
    return df

#Requête du camembert de fréquentation par jour
def frequentation_par_jour():
    get_bdd()
    cursor = bdd.cursor()

    cursor.execute(" SELECT SUM(frequentation.nombre_passagers) AS passagers, frequentation.jour as jour FROM frequentation GROUP BY frequentation.jour")
    df = pd.DataFrame(cursor.fetchall(), columns = cursor.column_names)
    cursor.close()
    bdd.close()
    return df