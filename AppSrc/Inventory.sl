// Inventory.sl
// Inventory Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cVendorDataDictionary.dd
Use cInventoryDataDictionary.dd

CD_Popup_Object Inventory_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 353
    Set Label To "Inventory Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oVendor_DD is a cVendorDataDictionary
    End_Object 

    Object oInventory_DD is a cInventoryDataDictionary
        Set DDO_Server To oVendor_DD
    End_Object 

    Set Main_DD To oInventory_DD
    Set Server  To oInventory_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 343
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Inventory_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oInventory_Item_Id is a cDbCJGridColumn
            Entry_Item Inventory.Item_Id
            Set piWidth to 150
            Set psCaption to "Item ID"
        End_Object 

        Object oInventory_Description is a cDbCJGridColumn
            Entry_Item Inventory.Description
            Set piWidth to 250
            Set psCaption to "Description"
        End_Object 

        Object oInventory_Unit_Price is a cDbCJGridColumn
            Entry_Item Inventory.Unit_Price
            Set piWidth to 90
            Set psCaption to "Unit Price"
        End_Object 

        Object oInventory_On_Hand is a cDbCJGridColumn
            Entry_Item Inventory.On_Hand
            Set piWidth to 65
            Set psCaption to "On Hand"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to C_$OkButtonLabel
        Set Location to 115 190
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to C_$CancelButtonLabel
        Set Location to 115 244
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to C_$SearchButtonLabel
        Set Location to 115 298
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+C_$OkAcceleratorKey Send KeyAction of oOk_bn
    On_Key Key_Alt+C_$CancelAcceleratorKey Send KeyAction of oCancel_bn
    On_Key Key_Alt+C_$SearchAcceleratorKey Send KeyAction of oSearch_bn


CD_End_Object // Inventory_sl
