object UserDialog: TUserDialog
  Left = 0
  Top = 0
  AutoSize = True
  BorderStyle = bsToolWindow
  Caption = 'Enter Text'
  ClientHeight = 20
  ClientWidth = 232
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object edt1: TEdit
    Left = 0
    Top = 0
    Width = 232
    Height = 21
    Align = alTop
    TabOrder = 0
    OnKeyDown = edt1KeyDown
    ExplicitWidth = 238
  end
end
