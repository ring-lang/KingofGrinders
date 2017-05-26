#!c:\ring\bin\ring.exe -cgi
Load "weblib.ring"
Import System.Web
#!C:\ring\bin\ring.exe -cgi

Load "weblib.ring"
Load "datalib.ring"
Load "ex25_users.ring"

Import System.Web

oUser = new UsersModel
oUser.Connect()
lResult = oUser.FindWith("username",aPageVars["username"])
new page {
	if lResult
                                if aPagevars["Email"] = oUser.Email
			text ("Username and Email match. Secret word is sent to your Email.")
		abc = oUser.fgtpwd
 	New Page
                {

	cTemp = Template("sendfgtpwdmail.html",self)
                        html(cTemp)
                }	
		else
			text ("Username and Email doesn't match. Make sure you typed them correctly.")
		ok
		
	else
		text("Bad User Name!")
	ok
}
oUser.Disconnect()


	
