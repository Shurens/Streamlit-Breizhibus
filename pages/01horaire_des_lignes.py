import streamlit as st
import data
import matplotlib.pyplot as plt
import pandas as pd

df = data.horaire()

# Créer une liste unique d'arrêts
arrets = df['nom'].unique()

# Sélectionner un arrêt
selected_arret = st.selectbox("Sélectionnez une ligne :", arrets)

# Filtrer les données en fonction de l'arrêt sélectionné
filtered_data = df[df["nom"] == selected_arret]

# Créer une liste pour stocker les données du tableau
table_data = []

# Parcourir les données filtrées
for index, row in filtered_data.iterrows():
# Ajouter chaque ligne de données à la liste
    table_data.append([str(row['heure']), row["libelle"]])

# Afficher le tableau à l'aide de st.table()
st.table(pd.DataFrame(table_data, columns=['Horaires', 'arrets']))
