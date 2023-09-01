#import "./template.typ": *
#show: layout
#set text(size: 12pt) //set global font size

#letterHeader(
  myAddress: [1690 Western Parkway \ V6T 1V3, Vancouver, British Columbia],
  recipientName: [Safe Software],
  recipientAddress: [Vancouver, BC],
  date: [#datetime.today().display()],
  subject: "Subject: Job Application for C++ Software Developer Co-op"
)

Dear Hiring Manager,

I am drawn to Safe Software's commitment to unleashing the power of data through FME. The diverse applications of FME, including handling sensors, maps, building models, imagery, databases, social media, web services, and more, resonate with my academic and project experience, particularly in Remote Sensing and GIS.
As a Computer Science student at UBC, I am passionate about programming and have experience in C++, making me eager to contribute to the FME Desktop/Engine development group at Safe Software.

My specific experience includes:

- Spatial Data Processing & Analysis: My experience in processing and analyzing spatial data includes using GIS techniques and tools, This expertise aligns with Safe Software's focus on supporting spatial data and will allow me to contribute to the development of new data formats and capabilities within the FME platform.
- Back-end Development with C++: I have developed image processing software using C++ and implemented algorithms for efficient processing and analysis of Remote Sensing (RS) images.
- Front-end Development with C++ and Qt: My hands-on experience with C++ and my quick adaptability to new technologies will enable me to pick up Qt and contribute to the front-end development tasks.
- Build and Test Tools: I have been using Linux for five years, and I am familiar with Git, Makefile, and Docker, which align with the tools used at Safe Software.
- Databases: My projects have exposed me to the use and management of relational databases, including SQLite3, which will allow me to work with databases mentioned in the job description.
- Team Collaboration: My work on course projects such as UBCInsight Software Project showcases my ability to collaborate within a team, apply software engineering principles, and conduct iterative development and efficient project management.

Eager to contribute, learn, and make an impact, I thank you for considering my application. I look forward to discussing how my skills align with your needs.

Sincerely,

#letterSignature("/assets/signature.png")
#letterFooter()
