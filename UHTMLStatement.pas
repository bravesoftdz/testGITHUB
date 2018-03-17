unit UHTMLStatement;

interface

uses
  UStatement;

type
  THTMLStatement = class(TCustomer)
  private
    zadolzhnost, bonus, name: string;
  published
    constructor create(_name, _zadolzhnost, _bonus: string);
  public
    function GetHTMLStatement: string; override;
    function GetTextStatement: string; override;
  end;
implementation

{ THTMLStatement }

constructor THTMLStatement.create(_name, _zadolzhnost, _bonus : string);
begin
  zadolzhnost:=_zadolzhnost;
  bonus:=_bonus;
  name:=_name;
end;

function THTMLStatement.GetHTMLStatement: string;
var
  Pname,Pdolg,Pbonus:string;
begin
  Pname:='<h2>���� ������ ��� ' + name + '</h2>';
  Pdolg:='<p>�������������: ' + '<em>' + zadolzhnost  + '<em>' + ' ������ </p>';
  Pbonus:='<p>���������� �������: ' + '<em>' + bonus + '</em>' + '</p>';
  result:= Pname + Pdolg + Pbonus;
end;

function THTMLStatement.GetTextStatement: string;
begin
  result:='';
end;

end.
