object TerminalDM: TTerminalDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 244
  Width = 413
  object qryBrowser: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TERMINAL')
    Left = 24
    Top = 16
    object qryBrowserTerminalid: TIntegerField
      FieldName = 'Terminalid'
    end
    object qryBrowserTerminalCode: TWideStringField
      FieldName = 'TerminalCode'
    end
    object qryBrowserTerminalSerialNo: TWideStringField
      FieldName = 'TerminalSerialNo'
      Size = 50
    end
    object qryBrowserTerminalType: TIntegerField
      FieldName = 'TerminalType'
    end
    object qryBrowserLTerminalType: TStringField
      FieldKind = fkLookup
      FieldName = 'LTerminalType'
      LookupDataSet = qryTerminalType
      LookupKeyFields = 'TerminalTypeId'
      LookupResultField = 'TerminalType_Name'
      KeyFields = 'TerminalType'
      Lookup = True
    end
    object qryBrowserCreateBoolean: TBooleanField
      FieldName = 'CreateBoolean'
    end
    object qryBrowserPending: TBooleanField
      FieldName = 'Pending'
    end
    object qryBrowserInsDt: TDateTimeField
      FieldName = 'InsDt'
    end
    object qryBrowserUpdDt: TDateTimeField
      FieldName = 'UpdDt'
    end
    object qryBrowserInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryBrowserUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
  end
  object dtsBrowser: TDataSource
    DataSet = qryBrowser
    Left = 88
    Top = 16
  end
  object qryTERMINAL: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = qryTERMINALBeforePost
    AfterPost = qryTERMINALAfterPost
    OnNewRecord = qryTERMINALNewRecord
    DataSource = dtsBrowser
    Parameters = <
      item
        Name = 'TerminalId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM TERMINAL'
      'Where TerminalId = :TerminalId')
    Left = 24
    Top = 72
    object qryTERMINALTerminalid: TIntegerField
      FieldName = 'Terminalid'
    end
    object qryTERMINALTerminalCode: TWideStringField
      FieldName = 'TerminalCode'
    end
    object qryTERMINALTerminalSerialNo: TWideStringField
      FieldName = 'TerminalSerialNo'
      Size = 50
    end
    object qryTERMINALTerminalType: TIntegerField
      FieldName = 'TerminalType'
    end
    object qryTERMINALInsDt: TDateTimeField
      FieldName = 'InsDt'
    end
    object qryTERMINALUpdDt: TDateTimeField
      FieldName = 'UpdDt'
    end
    object qryTERMINALInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryTERMINALUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qryTERMINALCreateBoolean: TBooleanField
      FieldName = 'CreateBoolean'
    end
    object qryTERMINALPending: TBooleanField
      FieldName = 'Pending'
    end
  end
  object dtsTERMINAL: TDataSource
    AutoEdit = False
    DataSet = qryTERMINAL
    OnStateChange = dtsTERMINALStateChange
    Left = 96
    Top = 72
  end
  object qryStation_Terminal: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsTERMINAL
    Parameters = <
      item
        Name = 'TerminalId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      '  FROM Station_Terminal'
      ' Where Terminalid = :TerminalId')
    Left = 240
    Top = 16
    object qryStation_TerminalStationTerminalId: TAutoIncField
      FieldName = 'StationTerminalId'
      ReadOnly = True
    end
    object qryStation_TerminalStationId: TIntegerField
      FieldName = 'StationId'
    end
    object qryStation_TerminalTerminalid: TIntegerField
      FieldName = 'Terminalid'
    end
    object qryStation_TerminalStartDate: TDateTimeField
      FieldName = 'StartDate'
    end
    object qryStation_TerminalLStation: TStringField
      FieldKind = fkLookup
      FieldName = 'LStation'
      LookupDataSet = qryStation
      LookupKeyFields = 'Stationid'
      LookupResultField = 'StationWhole'
      KeyFields = 'StationId'
      Size = 80
      Lookup = True
    end
  end
  object dtsStation_Terminal: TDataSource
    AutoEdit = False
    DataSet = qryStation_Terminal
    Left = 344
    Top = 16
  end
  object dtsStation: TDataSource
    AutoEdit = False
    DataSet = qryStation
    Left = 344
    Top = 72
  end
  object qryStation: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryStationCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT Stationid,Name,STREET,ZIP,CITY'
      '  FROM Station'
      ''
      '')
    Left = 240
    Top = 72
    object qryStationStationid: TIntegerField
      FieldName = 'Stationid'
    end
    object qryStationName: TWideStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 100
    end
    object qryStationSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object qryStationZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryStationCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryStationStationWhole: TStringField
      FieldKind = fkCalculated
      FieldName = 'StationWhole'
      Size = 80
      Calculated = True
    end
  end
  object dtsTerminalType: TDataSource
    AutoEdit = False
    DataSet = qryTerminalType
    Left = 344
    Top = 136
  end
  object qryTerminalType: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'SELECT TerminalTypeId, TerminalType_Name'
      '  FROM TerminalType'
      ''
      '')
    Left = 240
    Top = 136
    object qryTerminalTypeTerminalTypeId: TIntegerField
      FieldName = 'TerminalTypeId'
    end
    object qryTerminalTypeTerminalType_Name: TWideStringField
      FieldName = 'TerminalType_Name'
      Size = 50
    end
  end
  object qryMaxTerminalCode: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT MAX(TerminalCode) As MaxTerminalCode'
      '  FROM Terminal'
      '  Where TerminalCode like '#39'09000%'#39)
    Left = 32
    Top = 160
    object qryMaxTerminalCodeMaxTerminalCode: TWideStringField
      FieldName = 'MaxTerminalCode'
      ReadOnly = True
    end
  end
end
