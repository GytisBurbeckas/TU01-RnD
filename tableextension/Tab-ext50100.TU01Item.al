tableextension 50100 "TU01 Item" extends Item
{
    fields
    {
        field(123; "RnD Code"; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "RnD Code";
        }

    }

    var
        myInt: Integer;
}