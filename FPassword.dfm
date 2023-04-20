object frmPassword: TfrmPassword
  Left = 427
  Top = 282
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 183
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 54
    Top = 23
    Width = 76
    Height = 13
    Alignment = taRightJustify
    Caption = 'Αναγνωριστικό'
  end
  object Label2: TLabel
    Left = 90
    Top = 51
    Width = 40
    Height = 13
    Alignment = taRightJustify
    Caption = 'Κωδικός'
  end
  object Label3: TLabel
    Left = 24
    Top = 78
    Width = 106
    Height = 13
    Alignment = taRightJustify
    Caption = 'Επιβεβαίωση κωδικού'
  end
  object Label4: TLabel
    Left = 31
    Top = 107
    Width = 99
    Height = 13
    Alignment = taRightJustify
    Caption = 'Επιπεδο πρόσβασης'
  end
  object edName: TEdit
    Left = 138
    Top = 20
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object edPass: TEdit
    Left = 138
    Top = 48
    Width = 145
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object edPassConf: TEdit
    Left = 138
    Top = 75
    Width = 145
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object btnOk: TButton
    Left = 208
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Αποδοχή'
    Default = True
    TabOrder = 3
  end
  object btnCancel: TButton
    Left = 118
    Top = 144
    Width = 75
    Height = 25
    Cancel = True
    Caption = '’κυρο'
    TabOrder = 4
  end
  object cbLevel: TComboBox
    Left = 138
    Top = 104
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 5
  end
end
