pageextension 50102 "TU01 SalesOrderSubform" extends "Sales Order Subform"
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