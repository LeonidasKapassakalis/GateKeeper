inherited FrmDailyReport: TFrmDailyReport
  Caption = #919#956#949#961#942#963#953#945' '#913#957#945#966#959#961#940
  ClientHeight = 569
  ClientWidth = 865
  ExplicitWidth = 873
  ExplicitHeight = 615
  PixelsPerInch = 96
  TextHeight = 13
  inherited panBottom: TPanel
    Top = 465
    Width = 865
    Height = 85
    ExplicitTop = 465
    ExplicitWidth = 865
    ExplicitHeight = 85
  end
  inherited StatusBar1: TStatusBar
    Top = 550
    Width = 865
    ExplicitTop = 550
    ExplicitWidth = 865
  end
  inherited Panel1: TPanel
    Width = 865
    Height = 426
    ExplicitWidth = 865
    ExplicitHeight = 426
    inherited Grid: TDBGrid
      Width = 863
      Height = 424
      DataSource = DMSubParams.dtsDailyReport
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RepDate'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RepTextNoRich'
          Width = 64
          Visible = True
        end>
    end
  end
  inherited ToolBar1: TToolBar
    Width = 865
    ExplicitWidth = 865
    object ToolButton11: TToolButton
      Left = 475
      Top = 0
      Action = BatchEnhm
      Visible = False
    end
    object ToolButton13: TToolButton
      Left = 521
      Top = 0
      Action = EnhmTables
    end
  end
  inherited ActionList1: TActionList
    object BatchEnhm: TAction
      Category = 'Off'
      Caption = 'BatchEnhm'
      Hint = #924#945#950'.'#917#957#951#956'.'#928#953#957#940#954#969#957
      ImageIndex = 9
      OnExecute = BatchEnhmExecute
    end
    object EnhmTables: TAction
      Category = 'Before'
      Caption = 'Daily Report'
      Hint = #913#957#945#966#959#961#940
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
  object fnFindDaily: TADOStoredProc
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'fnFindDaily'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@PDate'
        DataType = ftDateTime
        Value = 44562d
      end>
    Left = 420
    Top = 288
    object fnFindDailyAA: TIntegerField
      FieldName = 'AA'
      ReadOnly = True
    end
  end
end
