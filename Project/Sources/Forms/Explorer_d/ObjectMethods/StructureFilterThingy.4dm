//Searchpicker sample code

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		// Init the var itself
		C_TEXT:C284(vStructureFilter)
		vStructureFilter:=""
		SearchPicker SET HELP TEXT("StructureFilterThingy"; "table/Field name@")  //<TRANSLATION>
		
		
	: (Form event code:C388=On Data Change:K2:15)
		Form:C1466.controller.FilterFieldList(vStructureFilter)
		Explorer_ApplyStructureFilter(Form:C1466)
		
End case 
