tableextension 50101 "BCA Item" extends Item
{
    fields
    {
        field(50101;"BCA Category Code";Code[20])
        {
            Caption='Beer Category Code';
            TableRelation="BCA Beer Category";
        }
    }
    
    var
        myInt : Integer;
}