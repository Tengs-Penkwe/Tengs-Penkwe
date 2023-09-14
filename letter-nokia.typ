#import "./template.typ": *
#show: layout
#set text(size: 12pt) //set global font size

#letterHeader(
  myAddress: [1690 Western Parkway \ V6T 1V3, Vancouver, British Columbia],
  recipientName: [Nokia],
  recipientAddress: [Ottawa, Ontario],
  date: [#datetime.today().display()],
  subject: "Job Application for Service Router Platform Test Dev Student Co-op"
)

Dear Hiring Manager,

I am writing to express my keen interest in the Service Router Platform Test Dev Student position at Nokia Canada, starting in January 2024. I am currently a Computer Science student at the University of British Columbia, actively seeking opportunities to apply my skills in a real-world setting.

During my studies, I have built a strong base in programming and have gained hands-on experience with several tools that are important for this role. Here’s how my experiences make me a good fit for this position:

1. Through my coursework in the software engineering course (CPSC 310) at UBC, I learned the importance of testing in the software development cycle. I have spent considerable time testing various software components to ensure their reliability and functionality, which would be beneficial when developing automated test cases at Nokia.
2. Over the past 4 years, I have grown comfortable working with Linux, acquiring the necessary skills to work proficiently in a Linux-based regression environment, a critical component of this role.
3. I am familiar with using source control software such as Git, which will allow me to integrate well with Nokia's development environment and collaborate effectively with the team.
4. I gained valuable insights into hardware components during a personal project where I implemented a MIPS CPU using Verilog, which could be an asset in understanding and testing new hardware and software features at Nokia.

My academic experience have allowed me to hone my analytical and troubleshooting skills, enabling me to approach complex problems with innovative solutions. As a quick learner, I am eager to immerse myself in Nokia's cutting-edge technologies, adopting a hands-on approach to understand feature areas inside and out to test them thoroughly.

I am no stranger to collaborative environments, having worked closely with teams during mymany course. This experience, along with volunteering experience, has equipped me with good interpersonal skills and an understanding of diverse perspectives.

Thank you for considering my application. I am enthusiastic about the possibility of discussing how my background, skills, and motivations align with Nokia's mission and this role in particular.

Sincerely,

#letterSignature("/assets/signature.png")
#letterFooter()
