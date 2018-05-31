page 50101 "BCA Beer Category List"
{
    PageType = List;
    SourceTable = "BCA Beer Category";
    Caption = 'Beer Category List';

    layout
    {
        area(content)
        {
            group(Beer_Category)
            {
                Caption= 'Beer Category';
                
                field(Code;Code)
                {
                    ApplicationArea=All;
                }
                field(name;name)
                {
                    ApplicationArea=All;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
    
    var
        myInt : Integer;
}