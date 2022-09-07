pageextension 50106 "TU01 PurchaseUnvoiceSubform" extends "Purch. Invoice Subform"
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