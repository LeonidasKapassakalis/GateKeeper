object frmCall: TfrmCall
  Left = 542
  Top = 215
  Anchors = []
  AutoSize = True
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = #919#956#949#961#959#956#951#957#943#945
  ClientHeight = 227
  ClientWidth = 273
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    273
    227)
  PixelsPerInch = 96
  TextHeight = 13
  object DateTimePicker1: TDateTimePicker
    Left = 88
    Top = 166
    Width = 89
    Height = 25
    Anchors = [akLeft, akBottom]
    Date = 36939.987274189800000000
    Time = 36939.987274189800000000
    DateMode = dmUpDown
    Kind = dtkTime
    TabOrder = 0
  end
  object MonthCalendar1: TMonthCalendar
    Left = 0
    Top = 0
    Width = 273
    Height = 169
    Date = 36939.588074293980000000
    TabOrder = 1
  end
  object Button1: TButton
    Left = 136
    Top = 193
    Width = 113
    Height = 33
    Anchors = [akLeft, akBottom]
    Caption = #927#922
    ModalResult = 1
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 194
    Width = 113
    Height = 33
    Anchors = [akLeft, akBottom]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
end
