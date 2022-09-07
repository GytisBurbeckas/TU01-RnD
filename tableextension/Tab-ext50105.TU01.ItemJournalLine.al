tableextension 50105 "TU01 ItemJournalLine" extends "Item Journal Line"
{
    fields
    {
        modify("Item No.")
        {
            trigger OnAfterValidate()
            var
            begin
                SetRndCode();
                "RnD Changed" := false;
            end;

        }

        field(50001; "RnD Code"; Code[20])
        {
            TableRelation = "RnD Code";

            trigger OnValidate()
            begin
                "RnD Changed" := true;
            end;
        }
        field(50002; "RnD Changed"; Boolean)
        {
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                Rec."RnD Changed" := true;
            end;
        }
        field(50003; "Prev. Item Code"; Code[20])
        {
            DataClassification = CustomerContent;
        }
    }

    local procedure SetRndCode()
    var
        ItemRecord: Record Item;
    begin
        ItemRecord.Get(Rec."Item No.");
        Rec."RnD Code" := ItemRecord."RnD Code";
    end;
}