object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Ki'#351'i Ekleme'
  ClientHeight = 270
  ClientWidth = 240
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 217
    Height = 209
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'adsoyad'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 8
    Top = 223
    Width = 224
    Height = 41
    Caption = 'Ekle'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'x'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'y'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from m_user'
      
        'where (id<>:x) and (id not in (select eklenen from m_liste where' +
        ' kim=:y))')
    Left = 48
    Top = 32
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
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 96
    Top = 32
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from m_liste'
      'where id=-1')
    Left = 160
    Top = 232
    object ADOQuery2id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQuery2kim: TIntegerField
      FieldName = 'kim'
    end
    object ADOQuery2eklenen: TIntegerField
      FieldName = 'eklenen'
    end
  end
end
