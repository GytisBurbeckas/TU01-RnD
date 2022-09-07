pageextension 50103 "TU01 SalesInvoiceSubform" extends "Sales Invoice Subform"
{
    layout
    {
        addafter(Description)
        {
            field("RnD Code"; Rec."RnD Code")
            {
                ApplicationArea = all;
            }
            field("RnD Changed"; Rec."RnD Changed")
            {
                Editable = false;
                ApplicationArea = all;
            }
        }
    }
}