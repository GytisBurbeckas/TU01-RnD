tableextension 50104 "TU01 PurchaseInvoiceLine" extends "Purch. Inv. Line"
{
    fields
    {
        field(50001; "RnD Code"; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(50002; "RnD Changed"; Boolean)
        {
            DataClassification = CustomerContent;
        }
    }
}