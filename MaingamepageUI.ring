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
				  text("Welcome to the King of Grinders, Mr. " + ouser2.username)
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
				text("Player Stats           ")
			cellend()
			cellstart([:style= styletextcenter() + stylegradient(21) + stylesize("600px", "100%")])
				text("Game World                                                        ")
			cellend()
			cellstart([:style= styletextcenter() + stylegradient(21) + stylesize("200px", "100%")])
				text("Equipment              ")
			cellend()
		rowend()
		rowstart([])
			cellstart([:style= styletextcenter() + stylegradient(21) + stylesize("200px", "500px")])
				text("")
			cellend()
			cellstart([:style= styletextcenter() + stylegradient(21) + stylesize("600px", "500px")])
				text("")
			cellend()
			cellstart([:style= styletextcenter() + stylegradient(21) + stylesize("200px", "500px")])
				text("")
			cellend()
		rowend()
	tableend()
	
	divend()
	
	divstart ([:style= styletextcenter() + stylegradient(50) + stylesize("100%", "20px")])
		h4("Chat")
		tablestart([ :Style =  stylemarginleft("0%") + stylemargintop("2%") + stylewidth("100%") ])
		rowstart([])
			cellstart([:style= styletextcenter() + stylegradient(12) + stylesize("500px", "300px")])

			cellend()
		rowend()
		tableend()
	divend()
	
}
ouser.disconnect()
ouser2.disconnect()