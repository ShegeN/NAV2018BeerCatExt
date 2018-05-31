codeunit 50101 "BCA Settings Management"
{
    [EventSubscriber(ObjectType::Table, 50100, 'OnBeforeValidateEvent', 'Code', false, false)]
    local procedure OnBeerCategoryValidate(Rec:Record "BCA Beer Category"; xRec:Record "BCA Beer Category");
        var notBeerMessage : Label 'This is not a beer!';
        begin
            if StrPos(Rec.Code,'WINE') > 0 then
                Error(notBeerMessage);
        end;

    procedure ExportBeerCategories();
    var
    TmpBlob: Record TempBlob temporary;
    ExportBeerCategories: XmlPort "BCA Beer Categories";
    OutStr: OutStream;
    InStr: InStream;
    FileName: Text;
    FileNameLabel: Label 'BeerCategories.xml';
    DialogTitleLabel: Label 'Beer Categories Export';
    begin
        TmpBlob.init;
        TmpBlob.Blob.CreateOutStream(OutStr);
        ExportBeerCategories.SetDestination(OutStr);
        ExportBeerCategories.Export();
        TmpBlob.Blob.CreateInStream(InStr);
        FileName := FileNameLabel;
        file.DownloadFromStream(InStr,DialogTitleLabel,'','',FileName);
    end;

    procedure ImportBeerCategories();
    var
    TmpBlob: Record TempBlob temporary;
    ImportBeerCategories: XmlPort "BCA Beer Categories";    
    InStr: InStream;
    FileName: Text;
    DialogTitleLabel: Label 'Select XML file for Import';
    FromFilterLabel: Label 'XML Files (*.xml)|*.xml',locked = true;
    begin
        TmpBlob.init;
        TmpBlob.Blob.CreateInStream(InStr);
        file.UploadIntoStream(DialogTitleLabel,'',FromFilterLabel,FileName,InStr);
        ImportBeerCategories.SetSource(InStr);
        ImportBeerCategories.Import();
    end;
}