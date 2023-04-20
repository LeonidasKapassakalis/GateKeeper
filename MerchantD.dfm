object MerchantDM: TMerchantDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 548
  Width = 794
  object qryBrowser: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM MERCHANT')
    Left = 40
    Top = 16
    object qryBrowserMerchantId: TIntegerField
      FieldName = 'MerchantId'
      Visible = False
    end
    object qryBrowserName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object qryBrowserStreet: TWideStringField
      FieldName = 'Street'
      Size = 50
    end
    object qryBrowserZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryBrowserCity: TWideStringField
      FieldName = 'City'
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
    object qryBrowserInsUsr: TIntegerField
      FieldName = 'InsUsr'
      Visible = False
    end
    object qryBrowserInsDT: TDateTimeField
      FieldName = 'InsDT'
      Visible = False
    end
    object qryBrowserUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
      Visible = False
    end
    object qryBrowserUpdDT: TDateTimeField
      FieldName = 'UpdDT'
      Visible = False
    end
    object qryBrowserDeleted: TBooleanField
      FieldName = 'Deleted'
      Visible = False
    end
    object qryBrowserDelUsr: TIntegerField
      FieldName = 'DelUsr'
      Visible = False
    end
    object qryBrowserDelDT: TDateTimeField
      FieldName = 'DelDT'
      Visible = False
    end
    object qryBrowserInActive: TBooleanField
      FieldName = 'InActive'
      Visible = False
    end
    object qryBrowserInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
      Visible = False
    end
    object qryBrowserInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
      Visible = False
    end
    object qryBrowserMerchantCode: TWideStringField
      FieldName = 'MerchantCode'
      Size = 50
    end
    object qryBrowserSalesMenId: TIntegerField
      FieldName = 'SalesMenId'
    end
    object qryBrowserSAPCODE: TWideStringField
      FieldName = 'SAPCODE'
      Size = 10
    end
    object qryBrowserAreaId: TIntegerField
      FieldName = 'AreaId'
    end
    object qryBrowserISTEST: TBooleanField
      FieldName = 'ISTEST'
    end
    object qryBrowserStopSales: TBooleanField
      FieldName = 'StopSales'
    end
    object qryBrowserStopSalesUsr: TIntegerField
      FieldName = 'StopSalesUsr'
      Visible = False
    end
    object qryBrowserStopSalesDt: TDateTimeField
      FieldName = 'StopSalesDt'
      Visible = False
    end
  end
  object dtsBrowser: TDataSource
    AutoEdit = False
    DataSet = qryBrowser
    Left = 184
    Top = 16
  end
  object qryMerchant: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = qryMerchantBeforePost
    AfterPost = qryMerchantAfterPost
    OnNewRecord = qryMerchantNewRecord
    DataSource = dtsBrowser
    Parameters = <
      item
        Name = 'MerchantId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM MERCHANT'
      'WHERE MerchantID = :MerchantId')
    Left = 40
    Top = 88
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
    object qryMerchantBranchId: TIntegerField
      FieldName = 'BranchId'
    end
    object qryMerchantIGroupId1: TIntegerField
      FieldName = 'IGroupId1'
      OnValidate = qryMerchantIGroupId10Validate
    end
    object qryMerchantPososto1: TFloatField
      FieldName = 'Pososto1'
      DisplayFormat = '#0.00 %'
    end
    object qryMerchantIGroupId2: TIntegerField
      FieldName = 'IGroupId2'
      OnValidate = qryMerchantIGroupId10Validate
    end
    object qryMerchantPososto2: TFloatField
      FieldName = 'Pososto2'
      DisplayFormat = '#0.00 %'
    end
    object qryMerchantIGroupId3: TIntegerField
      FieldName = 'IGroupId3'
      OnValidate = qryMerchantIGroupId10Validate
    end
    object qryMerchantPososto3: TFloatField
      FieldName = 'Pososto3'
      DisplayFormat = '#0.00 %'
    end
    object qryMerchantIGroupId4: TIntegerField
      FieldName = 'IGroupId4'
      OnValidate = qryMerchantIGroupId10Validate
    end
    object qryMerchantPososto4: TFloatField
      FieldName = 'Pososto4'
      DisplayFormat = '#0.00 %'
    end
    object qryMerchantIGroupId5: TIntegerField
      FieldName = 'IGroupId5'
      OnValidate = qryMerchantIGroupId10Validate
    end
    object qryMerchantPososto5: TFloatField
      FieldName = 'Pososto5'
      DisplayFormat = '#0.00 %'
    end
    object qryMerchantIGroupId6: TIntegerField
      FieldName = 'IGroupId6'
      OnValidate = qryMerchantIGroupId10Validate
    end
    object qryMerchantPososto6: TFloatField
      FieldName = 'Pososto6'
      DisplayFormat = '#0.00 %'
    end
    object qryMerchantIGroupId7: TIntegerField
      FieldName = 'IGroupId7'
      OnValidate = qryMerchantIGroupId10Validate
    end
    object qryMerchantPososto7: TFloatField
      FieldName = 'Pososto7'
      DisplayFormat = '#0.00 %'
    end
    object qryMerchantIGroupId8: TIntegerField
      FieldName = 'IGroupId8'
      OnValidate = qryMerchantIGroupId10Validate
    end
    object qryMerchantPososto8: TFloatField
      FieldName = 'Pososto8'
      DisplayFormat = '#0.00 %'
    end
    object qryMerchantIGroupId9: TIntegerField
      FieldName = 'IGroupId9'
      OnValidate = qryMerchantIGroupId10Validate
    end
    object qryMerchantPososto9: TFloatField
      FieldName = 'Pososto9'
      DisplayFormat = '#0.00 %'
    end
    object qryMerchantIGroupId10: TIntegerField
      FieldName = 'IGroupId10'
      OnValidate = qryMerchantIGroupId10Validate
    end
    object qryMerchantPososto10: TFloatField
      FieldName = 'Pososto10'
      DisplayFormat = '#0.00 %'
    end
  end
  object dtsMerchant: TDataSource
    AutoEdit = False
    DataSet = qryMerchant
    OnStateChange = dtsMerchantStateChange
    Left = 184
    Top = 88
  end
  object qryMerchant_Station: TADOQuery
    Tag = 210
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    AfterInsert = qryMerchant_StationAfterInsert
    DataSource = dtsMerchant
    Parameters = <
      item
        Name = 'MerchantId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM Merchant_Station'
      'Where MerchantId = :MerchantId')
    Left = 48
    Top = 232
    object qryMerchant_StationMerchantStationId: TAutoIncField
      FieldName = 'MerchantStationId'
      ReadOnly = True
      Visible = False
    end
    object qryMerchant_StationMerchantId: TIntegerField
      FieldName = 'MerchantId'
      Visible = False
    end
    object qryMerchant_StationStationid: TIntegerField
      FieldName = 'Stationid'
      Visible = False
    end
    object qryMerchant_StationLStation: TStringField
      FieldKind = fkLookup
      FieldName = 'LStation'
      LookupDataSet = qryStation
      LookupKeyFields = 'Stationid'
      LookupResultField = 'Name'
      KeyFields = 'Stationid'
      Size = 80
      Lookup = True
    end
  end
  object qryStation: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Station')
    Left = 480
    Top = 224
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
    object qryStationIsTest: TBooleanField
      FieldName = 'IsTest'
    end
    object qryStationIsTestUsr: TIntegerField
      FieldName = 'IsTestUsr'
    end
    object qryStationIsTestDt: TDateTimeField
      FieldName = 'IsTestDt'
    end
    object qryStationEndPending: TBooleanField
      FieldName = 'EndPending'
    end
    object qryStationEndPendingDT: TDateTimeField
      FieldName = 'EndPendingDT'
    end
    object qryStationEndPendingUsr: TIntegerField
      FieldName = 'EndPendingUsr'
    end
  end
  object dtsMerchant_Station: TDataSource
    AutoEdit = False
    DataSet = qryMerchant_Station
    OnStateChange = dtsMerchant_StationStateChange
    Left = 184
    Top = 232
  end
  object dtsStation: TDataSource
    DataSet = qryStation
    Left = 568
    Top = 224
  end
  object dtsMerchant_Contacts: TDataSource
    AutoEdit = False
    DataSet = qryMerchant_Contacts
    OnStateChange = dtsMerchant_StationStateChange
    Left = 184
    Top = 160
  end
  object qryMerchant_Contacts: TADOQuery
    Tag = 210
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    AfterInsert = qryMerchant_ContactsAfterInsert
    DataSource = dtsMerchant
    Parameters = <
      item
        Name = 'MerchantId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      '  FROM Merchant_Contacts'
      '  Where MerchantId = :MerchantId '
      '')
    Left = 48
    Top = 160
    object qryMerchant_ContactsLCont: TStringField
      FieldKind = fkLookup
      FieldName = 'LCont'
      LookupDataSet = qryContacts
      LookupKeyFields = 'id'
      LookupResultField = 'Surname'
      KeyFields = 'Contactid'
      Visible = False
      Lookup = True
    end
    object qryMerchant_ContactsLResr: TStringField
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
    object qryMerchant_ContactsLContactTypeId: TStringField
      FieldKind = fkLookup
      FieldName = 'LContactTypeId'
      LookupDataSet = qryContactType
      LookupKeyFields = 'ContactTypeId'
      LookupResultField = 'ContactType_Name'
      KeyFields = 'ContactTypeId'
      Lookup = True
    end
    object qryMerchant_ContactsMerchantContactsId: TAutoIncField
      FieldName = 'MerchantContactsId'
      ReadOnly = True
      Visible = False
    end
    object qryMerchant_Contactsmerchantid: TIntegerField
      FieldName = 'merchantid'
      Visible = False
    end
    object qryMerchant_ContactsContactid: TIntegerField
      FieldName = 'Contactid'
      Visible = False
    end
    object qryMerchant_ContactsContactTypeId: TIntegerField
      FieldName = 'ContactTypeId'
    end
    object qryMerchant_ContactsMain: TBooleanField
      FieldName = 'Main'
    end
    object qryMerchant_ContactsAA: TIntegerField
      FieldName = 'AA'
    end
    object qryMerchant_ContactsLMail: TStringField
      FieldKind = fkLookup
      FieldName = 'LMail'
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
    OnCalcFields = qryContactsCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Contacts')
    Left = 480
    Top = 296
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
    object qryContactsComments: TMemoField
      FieldName = 'Comments'
      BlobType = ftMemo
    end
  end
  object dtsContacts: TDataSource
    DataSet = qryContacts
    Left = 576
    Top = 288
  end
  object qBranch: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT BranchId, Descr From Branch'
      'Order By Descr')
    Left = 480
    Top = 16
    object qBranchBranchId: TAutoIncField
      FieldName = 'BranchId'
      ReadOnly = True
    end
    object qBranchDescr: TWideStringField
      FieldName = 'Descr'
      Size = 50
    end
  end
  object qSalesMen: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT SALESMENID, Descr  FROM SalesMen'
      'Order by Descr')
    Left = 480
    Top = 80
    object qSalesMenSALESMENID: TAutoIncField
      FieldName = 'SALESMENID'
      ReadOnly = True
    end
    object qSalesMenDescr: TWideStringField
      FieldName = 'Descr'
      Size = 50
    end
  end
  object QTown: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * From QTown'
      'Order by WholeDescr')
    Left = 480
    Top = 152
    object QTownArea00_Name: TWideStringField
      FieldName = 'Area00_Name'
      Size = 50
    end
    object QTownArea01_Name: TWideStringField
      FieldName = 'Area01_Name'
      Size = 50
    end
    object QTownArea02_Name: TWideStringField
      FieldName = 'Area02_Name'
      Size = 50
    end
    object QTownArea03_Name: TWideStringField
      FieldName = 'Area03_Name'
      Size = 50
    end
    object QTownArea02_Id: TIntegerField
      FieldName = 'Area02_Id'
    end
    object QTownArea03_Id: TAutoIncField
      FieldName = 'Area03_Id'
      ReadOnly = True
    end
    object QTownArea01_Id: TIntegerField
      FieldName = 'Area01_Id'
    end
    object QTownArea00_Id: TIntegerField
      FieldName = 'Area00_Id'
    end
    object QTownWholeDescr: TWideStringField
      FieldName = 'WholeDescr'
      ReadOnly = True
      Size = 203
    end
  end
  object dsBranch: TDataSource
    AutoEdit = False
    DataSet = qBranch
    Left = 560
    Top = 16
  end
  object dsSalesMen: TDataSource
    AutoEdit = False
    DataSet = qSalesMen
    Left = 560
    Top = 80
  end
  object dsTown: TDataSource
    AutoEdit = False
    DataSet = QTown
    Left = 560
    Top = 152
  end
  object qryMaxMerchantContactsAA: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsMerchant
    Parameters = <
      item
        Name = 'MerchantId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Max(AA) as Max_AA'
      '  FROM Merchant_Contacts'
      '  Where MerchantId = :MerchantId')
    Left = 304
    Top = 160
    object qryMaxMerchantContactsAAMax_AA: TIntegerField
      FieldName = 'Max_AA'
      ReadOnly = True
    end
  end
  object dsContactType: TDataSource
    AutoEdit = False
    Left = 582
    Top = 352
  end
  object qryContactType: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ContactTypeId, ContactType_Name'
      '  FROM ContactType')
    Left = 480
    Top = 360
    object qryContactTypeContactTypeId: TAutoIncField
      FieldName = 'ContactTypeId'
      ReadOnly = True
    end
    object qryContactTypeContactType_Name: TWideStringField
      FieldName = 'ContactType_Name'
      Size = 50
    end
  end
  object qryIGroup: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Id,Name,BitNo FROM IGroup Where InActive = 0')
    Left = 48
    Top = 312
    object qryIGroupId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qryIGroupName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object qryIGroupBitNo: TIntegerField
      FieldName = 'BitNo'
    end
  end
  object dtsIGroup: TDataSource
    AutoEdit = False
    DataSet = qryIGroup
    Left = 120
    Top = 312
  end
  object qryMaxMerchantCode: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT MAX(MerchantCode) As MaxMerchantCode'
      '  FROM Merchant'
      '  Where MerchantCode like '#39'09000%'#39)
    Left = 216
    Top = 312
    object qryMaxMerchantCodeMaxMerchantCode: TWideStringField
      FieldName = 'MaxMerchantCode'
      ReadOnly = True
      Size = 50
    end
  end
  object qryTerminal: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Terminal')
    Left = 48
    Top = 408
    object qryTerminalTerminalid: TAutoIncField
      FieldName = 'Terminalid'
      ReadOnly = True
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
    object qryTerminalInsDt: TDateTimeField
      FieldName = 'InsDt'
    end
    object qryTerminalUpdDt: TDateTimeField
      FieldName = 'UpdDt'
    end
    object qryTerminalInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryTerminalUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qryTerminalCreateBoolean: TBooleanField
      FieldName = 'CreateBoolean'
    end
    object qryTerminalPending: TBooleanField
      FieldName = 'Pending'
    end
  end
  object qryStation_Terminal: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Station_Terminal')
    Left = 144
    Top = 408
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
  end
  object qryStation_Contacts: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Station_Contacts')
    Left = 256
    Top = 408
    object qryStation_ContactsStationContactId: TAutoIncField
      FieldName = 'StationContactId'
      ReadOnly = True
    end
    object qryStation_ContactsStationId: TIntegerField
      FieldName = 'StationId'
    end
    object qryStation_ContactsContactId: TIntegerField
      FieldName = 'ContactId'
    end
    object qryStation_ContactsContactTypeId: TIntegerField
      FieldName = 'ContactTypeId'
    end
    object qryStation_ContactsMain: TBooleanField
      FieldName = 'Main'
    end
    object qryStation_ContactsAA: TIntegerField
      FieldName = 'AA'
    end
  end
  object qryFindAFM: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
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
      'SELECT MerchantId, Name FROM Merchant'
      'Where AFM = :PAFM')
    Left = 304
    Top = 40
    object qryFindAFMMerchantId: TAutoIncField
      FieldName = 'MerchantId'
      ReadOnly = True
    end
    object qryFindAFMName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
  end
end
