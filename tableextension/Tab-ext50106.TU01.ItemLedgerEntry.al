tableextension 50106 "TU01 ItemLedgerEntries" extends "Item Ledger Entry"
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

    // trigger OnInsert()
    // var
    //     Item: Record Item;

    // begin
    //     if Item.Get(Rec."Item No.") then begin
    //         Rec."RnD Code" := Item."RnD Code";

    //     end;
    // end;
}