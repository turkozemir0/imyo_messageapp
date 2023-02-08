object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 502
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 253
    Top = 8
    Width = 188
    Height = 233
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
        Title.Alignment = taCenter
        Title.Caption = 'Ki'#351'i Listem'
        Width = 150
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 392
    Width = 430
    Height = 101
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kimden'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kime'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mesaj'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'okundu'
        Width = 40
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 239
    Height = 361
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 264
    Top = 247
    Width = 177
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 264
    Top = 274
    Width = 177
    Height = 41
    Caption = 'G'#246'nder'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 296
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Ki'#351'i Ekle'
    TabOrder = 5
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'x'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select adsoyad, id'
      'from m_user'
      'where id in(select eklenen '
      '                    from m_liste '
      '                      where kim=:x)')
    Left = 272
    Top = 72
    object ADOQuery1adsoyad: TStringField
      FieldName = 'adsoyad'
      Size = 30
    end
    object ADOQuery1id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 304
    Top = 72
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'x'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from m_mesaj'
      'where kime=:x and okundu=0')
    Left = 40
    Top = 208
    object ADOQuery2id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQuery2kimden: TIntegerField
      FieldName = 'kimden'
    end
    object ADOQuery2kime: TIntegerField
      FieldName = 'kime'
    end
    object ADOQuery2mesaj: TStringField
      FieldName = 'mesaj'
      Size = 50
    end
    object ADOQuery2okundu: TBooleanField
      FieldName = 'okundu'
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 104
    Top = 208
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 72
    Top = 208
  end
  object ADOQuery3: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
      item
        Name = 'x'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'update m_mesaj'
      'set okundu=1'
      'where id=:x')
    Left = 40
    Top = 272
  end
  object ADOQuery4: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'x'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select adsoyad'
      'from m_user'
      'where id=:x')
    Left = 40
    Top = 240
    object ADOQuery4adsoyad: TStringField
      FieldName = 'adsoyad'
      Size = 30
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery4
    Left = 72
    Top = 240
  end
  object ADOTable1: TADOTable
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'm_mesaj'
    Left = 264
    Top = 304
    object ADOTable1id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOTable1kimden: TIntegerField
      FieldName = 'kimden'
    end
    object ADOTable1kime: TIntegerField
      FieldName = 'kime'
    end
    object ADOTable1mesaj: TStringField
      FieldName = 'mesaj'
      Size = 50
    end
    object ADOTable1okundu: TBooleanField
      FieldName = 'okundu'
    end
  end
  object DataSource4: TDataSource
    DataSet = ADOTable1
    Left = 304
    Top = 304
  end
end
