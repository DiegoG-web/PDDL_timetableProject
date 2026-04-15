# Timetable Planner

Pianificatore logico per la generazione di orari universitari utilizzando il PDDL (Planning Domain Definition Language). 
Progetto sviluppato per il corso di Sistemi Intelligenti (ITID).
Studenti **Calderara** e **Gaibotti**.

## Architettura e sviluppo incrementale

Il progetto è strutturato secondo un approccio incrementale. Ogni versione aggiunge nuovi vincoli e complessità allo scheduling, partendo da un modello base fino ad arrivare a un'ottimizzazione avanzata basata sui costi.

* **V1:** 1 Corso, 1 Aula, N Materie, vincolo max 8 ore giornaliere. *(Work in Progress)*
* **V2:** Aggiunta di vincoli come pausa pranzo e max 4 ore consecutive per materia. *(Da implementare)*
* **V3:** Introduzione dei *costi*. *(Da implementare)*

## Cosa usiamo?

Per eseguire i file di questo progetto, è necessario avere a disposizione:
* Java 17+
* Il motore di pianificazione **ENHSP**.
* **Visual Studio Code** con l'estensione *PDDL* di Jan Dolejší per praticità

## Come avviare il planner?

Posizionarsi nella cartella della versione desiderata e lanciare ENHSP da terminale passando il file di dominio e il file del problema.

* CTRL+ALT+P
* ALT+P