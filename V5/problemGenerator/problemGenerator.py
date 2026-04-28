import pandas as pd
import itertools
from datetime import datetime

def generateCourseCombinations(predicateName, elements, length):
    if len(elements) < length:
        return ""
    courseCombinationsStr = ""
    #unordered combinations of specific lengths from a given set.
    # order does not matter
    combinations = itertools.combinations(elements, length)
    
    for combination in combinations:
        # build a line
        #singleLine = f"({predicateName} {" ".join(map(str, combination))})\n"
        singleLine = f"({predicateName} {' '.join(map(str, combination))})\n"
        courseCombinationsStr += singleLine
    return courseCombinationsStr + "\n"

def generateFasceOrarieWindows(predicateName, elements, length):
    fasceOrarieWindowsStr = ""
    for i in range(len(elements) - length + 1):
        window = elements[i:i + length]
        
        singleLine = f"({predicateName} {' '.join(map(str, window))})\n"
        fasceOrarieWindowsStr += singleLine
    return fasceOrarieWindowsStr + "\n"

def main():
    problem = "problemBrandoV5"
    domain = "domainBrandoV5"
    objStr = ""
    initStr = ""
    goalStr = ""

    excel_file = "timetablingTemplate.xlsx"
    sheets = pd.read_excel(excel_file, sheet_name=None) #loads all sheets into a dictionary of DataFrames, like a matrix

    compressedCourses = []
    profs = []
    # Courses, Hours
    dataFramesCourses = sheets["corsi"]
    for index, row in dataFramesCourses.iterrows():
        compressedCourses = row["corso"]
        totalHours = row["ore settimanali"]
        #prof = row["professore"]
        #scdla = row["studentiCorsoDiLaureaAnno scdla"]

        singleHourCoursePortions = []
        singleHourCoursePortionsRelatedProfessor = []
        singleHourCoursePortionsRelatedScdla = []
        for i in range(row["ore settimanali"]):
            singleHourCoursePortions.append(f"{row['corso']}_{i+1}")
            singleHourCoursePortionsRelatedProfessor.append(f"{row['professore']} {row['corso']}_{i+1}")
            singleHourCoursePortionsRelatedScdla.append(f"{row['studentiCorsoDiLaureaAnno scdla']} {row['corso']}_{i+1}")

        initStr += generateCourseCombinations("coppiaCorsi", singleHourCoursePortions, 2)
        initStr += generateCourseCombinations("triadeCorsi", singleHourCoursePortions, 3)
        initStr += generateCourseCombinations("quartettoCorsi", singleHourCoursePortions, 4)

        
        newLineInitInsegna = ")\n(insegna "
        initStr += f"(insegna {newLineInitInsegna.join(singleHourCoursePortionsRelatedProfessor)})\n"
        initStr += "\n"

        newLineInitFrequenta = ")\n(frequenta "
        initStr += f"(frequenta {newLineInitFrequenta.join(singleHourCoursePortionsRelatedScdla)})\n"
        initStr += "\n"

        newLine = "\n"
        objStr += f"{newLine.join(singleHourCoursePortions)}\n"

        newLineGoal = ")\n(fissato "
        goalStr += f"(fissato {newLineGoal.join(singleHourCoursePortions)})\n"
    objStr += "- corso\n\n"

    # (profDisponibile Sisinni mon08)
    #         (profDisponibile Sisinni mon09)
    #         (profDisponibile Sisinni mon10)
    #         (profDisponibile Sisinni mon11)
    #         (profDisponibile Sisinni mon12)
    #         (profDisponibile Sisinni mon13)
    #         (profDisponibile Sisinni mon14)
    #         (profDisponibile Sisinni mon15)
    #         (profDisponibile Sisinni mon16)
    #         (profDisponibile Sisinni mon17)
    #         (profDisponibile Sisinni mon18)

    dataFramesDisponibilitàProfessori = sheets["disponibilitàProfessori"]
    for index, row in dataFramesDisponibilitàProfessori.iterrows():
        objStr += f"{row['professore']}\n"

        disponibilità = row.drop('professore') 
        
        for fasciaOraria, valore in disponibilità.items():
            if valore == 1:
                initStr += f"(profDisponibile {row['professore']} {fasciaOraria})\n"
    objStr += "- professore\n\n"
    initStr += "\n"

    dataFramesDisponibilitàAule = sheets["disponibilitàAule"]
    for index, row in dataFramesDisponibilitàAule.iterrows():
        objStr += f"{row['aula']}\n"
        
        disponibilità = row.drop('aula') 
        
        for fasciaOraria, valore in disponibilità.items():
            if valore == 1:
                initStr += f"(aulaDisponibile {row['aula']} {fasciaOraria})\n"
    objStr += "- aula\n\n"
    initStr += "\n"

    
    dataFramesDisponibilitàScdla = sheets["disponibilitàScdla"]
    #orarioPausaPranzo = str(sheets["configurazione"].at['orario nel quale inserire un ora di pausa pranzo', 'valori'])
    orarioPausaPranzo = str(sheets["configurazione"].iat[1, 1])[:2]
    for index, row in dataFramesDisponibilitàScdla.iterrows():
        objStr += f"{row['scdla']}\n"
        
        disponibilità = row.drop('scdla') 
        
        for fasciaOraria, valore in disponibilità.items():
            #print(f"DEBUG: Confronto '{fasciaOraria[-2:]}' (tipo: {type(fasciaOraria[-2:])}) con '{orarioPausaPranzo}' (tipo: {type(orarioPausaPranzo)})")
            if valore == 1 and fasciaOraria[-2:] != orarioPausaPranzo:
                initStr += f"(scdlaDisponibile {row['scdla']} {fasciaOraria})\n"
    objStr += "- scdla\n"
    initStr += "\n"

    days = ["mon", "tue", "wed", "thu", "fri"]
    for day in days:
        fasceOrarieGiornaliere = []
        for i in range(8, 19):
            fasceOrarieGiornaliere.append(f"{day}{i:02d}")
        initStr += generateFasceOrarieWindows("coppiaFasceOrarie", fasceOrarieGiornaliere, 2)
        initStr += generateFasceOrarieWindows("triadeFasceOrarie", fasceOrarieGiornaliere, 3)
        initStr += generateFasceOrarieWindows("quartettoFasceOrarie", fasceOrarieGiornaliere, 4)
    

    


    # multi-line f-string
    problemContent = f"""(define (problem {problem}) (:domain {domain})
(:objects
{objStr}
mon08
mon09
mon10
mon11
mon12
mon13
mon14
mon15
mon16
mon17
mon18

tue08
tue09
tue10
tue11
tue12
tue13
tue14
tue15
tue16
tue17
tue18

wed08
wed09
wed10
wed11
wed12
wed13
wed14
wed15
wed16
wed17
wed18

thu08
thu09
thu10
thu11
thu12
thu13
thu14
thu15
thu16
thu17
thu18

fri08
fri09
fri10
fri11
fri12
fri13
fri14
fri15
fri16
fri17
fri18 - fasciaOraria
)

(:init
{initStr}
(= (costoFasciaOraria mon08) 1)
(= (costoFasciaOraria mon09) 2)
(= (costoFasciaOraria mon10) 3)
(= (costoFasciaOraria mon11) 4)
(= (costoFasciaOraria mon12) 5)
(= (costoFasciaOraria mon13) 6)
(= (costoFasciaOraria mon14) 7)
(= (costoFasciaOraria mon15) 8)
(= (costoFasciaOraria mon16) 9)
(= (costoFasciaOraria mon17) 10)
(= (costoFasciaOraria mon18) 11)
(= (costoFasciaOraria tue08) 1)
(= (costoFasciaOraria tue09) 2)
(= (costoFasciaOraria tue10) 3)
(= (costoFasciaOraria tue11) 4)
(= (costoFasciaOraria tue12) 5)
(= (costoFasciaOraria tue13) 6)
(= (costoFasciaOraria tue14) 7)
(= (costoFasciaOraria tue15) 8)
(= (costoFasciaOraria tue16) 9)
(= (costoFasciaOraria tue17) 10)
(= (costoFasciaOraria tue18) 11)
(= (costoFasciaOraria wed08) 1)
(= (costoFasciaOraria wed09) 2)
(= (costoFasciaOraria wed10) 3)
(= (costoFasciaOraria wed11) 4)
(= (costoFasciaOraria wed12) 5)
(= (costoFasciaOraria wed13) 6)
(= (costoFasciaOraria wed14) 7)
(= (costoFasciaOraria wed15) 8)
(= (costoFasciaOraria wed16) 9)
(= (costoFasciaOraria wed17) 10)
(= (costoFasciaOraria wed18) 11)
(= (costoFasciaOraria thu08) 1)
(= (costoFasciaOraria thu09) 2)
(= (costoFasciaOraria thu10) 3)
(= (costoFasciaOraria thu11) 4)
(= (costoFasciaOraria thu12) 5)
(= (costoFasciaOraria thu13) 6)
(= (costoFasciaOraria thu14) 7)
(= (costoFasciaOraria thu15) 8)
(= (costoFasciaOraria thu16) 9)
(= (costoFasciaOraria thu17) 10)
(= (costoFasciaOraria thu18) 11)
(= (costoFasciaOraria fri08) 1)
(= (costoFasciaOraria fri09) 2)
(= (costoFasciaOraria fri10) 3)
(= (costoFasciaOraria fri11) 4)
(= (costoFasciaOraria fri12) 5)
(= (costoFasciaOraria fri13) 6)
(= (costoFasciaOraria fri14) 7)
(= (costoFasciaOraria fri15) 8)
(= (costoFasciaOraria fri16) 9)
(= (costoFasciaOraria fri17) 10)
(= (costoFasciaOraria fri18) 11) 
)

(:goal (and
{goalStr}
))
(:metric minimize (total-cost))
)
    """
    print(problemContent)

    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")

    with open(f"problem_{timestamp}.pddl", "w") as file:
        file.write(problemContent)


