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
        area(Processing)
        {
            action(Export)
            {
                Caption = 'Export';
                ApplicationArea=All;
                Promoted=true;
                PromotedCategory=Process;
                PromotedIsBig=true;
                Image=Export;

                trigger OnAction();
                var
                    BCASettingsMgt : Codeunit "BCA Settings Management";
                begin
                    BCASettingsMgt.ExportBeerCategories();
                end;
            }

            action(Import)
            {
                Caption = 'Import';
                ApplicationArea=All;
                Promoted=true;
                PromotedCategory=Process;
                PromotedIsBig=true;
                Image=Import;

                trigger OnAction();
                var
                    BCASettingsMgt : Codeunit "BCA Settings Management";
                begin
                    BCASettingsMgt.ImportBeerCategories();
                end;
            }
        }
    }
    
    var
        myInt : Integer;
}