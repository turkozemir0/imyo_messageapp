unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, ExtCtrls, StdCtrls;

type
  TForm2 = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOQuery1adsoyad: TStringField;
    ADOQuery2: TADOQuery;
    Timer1: TTimer;
    DataSource2: TDataSource;
    ADOQuery3: TADOQuery;
    DBGrid2: TDBGrid;
    ADOQuery1id: TAutoIncField;
    ADOQuery2id: TAutoIncField;
    ADOQuery2kimden: TIntegerField;
    ADOQuery2kime: TIntegerField;
    ADOQuery2mesaj: TStringField;
    ADOQuery2okundu: TBooleanField;
    Memo1: TMemo;
    ADOQuery4: TADOQuery;
    ADOQuery4adsoyad: TStringField;
    DataSource3: TDataSource;
    Edit1: TEdit;
    Button1: TButton;
    ADOTable1: TADOTable;
    ADOTable1id: TAutoIncField;
    ADOTable1kimden: TIntegerField;
    ADOTable1kime: TIntegerField;
    ADOTable1mesaj: TStringField;
    ADOTable1okundu: TBooleanField;
    DataSource4: TDataSource;
    Button2: TButton;
    procedure FormPaint(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
ADOTable1.Open;
ADOTable1.Insert;
ADOTable1kimden.Value:=Form1.ADOQuery1id.Value;
ADOTable1kime.Value:=ADOQuery1id.Value;
ADOTable1mesaj.Value:=Edit1.Text;
ADOTable1.Post;
 Memo1.Lines.Add(DateTimeToStr(now));
 Memo1.Lines.Add(ADOQuery1adsoyad.Value);
 Memo1.Lines.Add(Edit1.Text);
 Edit1.Text:='';
ADOTable1.Close;
end;










procedure TForm2.Button2Click(Sender: TObject);
begin
form3.showmodal;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
Timer1.Enabled:=true;
ADOQuery1.Close;
ADOQuery1.Parameters[0].Value:=Form1.ADOQuery1id.Value;
ADOQuery1.Open;
end;





















procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.close;
end;
procedure TForm2.FormPaint(Sender: TObject);
begin
{ADOQuery1.Close;
ADOQuery1.Parameters[0].Value:=Form1.ADOQuery1id.Value;
ADOQuery1.Open;}
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
ADOQuery2.close;
ADOQuery2.Parameters[0].Value:=Form1.ADOQuery1id.Value;
ADOQuery2.Open;
if ADOQuery2.RecordCount>0 then
begin
ADOQuery4.close;
ADOQuery4.Parameters[0].Value:=ADOQuery2kimden.Value;
ADOQuery4.Open;
 Memo1.Lines.Add(DateTimeToStr(now));
 Memo1.Lines.Add(ADOQuery4adsoyad.Value);
 Memo1.Lines.Add(ADOQuery2mesaj.Value);
 ADOQuery3.close;
 ADOQuery3.Parameters[0].Value:=ADOQuery2id.Value;
 ADOQuery3.ExecSQL;
end;

end;

end.
