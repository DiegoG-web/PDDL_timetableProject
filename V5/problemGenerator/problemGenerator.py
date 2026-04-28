import pandas as pd

problem = "problemBrandoV5"
domain = "domainBrandoV5"
objStr = ""
initStr = ""
goalStr = ""

excel_file = "timetablingTemplate.xlsx"
sheets = pd.read_excel(excel_file, sheet_name=None) #loads all sheets into a dictionary of DataFrames, like a matrix

compressedCourses = []
# 1. Extracting Courses, Hours, and Assignments
dataFramesCourses = sheets["corsi"]
for index, row in dataFramesCourses.iterrows():
    compressedCourses = row["corso"]
    totalHours = row["ore settimanali"]
    #prof = row["professore"]
    #scdla = row["studentiCorsoDiLaureaAnno scdla"]

    singleHourCoursePortions = []
    for i in range(row["ore settimanali"]):
        singleHourCoursePortions.append(f"{row['corso']}_{i+1}")

    newLine = "\n"
    objStr += f"{newLine.join(singleHourCoursePortions)}\n"
    
    # Here you can generate your PDDL objects:
    # e.g. for i in range(1, total_hours + 1):
    # print(f"{course_base_name}_{i}")
objStr += "- corso\n"
# # 2. Extracting Availability (e.g., Professor Availability)
# df_prof_avail = sheets["3_Prof_Availability"]

# # Set the Professor name as the index to easily lookup timeslots
# df_prof_avail.set_index('Professor', inplace=True)

# for prof_name in df_prof_avail.index:
#     for timeslot in df_prof_avail.columns:
#         is_available = df_prof_avail.loc[prof_name, timeslot]
        
#         if is_available == 1:
#             # Generate PDDL: (profDisponibile {prof_name} {timeslot})
#             pass




# #multi-line f-strings
# # 1. Build the Objects string
# obj_str = f"{robot_name} - robot\n    "
# obj_str += f"{' '.join(locations)} - location\n    "
# obj_str += f"{' '.join(packages)} - package"

# # 2. Build the Init string
# init_str = f"(at {robot_name} {robot_start})\n    "
# for pkg, loc in package_destinations.items():
#     # Let's assume packages start where the robot starts for this example
#     init_str += f"(at {pkg} {robot_start})\n    "

# # 3. Build the Goal string
# goal_str = " ".join([f"(at {pkg} {dest})" for pkg, dest in package_destinations.items()])

# 4. Final Assembly using a multi-line f-string
problemContent = f"""(define (problem {problem}) (:domain {domain})
(:objects
{objStr}
)

(:init

)

(:goal (and

))
(:metric minimize (total-cost))
)
"""
print(problemContent)