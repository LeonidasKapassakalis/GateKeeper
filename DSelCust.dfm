inherited DMSelCust: TDMSelCust
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 503
  object qryCustomer: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      ' from Customer')
    Left = 40
    Top = 32
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
      DisplayLabel = #916#953#949#973#952#965#957#963#951
      FieldName = 'STREET'
      Size = 50
    end
    object qryCustomerZIP: TWideStringField
      DisplayLabel = #932#922
      FieldName = 'ZIP'
      Size = 50
    end
    object qryCustomerCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryCustomerAFM: TWideStringField
      DisplayLabel = #913#934#924
      FieldName = 'AFM'
      Size = 15
    end
    object qryCustomerDOY: TWideStringField
      DisplayLabel = #916#927#933
      FieldName = 'DOY'
      Size = 50
    end
    object qryCustomerLCC: TStringField
      FieldKind = fkLookup
      FieldName = 'LCC'
      LookupDataSet = qryDiak
      LookupKeyFields = 'DiakID'
      LookupResultField = 'Descr'
      KeyFields = 'DIAKID'
      Lookup = True
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
      DisplayLabel = #917#957#949#961#947#972#962
      FieldName = 'ISACTIVE'
    end
    object qryCustomerSALESMENID: TIntegerField
      FieldName = 'SALESMENID'
    end
    object qryCustomerDIAKID: TIntegerField
      FieldName = 'DIAKID'
    end
    object qryCustomerISTEST: TBooleanField
      DisplayLabel = #916#959#954#953#956#942'(TEST)'
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
      DisplayLabel = #913#957#940#955#965#963#951' '#917#961#947#945#950#959#956#941#957#969#957
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
      DisplayLabel = #922#940#961#964#945' '#956#949' '#908#957#959#956#945'.'
      FieldName = 'CARDHASEMPNAME'
    end
    object qryCustomerDATEEND: TDateTimeField
      DisplayLabel = #919#956'/'#957#953#945' '#923#942#958#951#962
      FieldName = 'DATEEND'
    end
    object qryCustomerCompanyTypeId: TIntegerField
      FieldName = 'CompanyTypeId'
    end
    object qryCustomerLBranch: TStringField
      FieldKind = fkLookup
      FieldName = 'LBranch'
      LookupDataSet = qryBranch
      LookupKeyFields = 'BRANCHID'
      LookupResultField = 'DESCR'
      KeyFields = 'BRANCHID'
      Lookup = True
    end
    object qryCustomerLSalesMen: TStringField
      DisplayLabel = #928#969#955#951#964#942#962
      FieldKind = fkLookup
      FieldName = 'LSalesMen'
      LookupDataSet = qrySalesMen
      LookupKeyFields = 'SALESMENID'
      LookupResultField = 'DESCR'
      KeyFields = 'SALESMENID'
      Lookup = True
    end
  end
  object dtsCustomer: TDataSource
    AutoEdit = False
    DataSet = qryCustomer
    Left = 112
    Top = 32
  end
  object qryEmployees: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      ' from Employees')
    Left = 40
    Top = 104
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
    Left = 112
    Top = 104
  end
  object qrySitem: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      ' from Sitem')
    Left = 40
    Top = 184
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
    Left = 112
    Top = 184
  end
  object qryCostCenter: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsCustomer
    Parameters = <
      item
        Name = 'CustomerId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 8
      end>
    SQL.Strings = (
      'SELECT *'
      '  FROM CostCenter'
      '  Where CustomerId = :CustomerId')
    Left = 352
    Top = 32
    object qryCostCenterCostCenterId: TAutoIncField
      FieldName = 'CostCenterId'
      ReadOnly = True
    end
    object qryCostCenterCustomerId: TIntegerField
      FieldName = 'CustomerId'
    end
    object qryCostCenterCustomerAA: TIntegerField
      FieldName = 'CustomerAA'
    end
    object qryCostCenterCCName: TWideStringField
      FieldName = 'CCName'
      FixedChar = True
      Size = 10
    end
    object qryCostCenterCCNameFull: TWideStringField
      FieldName = 'CCNameFull'
      FixedChar = True
      Size = 100
    end
    object qryCostCenterInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryCostCenterInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryCostCenterUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qryCostCenterUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qryCostCenterDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryCostCenterDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryCostCenterDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryCostCenterInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryCostCenterInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryCostCenterInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object dtsCostCenter: TDataSource
    DataSet = qryCostCenter
    Left = 440
    Top = 32
  end
  object dtsCustomer_Contacts: TDataSource
    AutoEdit = False
    DataSet = qryCustomer_Contacts
    Left = 448
    Top = 96
  end
  object qryCustomer_Contacts: TADOQuery
    Tag = 210
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsCustomer
    Parameters = <
      item
        Name = 'CustomerId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 8
      end>
    SQL.Strings = (
      'SELECT *'
      '  FROM Customer_Contacts'
      '  Where CustomerId = :CustomerId')
    Left = 352
    Top = 96
    object qryCustomer_ContactsCustomerid: TIntegerField
      FieldName = 'Customerid'
    end
    object qryCustomer_ContactsContactid: TIntegerField
      FieldName = 'Contactid'
    end
    object qryCustomer_ContactsMain: TBooleanField
      FieldName = 'Main'
    end
    object qryCustomer_ContactsAA: TIntegerField
      FieldName = 'AA'
    end
    object qryCustomer_ContactsLCont: TStringField
      FieldKind = fkLookup
      FieldName = 'LCont'
      LookupDataSet = qryContacts
      LookupKeyFields = 'id'
      LookupResultField = 'Surname'
      KeyFields = 'Contactid'
      Lookup = True
    end
    object qryCustomer_ContactsLResr: TStringField
      DisplayWidth = 200
      FieldKind = fkLookup
      FieldName = 'LResr'
      LookupDataSet = qryContacts
      LookupKeyFields = 'id'
      LookupResultField = 'Whole'
      KeyFields = 'Contactid'
      Size = 200
      Lookup = True
    end
  end
  object qryContacts: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Contacts')
    Left = 352
    Top = 168
    object qryContactsid: TIntegerField
      FieldName = 'id'
    end
    object qryContactsType: TIntegerField
      FieldName = 'Type'
    end
    object qryContactsType_id: TIntegerField
      FieldName = 'Type_id'
    end
    object qryContactsName: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
    object qryContactsSurname: TWideStringField
      FieldName = 'Surname'
      Size = 50
    end
    object qryContactsemail: TWideStringField
      FieldName = 'email'
      Size = 50
    end
    object qryContactsPhone: TWideStringField
      FieldName = 'Phone'
      Size = 45
    end
    object qryContactsFax: TWideStringField
      FieldName = 'Fax'
      Size = 45
    end
    object qryContactsMobile: TWideStringField
      FieldName = 'Mobile'
      Size = 45
    end
    object qryContactsMailORFax: TIntegerField
      FieldName = 'MailORFax'
    end
    object qryContactsWhole: TStringField
      FieldKind = fkCalculated
      FieldName = 'Whole'
      Size = 200
      Calculated = True
    end
  end
  object dtsContacts: TDataSource
    AutoEdit = False
    DataSet = qryContacts
    Left = 440
    Top = 168
  end
  object qryQTown: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM QTown')
    Left = 348
    Top = 240
    object qryQTownArea00_Name: TWideStringField
      FieldName = 'Area00_Name'
      Size = 50
    end
    object qryQTownArea01_Name: TWideStringField
      FieldName = 'Area01_Name'
      Size = 50
    end
    object qryQTownArea02_Name: TWideStringField
      FieldName = 'Area02_Name'
      Size = 50
    end
    object qryQTownArea03_Name: TWideStringField
      FieldName = 'Area03_Name'
      Size = 50
    end
    object qryQTownArea02_Id: TIntegerField
      FieldName = 'Area02_Id'
    end
    object qryQTownArea03_Id: TAutoIncField
      FieldName = 'Area03_Id'
      ReadOnly = True
    end
    object qryQTownArea01_Id: TIntegerField
      FieldName = 'Area01_Id'
    end
    object qryQTownArea00_Id: TIntegerField
      FieldName = 'Area00_Id'
    end
    object qryQTownWholeDescr: TWideStringField
      FieldName = 'WholeDescr'
      ReadOnly = True
      Size = 203
    end
  end
  object dtsQTown: TDataSource
    AutoEdit = False
    DataSet = qryQTown
    Left = 440
    Top = 240
  end
  object qryBranch: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Branch')
    Left = 348
    Top = 304
    object qryBranchBRANCHID: TAutoIncField
      FieldName = 'BRANCHID'
      ReadOnly = True
    end
    object qryBranchDESCR: TWideStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object qryBranchINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryBranchUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryBranchINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryBranchUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object dtsBranch: TDataSource
    AutoEdit = False
    DataSet = qryBranch
    Left = 440
    Top = 304
  end
  object qrySalesMen: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SalesMen')
    Left = 348
    Top = 376
    object qrySalesMenSALESMENID: TAutoIncField
      FieldName = 'SALESMENID'
      ReadOnly = True
    end
    object qrySalesMenDESCR: TWideStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object qrySalesMenSAPID: TIntegerField
      FieldName = 'SAPID'
    end
    object qrySalesMenINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qrySalesMenUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qrySalesMenINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qrySalesMenUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object dtsSalesMen: TDataSource
    AutoEdit = False
    DataSet = qrySalesMen
    Left = 440
    Top = 376
  end
  object qryDiak: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Diak')
    Left = 348
    Top = 440
    object qryDiakDiakID: TAutoIncField
      FieldName = 'DiakID'
      ReadOnly = True
    end
    object qryDiakDescr: TWideStringField
      FieldName = 'Descr'
    end
    object qryDiakDiakDays: TIntegerField
      FieldName = 'DiakDays'
    end
    object qryDiakDiakSAP: TIntegerField
      FieldName = 'DiakSAP'
    end
    object qryDiakInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryDiakInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryDiakUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qryDiakUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qryDiakDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryDiakDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryDiakDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryDiakInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryDiakInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryDiakInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object dtsDiak: TDataSource
    AutoEdit = False
    DataSet = qryDiak
    Left = 440
    Top = 440
  end
end
