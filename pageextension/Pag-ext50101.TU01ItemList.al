pageextension 50101 "TU01 ItemList" extends "Item List"
{
    layout
    {
        addafter("Default Deferral Template Code")
        {
            field("RnD Code"; Rec."RnD Code")
            {
                ApplicationArea = all;
            }
        }
    }
}