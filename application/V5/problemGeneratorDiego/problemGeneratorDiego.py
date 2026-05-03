import pandas as pd
import os
from datetime import datetime

def main():
    objStr = ""
    initStr = ""
    goalStr = ""

    excel_file = "timetablingTemplateDiego.xlsx"
    sheets = pd.read_excel(excel_file, sheet_name=None)
    valore_pausa = int(sheets["configurazione"].iloc[0, 1])
    ora_pausa_str = f"{valore_pausa:02d}"

    # corsi
    listaCorsi = []
    dataFramesCourses = sheets["corsi"]
    for index, row in dataFramesCourses.iterrows():
        corso = row["corso"]
        ore = row["ore settimanali"]
        prof = row["professore"]
        gruppo = row["gruppoStudenti"]

        listaCorsi.append(corso)

        initStr += f"(= (durataCorso {corso}) {ore})\n"
        initStr += f"(insegna {prof} {corso})\n"
        initStr += f"(frequenta {gruppo} {corso})\n\n"
        goalStr += f"(= (durataCorso {corso}) 0)\n"
    
    objStr += "\n".join(listaCorsi) + " - corso\n\n"

    #docenti
    #docenti
    listaDocenti = []
    dataFramesDisponibilitaProfessori = sheets["disponibilitàProfessori"]
    for index, row in dataFramesDisponibilitaProfessori.iterrows():
        prof = row['professore']
        if prof not in listaDocenti:
            listaDocenti.append(prof)

        disponibilita = row.drop('professore') 
        for fasciaOraria, valore in disponibilita.items():
            if str(fasciaOraria).endswith(ora_pausa_str): 
                continue
            if valore == 0:
                initStr += f"(docenteOccupato {prof} {fasciaOraria})\n"
                
    initStr += "\n"
    objStr += "\n".join(listaDocenti) + " - docente\n\n"

    #aule
    listaAule = []
    dataFramesAule = sheets["disponibilitàAule"]
    for index, row in dataFramesAule.iterrows():
        listaAule.append(row['aula'])

    for i in range(len(listaAule)):
        if i == 0:
            initStr += f"(aulaAttiva {listaAule[i]})\n"
        if i < len(listaAule) - 1:
            initStr += f"(prossimaAula {listaAule[i]} {listaAule[i+1]})\n"
    
    initStr += "\n"

    dfDispAule = sheets["disponibilitàAule"]
    for index, row in dfDispAule.iterrows():
        aula = row['aula']
        disp = row.drop('aula')
        for fasciaOraria, valore in disp.items():
            if str(fasciaOraria).endswith(ora_pausa_str): 
                continue
            if valore == 0:
                initStr += f"(occupata {aula} {fasciaOraria})\n"
                
    initStr += "\n"
    objStr += "\n".join(listaAule) + " - aula\n\n"
    
    #gruppoStudenti
    listaGruppi = []
    dfDispScdla = sheets["disponibilitàGruppiStudenti"]
    for index, row in dfDispScdla.iterrows():
        gruppo = row['scdla']
        listaGruppi.append(gruppo)
        
        disp = row.drop('scdla')
        for fasciaOraria, valore in disp.items():
            if str(fasciaOraria).endswith(ora_pausa_str): 
                continue
            if valore == 0:
                initStr += f"(gruppoStudentiOccupato {gruppo} {fasciaOraria})\n"
                
    initStr += "\n"
    objStr += "\n".join(listaGruppi) + " - gruppoStudenti\n\n"

    #fasce orarie
    listaFasceRaw = list(sheets["disponibilitàAule"].columns)[1:] 
    listaFasce = [str(f) for f in listaFasceRaw if not str(f).endswith(ora_pausa_str)]
    
    objStr += "cambioGiorno1\ncambioGiorno2\ncambioGiorno3\ncambioGiorno4\ncambioGiorno5 - fasciaOraria\n"
    objStr += "\n".join(listaFasce) + " - fasciaOraria\n\n"

    initStr += f"(= (costoAzione) 0)\n"
    initStr += f"(oraCorrente {listaFasce[0]})\n"
    initStr += f"(inizioSettimana {listaFasce[0]})\n"
    initStr += f"(fineSettimana cambioGiorno5)\n\n"

    giorni_dict = {"mon": [], "tue": [], "wed": [], "thu": [], "fri": []}
    for f in listaFasce:
        giorni_dict[f[:3]].append(f)

    pausaStr = ""
    nextStr = ""
    fineGiornataStr = ""
    occupataAuleStr = ""

    day_idx = 1
    for day, fasce in giorni_dict.items():
        if not fasce: continue

        for i in range(len(fasce) - 1):
            f_curr = fasce[i]
            f_next = fasce[i+1]
            
            h_curr = int(f_curr[-2:])
            h_next = int(f_next[-2:])
            
            if (h_next - h_curr == 2) and (h_curr + 1 == valore_pausa):
                pausaStr += f"(pausaPranzo {f_curr} {f_next})\n"
            else:
                nextStr += f"(next {f_curr} {f_next})\n"
                
        cg = f"cambioGiorno{day_idx}"
        nextStr += f"(next {fasce[-1]} {cg})\n"
        
        if day_idx < 5:
            next_day_first = list(giorni_dict.values())[day_idx][0]
            nextStr += f"(next {cg} {next_day_first})\n" 
            
        for f in fasce:
            fineGiornataStr += f"(fineGiornata {f} {cg})\n"
            
        for aula in listaAule:
            occupataAuleStr += f"(occupata {aula} {cg})\n"
            
        day_idx += 1

    initStr += pausaStr + "\n" + nextStr + "\n" + fineGiornataStr + "\n" + occupataAuleStr + "\n"

    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    problem_name = f"problem_{timestamp}"
    domain_name  = "domainDiegoV5"
    
    problemContent = f"""(define (problem {problem_name}) (:domain {domain_name})
    
    (:objects
        {objStr}
    )

    (:init
        {initStr}
    )

    (:goal (and
        {goalStr}
    ))

    (:metric minimize (costoAzione))
    )
    """
    
    output_dir = "problemGenerati"
    os.makedirs(output_dir, exist_ok=True)
    
    nome_file_output = os.path.join(output_dir, f"{problem_name}.pddl")
    
    with open(nome_file_output, "w") as file:
        file.write(problemContent)
        
    print(os.path.abspath(nome_file_output))

if __name__ == "__main__":
    main()