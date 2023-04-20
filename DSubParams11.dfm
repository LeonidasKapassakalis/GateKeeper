inherited DMSubParams11: TDMSubParams11
  OldCreateOrder = True
  OnCreate = DMSubParamsCreate
  Height = 694
  Width = 742
  object dsArea00: TDataSource
    AutoEdit = False
    DataSet = Area00
    OnStateChange = dsCountryStateChange
    Left = 80
    Top = 16
  end
  object Area00: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'AREA00'
    Left = 24
    Top = 16
    object Area00Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Area00AREA00_NAME: TWideStringField
      FieldName = 'AREA00_NAME'
      Size = 50
    end
    object Area00InsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object Area00InsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object Area00UpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object Area00UpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object Area00Deleted: TBooleanField
      FieldName = 'Deleted'
    end
    object Area00DelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object Area00DelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object Area00InActive: TBooleanField
      FieldName = 'InActive'
    end
    object Area00InActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object Area00InActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object dsArea01: TDataSource
    AutoEdit = False
    DataSet = Area01
    OnStateChange = dsCountryStateChange
    Left = 80
    Top = 80
  end
  object Area01: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'AREA01'
    Left = 24
    Top = 80
    object Area01Id: TAutoIncField
      FieldName = 'Id'
    end
    object Area01Area00_Id: TIntegerField
      FieldName = 'Area00_Id'
    end
    object Area01LuArea00: TStringField
      FieldKind = fkLookup
      FieldName = 'LuArea00_Id'
      LookupDataSet = Area00
      LookupKeyFields = 'Id'
      LookupResultField = 'AREA00_NAME'
      KeyFields = 'Area00_Id'
      Lookup = True
    end
    object Area01Area01_Name: TWideStringField
      FieldName = 'Area01_Name'
      Size = 50
    end
    object Area01InsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object Area01InsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object Area01UpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object Area01UpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object Area01Deleted: TBooleanField
      FieldName = 'Deleted'
    end
    object Area01DelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object Area01DelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object Area01InActive: TBooleanField
      FieldName = 'InActive'
    end
    object Area01InActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object Area01InActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object dsArea02: TDataSource
    AutoEdit = False
    DataSet = Area02
    OnStateChange = dsCountryStateChange
    Left = 80
    Top = 152
  end
  object Area02: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'AREA02'
    Left = 24
    Top = 152
    object Area02Id: TIntegerField
      FieldName = 'Id'
    end
    object Area02Area01_Id: TIntegerField
      FieldName = 'Area01_Id'
    end
    object Area02LuArea01_Id: TStringField
      FieldKind = fkLookup
      FieldName = 'LuArea01_Id'
      LookupDataSet = Area01
      LookupKeyFields = 'Id'
      LookupResultField = 'Area01_Name'
      KeyFields = 'Area01_Id'
      Size = 80
      Lookup = True
    end
    object Area02Area02_Name: TWideStringField
      FieldName = 'Area02_Name'
      Size = 50
    end
    object Area02InsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object Area02InsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object Area02UpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object Area02UpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object Area02Deleted: TBooleanField
      FieldName = 'Deleted'
    end
    object Area02DelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object Area02DelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object Area02InActive: TBooleanField
      FieldName = 'InActive'
    end
    object Area02InActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object Area02InActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object dsArea03: TDataSource
    AutoEdit = False
    DataSet = Area03
    OnStateChange = dsCountryStateChange
    Left = 80
    Top = 224
  end
  object Area03: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'AREA03'
    Left = 24
    Top = 224
    object Area03Id: TIntegerField
      FieldName = 'Id'
    end
    object Area03Area02_Id: TIntegerField
      FieldName = 'Area02_Id'
    end
    object Area03Area03_Name: TWideStringField
      FieldName = 'Area03_Name'
      Size = 50
    end
    object Area03InsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object Area03InsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object Area03UpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object Area03UpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object Area03Deleted: TBooleanField
      FieldName = 'Deleted'
    end
    object Area03DelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object Area03DelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object Area03InActive: TBooleanField
      FieldName = 'InActive'
    end
    object Area03InActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object Area03InActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object Area03LuArea02_id: TStringField
      FieldKind = fkLookup
      FieldName = 'LuArea02_id'
      LookupDataSet = Area02
      LookupKeyFields = 'Id'
      LookupResultField = 'Area02_Name'
      KeyFields = 'Area02_Id'
      Size = 50
      Lookup = True
    end
  end
  object dsCCLASS: TDataSource
    AutoEdit = False
    DataSet = CCLASS
    OnStateChange = dsCountryStateChange
    Left = 248
    Top = 16
  end
  object CCLASS: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    MarshalOptions = moMarshalModifiedOnly
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'CCLASS'
    Left = 192
    Top = 16
    object CCLASSDescr: TWideStringField
      FieldName = 'Descr'
      Size = 50
    end
    object CCLASSInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object CCLASSInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object CCLASSUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object CCLASSUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object CCLASSDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object CCLASSDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object CCLASSDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object CCLASSInActive: TBooleanField
      FieldName = 'InActive'
    end
    object CCLASSInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object CCLASSInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object CCLASSCClassID: TAutoIncField
      FieldName = 'CClassID'
      ReadOnly = True
    end
  end
  object dsCGROUP: TDataSource
    AutoEdit = False
    DataSet = CGROUP
    OnStateChange = dsCountryStateChange
    Left = 248
    Top = 80
  end
  object CGROUP: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    MarshalOptions = moMarshalModifiedOnly
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'CGROUP'
    Left = 192
    Top = 80
    object CGROUPDescr: TWideStringField
      FieldName = 'Descr'
      Size = 50
    end
    object CGROUPInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object CGROUPInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object CGROUPUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object CGROUPUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object CGROUPDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object CGROUPDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object CGROUPDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object CGROUPInActive: TBooleanField
      FieldName = 'InActive'
    end
    object CGROUPInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object CGROUPInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object CGROUPCGroupId: TAutoIncField
      FieldName = 'CGroupId'
      ReadOnly = True
    end
  end
  object dsICLASS: TDataSource
    AutoEdit = False
    DataSet = ICLASS
    OnStateChange = dsCountryStateChange
    Left = 248
    Top = 152
  end
  object ICLASS: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'ICLASS'
    Left = 192
    Top = 152
    object ICLASSInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object ICLASSInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object ICLASSUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object ICLASSUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object ICLASSDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object ICLASSDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object ICLASSDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object ICLASSInActive: TBooleanField
      FieldName = 'InActive'
    end
    object ICLASSInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object ICLASSInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object ICLASSIClassId: TAutoIncField
      FieldName = 'IClassId'
      ReadOnly = True
    end
    object ICLASSDescr: TWideStringField
      FieldName = 'Descr'
      Size = 50
    end
  end
  object dsIGROUP: TDataSource
    AutoEdit = False
    DataSet = IGROUP
    OnStateChange = dsCountryStateChange
    Left = 248
    Top = 224
  end
  object IGROUP: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'IGROUP'
    Left = 192
    Top = 224
    object IGROUPName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object IGROUPBITNO: TIntegerField
      FieldName = 'BITNO'
    end
    object IGROUPPOSOSTO: TFloatField
      FieldName = 'POSOSTO'
    end
    object IGROUPInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object IGROUPInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object IGROUPUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object IGROUPUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object IGROUPDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object IGROUPDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object IGROUPDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object IGROUPInActive: TBooleanField
      FieldName = 'InActive'
    end
    object IGROUPInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object IGROUPInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object IGROUPId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
  end
  object dsContacts: TDataSource
    AutoEdit = False
    DataSet = Contacts
    OnStateChange = dsCountryStateChange
    Left = 80
    Top = 296
  end
  object Contacts: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'Contacts'
    Left = 24
    Top = 296
    object Contactsid: TIntegerField
      FieldName = 'id'
    end
    object ContactsSurname: TWideStringField
      FieldName = 'Surname'
      FixedChar = True
      Size = 30
    end
    object ContactsName: TWideStringField
      FieldName = 'Name'
      FixedChar = True
    end
    object Contactsemail: TWideStringField
      FieldName = 'email'
      FixedChar = True
      Size = 50
    end
    object ContactsPhone: TWideStringField
      FieldName = 'Phone'
      FixedChar = True
      Size = 35
    end
    object ContactsFax: TWideStringField
      FieldName = 'Fax'
      FixedChar = True
      Size = 35
    end
    object ContactsMobile: TWideStringField
      FieldName = 'Mobile'
      FixedChar = True
      Size = 35
    end
    object ContactsSendMail: TBooleanField
      FieldName = 'SendMail'
    end
    object ContactsSendFax: TBooleanField
      FieldName = 'SendFax'
    end
    object ContactsSendPrint: TBooleanField
      FieldName = 'SendPrint'
    end
    object ContactsOldCode: TIntegerField
      FieldName = 'OldCode'
    end
    object ContactsOldType: TIntegerField
      FieldName = 'OldType'
    end
    object ContactsComments: TMemoField
      FieldName = 'Comments'
      BlobType = ftMemo
    end
  end
  object dsMerchant_Contacts: TDataSource
    AutoEdit = False
    DataSet = Merchant_Contacts
    OnStateChange = dsCountryStateChange
    Left = 88
    Top = 360
  end
  object Merchant_Contacts: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'Merchant_Contacts'
    Left = 24
    Top = 360
    object Merchant_ContactsLContacts: TStringField
      FieldKind = fkLookup
      FieldName = 'LContacts'
      LookupDataSet = Contacts
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'ContactId'
      Size = 40
      Lookup = True
    end
    object Merchant_ContactsMerchantContactsId: TAutoIncField
      FieldName = 'MerchantContactsId'
      ReadOnly = True
    end
    object Merchant_ContactsMerchantId: TIntegerField
      FieldName = 'MerchantId'
    end
    object Merchant_ContactsContactId: TIntegerField
      FieldName = 'ContactId'
    end
    object Merchant_ContactsContactTypeId: TIntegerField
      FieldName = 'ContactTypeId'
    end
    object Merchant_ContactsMain: TBooleanField
      FieldName = 'Main'
    end
    object Merchant_ContactsAA: TIntegerField
      FieldName = 'AA'
    end
  end
  object dsSITEM: TDataSource
    AutoEdit = False
    DataSet = SITEM
    OnStateChange = dsCountryStateChange
    Left = 248
    Top = 296
  end
  object SITEM: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    MarshalOptions = moMarshalModifiedOnly
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'SITEM'
    Left = 192
    Top = 296
    object SITEMSITEMID: TAutoIncField
      FieldName = 'SITEMID'
      ReadOnly = True
    end
    object SITEMDescr: TWideStringField
      FieldName = 'Descr'
      Size = 50
    end
    object SITEMIGROUPID: TIntegerField
      FieldName = 'IGROUPID'
    end
    object SITEMLIGroupId: TStringField
      FieldKind = fkLookup
      FieldName = 'LIGroupId'
      LookupDataSet = IGROUP
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'IGROUPID'
      Size = 30
      Lookup = True
    end
    object SITEMICLASSID: TIntegerField
      FieldName = 'ICLASSID'
    end
    object SITEMLIClassId: TStringField
      FieldKind = fkLookup
      FieldName = 'LIClassId'
      LookupDataSet = ICLASS
      LookupKeyFields = 'IClassId'
      LookupResultField = 'Descr'
      KeyFields = 'ICLASSID'
      Size = 30
      Lookup = True
    end
    object SITEMPososto: TFloatField
      FieldName = 'Pososto'
    end
    object SITEMCODEINTERMINAL: TIntegerField
      FieldName = 'CODEINTERMINAL'
    end
    object SITEMMINPRICE: TFloatField
      FieldName = 'MINPRICE'
    end
    object SITEMMAXPRICE: TFloatField
      FieldName = 'MAXPRICE'
    end
    object SITEMCHECKPRICE: TBooleanField
      FieldName = 'CHECKPRICE'
    end
    object SITEMInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object SITEMInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object SITEMUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object SITEMUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object SITEMDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object SITEMDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object SITEMDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object SITEMInActive: TBooleanField
      FieldName = 'InActive'
    end
    object SITEMInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object SITEMInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object dsSITEMDISCOUNT: TDataSource
    AutoEdit = False
    DataSet = SITEMDISCOUNT
    OnStateChange = dsCountryStateChange
    Left = 248
    Top = 360
  end
  object SITEMDISCOUNT: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    MarshalOptions = moMarshalModifiedOnly
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'SITEMDISCOUNT'
    Left = 192
    Top = 360
    object SITEMDISCOUNTID: TIntegerField
      FieldName = 'ID'
    end
    object SITEMDISCOUNTSITEMID: TAutoIncField
      FieldName = 'SITEMID'
      ReadOnly = True
    end
    object SITEMDISCOUNTLSitemId: TStringField
      FieldKind = fkLookup
      FieldName = 'LSitemId'
      LookupDataSet = SITEM
      LookupKeyFields = 'SITEMID'
      LookupResultField = 'Descr'
      KeyFields = 'SITEMID'
      Lookup = True
    end
    object SITEMDISCOUNTCustomerID: TIntegerField
      FieldName = 'CustomerID'
    end
    object SITEMDISCOUNTLCustomer: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustomer'
      LookupDataSet = DMMain.VCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'NAME'
      KeyFields = 'CustomerID'
      Size = 50
      Lookup = True
    end
    object SITEMDISCOUNTFROMDATE: TDateTimeField
      FieldName = 'FROMDATE'
    end
    object SITEMDISCOUNTDISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
    end
    object SITEMDISCOUNTInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object SITEMDISCOUNTInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object SITEMDISCOUNTUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object SITEMDISCOUNTUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object SITEMDISCOUNTDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object SITEMDISCOUNTDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object SITEMDISCOUNTDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object SITEMDISCOUNTInActive: TBooleanField
      FieldName = 'InActive'
    end
    object SITEMDISCOUNTInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object SITEMDISCOUNTInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object dsContactType: TDataSource
    AutoEdit = False
    DataSet = ContactType
    OnStateChange = dsCountryStateChange
    Left = 410
    Top = 16
  end
  object ContactType: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'ContactType'
    Left = 354
    Top = 16
    object ContactTypeContactTypeId: TAutoIncField
      FieldName = 'ContactTypeId'
      ReadOnly = True
    end
    object ContactTypeContactType_Name: TWideStringField
      FieldName = 'ContactType_Name'
      Size = 50
    end
    object ContactTypeContactType_Procedure: TWideStringField
      FieldName = 'ContactType_Procedure'
      FixedChar = True
      Size = 6
    end
    object ContactTypeInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object ContactTypeInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object ContactTypeUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object ContactTypeUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object ContactTypeDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object ContactTypeDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object ContactTypeDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object ContactTypeInActive: TBooleanField
      FieldName = 'InActive'
    end
    object ContactTypeInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object ContactTypeInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object qryEnhmDlCall: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM EnhmDLCall'
      'Order By ENDLCALLDATE DESC')
    Left = 508
    Top = 24
    object qryEnhmDlCallENDLCALLID: TAutoIncField
      FieldName = 'ENDLCALLID'
      ReadOnly = True
    end
    object qryEnhmDlCallENDLCALLDATE: TDateTimeField
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
  end
  object dtsEnhmDlCall: TDataSource
    AutoEdit = False
    DataSet = qryEnhmDlCall
    Left = 600
    Top = 24
  end
  object qryENHNPECALL: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ENHMPECALL'
      '')
    Left = 508
    Top = 88
    object qryENHNPECALLENPCALLID: TAutoIncField
      FieldName = 'ENPCALLID'
      ReadOnly = True
    end
    object qryENHNPECALLENPCALLDATE: TDateTimeField
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
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ENHMCOCALL'
      '')
    Left = 508
    Top = 152
    object qryENHMCOCALLENCCALLID: TAutoIncField
      FieldName = 'ENCCALLID'
      ReadOnly = True
    end
    object qryENHMCOCALLENCCALLDATE: TDateTimeField
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
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ENHMDISCALL'
      '')
    Left = 508
    Top = 216
    object qryENHMDISCALLENHMDISCALLID: TAutoIncField
      FieldName = 'ENHMDISCALLID'
      ReadOnly = True
    end
    object qryENHMDISCALLENHMDISCALLDATE: TDateTimeField
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
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ENHMSTCALL'
      '')
    Left = 508
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
  object qryTrCallDate: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TrCall'
      '')
    Left = 508
    Top = 344
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
    Left = 600
    Top = 344
  end
  object qryContacts2MSC: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM VContacts_2_MSC'
      '')
    Left = 28
    Top = 424
    object qryContacts2MSCContactsId: TIntegerField
      FieldName = 'Contacts.Id'
    end
    object qryContacts2MSCContactsType: TIntegerField
      FieldName = 'Contacts.Type'
    end
    object qryContacts2MSCContactsType_id: TIntegerField
      FieldName = 'Contacts.Type_id'
    end
    object qryContacts2MSCContactsSurname: TWideStringField
      FieldName = 'Contacts.Surname'
      Size = 50
    end
    object qryContacts2MSCContactsName: TWideStringField
      FieldName = 'Contacts.Name'
      Size = 30
    end
    object qryContacts2MSCContactsemail: TWideStringField
      FieldName = 'Contacts.email'
      Size = 50
    end
    object qryContacts2MSCContactsPhone: TWideStringField
      FieldName = 'Contacts.Phone'
      Size = 45
    end
    object qryContacts2MSCContactsFAX: TWideStringField
      FieldName = 'Contacts.FAX'
      Size = 45
    end
    object qryContacts2MSCContactsMobile: TWideStringField
      FieldName = 'Contacts.Mobile'
      Size = 45
    end
    object qryContacts2MSCContactsSendMail: TBooleanField
      FieldName = 'Contacts.SendMail'
    end
    object qryContacts2MSCContactsSendFax: TBooleanField
      FieldName = 'Contacts.SendFax'
    end
    object qryContacts2MSCContactsSendPrint: TBooleanField
      FieldName = 'Contacts.SendPrint'
    end
    object qryContacts2MSCCUSTOMERCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMER.CUSTOMERID'
    end
    object qryContacts2MSCCUSTOMERNAME: TWideStringField
      FieldName = 'CUSTOMER.NAME'
      Size = 50
    end
    object qryContacts2MSCCUSTOMERSTREET: TWideStringField
      FieldName = 'CUSTOMER.STREET'
      Size = 50
    end
    object qryContacts2MSCCUSTOMERZIP: TWideStringField
      FieldName = 'CUSTOMER.ZIP'
      Size = 50
    end
    object qryContacts2MSCCUSTOMERCITY: TWideStringField
      FieldName = 'CUSTOMER.CITY'
      Size = 50
    end
    object qryContacts2MSCCUSTOMERAFM: TWideStringField
      FieldName = 'CUSTOMER.AFM'
      Size = 15
    end
    object qryContacts2MSCCUSTOMERDOY: TWideStringField
      FieldName = 'CUSTOMER.DOY'
      Size = 50
    end
    object qryContacts2MSCStationStationId: TIntegerField
      FieldName = 'Station.StationId'
    end
    object qryContacts2MSCStationName: TWideStringField
      FieldName = 'Station.Name'
      FixedChar = True
      Size = 100
    end
    object qryContacts2MSCStationStreet: TWideStringField
      FieldName = 'Station.Street'
      Size = 50
    end
    object qryContacts2MSCStationZIP: TWideStringField
      FieldName = 'Station.ZIP'
      Size = 50
    end
    object qryContacts2MSCStationCity: TWideStringField
      FieldName = 'Station.City'
      Size = 50
    end
    object qryContacts2MSCMerchantMerchantId: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object qryContacts2MSCMerchantName: TWideStringField
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object qryContacts2MSCMerchantStreet: TWideStringField
      FieldName = 'Merchant.Street'
      Size = 50
    end
    object qryContacts2MSCMerchantZIP: TWideStringField
      FieldName = 'Merchant.ZIP'
      Size = 50
    end
    object qryContacts2MSCMerchantCity: TWideStringField
      FieldName = 'Merchant.City'
      Size = 50
    end
    object qryContacts2MSCMerchantAFM: TWideStringField
      FieldName = 'Merchant.AFM'
      Size = 15
    end
    object qryContacts2MSCMerchantDOY: TWideStringField
      FieldName = 'Merchant.DOY'
      Size = 50
    end
  end
  object dsContacts2MSC: TDataSource
    AutoEdit = False
    DataSet = qryContacts2MSC
    OnStateChange = dsCountryStateChange
    Left = 104
    Top = 424
  end
  object dtsGarantie: TDataSource
    AutoEdit = False
    DataSet = Garantie
    OnStateChange = dsCountryStateChange
    Left = 410
    Top = 96
  end
  object Garantie: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'Garantie'
    Left = 354
    Top = 96
    object GarantieGarantieId: TAutoIncField
      FieldName = 'GarantieId'
      ReadOnly = True
    end
    object GarantieGarantieName: TWideStringField
      FieldName = 'GarantieName'
      Size = 50
    end
    object GarantieInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object GarantieInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object GarantieUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object GarantieUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object GarantieDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object GarantieDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object GarantieDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object GarantieInActive: TBooleanField
      FieldName = 'InActive'
    end
    object GarantieInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object GarantieInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object dtsSALESMEN: TDataSource
    AutoEdit = False
    DataSet = SALESMEN
    OnStateChange = dsCountryStateChange
    Left = 410
    Top = 176
  end
  object SALESMEN: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'SALESMEN'
    Left = 354
    Top = 176
  end
  object dtsDIAK: TDataSource
    AutoEdit = False
    DataSet = DIAK
    OnStateChange = dsCountryStateChange
    Left = 410
    Top = 240
  end
  object DIAK: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'DIAK'
    Left = 354
    Top = 240
  end
  object qryENHMLOCALL: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ENHMLOCALL'
      '')
    Left = 500
    Top = 408
    object qryENHMLOCALLENHMLOCALLID: TAutoIncField
      FieldName = 'ENHMLOCALLID'
      ReadOnly = True
    end
    object qryENHMLOCALLENHMLOCALLFR: TDateTimeField
      FieldName = 'ENHMLOCALLFR'
    end
    object qryENHMLOCALLENHMLOCALLTO: TDateTimeField
      FieldName = 'ENHMLOCALLTO'
    end
    object qryENHMLOCALLENHMLOCALLIS: TDateTimeField
      FieldName = 'ENHMLOCALLIS'
    end
    object qryENHMLOCALLINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryENHMLOCALLUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryENHMLOCALLINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryENHMLOCALLUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryENHMLOCALLTEXT: TWideStringField
      FieldName = 'TEXT'
      Size = 50
    end
  end
  object dtsENHMLOCALL: TDataSource
    AutoEdit = False
    DataSet = qryENHMLOCALL
    Left = 592
    Top = 408
  end
  object qryENHMEMCALL: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ENHMEMCALL'
      '')
    Left = 500
    Top = 480
    object qryENHMEMCALLENCCALLID: TAutoIncField
      FieldName = 'ENCCALLID'
      ReadOnly = True
    end
    object qryENHMEMCALLCOMPANY: TDateTimeField
      FieldName = 'COMPANY'
    end
    object qryENHMEMCALLPELATESENHMFR: TIntegerField
      FieldName = 'PELATESENHMFR'
    end
    object qryENHMEMCALLINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryENHMEMCALLUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryENHMEMCALLINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryENHMEMCALLUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object dtsENHMEMCALL: TDataSource
    AutoEdit = False
    DataSet = qryENHMEMCALL
    Left = 592
    Top = 480
  end
  object dtsCompanyType: TDataSource
    AutoEdit = False
    DataSet = CompanyType
    OnStateChange = dsCountryStateChange
    Left = 410
    Top = 312
  end
  object CompanyType: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'CompanyType'
    Left = 354
    Top = 312
  end
  object qryAcardGroupMain: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctDynamic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT  *'
      ' FROM AcardGroupMain')
    Left = 212
    Top = 424
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
    CursorType = ctDynamic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT  *'
      ' FROM AcardGroupDetail'
      ''
      '')
    Left = 212
    Top = 488
    object qryAcardGroupDetailAcardGroupId: TIntegerField
      FieldName = 'AcardGroupId'
    end
    object qryAcardGroupDetailAcardId: TIntegerField
      FieldName = 'AcardId'
    end
    object qryAcardGroupDetailLAcardGroupDescr: TStringField
      FieldKind = fkLookup
      FieldName = 'LAcardGroupDescr'
      LookupDataSet = qryAcardGroupMain
      LookupKeyFields = 'AcardGroupId'
      LookupResultField = 'Descr'
      KeyFields = 'AcardGroupId'
      Lookup = True
    end
    object qryAcardGroupDetailLACardCode: TStringField
      FieldKind = fkLookup
      FieldName = 'LACardCode'
      LookupDataSet = qryVAcard
      LookupKeyFields = 'ACARDID'
      LookupResultField = 'AcardCodeFull000'
      KeyFields = 'AcardId'
      Lookup = True
    end
  end
  object dtsAcardGroupMain: TDataSource
    AutoEdit = False
    DataSet = qryAcardGroupMain
    Left = 312
    Top = 424
  end
  object dtsAcardGroupDetail: TDataSource
    AutoEdit = False
    DataSet = qryAcardGroupDetail
    Left = 312
    Top = 488
  end
  object qryVAcard: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT  *'
      ' FROM VACard')
    Left = 404
    Top = 416
    object qryVAcardACARDID: TIntegerField
      FieldName = 'ACARDID'
      ReadOnly = True
    end
    object qryVAcardACARDCODE: TWideStringField
      FieldName = 'ACARDCODE'
      Size = 50
    end
    object qryVAcardCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qryVAcardISSUEDATE: TDateTimeField
      FieldName = 'ISSUEDATE'
    end
    object qryVAcardEXPIREDATE: TDateTimeField
      FieldName = 'EXPIREDATE'
    end
    object qryVAcardMETERBOOLEAN: TBooleanField
      FieldName = 'METERBOOLEAN'
    end
    object qryVAcardPINBOOLEAN: TBooleanField
      FieldName = 'PINBOOLEAN'
    end
    object qryVAcardINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryVAcardUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryVAcardINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryVAcardUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryVAcardSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qryVAcardVTYPEID: TIntegerField
      FieldName = 'VTYPEID'
    end
    object qryVAcardCREATEBOOLEAN: TBooleanField
      FieldName = 'CREATEBOOLEAN'
    end
    object qryVAcardBLACKLISTBOOLEAN: TBooleanField
      FieldName = 'BLACKLISTBOOLEAN'
    end
    object qryVAcardBLACKLISTDATE: TDateTimeField
      FieldName = 'BLACKLISTDATE'
    end
    object qryVAcardBLACKLISTUSR: TIntegerField
      FieldName = 'BLACKLISTUSR'
    end
    object qryVAcardBLACKLISTNOTES: TWideStringField
      FieldName = 'BLACKLISTNOTES'
      Size = 200
    end
    object qryVAcardIGROUPID1: TIntegerField
      FieldName = 'IGROUPID1'
    end
    object qryVAcardIGROUPID2: TIntegerField
      FieldName = 'IGROUPID2'
    end
    object qryVAcardIGROUPID3: TIntegerField
      FieldName = 'IGROUPID3'
    end
    object qryVAcardIGROUPID4: TIntegerField
      FieldName = 'IGROUPID4'
    end
    object qryVAcardDAYAMOUNT: TFloatField
      FieldName = 'DAYAMOUNT'
    end
    object qryVAcardMONTHAMOUNT: TFloatField
      FieldName = 'MONTHAMOUNT'
    end
    object qryVAcardREGNO: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
    object qryVAcardACARDHOLDER: TWideStringField
      FieldName = 'ACARDHOLDER'
      Size = 30
    end
    object qryVAcardISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qryVAcardEXPIREPHDATE: TDateTimeField
      FieldName = 'EXPIREPHDATE'
    end
    object qryVAcardEXPIRELODATE: TDateTimeField
      FieldName = 'EXPIRELODATE'
    end
    object qryVAcardIGROUPID5: TIntegerField
      FieldName = 'IGROUPID5'
    end
    object qryVAcardEMPLOYEESID: TIntegerField
      FieldName = 'EMPLOYEESID'
    end
    object qryVAcardNEWCARDBOOLEAN: TBooleanField
      FieldName = 'NEWCARDBOOLEAN'
    end
    object qryVAcardNEWCARDID: TIntegerField
      FieldName = 'NEWCARDID'
    end
    object qryVAcardCOSTCENTERID: TIntegerField
      FieldName = 'COSTCENTERID'
    end
    object qryVAcardAcardCodeFull: TWideStringField
      FieldName = 'AcardCodeFull'
      ReadOnly = True
      Size = 19
    end
    object qryVAcardPending: TBooleanField
      FieldName = 'Pending'
    end
    object qryVAcardAcardCodeFull000: TWideStringField
      FieldName = 'AcardCodeFull000'
      ReadOnly = True
      Size = 4000
    end
    object qryVAcardCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object qryVAcardACARDCODENUM: TIntegerField
      FieldName = 'ACARDCODENUM'
    end
    object qryVAcardINACTIVEDATE: TDateTimeField
      FieldName = 'INACTIVEDATE'
    end
    object qryVAcardINACTIVEUSR: TIntegerField
      FieldName = 'INACTIVEUSR'
    end
    object qryVAcardINACTIVENOTES: TWideStringField
      FieldName = 'INACTIVENOTES'
      FixedChar = True
      Size = 200
    end
    object qryVAcardIGROUPID6: TIntegerField
      FieldName = 'IGROUPID6'
    end
    object qryVAcardIGROUPID7: TIntegerField
      FieldName = 'IGROUPID7'
    end
    object qryVAcardIGROUPID8: TIntegerField
      FieldName = 'IGROUPID8'
    end
    object qryVAcardIGROUPID9: TIntegerField
      FieldName = 'IGROUPID9'
    end
    object qryVAcardIGROUPID10: TIntegerField
      FieldName = 'IGROUPID10'
    end
  end
  object dtsVAcard: TDataSource
    AutoEdit = False
    DataSet = qryVAcard
    Left = 400
    Top = 472
  end
  object qryAcardRNGroupMain: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT  *'
      ' FROM AcardRNGroupMain')
    Left = 212
    Top = 552
    object qryAcardRNGroupMainAcardRNGroupId: TAutoIncField
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
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT  *'
      ' FROM AcardRNGroupDetail'
      ''
      '')
    Left = 212
    Top = 616
    object qryAcardRNGroupDetailAcardRGGroupId: TIntegerField
      FieldName = 'AcardRGGroupId'
    end
    object qryAcardRNGroupDetailRegNo: TWideStringField
      FieldName = 'RegNo'
      FixedChar = True
      Size = 50
    end
    object qryAcardRNGroupDetailLAcardRNGroupDescr: TStringField
      FieldKind = fkLookup
      FieldName = 'LAcardRNGroupDescr'
      LookupDataSet = qryAcardRNGroupMain
      LookupKeyFields = 'AcardRNGroupId'
      LookupResultField = 'Descr'
      KeyFields = 'AcardRGGroupId'
      Size = 40
      Lookup = True
    end
  end
  object dtsAcardRNGroupMain: TDataSource
    AutoEdit = False
    DataSet = qryAcardRNGroupMain
    Left = 312
    Top = 552
  end
  object dtsAcardRNGroupDetail: TDataSource
    AutoEdit = False
    DataSet = qryAcardRNGroupDetail
    Left = 312
    Top = 616
  end
  object qryACardRNGroupView: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT  *'
      ' FROM V_ACardRNGroup')
    Left = 468
    Top = 576
    object qryACardRNGroupViewACARDACARDID: TIntegerField
      FieldName = 'ACARD.ACARDID'
    end
    object qryACardRNGroupViewAcardRNGroupMainDescr: TWideStringField
      FieldName = 'AcardRNGroupMain.Descr'
      Size = 50
    end
    object qryACardRNGroupViewACARDACARDCODE: TWideStringField
      FieldName = 'ACARD.ACARDCODE'
      Size = 50
    end
    object qryACardRNGroupViewACARDEXPIREDATE: TDateTimeField
      FieldName = 'ACARD.EXPIREDATE'
    end
    object qryACardRNGroupViewACARDBLACKLISTBOOLEAN: TBooleanField
      FieldName = 'ACARD.BLACKLISTBOOLEAN'
    end
    object qryACardRNGroupViewACARDDAYAMOUNT: TFloatField
      FieldName = 'ACARD.DAYAMOUNT'
    end
    object qryACardRNGroupViewACARDMONTHAMOUNT: TFloatField
      FieldName = 'ACARD.MONTHAMOUNT'
    end
    object qryACardRNGroupViewACARDACARDHOLDER: TWideStringField
      FieldName = 'ACARD.ACARDHOLDER'
      Size = 30
    end
    object qryACardRNGroupViewACARDISACTIVE: TBooleanField
      FieldName = 'ACARD.ISACTIVE'
    end
    object qryACardRNGroupViewACARDEMPLOYEESID: TIntegerField
      FieldName = 'ACARD.EMPLOYEESID'
    end
    object qryACardRNGroupViewAcardRNGroupMainAcardRNGroupId: TIntegerField
      FieldName = 'AcardRNGroupMain.AcardRNGroupId'
    end
    object qryACardRNGroupViewAcardRNGroupDetailRegNo: TWideStringField
      FieldName = 'AcardRNGroupDetail.RegNo'
      FixedChar = True
      Size = 50
    end
    object qryACardRNGroupViewAcardRNGroupDetailAcardRGGroupId: TIntegerField
      FieldName = 'AcardRNGroupDetail.AcardRGGroupId'
    end
    object qryACardRNGroupViewAcardAcardCodeFull: TWideStringField
      FieldName = 'Acard.AcardCodeFull'
      ReadOnly = True
      Size = 19
    end
  end
  object dtsACardRNGroupView: TDataSource
    AutoEdit = False
    DataSet = qryACardRNGroupView
    Left = 592
    Top = 576
  end
  object qryMSTOuter: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM V_ContactInfo_Stations')
    Left = 32
    Top = 496
    object qryMSTOuterMerchantName: TWideStringField
      DisplayLabel = #928#961#945#964#942#961#953#959
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object qryMSTOuterStationStreet: TWideStringField
      DisplayLabel = #927#948#972#962
      FieldName = 'Station.Street'
      Size = 50
    end
    object qryMSTOuterStationCity: TWideStringField
      DisplayLabel = #928#972#955#951
      FieldName = 'Station.City'
      Size = 50
    end
    object qryMSTOuterStationZIP: TWideStringField
      DisplayLabel = #932#922
      FieldName = 'Station.ZIP'
      Size = 50
    end
    object qryMSTOuterPhone: TWideStringField
      DisplayLabel = #932#951#955'.'
      FieldName = 'Phone'
      Size = 45
    end
    object qryMSTOuterFax: TWideStringField
      DisplayLabel = 'FAX'
      FieldName = 'Fax'
      Size = 45
    end
    object qryMSTOuterTerminalidTerminalCode: TWideStringField
      DisplayLabel = 'Terminal '#921'D'
      FieldName = 'Terminalid.TerminalCode'
    end
  end
  object dtsMSTOuter: TDataSource
    AutoEdit = False
    DataSet = qryMSTOuter
    OnStateChange = dsCountryStateChange
    Left = 104
    Top = 496
  end
  object qryView_2Contacts2: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM View_2Contacts2'
      '  Where FromWhere0 is Null')
    Left = 32
    Top = 576
    object qryView_2Contacts2ConParid: TIntegerField
      FieldName = 'ConParid'
    end
    object qryView_2Contacts2ParId: TIntegerField
      FieldName = 'ParId'
    end
    object qryView_2Contacts2ContactId: TIntegerField
      FieldName = 'ContactId'
    end
    object qryView_2Contacts2FromWhere: TIntegerField
      FieldName = 'FromWhere'
      ReadOnly = True
    end
    object qryView_2Contacts2FromWhere0: TIntegerField
      FieldName = 'FromWhere0'
      ReadOnly = True
    end
    object qryView_2Contacts2Name: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object qryView_2Contacts2Surname: TWideStringField
      FieldName = 'Surname'
      Size = 50
    end
    object qryView_2Contacts2email: TWideStringField
      FieldName = 'email'
      Size = 80
    end
    object qryView_2Contacts2Phone: TWideStringField
      FieldName = 'Phone'
      Size = 45
    end
    object qryView_2Contacts2Fax: TWideStringField
      FieldName = 'Fax'
      Size = 45
    end
    object qryView_2Contacts2Mobile: TWideStringField
      FieldName = 'Mobile'
      Size = 45
    end
    object qryView_2Contacts2Name0: TWideStringField
      FieldName = 'Name0'
      Size = 100
    end
    object qryView_2Contacts2CUSTOMERID0: TIntegerField
      FieldName = 'CUSTOMERID0'
    end
  end
  object dtsView_2Contacts2: TDataSource
    AutoEdit = False
    DataSet = qryView_2Contacts2
    OnStateChange = dsCountryStateChange
    Left = 104
    Top = 576
  end
end
