Class UsersModel from ModelBase
  cSearchColumn = "username"

Class UsersController From ControllerBase
  aColumnsNames = ["id","username","email","fgtpwd"]

  Func UpdateRecord
    oModel.id = aPageVars[cRecID]
    oModel.updatecolumn("username", aPageVars[:username] )
    oModel.updatecolumn("email", aPageVars[:email] )
    oModel.updatecolumn("fgtpwd", aPageVars[:fgtpwd])
    oView.UpdateView(self)

Class UsersView from ViewBase

  oLanguage = new UsersLanguageEnglish

  Func AddFuncScript oPage,oController
    return   oPage.scriptfunc("myadd",oPage.scriptredirection("ex26.ring"))

  Func FormViewContent oController,oTranslation,oPage
    return [
			[oTranslation.aColumnsTitles[2],"textbox","username",
			oController.oModel.UserName,oPage.stylewidth("100%")],
			[oTranslation.aColumnsTitles[3],"textbox","email",
			oController.oModel.Email,oPage.stylewidth("50%")],
                                        [oTranslation.aColumnsTitles[4],"textbox","fgtpwd",
			oController.oModel.fgtpwd,oPage.stylewidth("50%")]
           ]

Class UsersLanguageEnglish
  cTitle = "Users Table"
  cBack = "back"
  aColumnsTitles = ["ID","User Name","Email","fgtpwd"]
  cOptions = "Options"
  cSearch = "Search"
  comboitems = ["Select Option...","Edit","Delete"]
  cAddRecord = "Add Record"
  cEditRecord = "Edit Record"
  cRecordDeleted = "Record Deleted!"
  aMovePages = ["First","Prev","Next","Last"]
  cPage = "Page"
  cRecordsCount = "Records Count"
  cSave = "Save"
  cOf = "of"
  temp = new page
  cTextAlign = temp.StyleTextRight()
  cNoRecords = "No records!"
  
