unit UStatement;

interface
type
  TCustomer = class
    public
      function GetStatement: string;
      function GetHTMLStatement: string; virtual; abstract;
      function GetTextStatement: string; virtual; abstract;
  end;
implementation

{ TCustomer }

function TCustomer.GetStatement: string;
begin
  result:=GetHTMLStatement + GetTextStatement;
end;

end.
