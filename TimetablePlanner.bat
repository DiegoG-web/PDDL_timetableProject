@echo off
echo Avvio del Timetable Planner in corso...

call C:\Users\gaibo\miniconda3\Scripts\activate.bat patty

cd /d "C:\Users\gaibo\Desktop\Universita\Sistemi Intelligenti\PDDL_timetableProject\application\GUI"

streamlit run gui.py