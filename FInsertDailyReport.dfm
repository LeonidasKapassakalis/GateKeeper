inherited frmInsertDailyReport: TfrmInsertDailyReport
  Left = 269
  Top = 252
  Caption = #919#956#949#961#942#963#953#945' '#922#945#964#940#963#964#945#963#951
  ClientHeight = 535
  ClientWidth = 694
  Menu = MainMenu1
  OldCreateOrder = True
  ExplicitWidth = 702
  ExplicitHeight = 581
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel [0]
    Left = 0
    Top = 0
    Width = 694
    Height = 475
    Align = alClient
    Shape = bsFrame
    ExplicitLeft = 12
    ExplicitTop = -24
    ExplicitWidth = 702
  end
  object Label1: TLabel [1]
    Left = 16
    Top = 24
    Width = 62
    Height = 13
    Caption = #919#956#949#961#959#956#951#957#943#945' '
  end
  object DateLBL: TLabel [2]
    Left = 88
    Top = 24
    Width = 62
    Height = 13
    Caption = #919#956#949#961#959#956#951#957#943#945' '
  end
  object VersionLBL: TLabel [3]
    Left = 160
    Top = 24
    Width = 35
    Height = 13
    Caption = 'Version'
  end
  inherited StatusBar1: TStatusBar
    Top = 516
    Width = 694
    ExplicitTop = 516
    ExplicitWidth = 694
  end
  object Panel1: TPanel
    Left = 0
    Top = 475
    Width = 694
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      694
      41)
    object Button2: TButton
      Left = 534
      Top = 8
      Width = 75
      Height = 25
      Action = cmdCancel
      Anchors = [akRight, akBottom]
      Default = True
      TabOrder = 0
    end
    object Button1: TButton
      Left = 614
      Top = 8
      Width = 75
      Height = 25
      Action = cmdOK
      Anchors = [akRight, akBottom]
      TabOrder = 1
    end
  end
  object DBRichEdit1: TDBRichEdit
    Left = 3
    Top = 48
    Width = 684
    Height = 409
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataField = 'RepText'
    DataSource = DMSubParams.dtsDailyReport
    Font.Charset = GREEK_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
  end
  object MainMenu1: TMainMenu
    Left = 440
    Top = 24
    object N1: TMenuItem
      Action = cmdCancel
    end
    object N2: TMenuItem
      Action = cmdOK
    end
  end
  object ActionList1: TActionList
    Left = 508
    Top = 24
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
    object cmdFont10: TAction
      Caption = 'Font'
      OnExecute = cmdFont10Execute
    end
    object cmdIncFont10: TAction
      Caption = '+'#915#961#945#956#956#940#964#969#957
      OnExecute = cmdIncFont10Execute
    end
    object cmdDecFont10: TAction
      Caption = '-'#915#961#945#956#956#940#964#969#957
      OnExecute = cmdDecFont10Execute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 566
    Top = 137
    object cmdFont1: TMenuItem
      Action = cmdFont10
    end
    object MenuItem1: TMenuItem
      Caption = '-'
    end
    object cmdIncFont1: TMenuItem
      Action = cmdIncFont10
    end
    object cmdDecFont1: TMenuItem
      Action = cmdDecFont10
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 456
    Top = 240
  end
end
