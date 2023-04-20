object TranDM: TTranDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 487
  Width = 493
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = qryTranBeforePost
    OnCalcFields = qryTranCalcFields
    OnNewRecord = qryTranNewRecord
    DataSource = dtsBrowser
    Parameters = <
      item
        Name = 'TranId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 216
      end>
    SQL.Strings = (
      'SELECT * FROM [TRAN]'
      'Where TranId = :TranId')
    Left = 32
    Top = 88
    object qryTranTRANID: TAutoIncField
      FieldName = 'TRANID'
    end
    object qryTranTRANDATE: TDateTimeField
      FieldName = 'TRANDATE'
    end
    object qryTranACARDID: TIntegerField
      FieldName = 'ACARDID'
    end
    object qryTranSTATIONID: TIntegerField
      FieldName = 'STATIONID'
    end
    object qryTranINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryTranUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryTranINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryTranUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryTranAMOUNT: TFloatField
      FieldName = 'AMOUNT'
      currency = True
    end
    object qryTranKMBEFORE: TIntegerField
      FieldName = 'KMBEFORE'
    end
    object qryTranKMAFTER: TIntegerField
      FieldName = 'KMAFTER'
    end
    object qryTranSITEMID: TIntegerField
      FieldName = 'SITEMID'
    end
    object qryTranQUANTITY: TFloatField
      FieldName = 'QUANTITY'
    end
    object qryTranSITEMDESCR: TStringField
      FieldKind = fkLookup
      FieldName = 'SITEMDESCR'
      LookupDataSet = qrySItem
      LookupKeyFields = 'SITEMID'
      LookupResultField = 'DESCR'
      KeyFields = 'SITEMID'
      Size = 50
      Lookup = True
    end
    object qryTranREFSTR: TWideStringField
      FieldName = 'REFSTR'
      Size = 50
    end
    object qryTranISAUTO: TBooleanField
      FieldName = 'ISAUTO'
    end
    object qryTranFullCardNo: TStringField
      FieldKind = fkCalculated
      FieldName = 'FullCardNo'
      Calculated = True
    end
    object qryTranSTATIONUPD: TBooleanField
      FieldName = 'STATIONUPD'
    end
    object qryTranACARDUPD: TBooleanField
      FieldName = 'ACARDUPD'
    end
    object qryTranISVOID: TBooleanField
      FieldName = 'ISVOID'
    end
    object qryTranBATCHNO: TIntegerField
      FieldName = 'BATCHNO'
    end
    object qryTranCOMMISSIONUPD: TBooleanField
      FieldName = 'COMMISSIONUPD'
    end
    object qryTranSTATIONUPDBT: TIntegerField
      FieldName = 'STATIONUPDBT'
    end
    object qryTranACARDUPDBT: TIntegerField
      FieldName = 'ACARDUPDBT'
    end
    object qryTranCOMMISSIONUPDBT: TIntegerField
      FieldName = 'COMMISSIONUPDBT'
    end
    object qryTranCONSUMUPD: TBooleanField
      FieldName = 'CONSUMUPD'
    end
    object qryTranCONSUMDIVIDER: TFloatField
      FieldName = 'CONSUMDIVIDER'
    end
    object qryTranUNITPRICE: TFloatField
      FieldName = 'UNITPRICE'
      DisplayFormat = '###0.000'
    end
    object qryTranTRANTIME: TDateTimeField
      FieldName = 'TRANTIME'
    end
    object qryTranISTYPED: TBooleanField
      FieldName = 'ISTYPED'
    end
    object qryTranTRANPERIOD: TIntegerField
      FieldName = 'TRANPERIOD'
    end
    object qryTranDISCOUNTUPD: TBooleanField
      FieldName = 'DISCOUNTUPD'
    end
    object qryTranDISCOUNTUPDBT: TIntegerField
      FieldName = 'DISCOUNTUPDBT'
    end
    object qryTranDISQUANTITY: TFloatField
      FieldName = 'DISQUANTITY'
    end
    object qryTranDISAMOUNT: TFloatField
      FieldName = 'DISAMOUNT'
    end
    object qryTranPELADAILYUPD: TBooleanField
      FieldName = 'PELADAILYUPD'
    end
    object qryTranPELADAILYUPDBT: TIntegerField
      FieldName = 'PELADAILYUPDBT'
    end
    object qryTranMERCHANTID: TIntegerField
      FieldName = 'MERCHANTID'
    end
    object qryTranTERMINALID: TIntegerField
      FieldName = 'TERMINALID'
    end
    object qryTranUnitValue: TFloatField
      FieldKind = fkCalculated
      FieldName = 'UnitValue'
      DisplayFormat = '###0.000'
      Calculated = True
    end
    object qryTranLCustomer: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustomer'
      LookupDataSet = qryACard
      LookupKeyFields = 'ACARDID'
      LookupResultField = 'LCustomer'
      KeyFields = 'ACARDID'
      Lookup = True
    end
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    OnStateChange = dtsTranStateChange
    Left = 96
    Top = 88
  end
  object memStation: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 344
    Top = 144
    object memStationNAME: TStringField
      FieldName = 'NAME'
      OnChange = memStationNAMEChange
      Size = 50
    end
  end
  object dtsStation: TDataSource
    DataSet = qryStation
    Left = 104
    Top = 216
  end
  object qryBrowser: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryBrowserCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT * From [Tran]')
    Left = 32
    Top = 16
    object qryBrowserTRANID: TAutoIncField
      DisplayLabel = 'TranID'
      FieldName = 'TRANID'
      ReadOnly = True
    end
    object qryBrowserTRANDATE: TDateTimeField
      DisplayLabel = #919#956#949'/'#957#943#945
      FieldName = 'TRANDATE'
      DisplayFormat = 'ddddd'
    end
    object qryBrowserTRANTIME: TDateTimeField
      DisplayLabel = #39#937#961#945
      FieldName = 'TRANTIME'
      DisplayFormat = 't'
    end
    object qryBrowserLMerchant: TStringField
      DisplayLabel = 'Merchant'
      FieldKind = fkLookup
      FieldName = 'LMerchant'
      LookupDataSet = qryMerchantAll
      LookupKeyFields = 'MerchantId'
      LookupResultField = 'Name'
      KeyFields = 'MERCHANTID'
      Lookup = True
    end
    object qryBrowserLStation: TStringField
      DisplayLabel = #928#961#945#964#942#961#953#959
      FieldKind = fkLookup
      FieldName = 'LStation'
      LookupDataSet = qryStationAll
      LookupKeyFields = 'StationId'
      LookupResultField = 'Name'
      KeyFields = 'STATIONID'
      Lookup = True
    end
    object qryBrowserLTerminal: TStringField
      DisplayLabel = #932#949#961#956#945#964#953#954#972
      FieldKind = fkLookup
      FieldName = 'LTerminal'
      LookupDataSet = qryTerminalAll
      LookupKeyFields = 'TerminalId'
      LookupResultField = 'TerminalCode'
      KeyFields = 'TERMINALID'
      Lookup = True
    end
    object qryBrowserACARDID: TIntegerField
      FieldName = 'ACARDID'
    end
    object qryBrowserMERCHANTID: TIntegerField
      DisplayLabel = 'Merchant&'
      FieldName = 'MERCHANTID'
    end
    object qryBrowserSTATIONID: TIntegerField
      DisplayLabel = 'Station&'
      FieldName = 'STATIONID'
    end
    object qryBrowserTERMINALID: TIntegerField
      DisplayLabel = 'Terminal&'
      FieldName = 'TERMINALID'
    end
    object qryBrowserAMOUNT: TFloatField
      DisplayLabel = #913#958#943#945
      FieldName = 'AMOUNT'
      currency = True
    end
    object qryBrowserSITEMID: TIntegerField
      DisplayLabel = #917#943#948#959#962'&'
      FieldName = 'SITEMID'
    end
    object qryBrowserQUANTITY: TFloatField
      DisplayLabel = #928#959#963#972#964#951#964#945
      FieldName = 'QUANTITY'
      DisplayFormat = '###,##0.00'
    end
    object qryBrowserREFSTR: TWideStringField
      DisplayLabel = #913#961'.'#913#960#959#948'.'
      DisplayWidth = 10
      FieldName = 'REFSTR'
      Size = 50
    end
    object qryBrowserISAUTO: TBooleanField
      DisplayLabel = 'Auto'
      FieldName = 'ISAUTO'
    end
    object qryBrowserISVOID: TBooleanField
      DisplayLabel = 'VOID'
      FieldName = 'ISVOID'
    end
    object qryBrowserBATCHNO: TIntegerField
      DisplayLabel = 'Batch&'
      FieldName = 'BATCHNO'
    end
    object qryBrowserUNITPRICE: TFloatField
      DisplayLabel = #932#953#956'.'#924#959#957
      FieldName = 'UNITPRICE'
      DisplayFormat = '0.000'
    end
    object qryBrowserISTYPED: TBooleanField
      DisplayLabel = 'Typed'
      FieldName = 'ISTYPED'
    end
    object qryBrowserLSitem: TStringField
      DisplayLabel = #917#943#948#959#962
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'LSitem'
      LookupDataSet = qrySItem
      LookupKeyFields = 'SITEMID'
      LookupResultField = 'DESCR'
      KeyFields = 'SITEMID'
      Lookup = True
    end
    object qryBrowserLCustomer: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustomer'
      LookupDataSet = qryACard
      LookupKeyFields = 'ACARDID'
      LookupResultField = 'LCustomer'
      KeyFields = 'ACARDID'
      Lookup = True
    end
  end
  object dtsBrowser: TDataSource
    AutoEdit = False
    DataSet = qryBrowser
    Left = 88
    Top = 16
  end
  object qryStation: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsMerchant
    Parameters = <
      item
        Name = 'MerchantId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    SQL.Strings = (
      'SELECT * FROM VMerchant_Station'
      'Where MerchantId = :MerchantId')
    Left = 104
    Top = 152
    object qryStationMerchantId: TIntegerField
      FieldName = 'MerchantId'
    end
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
    object qryStationCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryStationZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
  end
  object memACard: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 408
    Top = 144
    object memACardACARDCODE: TStringField
      FieldName = 'ACARDCODE'
      OnChange = memACardACARDCODEChange
      Size = 50
    end
  end
  object dtsACard: TDataSource
    DataSet = memACard
    Left = 408
    Top = 192
  end
  object qryACard: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryACardCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ACARD')
    Left = 168
    Top = 80
    object qryACardACARDID: TAutoIncField
      FieldName = 'ACARDID'
      ReadOnly = True
    end
    object qryACardACARDCODE: TWideStringField
      FieldName = 'ACARDCODE'
      Size = 50
    end
    object qryACardCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qryACardISSUEDATE: TDateTimeField
      FieldName = 'ISSUEDATE'
    end
    object qryACardEXPIREDATE: TDateTimeField
      FieldName = 'EXPIREDATE'
    end
    object qryACardMETERBOOLEAN: TBooleanField
      FieldName = 'METERBOOLEAN'
    end
    object qryACardPINBOOLEAN: TBooleanField
      FieldName = 'PINBOOLEAN'
    end
    object qryACardINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryACardUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryACardINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryACardUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryACardSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qryACardVTYPEID: TIntegerField
      FieldName = 'VTYPEID'
    end
    object qryACardCREATEBOOLEAN: TBooleanField
      FieldName = 'CREATEBOOLEAN'
    end
    object qryACardBLACKLISTBOOLEAN: TBooleanField
      FieldName = 'BLACKLISTBOOLEAN'
    end
    object qryACardBLACKLISTDATE: TDateTimeField
      FieldName = 'BLACKLISTDATE'
    end
    object qryACardBLACKLISTUSR: TIntegerField
      FieldName = 'BLACKLISTUSR'
    end
    object qryACardBLACKLISTNOTES: TWideStringField
      FieldName = 'BLACKLISTNOTES'
      Size = 200
    end
    object qryACardIGROUPID1: TIntegerField
      FieldName = 'IGROUPID1'
    end
    object qryACardIGROUPID2: TIntegerField
      FieldName = 'IGROUPID2'
    end
    object qryACardIGROUPID3: TIntegerField
      FieldName = 'IGROUPID3'
    end
    object qryACardIGROUPID4: TIntegerField
      FieldName = 'IGROUPID4'
    end
    object qryACardDAYAMOUNT: TFloatField
      FieldName = 'DAYAMOUNT'
    end
    object qryACardMONTHAMOUNT: TFloatField
      FieldName = 'MONTHAMOUNT'
    end
    object qryACardREGNO: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
    object qryACardACARDHOLDER: TWideStringField
      FieldName = 'ACARDHOLDER'
      Size = 30
    end
    object qryACardISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qryACardEXPIREPHDATE: TDateTimeField
      FieldName = 'EXPIREPHDATE'
    end
    object qryACardEXPIRELODATE: TDateTimeField
      FieldName = 'EXPIRELODATE'
    end
    object qryACardIGROUPID5: TIntegerField
      FieldName = 'IGROUPID5'
    end
    object qryACardEMPLOYEESID: TIntegerField
      FieldName = 'EMPLOYEESID'
    end
    object qryACardNEWCARDBOOLEAN: TBooleanField
      FieldName = 'NEWCARDBOOLEAN'
    end
    object qryACardNEWCARDID: TIntegerField
      FieldName = 'NEWCARDID'
    end
    object qryACardCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object qryACardACARDCODENUM: TIntegerField
      FieldName = 'ACARDCODENUM'
    end
    object qryACardLCustomer: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustomer'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'NAME'
      KeyFields = 'CUSTOMERID'
      Lookup = True
    end
  end
  object qrySItem: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SITEM')
    Left = 416
    Top = 64
    object qrySItemSITEMID: TAutoIncField
      FieldName = 'SITEMID'
      ReadOnly = True
    end
    object qrySItemDESCR: TWideStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object qrySItemIGROUPID: TIntegerField
      FieldName = 'IGROUPID'
    end
    object qrySItemICLASSID: TIntegerField
      FieldName = 'ICLASSID'
    end
    object qrySItemCODEINTERMINAL: TIntegerField
      FieldName = 'CODEINTERMINAL'
    end
  end
  object qryACardAll: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryACardAllCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM VACARD')
    Left = 168
    Top = 16
    object qryACardAllFullCardNo: TStringField
      DisplayLabel = #922#940#961#964#945
      FieldKind = fkCalculated
      FieldName = 'FullCardNo'
      Calculated = True
    end
    object qryACardAllACARDID: TAutoIncField
      FieldName = 'ACARDID'
      ReadOnly = True
    end
    object qryACardAllACARDCODE: TWideStringField
      FieldName = 'ACARDCODE'
      Size = 50
    end
    object qryACardAllCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qryACardAllISSUEDATE: TDateTimeField
      FieldName = 'ISSUEDATE'
    end
    object qryACardAllEXPIREDATE: TDateTimeField
      FieldName = 'EXPIREDATE'
    end
    object qryACardAllMETERBOOLEAN: TBooleanField
      FieldName = 'METERBOOLEAN'
    end
    object qryACardAllPINBOOLEAN: TBooleanField
      FieldName = 'PINBOOLEAN'
    end
    object qryACardAllINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryACardAllUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryACardAllINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryACardAllUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryACardAllSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qryACardAllVTYPEID: TIntegerField
      FieldName = 'VTYPEID'
    end
    object qryACardAllCREATEBOOLEAN: TBooleanField
      FieldName = 'CREATEBOOLEAN'
    end
    object qryACardAllBLACKLISTBOOLEAN: TBooleanField
      FieldName = 'BLACKLISTBOOLEAN'
    end
    object qryACardAllBLACKLISTDATE: TDateTimeField
      FieldName = 'BLACKLISTDATE'
    end
    object qryACardAllBLACKLISTUSR: TIntegerField
      FieldName = 'BLACKLISTUSR'
    end
    object qryACardAllBLACKLISTNOTES: TWideStringField
      FieldName = 'BLACKLISTNOTES'
      Size = 200
    end
    object qryACardAllIGROUPID1: TIntegerField
      FieldName = 'IGROUPID1'
    end
    object qryACardAllIGROUPID2: TIntegerField
      FieldName = 'IGROUPID2'
    end
    object qryACardAllIGROUPID3: TIntegerField
      FieldName = 'IGROUPID3'
    end
    object qryACardAllIGROUPID4: TIntegerField
      FieldName = 'IGROUPID4'
    end
    object qryACardAllDAYAMOUNT: TFloatField
      FieldName = 'DAYAMOUNT'
    end
    object qryACardAllMONTHAMOUNT: TFloatField
      FieldName = 'MONTHAMOUNT'
    end
    object qryACardAllREGNO: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
    object qryACardAllACARDHOLDER: TWideStringField
      FieldName = 'ACARDHOLDER'
      Size = 30
    end
    object qryACardAllISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qryACardAllEXPIREPHDATE: TDateTimeField
      FieldName = 'EXPIREPHDATE'
    end
    object qryACardAllEXPIRELODATE: TDateTimeField
      FieldName = 'EXPIRELODATE'
    end
    object qryACardAllIGROUPID5: TIntegerField
      FieldName = 'IGROUPID5'
    end
    object qryACardAllEMPLOYEESID: TIntegerField
      FieldName = 'EMPLOYEESID'
    end
    object qryACardAllNEWCARDBOOLEAN: TBooleanField
      FieldName = 'NEWCARDBOOLEAN'
    end
    object qryACardAllNEWCARDID: TIntegerField
      FieldName = 'NEWCARDID'
    end
    object qryACardAllINACTIVEDATE: TDateTimeField
      FieldName = 'INACTIVEDATE'
    end
    object qryACardAllINACTIVEUSR: TIntegerField
      FieldName = 'INACTIVEUSR'
    end
    object qryACardAllINACTIVENOTES: TWideStringField
      FieldName = 'INACTIVENOTES'
      FixedChar = True
      Size = 200
    end
    object qryACardAllIGROUPID6: TIntegerField
      FieldName = 'IGROUPID6'
    end
    object qryACardAllIGROUPID7: TIntegerField
      FieldName = 'IGROUPID7'
    end
    object qryACardAllIGROUPID8: TIntegerField
      FieldName = 'IGROUPID8'
    end
    object qryACardAllIGROUPID9: TIntegerField
      FieldName = 'IGROUPID9'
    end
    object qryACardAllIGROUPID10: TIntegerField
      FieldName = 'IGROUPID10'
    end
    object qryACardAllCOSTCENTERID: TIntegerField
      FieldName = 'COSTCENTERID'
    end
    object qryACardAllAcardCodeFull: TWideStringField
      FieldName = 'AcardCodeFull'
      ReadOnly = True
      Size = 19
    end
    object qryACardAllPending: TBooleanField
      FieldName = 'Pending'
    end
    object qryACardAllAcardCodeFull000: TWideStringField
      FieldName = 'AcardCodeFull000'
      ReadOnly = True
      Size = 4000
    end
    object qryACardAllCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object qryACardAllACARDCODENUM: TIntegerField
      FieldName = 'ACARDCODENUM'
    end
  end
  object qryBlackList: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dsACardAll
    Parameters = <
      item
        Name = 'ACARDID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM BLACKLIST'
      'Where ACARDID = :ACARDID')
    Left = 352
    Top = 16
    object qryBlackListBLACKLISTID: TAutoIncField
      FieldName = 'BLACKLISTID'
      ReadOnly = True
    end
    object qryBlackListACARDID: TIntegerField
      FieldName = 'ACARDID'
    end
    object qryBlackListFRDATE: TDateTimeField
      FieldName = 'FRDATE'
    end
    object qryBlackListTODATE: TDateTimeField
      FieldName = 'TODATE'
    end
    object qryBlackListNOTES: TWideStringField
      FieldName = 'NOTES'
      Size = 200
    end
    object qryBlackListINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryBlackListUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryBlackListINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryBlackListUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object dsACardAll: TDataSource
    DataSet = qryACardAll
    Left = 232
    Top = 16
  end
  object qryTerminal: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsStation
    Parameters = <
      item
        Name = 'StationId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    SQL.Strings = (
      'SELECT * FROM VStation_Terminal'
      'Where StationId = :StationId')
    Left = 176
    Top = 152
    object qryTerminalStationId: TIntegerField
      FieldName = 'StationId'
    end
    object qryTerminalTerminalCode: TWideStringField
      FieldName = 'TerminalCode'
    end
    object qryTerminalTerminalid: TIntegerField
      FieldName = 'Terminalid'
    end
    object qryTerminalTerminalSerialNo: TWideStringField
      FieldName = 'TerminalSerialNo'
      Size = 50
    end
  end
  object qryMerchant: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Merchant')
    Left = 32
    Top = 152
    object qryMerchantMerchantId: TIntegerField
      FieldName = 'MerchantId'
    end
    object qryMerchantName: TWideStringField
      FieldName = 'Name'
      Size = 100
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
    object qryMerchantSAPCode: TWideStringField
      FieldName = 'SAPCode'
      Size = 10
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
    DataSet = qryMerchant
    Left = 32
    Top = 216
  end
  object dtsTerminal: TDataSource
    DataSet = qryTerminal
    Left = 176
    Top = 216
  end
  object dtsStationAll: TDataSource
    AutoEdit = False
    DataSet = qryStationAll
    Left = 104
    Top = 360
  end
  object qryStationAll: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT StationId, Name FROM VMerchant_Station'
      ''
      '')
    Left = 104
    Top = 288
    object qryStationAllStationId: TIntegerField
      FieldName = 'StationId'
    end
    object qryStationAllName: TWideStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 100
    end
  end
  object qryTerminalAll: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsStationAll
    Parameters = <>
    SQL.Strings = (
      'SELECT TerminalId, TerminalCode FROM VStation_Terminal'
      '')
    Left = 176
    Top = 288
    object qryTerminalAllTerminalId: TIntegerField
      FieldName = 'TerminalId'
    end
    object qryTerminalAllTerminalCode: TWideStringField
      FieldName = 'TerminalCode'
    end
  end
  object qryMerchantAll: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT MerchantId, Name FROM Merchant'
      '')
    Left = 32
    Top = 288
    object qryMerchantAllMerchantId: TIntegerField
      FieldName = 'MerchantId'
    end
    object qryMerchantAllName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
  end
  object dtsMerchantAll: TDataSource
    AutoEdit = False
    DataSet = qryMerchantAll
    Left = 32
    Top = 360
  end
  object dtsTerminalAll: TDataSource
    AutoEdit = False
    DataSet = qryTerminalAll
    Left = 176
    Top = 360
  end
  object qryBrowser_Empty: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryBrowserCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT * From [Tran]'
      'Where TranId = 0')
    Left = 304
    Top = 240
    object AutoIncField1: TAutoIncField
      DisplayLabel = 'TranID'
      FieldName = 'TRANID'
      ReadOnly = True
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = #919#956#949'/'#957#943#945
      FieldName = 'TRANDATE'
      DisplayFormat = 'ddddd'
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = #39#937#961#945
      FieldName = 'TRANTIME'
      DisplayFormat = 't'
    end
    object StringField1: TStringField
      DisplayLabel = 'Merchant'
      FieldKind = fkLookup
      FieldName = 'LMerchant'
      LookupDataSet = qryMerchantAll
      LookupKeyFields = 'MerchantId'
      LookupResultField = 'Name'
      KeyFields = 'MERCHANTID'
      Lookup = True
    end
    object StringField2: TStringField
      DisplayLabel = #928#961#945#964#942#961#953#959
      FieldKind = fkLookup
      FieldName = 'LStation'
      LookupDataSet = qryStationAll
      LookupKeyFields = 'StationId'
      LookupResultField = 'Name'
      KeyFields = 'STATIONID'
      Lookup = True
    end
    object StringField3: TStringField
      DisplayLabel = #932#949#961#956#945#964#953#954#972
      FieldKind = fkLookup
      FieldName = 'LTerminal'
      LookupDataSet = qryTerminalAll
      LookupKeyFields = 'TerminalId'
      LookupResultField = 'TerminalCode'
      KeyFields = 'TERMINALID'
      Lookup = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'ACARDID'
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'Merchant&'
      FieldName = 'MERCHANTID'
    end
    object IntegerField3: TIntegerField
      DisplayLabel = 'Station&'
      FieldName = 'STATIONID'
    end
    object IntegerField4: TIntegerField
      DisplayLabel = 'Terminal&'
      FieldName = 'TERMINALID'
    end
    object FloatField1: TFloatField
      DisplayLabel = #913#958#943#945
      FieldName = 'AMOUNT'
      currency = True
    end
    object IntegerField5: TIntegerField
      DisplayLabel = #917#943#948#959#962'&'
      FieldName = 'SITEMID'
    end
    object FloatField2: TFloatField
      DisplayLabel = #928#959#963#972#964#951#964#945
      FieldName = 'QUANTITY'
      DisplayFormat = '###,##0.00'
    end
    object WideStringField1: TWideStringField
      DisplayLabel = #913#961'.'#913#960#959#948'.'
      DisplayWidth = 10
      FieldName = 'REFSTR'
      Size = 50
    end
    object BooleanField1: TBooleanField
      DisplayLabel = 'Auto'
      FieldName = 'ISAUTO'
    end
    object BooleanField2: TBooleanField
      DisplayLabel = 'VOID'
      FieldName = 'ISVOID'
    end
    object IntegerField6: TIntegerField
      DisplayLabel = 'Batch&'
      FieldName = 'BATCHNO'
    end
    object FloatField3: TFloatField
      DisplayLabel = #932#953#956'.'#924#959#957
      FieldName = 'UNITPRICE'
      DisplayFormat = '0.000'
    end
    object BooleanField3: TBooleanField
      DisplayLabel = 'Typed'
      FieldName = 'ISTYPED'
    end
    object StringField4: TStringField
      DisplayLabel = #917#943#948#959#962
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'LSitem'
      LookupDataSet = qrySItem
      LookupKeyFields = 'SITEMID'
      LookupResultField = 'DESCR'
      KeyFields = 'SITEMID'
      Lookup = True
    end
  end
  object dsSItem: TDataSource
    DataSet = qrySItem
    Left = 352
    Top = 64
  end
  object qryCustomer: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Customer')
    Left = 416
    Top = 328
    object qryCustomerCUSTOMERID: TAutoIncField
      FieldName = 'CUSTOMERID'
      ReadOnly = True
    end
    object qryCustomerNAME: TWideStringField
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
    object qryCustomerGarantieId: TIntegerField
      FieldName = 'GarantieId'
    end
    object qryCustomerGarantieAmount: TFloatField
      FieldName = 'GarantieAmount'
    end
    object qryCustomerComments: TMemoField
      FieldName = 'Comments'
      BlobType = ftMemo
    end
  end
  object dtsCustomer: TDataSource
    DataSet = qryCustomer
    OnStateChange = dtsTranStateChange
    Left = 416
    Top = 384
  end
  object qryVMST: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = qryTranBeforePost
    OnCalcFields = qryTranCalcFields
    OnNewRecord = qryTranNewRecord
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM V_MST_OUTER'
      'Where [Terminalid.TerminalCode] > '#39#39
      '')
    Left = 256
    Top = 416
    object qryVMSTTerminalidTerminalCode: TWideStringField
      FieldName = 'Terminalid.TerminalCode'
    end
    object qryVMSTStationName: TWideStringField
      FieldName = 'Station.Name'
      Size = 100
    end
    object qryVMSTMerchantName: TWideStringField
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object qryVMSTMerchantSAPCode: TWideStringField
      FieldName = 'Merchant.SAPCode'
      Size = 10
    end
    object qryVMSTTerminalTerminalid: TIntegerField
      FieldName = 'Terminal.Terminalid'
    end
    object qryVMSTStationStationId: TIntegerField
      FieldName = 'Station.StationId'
    end
    object qryVMSTMerchantMerchantId: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object qryVMSTMerchantInActive: TBooleanField
      FieldName = 'Merchant.InActive'
    end
    object qryVMSTMerchantDeleted: TBooleanField
      FieldName = 'Merchant.Deleted'
    end
    object qryVMSTMerchantIsTest: TBooleanField
      FieldName = 'Merchant.IsTest'
    end
    object qryVMSTMerchantStopSales: TBooleanField
      FieldName = 'Merchant.StopSales'
    end
    object qryVMSTStationDeleted: TBooleanField
      FieldName = 'Station.Deleted'
    end
    object qryVMSTStationInActive: TBooleanField
      FieldName = 'Station.InActive'
    end
    object qryVMSTStationStopSales: TBooleanField
      FieldName = 'Station.StopSales'
    end
    object qryVMSTMerchantMerchantCode: TWideStringField
      FieldName = 'Merchant.MerchantCode'
      Size = 50
    end
    object qryVMSTStationStreet: TWideStringField
      FieldName = 'Station.Street'
      Size = 50
    end
    object qryVMSTStationCity: TWideStringField
      FieldName = 'Station.City'
      Size = 50
    end
    object qryVMSTStationZIP: TWideStringField
      FieldName = 'Station.ZIP'
      Size = 50
    end
    object qryVMSTMerchantAFM: TWideStringField
      FieldName = 'Merchant.AFM'
      Size = 15
    end
    object qryVMSTMerchantDOY: TWideStringField
      FieldName = 'Merchant.DOY'
      Size = 50
    end
  end
  object dtsVMST: TDataSource
    AutoEdit = False
    DataSet = qryVMST
    OnStateChange = dtsTranStateChange
    Left = 320
    Top = 416
  end
  object dxMemData1: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 40
    Top = 424
    object dxMemData1Terminal: TIntegerField
      FieldName = 'Terminal'
    end
  end
  object DataSource1: TDataSource
    DataSet = dxMemData1
    Left = 112
    Top = 424
  end
end
