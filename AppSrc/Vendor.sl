// Vendor.sl
// Vendor Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cVendorDataDictionary.dd

CD_Popup_Object Vendor_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 206
    Set Label To "Vendor Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oVendor_DD is a cVendorDataDictionary
    End_Object 

    Set Main_DD To oVendor_DD
    Set Server  To oVendor_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 196
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Vendor_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oVendor_Id is a cDbCJGridColumn
            Entry_Item Vendor.Id
            Set piWidth to 60
            Set psCaption to "Vndr ID"
        End_Object 

        Object oVendor_Name is a cDbCJGridColumn
            Entry_Item Vendor.Name
            Set piWidth to 250
            Set psCaption to "Name"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to C_$OkButtonLabel
        Set Location to 115 43
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to C_$CancelButtonLabel
        Set Location to 115 97
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to C_$SearchButtonLabel
        Set Location to 115 151
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+C_$OkAcceleratorKey Send KeyAction of oOk_bn
    On_Key Key_Alt+C_$CancelAcceleratorKey Send KeyAction of oCancel_bn
    On_Key Key_Alt+C_$SearchAcceleratorKey Send KeyAction of oSearch_bn


CD_End_Object // Vendor_sl
