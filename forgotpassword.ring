#!c:\ring\bin\ring.exe -cgi

Load "weblib.ring"
Load "datalib.ring"
Load "ex25_users.ring"

Import System.Web

oUser = new UsersModel
oUser.Connect()
lResult = oUser.FindWith("username",aPageVars["username"])
new page
 {
	if lResult
            if aPagevars["Email"] = oUser.Email			
			formpost("sendfgtpwdmail.html")
			a = ouser.email
			b = ouser.fgtpwd
			formend()
			divstart([ :style= styletextcenter() + stylegradient(52) ])
				
			          text ("Username and Email match. Secret word is sent to your Email.")
                
				New page
                {

						cTemp = Template("sendfgtpwdmail.html",self)
                        html(cTemp)
					divend()
					newline()
					newline()
				}
            formstart("changepasswordui.ring")
                  divstart([ :style= styletextcenter() + stylegradient(52) ])
                  submit([:value = "Change Password"  ])
                
                 divend()
            formend()
              	
		else
			text ("Username and Email doesn't match. Make sure you typed them correctly.")
		ok
		
	else
		text("Bad User Name!")
	ok
oUser.Disconnect()
}

	
