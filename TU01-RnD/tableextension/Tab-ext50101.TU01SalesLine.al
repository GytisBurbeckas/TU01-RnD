tableextension 50101 "TU01 SalesLine" extends "Sales Line"
{
    fields
    {
        modify("No.")
        {
            trigger OnAfterValidate()
            var
                ItemRecord: Record Item;
            begin
                if (Type = Type::Item) then begin
                    ItemRecord.Get(Rec."No.");
                    Rec."RnD Code" := ItemRecord."RnD Code";
                end;
            end;
        }

        field(50001; "RnD Code"; Code[20])
        {
            TableRelation =
        if (Type = const(Item)) "RnD Code";

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
    }

    var
        myInt: Integer;
}