pageextension 50100 "TU01 ItemCard" extends "Item Card"
{
    layout
    {
        addafter(Warehouse)
        {
            group("RnD Analytics")
            {
                field("RnD Code"; Rec."RnD Code")
                {
                    ApplicationArea = all;
                }
            }
        }

    }
}