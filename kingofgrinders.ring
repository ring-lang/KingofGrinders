#!C:\ring\bin\ring.exe -cgi

Load "weblib.ring"

Import System.Web

Func Main
  new BootstrapPage {
        divstart([ :class = "container" ])
           divstart([ :style= styletextcenter() + stylegradient(52) ])
                h1("King of Grinders")
          divend()
          divstart([ :class = :row ])
                divstart([ :class = "col-sm-4" ])
                  h3("Welcome to the King of Grinders")
                  p([ :text = "King of Grinders is a unique MMORPG. It is basically a real living world simulation in text.
You will be born here, do chores, work for living and money, worship,  die and then reborn. 
Dinosaur age to Modern Age and even God Age, ascensions to higher world and getting immortality, a never seen before game concepts are here.

" ])
                divend()
                divstart([ :class = "col-sm-4" ])
                  h3("What makes King of Grinders different from other MMORPGs")
                  p([ :text = "Its not a pay to win. Our all revenue will be based on Google Adsense. 
Day and night, years etc. all will be simulated. Eras will come and go i.e. the game beginning will be set from Dinosaurs age. 
And you can be any of the random species that were living during that period. As time will pass you will die and reborn as new species.
Which species? That is dependent upon your karmas (acts of goodwill, evil). Just try to be original as you are in real life to enjoy this game to the best. 
" ])
                divend()
                divstart([ :class = "col-sm-4" ])
                  h3("Contact Us & Donations")
                  p([ :text = "As you know we are 100 percent free to play game but if you like our work you can donate to keep our servers alive. To donate simply contact me at my email for further instructions. Also you can write any of your other queries to mailmeharry2008@yahoo.com" ])
                divend()
          divend()
        divend()
newline()
newline()
formstart ("ex26.ring")
divstart([ :style= styletextcenter() + stylegradient(52) ])
                  submit([:value = "Register"  ])
                
divend()
formend()
formstart("ex28.ring")
divstart([ :style= styletextcenter() + stylegradient(52) ])
                  submit([:value = "Login"  ])
                
divend()
formend()
  }
