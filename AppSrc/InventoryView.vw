// C:\DataFlex Projects\OrderTutorial\AppSrc\InventoryView.vw
// Inventory Item View
//

Use DFClient.pkg
Use DFEntry.pkg

Use cVendorDataDictionary.dd
Use cInventoryDataDictionary.dd

ACTIVATE_VIEW Activate_InventoryView FOR InventoryView
Object InventoryView is a dbView
    Set Location to 12 -6
    Set Size to 130 298
    Set Label To "Inventory Item View"
    Set Border_Style to Border_Thick


    Object oVendor_DD is a cVendorDataDictionary
    End_Object 

    Object oInventory_DD is a cInventoryDataDictionary
        Set DDO_Server To oVendor_DD
    End_Object 

    Set Main_DD To oInventory_DD
    Set Server  To oInventory_DD



    Object oInventoryItem_Id is a dbForm
        Entry_Item Inventory.Item_Id
        Set Size to 12 96
        Set Location to 5 77
        Set peAnchors to anTopLeftRight
        Set Label to "Inventory Item ID"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 72
        Set Label_row_Offset to 0
    End_Object 

    Object oInventoryDescription is a dbForm
        Entry_Item Inventory.Description
        Set Size to 12 216
        Set Location to 19 77
        Set peAnchors to anTopLeftRight
        Set Label to "Inventory. Description"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 72
        Set Label_row_Offset to 0
    End_Object 

    Object oInventoryUnit_Price is a dbForm
        Entry_Item Inventory.Unit_Price
        Set Size to 12 60
        Set Location to 105 85
        Set peAnchors to anTopLeftRight
        Set Label to "Unit Price"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 72
        Set Label_row_Offset to 0
    End_Object 

    Object oInventoryOn_Hand is a dbForm
        Entry_Item Inventory.On_Hand
        Set Size to 12 42
        Set Location to 104 236
        Set peAnchors to anTopLeftRight
        Set Label to "On Hand"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 72
        Set Label_row_Offset to 0
    End_Object 

    Object oDbGroup1 is a dbGroup
        Set Location to 39 5
        Set Size to 60 283
        Set Label to 'Vendor'

        Object oVendor_Id is a dbForm
            Entry_Item Vendor.Id
            Set Size to 12 42
            Set Location to 10 68
            Set Label to "Vendor ID:"
        End_Object

        Object oVendor_Name is a dbForm
            Entry_Item Vendor.Name
            Set Size to 12 186
            Set Location to 23 68
            Set Label to "Vendor Name:"
        End_Object

        Object oInventory_Vendor_Part_Id is a dbForm
            Entry_Item Inventory.Vendor_Part_Id
            Set Size to 12 66
            Set Location to 38 68
            Set Label to "Vendor Part Id:"
        End_Object
    End_Object


End_Object 
