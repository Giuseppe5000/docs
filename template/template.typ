#let g = (
     name: "Tech Minds",
     mail: "techminds.unipd@gmail.com",
     logo: "logo.png",
)

#let team = (
     A: "Alessandro Bressan",
     S: "Samuele Corradin",
     T: "Tommaso Lazzarin",
     L: "Leonardo Salviato",
     M: "Matteo Squarzoni",
     G: "Giuseppe Tutino",
     C: "Caterina Vallotto",
)


#let verbale(
  title: str,
  sommario: str,
  changelog: array,
  durata_luogo: array,
  partecipanti: array,
  ordine_giorno: array,
  riassunto: str,
  decisioni: array,
  body
) = {

     durata_luogo.at(0) = "Inizio: " + durata_luogo.at(0)
     durata_luogo.at(1) = "Fine: " + durata_luogo.at(1)
     durata_luogo.at(2) = "Luogo: " + durata_luogo.at(2)
    
     set heading(numbering: "1.1")
     set document(author: "Tech Minds", title: title)
     set page(numbering: "1")
     set align(center)

     parbreak()

     image(g.logo, width: 80%)
     text(20pt, title, weight: "bold")
     parbreak()
     text(link("mailto:"+g.mail))
     parbreak()
     text(10pt, "Sommario", weight: "bold")
     linebreak()
     text(10pt, sommario)

     pagebreak()

     set align(left)

     text("Changelog", weight: "bold")

     align(center+horizon,
       table(
       columns: 5,
       align: center,
       table.header([*Versione*],[*Data*],[*Descrizione*],[*Autore*],[*Verificatore*]),
       ..changelog)
     )
    
     outline(title: "Indice", indent: true)

     pagebreak()

     [= Informazioni introduttive]
     [== Durata e luogo]
     list(..durata_luogo, indent: 15pt)
     [== Partecipanti]
     list(..partecipanti, indent: 15pt)

     [= Contenuto della riunione]
     [== Ordine del giorno]
     enum(..ordine_giorno, indent: 15pt)
     [== Riassunto]
     text(riassunto)
     [== Decisioni prese]
     for value in decisioni {
         list(value.at(0) + list(..value.slice(1)), indent: 15pt)
     }
}

