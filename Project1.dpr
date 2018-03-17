program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  UStatement in 'UStatement.pas',
  UTextStatement in 'UTextStatement.pas',
  UHTMLStatement in 'UHTMLStatement.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
