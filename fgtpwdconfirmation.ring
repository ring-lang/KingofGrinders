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
				
				if aPagevars["fgtpwd"]=oUser.fgtpwd
					divstart([ :style= styletextcenter() + stylegradient(52) ])
					
					    formstart("ChangePasswordUI.ring")
						divstart([ :style= styletextcenter() + stylegradient(52) ])
						submit([:value = "Change Password"  ])
						formend()
						divend()
						
					else
					    text ("Forgot Password doesn't match. Make sure you typed them correctly!")
		            ok
				}
		
else
      text ("Username doesn't exist in database!")
ok
oUser.Disconnect()


	
