unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ShellAPI, Vcl.OleCtrls, SHDocVw, UStatement, UHTMLStatement, UTextStatement;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Edit3: TEdit;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
      Customer: TCustomer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  f: TextFile;
begin
  Customer:= TTextStatement.Create(edit1.Text, edit2.Text, edit3.Text);
  AssignFile(f, 'OTCHET_TXT.txt');
  Rewrite(f);
  Writeln(f, Customer.GetStatement);
  CloseFile(f);
  Customer.Destroy;
  ShellExecute (Form1.Handle, nil, 'OTCHET_TXT.txt', nil, nil, SW_RESTORE);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  f: TextFile;
begin
  Customer:= THTMLStatement.Create(edit1.Text, edit2.Text, edit3.Text);
  AssignFile(f, 'OTCHET_HTML.html');
  Rewrite(f);
  Writeln(f, Customer.GetStatement);
  CloseFile(f);
  Customer.Destroy;
  ShellExecute (Form1.Handle, nil, 'OTCHET_HTML.html', nil, nil, SW_RESTORE);
end;

end.
