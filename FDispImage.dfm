object frmDispImage: TfrmDispImage
  Left = 326
  Top = 196
  BorderStyle = bsToolWindow
  Caption = #928#961#959#946#959#955#942
  ClientHeight = 105
  ClientWidth = 105
  Color = clBtnFace
  Constraints.MinHeight = 50
  Constraints.MinWidth = 50
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 105
    Height = 105
    Align = alClient
    Center = True
    PopupMenu = PopupMenu1
  end
  object PopupMenu1: TPopupMenu
    Left = 40
    Top = 40
    object actPrint: TMenuItem
      Caption = #917#954#964#973#960#969#963#951
      OnClick = actPrintClick
    end
    object actStrech: TMenuItem
      Caption = 'Streach'
      OnClick = actStrechClick
    end
  end
end
