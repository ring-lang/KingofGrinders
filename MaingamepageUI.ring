#!c:\ring\bin\ring.exe -cgi

Load "weblib.ring"
Load "datalib.ring"
Load "stdfunctions.ring"
Load "ex25_users.ring"
Import System.Web

website = "maingamepage.ring"

checkuser()
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

if checkuser() = 1
else
	alert ("You are not logged in. Please login first.")
	return
ok

oUser2 = new modelbase
ouser2.ctablename="users"
ouser2.connect()
lresult=ouser2.findwith("username", apagevars["Username"])

			ouser3= new modelbase
			ouser3.ctablename="chat"
			ouser3.connect()
			ouser3.acolumns = ["userid", "time", "message"]
			apagevars["userid"]=ouser2.username
			apagevars["time"]=date() + " " + time ()
			apagevars["message"]=apagevars["message"]
			#ouser3.insert()
			#text("adfasdfa" + ouser3.read(1,1))
			

ouser.disconnect()
ouser2.disconnect()
ouser3.disconnect()

chatrefresh()

	Bootstrapwebpage()
		{
			Title = "KING OF GRINDERS GAME PAGE"
			div
				{
				id="div1"
				classname = :container
				color="black"
				backgroundcolor="red"
				align="center"
				width = "100%"
				style = style=  stylegradient(51) + stylewidth("100%")
				html(`<h1><b><u><i>KING OF GRINDERS</b></u></i></h1>`)
				
				table
				{
				Style =  stylemarginleft("0%") + stylemargintop("2%") + stylewidth("100%")
				tr
				{  
					td { style= styletextcenter() + stylegradient(51) + stylewidth("100%")
					  text ("Welcome to the King of Grinders, " + ouser2.username)
					}
					
				}
				tr
				{
					td { style= styletextcenter() + stylegradient(21) + stylewidth("100%")
					  html(`<h3>Grand Timer</h3>`)
					}
				}
				tr
				{	
					td { style= styletextcenter() + stylegradient(52) + stylewidth("100%")
					  text ("Real World Time - " + date() + "  " + time())
					  }			      
				}
				tr
				{
					td{  style= styletextcenter() + stylegradient(52) + stylewidth("100%")
						  text ("Current Game Time - " + apagevars["gametime"])
					}
				}
				tr
				{
					td{ style= styletextcenter() + stylegradient(52) + stylewidth("100%")
							text ("Epoch: " + apagevars["Epoch"])
					  }
				}
				}
				
				table 
		{Style =  stylemarginleft("0%") + stylemargintop("2%") + stylewidth("100%")
			tr{
				td{ style= styletextcenter() + stylegradient(21) + stylesize("200px", "100%")
					text("PLAYER STATS")
				}
			}
			
			tr{
				td { style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")
					text("Age:                      ")
				}
				td {style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")
					text("Power:                    ")
				}
			}
			tr{
				td { style= styletextleft() + stylegradient(30) + stylesize("600px", "100%") 
					text("Species:                  ")
				}
				td
				{ style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")
					text("Speed:                    ")
				}
			}
			tr{
				td{ style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")
					text("Main Profession:          ")
				}
				td{ style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")
					text("Luck:                     ")
				}
			}
			tr{
				td{ style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")
					text("Kid1:                     ")
				}
				td{ style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")
					text("Professional Skill:       ")
				}
			}
			tr{
				td{ style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")
					text("Kid2:                     ")
				}
				td{style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")
					text("P.Skill Experience:       ")
				}
			}
			tr{
				td{style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")
					text("Pet:                      ")
				}
				td{style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")
					text("General Skill Level:      ")
				}
			}
			tr{
				td{style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")
					text("Stamina:                  ")
				}
				td{ style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")
					text("G.Skill Experience:       ")
				}
			}
			tr{
				td{ style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")
					text("Hunger:                   ")
				}
				td{style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")
					text("Gods Grace:               ")
				}
			}
			tr{
				td{style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")
					text("Disease:                  ")
				}
				td{style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")
					text("Good Deeds:               ")
				}
			}
			tr{
				td{style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")
					text("Wounds:                   ")
				}
				td{style= styletextleft() + stylegradient(30) + stylesize("600px", "100%")
					text("Evil Deeds:               ")
				}
			}
		}
	}		

	div
	{
	classname = :container
	id="div2"
	color="red"
	backgroundcolor="yellow"
	width="100%"

		
		
		table
		{Style =  stylemarginleft("0%") + stylemargintop("2%") + stylewidth("100%")
			tr{
				td{style= styletextcenter() + stylegradient(21) + stylesize("200px", "100%")
					text("EQUIPMENT")
				}
			}
			tr{
				td{style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")
					text("Head:                     ")
				}
				td{style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")
					text("Feet:                     ")
				}
			}	
			tr{
				td{style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")
					text("Chest:                    ")
				}
				td{style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")
					text("Back:                     ")
				}
			}		
			tr{
				td{style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")
					text("Legs:                     ")
				}
				td{style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")
					text("Neck:                     ")
				}
			}
			tr{
				td{style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")
					text("Right Hand:               ")
				}
				td{style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")
					text("Finger:                   ")
				}
			}
			
				td{style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")
					text("Left Hand:                ")
				}
				td{style= styletextleft() + stylegradient(30) + stylesize("200px", "100%")
					text("Relic:                    ")
				}
			}
		}





			
				
			div 
			{
					classname = :container
				div
				{
					id = "div3"
					color = "black"
					backgroundcolor = "white"
					width = "100%"	
					
					form
					{
						method = "POST"
						Action = website  
						Target = "codeoutput"
						input { type="hidden" name="page" value=1 }
						Table
						{ 
							style = stylewidth("100%") + stylegradient(3)			
							TR
							{
						
								TD { align="center" WIDTH="10%" text("Chat :") }
								TD {
									html(`<textarea name  = "cCode" rows="5" style="width : 100%; "></textarea>`)
								}
							}
						}
						Input { type = "submit" classname="btn btn-primary btn-block" value = "Send Chat" }
						Table
						{ 
							style = stylewidth("100%") + stylegradient(34)			
							TR
							{
						
								TD { align="center" WIDTH="10%" text("Chat Messages :") }
								TD {
									html(`<iframe name="codeoutput" width="100%" style="background-color:white;"></iframe>`)
								}
							}
						}

					}
				}

			}
		}

Func checkuser

       oUser = new UsersModel

       oUser.Connect()

       lResult = oUser.FindWith("sessionid",aPageVars["sessionid"])
               if lResult
						return 1
               else
						return 0

               ok
       oUser.Disconnect()
	   
Func ChatRefresh
 		
		if aPageVars["page"] = NULL
			
		else
			switch aPageVars["page"] 
			on 1
				runcode() 	
			other
				errormsg("Invalid Link!")
			off
		ok
		
Func RunCode			
	cCode = aPageVars["cCode"]
	cCode = substr(cCode,"+ nl"," see '<br/>'")
	cCode = substr(cCode,"+nl"," see '<br/>'")
	text(cCode)
