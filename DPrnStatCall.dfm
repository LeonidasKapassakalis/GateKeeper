inherited DMPrnStatCall: TDMPrnStatCall
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 412
  Width = 696
  object qryMerchant: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Merchant')
    Left = 44
    Top = 24
    object qryMerchantMerchantId: TIntegerField
      FieldName = 'MerchantId'
    end
    object qryMerchantName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object qryMerchantSAPCode: TWideStringField
      FieldName = 'SAPCode'
      Size = 10
    end
    object qryMerchantStreet: TWideStringField
      FieldName = 'Street'
      Size = 50
    end
    object qryMerchantZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryMerchantCity: TWideStringField
      FieldName = 'City'
      Size = 50
    end
    object qryMerchantAFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object qryMerchantDOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object qryMerchantISTEST: TBooleanField
      FieldName = 'ISTEST'
    end
    object qryMerchantAreaId: TIntegerField
      FieldName = 'AreaId'
    end
    object qryMerchantMerchantCode: TWideStringField
      FieldName = 'MerchantCode'
      Size = 50
    end
    object qryMerchantSalesMenId: TIntegerField
      FieldName = 'SalesMenId'
    end
    object qryMerchantInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryMerchantInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryMerchantUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qryMerchantUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qryMerchantDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryMerchantDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryMerchantDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryMerchantInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryMerchantInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryMerchantInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object qryMerchantStopSales: TBooleanField
      FieldName = 'StopSales'
    end
    object qryMerchantStopSalesUsr: TIntegerField
      FieldName = 'StopSalesUsr'
    end
    object qryMerchantStopSalesDt: TDateTimeField
      FieldName = 'StopSalesDt'
    end
  end
  object dtsMerchant: TDataSource
    AutoEdit = False
    DataSet = qryMerchant
    Left = 136
    Top = 24
  end
  object qryStation: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Station')
    Left = 44
    Top = 96
    object qryStationStationid: TAutoIncField
      FieldName = 'Stationid'
      ReadOnly = True
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
    object qryStationAreaId: TIntegerField
      FieldName = 'AreaId'
    end
    object qryStationSalesMenId: TIntegerField
      FieldName = 'SalesMenId'
    end
    object qryStationIGroupId1: TIntegerField
      FieldName = 'IGroupId1'
    end
    object qryStationPososto1: TFloatField
      FieldName = 'Pososto1'
    end
    object qryStationHaveGroup1: TBooleanField
      FieldName = 'HaveGroup1'
    end
    object qryStationIGroupId2: TIntegerField
      FieldName = 'IGroupId2'
    end
    object qryStationPososto2: TFloatField
      FieldName = 'Pososto2'
    end
    object qryStationHaveGroup2: TBooleanField
      FieldName = 'HaveGroup2'
    end
    object qryStationIGroupId3: TIntegerField
      FieldName = 'IGroupId3'
    end
    object qryStationPososto3: TFloatField
      FieldName = 'Pososto3'
    end
    object qryStationHaveGroup3: TBooleanField
      FieldName = 'HaveGroup3'
    end
    object qryStationIGroupId4: TIntegerField
      FieldName = 'IGroupId4'
    end
    object qryStationPososto4: TFloatField
      FieldName = 'Pososto4'
    end
    object qryStationHaveGroup4: TBooleanField
      FieldName = 'HaveGroup4'
    end
    object qryStationIGroupId5: TIntegerField
      FieldName = 'IGroupId5'
    end
    object qryStationPososto5: TFloatField
      FieldName = 'Pososto5'
    end
    object qryStationHaveGroup5: TBooleanField
      FieldName = 'HaveGroup5'
    end
    object qryStationIGroupId6: TIntegerField
      FieldName = 'IGroupId6'
    end
    object qryStationPososto6: TFloatField
      FieldName = 'Pososto6'
    end
    object qryStationHaveGroup6: TBooleanField
      FieldName = 'HaveGroup6'
    end
    object qryStationIGroupId7: TIntegerField
      FieldName = 'IGroupId7'
    end
    object qryStationPososto7: TFloatField
      FieldName = 'Pososto7'
    end
    object qryStationHaveGroup7: TBooleanField
      FieldName = 'HaveGroup7'
    end
    object qryStationIGroupId8: TIntegerField
      FieldName = 'IGroupId8'
    end
    object qryStationPososto8: TFloatField
      FieldName = 'Pososto8'
    end
    object qryStationHaveGroup8: TBooleanField
      FieldName = 'HaveGroup8'
    end
    object qryStationIGroupId9: TIntegerField
      FieldName = 'IGroupId9'
    end
    object qryStationPososto9: TFloatField
      FieldName = 'Pososto9'
    end
    object qryStationHaveGroup9: TBooleanField
      FieldName = 'HaveGroup9'
    end
    object qryStationIGroupId10: TIntegerField
      FieldName = 'IGroupId10'
    end
    object qryStationPososto10: TFloatField
      FieldName = 'Pososto10'
    end
    object qryStationHaveGroup10: TBooleanField
      FieldName = 'HaveGroup10'
    end
    object qryStationDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryStationDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryStationDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryStationInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryStationInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryStationInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object qryStationStopSales: TBooleanField
      FieldName = 'StopSales'
    end
    object qryStationStopSalesUsr: TIntegerField
      FieldName = 'StopSalesUsr'
    end
    object qryStationStopSalesDt: TDateTimeField
      FieldName = 'StopSalesDt'
    end
  end
  object dtsStation: TDataSource
    AutoEdit = False
    DataSet = qryStation
    Left = 136
    Top = 96
  end
  object qryTerminal: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Terminal')
    Left = 44
    Top = 160
    object qryTerminalTerminalid: TIntegerField
      FieldName = 'Terminalid'
    end
    object qryTerminalTerminalCode: TWideStringField
      FieldName = 'TerminalCode'
    end
    object qryTerminalTerminalSerialNo: TWideStringField
      FieldName = 'TerminalSerialNo'
      Size = 50
    end
    object qryTerminalTerminalType: TIntegerField
      FieldName = 'TerminalType'
    end
  end
  object dtsTerminal: TDataSource
    AutoEdit = False
    DataSet = qryTerminal
    Left = 136
    Top = 160
  end
  object qryTrCallDate: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TrCall'
      '')
    Left = 44
    Top = 232
    object qryTrCallDateTRCALLID: TAutoIncField
      FieldName = 'TRCALLID'
      ReadOnly = True
    end
    object qryTrCallDateTRCALLDATE: TDateTimeField
      FieldName = 'TRCALLDATE'
    end
    object qryTrCallDateTRCALLAUTOUPDATE: TBooleanField
      FieldName = 'TRCALLAUTOUPDATE'
    end
    object qryTrCallDateTRCALLAUTOUPDATECNT: TIntegerField
      FieldName = 'TRCALLAUTOUPDATECNT'
    end
    object qryTrCallDateTRCALLAUTOUPDATECNTST: TIntegerField
      FieldName = 'TRCALLAUTOUPDATECNTST'
    end
    object qryTrCallDateTRCALLAUTOUPDATECNTST0: TIntegerField
      FieldName = 'TRCALLAUTOUPDATECNTST0'
    end
    object qryTrCallDateTRCALLMANUPDATE: TBooleanField
      FieldName = 'TRCALLMANUPDATE'
    end
    object qryTrCallDateTRCALLENHMPELA: TBooleanField
      FieldName = 'TRCALLENHMPELA'
    end
    object qryTrCallDateTRCALLENHMPRAT: TBooleanField
      FieldName = 'TRCALLENHMPRAT'
    end
    object qryTrCallDateINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryTrCallDateUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryTrCallDateINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryTrCallDateUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryTrCallDateTRCALLAUTOUPDATECNTDEL: TIntegerField
      FieldName = 'TRCALLAUTOUPDATECNTDEL'
    end
  end
  object dtsTrCallDate: TDataSource
    AutoEdit = False
    DataSet = qryTrCallDate
    Left = 136
    Top = 232
  end
end
