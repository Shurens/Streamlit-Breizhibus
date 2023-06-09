import streamlit as st

#Titre de l'image
st.title('Application Breizhibus')
#Ajout de texte supplémentaire
st.text('Plan du réseau de bus')
#importation de l'image
st.image("Plan_bus.png", caption=None, width=None, use_column_width=None, clamp=False, channels="RGB", output_format="auto")
