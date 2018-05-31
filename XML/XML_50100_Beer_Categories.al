xmlport 50101 "BCA Beer Categories"
{
    schema
    {
        textelement(BCA_Beer_Categories)
        {            
            tableelement(BCA_Beer_Category; "BCA Beer Category")
            {
                AutoReplace=true;

                fieldattribute(Code; BCA_Beer_Category.Code)
                {
                }
                fieldattribute(Name;BCA_Beer_Category.name)
                {

                }
            }
        }
    }

}