/* Personal Information */

#let firstName = "Tengs"
#let lastName = "Wu"
#let personalInfo = (
  github: "Tengs-Penkwe",
  phone: "+1 (236) 308 6684",
  email: "tenspenkwe@gmail.com",
  linkedin: "tengs-wu",
  //gitlab: "mintyfrankie",
  //homepage: "jd.me.org",
  //orcid: "0000-0000-0000-0000",
  //researchgate: "John-Doe",
  //extraInfo: "",
)
#let headerQuoteInternational = (
  "": [Experienced Data Analyst looking for a full time job starting from now],
  "en": [Experienced Data Analyst looking for a full time job starting from now],
  "fr": [Analyste de données expérimenté à la recherche d’un emploi à temps plein disponible dès maintenant]
)

/* Layout Setting */

// Optional: skyblue, red, nephritis, concrete, darknight
#let awesomeColor = "skyblue"

// Leave blank if profil photo is not needed
#let profilePhoto = "../src/avatar.png" 

// Change this variable to control output language & cited module
// INFO: value must matches folder suffix; i.e "zh" -> "./modules_zh"
#let varLanguage = "" 

// Decide if you want to put your company in bold or your position in bold
#let varEntrySocietyFirst = false 

// Decide if you want to display organisation logo or not
#let varDisplayLogo = true

// for cvFooter and letterFooter arrays, add your own languages while the keys must match the varLanguage variable
#let cvFooterInternational = (
  "": "Curriculum vitae",
  "en": "Curriculum vitae",
  "fr": "Résumé"
)

#let letterFooterInternational = (
  "": "Cover Letter",
  "en": "Cover Letter",
  "fr": "Lettre de motivation",
)