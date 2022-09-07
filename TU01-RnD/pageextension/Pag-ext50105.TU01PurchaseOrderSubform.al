pageextension 50105 "TU01 PurchaseOrderSubform" extends "Purchase Order Subform"
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
