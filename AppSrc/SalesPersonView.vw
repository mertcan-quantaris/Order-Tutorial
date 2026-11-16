// C:\DataFlex Projects\OrderTutorial\AppSrc\SalesPersonView.vw
// Sales Person Entry View
//

Use DFClient.pkg
Use DFEntry.pkg

Use cSalesPersonDataDictionary.dd

ACTIVATE_VIEW Activate_SalesPersonView FOR SalesPersonView
Object SalesPersonView is a dbView
    Set Location to 5 5
    Set Size to 36 228
    Set Label To "Sales Person Entry View"
    Set Border_Style to Border_Thick


    Object oSalesPerson_DD is a cSalesPersonDataDictionary
    End_Object 

    Set Main_DD To oSalesPerson_DD
    Set Server  To oSalesPerson_DD



    Object oSalesPersonId is a dbForm
        Entry_Item SalesPerson.Id
        Set Size to 12 46
        Set Location to 5 67
        Set peAnchors to anTopLeftRight
        Set Label to "Sales Person ID"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 62
        Set Label_row_Offset to 0
    End_Object 

    Object oSalesPersonName is a dbForm
        Entry_Item SalesPerson.Name
        Set Size to 12 156
        Set Location to 19 67
        Set peAnchors to anTopLeftRight
        Set Label to "Sales Person Name"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 62
        Set Label_row_Offset to 0
    End_Object 


End_Object 
