#!c:\ring\bin\ring.exe -cgi

Load "weblib.ring"
Load "datalib.ring"
Import System.Web

website = "changepasswordui.ring"

new page {
  boxstart()
    text( "Change Password")
    newline()
  boxend()
newline()
formpost("changepassword.ring")
tablestart([ :Style =  stylemarginleft("2%") + stylemargintop("2%") + stylewidth("90%") ])
rowstart([])
cellstart([:style = stylewidth("20%") + styleheight(30)])
          text("Type your new Password")
        cellend()
        cellstart([ :style = stylewidth("80%")  ])
          textbox([:name = "password" , :type = "password"])
        cellend()
rowend()
rowstart([])
cellstart([:style = stylewidth("20%") + styleheight(30)])
          text("Retype your Password")
        cellend()
        cellstart([ :style = stylewidth("80%")  ])
          textbox([:name = "repassword" , :type = "password"])
        cellend()
rowend()
rowstart([])
        cellstart([ :style = styleheight(30)])
        cellend()
        cellstart([ :style = styleheight(30)])
          submit([:value = "Submit"  ])
        cellend()
      rowend()
tableend()
formend()
}
