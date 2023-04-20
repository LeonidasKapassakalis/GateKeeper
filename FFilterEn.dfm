object frmFilterEn: TfrmFilterEn
  Left = 326
  Top = 222
  BorderIcons = [biSystemMenu]
  Caption = #934#943#955#964#961#959
  ClientHeight = 528
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 643
    Height = 528
    ActivePage = TabShMain
    Align = alClient
    TabOrder = 0
    object TabShMain: TTabSheet
      Caption = 'Main'
      Constraints.MinHeight = 500
      ExplicitLeft = 20
      ExplicitTop = 88
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        635
        500)
      object btnAccept: TBitBtn
        Left = 487
        Top = 463
        Width = 137
        Height = 23
        Anchors = [akRight, akBottom]
        Caption = #913#960#959#948#959#967#942
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btnAcceptClick
        OnKeyDown = btnAcceptKeyDown
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      ImageIndex = 1
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 635
        Height = 500
        Align = alClient
        DataSource = DataSource99
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object SQLMemTable1: TSQLMemTable
    CurrentVersion = '5.00 '
    DatabaseName = 'MEMORY'
    ReadOnly = False
    AutoCalcFields = False
    CaseInsensitive = False
    TableName = 'Table1'
    Exclusive = False
    MemoryTableAllocBy = 10
    Left = 56
    Top = 24
  end
  object DataSource99: TDataSource
    DataSet = SQLMemTable1
    Left = 136
    Top = 24
  end
  object PopChLstBox: TPopupMenu
    Left = 48
    Top = 96
    object ClbAll: TMenuItem
      Caption = #908#955#945
      OnClick = ClbAllClick
    end
    object ClbNone: TMenuItem
      Caption = #922#945#957#941#957#945
      OnClick = ClbNoneClick
    end
    object N4561: TMenuItem
      Caption = 'Find'
      OnClick = N4561Click
    end
  end
end
