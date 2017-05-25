#!c:\ring\bin\ring.exe -cgi
Load "weblib.ring"
Import System.Web

cTemp = Template("sendfgtpwdmail.html",self)
 New Page
                {
                        boxstart()
                                text( "Test Templates" )
                                newline()
                        boxend()
                        html(cTemp)
                }
