inherited DMPrnTrans: TDMPrnTrans
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 462
  Width = 696
  object qryCustomer: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM Customer')
    Left = 44
    Top = 24
    object qryCustomerCUSTOMERID: TAutoIncField
      DisplayLabel = #922#969#948'.'
      FieldName = 'CUSTOMERID'
      ReadOnly = True
    end
    object qryCustomerNAME: TWideStringField
      DisplayLabel = #917#960#969#957#965#956#943#945
      FieldName = 'NAME'
      Size = 50
    end
    object qryCustomerSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object qryCustomerZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryCustomerCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryCustomerAFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object qryCustomerDOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object qryCustomerSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qryCustomerAREAID: TIntegerField
      FieldName = 'AREAID'
    end
    object qryCustomerLOCATIONID: TIntegerField
      FieldName = 'LOCATIONID'
    end
    object qryCustomerCGROUPID: TIntegerField
      FieldName = 'CGROUPID'
    end
    object qryCustomerCCLASSID: TIntegerField
      FieldName = 'CCLASSID'
    end
    object qryCustomerCREDITAMOUNT: TFloatField
      FieldName = 'CREDITAMOUNT'
    end
    object qryCustomerINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryCustomerUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryCustomerINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryCustomerUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryCustomerPROFESSION: TWideStringField
      FieldName = 'PROFESSION'
      Size = 50
    end
    object qryCustomerBRANCHID: TIntegerField
      FieldName = 'BRANCHID'
    end
    object qryCustomerSAPCODE: TWideStringField
      FieldName = 'SAPCODE'
      Size = 10
    end
    object qryCustomerISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qryCustomerSALESMENID: TIntegerField
      FieldName = 'SALESMENID'
    end
    object qryCustomerDIAKID: TIntegerField
      FieldName = 'DIAKID'
    end
    object qryCustomerISTEST: TBooleanField
      FieldName = 'ISTEST'
    end
    object qryCustomerISCONS: TBooleanField
      FieldName = 'ISCONS'
    end
    object qryCustomerAREABID: TIntegerField
      FieldName = 'AREABID'
    end
    object qryCustomerDATEPHEND: TDateTimeField
      FieldName = 'DATEPHEND'
    end
    object qryCustomerDATELOEND: TDateTimeField
      FieldName = 'DATELOEND'
    end
    object qryCustomerHASDETAILEMP: TBooleanField
      FieldName = 'HASDETAILEMP'
    end
    object qryCustomerALLCARDSTOBL: TBooleanField
      FieldName = 'ALLCARDSTOBL'
    end
    object qryCustomerALLCARDSTOBLDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLDATE'
    end
    object qryCustomerALLCARDSTOBLSYSDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLSYSDATE'
    end
    object qryCustomerALLCARDSTOBLUSR: TIntegerField
      FieldName = 'ALLCARDSTOBLUSR'
    end
    object qryCustomerCUSTOMEROFF: TBooleanField
      FieldName = 'CUSTOMEROFF'
    end
    object qryCustomerCUSTOMEROFFDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFDATE'
    end
    object qryCustomerCUSTOMEROFFSYSDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFSYSDATE'
    end
    object qryCustomerCUSTOMEROFFUSR: TIntegerField
      FieldName = 'CUSTOMEROFFUSR'
    end
    object qryCustomerCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object qryCustomerDATEEND: TDateTimeField
      FieldName = 'DATEEND'
    end
    object qryCustomerCompanyTypeId: TIntegerField
      FieldName = 'CompanyTypeId'
    end
  end
  object dtsCustomer: TDataSource
    AutoEdit = False
    DataSet = qryCustomer
    Left = 136
    Top = 24
  end
  object qryMerchant: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM Merchant')
    Left = 252
    Top = 24
    object qryMerchantMerchantId: TIntegerField
      DisplayLabel = #922#969#948'.'
      FieldName = 'MerchantId'
    end
    object qryMerchantName: TWideStringField
      DisplayLabel = #917#960#969#957#965#956#943#945
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
    Left = 344
    Top = 24
  end
  object qryStation: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM Station')
    Left = 252
    Top = 96
    object qryStationStationid: TAutoIncField
      DisplayLabel = #922#969#948'.'
      FieldName = 'Stationid'
      ReadOnly = True
    end
    object qryStationName: TWideStringField
      DisplayLabel = #917#960#969#957#965#956#943#945
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
    Left = 344
    Top = 96
  end
  object qryTerminal: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM Terminal')
    Left = 252
    Top = 160
    object qryTerminalTerminalid: TIntegerField
      FieldName = 'Terminalid'
    end
    object qryTerminalTerminalCode: TWideStringField
      DisplayLabel = 'Terminal ID'
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
    Left = 344
    Top = 160
  end
  object qryEnhmDlCall: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM VEnhmDLCall'
      'Order By ENDLCALLDATE Desc, ENDLCALLTRY')
    Left = 492
    Top = 24
    object qryEnhmDlCallENDLCALLID: TAutoIncField
      FieldName = 'ENDLCALLID'
      ReadOnly = True
    end
    object qryEnhmDlCallENDLCALLDATE: TDateTimeField
      DisplayLabel = #919#956'/'#957#943#945
      FieldName = 'ENDLCALLDATE'
    end
    object qryEnhmDlCallENDLCALLTRY: TIntegerField
      FieldName = 'ENDLCALLTRY'
    end
    object qryEnhmDlCallINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryEnhmDlCallUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryEnhmDlCallINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryEnhmDlCallUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryEnhmDlCallENDLCALLFROM: TIntegerField
      FieldName = 'ENDLCALLFROM'
    end
    object qryEnhmDlCallENDLCALLDATETRY: TStringField
      DisplayLabel = #919#956#957#943#945' - '#913#913
      FieldName = 'ENDLCALLDATETRY'
      ReadOnly = True
      Size = 12
    end
  end
  object dtsEnhmDlCall: TDataSource
    AutoEdit = False
    DataSet = qryEnhmDlCall
    Left = 600
    Top = 24
  end
  object qryENHNPECALL: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM ENHMPECALL'
      'WHERE ENPCALLFROM = 1'
      '')
    Left = 492
    Top = 88
    object qryENHNPECALLENPCALLID: TAutoIncField
      FieldName = 'ENPCALLID'
      ReadOnly = True
    end
    object qryENHNPECALLENPCALLDATE: TDateTimeField
      DisplayLabel = #919#956'/'#957#943#945
      FieldName = 'ENPCALLDATE'
    end
    object qryENHNPECALLINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryENHNPECALLUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryENHNPECALLINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryENHNPECALLUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryENHNPECALLENPCALLFROM: TIntegerField
      FieldName = 'ENPCALLFROM'
    end
  end
  object dtsENHMPECALL: TDataSource
    AutoEdit = False
    DataSet = qryENHNPECALL
    Left = 600
    Top = 88
  end
  object qryENHMCOCALL: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM ENHMCOCALL'
      '')
    Left = 492
    Top = 152
    object qryENHMCOCALLENCCALLID: TAutoIncField
      FieldName = 'ENCCALLID'
      ReadOnly = True
    end
    object qryENHMCOCALLENCCALLDATE: TDateTimeField
      DisplayLabel = #919#956'/'#957#943#945
      FieldName = 'ENCCALLDATE'
    end
    object qryENHMCOCALLINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryENHMCOCALLUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryENHMCOCALLINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryENHMCOCALLUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object dtsENHMCOCALL: TDataSource
    AutoEdit = False
    DataSet = qryENHMCOCALL
    Left = 600
    Top = 152
  end
  object qryENHMDISCALL: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM ENHMDISCALL'
      '')
    Left = 492
    Top = 216
    object qryENHMDISCALLENHMDISCALLID: TAutoIncField
      FieldName = 'ENHMDISCALLID'
      ReadOnly = True
    end
    object qryENHMDISCALLENHMDISCALLDATE: TDateTimeField
      DisplayLabel = #919#956'/'#957#943#945
      FieldName = 'ENHMDISCALLDATE'
    end
    object qryENHMDISCALLINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryENHMDISCALLUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryENHMDISCALLINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryENHMDISCALLUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object dtsENHMDISCALL: TDataSource
    AutoEdit = False
    DataSet = qryENHMDISCALL
    Left = 600
    Top = 216
  end
  object qryENHMSTCALL: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM ENHMSTCALL'
      '')
    Left = 492
    Top = 280
    object qryENHMSTCALLENSCALLID: TAutoIncField
      FieldName = 'ENSCALLID'
      ReadOnly = True
    end
    object qryENHMSTCALLENSCALLDATE: TDateTimeField
      FieldName = 'ENSCALLDATE'
    end
    object qryENHMSTCALLINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryENHMSTCALLUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryENHMSTCALLINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryENHMSTCALLUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryENHMSTCALLENSCALLFROM: TIntegerField
      FieldName = 'ENSCALLFROM'
    end
  end
  object dtsENHMSTCALL: TDataSource
    AutoEdit = False
    DataSet = qryENHMSTCALL
    Left = 600
    Top = 280
  end
  object qryACard: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      
        'SELECT  [ACARDID] ,[ACARDCODE] ,[REGNO] ,[AcardCodeFull],[AcardC' +
        'odeFull000]'
      ' FROM VACard')
    Left = 44
    Top = 96
    object qryACardACARDID: TIntegerField
      FieldName = 'ACARDID'
      ReadOnly = True
    end
    object qryACardACARDCODE: TWideStringField
      FieldName = 'ACARDCODE'
      Size = 50
    end
    object qryACardREGNO: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
    object qryACardAcardCodeFull: TWideStringField
      FieldName = 'AcardCodeFull'
      ReadOnly = True
      Size = 19
    end
    object qryACardAcardCodeFull000: TWideStringField
      FieldName = 'AcardCodeFull000'
      ReadOnly = True
      Size = 4000
    end
  end
  object dtsACard: TDataSource
    AutoEdit = False
    DataSet = qryACard
    Left = 144
    Top = 96
  end
  object qryTrCallDate: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM TrCall'
      '')
    Left = 492
    Top = 344
    object qryTrCallDateTRCALLID: TAutoIncField
      FieldName = 'TRCALLID'
      ReadOnly = True
    end
    object qryTrCallDateTRCALLDATE: TDateTimeField
      DisplayLabel = #919#956'/'#957#943#945
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
    Left = 600
    Top = 344
  end
  object qryAcardGroupMain: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = qryAcardGroupMainCalcFields
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT  *'
      ' FROM AcardGroupMain')
    Left = 44
    Top = 192
    object qryAcardGroupMainAcardGroupId: TIntegerField
      FieldName = 'AcardGroupId'
      ReadOnly = True
    end
    object qryAcardGroupMainDescr: TWideStringField
      FieldName = 'Descr'
      Size = 50
    end
    object qryAcardGroupMainPAcardGroupId: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PAcardGroupId'
      Calculated = True
    end
  end
  object qryAcardGroupDetail: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'PAcardGroupId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT  *'
      ' FROM AcardGroupDetail'
      'WHERE AcardGroupId = :PAcardGroupId'
      '')
    Left = 44
    Top = 248
    object qryAcardGroupDetailAcardGroupId: TIntegerField
      FieldName = 'AcardGroupId'
    end
    object qryAcardGroupDetailAcardId: TIntegerField
      FieldName = 'AcardId'
    end
  end
  object dtsAcardGroupMain: TDataSource
    AutoEdit = False
    DataSet = qryAcardGroupMain
    Left = 144
    Top = 192
  end
  object qryAcardRNGroupMain: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT  *'
      ' FROM AcardRNGroupMain')
    Left = 52
    Top = 336
    object qryAcardRNGroupMainAcardRNGroupId: TIntegerField
      FieldName = 'AcardRNGroupId'
      ReadOnly = True
    end
    object qryAcardRNGroupMainDescr: TWideStringField
      FieldName = 'Descr'
      Size = 50
    end
  end
  object qryAcardRNGroupDetail: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'PAcardRNGroupId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT  *'
      ' FROM V_AcardRNGroup'
      'WHERE [AcardRNGroupMain.AcardRNGroupId] = :PAcardRNGroupId'
      '')
    Left = 52
    Top = 392
    object qryAcardRNGroupDetailACARDACARDID: TIntegerField
      FieldName = 'ACARD.ACARDID'
    end
    object qryAcardRNGroupDetailAcardRNGroupMainDescr: TWideStringField
      FieldName = 'AcardRNGroupMain.Descr'
      Size = 50
    end
    object qryAcardRNGroupDetailACARDACARDCODE: TWideStringField
      FieldName = 'ACARD.ACARDCODE'
      Size = 50
    end
    object qryAcardRNGroupDetailACARDEXPIREDATE: TDateTimeField
      FieldName = 'ACARD.EXPIREDATE'
    end
    object qryAcardRNGroupDetailACARDBLACKLISTBOOLEAN: TBooleanField
      FieldName = 'ACARD.BLACKLISTBOOLEAN'
    end
    object qryAcardRNGroupDetailACARDDAYAMOUNT: TFloatField
      FieldName = 'ACARD.DAYAMOUNT'
    end
    object qryAcardRNGroupDetailACARDMONTHAMOUNT: TFloatField
      FieldName = 'ACARD.MONTHAMOUNT'
    end
    object qryAcardRNGroupDetailACARDACARDHOLDER: TWideStringField
      FieldName = 'ACARD.ACARDHOLDER'
      Size = 30
    end
    object qryAcardRNGroupDetailACARDISACTIVE: TBooleanField
      FieldName = 'ACARD.ISACTIVE'
    end
    object qryAcardRNGroupDetailACARDEMPLOYEESID: TIntegerField
      FieldName = 'ACARD.EMPLOYEESID'
    end
    object qryAcardRNGroupDetailAcardRNGroupMainAcardRNGroupId: TIntegerField
      FieldName = 'AcardRNGroupMain.AcardRNGroupId'
    end
    object qryAcardRNGroupDetailAcardRNGroupDetailRegNo: TWideStringField
      FieldName = 'AcardRNGroupDetail.RegNo'
      FixedChar = True
      Size = 50
    end
    object qryAcardRNGroupDetailAcardRNGroupDetailAcardRGGroupId: TIntegerField
      FieldName = 'AcardRNGroupDetail.AcardRGGroupId'
    end
    object qryAcardRNGroupDetailAcardAcardCodeFull: TWideStringField
      FieldName = 'Acard.AcardCodeFull'
      ReadOnly = True
      Size = 19
    end
  end
  object dtsAcardRNGroupMain: TDataSource
    AutoEdit = False
    DataSet = qryAcardRNGroupMain
    Left = 152
    Top = 336
  end
end
