#!c:\ring\bin\ring.exe -cgi

Load "weblib.ring"
Load "datalib.ring"
Load "ex25_users.ring"

Import System.Web

oUser = new UsersModel
oUser.Connect()
lResult = oUser.FindWith("username",aPageVars["username"])


	if lResult
           	New page
                {
				if aPagevars["Email"] = oUser.Email		
						divstart([ :style= styletextcenter() + stylegradient(52) ])
				    sendemail("smtp://smtp.gmail.com:587",
					"mailmeharinder13@gmail.com",
					"",
					"mailmeharinder13@gmail.com",
					oUser.email,
					"mailmeharinder13@gmail.com",
					"Your Secret Forgot Password Word",
					oUser.fgtpwd
					) 
			          text ("Username and Email match. Secret word is sent to your Email.")
					
					divend()
					
					divstart([ :style= styletextcenter() + stylegradient(52) ])
					formpost("fgtpwdconfirmation.ring")
						tablestart([ :Style = stylemarginleft("2%") + stylemargintop("2%") +
						stylewidth("90%") ])
						rowstart([])
						cellstart([:style = stylewidth("20%") + styleheight(30)])
						text("Enter Username:")
						cellend()
						cellstart([ :style = stylewidth("80%") ])
						textbox([:name = "username", :style = stylewidth("100%")])
						cellend()
						rowend()
						rowstart([])
						cellstart([:style = stylewidth("20%") + styleheight(30)])
						text("Enter your Forgot Password Secret Word received in your Email :")
						cellend()
						cellstart([ :style = stylewidth("80%") ])
						textbox([:name = "fgtpwd", :style = stylewidth("100%")])
						cellend()
						rowend()
						rowstart([])
						cellstart([ :style = stylewidth ("40%")])
						submit([:value = "Submit"  ])
						rowend()
						tableend()
						formend()
                    divend()
					newline()
					else
			text ("Username and Email doesn't match. Make sure you typed them correctly!")
		ok
				}
	else
		text("Bad User Name!")
	ok
oUser.Disconnect()