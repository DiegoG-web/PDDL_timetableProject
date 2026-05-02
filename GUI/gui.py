
import streamlit as st
import pandas as pd
#import os


INPUT = "timetablingTemplate.xlsx"

# setting the state of the gui, at once
if "timetableDataframeDict" not in st.session_state:
    try:
        st.session_state["timetableDataframeDict"] = pd.read_excel(INPUT, sheet_name=None)   #loads all sheets into a dictionary of DataFrames, like a matrix, in a dict
    except FileNotFoundError:
        st.error(f"did not find {INPUT}")
        st.stop()

#sheets = pd.read_excel(INPUT, sheet_name=None)

st.title("Timetable Planner")

tab1, tab2, tab3, tab4, tab5, tab6, tab7 = st.tabs(
    ["Corsi", "Disponibilità Professori", "Disponibilità aule", 
     "Disponibilità gruppiStudenti", "configurazione", "utilizzo", "output"])

with tab1:
    dataFramesCourses = st.session_state["timetableDataframeDict"]["corsi"]
    st.header("Corsi")
    if st.toggle("Enable editing"):
        edited_data = st.data_editor(dataFramesCourses, use_container_width=True)
    else:
        st.dataframe(dataFramesCourses, use_container_width=True)
with tab2:
    st.header("Disponibilità Professori")
    # save the output back into session_state
    st.session_state["timetableDataframeDict"]["disponibilitàProfessori"] = st.data_editor(
        st.session_state["timetableDataframeDict"]["disponibilitàProfessori"], #dataframe
        key=f"editor{'DisponibilitàProfessori'}", #every editor needs a unique key
        use_container_width=True
    )
with tab6:
    st.write("### Saving Edited Data")
    st.write("Save your changes to storage before starting the problemGenerator")
    
    # saving, type="primary" for enphasis
    if st.button("Save to storage", type="primary"):
        with pd.ExcelWriter(INPUT) as writer:
            for sheet_name, df in st.session_state["timetableDataframeDict"].items():
                df.to_excel(writer, sheet_name=sheet_name, index=False)
        
        st.success(f"Saved as `{INPUT}` in the gui folder")
        
        st.session_state["fileSavedFlag"] = True





