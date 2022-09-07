pageextension 50107 "TU01 PostedPurchInvoiceSubform" extends "Posted Purch. Invoice Subform"
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
                ApplicationArea = all;
            }
        }
    }
}