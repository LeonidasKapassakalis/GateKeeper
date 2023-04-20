inherited frmMembersSel: TfrmMembersSel
  Left = 376
  Top = 142
  Caption = #917#960#953#955#959#947#942
  ClientHeight = 480
  ClientWidth = 464
  OldCreateOrder = True
  ExplicitWidth = 470
  ExplicitHeight = 524
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 425
    Width = 464
    ExplicitTop = 425
    ExplicitWidth = 464
    DesignSize = (
      464
      55)
    inherited Button1: TButton
      Left = 40
      ExplicitLeft = 40
    end
    inherited Button3: TButton
      Left = 186
      Top = 10
      ExplicitLeft = 186
      ExplicitTop = 10
    end
    inherited Button2: TButton
      Left = 320
      Default = True
      ExplicitLeft = 320
    end
  end
  inherited Panel2: TPanel
    Width = 464
    Height = 425
    ExplicitWidth = 464
    ExplicitHeight = 425
    inherited Label12: TLabel
      Left = 168
      Visible = False
      ExplicitLeft = 168
    end
    inherited Label13: TLabel
      Left = 336
      Visible = False
      ExplicitLeft = 336
    end
  end
  object RadioGroup1: TRadioGroup [2]
    Tag = 100
    Left = 24
    Top = 344
    Width = 417
    Height = 65
    Caption = #917#960#953#955#959#947#942
    Columns = 2
    Items.Strings = (
      #913#957#945#955#965#964#953#954#942' '#922#945#964#940#963#964#945#963#951
      #931#965#947#954'.'#922#945#964#940#963#964#945#963#951)
    TabOrder = 2
    Visible = False
  end
  object PageControl1: TPageControl [3]
    Left = 7
    Top = 8
    Width = 449
    Height = 329
    ActivePage = TabSheet1
    MultiLine = True
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = #915#949#957#953#954#940
      object GroupBox1: TGroupBox
        Left = 0
        Top = 4
        Width = 433
        Height = 293
        TabOrder = 0
        object Label1: TLabel
          Left = 144
          Top = 16
          Width = 42
          Height = 20
          Caption = #913#960#972
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 324
          Top = 16
          Width = 42
          Height = 20
          Caption = #904#969#962
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 3
          Top = 45
          Width = 70
          Height = 13
          Caption = #919#956#949#961#959#956#951#957#943#945
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBDTTrdA: TDBDateTimeEditEh
          Left = 88
          Top = 42
          Width = 153
          Height = 21
          Hint = '[CTran.TrDate]'
          DynProps = <>
          EditButtons = <>
          Kind = dtkDateTimeEh
          TabOrder = 0
          Visible = True
          OnDblClick = DBDTTrdADblClick
        end
        object DBDTTrdE: TDBDateTimeEditEh
          Left = 280
          Top = 42
          Width = 150
          Height = 21
          DynProps = <>
          EditButtons = <>
          Kind = dtkDateTimeEh
          TabOrder = 1
          Visible = True
          OnDblClick = DBDTTrdADblClick
        end
        object RadioGroup2: TRadioGroup
          Left = 12
          Top = 133
          Width = 409
          Height = 33
          Hint = '[CTran.Void]'
          Caption = 'Void'
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            #913#948#953#940#966#959#961#959
            #925#945#943
            #908#967#953)
          TabOrder = 2
          OnClick = RadioGroup4Exit
          OnExit = RadioGroup4Exit
        end
        object RadioGroup3: TRadioGroup
          Left = 12
          Top = 94
          Width = 409
          Height = 33
          Hint = '[CTran.Credit]'
          Caption = #928#943#963#964#969#963#951
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            #913#948#953#940#966#959#961#959
            #925#945#943
            #908#967#953)
          TabOrder = 3
          OnClick = RadioGroup4Exit
          OnExit = RadioGroup4Exit
        end
        object RadioGroup4: TRadioGroup
          Left = 12
          Top = 172
          Width = 409
          Height = 33
          Hint = '[CTran.Checked]'
          Caption = 'Checked'
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            #913#948#953#940#966#959#961#959
            #925#945#943
            #908#967#953)
          TabOrder = 4
          OnClick = RadioGroup4Exit
          OnExit = RadioGroup4Exit
        end
        object RadioGroup5: TRadioGroup
          Left = 12
          Top = 220
          Width = 409
          Height = 33
          Hint = '[CTran.Error]'
          Caption = 'Error'
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            #913#948#953#940#966#959#961#959
            #925#945#943
            #908#967#953)
          TabOrder = 5
          OnClick = RadioGroup4Exit
          OnExit = RadioGroup4Exit
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Merchant'
      ImageIndex = 1
      object clbMerchant: TCheckListBox
        Left = 0
        Top = 0
        Width = 441
        Height = 301
        Hint = '[CTran.MerchantId]'
        Align = alClient
        Columns = 2
        ItemHeight = 13
        PopupMenu = PopChLstBox
        TabOrder = 0
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Station'
      ImageIndex = 3
      object clbStation: TCheckListBox
        Left = 0
        Top = 0
        Width = 441
        Height = 301
        Hint = '[CTran.StationId]'
        Align = alClient
        Columns = 2
        ItemHeight = 13
        PopupMenu = PopChLstBox
        TabOrder = 0
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Terminal'
      ImageIndex = 4
      object clbTerminal: TCheckListBox
        Left = 0
        Top = 0
        Width = 441
        Height = 301
        Hint = '[CTran.TerminalId]'
        Align = alClient
        Columns = 2
        ItemHeight = 13
        PopupMenu = PopChLstBox
        TabOrder = 0
      end
    end
    object TabSheet6: TTabSheet
      Caption = #928#961#959#941#955#949#965#963#951
      ImageIndex = 5
      object clbSources: TCheckListBox
        Left = 0
        Top = 0
        Width = 441
        Height = 301
        Hint = '[Ctran.Sources]'
        Align = alClient
        Columns = 2
        ItemHeight = 13
        PopupMenu = PopChLstBox
        TabOrder = 0
      end
    end
  end
  inherited MainMenu1: TMainMenu
    Left = 360
    Top = 228
  end
  inherited ActionList1: TActionList
    Left = 404
    Top = 276
  end
  object PopChLstBox: TPopupMenu
    Left = 188
    Top = 292
    object N4: TMenuItem
      Caption = #908#955#945
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #922#945#957#941#957#945
      OnClick = N5Click
    end
  end
end
