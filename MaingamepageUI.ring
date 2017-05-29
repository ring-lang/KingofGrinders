#!c:\ring\bin\ring.exe -cgi

Load "weblib.ring"
Load "datalib.ring"
Load "stdfunctions.ring"
Import System.Web

website = "maingamepage.ring"

oUser = new database
ouser.connect()
ouser.query("select * from eratime")
apagevars["gametime"] = ouser.queryvalue()
if apagevars["gametime"] >= 635000000
apagevars["Epoch"] = "Pre-Cambrian Epoch"
but apagevars["gametime"] >= 489000000
apagevars["Epoch"] = "Cambrian Epoch"
but apagevars["gametime"] >= 445000000
apagevars["Epoch"] = "Ordovician Epoch"
but apagevars["gametime"] >= 423000000
apagevars["Epoch"] = "Silurian Epoch"
but apagevars["gametime"] >= 372000000
apagevars["Epoch"] = "Devonian Epoch"
but apagevars["gametime"] >= 303000000
apagevars["Epoch"] = "Carboniferous Epoch"
but apagevars["gametime"] >= 254000000
apagevars["Epoch"] = "Permian Epoch"
but apagevars["gametime"] >= 208000000
apagevars["Epoch"] = "Triassic Epoch"
but apagevars["gametime"] >= 152000000
apagevars["Epoch"] = "Jurassic Epoch"
but apagevars["gametime"] >= 72000000
apagevars["Epoch"] = "Cretaceous Epoch"
but apagevars["gametime"] >= 28000000
apagevars["Epoch"] = "Paleogene Epoch"
but apagevars["gametime"] >= 1000000
apagevars["Epoch"] = "Neogene Epoch"
but apagevars["gametime"] >= 100000
apagevars["Epoch"] = "Quaternary Epoch"
else
apagevars["Epoch"] = "Quaternary Epoch"
ok

oUser2 = new modelbase
ouser2.ctablename="users"
ouser2.connect()
lresult=ouser2.findwith("username", apagevars["Username"])


new page 
{
divstart ([ :style = styletextcenter() + stylegradient(50) + stylewidth("100%")])
h1("KING OF GRINDERS")
divend()
tablestart([ :Style =  stylemarginleft("0%") + stylemargintop("2%") + stylewidth("100%") ])
		rowstart([])
				  
				cellstart([:style= styletextcenter() + stylegradient(51) + stylewidth("100%")])
				  text("Welcome to the King of Grinders, " + ouser2.username)
				cellend()
				
		rowend()
		rowstart([])
				cellstart([:style= styletextcenter() + stylegradient(21) + stylewidth("100%")])
				  h3("Grand Timer")
				cellend()
		rowend()
		rowstart([])
				cellstart([:style= styletextcenter() + stylegradient(52) + stylewidth("100%")])
				  text ("This displays the Real World Time - " + date() + "  "+ time())
				  newline()
				  text ("This displays the Current Game Time - " + apagevars["gametime"])
				  newline()
				  text ("Epoch: " + apagevars["Epoch"])
				cellend()
	    rowend() 
	tableend()
	divstart([ :style = styletextleft() + stylegradient(50) + stylewidth("100%")])
	tablestart([ :Style =  stylemarginleft("0%") + stylemargintop("2%") + stylewidth("100%") ])
		rowstart([])
			cellstart([:style= styletextcenter() + stylegradient(21) + stylesize("200px", "100%")])
				text("PLAYER STATS")
			cellend()
		rowend()
		
		rowstart([])
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("Age:                      ")
			cellend()
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("Power:                    ")
			cellend()
		rowend()
		rowstart([])
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("Species:                  ")
			cellend()
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("Speed:                    ")
			cellend()
		rowend()
		rowstart([])
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("Main Profession:          ")
			cellend()
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("Luck:                     ")
			cellend()
		rowend()
		rowstart([])
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("Kid1:                     ")
			cellend()
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("Professional Skill:       ")
			cellend()
		rowend()
		rowstart([])
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("Kid2:                     ")
			cellend()
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("P.Skill Experience:       ")
			cellend()
		rowend()
		rowstart([])
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("Pet:                      ")
			cellend()
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("General Skill Level:      ")
			cellend()
		rowend()
		rowstart([])
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("Stamina:                  ")
			cellend()
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("G.Skill Experience:       ")
			cellend()
		rowend()
		rowstart([])
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("Hunger:                   ")
			cellend()
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("Gods Grace:               ")
			cellend()
		rowend()
		rowstart([])
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("Disease:                  ")
			cellend()
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("Good Deeds:               ")
			cellend()
		rowend()
		rowstart([])
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("Wounds:                   ")
			cellend()
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")])
				text("Evil Deeds:               ")
			cellend()
		rowend()
	tableend()
	
	tablestart([ :Style =  stylemarginleft("0%") + stylemargintop("2%") + stylewidth("100%") ])
		rowstart([])
			cellstart([:style= styletextcenter() + stylegradient(21) + stylesize("200px", "100%")])
				text("EQUIPMENT")
			cellend()
		rowend()
		rowstart([])
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")])
				text("Head:                     ")
			cellend()
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")])
				text("Feet:                     ")
			cellend()
		rowend()	
		rowstart([])
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")])
				text("Chest:                    ")
			cellend()
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")])
				text("Back:                     ")
			cellend()
		rowend()		
		rowstart([])
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")])
				text("Legs:                     ")
			cellend()
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")])
				text("Neck:                     ")
			cellend()
		rowend()
		rowstart([])
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")])
				text("Right Hand:               ")
			cellend()
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")])
				text("Finger:                   ")
			cellend()
		rowend()
		
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")])
				text("Left Hand:                ")
			cellend()
			cellstart([:style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")])
				text("Relic:                    ")
			cellend()
		rowend()
	tableend()
	
	divend()
	
	divstart ([:style= styletextcenter() + stylegradient(50) + stylesize("100%", "20px")])
		h4("Chat")
		tablestart([ :Style =  stylemarginleft("0%") + stylemargintop("2%") + stylewidth("100%") ])
		rowstart([])
			formpost("maingamepageui.ring")
			hidden("username", oUser2.username)
			cellstart([ :style = stylewidth("100%")  ])
				textbox([:name = "message" , :style = stylewidth("100%")])
			cellend()
			cellstart([ :style = stylewidth("100%")  ])
				submit([:value = "Send Chat"  ])
			cellend()
			formend()
		rowend()
		rowstart([])
			cellstart([:style= stylegradient(12) + stylesize("500px", "300px")])
			ouser3= new modelbase
			ouser3.ctablename="chat"
			ouser3.connect()
			ouser3.acolumns = ["userid", "time", "message"]
			apagevars["userid"]=ouser2.username
			apagevars["time"]=date() + " " + time ()
			apagevars["message"]=apagevars["message"]
			#ouser3.insert()
			#text("adfasdfa" + ouser3.read(1,1))
			cellend()
		rowend()
		tableend()
	divend()
	
}
ouser.disconnect()
ouser2.disconnect()