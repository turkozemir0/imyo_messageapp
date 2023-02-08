unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery1id: TAutoIncField;
    ADOQuery1adsoyad: TStringField;
    ADOQuery1sifre: TStringField;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.Parameters[0].Value:=Edit1.Text;
ADOQuery1.Parameters[1].Value:=Edit2.Text;
ADOQuery1.Open;
if ADOQuery1.RecordCount>0 then
 begin
   Form2.show;
   Form2.Caption:='HOÞGELDÝN :) '+ADOQuery1adsoyad.Value;
   Form1.Hide;
 end
 else
  begin
    edit1.Text:='';
    Edit2.Text:='';
    ShowMessage('Yanlýþ Giriþ Yaptýnýz');
  end;
end;

end.
