inherited DMCheckTools: TDMCheckTools
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 562
  Width = 742
  object qryTerminal_Not_Connected: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'Select *  '
      'From VTerminal_Not_Connected')
    Left = 72
    Top = 48
    object qryTerminal_Not_ConnectedTerminalid: TIntegerField
      FieldName = 'Terminalid'
    end
    object qryTerminal_Not_ConnectedTerminalCode: TWideStringField
      FieldName = 'TerminalCode'
    end
    object qryTerminal_Not_ConnectedTerminalSerialNo: TWideStringField
      FieldName = 'TerminalSerialNo'
      Size = 50
    end
    object qryTerminal_Not_ConnectedCreateBoolean: TBooleanField
      FieldName = 'CreateBoolean'
    end
    object qryTerminal_Not_ConnectedPending: TBooleanField
      FieldName = 'Pending'
    end
    object qryTerminal_Not_ConnectedStationTerminalId: TIntegerField
      FieldName = 'StationTerminalId'
    end
  end
  object dtsTerminal_Not_Connected: TDataSource
    AutoEdit = False
    DataSet = qryTerminal_Not_Connected
    Left = 272
    Top = 48
  end
  object qryStation_Not_Connected_2_Merchant: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'Select *  '
      'From VStation_Not_Connected_2_Merchant')
    Left = 64
    Top = 144
    object qryStation_Not_Connected_2_MerchantStationid: TIntegerField
      FieldName = 'Stationid'
    end
    object qryStation_Not_Connected_2_MerchantName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object qryStation_Not_Connected_2_MerchantSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object qryStation_Not_Connected_2_MerchantZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryStation_Not_Connected_2_MerchantCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryStation_Not_Connected_2_MerchantMerchantStationId: TIntegerField
      FieldName = 'MerchantStationId'
    end
  end
  object dtsStation_Not_Connected_2_Mer: TDataSource
    AutoEdit = False
    DataSet = qryStation_Not_Connected_2_Merchant
    Left = 272
    Top = 144
  end
  object qryStation_Not_Connected_2_Terminals: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'Select *  '
      'From VStation_Not_Connected_2_Terminals')
    Left = 64
    Top = 232
    object qryStation_Not_Connected_2_TerminalsStationid: TIntegerField
      FieldName = 'Stationid'
    end
    object qryStation_Not_Connected_2_TerminalsName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object qryStation_Not_Connected_2_TerminalsSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object qryStation_Not_Connected_2_TerminalsStationTerminalId: TIntegerField
      FieldName = 'StationTerminalId'
    end
    object qryStation_Not_Connected_2_TerminalsZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryStation_Not_Connected_2_TerminalsCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
  end
  object dtsStation_Not_Connected_2_Ter: TDataSource
    AutoEdit = False
    DataSet = qryStation_Not_Connected_2_Terminals
    Left = 272
    Top = 232
  end
  object qryMerchant_Not_Connected: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'Select *  '
      'From VMerchant_Not_Connected')
    Left = 64
    Top = 328
    object qryMerchant_Not_ConnectedMerchantId: TIntegerField
      FieldName = 'MerchantId'
    end
    object qryMerchant_Not_ConnectedName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object qryMerchant_Not_ConnectedStreet: TWideStringField
      FieldName = 'Street'
      Size = 50
    end
    object qryMerchant_Not_ConnectedZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryMerchant_Not_ConnectedCity: TWideStringField
      FieldName = 'City'
      Size = 50
    end
    object qryMerchant_Not_ConnectedMerchantStationId: TIntegerField
      FieldName = 'MerchantStationId'
    end
  end
  object dtsMerchant_Not_Connected: TDataSource
    AutoEdit = False
    DataSet = qryMerchant_Not_Connected
    Left = 272
    Top = 328
  end
  object qryCCExists: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'Select *  '
      'From V_CCExists_Full'
      'Where CheckSt IS Null')
    Left = 544
    Top = 32
    object qryCCExistsCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qryCCExistsNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object qryCCExistsZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryCCExistsSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object qryCCExistsCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryCCExistsAFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object qryCCExistsCheckSt: TIntegerField
      FieldName = 'CheckSt'
    end
    object qryCCExistsCUSTOMERCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMER.CUSTOMERID'
    end
  end
  object dtsCCExists: TDataSource
    AutoEdit = False
    DataSet = qryCCExists
    Left = 640
    Top = 32
  end
  object qrySCExists: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'Select *  '
      'From V_SCExists_Full'
      'Where CheckSt IS Null'
      '')
    Left = 544
    Top = 104
    object qrySCExistsStationStationId: TIntegerField
      FieldName = 'Station.StationId'
    end
    object qrySCExistsCheckSt: TIntegerField
      FieldName = 'CheckSt'
    end
    object qrySCExistsStationid: TIntegerField
      FieldName = 'Stationid'
    end
    object qrySCExistsName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object qrySCExistsSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object qrySCExistsZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qrySCExistsCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
  end
  object dtsSCExists: TDataSource
    AutoEdit = False
    DataSet = qrySCExists
    Left = 640
    Top = 104
  end
  object qryMCExists: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'Select *  '
      'From V_MCExists_Full'
      'Where CheckSt IS Null'
      '')
    Left = 544
    Top = 160
    object qryMCExistsName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object qryMCExistsStreet: TWideStringField
      FieldName = 'Street'
      Size = 50
    end
    object qryMCExistsZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryMCExistsMerchantId: TIntegerField
      FieldName = 'MerchantId'
    end
    object qryMCExistsCity: TWideStringField
      FieldName = 'City'
      Size = 50
    end
    object qryMCExistsMerchantMerchantId: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object qryMCExistsCheckSt: TIntegerField
      FieldName = 'CheckSt'
    end
  end
  object dtsMCExists: TDataSource
    AutoEdit = False
    DataSet = qryMCExists
    Left = 640
    Top = 160
  end
  object VariantsMemWsMain: TADOTable
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    TableName = 'VariantsMemWsMain'
    Left = 480
    Top = 376
    object VariantsMemWsMainid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object VariantsMemWsMainName: TWideStringField
      FieldName = 'Name'
    end
    object VariantsMemWsMainPerig: TWideStringField
      FieldName = 'Perig'
      Size = 150
    end
    object VariantsMemWsMainClassFormName: TWideStringField
      FieldName = 'ClassFormName'
      Size = 100
    end
    object VariantsMemWsMainInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object VariantsMemWsMainInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object VariantsMemWsMainUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object VariantsMemWsMainUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object VariantsMemWsMainDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object VariantsMemWsMainDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object VariantsMemWsMainDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object VariantsMemWsMainSubsequentAction: TWideStringField
      FieldName = 'SubsequentAction'
      Size = 50
    end
    object VariantsMemWsMainSubsequentComments: TWideStringField
      FieldName = 'SubsequentComments'
      Size = 100
    end
    object VariantsMemWsMainSubsequentMail: TWideStringField
      FieldName = 'SubsequentMail'
      Size = 50
    end
    object VariantsMemWsMainSubsequentAutoClose: TBooleanField
      FieldName = 'SubsequentAutoClose'
    end
    object VariantsMemWsMainSubsequentActivateTrans: TBooleanField
      FieldName = 'SubsequentActivateTrans'
    end
    object VariantsMemWsMainSubsequentAutoExec: TBooleanField
      FieldName = 'SubsequentAutoExec'
    end
    object VariantsMemWsMainSubsequentLogSection: TWideStringField
      FieldName = 'SubsequentLogSection'
      Size = 50
    end
  end
  object VariantsMemWsDetail: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    TableName = 'VariantsMemWsDetail'
    Left = 608
    Top = 376
    object VariantsMemWsDetailId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object VariantsMemWsDetailLVariantName: TStringField
      FieldKind = fkLookup
      FieldName = 'LVariantName'
      LookupDataSet = VariantsMemWsMain
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'VariantId'
      Lookup = True
    end
    object VariantsMemWsDetailVariantId: TIntegerField
      FieldName = 'VariantId'
    end
    object VariantsMemWsDetailCalcAsValue: TBooleanField
      FieldName = 'CalcAsValue'
    end
    object VariantsMemWsDetailFieldName: TWideStringField
      FieldName = 'FieldName'
      Size = 50
    end
    object VariantsMemWsDetailFieldType: TIntegerField
      FieldName = 'FieldType'
    end
    object VariantsMemWsDetailFieldValue: TWideStringField
      FieldName = 'FieldValue'
      Size = 150
    end
    object VariantsMemWsDetailCalcType: TWideStringField
      FieldName = 'CalcType'
      Size = 250
    end
  end
  object dsVariantsMemWsMain: TDataSource
    DataSet = VariantsMemWsMain
    Left = 480
    Top = 448
  end
  object dsVariantsMemWsDetail: TDataSource
    DataSet = VariantsMemWsDetail
    Left = 608
    Top = 440
  end
end
