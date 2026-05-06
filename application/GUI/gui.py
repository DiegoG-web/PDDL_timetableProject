
import streamlit as st
import pandas as pd
import os
import subprocess

#comment for standard width
st.set_page_config(layout="wide")

#title for the page
st.title("Timetable Planner")

#checks for the flags existance
if "fileSavedFlag" not in st.session_state:
    st.session_state["fileSavedFlag"] = False
if "problemGeneratedFlag" not in st.session_state:
    st.session_state["problemGeneratedFlag"] = False
if "plannerRunFlag" not in st.session_state:
    st.session_state["plannerRunFlag"] = False
if "problemGeneratedAbsPath" not in st.session_state:
    st.session_state["problemGeneratedAbsPath"] = ""
if "outputPlanFileName" not in st.session_state:
    st.session_state["outputPlanFileName"] = ""
if "uploadedFile" not in st.session_state:
    st.session_state["uploadedFile"] = False
if "uploadedFiles" not in st.session_state:
    st.session_state["uploadedFiles"] = {}
if "uploader_key" not in st.session_state:
    st.session_state["uploader_key"] = 0
if "editedDataframes" not in st.session_state:
    st.session_state["editedDataframes"] = {}
    

def resetFlags():
    st.session_state["fileSavedFlag"] = False
    st.session_state["problemGeneratedFlag"] = False
    st.session_state["plannerRunFlag"] = False
    st.session_state["problemGeneratedAbsPath"] = ""
    st.session_state["outputPlanFileName"] = ""


#drawing the file uploader
uploaded_file = st.file_uploader(
    "Choose an xlsx file for a quick setup", 
    type="xlsx", 
    key=st.session_state["uploader_key"]
)
if uploaded_file is not None:
    INPUT = uploaded_file
    #check for resetting flags
    if uploaded_file.name not in st.session_state["uploadedFiles"]:
        st.session_state["uploadedFiles"] = {}
        st.session_state["uploadedFiles"][uploaded_file.name] = True
        resetFlags()
    #we save it into the standard file so the next time we open the application it is already loaded
    with open("../V5/problemGenerator/timetablingTemplate.xlsx", "wb") as f:
        f.write(uploaded_file.getbuffer())
    st.session_state["uploadedFile"] = True
    INPUT = "../V5/problemGenerator/timetablingTemplate.xlsx"

    #Increment the key to destroy the old uploader and create a empty one
    st.session_state["uploader_key"] += 1
    st.rerun()
else:
    INPUT = "../V5/problemGenerator/timetablingTemplate.xlsx"

# setting the state of the gui, at once
if "timetableDataframeDict" not in st.session_state or st.session_state["uploadedFile"] == True:
    try:
        st.session_state["timetableDataframeDict"] = pd.read_excel(INPUT, sheet_name=None)   #loads all sheets into a dictionary of DataFrames, like a matrix, in a dict
        st.session_state["uploadedFile"] = False 
    except FileNotFoundError:
        st.error(f"did not find {INPUT}")
        st.stop()


#defining and using tabs
tab1, tab2, tab3 = st.tabs(
    #["Corsi", "Disponibilità Professori", "Disponibilità aule", "Disponibilità gruppiStudenti", "Configurazione", 
    ["Dati","Utilizzo", "Output"])

