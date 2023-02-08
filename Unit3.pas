unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls;

type
  TForm3 = class(TForm)
    ADOQuery1: TADOQuery;
    ADOQuery1id: TAutoIncField;
    ADOQuery1adsoyad: TStringField;
    ADOQuery1sifre: TStringField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    ADOQuery2: TADOQuery;
    ADOQuery2id: TAutoIncField;
    ADOQuery2kim: TIntegerField;
    ADOQuery2eklenen: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
  uses unit1,unit2;
{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
ADOQuery2.Open;
ADOQuery2.Insert;
ADOQuery2kim.Value:=Form1.ADOQuery1id.Value;
ADOQuery2eklenen.Value:=ADOQuery1id.Value;
ADOQuery2.Post;
ADOQuery1.close;
ADOQuery1.Parameters[0].Value:=Form1.ADOQuery1id.Value;
ADOQuery1.Parameters[1].Value:=Form1.ADOQuery1id.Value;
ADOQuery1.Open;
form2.ADOQuery1.Close;
form2.ADOQuery1.Parameters[0].Value:=Form1.ADOQuery1id.Value;
form2.ADOQuery1.Open;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
ADOQuery1.close;
ADOQuery1.Parameters[0].Value:=Form1.ADOQuery1id.Value;
ADOQuery1.Parameters[1].Value:=Form1.ADOQuery1id.Value;
ADOQuery1.Open;
end;

end.
