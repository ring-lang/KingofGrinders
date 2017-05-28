#!c:\ring\bin\ring.exe -cgi

Load "weblib.ring"
Load "datalib.ring"
Load "ex25_users.ring"

Import System.Web

oUser = new UsersModel
oUser.Connect()
lResult = oUser.FindWith("username",aPageVars["username"])
if lResult
		if aPagevars["fgtpwd"]=oUser.fgtpwd
				New page
                {
				aPageVars["salt"] = str2hex(RandBytes(32))
				aPageVars["pwhash"] = sha256(aPagevars["password"]+aPageVars["salt"])
				oUser.username = aPageVars["username"]
				oUser.updatecolumn("pwhash", aPageVars["pwhash"])
				oUser.updatecolumn("salt", aPageVars["salt"])
				
					divstart([ :style= styletextcenter() + stylegradient(52) ])
					
					    formstart("ex28.ring")
						divstart([ :style= styletextcenter() + stylegradient(52) ])
						submit([:value = "Login"  ])
						divend()
						formend()
				}
		else
					    text ("Forgot Password doesn't match. Make sure you typed them correctly.")
		ok
else
      text ("Username doesn't exist in database.")
ok
oUser.Disconnect()


	