with tab1:
    #st.header("Dati")

    tab4, tab5, tab6, tab7, tab8 = st.tabs(["Corsi","Disponibilità Professori", "Disponibilità Aule", "Disponibilità GruppiStudenti", "Pausa Pranzo"])
    with tab4:
        #st.header("Corsi")
        # save the output back into session_state
        st.session_state["editedDataframes"]["corsi"] = st.data_editor(
            st.session_state["timetableDataframeDict"]["corsi"], #dataframe
            key=f"editorCorsi", #which st.data_editor is working on screen at that moment, keeping trak of all the changes made
            width='stretch',
            on_change=resetFlags,
            num_rows="dynamic"
        )
    with tab5:
        #st.header("Disponibilità Professori")
        # save the output back into session_state
        st.session_state["editedDataframes"]["disponibilitàProfessori"] = st.data_editor(
            st.session_state["timetableDataframeDict"]["disponibilitàProfessori"], #dataframe
            key=f"editorDisponibilitàProfessori", #which st.data_editor is working on screen at that moment, keeping trak of all the changes made
            width='stretch',
            on_change=resetFlags,
            num_rows="dynamic"
    )


    with tab6:
        #st.header("Disponibilità aule")
        # save the output back into session_state
        st.session_state["editedDataframes"]["disponibilitàAule"] = st.data_editor(
            st.session_state["timetableDataframeDict"]["disponibilitàAule"], #dataframe
            key=f"editorDisponibilitàAule", #which st.data_editor is working on screen at that moment, keeping trak of all the changes made
            width='stretch',
            on_change=resetFlags,
            num_rows="dynamic"
        )
    with tab7:
        #st.header("Disponibilità gruppiStudenti")
        # save the output back into session_state
        st.session_state["editedDataframes"]["disponibilitàGruppiStudenti"] = st.data_editor(
            st.session_state["timetableDataframeDict"]["disponibilitàGruppiStudenti"], #dataframe
            key=f"editorDisponibilitàGruppiStudenti", #which st.data_editor is working on screen at that moment, keeping trak of all the changes made
            width='stretch',
            on_change=resetFlags,
            num_rows="dynamic"
        )
    with tab8:
        #st.header("Pausa pranzo")
        # save the output back into session_state
        st.session_state["editedDataframes"]["configurazione"] = st.data_editor(
            st.session_state["timetableDataframeDict"]["configurazione"], #dataframe
            key=f"editorConfigurazione",#which st.data_editor is working on screen at that moment, keeping trak of all the changes made
            width='stretch',
            on_change=resetFlags,
            num_rows="dynamic"
        )
with tab2:
    if st.button("Reset Flags"):
        resetFlags()
    
    st.write("### Saving Edited Data")
    st.write("Save your changes to storage before starting the problemGenerator")
    
    # saving, type="primary" for red
    if st.button("Save to storage", type="primary"):
        with pd.ExcelWriter(INPUT) as writer:
            for sheet_name, df in st.session_state["editedDataframes"].items():
                df.to_excel(writer, sheet_name=sheet_name, index=False)

        st.session_state["timetableDataframeDict"] = st.session_state["editedDataframes"].copy()
        st.success(f"Saved as `{INPUT}` in the gui folder")
        st.session_state["fileSavedFlag"] = True

    st.divider()

    if st.session_state["fileSavedFlag"] == True:
        if st.button("Generate the problem"):
            with st.spinner("Running script..."):
                s = subprocess.getstatusoutput(f'cd .. && cd V5/problemGenerator && python problemGenerator.py')
                print(s[1])
                st.session_state["problemGeneratedAbsPath"] = s[1]

                if s[0] == 0:#check if exit code is okk
                    st.success("Problem generated successfully")
                    st.write(f"as {st.session_state['problemGeneratedAbsPath']}")
                    st.session_state["problemGeneratedFlag"] = True
    else:
        st.info("Please save your changes to storage before starting the problemGenerator")
    
    st.divider()
    
    if st.session_state["problemGeneratedFlag"] == True:
        batFileName = ""

        col1, col2, col3 = st.columns(3)

        with col1:
            if st.button("Run SatisficingPlanning (Standard)", use_container_width=True):
                batFileName="run-enhspSatisficingPlanning.bat"

        with col2:
            if st.button("Run OptimalPlanning", use_container_width=True):
                batFileName="run-enhspOptimalPlanning.bat"

        with col3:
            if st.button("Run 3 (TODO)", use_container_width=True):
                print("TODO")
    
        if batFileName != "":
            with st.spinner("Running planner..."):
                s = subprocess.getstatusoutput(f'cd .. && cd V5 && .\\{batFileName} problemGenerator\\problemGenerati\\domainV5.pddl {st.session_state["problemGeneratedAbsPath"]}')
                partsOfOutput=s[1].split("\n\n")

                try:
                    groundingTime = int(partsOfOutput[0].split("\n")[3].split(" ")[2])
                    planningTime = int(partsOfOutput[2].split("\n")[2].split(" ")[3])
                    totalTime = groundingTime + planningTime
                
                    if s[0] == 0: #check if exit code is okk
                        st.success("Planner run successfully, check OUTPUT tab for formatted outut")
                        st.write("### TotalTime: groundingTime + planningTime")
                        st.write(f"#### TotalTime: {totalTime}ms")
                        st.text(f"groundingTime: {groundingTime}ms")
                        st.text(f"planningTime: {planningTime}ms")
                        st.write("### DETAILS:")
                        st.text(partsOfOutput[2])
                        st.write("### PLAN:")
                        st.text(partsOfOutput[1])
                        st.session_state["plannerRunFlag"] = True
                        st.session_state["outputPlanFileName"] = partsOfOutput[3]
                except: 
                    st.error("Error parsing planner output or out of memory error")

    else:
        st.info("Please generate a problem before running the planner")

