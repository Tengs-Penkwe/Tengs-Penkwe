#import "./metadata.typ": *
#import "@preview/fontawesome:0.1.0": *

// const color
#let awesomeColors = (
  skyblue: rgb("#0395DE"),
  red: rgb("#DC3522"),
  nephritis: rgb("#27AE60"),
  concrete: rgb("#95A5A6"),
  darknight: rgb("#131A28"),
)

#let regularColors = (
  lightgray: rgb("#343a40"),
  darkgray: rgb("#212529"),
)

#let color_darknight = rgb("#131A28")
#let color_darkgray = rgb("333333")
#let accentColor = awesomeColors.at(awesomeColor)

/*************** Styles ***************/
#let beforeSectionSkip = 1pt
#let beforeEntrySkip = 1pt
#let beforeEntryDescriptionSkip = 1pt

#let entryA1Style(str) = {text(
  size: 10pt, weight: "bold",
  str
)}

#let entryA2Style(str) = {align(right, text(
  weight: "medium", fill: accentColor, style: "oblique",
  str
))}

#let entryB1Style(str) = {text(
  size: 9pt, fill: accentColor, weight: "medium",
  smallcaps(str)
)}

#let entryB2Style(str) = {align(right, text(
  size: 11pt, weight: "medium", fill: gray, style: "oblique",
  str
))}

#let entryDescriptionStyle(str) = {text(
  size: 10pt, fill: regularColors.lightgray,
  {
    v(beforeEntryDescriptionSkip)
    str
  }
)}

#let letterHeaderNameStyle(str) = {text(
  weight: "bold",
  str
)}

#let letterHeaderAddressStyle(str) = {text(
  fill: gray,
  size: 0.9em,
  smallcaps(str)
)}

#let letterDateStyle(str) = {text(
  size: 0.9em,
  style: "italic",
  str
)}

#let letterSubjectStyle(str) = {text(
  fill: accentColor,
  weight: "bold",
  underline(str)
)}

#let footerStyle(str) = {text(
  size: 8pt,
  fill: rgb("#999999"),
  smallcaps(str)
)}

// layout utility
#let justify_align(left_body, right_body) = {
  block[
    #left_body
    #box(width: 1fr)[
      #align(right)[
        #right_body
      ]
    ]
  ]
}

#let justify_align_3(left_body, mid_body, right_body) = {
  block[
    #box(width: 1fr)[
      #align(left)[
        #left_body
      ]
    ]
    #box(width: 1fr)[
      #align(center)[
        #mid_body
      ]
    ]
    #box(width: 1fr)[
      #align(right)[
        #right_body
      ]
    ]
  ]
}

#let letterSignature(path) = {
  linebreak()
  place(left, dx:-5%, dy:0%, image(path, width: 25%))
}

/*************** Main Body Items ***************/
#let resume(author: (), date: "", body) = {
  
  set document(
    author: author.firstname + " " + author.lastname, 
    title: "resume",
  )
  
  set text(
    font: ("Vollkorn"),
    lang: "en",
    size: 12pt,
    fill: color_darknight,
    fallback: false
  )

  set page(
    paper: "a4",
    margin: (left: 15mm, right: 15mm, top: 10mm, bottom: 10mm),
    footer: [
      #set text(fill: gray, size: 9pt)
      #justify_align_3[
        // #smallcaps[#date]
      ][
        #smallcaps[
          #author.firstname
          #author.lastname
          #sym.dot.c
          #"Résumé"
        ]
      ][
        #counter(page).display()
      ]
    ],
    footer-descent: 0pt,
  )
  
  // set paragraph spacing
  show par: set block(above: 0.75em, below: 0.75em)
  set par(justify: true)

  set heading(
    numbering: none,
    outlined: false,
  )
  
  let name = {
    align(center)[
      #pad(bottom: 5pt)[
        #block[
          #set text(size: 28pt, style: "normal", font: ("Vollkorn"))
          #text(weight: "thin")[#author.firstname]
          #text(weight: "bold")[#author.lastname]
        ]
      ]
    ]
  }

  let positions = {
    set text(
      size: 9pt,
      weight: "regular"
    )
    align(center)[
      #smallcaps[
        #author.positions.join(
          text[#"  "#sym.dot.c#"  "]
        )
      ]
    ]
  }

  let contacts = {
    set box(height: 11pt)
    
    let linkedin_icon = box(image("assets/icons/linkedin.svg"))
    let github_icon = box(image("assets/icons/square-github.svg"))
    let email_icon = box(image("assets/icons/square-envelope-solid.svg"))
    let phone_icon = box(image("assets/icons/square-phone-solid.svg"))
    let separator = box(width: 5pt)
    
    align(center)[
      #block[
        #align(horizon)[
          #phone_icon
          #box[#text(author.phone)]
          #separator
          #email_icon
          #box[#link("mailto:" + author.email)[#author.email]]
          #separator
          #github_icon
          #box[#link("https://github.com/" + author.github)[#author.github]]
          #separator
          #linkedin_icon
          #box[
            #link("https://www.linkedin.com/in/" + author.linkedin + "-b55b361a4")[#author.linkedin]
          ]
        ]
      ]
    ] 
  }

  align(right)[#box[#image("./assets/Coop.svg", width:70%)]]

  name
  positions
  contacts
  body
}

// general style
#let resume_section(title) = {
  set text(
    size: 16pt,
    weight: "regular"
  )
  align(left)[
    #smallcaps[
      // #text[#title.slice(0, 3)]#strong[#text[#title.slice(3)]]
      #strong[#text[#title]]
    ]
    #box(width: 1fr, line(length: 100%))
  ]
}

