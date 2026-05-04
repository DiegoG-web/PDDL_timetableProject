@echo off
echo Avvio del Timetable Planner in corso...

call C:\Users\gaibo\miniconda3\Scripts\activate.bat planning

cd "C:\Users\gaibo\Desktop\Universita\Sistemi_Intelligenti\PDDL_timetableProject\application\GUI"

streamlit run gui.py