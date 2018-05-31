tableextension 50101 "BCA Item" extends Item
{
    fields
    {
        field(50101;"BCA Category Code";Code[20])
        {
            Caption='Beer Category Code';
            TableRelation="BCA Beer Category";
        }
        field(50102;"BCA Beer Category Name";Text[50])
        {
            Caption='Beer Category Name';
            FieldClass=FlowField;
            CalcFormula=lookup("BCA Beer Category".name where(Code=field("BCA Category Code")));
        }
    }
    
    var
        myInt : Integer;
}