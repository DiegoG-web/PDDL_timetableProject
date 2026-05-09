# Timetable Planner

Pianificatore logico per la generazione di orari universitari utilizzando il PDDL (Planning Domain Definition Language). 
Progetto sviluppato per il corso di Sistemi Intelligenti (ITID).

Studenti **Calderara** e **Gaibotti**.

## Architettura e sviluppo incrementale

Il progetto è strutturato secondo un approccio incrementale. Ogni versione aggiunge nuovi vincoli e complessità allo scheduling, partendo da un modello base fino ad arrivare a un'ottimizzazione avanzata basata sui costi.

* **V1:** 1 Corso, 1 Aula, N Materie.
* **V2:** Aggiunta di vincoli come pausa pranzo.
* **V3:** Introduzione di *professori, aule*.
* **V4:** Introduzione dei *gruppiStudenti*.
* **V5:** Creazione *problemGenerator.py*.
* **GUI** Tabular input, elaborazione, tabular output

## Cosa usiamo?

Per eseguire i file di questo progetto, è necessario avere a disposizione:
* Java 17+
* Il motore di pianificazione **ENHSP**(incluso nella repository).
* **Visual Studio Code** con l'estensione *PDDL* di Jan Dolejší per praticità
* Python 

## Come avviare il Timetable Planner?

Per utilizzare l'applicazione grafica da noi sviluppata assicurarsi di avere installato la libreria **streamlit** e **pandas**

```
pip install streamlit
pip install pandas
```

Successivamente posizionarsi in `\PDDL_timetableProject\application\GUI` ed eseguire `streamlit run gui.py`.
Si aprirà una tab nel vostro browser con l'applicazione grafica. Eseguire le indicazioni a video ed esplorare l'app.

I file di esempio, con diverse difficoltà crescenti si trovano in `\PDDL_timetableProject\application\GUI\xlsx`. 
Caricarli per un utilizzo più semplice.

## Come testare le versioni precedenti senza GUI?

Posizionarsi nella cartella della versione desiderata e lanciare ENHSP da terminale passando il file di dominio e il file del problema.

Oppure utilizzare l'estensione **PDDL** attraverso VS Code. Posizionarsi nel problem or domain da testare:

* CTRL+ALT+P > create new planner configuration > Select an executable from this computer > Selezione il "run-enhsp.bat" posizionato nel folder di quella specifica versione
* ALT+P > No options (use defaults) > Aspettare l'output del planner(salvato automaticamente nel folder "logsPDDL")

Sentirsi liberi di modificare le configurazioni del file "run-enhsp.bat".