unit UTextStatement;

interface

uses
  UStatement;

type
  TTextStatement = class(TCustomer)
  private
    zadolzhnost, bonus, name: string;
  published
    constructor create(_name, _zadolzhnost, _bonus: string);
  public
    function GetHTMLStatement: string; override;
    function GetTextStatement: string; override;
  end;

implementation

{ TTextStatement }

constructor TTextStatement.create(_name, _zadolzhnost, _bonus: string);
begin
  zadolzhnost:=_zadolzhnost;
  bonus:=_bonus;
  name:=_name;
end;

function TTextStatement.GetHTMLStatement: string;
begin
  result:='';
end;

function TTextStatement.GetTextStatement: string;
var
  Pname,Pdolg,Pbonus:string;
begin
  Pname:='Учет аренды для ' + name + #13#10;
  Pdolg:='Задолженность: ' + zadolzhnost + ' рублей'  + #13#10;
  Pbonus:='Количество бонусов: ' + bonus;
  result:= Pname + Pdolg + Pbonus;
end;

end.
