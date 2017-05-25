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
  link([ :url = "changepassword.ring", :title = "Click here to send your personal Forgot Password code to your email." , :style = stylecolor("black")])   
  newline()
  formpost("forgotpassword.ring")
  formend()

}
