import streamlit as st
import data
import matplotlib.pyplot as plt

#-------------------------------------------------------------------------------------------------
#Affichage du graphique de fréquentation par ligne
df = data.frequentation_par_ligne()
fig = plt.figure(figsize=(8, 6))
#Affichage d'un histogramme avec les valeurs de la colonne "nom" en x, et "total_passagers" en y
plt.bar(df['nom'], df['total_passagers'])
#Nom des axes
plt.xlabel('Lignes de bus')
plt.ylabel('Nombre de passagers')
#Titre du graphe
plt.title('Fréquentation par ligne de bus')

st.pyplot(fig)

#-------------------------------------------------------------------------------------------------
#Affichage du graphique de fréquention par heure
df= data.frequentation_par_heure()
fig, ax = plt.subplots(figsize=(20, 6))
# Création du graphique de ligne
for ligne in df['ligne'].unique():
    ligne_df = df[df['ligne'] == ligne]
    ax.plot(ligne_df['heure'], ligne_df['passagers'], label=ligne)
#Nom des axes
ax.set_xlabel('Heure')
ax.set_ylabel('Fréquentation')
#Titre du graphique
ax.set_title('Fréquentation des différentes lignes de bus par heure')
#Affichage des légendes des lignes du graphique
ax.legend()

st.pyplot(fig)

#-------------------------------------------------------------------------------------------------
#Affichage du camember de Fréquentation par Jour
df = data.frequentation_par_jour()
plt.figure(figsize=(6,5),dpi=80)
#Conversion de la valeur passagers qui est un string en float(pourquoi ?)
df["passagers"] = df["passagers"].astype(float)

fig, ax = plt.subplots()
#Affichage du camembert avec le total de passager en fonction des jours, converti en %
ax.pie(df["passagers"], labels=df["jour"], autopct='%1.1f%%')
#Titre du camembert
ax.set_title('Fréquentation par jours')

st.pyplot(fig)