#let resume_item(body) = {
  set text(size: 10pt, style: "normal", weight: "light")
  set par(leading: 0.65em)
  body
}

#let resume_time(body) = {
  set text(weight: "medium", style: "oblique", size: 12pt, fill: accentColor)
  body
}

#let resume_degree(body) = {
  set text(size: 10pt, weight: "light")
  smallcaps[#body]
}

#let resume_organization(body) = {
  set text(size: 12pt, style: "normal", weight: "bold")
  body
}

#let resume_location(body) = {
  set text(size: 11pt, style: "italic", fill: gray, weight: "light")
  body
}

#let resume_position(body) = {
  set text(size: 10pt, weight: "regular")
  smallcaps[#body]
}

#let resume_category(body) = {
  set text(size: 11pt, weight: "bold")
  body
}

#let resume_gpa(numerator, denominator) = {
  set text(size: 12pt, style: "italic", weight: "light")
  text[Cumulative GPA: #box[#strong[#numerator] / #denominator]]
}

// sections specific components
#let education_item(organization, degree, gpa, time_frame) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)
  pad[
    #justify_align[
      #resume_organization[#organization]
    ][
      #gpa
    ]
    #justify_align[
      #resume_degree[#degree]
    ][
      #resume_time[#time_frame]
    ]
  ]
}

#let cvSection(title) = {
  let highlightText = title.slice(0,3)
  let normalText = title.slice(3)

  v(beforeSectionSkip)
  sectionTitleStyle(highlightText, color: accentColor)
  sectionTitleStyle(normalText, color: black)
  h(2pt)
  box(width: 1fr, line(stroke: 0.9pt, length: 100%))
}

#let cvEntry(
  title: "Title",
  society: "Society",
  date: "Date",
  location: "Location",
  description: "Description",
  logo: ""
) = {
  let ifSocietyFirst(condition, field1, field2) = {
    return if condition {field1} else {field2}
  }
  let ifLogo(path, ifTrue, ifFalse) = {
    return if varDisplayLogo {
      if path == "" { ifFalse } else { ifTrue }
    } else { ifFalse }
  }
  let setLogoLength(path) = {
    return if path == "" { 0% } else { 4% }
  }
  let setLogoContent(path) = {
    return if logo == "" [] else {image(path, width: 100%)}
  }
  v(beforeEntrySkip)
  table(
    columns: (ifLogo(logo, 4%, 0%), 1fr),
    inset: 0pt,
    stroke: none,
    align: horizon,
    column-gutter: ifLogo(logo, 4pt, 0pt),
    setLogoContent(logo),
    table(
      columns: (1fr, auto),
      inset: 0pt,
      stroke: none,
      row-gutter: 6pt,
      align: auto,
      {entryA1Style(ifSocietyFirst(varEntrySocietyFirst, society, title))},
      {resume_time(date)},
      {entryB1Style(ifSocietyFirst(varEntrySocietyFirst, title, society))},
      {entryB2Style(location)},
    )
  )
  entryDescriptionStyle(description)
}

#let work_experience_item_header(
  company,
  location,
  position,
  time_frame
) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)
  pad[
    #justify_align[
      #resume_organization[#company]
    ][
      #resume_location[#location]
    ]
    #justify_align[
      #resume_position[#position]
    ][
      #resume_time[#time_frame]
    ]
  ]
}

#let personal_project_item_header(
  name,
  location,
  position,
  start_time,
) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)
  pad[
    #justify_align[
      #resume_organization[#name]
    ][
      #resume_time[#start_time]
    ]
    #justify_align[
      #resume_position[#position]
    ][
      #resume_location[#location]
    ]
  ]
}

#let skill_item(category, items) = {
  set block(above: 1.0em, below: 1.0em)
  
  grid(
    columns: (18fr, 80fr),
    gutter: 10pt,
    align(right)[
      #resume_category[#category]
    ],
    align(left)[
      #set text(size: 11pt, style: "normal", weight: "light")
      #items.join(", ")
    ],
  )
}

#let volunteer_item_header(
  position,
  company,
  location,
  time_frame
) = {
  set block(above: 0.7em, below: 0.7em)
  set pad(top: 5pt)
  pad[
    #justify_align[
      #resume_organization[#company]
    ][
      #resume_time[#time_frame]
    ]
    #justify_align[
      #resume_position[#position]
    ][
      #resume_location[#location]
    ]
  ]
}

#let layout(doc) = {
  set text(
    font: ("Vollkorn", "Font Awesome 6 Brands", "Font Awesome 6 Free"),
    weight: "regular",
    size: 9pt,
  )
  set align(left)
  set page(
    paper: "a4",
    margin: (
      left: 1.4cm,
      right: 1.4cm,
      top: .8cm,
      bottom: .4cm,
    ),
  )
  doc
}

#let letterHeader(
  myAddress: "Your Address Here",
  recipientName: "Company Name Here",
  recipientAddress: "Company Address Here",
  date: "Today's Date",
  subject: "Subject: Hey!"
) = {
  letterHeaderNameStyle(firstName + " " + lastName)
  v(1pt)
  letterHeaderAddressStyle(myAddress)
  v(1pt)
  align(right, letterHeaderNameStyle(recipientName))
  v(1pt)
  align(right, letterHeaderAddressStyle(recipientAddress))
  v(1pt)
  letterDateStyle(date)
  v(1pt)
  letterSubjectStyle(subject)
  linebreak(); linebreak()
}

#let letterFooter() = {
  place(
    bottom,
    table(
      columns: (1fr, auto),
      inset: 0pt,
      stroke: none,
      footerStyle([#firstName #lastName]),
      footerStyle([Cover Letter]),
    )
  )
}
