inherited DMSubParams00: TDMSubParams00
  OldCreateOrder = True
  OnCreate = DMSubParamsCreate
  Height = 694
  Width = 742
  object dsContacts: TDataSource
    AutoEdit = False
    DataSet = Contacts
    OnStateChange = dsCountryStateChange
    Left = 136
    Top = 24
  end
  object Contacts: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'Contacts'
    Left = 56
    Top = 24
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
    Left = 144
    Top = 96
  end
  object Merchant_Contacts: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'Merchant_Contacts'
    Left = 56
    Top = 88
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
  object dsContactType: TDataSource
    AutoEdit = False
    DataSet = ContactType
    OnStateChange = dsCountryStateChange
    Left = 186
    Top = 376
  end
  object ContactType: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'ContactType'
    Left = 58
    Top = 376
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
  object qryContacts2MSC: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM VContacts_2_MSC'
      '')
    Left = 60
    Top = 152
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
    Left = 136
    Top = 152
  end
  object qryMSTOuter: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM V_ContactInfo_Stations')
    Left = 64
    Top = 224
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
    Left = 136
    Top = 224
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
    Left = 64
    Top = 304
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
    Left = 192
    Top = 304
  end
  object qryView_2Contacts22: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM View_2Contacts2'
      '')
    Left = 64
    Top = 448
    object IntegerField1: TIntegerField
      FieldName = 'ConParid'
    end
    object IntegerField2: TIntegerField
      FieldName = 'ParId'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ContactId'
    end
    object IntegerField4: TIntegerField
      FieldName = 'FromWhere'
      ReadOnly = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'FromWhere0'
      ReadOnly = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object WideStringField2: TWideStringField
      FieldName = 'Surname'
      Size = 50
    end
    object WideStringField3: TWideStringField
      FieldName = 'email'
      Size = 80
    end
    object WideStringField4: TWideStringField
      FieldName = 'Phone'
      Size = 45
    end
    object WideStringField5: TWideStringField
      FieldName = 'Fax'
      Size = 45
    end
    object WideStringField6: TWideStringField
      FieldName = 'Mobile'
      Size = 45
    end
    object WideStringField7: TWideStringField
      FieldName = 'Name0'
      Size = 100
    end
    object IntegerField6: TIntegerField
      FieldName = 'CUSTOMERID0'
    end
  end
  object dtsView_2Contacts22: TDataSource
    AutoEdit = False
    DataSet = qryView_2Contacts22
    OnStateChange = dsCountryStateChange
    Left = 192
    Top = 448
  end
end
