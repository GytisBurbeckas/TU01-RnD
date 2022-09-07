
codeunit 50100 "TU01 Extension Blog Sub."
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::"Item Journal Line", 'OnAfterCopyItemJnlLineFromPurchLine', '', true, true)]
    local procedure TransferSourceOfPurchLineToJournalLine(PurchLine: Record "Purchase Line"; var ItemJnlLine: Record "Item Journal Line")
    begin
        ItemJnlLine."RnD Code" := PurchLine."RnD Code";
        ItemJnlLine."RnD Changed" := PurchLine."RnD Changed";
    end;

    [EventSubscriber(ObjectType::Table, Database::"Item Journal Line", 'OnAfterCopyItemJnlLineFromSalesLine', '', true, true)]
    local procedure TransferSourceOfSalesLineToJournalLine(SalesLine: Record "Sales Line"; var ItemJnlLine: Record "Item Journal Line")
    begin
        ItemJnlLine."RnD Code" := SalesLine."RnD Code";
        ItemJnlLine."RnD Changed" := SalesLine."RnD Changed";
        
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnAfterInitItemLedgEntry', '', true, true)]
    local procedure TransferSourceOfJournalToLedger(ItemJournalLine: Record "Item Journal Line"; var ItemLedgEntryNo: Integer; var NewItemLedgEntry: Record "Item Ledger Entry")
    begin
        NewItemLedgEntry."RnD Code" := ItemJournalLine."RnD Code";
        NewItemLedgEntry."RnD Changed" := ItemJournalLine."RnD Changed";
    end;
}