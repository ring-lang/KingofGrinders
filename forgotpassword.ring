#!c:\ring\bin\ring.exe -cgi
Load "weblib.ring"
Import System.Web


 New Page
                {

	cTemp = Template("sendfgtpwdmail.html",self)
                        html(cTemp)
                }
