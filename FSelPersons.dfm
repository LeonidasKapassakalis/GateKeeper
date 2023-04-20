inherited frmSelPersons: TfrmSelPersons
  Caption = 'frmSelPersons'
  ClientWidth = 443
  ExplicitWidth = 449
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 443
    inherited Button2: TButton
      Left = 274
      Top = 6
      ExplicitLeft = 274
      ExplicitTop = 6
    end
  end
  inherited Panel2: TPanel
    Width = 443
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 441
      Height = 346
      ActivePage = TabSheet1
      Align = alClient
      MultiLine = True
      TabOrder = 0
      ExplicitWidth = 485
      object TabSheet1: TTabSheet
        Caption = #915#949#957#953#954#940
        ExplicitWidth = 441
        ExplicitHeight = 301
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
          object Label3: TLabel
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
          end
          object RadioGroup1: TRadioGroup
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
          end
          object RadioGroup2: TRadioGroup
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
          end
          object RadioGroup3: TRadioGroup
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
          end
          object RadioGroup4: TRadioGroup
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
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Merchant'
        ImageIndex = 1
        object clbMerchant: TCheckListBox
          Left = 0
          Top = 0
          Width = 433
          Height = 318
          Hint = '[CTran.MerchantId]'
          Align = alClient
          Columns = 2
          ItemHeight = 13
          TabOrder = 0
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Station'
        ImageIndex = 3
        object clbStation: TCheckListBox
          Left = 0
          Top = 0
          Width = 433
          Height = 318
          Hint = '[CTran.StationId]'
          Align = alClient
          Columns = 2
          ItemHeight = 13
          TabOrder = 0
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Terminal'
        ImageIndex = 4
        object clbTerminal: TCheckListBox
          Left = 0
          Top = 0
          Width = 433
          Height = 318
          Hint = '[CTran.TerminalId]'
          Align = alClient
          Columns = 2
          ItemHeight = 13
          TabOrder = 0
        end
      end
      object TabSheet5: TTabSheet
        Caption = #928#961#959#941#955#949#965#963#951
        ImageIndex = 5
        object clbSources: TCheckListBox
          Left = 0
          Top = 0
          Width = 433
          Height = 318
          Hint = '[Ctran.Sources]'
          Align = alClient
          Columns = 2
          ItemHeight = 13
          TabOrder = 0
        end
      end
    end
  end
  inherited MainMenu1: TMainMenu
    Left = 208
    Top = 288
  end
  inherited ActionList1: TActionList
    Left = 264
    Top = 288
  end
end
