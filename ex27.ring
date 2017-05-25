#!C:\ring\bin\ring.exe -cgi

Load "weblib.ring"
Load "datalib.ring"
Load "ex25_users.ring"

Import System.Web

oUser = new UsersModel
oUser.Connect()
if oUser.findwith("username",aPageVars["username"])
	new page {
		text("The user name is already registered")
	}
	return
ok
if oUser.findwith("email",aPageVars["email"])
	new page {
		text("This email is already registered")
	}
	return
ok

aPageVars["salt"] = str2hex(RandBytes(32))
aPageVars["pwhash"] = sha256(aPagevars["password"]+aPageVars["salt"])
aPageVars["sessionid"] = str2hex(randbytes(32))
aPageVars["fgtpwd"] = aPageVars["fgtpwd"]
oUser.Insert()
oUser.Disconnect()
new page {
	cookie("sessionid",aPageVars["sessionid"])
	text("New User Created!")
	newline()
	text("User Name : " + aPageVars["username"])
	newline()
formstart("ex28.ring")
divstart([ :style= styletextcenter() + stylegradient(52) ])
                  submit([:value = "Login"  ])
                
divend()
formend()
}


