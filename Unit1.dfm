object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #304'MYO MESAJ MAK'#304'NASI'
  ClientHeight = 153
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 32
    Width = 55
    Height = 13
    Caption = 'Kullan'#305'c'#305' Ad'#305
  end
  object Label2: TLabel
    Left = 40
    Top = 67
    Width = 22
    Height = 13
    Caption = #350'ifre'
  end
  object Edit1: TEdit
    Left = 112
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 112
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 112
    Top = 91
    Width = 75
    Height = 25
    Caption = 'Giri'#351
    TabOrder = 2
    OnClick = Button1Click
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=orb;Initial Catalog=gorsel2;Data Source=localho' +
      'st\ozerk'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 120
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ad'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'sf'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from m_user'
      'where adsoyad=:ad and sifre=:sf')
    Left = 80
    Top = 120
    object ADOQuery1id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQuery1adsoyad: TStringField
      FieldName = 'adsoyad'
      Size = 30
    end
    object ADOQuery1sifre: TStringField
      FieldName = 'sifre'
      Size = 10
    end
  end
end
