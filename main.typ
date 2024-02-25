// Importing the "enib-template" function from "template.typ"
#import "template.typ": *

// Applying the enib-template to the whole document using a #show rule
// Fill in this function call with your informations
#show: body => enib-template(
  title: "Titre du stage",
  sous-titre: "Conversion d'une base de code monolithique vers une architecture distribuée sous forme de services indépendants.",
  type_stage: "Stage Ingénieur S10",
  maitre_de_stage: "Maitre de stage",
  tuteur_academique: "Tuteur académique",
  nom: "Théophile ROOS",
  dates: [
  28 Août 2023 au 12 Janvier 2024
  ],
  mail: "t8roos@enib.fr",
  logo_company: image("assets/logoentreprise.png"),
  logo_enib: image("assets/logoenib.png"),
  img_illustration: none,
  body,
)

#v(6em)
= Remerciements

#lorem(80)


#pagebreak()
= Résumé

Le résumé de votre stage en français.

#heading(level: 2, outlined: false)[Summary]


Le résumé de votre stage en anglais


#pagebreak()
#outline(indent: 2%, depth: 3)
#pagebreak()

#outline(
  title: [Liste des figures],
  target: figure.where(kind: image),
)

#pagebreak()
#outline(
  title: [Liste des Tables],
  target: figure.where(kind: table),
)

#v(3em)
#outline(
  title: [Liste des Codes],
  target: figure.where(kind: raw),
)

// Style heading of level 1.
#show heading.where(level: 1): it => {
    pagebreak(weak: true)
    set block(below: 20pt, above: 10pt)
    set text(font: "QTPalatine", weight: "black")
    set align(center)
    underline(smallcaps(it), offset: 4pt)
}
= Glossaire

// Import glossary from gls.typ
#import "./gls.typ": enib-gloss
// Print glossary
#print-glossary(enib-gloss)

= Présentation de l'entreprise 

#lorem(150)

== Politique RSE

Description des résultat de votre enquête RSE: 

#lorem(250)

#pagebreak()

= Introduction

Ici un exemple de plan, n'hésitez pas à adapter à votre situation.

== Environnement de travail

#lorem(50)

=== Méthodologie de travail

#lorem(50)

== Environnement technique

#lorem(50)

= Sujet de stage 

Ici un rappel de votre sujet de stage.

#lorem(60)

Ensuite le coeur du rapport avec une structure qui vous est propre.
== Section 1
#lorem(89)
== Section 2 
== Section 3
== Section 4
== Section 5



= Bilan
== Bilan pour la société  

#lorem(45)

== Bilan Personnel

#lorem(50)

== Bilan de compétences personnelles

#lorem(50)



#bibliography("biblio.bib", title: [Bibliographie])

= Annexes

Ici vos éventuelles annexes