
News.delete_all
Source.delete_all
Author.delete_all
Person.delete_all
Fund.delete_all
Company.delete_all
Manager.delete_all



techcrunh = Source.create(name: "Tech Crunch", website: "techcrunch", summary: "Tech")
buzzfeed = Source.create(name: "Buzzfeed", website: "buzzfeed", summary: "Tech")
reforma = Source.create(name: "Reforma", website: "reforma", summary: "Tech")
expansion = Source.create(name: "Expansion", website: "cnnexpansion", summary: "Tech")
sum = Source.create(name: "Startup Mexico", website: "startupmexico", summary: "Tech")
centraal = Source.create(name: "Centraal", website: "centraal", summary: "Tech" )


cesarsalazar = Person.create(name: "Cesar Salazar", bio:"unknown")
juanlopez = Person.create(name: "Juan Lopez", bio:"unknown")
santiagozavala = Person.create(name: "Santiago Zavala", bio:"unknown")
diegoserebrisky = Person.create(name: "Diego Serebrisky", bio:"unknown")
claudiodelconde = Person.create(name: "Claudio del Conde", bio:"unknown")


altaventures = Fund.create(name: "Alta Ventures", website:"altaventures")
fivehundredstartups = Fund.create(name: "500 Startups", website:"500")
versiononeventures = Fund.create(name: "Version One Ventures", website:"ninguna")
venturepartners = Fund.create(name: "Venture Partners", website:"nvp")
hydepark = Fund.create(name: "Hyde Park Venture Partners", website:"hydeparkvp")


kchink = Company.create(name: "Kchink", website:"kchink")
yogome = Company.create(name: "Yogome", website:"yogome")
modebo = Company.create(name: "Modebo", website:"modebo")
descifra = Company.create(name: "Descifra", website:"descifra")
tastespace = Company.create(name: "Taste Space", website:"taspespace")


puts "Creating Managers..."
Manager.create(person_id: cesarsalazar.id, fund_id: fivehundredstartups.id)
Manager.create(person_id: juanlopez.id, fund_id: fivehundredstartups.id)
Manager.create(person_id: santiagozavala.id, fund_id: fivehundredstartups.id)
Manager.create(person_id: diegoserebrisky.id, fund_id: altaventures.id)
Manager.create(person_id: claudiodelconde.id, fund_id: kchink.id)
	