object frmGParams: TfrmGParams
  Left = 380
  Top = 268
  Caption = #928#945#961#940#956#949#964#961#959#953
  ClientHeight = 209
  ClientWidth = 299
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Tag = 1
    Left = 16
    Top = 8
    Width = 121
    Height = 21
    Hint = 'Click '#947#953#945' '#954#945#964#945#967#974#961#951#963#951' '#935#961#974#956#945#964#959#962
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Text = 'MDI '#934#959#961#956#945' Panel'
    OnClick = Edit1Click
  end
  object Edit2: TEdit
    Tag = 2
    Left = 16
    Top = 32
    Width = 121
    Height = 21
    Hint = 'Click '#947#953#945' '#954#945#964#945#967#974#961#951#963#951' '#935#961#974#956#945#964#959#962
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Text = 'MDI '#934#959#961#956#940' Grid'
    OnClick = Edit1Click
  end
  object Edit3: TEdit
    Tag = 3
    Left = 16
    Top = 56
    Width = 121
    Height = 21
    Hint = 'Click '#947#953#945' '#954#945#964#945#967#974#961#951#963#951' '#935#961#974#956#945#964#959#962
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Text = 'MDI '#934#972#961#956#945' '#917#960#953#954#949#966#945#955#943#948#945
    OnClick = Edit1Click
  end
  object Edit4: TEdit
    Tag = 4
    Left = 16
    Top = 80
    Width = 121
    Height = 21
    Hint = 'Click '#947#953#945' '#954#945#964#945#967#974#961#951#963#951' '#935#961#974#956#945#964#959#962
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = Edit1Click
  end
  object CheckBox1: TCheckBox
    Left = 176
    Top = 88
    Width = 97
    Height = 17
    Hint = 'Check '#947#953#945' '#954#945#964#945#967#974#961#951#963#951' '#935#961#974#956#945#964#959#962' BackGround'
    Caption = 'BackGround'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object Edit5: TEdit
    Tag = 5
    Left = 16
    Top = 104
    Width = 121
    Height = 21
    Hint = 'Click '#947#953#945' '#954#945#964#945#967#974#961#951#963#951' '#935#961#974#956#945#964#959#962
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    Text = #934#959#961#956#940' '#928#945#961#945#956#949#964#961#953#954#974#957
    OnClick = Edit1Click
  end
  object Edit6: TEdit
    Tag = 8
    Left = 16
    Top = 176
    Width = 121
    Height = 21
    Hint = 'Click '#947#953#945' '#954#945#964#945#967#974#961#951#963#951' '#935#961#974#956#945#964#959#962
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = Edit1Click
  end
  object Edit7: TEdit
    Tag = 7
    Left = 16
    Top = 152
    Width = 121
    Height = 21
    Hint = 'Click '#947#953#945' '#954#945#964#945#967#974#961#951#963#951' '#935#961#974#956#945#964#959#962
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = Edit1Click
  end
  object Edit8: TEdit
    Tag = 6
    Left = 16
    Top = 128
    Width = 121
    Height = 21
    Hint = 'Click '#947#953#945' '#954#945#964#945#967#974#961#951#963#951' '#935#961#974#956#945#964#959#962
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    Text = 'Grid '#928#945#961#945#956#949#964#961#953#954#974#957
    OnClick = Edit1Click
  end
  object Button1: TButton
    Left = 184
    Top = 128
    Width = 75
    Height = 25
    Caption = #922#945#964#945#967#974#961#951#963#951
    ModalResult = 1
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 168
    Width = 75
    Height = 25
    Cancel = True
    Caption = #917#958#972#948#959#962
    ModalResult = 2
    TabOrder = 10
  end
  object ColorDialog1: TColorDialog
    Left = 184
    Top = 32
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 216
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 256
    Top = 40
  end
end
