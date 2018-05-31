codeunit 50101 "BCA Settings Management"
{
    [EventSubscriber(ObjectType::Table, 50100, 'OnBeforeValidateEvent', 'Code', false, false)]
    local procedure OnBeerCategoryValidate(Rec:Record "BCA Beer Category"; xRec:Record "BCA Beer Category");
        var notBeerMessage : Label 'This is not a beer!';
        begin
            if StrPos(Rec.Code,'WINE') > 0 then
                Error(notBeerMessage);
        end;
}