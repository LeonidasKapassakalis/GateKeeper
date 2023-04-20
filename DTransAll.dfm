inherited DMTransAll: TDMTransAll
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  object qryTranD0: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TranD')
    Left = 56
    Top = 48
    object qryTranD0TRANDID: TAutoIncField
      FieldName = 'TRANDID'
      ReadOnly = True
    end
    object qryTranD0CUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qryTranD0EMPLOYEEID: TIntegerField
      FieldName = 'EMPLOYEEID'
    end
    object qryTranD0DEBIT: TBCDField
      FieldName = 'DEBIT'
      Precision = 19
    end
    object qryTranD0CREDIT: TBCDField
      FieldName = 'CREDIT'
      Precision = 19
    end
    object qryTranD0TTEXT: TWideStringField
      FieldName = 'TTEXT'
      Size = 50
    end
    object qryTranD0TRANDDATE: TDateTimeField
      FieldName = 'TRANDDATE'
    end
    object qryTranD0TRANDCID: TIntegerField
      FieldName = 'TRANDCID'
    end
    object qryTranD0INSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryTranD0UPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryTranD0INSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryTranD0UPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryTranD0LCustomer: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustomer'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'NAME'
      KeyFields = 'CUSTOMERID'
      Size = 50
      Lookup = True
    end
    object qryTranD0LEmployee: TStringField
      FieldKind = fkLookup
      FieldName = 'LEmployee'
      LookupDataSet = qryEmployees
      LookupKeyFields = 'Id'
      LookupResultField = 'SurName'
      KeyFields = 'EMPLOYEEID'
      Lookup = True
    end
    object qryTranD0LTranDC: TStringField
      FieldKind = fkLookup
      FieldName = 'LTranDC'
      LookupDataSet = qryEnhmDisCall
      LookupKeyFields = 'ENHMDISCALLID'
      LookupResultField = 'ENHMDISCALLDATE'
      KeyFields = 'TRANDCID'
      Lookup = True
    end
  end
  object dtsTranD: TDataSource
    DataSet = qryTranD0
    Left = 128
    Top = 48
  end
  object qryCustomer: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select CustomerId, Name'
      ' from Customer')
    Left = 408
    Top = 48
    object qryCustomerCUSTOMERID: TAutoIncField
      FieldName = 'CUSTOMERID'
      ReadOnly = True
    end
    object qryCustomerNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
  end
  object dtsCustomer: TDataSource
    AutoEdit = False
    DataSet = qryCustomer
    Left = 480
    Top = 48
  end
  object qryEmployees: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      ' from Employees')
    Left = 408
    Top = 120
    object qryEmployeesId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qryEmployeesCustomerId: TIntegerField
      FieldName = 'CustomerId'
    end
    object qryEmployeesMhtrId: TIntegerField
      FieldName = 'MhtrId'
    end
    object qryEmployeesName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object qryEmployeesSurName: TWideStringField
      FieldName = 'SurName'
      Size = 50
    end
    object qryEmployeesAddress: TWideStringField
      FieldName = 'Address'
      Size = 50
    end
    object qryEmployeesTK: TWideStringField
      FieldName = 'TK'
      Size = 5
    end
    object qryEmployeesTown: TWideStringField
      FieldName = 'Town'
      Size = 50
    end
    object qryEmployeesAFM: TWideStringField
      FieldName = 'AFM'
      Size = 9
    end
    object qryEmployeesDOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object qryEmployeesYpokId: TIntegerField
      FieldName = 'YpokId'
    end
    object qryEmployeesSendPrint: TBooleanField
      FieldName = 'SendPrint'
    end
    object qryEmployeesSendMail: TBooleanField
      FieldName = 'SendMail'
    end
    object qryEmployeesMailAddr: TWideStringField
      FieldName = 'MailAddr'
      Size = 50
    end
    object qryEmployeesLCustomer: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustomer'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'NAME'
      KeyFields = 'CustomerId'
      Lookup = True
    end
  end
  object dtsEmployees: TDataSource
    AutoEdit = False
    DataSet = qryEmployees
    Left = 480
    Top = 120
  end
  object qryEnhmDisCall: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      ' from EnhmDisCall')
    Left = 408
    Top = 200
    object qryEnhmDisCallENHMDISCALLID: TAutoIncField
      FieldName = 'ENHMDISCALLID'
      ReadOnly = True
    end
    object qryEnhmDisCallENHMDISCALLDATE: TDateTimeField
      FieldName = 'ENHMDISCALLDATE'
    end
    object qryEnhmDisCallINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryEnhmDisCallUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryEnhmDisCallINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryEnhmDisCallUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object dtsEnhmDisCall: TDataSource
    AutoEdit = False
    DataSet = qryEnhmDisCall
    Left = 480
    Top = 200
  end
  object qryTranDL0: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TranDL')
    Left = 56
    Top = 128
    object qryTranDL0TRANDLID: TAutoIncField
      FieldName = 'TRANDLID'
      ReadOnly = True
    end
    object qryTranDL0STATIONID: TIntegerField
      FieldName = 'STATIONID'
    end
    object qryTranDL0CUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qryTranDL0DEBIT: TFloatField
      FieldName = 'DEBIT'
    end
    object qryTranDL0CREDIT: TFloatField
      FieldName = 'CREDIT'
    end
    object qryTranDL0TTEXT: TWideStringField
      FieldName = 'TTEXT'
      Size = 50
    end
    object qryTranDL0TRANDLDATE: TDateTimeField
      FieldName = 'TRANDLDATE'
    end
    object qryTranDL0TRANBSID: TIntegerField
      FieldName = 'TRANBSID'
    end
    object qryTranDL0INSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryTranDL0UPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryTranDL0INSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryTranDL0UPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryTranDL0LCustomer: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustomer'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'NAME'
      KeyFields = 'CUSTOMERID'
      Lookup = True
    end
    object qryTranDL0LMerchant: TStringField
      FieldKind = fkLookup
      FieldName = 'LMerchant'
      LookupDataSet = qryMerchant
      LookupKeyFields = 'MerchantId'
      LookupResultField = 'Name'
      KeyFields = 'STATIONID'
      Lookup = True
    end
  end
  object dtsTranDL: TDataSource
    DataSet = qryTranDL0
    Left = 128
    Top = 128
  end
  object qryMerchant: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      ' from Merchant')
    Left = 408
    Top = 272
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
    AutoEdit = False
    DataSet = qryMerchant
    Left = 480
    Top = 272
  end
  object qryTranP: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from TranP')
    Left = 56
    Top = 216
    object qryTranPTRANPID: TAutoIncField
      FieldName = 'TRANPID'
      ReadOnly = True
    end
    object qryTranPSTATIONID: TIntegerField
      FieldName = 'STATIONID'
    end
    object qryTranPSITEMID: TIntegerField
      FieldName = 'SITEMID'
    end
    object qryTranPDEBIT: TFloatField
      FieldName = 'DEBIT'
    end
    object qryTranPCREDIT: TFloatField
      FieldName = 'CREDIT'
    end
    object qryTranPTTEXT: TWideStringField
      FieldName = 'TTEXT'
      Size = 50
    end
    object qryTranPTRANPDATE: TDateTimeField
      FieldName = 'TRANPDATE'
    end
    object qryTranPTRANBCOID: TIntegerField
      FieldName = 'TRANBCOID'
    end
    object qryTranPINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryTranPUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryTranPINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryTranPUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryTranPLSitem: TStringField
      FieldKind = fkLookup
      FieldName = 'LSitem'
      LookupDataSet = qrySitem
      LookupKeyFields = 'SITEMID'
      LookupResultField = 'Descr'
      KeyFields = 'SITEMID'
      Lookup = True
    end
    object qryTranPLStation: TStringField
      FieldKind = fkLookup
      FieldName = 'LStation'
      LookupDataSet = qryMerchant
      LookupKeyFields = 'MerchantId'
      LookupResultField = 'Name'
      KeyFields = 'STATIONID'
      Lookup = True
    end
  end
  object dtsTranP: TDataSource
    DataSet = qryTranP
    Left = 128
    Top = 216
  end
  object qrySitem: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      ' from Sitem')
    Left = 408
    Top = 336
    object qrySitemSITEMID: TAutoIncField
      FieldName = 'SITEMID'
      ReadOnly = True
    end
    object qrySitemDescr: TWideStringField
      FieldName = 'Descr'
      Size = 50
    end
    object qrySitemIGROUPID: TIntegerField
      FieldName = 'IGROUPID'
    end
    object qrySitemICLASSID: TIntegerField
      FieldName = 'ICLASSID'
    end
    object qrySitemPososto: TFloatField
      FieldName = 'Pososto'
    end
    object qrySitemCODEINTERMINAL: TIntegerField
      FieldName = 'CODEINTERMINAL'
    end
    object qrySitemMINPRICE: TFloatField
      FieldName = 'MINPRICE'
    end
    object qrySitemMAXPRICE: TFloatField
      FieldName = 'MAXPRICE'
    end
    object qrySitemCHECKPRICE: TBooleanField
      FieldName = 'CHECKPRICE'
    end
    object qrySitemInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qrySitemInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qrySitemUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qrySitemUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qrySitemDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qrySitemDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qrySitemDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qrySitemInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qrySitemInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qrySitemInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object dtsSitem: TDataSource
    AutoEdit = False
    DataSet = qrySitem
    Left = 480
    Top = 336
  end
end
