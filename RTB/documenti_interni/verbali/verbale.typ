#import "template.typ": verbale
#import "template.typ": team

#show: verbale.with(
  title: "Documento del 00/00/0000",
  sommario: "........",
  changelog: (
    "1.0", "00/00/0000", ".....", ".....", "......" 
  ),
  durata_luogo: ("16:00", "17:30", "Chiamata Discord"),
  partecipanti: (team.A, team.S, team.T, team.L, team.M, team.G, team.C),
  ordine_giorno: ("Fare boh", "Fare ..."),
  riassunto: lorem(40),
  decisioni: (
    ("distribuzione", "Issue ", "dcasiod"),
    ("organizzazione", "sdadf", "dasdas", "dwadaw"),
    ("versionamento", "dawd"),
    ("verbali", "dasdf", "dsad2")
  )
)