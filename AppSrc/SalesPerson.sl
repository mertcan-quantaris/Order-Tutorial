// SalesPerson.sl
// SalesPerson Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cSalesPersonDataDictionary.dd

CD_Popup_Object SalesPerson_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 210
    Set Label To "SalesPerson Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oSalesPerson_DD is a cSalesPersonDataDictionary
    End_Object 

    Set Main_DD To oSalesPerson_DD
    Set Server  To oSalesPerson_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 200
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "SalesPerson_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oSalesPerson_Id is a cDbCJGridColumn
            Entry_Item SalesPerson.Id
            Set piWidth to 66
            Set psCaption to "ID"
        End_Object 

        Object oSalesPerson_Name is a cDbCJGridColumn
            Entry_Item SalesPerson.Name
            Set piWidth to 250
            Set psCaption to "Sales Person Name"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to C_$OkButtonLabel
        Set Location to 115 47
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to C_$CancelButtonLabel
        Set Location to 115 101
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to C_$SearchButtonLabel
        Set Location to 115 155
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+C_$OkAcceleratorKey Send KeyAction of oOk_bn
    On_Key Key_Alt+C_$CancelAcceleratorKey Send KeyAction of oCancel_bn
    On_Key Key_Alt+C_$SearchAcceleratorKey Send KeyAction of oSearch_bn


CD_End_Object // SalesPerson_sl
