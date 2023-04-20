inherited FrmTableIds: TFrmTableIds
  Caption = #913#973#958#959#965#963#945' '#913#961#943#952#956#951#963#951' '#928#953#957#940#954#969#957
  ClientWidth = 605
  ExplicitWidth = 613
  PixelsPerInch = 96
  TextHeight = 13
  inherited panBottom: TPanel
    Top = 339
    Width = 605
    Height = 85
    Visible = True
    ExplicitTop = 320
    ExplicitWidth = 605
    ExplicitHeight = 85
    object Button1: TButton
      Left = 8
      Top = 40
      Width = 65
      Height = 25
      Action = BatchEnhm
      TabOrder = 0
    end
    object Button2: TButton
      Left = 88
      Top = 40
      Width = 65
      Height = 25
      Action = EnhmTables
      TabOrder = 1
    end
  end
  inherited StatusBar1: TStatusBar
    Width = 605
    ExplicitWidth = 605
  end
  inherited Panel1: TPanel
    Width = 605
    Height = 300
    ExplicitWidth = 605
    ExplicitHeight = 277
    inherited Grid: TDBGrid
      Width = 603
      Height = 275
      DataSource = DMSysSubParams.dsTableIds
      Columns = <
        item
          Expanded = False
          FieldName = 'AAAAA'
          Title.Caption = #916#949#943#954#964#951#962
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TABLENAME'
          Title.Caption = #928#943#957#945#954#945#962
          Width = 219
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM'
          Title.Caption = #913'.'#913'.'#922#955#949#953#948#953#959#973
          Visible = True
        end>
    end
  end
  inherited ToolBar1: TToolBar
    Width = 605
    ExplicitWidth = 605
    object ToolButton11: TToolButton
      Left = 475
      Top = 2
      Action = BatchEnhm
    end
    object ToolButton13: TToolButton
      Left = 521
      Top = 2
      Action = EnhmTables
    end
  end
  inherited ActionList1: TActionList
    object BatchEnhm: TAction
      Category = 'Before'
      Caption = 'BatchEnhm'
      Hint = #924#945#950'.'#917#957#951#956'.'#928#953#957#940#954#969#957
      ImageIndex = 9
      OnExecute = BatchEnhmExecute
    end
    object EnhmTables: TAction
      Category = 'Before'
      Caption = 'EnhmTables'
      Hint = #956#945#950'.'#917#957#951#956'.'#913#958#953#974#957
      ImageIndex = 8
      OnExecute = EnhmTablesExecute
    end
  end
  object Query1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select MAX( '#39'ID'#39' ) AS [MaxID]'
      'From FPASS')
    Left = 48
    Top = 171
    object Query1MaxId: TIntegerField
      FieldName = 'MaxId'
    end
  end
end
