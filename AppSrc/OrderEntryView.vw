// C:\DataFlex Projects\OrderTutorial\AppSrc\OrderEntryView.vw
// Order Entry View
//

Use DFClient.pkg
Use DFEntry.pkg
Use DFSpnEnt.pkg
Use DfCEntry.pkg
Use cDbCJGrid.pkg
Use cDbCJGridColumn.pkg

Use cCustomerDataDictionary.dd
Use cSalesPersonDataDictionary.dd
Use cVendorDataDictionary.dd
Use cOrderHeaderDataDictionary.dd
Use cInventoryDataDictionary.dd
Use cOrderDetailDataDictionary.dd

ACTIVATE_VIEW Activate_OrderEntryView FOR OrderEntryView
Object OrderEntryView is a dbView
    Set Location to 5 5
    Set Size to 154 472
    Set Label To "Order Entry View"
    Set Border_Style to Border_Thick


    Object oCustomer_DD is a cCustomerDataDictionary
    End_Object 

    Object oSalesPerson_DD is a cSalesPersonDataDictionary
    End_Object 

    Object oVendor_DD is a cVendorDataDictionary
    End_Object 

    Object oOrderHeader_DD is a cOrderHeaderDataDictionary
        Set DDO_Server To oCustomer_DD
        Set DDO_Server To oSalesPerson_DD
        // this lets you save a new parent DD from within child DD
        Set Allow_Foreign_New_Save_State to True
    End_Object 

    Object oInventory_DD is a cInventoryDataDictionary
        Set DDO_Server To oVendor_DD
    End_Object 

    Object oOrderDetail_DD is a cOrderDetailDataDictionary
        Set DDO_Server To oOrderHeader_DD
        Set DDO_Server To oInventory_DD
        Set Constrain_File To OrderHeader.File_Number
    End_Object 

    Set Main_DD To oOrderHeader_DD
    Set Server  To oOrderHeader_DD



    Object oOrderHeaderOrder_Number is a dbForm
        Entry_Item OrderHeader.Order_Number
        Set Size to 12 42
        Set Location to 5 59
        Set peAnchors to anTopLeftRight
        Set Label to "Order Number"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 54
        Set Label_row_Offset to 0
    End_Object 

    Object oCustomerCustomer_Number is a dbForm
        Entry_Item Customer.Customer_Number
        Set Size to 12 42
        Set Location to 5 167
        Set peAnchors to anTopRight
        Set Label to "Customer Number"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 61
        Set Label_row_Offset to 0
    End_Object 

    Object oOrderHeaderOrder_Date is a dbSpinForm
        Entry_Item OrderHeader.Order_Date
        Set Size to 12 79
        Set Location to 5 250
        Set peAnchors to anTopRight
        Set Label to "Order Date"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 36
        Set Label_row_Offset to 0
    End_Object 

    Object oCustomerName is a dbForm
        Entry_Item Customer.Name
        Set Size to 12 186
        Set Location to 19 59
        Set peAnchors to anTopLeftRight
        Set Label to "Customer Name"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 54
        Set Label_row_Offset to 0
    End_Object 

    Object oCustomerAddress is a dbForm
        Entry_Item Customer.Address
        Set Size to 12 186
        Set Location to 33 59
        Set peAnchors to anTopLeftRight
        Set Label to "Street Address"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 54
        Set Label_row_Offset to 0
    End_Object 

    Object oOrderHeaderOrdered_By is a dbForm
        Entry_Item OrderHeader.Ordered_By
        Set Size to 12 78
        Set Location to 33 287
        Set peAnchors to anTopRight
        Set Label to "Ordered By"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 37
        Set Label_row_Offset to 0
    End_Object 

    Object oCustomerCity is a dbForm
        Entry_Item Customer.City
        Set Size to 12 90
        Set Location to 47 59
        Set peAnchors to anTopLeftRight
        Set Label to "City"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 54
        Set Label_row_Offset to 0
    End_Object 

    Object oCustomerState is a dbComboForm
        Entry_Item Customer.State
        Set Size to 12 39
        Set Location to 47 172
        Set peAnchors to anTopRight
        Set Label to "State"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 18
        Set Label_row_Offset to 0
    End_Object 

    Object oCustomerZip is a dbForm
        Entry_Item Customer.Zip
        Set Size to 12 66
        Set Location to 47 269
        Set peAnchors to anTopRight
        Set Label to "Zip/Postal Code"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 53
        Set Label_row_Offset to 0
    End_Object 

    Object oSalesPersonId is a dbForm
        Entry_Item SalesPerson.Id
        Set Size to 12 46
        Set Location to 47 389
        Set peAnchors to anTopRight
        Set Label to "Sales Person ID"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 49
        Set Label_row_Offset to 0
    End_Object 

    Object oOrderHeaderTerms is a dbComboForm
        Entry_Item OrderHeader.Terms
        Set Size to 12 91
        Set Location to 61 59
        Set peAnchors to anTopLeftRight
        Set Label to "Terms"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 54
        Set Label_row_Offset to 0
    End_Object 

    Object oOrderHeaderShip_Via is a dbComboForm
        Entry_Item OrderHeader.Ship_Via
        Set Size to 12 91
        Set Location to 61 182
        Set peAnchors to anTopRight
        Set Label to "Ship Via"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 27
        Set Label_row_Offset to 0
    End_Object 

    Object oDetailGrid is a cDbCJGrid
        Set Size to 66 462
        Set Location to 83 5
        Set Server to oOrderDetail_DD
        Set Ordering to 1
        Set peAnchors to anAll
        Set psLayoutSection to "OrderEntryView_oDetailGrid"
        Set pbAllowInsertRow to False
        Set pbHeaderPrompts to True

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

        Object oOrderDetail_Price is a cDbCJGridColumn
            Entry_Item OrderDetail.Price
            Set piWidth to 90
            Set psCaption to "Price"
        End_Object 

        Object oOrderDetail_Qty_Ordered is a cDbCJGridColumn
            Entry_Item OrderDetail.Qty_Ordered
            Set piWidth to 63
            Set psCaption to "Quantity"
        End_Object 

        Object oOrderDetail_Extended_Price is a cDbCJGridColumn
            Entry_Item OrderDetail.Extended_Price
            Set piWidth to 110
            Set psCaption to "Total"
        End_Object 

    End_Object 

    //-----------------------------------------------------------------------
    // Create custom confirmation messages for save and delete
    // We must create the new functions and assign verify messages
    // to them.
    //-----------------------------------------------------------------------

    Function ConfirmDeleteHeader Returns Boolean
        Boolean bFail
        Get Confirm C_$DeleteEntireHeaderAndAllDetail to bFail
        Function_Return bFail
    End_Function 

    // Only confirm on the saving of new records
    Function ConfirmSaveHeader Returns Boolean
        Boolean bNoSave bHasRecord
        Handle  hoSrvr
        Get Server to hoSrvr
        Get HasRecord of hoSrvr to bHasRecord
        If not bHasRecord Begin
            Get Confirm C_$SaveThisNewHeader to bNoSave
        End
        Function_Return bNoSave
    End_Function 

    // Define alternate confirmation Messages
    Set Verify_Save_MSG       to (RefFunc(ConfirmSaveHeader))
    Set Verify_Delete_MSG     to (RefFunc(ConfirmDeleteHeader))
    // Saves in header should not clear the view
    Set Auto_Clear_Deo_State to False


End_Object 
