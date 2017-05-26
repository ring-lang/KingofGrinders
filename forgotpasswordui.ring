#!c:\ring\bin\ring.exe -cgi

Load "weblib.ring"
Load "datalib.ring"
Import System.Web

website = "forgotpasswordui.ring"

new page {
  boxstart()
    text( "Forgot Password")
    newline()
  boxend()
newline()
formpost("forgotpassword.ring")
	tablestart([ :Style =  stylemarginleft("2%") + stylemargintop("2%") + stylewidth("90%") ])
		rowstart([])
		cellstart([:style = stylewidth("20%") + styleheight(30)])
				  text("User Name")
				cellend()
				cellstart([ :style = stylewidth("80%")  ])
				  textbox([:name = "username", :style = stylewidth("50%")])
				cellend()
		rowend()
		rowstart([])
		cellstart([:style = stylewidth("20%") + styleheight(30)])
				  text("Email")
				cellend()
				cellstart([ :style = stylewidth("80%")  ])
				  textbox([:name = "email", :style = stylewidth("50%")])
				cellend()
		rowend()
		rowstart([])
				cellstart([ :style = styleheight(30)])
				cellend()
				cellstart([ :style = styleheight(30)])
				  submit([:value = "Click here to send the Forgot Password Secret Word to your email."  ])
				cellend()
			  rowend()
	tableend()
  formend()

}
