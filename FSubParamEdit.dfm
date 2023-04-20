object frmSubParamEdit: TfrmSubParamEdit
  Left = 326
  Top = 222
  BorderIcons = [biSystemMenu]
  Caption = 'Auto Edit'
  ClientHeight = 232
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 207
    Width = 605
    Height = 25
    DataSource = DMMain.dsFpass
    VisibleButtons = [nbPost, nbCancel]
    Align = alBottom
    Kind = dbnHorizontal
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = DBNavigator1Click
    ExplicitWidth = 488
  end
end
