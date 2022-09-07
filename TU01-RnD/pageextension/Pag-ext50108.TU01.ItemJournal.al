pageextension 50108 "TU01 Item Journal" extends "Item Journal"
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

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}