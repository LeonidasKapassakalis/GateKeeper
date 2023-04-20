object CustomerDM: TCustomerDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 498
  Width = 801
  object qryBrowser: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    MarshalOptions = moMarshalModifiedOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CUSTOMER')
    Left = 40
    Top = 32
    object qryBrowserCUSTOMERID: TAutoIncField
      FieldName = 'CUSTOMERID'
    end
    object qryBrowserNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object qryBrowserSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object qryBrowserZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryBrowserCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryBrowserAFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object qryBrowserDOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object qryBrowserSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qryBrowserAREAID: TIntegerField
      FieldName = 'AREAID'
    end
    object qryBrowserLOCATIONID: TIntegerField
      FieldName = 'LOCATIONID'
    end
    object qryBrowserCGROUPID: TIntegerField
      FieldName = 'CGROUPID'
    end
    object qryBrowserCCLASSID: TIntegerField
      FieldName = 'CCLASSID'
    end
    object qryBrowserCREDITAMOUNT: TFloatField
      FieldName = 'CREDITAMOUNT'
    end
    object qryBrowserINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryBrowserUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryBrowserINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryBrowserUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryBrowserPROFESSION: TWideStringField
      FieldName = 'PROFESSION'
      Size = 50
    end
    object qryBrowserBRANCHID: TIntegerField
      FieldName = 'BRANCHID'
    end
    object qryBrowserSAPCODE: TWideStringField
      FieldName = 'SAPCODE'
      Size = 10
    end
    object qryBrowserISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qryBrowserSALESMENID: TIntegerField
      FieldName = 'SALESMENID'
    end
    object qryBrowserDIAKID: TIntegerField
      FieldName = 'DIAKID'
    end
    object qryBrowserISTEST: TBooleanField
      FieldName = 'ISTEST'
    end
    object qryBrowserISCONS: TBooleanField
      FieldName = 'ISCONS'
    end
    object qryBrowserAREABID: TIntegerField
      FieldName = 'AREABID'
    end
    object qryBrowserDATEPHEND: TDateTimeField
      FieldName = 'DATEPHEND'
    end
    object qryBrowserDATELOEND: TDateTimeField
      FieldName = 'DATELOEND'
    end
    object qryBrowserHASDETAILEMP: TBooleanField
      FieldName = 'HASDETAILEMP'
    end
    object qryBrowserALLCARDSTOBL: TBooleanField
      FieldName = 'ALLCARDSTOBL'
    end
    object qryBrowserALLCARDSTOBLDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLDATE'
    end
    object qryBrowserALLCARDSTOBLSYSDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLSYSDATE'
    end
    object qryBrowserALLCARDSTOBLUSR: TIntegerField
      FieldName = 'ALLCARDSTOBLUSR'
    end
    object qryBrowserCUSTOMEROFF: TBooleanField
      FieldName = 'CUSTOMEROFF'
    end
    object qryBrowserCUSTOMEROFFDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFDATE'
    end
    object qryBrowserCUSTOMEROFFSYSDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFSYSDATE'
    end
    object qryBrowserCUSTOMEROFFUSR: TIntegerField
      FieldName = 'CUSTOMEROFFUSR'
    end
    object qryBrowserCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object qryBrowserDATEEND: TDateTimeField
      FieldName = 'DATEEND'
    end
    object qryBrowserCompanyTypeId: TIntegerField
      FieldName = 'CompanyTypeId'
    end
    object qryBrowserGarantieId: TIntegerField
      FieldName = 'GarantieId'
    end
    object qryBrowserGarantieAmount: TFloatField
      FieldName = 'GarantieAmount'
    end
    object qryBrowserComments: TMemoField
      FieldName = 'Comments'
      BlobType = ftMemo
    end
  end
  object dtsBrowser: TDataSource
    DataSet = qryBrowser
    Left = 128
    Top = 32
  end
  object qryCustomer: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    MarshalOptions = moMarshalModifiedOnly
    BeforePost = qryCustomerBeforePost
    AfterPost = qryCustomerAfterPost
    OnCalcFields = qryCustomerCalcFields
    OnNewRecord = qryCustomerNewRecord
    DataSource = dtsBrowser
    Parameters = <
      item
        Name = 'CustomerId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 8
      end>
    SQL.Strings = (
      'SELECT * FROM CUSTOMER'
      'Where CustomerId = :CustomerId')
    Left = 40
    Top = 96
    object qryCustomerCUSTOMERID: TAutoIncField
      FieldName = 'CUSTOMERID'
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
      OnValidate = qryCustomerAFMValidate
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
      currency = True
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
      currency = True
    end
    object qryCustomerComments: TMemoField
      FieldName = 'Comments'
      BlobType = ftMemo
    end
    object qryCustomerLIsActive: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'LIsActive'
      DisplayValues = ';'#913#957#949#957#949#961#947#972#962
      Calculated = True
    end
  end
  object dtsCustomer: TDataSource
    AutoEdit = False
    DataSet = qryCustomer
    OnStateChange = dtsCustomerStateChange
    Left = 128
    Top = 96
  end
  object qryACard: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsCustomer
    Parameters = <
      item
        Name = 'CUSTOMERID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 8
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM VACARD_Lt'
      'WHERE CUSTOMERID = :CUSTOMERID')
    Left = 48
    Top = 184
    object qryACardACARDID: TAutoIncField
      FieldName = 'ACARDID'
      ReadOnly = True
    end
    object qryACardACARDCODE: TWideStringField
      FieldName = 'ACARDCODE'
      Size = 50
    end
    object qryACardAcardCodeFull: TWideStringField
      FieldName = 'AcardCodeFull'
      ReadOnly = True
      Size = 19
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
    object qryACardBLACKLISTBOOLEAN: TBooleanField
      FieldName = 'BLACKLISTBOOLEAN'
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
    object qryACardISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qryACardEXPIRELODATE: TDateTimeField
      FieldName = 'EXPIRELODATE'
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
    object qryACardINACTIVEDATE: TDateTimeField
      FieldName = 'INACTIVEDATE'
    end
    object qryACardINACTIVEUSR: TIntegerField
      FieldName = 'INACTIVEUSR'
    end
    object qryACardINACTIVENOTES: TWideStringField
      FieldName = 'INACTIVENOTES'
      FixedChar = True
      Size = 200
    end
    object qryACardBlackListBatchNum: TIntegerField
      FieldName = 'BlackListBatchNum'
    end
  end
  object qryCostCenter: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    AfterInsert = qryCostCenterAfterInsert
    BeforePost = qryCustomerBeforePost
    OnPostError = qryCostCenterPostError
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
    OnStateChange = dtsCustomer_ContactsStateChange
    Left = 440
    Top = 32
  end
  object dtsCustomer_Contacts: TDataSource
    AutoEdit = False
    DataSet = qryCustomer_Contacts
    OnStateChange = dtsCustomer_ContactsStateChange
    Left = 448
    Top = 96
  end
  object qryCustomer_Contacts: TADOQuery
    Tag = 210
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    AfterInsert = qryCustomer_ContactsAfterInsert
    BeforePost = qryCustomer_ContactsBeforePost
    OnPostError = qryCustomer_ContactsPostError
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
    object qryCustomer_ContactsLContactTypeId: TStringField
      FieldKind = fkLookup
      FieldName = 'LContactTypeId'
      LookupDataSet = qryContactType
      LookupKeyFields = 'ContactTypeId'
      LookupResultField = 'ContactType_Name'
      KeyFields = 'ContactTypeId'
      Lookup = True
    end
    object qryCustomer_ContactsCustomerContactId: TAutoIncField
      FieldName = 'CustomerContactId'
      ReadOnly = True
    end
    object qryCustomer_ContactsCustomerid: TIntegerField
      FieldName = 'Customerid'
    end
    object qryCustomer_ContactsContactid: TIntegerField
      FieldName = 'Contactid'
    end
    object qryCustomer_ContactsContactTypeId: TIntegerField
      FieldName = 'ContactTypeId'
    end
    object qryCustomer_ContactsMain: TBooleanField
      FieldName = 'Main'
    end
    object qryCustomer_ContactsAA: TIntegerField
      FieldName = 'AA'
    end
    object qryCustomer_ContactsLMial: TStringField
      FieldKind = fkLookup
      FieldName = 'LMial'
      LookupDataSet = qryContacts
      LookupKeyFields = 'id'
      LookupResultField = 'email'
      KeyFields = 'Contactid'
      Size = 60
      Lookup = True
    end
  end
  object qryContacts: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = qryCustomerBeforePost
    OnCalcFields = qryContactsCalcFields
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
    object qryContactsSendMail: TBooleanField
      FieldName = 'SendMail'
    end
    object qryContactsSendFax: TBooleanField
      FieldName = 'SendFax'
    end
    object qryContactsSendPrint: TBooleanField
      FieldName = 'SendPrint'
    end
    object qryContactsOldCode: TIntegerField
      FieldName = 'OldCode'
    end
    object qryContactsOldType: TIntegerField
      FieldName = 'OldType'
    end
  end
  object qryMaxCustomerContactsAA: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = qryCustomerBeforePost
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
      'SELECT Max(AA) as Max_AA'
      '  FROM Customer_Contacts'
      '  Where CustomerId = :CustomerId')
    Left = 544
    Top = 96
    object qryMaxCustomerContactsAAMax_AA: TIntegerField
      FieldName = 'Max_AA'
      ReadOnly = True
    end
  end
  object qryMaxCostCenterAA: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = qryCustomerBeforePost
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
      'SELECT Max(CustomerAA) as MaxCustomerAA'
      '  FROM CostCenter'
      '  Where CustomerId = :CustomerId')
    Left = 544
    Top = 32
    object qryMaxCostCenterAAMaxCustomerAA: TIntegerField
      FieldName = 'MaxCustomerAA'
      ReadOnly = True
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
  object dtsACard: TDataSource
    AutoEdit = False
    DataSet = qryACard
    Left = 144
    Top = 184
  end
  object qryGarantie: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = qryCustomerBeforePost
    OnCalcFields = qryContactsCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Garantie')
    Left = 144
    Top = 432
    object qryGarantieGarantieId: TAutoIncField
      FieldName = 'GarantieId'
      ReadOnly = True
    end
    object qryGarantieGarantieName: TWideStringField
      FieldName = 'GarantieName'
      Size = 50
    end
    object qryGarantieInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryGarantieInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryGarantieUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qryGarantieUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qryGarantieDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryGarantieDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryGarantieDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryGarantieInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryGarantieInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryGarantieInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object dtsGarantie: TDataSource
    AutoEdit = False
    DataSet = qryGarantie
    Left = 200
    Top = 432
  end
  object qryCompanyType: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = qryCustomerBeforePost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM CompanyType')
    Left = 144
    Top = 336
    object qryCompanyTypeCompanyTypeId: TAutoIncField
      FieldName = 'CompanyTypeId'
      ReadOnly = True
    end
    object qryCompanyTypeName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object qryCompanyTypeInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryCompanyTypeInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryCompanyTypeUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qryCompanyTypeUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qryCompanyTypeDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryCompanyTypeDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryCompanyTypeDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryCompanyTypeInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryCompanyTypeInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryCompanyTypeInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object dtsCompanyType: TDataSource
    AutoEdit = False
    DataSet = qryCompanyType
    Left = 208
    Top = 336
  end
  object qryPDF: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = qryPDFBeforePost
    DataSource = dtsCustomer
    Parameters = <
      item
        Name = 'CUSTOMERID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 8
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM Customer_PDF'
      'WHERE CUSTOMERID = :CUSTOMERID')
    Left = 32
    Top = 264
    object qryPDFId: TIntegerField
      FieldName = 'Id'
    end
    object qryPDFCustomerId: TIntegerField
      FieldName = 'CustomerId'
      Visible = False
    end
    object qryPDFPdfText: TStringField
      FieldName = 'PdfText'
      FixedChar = True
      Size = 100
    end
    object qryPDFInsDt: TDateTimeField
      FieldName = 'InsDt'
    end
    object qryPDFPdfCont: TBlobField
      FieldName = 'PdfCont'
      Visible = False
    end
    object qryPDFInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryPDFUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qryPDFUpdDt: TDateTimeField
      FieldName = 'UpdDt'
    end
    object qryPDFDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryPDFDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryPDFDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
  end
  object dtsPDF: TDataSource
    AutoEdit = False
    DataSet = qryPDF
    Left = 128
    Top = 264
  end
  object qryCClass: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CClass')
    Left = 596
    Top = 312
    object qryCClassCClassID: TAutoIncField
      FieldName = 'CClassID'
      ReadOnly = True
    end
    object qryCClassDescr: TWideStringField
      FieldName = 'Descr'
      Size = 50
    end
    object qryCClassInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryCClassInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryCClassUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qryCClassUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qryCClassDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryCClassDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryCClassDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryCClassInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryCClassInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryCClassInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object dtsCClass: TDataSource
    AutoEdit = False
    DataSet = qryCClass
    Left = 688
    Top = 312
  end
  object qryCGroup: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CGroup')
    Left = 596
    Top = 384
  end
  object dtsCGroup: TDataSource
    AutoEdit = False
    DataSet = qryCGroup
    Left = 688
    Top = 384
  end
  object qryContactType: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ContactTypeId, ContactType_Name'
      '  FROM ContactType')
    Left = 560
    Top = 176
    object qryContactTypeContactTypeId: TAutoIncField
      FieldName = 'ContactTypeId'
      ReadOnly = True
    end
    object qryContactTypeContactType_Name: TWideStringField
      FieldName = 'ContactType_Name'
      Size = 50
    end
  end
  object dtsContactType: TDataSource
    AutoEdit = False
    Left = 646
    Top = 176
  end
  object qryFindAFM: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = qryCustomerBeforePost
    AfterPost = qryCustomerAfterPost
    OnNewRecord = qryCustomerNewRecord
    Parameters = <
      item
        Name = 'PAFM'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'SELECT CustomerId, Name FROM CUSTOMER'
      'Where AFM = :PAFM')
    Left = 232
    Top = 88
    object qryFindAFMCustomerId: TAutoIncField
      FieldName = 'CustomerId'
      ReadOnly = True
    end
    object qryFindAFMName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object qryBLACKLIST: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM BlackList'
      '')
    Left = 672
    Top = 32
    object qryBLACKLISTBLACKLISTID: TAutoIncField
      FieldName = 'BLACKLISTID'
      ReadOnly = True
    end
    object qryBLACKLISTACARDID: TIntegerField
      FieldName = 'ACARDID'
    end
    object qryBLACKLISTFRDATE: TDateTimeField
      FieldName = 'FRDATE'
    end
    object qryBLACKLISTTODATE: TDateTimeField
      FieldName = 'TODATE'
    end
    object qryBLACKLISTNOTES: TWideStringField
      FieldName = 'NOTES'
      Size = 200
    end
    object qryBLACKLISTINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryBLACKLISTUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryBLACKLISTINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryBLACKLISTUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryBLACKLISTBatchNum: TIntegerField
      FieldName = 'BatchNum'
    end
  end
  object qryACard_BLId: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PCUSTOMERID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PBlackListBatchNum'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM VACARD_Lt'
      'WHERE CUSTOMERID = :PCUSTOMERID'
      'AND BlackListBatchNum = :PBlackListBatchNum')
    Left = 672
    Top = 88
    object qryACard_BLIdACARDID: TAutoIncField
      FieldName = 'ACARDID'
      ReadOnly = True
    end
    object qryACard_BLIdACARDCODE: TWideStringField
      FieldName = 'ACARDCODE'
      Size = 50
    end
    object qryACard_BLIdAcardCodeFull: TWideStringField
      FieldName = 'AcardCodeFull'
      ReadOnly = True
      Size = 19
    end
    object qryACard_BLIdCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qryACard_BLIdISSUEDATE: TDateTimeField
      FieldName = 'ISSUEDATE'
    end
    object qryACard_BLIdEXPIREDATE: TDateTimeField
      FieldName = 'EXPIREDATE'
    end
    object qryACard_BLIdBLACKLISTBOOLEAN: TBooleanField
      FieldName = 'BLACKLISTBOOLEAN'
    end
    object qryACard_BLIdDAYAMOUNT: TFloatField
      FieldName = 'DAYAMOUNT'
    end
    object qryACard_BLIdMONTHAMOUNT: TFloatField
      FieldName = 'MONTHAMOUNT'
    end
    object qryACard_BLIdREGNO: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
    object qryACard_BLIdISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qryACard_BLIdEXPIRELODATE: TDateTimeField
      FieldName = 'EXPIRELODATE'
    end
    object qryACard_BLIdBLACKLISTDATE: TDateTimeField
      FieldName = 'BLACKLISTDATE'
    end
    object qryACard_BLIdBLACKLISTUSR: TIntegerField
      FieldName = 'BLACKLISTUSR'
    end
    object qryACard_BLIdBLACKLISTNOTES: TWideStringField
      FieldName = 'BLACKLISTNOTES'
      Size = 200
    end
    object qryACard_BLIdINACTIVEDATE: TDateTimeField
      FieldName = 'INACTIVEDATE'
    end
    object qryACard_BLIdINACTIVEUSR: TIntegerField
      FieldName = 'INACTIVEUSR'
    end
    object qryACard_BLIdINACTIVENOTES: TWideStringField
      FieldName = 'INACTIVENOTES'
      FixedChar = True
      Size = 200
    end
    object qryACard_BLIdBlackListBatchNum: TIntegerField
      FieldName = 'BlackListBatchNum'
    end
  end
  object qryBatchBlEnhm: TADOQuery
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
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM BatchBlEnhm'
      'Where CustomerId = :CustomerId')
    Left = 600
    Top = 240
    object qryBatchBlEnhmBatchBlEnhmId: TIntegerField
      Tag = 8888
      FieldName = 'BatchBlEnhmId'
      Visible = False
    end
    object qryBatchBlEnhmDate: TDateTimeField
      FieldName = 'Date'
    end
    object qryBatchBlEnhmCustomerid: TIntegerField
      FieldName = 'Customerid'
      Visible = False
    end
    object qryBatchBlEnhmCardCount: TIntegerField
      FieldName = 'CardCount'
    end
    object qryBatchBlEnhmINSDT: TDateTimeField
      FieldName = 'INSDT'
      Visible = False
    end
    object qryBatchBlEnhmUPDDT: TDateTimeField
      FieldName = 'UPDDT'
      Visible = False
    end
    object qryBatchBlEnhmINSUSR: TIntegerField
      FieldName = 'INSUSR'
      Visible = False
    end
    object qryBatchBlEnhmUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
      Visible = False
    end
  end
  object dtsBatchBlEnhm: TDataSource
    AutoEdit = False
    DataSet = qryBatchBlEnhm
    Left = 686
    Top = 240
  end
end
