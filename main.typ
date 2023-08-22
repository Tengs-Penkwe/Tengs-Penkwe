#import "template.typ": *
#import "awesomeCV/template.typ": *


#show: resume.with(
  author: (
      firstname: "Tengs (Zheng)", 
      lastname: "Wu",
      email: "tengspenkwe@gmail.com", 
      phone: "(+1) 236 308 6684",
      github: "Tengs-Penkwe",
      linkedin: "tengs-wu",
      positions: (
        //"President of USA",
        //"United Nations Secretary-General",
      )
  ),
  //TODO: https://github.com/typst/typst/issues/204
  date:  datetime.today().display()
)

#resume_section("Education")

/*
#cvEntry(
    title: [B.E. in Geo-informatics],
    society: [China University of Geosciences],
    date: [Sept. 2019 - June. 2022],
    location: [China],
    //logo: "../src/logos/ucla.png",
    description: list(
      [Thesis: Flood Disaster Monitoring Research Based on Landsat-8 and Sentinel-1 Imagery - A Case Study of Dongting Lake ],
      //[Course: Big Data Systems and Technologies #hBar() Data Mining and Exploration #hBar() Natural Language Processing]
    )
)

#cvEntry(
    title: [B.S. in Computer Science],
    society: [University of British Columbia],
    date: [Sept. 2022 - Now],
    location: [Canada],
    //resume_gpa: ["4.00", "4.00"],
    description: list(
      // Additional details can be added here, such as relevant courses or projects
    )
)
*/
#education_item[
  China University of Geosciences
][
  B.E. in Geo-informatics
][
  //#resume_gpa("3.62", "5.00")
][
  Sept. 2019 - June. 2022
]

#education_item[
  University of British Columbia
][
  B.S. in Computer Science
][
  //#resume_gpa("4.00", "4.00")
][
  Sept. 2022 - Now
]


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

#resume_section("Personal Project")

#personal_project_item_header(
  "Enviromental Monitoring Using Remote Sensing",
  "China University of Geosciences",
  "Participant Researcher",
  "July 2020 – Apr 2021",
)

#resume_item[
  - Participated in the scientific research project _Using Landsat time-series images to explore the impact of land cover on urban surface heat island change_. Rated as “excellent” in the Provincial College Students' innovation and entrepreneurship training program.
]

#personal_project_item_header(
  "Image Processing & Analysis System",
  "China University of Geosciences",
  "Course Project",
  "Dec 2020 – Feb 2021",
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
  "UBCInsight Software Project",
  "University of British Columbia",
  "Course Project",
  "Feb 2023 - May 2023",
)

#resume_item[
  - Collaborated within a team to design and develop software
  - Utilized TypeScript for backend development and React for frontend implementation
  - Applied software engineering principles to create a functional and user-friendly application
  - Employed agile methodologies for iterative development and efficient project management
  - Conducted requirements analysis, design, implementation, testing, and thorough documentation
  - Presented the final project, showcasing features and functionalities to peers and instructors
]

#personal_project_item_header(
  "Relational Databases Project",
  "University of British Columbia",
  "Course Project of",
  "July 2023 - Aug 2023",
)

#resume_item[
  - Collaborated within a team to design, create, and manage a relational database using SQLite3
  - Applied database normalization principles to ensure data integrity and efficiency
  - Developed a web interface utilizing Javascript, HTML, and CSS to for intuitive user interaction
  - Integrated PHP scripts to perform query operations like creating, adding, dropping, and updating data
]

#resume_section("Skills")

#skill_item(
  "Language",
  (
    strong[C/C++],
    strong[Javascript], 
    strong[Typescript], 
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
    strong[Used Linux for 5 Years], 
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

#skill_item(
  "Geology",
  ("Stratigraphy",
   "Paleontology",
   "Hydrology",
 )
)