#import "template.typ": *

#show: resume.with(
  author: (
      firstname: "Tengs (Zheng)", 
      lastname: "Wu",
      email: "tengspenkwe@gmail.com", 
      phone: "236 308 6684",
      github: "Tengs-Penkwe",
      linkedin: "tengs-wu",
      positions: ()
  ),
  date:  datetime.today().display()
)

#resume_section("Skills")

// #skill_item(
//   "Geology",
//   ("Stratigraphy",
//    "Paleontology",
//    "Hydrology",
//  )
// )
#skill_item(
  "Language",
  (
    strong[C/C++],
    strong[JavaScript], 
    strong[TypeScript], 
    strong[Verilog],
    strong[Java],
    "Rust", 
    "Haskell", 
    "Prolog",
    "Assembly"
  )
)

#skill_item(
  "OS",
  (
    strong[Linux], 
    "Shell Scripting",
    "Systemd",
    "Makefile", 
    "Compiling",
    "Git",
    "Docker",
  )
)

#skill_item(
  "Remote-Sensing",
  (strong[Image Processing/Analysis],
  )
)

#skill_item(
  "Geo-Informatics",
  ( "GIS",
   "Disaster Monitoring/Prediction",
   "City Planning",
   "Mapping",
 )
)


/*
#resume_section("Experience")

#work_experience_item_header(
  "Aaaaaa Aaaaaaaa",
  "Aaaaaa Aaaaa Aaaaa, AA",
  "Software Engineer",
  "Jul. 0000 - Jul. 0000",
)

#resume_item[
  - *#lorem(10)*. #lorem(20)
  - #lorem(30)
  - #lorem(40)
  - #lorem(30)
]
*/

#resume_section("Projects")

#personal_project_item_header(
  "Enviromental Monitoring Using Remote Sensing",
  "China University of Geosciences",
  "Participant Researcher",
  "July 2020 - Apr 2021",
)

#resume_item[
  - Participated in the scientific research project _Using Landsat time-series images to explore the impact of land cover on urban surface heat island change_. Rated as “excellent” in the Provincial College Students' innovation and entrepreneurship training program.
]

#personal_project_item_header(
  "Image Processing & Analysis System",
  "China University of Geosciences",
  "Course Project",
  "Dec 2020 - Feb 2021",
)

#resume_item[
  - Developed an Image processing software using C++, incorporating a diverse range of image processing algorithms and advanced analysis techniques, empowers users to efficiently process RS images, extracting valuable information.
]

#personal_project_item_header(
  "Remote Sensing Data Collection & Analysis",
  "China University of Geosciences",
  "Summer Internship",
  "May 2021 - July 2021",
)

#resume_item[
  - Gathered time series remote sensing, DEM, and other multi-source data.
  - Conducted practical on-field data collection, refining skills.
  - Utilized GIS and RS software for thorough analysis of Remote Sensing (RS) and diverse source data, extracting valuable insights for improved understanding and actionable analyses.
]


#personal_project_item_header(
  "OpenMIPS CPU",
  "",
  "Personal Project",
  "Mar 2021 - Apr 2023",
)

#resume_item[
  - Created a openMIPS CPU using Verilog to deepen understanding of CPU architectures.
  - Worked through various tests to verify the functionality and correctness of the CPU design.
  - Made use of scripts and makefiles to streamline the project build and testing process, saving time and effort.
  - Ensured the project's reliability through detailed testing using Verilog testbenches, helping to catch and fix errors early in the development process.
]

#personal_project_item_header(
  "UBCInsight Software Project",
  "University of British Columbia",
  "Course Project",
  "Feb 2023 - May 2023",
)

#resume_item[
  - Collaborated within a team to design and develop a data analytics web platform that enables users to query, visualize, and analyze academic data from UBC courses and programs.
  - Utilized TypeScript for backend development and React for frontend implementation
  - Applied software engineering principles such as SOLID principles, and design patterns to ensure the application was modular, extensible, and maintainable.
  - Employed agile methodologies for iterative development and efficient project management
  - Conducted requirements analysis, design, implementation, testing, and thorough documentation
  - Presented the final project, showcasing features and functionalities to peers and instructors
]

#personal_project_item_header(
  "Relational Databases Project",
  "University of British Columbia",
  "Course Project",
  "July 2023 - Aug 2023",
)

#resume_item[
  - Collaborated within a team to design, create, and manage a relational database using SQLite3
  - Applied database normalization principles to ensure data integrity and efficiency
  - Developed a web interface utilizing Javascript, HTML, and CSS to for intuitive user interaction
  - Integrated PHP scripts to perform query operations like creating, adding, dropping, and updating data
]

#resume_section("Education")

#cvEntry(
    title: [B.E. in Geo-informatics],
    society: [China University of Geosciences],
    date: [Sept. 2019 - June. 2022],
    location: [Wuhan, China],
    logo: "./assets/CUG.svg",
    description: list(
      [Thesis: Flood Disaster Monitoring Based on Landsat-8 and Sentinel-1 Imagery - A Case Study of Dongting Lake],
    )
)

#cvEntry(
    title: [B.S. in Computer Science],
    society: [University of British Columbia],
    date: [Sept. 2022 - Expected Aug 2025],
    location: [Vancouver, Canada],
    logo: "./assets/UBC_COA.svg",
    description: list(
      // Additional details can be added here, such as relevant courses or projects
    )
)

#resume_section("Volunteer")

#volunteer_item_header(
  "Class Committee In Charge of Study",
  "China University of Geosciences",
  "Wuhan, China",
  "Sept 2020 – June 2021"
)

#resume_item[
  - Assisted fellow students with academic coursework, serving as a liaison between students and faculty.
  - Provided instructors with insights into student academic performance and well-being.
]

#volunteer_item_header(
  "Member of Student Graduation Committee",
  "China University of Geosciences",
  "Wuhan, China",
  "Sept 2021 – June 2022"
)

#resume_item[
  - Facilitated communication between students and the university to address concerns and provide assistance.
  - Assisted faculty in understanding student challenges and providing timely support.
]

#volunteer_item_header(
  "Volunteer",
  "Various Volunteer Roles",
  "Wuhan, China",
  "June 2022 - Sept 2022"
)

#resume_item[
  - Served as a volunteer at Vaccine Stations, assisting in efficient vaccine distribution.
  - Aided student learning at the school's learning center.
  - Taught geology science popularization courses at nearby primary schools.
  - Actively participated in suicide intervention programs to offer timely support and resources.
]
#volunteer_item_header(
  "Volunteer",
  "UBC Chinese Language Program",
  "Vancouver, BC",
  "Sept 2022 - Dec 2022"
)

#resume_item[
  - Facilitated conversational practice sessions to enhance students' spoken Chinese proficiency.
  - Assisted students in reviewing and mastering grammatical structures and course content.
]

#volunteer_item_header(
  "Volunteer",
  "UBC Vancouver's Move-In Day",
  "Vancouver, BC",
  "Aug 2023 - Sept 2023"
)

#resume_item[
  - Assisted in the student check-in process, helping new and returning students smoothly transition to campus life.
  - Acted as a welcoming face for UBC, providing general guidance and answering queries to enhance the move-in experience for students.
]

#volunteer_item_header(
  "Community Volunteer",
  "Saint Mark's Church",
  "Vancouver, BC",
  "Aug 2023 - Sept 2023"
)

#resume_item[
  - Assisted in organizing and participating in church events, contributing to community engagement and relationship-building.
]
