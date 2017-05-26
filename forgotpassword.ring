#!c:\ring\bin\ring.exe -cgi
Load "weblib.ring"
Import System.Web


 New Page
                {

	cTemp = Template("sendfgtpwdmail.html",self)
                        boxstart()
                                text( "Send Forgot Password Secret Word to Email" )
                                newline()
                        boxend()
                        html(cTemp)
                }
