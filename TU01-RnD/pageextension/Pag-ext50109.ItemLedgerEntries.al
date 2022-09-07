pageextension 50109 "TU01 ItemLedgerEntries" extends "Item Ledger Entries"
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