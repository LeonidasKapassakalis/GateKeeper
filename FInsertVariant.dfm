inherited frmInsertVariant: TfrmInsertVariant
  Left = 269
  Top = 252
  Caption = #928#961#959#963#952#942#954#951' Variant'
  ClientHeight = 151
  ClientWidth = 382
  Menu = MainMenu1
  OldCreateOrder = True
  ExplicitWidth = 390
  ExplicitHeight = 197
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel [0]
    Left = 0
    Top = 0
    Width = 382
    Height = 91
    Align = alClient
    Shape = bsFrame
  end
  object Label1: TLabel [1]
    Left = 16
    Top = 24
    Width = 34
    Height = 13
    Caption = #908#957#959#956#945
  end
  object Label2: TLabel [2]
    Left = 16
    Top = 56
    Width = 55
    Height = 13
    Caption = #928#949#961#953#947#961#945#966#942
  end
  inherited StatusBar1: TStatusBar
    Top = 132
    Width = 382
    ExplicitTop = 132
    ExplicitWidth = 382
  end
  object Edit2: TEdit
    Left = 80
    Top = 48
    Width = 289
    Height = 21
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 80
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 91
    Width = 382
    Height = 41
    Align = alBottom
    TabOrder = 3
    DesignSize = (
      382
      41)
    object Button2: TButton
      Left = 222
      Top = 8
      Width = 75
      Height = 25
      Action = cmdCancel
      Anchors = [akRight, akBottom]
      Default = True
      TabOrder = 0
    end
    object Button1: TButton
      Left = 302
      Top = 8
      Width = 75
      Height = 25
      Action = cmdOK
      Anchors = [akRight, akBottom]
      TabOrder = 1
    end
  end
  object MainMenu1: TMainMenu
    Left = 56
    Top = 96
    object N1: TMenuItem
      Action = cmdCancel
    end
    object N2: TMenuItem
      Action = cmdOK
    end
  end
  object ActionList1: TActionList
    Left = 88
    Top = 96
    object cmdOK: TAction
      Caption = #917#957#951#956#941#961#969#963#951
      Hint = #917#957#951#956#941#961#969#963#951
      OnExecute = cmdOKExecute
    end
    object cmdCancel: TAction
      Caption = #913#954#973#961#969#963#951
      Hint = #913#954#973#961#969#963#951
      OnExecute = cmdCancelExecute
    end
  end
end
