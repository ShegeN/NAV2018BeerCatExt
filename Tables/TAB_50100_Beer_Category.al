table 50100 "BCA Beer Category"
{
    Caption = 'Beer Category';

    fields
    {
        field(1;Code;Code[20])
        {
            Caption='Code';
            NotBlank=true;
        }
        field(2;name;Text[50])
        {
            Caption = 'Name';
        }
    }

    keys
    {
        key(PK;Code)
        {
            Clustered = true;
        }
    }
    
}