object frmFilterEn2: TfrmFilterEn2
  Left = 326
  Top = 222
  BorderIcons = [biSystemMenu]
  Caption = #934#943#955#964#961#959
  ClientHeight = 97
  ClientWidth = 566
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    566
    97)
  PixelsPerInch = 96
  TextHeight = 13
  object btnAccept: TBitBtn
    Left = 462
    Top = 72
    Width = 80
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #913#960#959#948#959#967#942
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 0
    OnClick = btnAcceptClick
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
end
