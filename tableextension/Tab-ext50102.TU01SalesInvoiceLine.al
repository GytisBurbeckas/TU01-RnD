tableextension 50102 "TU01 SalesInvoiceLine" extends "Sales Invoice Line"
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