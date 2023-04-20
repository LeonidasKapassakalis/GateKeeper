inherited frmSelectVariant: TfrmSelectVariant
  Left = 410
  Top = 187
  Caption = #917#960#953#955#959#947#942' Variant'
  ClientHeight = 343
  ClientWidth = 458
  Menu = MainMenu1
  OldCreateOrder = True
  ExplicitWidth = 466
  ExplicitHeight = 389
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 324
    Width = 458
    ExplicitTop = 324
    ExplicitWidth = 458
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 458
    Height = 324
    Align = alClient
    DataSource = DMMain.dsVariants
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = cmdOkExecute
    Columns = <
      item
        Expanded = False
        FieldName = 'Name'
        Title.Caption = #927#957#959#956#945#963#943#945' '
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Perig'
        Title.Caption = #928#949#961#953#947#961#945#966#942
        Visible = True
      end>
  end
  object MainMenu1: TMainMenu
    Left = 80
    Top = 264
    object N1: TMenuItem
      Action = cmdCancel
    end
    object N2: TMenuItem
      Action = cmdOk
    end
    object N4: TMenuItem
      Action = cmdManipl
      object N3: TMenuItem
        Action = cmdDelete
      end
    end
  end
  object ActionList1: TActionList
    Left = 144
    Top = 264
    object cmdOk: TAction
      Caption = #913#960#959#948#959#967#942
      Hint = #913#960#959#948#959#967#942
      OnExecute = cmdOkExecute
    end
    object cmdCancel: TAction
      Caption = #913#954#973#961#969#963#951
      Hint = #913#954#973#961#969#963#951
      OnExecute = cmdCancelExecute
    end
    object cmdDelete: TAction
      Caption = #916#953#945#947#961#945#966#942
      Hint = #916#953#945#947#961#945#966#942
      OnExecute = cmdDeleteExecute
    end
    object cmdManipl: TAction
      Caption = #916#953#945#967#949#943#961#951#963#951
      OnExecute = cmdManiplExecute
    end
  end
  object QDeleteDetail: TADOQuery
    Connection = DMMain.ADOConnection
    Parameters = <
      item
        Name = 'PId'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Delete From VariantsDetail'
      'Where Id = PId')
    Left = 56
    Top = 64
  end
  object QDeleteMain: TADOQuery
    Connection = DMMain.ADOConnection
    Parameters = <
      item
        Name = 'PId'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Delete From VariantsMain'
      'Where Id = PId')
    Left = 136
    Top = 64
  end
end