with tab3:
    st.header("Build output")
    if st.session_state["plannerRunFlag"] == True:
        if st.button("Tabular output", type="primary"):

            script_dir = os.path.dirname(os.path.abspath(__file__)) # capiamo dove siamo
            parent = os.path.dirname(script_dir)
            planDir=parent+"\V5\logsPDDL\\"+st.session_state["outputPlanFileName"] # cerco tutti i file di log giusti
            
            #building the output
            with open(planDir) as f:
                fileContents = f.read()
                lines=fileContents.split("\n")
                filteredLines = []
                gruppiStudenti = []
                for line in lines:
                    line = line.strip().strip("()")
                    if line.startswith("assegna"):
                        lineContents=line.split(" ")
                        filteredLines.append(lineContents)
                        if lineContents[len(lineContents)-1] not in gruppiStudenti:
                            gruppiStudenti.append(lineContents[len(lineContents)-1])

                for gruppoStudenti in gruppiStudenti:
                    data = {
                        "mon": ["", "", "", "", "", "", "", "", "", "", ""],
                        "tue": ["", "", "", "", "", "", "", "", "", "", ""],
                        "wed": ["", "", "", "", "", "", "", "", "", "", ""],
                        "thu": ["", "", "", "", "", "", "", "", "", "", ""],
                        "fri": ["", "", "", "", "", "", "", "", "", "", ""]
                    }
                    for filteredLine in filteredLines:
                        if filteredLine[len(filteredLine)-1] == gruppoStudenti:
                            contents=[]
                            contents.append(filteredLine[1])
                            contents.append(filteredLine[len(filteredLine)-3])
                            contents.append(filteredLine[len(filteredLine)-2])
                            if filteredLine[0][7]=="2":
                                
                                riga=int(filteredLine[2][3:])-8
                                data[filteredLine[2][:3]][riga] = contents[0]+", "+contents[1]+", "+contents[2]
                                data[filteredLine[2][:3]][riga+1] = contents[0]+", "+contents[1]+", "+contents[2]

                            if filteredLine[0][7]=="3":
                                riga=int(filteredLine[2][3:])-8
                                data[filteredLine[2][:3]][riga] = contents[0]+", "+contents[1]+", "+contents[2]
                                data[filteredLine[2][:3]][riga+1] = contents[0]+", "+contents[1]+", "+contents[2]
                                data[filteredLine[2][:3]][riga+2] = contents[0]+", "+contents[1]+", "+contents[2]

                            if filteredLine[0][7]=="4":
                                riga=int(filteredLine[2][3:])-8
                                data[filteredLine[2][:3]][riga] = contents[0]+", "+contents[1]+", "+contents[2]
                                data[filteredLine[2][:3]][riga+1] = contents[0]+", "+contents[1]+", "+contents[2]
                                data[filteredLine[2][:3]][riga+2] = contents[0]+", "+contents[1]+", "+contents[2]
                                data[filteredLine[2][:3]][riga+3] = contents[0]+", "+contents[1]+", "+contents[2]

                            
                    df = pd.DataFrame(data, index = ["08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18"])
                    #print(df)
                    st.write(gruppoStudenti)
                    st.write(df)
    else:
        st.info("Please run the planner before visualising the ouptput")

