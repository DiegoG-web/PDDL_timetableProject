import pandas as pd

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


dataFramesDisponibilitàProfessori = sheets["disponibilitàProfessori"]
for index, row in dataFramesDisponibilitàProfessori.iterrows():
    objStr += f"{row['professore']}\n"
objStr += "- professore\n\n"

dataFramesDisponibilitàAule = sheets["disponibilitàAule"]
for index, row in dataFramesDisponibilitàAule.iterrows():
    objStr += f"{row['aula']}\n"
objStr += "- aula\n\n"

dataFramesDisponibilitàScdla = sheets["disponibilitàScdla"]
for index, row in dataFramesDisponibilitàScdla.iterrows():
    objStr += f"{row['scdla']}\n"
objStr += "- scdla\n"

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
)

(:goal (and
{goalStr}
))
(:metric minimize (total-cost))
)
"""
print(problemContent)


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