"""     (fissato ?c - corso)
        (fasciaOrariaLibera ?f - fasciaOraria)
        
        ;(consecutive ?f1 - fasciaOraria ?f2 - fasciaOraria)
        (coppiaFasceOrarie ?f1 - fasciaOraria ?f2 - fasciaOraria)
        ;(stessoCorso ?c1 - corso ?c2 - corso)
        (coppiaCorso ?c1 - corso ?c2 - corso)
        (triadeFasceOrarie ?f1 - fasciaOraria ?f2 - fasciaOraria ?f3 - fasciaOraria)
        (triadeCorsi ?c1 - corso ?c2 - corso ?c3 - corso)
        (quartettoFasceOrarie ?f1 - fasciaOraria ?f2 - fasciaOraria ?f3 - fasciaOraria ?f4 - fasciaOraria)
        (quartettoCorsi ?c1 - corso ?c2 - corso ?c3 - corso ?c4 - corso)

        (insegna ?p - professore ?c - corso)
        (profDisponibile ?p - professore ?f - fasciaOraria)

        (aulaDisponibile ?a - aula ?f - fasciaOraria);introdurre una function per la capienza?

        (frequenta ?s - scdla ?c - corso)
        (scdlaDisponibile ?s - scdla ?f - fasciaOraria)"""

if __name__ == "__main__":
    main()