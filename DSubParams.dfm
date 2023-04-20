inherited DMSubParams: TDMSubParams
  OldCreateOrder = True
  OnCreate = DMSubParamsCreate
  Height = 517
  Width = 742
  object qryCompany: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Company')
    Left = 32
    Top = 32
    object qryCompanyid: TIntegerField
      FieldName = 'id'
    end
    object qryCompanyName: TWideStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
    object qryCompanyComments: TWideStringField
      FieldName = 'Comments'
      FixedChar = True
      Size = 150
    end
    object qryCompanyFriendCompany: TBooleanField
      FieldName = 'FriendCompany'
    end
    object qryCompanySpecialCom: TBooleanField
      FieldName = 'SpecialCom'
    end
    object qryCompanySpecialCom1: TBooleanField
      FieldName = 'SpecialCom1'
    end
    object qryCompanyPhoName: TWideStringField
      FieldName = 'PhoName'
      Size = 50
    end
    object qryCompanyAutoCreate: TBooleanField
      FieldName = 'AutoCreate'
    end
    object qryCompanyAutoCreateSource: TIntegerField
      FieldName = 'AutoCreateSource'
    end
  end
  object dsCompany: TDataSource
    AutoEdit = False
    DataSet = qryCompany
    OnStateChange = dsCountryStateChange
    Left = 104
    Top = 32
  end
  object qryDrivers: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM Drivers')
    Left = 32
    Top = 96
    object qryDriversid: TIntegerField
      FieldName = 'id'
    end
    object qryDriversName: TWideStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
    object qryDriversCompanyId: TIntegerField
      FieldName = 'CompanyId'
    end
    object qryDriversComments: TWideStringField
      FieldName = 'Comments'
      FixedChar = True
      Size = 150
    end
    object qryDriversPhoName: TWideStringField
      FieldName = 'PhoName'
      Size = 50
    end
    object qryDriversAutoCreate: TBooleanField
      FieldName = 'AutoCreate'
    end
    object qryDriversAutoCreateSource: TIntegerField
      FieldName = 'AutoCreateSource'
    end
    object qryDriversLCompany: TStringField
      FieldKind = fkLookup
      FieldName = 'LCompany'
      LookupDataSet = CompanyFriend
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'CompanyId'
      Lookup = True
    end
  end
  object dsDrivers: TDataSource
    AutoEdit = False
    DataSet = qryDrivers
    OnStateChange = dsCountryStateChange
    Left = 104
    Top = 96
  end
  object qryCars: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM Cars')
    Left = 32
    Top = 168
    object qryCarsid: TIntegerField
      FieldName = 'id'
    end
    object qryCarsRegNo: TWideStringField
      DisplayLabel = #913#961'.'#922#965#954#955'.'
      FieldName = 'RegNo'
      OnGetText = qryCarsRegNoGetText
      OnSetText = qryCarsRegNoSetText
      FixedChar = True
    end
    object qryCarsLCompany: TStringField
      DisplayLabel = #917#964#945#953#961#949#943#945
      FieldKind = fkLookup
      FieldName = 'LCompany'
      LookupDataSet = CompanyFriend
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'CompanyId'
      Lookup = True
    end
    object qryCarsCapacity: TBCDField
      DisplayLabel = #922#945#952#945#961#972
      FieldName = 'Capacity'
      Precision = 18
      Size = 0
    end
    object qryCarsGross: TBCDField
      DisplayLabel = #924#953#954#964#972
      FieldName = 'Gross'
      Precision = 18
      Size = 0
    end
    object qryCarsTrustPeriod: TIntegerField
      DisplayLabel = #916#953#945#963#964#951#956#945' '#949#956#960#953#963#964#959#963#973#957#951#962
      FieldName = 'TrustPeriod'
    end
    object qryCarsComments: TWideStringField
      DisplayLabel = #931#967#972#955#953#945
      FieldName = 'Comments'
      Size = 200
    end
    object qryCarsCompany: TWideStringField
      FieldName = 'Company'
      Visible = False
      FixedChar = True
      Size = 50
    end
    object qryCarsCompanyId: TIntegerField
      FieldName = 'CompanyId'
      Visible = False
    end
  end
  object dsCars: TDataSource
    AutoEdit = False
    DataSet = qryCars
    OnStateChange = dsCountryStateChange
    Left = 104
    Top = 168
  end
  object qryProducts: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM Products')
    Left = 32
    Top = 232
    object qryProductsid: TIntegerField
      FieldName = 'id'
    end
    object qryProductsName: TWideStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
    object qryProductsComments: TWideStringField
      FieldName = 'Comments'
      FixedChar = True
      Size = 150
    end
    object qryProductsPhoName: TWideStringField
      FieldName = 'PhoName'
      Size = 50
    end
  end
  object dsProducts: TDataSource
    AutoEdit = False
    DataSet = qryProducts
    OnStateChange = dsCountryStateChange
    Left = 104
    Top = 232
  end
  object qryContacts: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [Contacts]')
    Left = 32
    Top = 304
    object qryContactsid: TIntegerField
      FieldName = 'id'
    end
    object qryContactsName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object qryContactsPhone: TWideStringField
      FieldName = 'Phone'
      Size = 30
    end
    object qryContactsPhoName: TWideStringField
      FieldName = 'PhoName'
      Size = 50
    end
  end
  object dsContacts: TDataSource
    AutoEdit = False
    DataSet = qryContacts
    OnStateChange = dsCountryStateChange
    Left = 104
    Top = 304
  end
  object qryPersons: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [Persons]')
    Left = 32
    Top = 376
    object qryPersonsId: TIntegerField
      FieldName = 'Id'
    end
    object qryPersonsPerson: TWideStringField
      FieldName = 'Person'
      Size = 50
    end
    object qryPersonsCompany: TWideStringField
      FieldName = 'Company'
      Size = 50
    end
    object qryPersonsIdentityNo: TWideStringField
      FieldName = 'IdentityNo'
      Size = 50
    end
    object qryPersonsPhoPerson: TWideStringField
      FieldName = 'PhoPerson'
      Size = 50
    end
    object qryPersonsPhoCompany: TWideStringField
      FieldName = 'PhoCompany'
      Size = 50
    end
    object qryPersonsPhoIdentityNo: TWideStringField
      FieldName = 'PhoIdentityNo'
      Size = 50
    end
  end
  object dsPersons: TDataSource
    AutoEdit = False
    DataSet = qryPersons
    OnStateChange = dsCountryStateChange
    Left = 104
    Top = 376
  end
  object qryDriversOther: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [DriversOther]')
    Left = 280
    Top = 32
    object qryDriversOtherid: TIntegerField
      FieldName = 'id'
    end
    object qryDriversOtherName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object qryDriversOtherLCompany: TStringField
      FieldKind = fkLookup
      FieldName = 'LCompany'
      LookupDataSet = CompanyOther
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'CompanyId'
      Lookup = True
    end
    object qryDriversOtherCompanyId: TIntegerField
      FieldName = 'CompanyId'
    end
    object qryDriversOtherComments: TWideStringField
      FieldName = 'Comments'
      Size = 150
    end
    object qryDriversOtherPhoName: TWideStringField
      FieldName = 'PhoName'
      Size = 50
    end
    object qryDriversOtherAutoCreate: TBooleanField
      FieldName = 'AutoCreate'
    end
    object qryDriversOtherAutoCreateSource: TIntegerField
      FieldName = 'AutoCreateSource'
    end
  end
  object dsDriversOther: TDataSource
    AutoEdit = False
    DataSet = qryDriversOther
    OnStateChange = dsCountryStateChange
    Left = 368
    Top = 32
  end
  object qryCarsOther: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [CarsOther]')
    Left = 280
    Top = 104
    object qryCarsOtherid: TIntegerField
      FieldName = 'id'
    end
    object qryCarsOtherRegNo: TWideStringField
      FieldName = 'RegNo'
      Size = 10
    end
    object qryCarsOtherLCompany: TStringField
      FieldKind = fkLookup
      FieldName = 'LCompany'
      LookupDataSet = CompanyOther
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'CompanyId'
      Lookup = True
    end
    object qryCarsOtherCompanyId: TIntegerField
      FieldName = 'CompanyId'
    end
    object qryCarsOtherComments: TWideStringField
      FieldName = 'Comments'
      Size = 200
    end
  end
  object dsCarsOther: TDataSource
    AutoEdit = False
    DataSet = qryCarsOther
    OnStateChange = dsCountryStateChange
    Left = 376
    Top = 104
  end
  object qrySpecTank: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [SpecTank]')
    Left = 32
    Top = 440
    object qrySpecTankid: TIntegerField
      FieldName = 'id'
    end
    object qrySpecTankSpName: TWideStringField
      FieldName = 'SpName'
      Size = 50
    end
    object qrySpecTankCompId: TIntegerField
      FieldName = 'CompId'
    end
  end
  object dsSpecTank: TDataSource
    AutoEdit = False
    DataSet = qrySpecTank
    OnStateChange = dsCountryStateChange
    Left = 112
    Top = 440
  end
  object CompanyFriend: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Company'
      'WHERE [FriendCompany] = 1')
    Left = 268
    Top = 228
    object CompanyFriendid: TIntegerField
      FieldName = 'id'
    end
    object CompanyFriendName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object CompanyFriendComments: TWideStringField
      FieldName = 'Comments'
      Size = 150
    end
    object CompanyFriendFriendCompany: TBooleanField
      FieldName = 'FriendCompany'
    end
    object CompanyFriendSpecialCom: TBooleanField
      FieldName = 'SpecialCom'
    end
    object CompanyFriendSpecialCom1: TBooleanField
      FieldName = 'SpecialCom1'
    end
    object CompanyFriendPhoName: TWideStringField
      FieldName = 'PhoName'
      Size = 50
    end
    object CompanyFriendAutoCreate: TBooleanField
      FieldName = 'AutoCreate'
    end
    object CompanyFriendAutoCreateSource: TIntegerField
      FieldName = 'AutoCreateSource'
    end
  end
  object CompanyOther: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Company'
      'WHERE [FriendCompany] = 0')
    Left = 268
    Top = 300
    object IntegerField1: TIntegerField
      FieldName = 'id'
    end
    object WideStringField1: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object WideStringField2: TWideStringField
      FieldName = 'Comments'
      Size = 150
    end
    object BooleanField1: TBooleanField
      FieldName = 'FriendCompany'
    end
    object BooleanField2: TBooleanField
      FieldName = 'SpecialCom'
    end
    object BooleanField3: TBooleanField
      FieldName = 'SpecialCom1'
    end
    object WideStringField3: TWideStringField
      FieldName = 'PhoName'
      Size = 50
    end
    object BooleanField4: TBooleanField
      FieldName = 'AutoCreate'
    end
    object IntegerField2: TIntegerField
      FieldName = 'AutoCreateSource'
    end
  end
  object dsCompanyFriend: TDataSource
    AutoEdit = False
    DataSet = CompanyFriend
    OnStateChange = dsCountryStateChange
    Left = 380
    Top = 228
  end
  object dsCompanyOther: TDataSource
    AutoEdit = False
    DataSet = CompanyOther
    OnStateChange = dsCountryStateChange
    Left = 380
    Top = 300
  end
  object qryLogonMonitor: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [LogonMonitor]'
      'ORDER BY [LogOnDT] DESC')
    Left = 528
    Top = 104
    object qryLogonMonitorid: TIntegerField
      FieldName = 'id'
    end
    object qryLogonMonitorUserId: TIntegerField
      FieldName = 'UserId'
    end
    object qryLogonMonitorMacAddr: TWideStringField
      FieldName = 'MacAddr'
      FixedChar = True
      Size = 30
    end
    object qryLogonMonitorIPV4Addr: TWideStringField
      FieldName = 'IPV4Addr'
      FixedChar = True
      Size = 15
    end
    object qryLogonMonitorIPV6Addr: TWideStringField
      FieldName = 'IPV6Addr'
      FixedChar = True
      Size = 10
    end
    object qryLogonMonitorComputerName: TWideStringField
      FieldName = 'ComputerName'
      FixedChar = True
      Size = 50
    end
    object qryLogonMonitorWindowsUserName: TWideStringField
      FieldName = 'WindowsUserName'
      FixedChar = True
      Size = 50
    end
    object qryLogonMonitorLogonDT: TDateTimeField
      FieldName = 'LogonDT'
    end
    object qryLogonMonitorLogOffDT: TDateTimeField
      FieldName = 'LogOffDT'
    end
    object qryLogonMonitorFileVersion: TWideStringField
      FieldName = 'FileVersion'
      FixedChar = True
      Size = 10
    end
  end
  object dsLogonMonitor: TDataSource
    AutoEdit = False
    DataSet = qryLogonMonitor
    OnStateChange = dsCountryStateChange
    Left = 600
    Top = 104
  end
  object qryDailyReport: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    OnCalcFields = qryDailyReportCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM DailyReport'
      'ORDER BY RepDate Desc, AA Desc')
    Left = 284
    Top = 392
    object qryDailyReportid: TIntegerField
      FieldName = 'id'
    end
    object qryDailyReportRepDate: TDateTimeField
      FieldName = 'RepDate'
      DisplayFormat = 'c '
    end
    object qryDailyReportAA: TIntegerField
      FieldName = 'AA'
    end
    object qryDailyReportInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryDailyReportInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryDailyReportInUsr: TIntegerField
      FieldName = 'InUsr'
    end
    object qryDailyReportRepText: TBlobField
      FieldName = 'RepText'
    end
    object qryDailyReportRepTextNoRich: TStringField
      FieldKind = fkCalculated
      FieldName = 'RepTextNoRich'
      Size = 80
      Calculated = True
    end
  end
  object dtsDailyReport: TDataSource
    AutoEdit = False
    DataSet = qryDailyReport
    OnStateChange = dsCountryStateChange
    Left = 356
    Top = 392
  end
  object qryDepartments: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Departments')
    Left = 524
    Top = 200
    object qryDepartmentsid: TIntegerField
      FieldName = 'id'
    end
    object qryDepartmentsName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object dtsDepartments: TDataSource
    AutoEdit = False
    DataSet = qryDepartments
    Left = 632
    Top = 200
  end
  object qryForemen: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Foremen')
    Left = 524
    Top = 272
    object IntegerField3: TIntegerField
      FieldName = 'id'
    end
    object WideStringField4: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object dtsForemen: TDataSource
    AutoEdit = False
    DataSet = qryForemen
    Left = 632
    Top = 272
  end
  object qryDepartment_Foremen: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Department_Foremen')
    Left = 524
    Top = 344
    object IntegerField4: TIntegerField
      FieldName = 'id'
    end
    object WideStringField5: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object drsDepartment_Foremen: TDataSource
    AutoEdit = False
    DataSet = qryDepartment_Foremen
    Left = 632
    Top = 344
  end
end
