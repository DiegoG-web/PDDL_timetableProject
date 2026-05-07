# Timetable Planner

Pianificatore logico per la generazione di orari universitari utilizzando il PDDL (Planning Domain Definition Language). 
Progetto sviluppato per il corso di Sistemi Intelligenti (ITID).

Studenti **Calderara** e **Gaibotti**.

## Architettura e sviluppo incrementale

Il progetto è strutturato secondo un approccio incrementale. Ogni versione aggiunge nuovi vincoli e complessità allo scheduling, partendo da un modello base fino ad arrivare a un'ottimizzazione avanzata basata sui costi.

* **V1:** 1 Corso, 1 Aula, N Materie, vincolo max 8 ore giornaliere. *(Work in Progress)*
* **V2:** Aggiunta di vincoli come pausa pranzo e max 4 ore consecutive per materia. *(Da implementare)*
* **V3:** Introduzione di *professori, aule*.
* **V4:** Introduzione dei *gruppiStudenti*.
* **V%:** Creazione *problemGenerator.py*.
* **GUI**

## Cosa usiamo?

Per eseguire i file di questo progetto, è necessario avere a disposizione:
* Java 17+
* Il motore di pianificazione **ENHSP**.
* **Visual Studio Code** con l'estensione *PDDL* di Jan Dolejší per praticità

## Come avviare il Timetable Planner?

Per utilizzare l'applicazione da noi sviluppata assicurarsi di avere installato la libreria **streamlit** e **pandas**

```
pip install streamlit
pip install pandas
```

Successivamente posizionarsi in `\PDDL_timetableProject\application\GUI` ed eseguire `streamlit run gui.py`.
Si aprirà una tab nel vostro browser con l'applicazione grafica. Eseguire le indicazioni a video ed esplorare l'app.

I file di esempio, con diverse difficoltà si trovano in `\PDDL_timetableProject\application\GUI\xlsx`. 
Caricarli per un utilizzo più semplice.

## Come testare le versioni precedenti senza GUI?

Posizionarsi nella cartella della versione desiderata e lanciare ENHSP da terminale passando il file di dominio e il file del problema.

Oppure utilizzare l'estensione **PDDL** attraverso VScode. Posizionarsi nel problem or domain da testare:

* CTRL+ALT+P > create new planner configuration > Select an executable from this computer > select the "run-enhsp.bat" located in that vertion folder
* ALT+P > No options (use defaults) > wait for the output of the planner(saved in the atomatically created "logsPDDL" folder)

Feel free to edit the "run-enhsp.bat" configurations.