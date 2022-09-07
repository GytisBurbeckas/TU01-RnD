table 50100 "RnD Code"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; Code; Code[20])
        {
            DataClassification = CustomerContent;

        }
        field(11; Description; Text[50])
        {
            DataClassification = CustomerContent;

        }
        field(21; "Start date"; Date)
        {
            DataClassification = CustomerContent;

        }
        field(31; "Synchronization group"; Code[10])
        {
            DataClassification = CustomerContent;

        }
    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}