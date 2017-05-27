#!c:\ring\bin\ring.exe -cgi

Load "weblib.ring"
Load "datalib.ring"
Import System.Web

website = "changepasswordui.ring"

new page {
  boxstart()
    text( "Change Password (For security reasons you have to retype your Secret Forgot Password Word)")
  boxend()
newline()
formpost("changepassword.ring")
tablestart([ :Style =  stylemarginleft("2%") + stylemargintop("2%") + stylewidth("90%") ])
rowstart([])
cellstart([:style = stylewidth("20%") + styleheight(30)])
          text("Username")
        cellend()
        cellstart([ :style = stylewidth("80%")  ])
          textbox([:name = "username" , :style = stylewidth("100%")])
        cellend()
rowend()
rowstart([])
cellstart([:style = stylewidth("20%") + styleheight(30)])
          text("Forgot Password Word")
        cellend()
        cellstart([ :style = stylewidth("80%")  ])
          textbox([:name = "fgtpwd" , :style = stylewidth("100%")])
        cellend()
rowend()
rowstart([])
cellstart([:style = stylewidth("20%") + styleheight(30)])
          text("Type your new Password")
        cellend()
        cellstart([ :style = stylewidth("80%")  ])
          textbox([:name = "password" , :type = "password"])
        cellend()
rowend()
rowstart([])
        cellstart([ :style = styleheight(30)])
          submit([:value = "Submit"  ])
        cellend()
      rowend()
tableend()
formend()
}
