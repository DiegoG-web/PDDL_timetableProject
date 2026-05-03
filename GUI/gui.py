
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

if "fileSavedFlag" not in st.session_state:
    st.session_state["fileSavedFlag"] = False
if "problemGeneratedFlag" not in st.session_state:
    st.session_state["problemGeneratedFlag"] = False
if "plannerRunFlag" not in st.session_state:
    st.session_state["plannerRunFlag"] = False

def resetFlags():
    st.session_state["fileSavedFlag"] = False
    st.session_state["problemGeneratedFlag"] = False
    st.session_state["plannerRunFlag"] = False

#sheets = pd.read_excel(INPUT, sheet_name=None)

st.title("Timetable Planner")

tab1, tab2, tab3, tab4, tab5, tab6, tab7 = st.tabs(
    ["Corsi", "Disponibilità Professori", "Disponibilità aule", 
     "Disponibilità gruppiStudenti", "Configurazione", "Utilizzo", "Output"])

with tab1:
    st.header("Corsi")
    # save the output back into session_state
    st.session_state["timetableDataframeDict"]["corsi"] = st.data_editor(
        st.session_state["timetableDataframeDict"]["corsi"], #dataframe
        key=f"editorCorsi", #which st.data_editor is working on the screen at that moment, keeping track of all the changes made
        use_container_width=True,
        on_change=resetFlags
    )
with tab2:
    st.header("Disponibilità Professori")
    # save the output back into session_state
    st.session_state["timetableDataframeDict"]["disponibilitàProfessori"] = st.data_editor(
        st.session_state["timetableDataframeDict"]["disponibilitàProfessori"], #dataframe
        key=f"editorDisponibilitàProfessori", #which st.data_editor is working on the screen at that moment, keeping track of all the changes made
        use_container_width=True,
        on_change=resetFlags
    )
with tab3:
    st.header("Disponibilità aule")
    # save the output back into session_state
    st.session_state["timetableDataframeDict"]["disponibilitàAule"] = st.data_editor(
        st.session_state["timetableDataframeDict"]["disponibilitàAule"], #dataframe
        key=f"editorDisponibilitàAule", #which st.data_editor is working on the screen at that moment, keeping track of all the changes made
        use_container_width=True,
        on_change=resetFlags
    )
with tab4:
    st.header("Disponibilità gruppiStudenti")
    # save the output back into session_state
    st.session_state["timetableDataframeDict"]["disponibilitàGruppiStudenti"] = st.data_editor(
        st.session_state["timetableDataframeDict"]["disponibilitàGruppiStudenti"], #dataframe
        key=f"editorDisponibilitàGruppiStudenti", #which st.data_editor is working on the screen at that moment, keeping track of all the changes made
        use_container_width=True,
        on_change=resetFlags
    )
with tab5:
    st.header("Configurazione")
    # save the output back into session_state
    st.session_state["timetableDataframeDict"]["configurazione"] = st.data_editor(
        st.session_state["timetableDataframeDict"]["configurazione"], #dataframe
        key=f"editorConfigurazione",#which st.data_editor is working on the screen at that moment, keeping track of all the changes made
        use_container_width=True,
        on_change=resetFlags
    )
with tab6:
    if st.button("Reset Flags"):
        resetFlags()
    
    st.write("### Saving Edited Data")
    st.write("Save your changes to storage before starting the problemGenerator")
    
    # saving, type="primary" for enphasis
    if st.button("Save to storage", type="primary"):
        with pd.ExcelWriter(INPUT) as writer:
            for sheet_name, df in st.session_state["timetableDataframeDict"].items():
                df.to_excel(writer, sheet_name=sheet_name, index=False)
        
        st.success(f"Saved as `{INPUT}` in the gui folder")
        
        st.session_state["fileSavedFlag"] = True
    #else:
        #st.session_state["fileSavedFlag"] = False



    st.divider()

    if st.session_state["fileSavedFlag"] == True:
        if st.button("Generate the problem"):
            with st.spinner("Running script..."):
                
                
                st.success("Problem generated successfully")
                st.session_state["problemGeneratedFlag"] = True
    else:
        st.info("Please save your changes to storage before starting the problemGenerator")
        #st.session_state["problemGeneratedFlag"] = False
    
    st.divider()

    
    if st.session_state["problemGeneratedFlag"] == True:
        if st.button("Run the planner"):
            with st.spinner("Running planner..."):
                
                
                st.success("Planner run successfully")
                st.session_state["plannerRunFlag"] = True
    else:
        st.info("Please generate a problem before running the planner")
        #st.session_state["plannerRunFlag"] = False


