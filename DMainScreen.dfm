inherited DMMainScreen: TDMMainScreen
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 574
  Width = 772
  object qryBrPersons: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctUnspecified
    OnCalcFields = qryBrPersonsCalcFields
    EnableBCD = False
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT *'
      'FROM [PersonsVisit]'
      'WHERE  (FullFilled = 0)'
      'AND Id Not in (SELECT Id'
      'FROM [VAirLiftVisitors]'
      'WHERE  (FullFilled = 0))'
      'ORDER BY InsDt Desc')
    Left = 32
    Top = 16
    object qryBrPersonsid: TIntegerField
      DisplayWidth = 5
      FieldName = 'id'
    end
    object qryBrPersonsDateIn: TDateField
      DisplayLabel = #919#956#949#961#959#956#951#957#943#945
      FieldKind = fkCalculated
      FieldName = 'DateIn'
      Calculated = True
    end
    object qryBrPersonsName: TWideStringField
      DisplayLabel = #927#957#959#956#945#964#949#960#974#957#965#956#959' '#917#960#953#963#954#941#960#964#951
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
    object qryBrPersonsCompany: TWideStringField
      DisplayLabel = #917#964#945#953#961#949#943#945
      FieldName = 'Company'
      FixedChar = True
      Size = 50
    end
    object qryBrPersonsIdentityNo: TWideStringField
      DisplayLabel = #913#961'.'#932#945#965#964#972#964#951#964#945#962
      FieldName = 'IdentityNo'
      FixedChar = True
      Size = 10
    end
    object qryBrPersonsReason: TWideStringField
      DisplayLabel = #931#954#959#960#972#962
      FieldName = 'Reason'
      FixedChar = True
      Size = 50
    end
    object qryBrPersonsContactWith: TWideStringField
      DisplayLabel = #931#965#957#940#957#964#951#963#951' '#956#949
      FieldName = 'ContactWith'
      FixedChar = True
      Size = 50
    end
    object qryBrPersonsCarNumber: TWideStringField
      DisplayLabel = #913#961#953#952#956'.'#922#965#954#955
      FieldName = 'CarNumber'
      FixedChar = True
      Size = 10
    end
    object qryBrPersonsWithCar: TBooleanField
      FieldName = 'WithCar'
    end
    object qryBrPersonsTimeInS: TStringField
      DisplayLabel = #916#953#940#961#954#949#953#945' '#928#945#961#945#956#959#957#942#962
      FieldKind = fkCalculated
      FieldName = 'TimeInS'
      Size = 40
      Calculated = True
    end
    object qryBrPersonsDateTimeIn: TDateTimeField
      DisplayLabel = #911#961#945' '#917#953#963#972#948#959#965
      FieldName = 'DateTimeIn'
      DisplayFormat = 'h:mm:ss'
    end
    object qryBrPersonsDateTimeOut: TDateTimeField
      FieldName = 'DateTimeOut'
    end
    object qryBrPersonsInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryBrPersonsInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryBrPersonsInUsr: TIntegerField
      FieldName = 'InUsr'
    end
    object qryBrPersonsOutUsr: TIntegerField
      FieldName = 'OutUsr'
    end
    object qryBrPersonsFullFilled: TBooleanField
      FieldName = 'FullFilled'
    end
    object qryBrPersonsFullFilledDT: TDateTimeField
      FieldName = 'FullFilledDT'
    end
    object qryBrPersonsComments: TWideStringField
      FieldName = 'Comments'
      FixedChar = True
      Size = 250
    end
    object qryBrPersonsCardNumber: TWideStringField
      FieldName = 'CardNumber'
      FixedChar = True
      Size = 10
    end
  end
  object dtsBrPersons: TDataSource
    AutoEdit = False
    DataSet = qryBrPersons
    Left = 96
    Top = 16
  end
  object qryBrCarFriend: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctUnspecified
    LockType = ltReadOnly
    OnCalcFields = qryBrCarFriendCalcFields
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT *'
      'FROM [CarsVisitOur]'
      'WHERE  (FullFilled = 0)'
      'ORDER BY InsDt Desc'
      '')
    Left = 32
    Top = 96
    object qryBrCarFriendid: TIntegerField
      DisplayWidth = 5
      FieldName = 'id'
    end
    object qryBrCarFriendTimeInS: TStringField
      DisplayLabel = #916#953#940#961#954#949#953#945' '#928#945#961#945#956#959#957#942#962
      FieldKind = fkCalculated
      FieldName = 'TimeInS'
      Size = 40
      Calculated = True
    end
    object qryBrCarFriendDateIn: TDateField
      DisplayLabel = #919#956#949#961#959#956#951#957#943#945
      FieldKind = fkCalculated
      FieldName = 'DateIn'
      Calculated = True
    end
    object qryBrCarFriendLComp: TStringField
      DisplayLabel = #917#964#945#953#961#949#943#945
      FieldKind = fkLookup
      FieldName = 'LComp'
      LookupDataSet = VL_Company
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'CompanyId'
      Lookup = True
    end
    object qryBrCarFriendLReg: TStringField
      DisplayLabel = #913#961#953#952#956'.'#922#965#954#955
      FieldKind = fkLookup
      FieldName = 'LReg'
      LookupDataSet = VL_RegNo
      LookupKeyFields = 'id'
      LookupResultField = 'RegNo'
      KeyFields = 'RegNoId'
      Lookup = True
    end
    object qryBrCarFriendLDrvName: TStringField
      DisplayLabel = #927#957#959#956#945#964#949#960#974#957#965#956#959' '#927#948#951#947#959#973
      FieldKind = fkLookup
      FieldName = 'LDrvName'
      LookupDataSet = VL_Drivers
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'DrvNameId'
      Size = 40
      Lookup = True
    end
    object qryBrCarFriendLTypeDrom: TStringField
      DisplayLabel = #932#973#960#959#962' '#916#961#959#956'.'
      FieldKind = fkCalculated
      FieldName = 'LTypeDrom'
      Calculated = True
    end
    object qryBrCarFriendRegNoId: TIntegerField
      FieldName = 'RegNoId'
    end
    object qryBrCarFriendProcedureState: TIntegerField
      FieldName = 'ProcedureState'
    end
    object qryBrCarFriendFriendCar: TBooleanField
      FieldName = 'FriendCar'
    end
    object qryBrCarFriendDrvNameId: TIntegerField
      FieldName = 'DrvNameId'
    end
    object qryBrCarFriendCompanyId: TIntegerField
      FieldName = 'CompanyId'
    end
    object qryBrCarFriendDA_Num: TWideStringField
      FieldName = 'DA_Num'
      FixedChar = True
      Size = 10
    end
    object qryBrCarFriendProducts: TWideStringField
      FieldName = 'Products'
      FixedChar = True
      Size = 50
    end
    object qryBrCarFriendWithoutWeight: TBooleanField
      FieldName = 'WithoutWeight'
    end
    object qryBrCarFriendDateTimeIn: TDateTimeField
      DisplayLabel = #911#961#945' '#917#958#972#948#959#965
      FieldName = 'DateTimeIn'
      DisplayFormat = 'h:mm:ss'
    end
    object qryBrCarFriendDateTimeOut: TDateTimeField
      FieldName = 'DateTimeOut'
    end
    object qryBrCarFriendInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryBrCarFriendInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryBrCarFriendInUsr: TIntegerField
      FieldName = 'InUsr'
    end
    object qryBrCarFriendOutUsr: TIntegerField
      FieldName = 'OutUsr'
    end
    object qryBrCarFriendFullFilled: TBooleanField
      FieldName = 'FullFilled'
    end
    object qryBrCarFriendFullFilledDT: TDateTimeField
      FieldName = 'FullFilledDT'
    end
    object qryBrCarFriendComments: TWideStringField
      FieldName = 'Comments'
      FixedChar = True
      Size = 250
    end
  end
  object dtsBrCarFriend: TDataSource
    AutoEdit = False
    DataSet = qryBrCarFriend
    Left = 112
    Top = 96
  end
  object qryBrCarNoFriend: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctUnspecified
    LockType = ltReadOnly
    OnCalcFields = qryBrCarNoFriendCalcFields
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT *'
      'FROM [CarsVisitOther]'
      'WHERE (FullFilled = 0)'
      'ORDER BY InsDt Desc')
    Left = 32
    Top = 184
    object qryBrCarNoFriendid: TIntegerField
      DisplayWidth = 5
      FieldName = 'id'
    end
    object qryBrCarNoFriendDateIn: TDateField
      DisplayLabel = #919#956#949#961#959#956#951#957#943#945
      FieldKind = fkCalculated
      FieldName = 'DateIn'
      Calculated = True
    end
    object qryBrCarNoFriendTimeInS: TStringField
      DisplayLabel = #916#953#940#961#954#949#953#945' '#928#945#961#945#956#959#957#942#962
      FieldKind = fkCalculated
      FieldName = 'TimeInS'
      Size = 40
      Calculated = True
    end
    object qryBrCarNoFriendRegNo: TWideStringField
      DisplayLabel = #913#961#953#952#956'.'#922#965#954#955
      FieldName = 'RegNo'
      FixedChar = True
      Size = 10
    end
    object qryBrCarNoFriendProcedureState: TIntegerField
      FieldName = 'ProcedureState'
    end
    object qryBrCarNoFriendDrvName: TWideStringField
      DisplayLabel = #927#957#959#956#945#964#949#960#974#957#965#956#959' '#927#948#951#947#959#973
      FieldName = 'DrvName'
      FixedChar = True
      Size = 50
    end
    object qryBrCarNoFriendCompany: TWideStringField
      DisplayLabel = #917#964#945#953#961#949#943#945
      FieldName = 'Company'
      FixedChar = True
      Size = 50
    end
    object qryBrCarNoFriendLTypeDrom: TStringField
      DisplayLabel = #932#973#960#959#962' '#916#961#959#956'.'
      FieldKind = fkCalculated
      FieldName = 'LTypeDrom'
      Calculated = True
    end
    object qryBrCarNoFriendCarOwner: TWideStringField
      DisplayLabel = #921#948#953#959#954#964#942#964#951#962
      FieldName = 'CarOwner'
      FixedChar = True
      Size = 50
    end
    object qryBrCarNoFriendDA_Num: TWideStringField
      FieldName = 'DA_Num'
      FixedChar = True
      Size = 10
    end
    object qryBrCarNoFriendProducts: TWideStringField
      FieldName = 'Products'
      FixedChar = True
      Size = 50
    end
    object qryBrCarNoFriendWithoutWeight: TBooleanField
      FieldName = 'WithoutWeight'
    end
    object qryBrCarNoFriendDateTimeIn: TDateTimeField
      DisplayLabel = #911#961#945' '#917#953#963#972#948#959#965
      FieldName = 'DateTimeIn'
      DisplayFormat = 'h:mm:ss'
    end
    object qryBrCarNoFriendDateTimeOut: TDateTimeField
      FieldName = 'DateTimeOut'
    end
    object qryBrCarNoFriendInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryBrCarNoFriendInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryBrCarNoFriendInUsr: TIntegerField
      FieldName = 'InUsr'
    end
    object qryBrCarNoFriendOutUsr: TIntegerField
      FieldName = 'OutUsr'
    end
    object qryBrCarNoFriendFullFilled: TBooleanField
      FieldName = 'FullFilled'
    end
    object qryBrCarNoFriendFullFilledDT: TDateTimeField
      FieldName = 'FullFilledDT'
    end
    object qryBrCarNoFriendFullFilledUsr: TIntegerField
      FieldName = 'FullFilledUsr'
    end
    object qryBrCarNoFriendComments: TWideStringField
      FieldName = 'Comments'
      FixedChar = True
      Size = 250
    end
    object qryBrCarNoFriendCalcWeight: TBCDField
      FieldName = 'CalcWeight'
      Precision = 18
      Size = 0
    end
    object qryBrCarNoFriendNoted: TBooleanField
      FieldName = 'Noted'
    end
  end
  object dtsBrCarNoFriend: TDataSource
    AutoEdit = False
    DataSet = qryBrCarNoFriend
    Left = 112
    Top = 184
  end
  object VL_Drivers: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [Drivers]')
    Left = 464
    Top = 24
    object VL_Driversid: TIntegerField
      FieldName = 'id'
    end
    object VL_DriversName: TWideStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
    object VL_DriversCompanyId: TIntegerField
      FieldName = 'CompanyId'
    end
    object VL_DriversComments: TWideStringField
      FieldName = 'Comments'
      FixedChar = True
      Size = 150
    end
  end
  object VL_Company: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [Company]')
    Left = 464
    Top = 88
    object VL_CompanyName: TWideStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
    object VL_Companyid: TIntegerField
      FieldName = 'id'
    end
    object VL_CompanyComments: TWideStringField
      FieldName = 'Comments'
      FixedChar = True
      Size = 150
    end
    object VL_CompanyFriendCompany: TBooleanField
      FieldName = 'FriendCompany'
    end
    object VL_CompanySpecialCom: TBooleanField
      FieldName = 'SpecialCom'
    end
  end
  object VL_RegNo: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [Cars]')
    Left = 464
    Top = 160
    object VL_RegNoid: TIntegerField
      FieldName = 'id'
    end
    object VL_RegNoCompanyId: TIntegerField
      FieldName = 'CompanyId'
    end
    object VL_RegNoRegNo: TWideStringField
      FieldName = 'RegNo'
      FixedChar = True
      Size = 10
    end
    object VL_RegNoCompany: TWideStringField
      FieldName = 'Company'
      FixedChar = True
      Size = 50
    end
    object VL_RegNoCapacity: TBCDField
      FieldName = 'Capacity'
      Precision = 18
      Size = 0
    end
    object VL_RegNoGross: TBCDField
      FieldName = 'Gross'
      Precision = 18
      Size = 0
    end
    object VL_RegNoTrustPeriod: TIntegerField
      FieldName = 'TrustPeriod'
    end
    object VL_RegNoComments: TWideStringField
      FieldName = 'Comments'
      Size = 200
    end
  end
  object dtsDrivers: TDataSource
    AutoEdit = False
    DataSet = VL_Drivers
    Left = 568
    Top = 24
  end
  object dtsCompany: TDataSource
    AutoEdit = False
    DataSet = VL_Company
    Left = 568
    Top = 88
  end
  object dtsRegNo: TDataSource
    AutoEdit = False
    DataSet = VL_RegNo
    Left = 568
    Top = 160
  end
  object qryAirlift: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryBrPersonsCalcFields
    EnableBCD = False
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT *'
      'FROM [VAirLiftVisitors]'
      'WHERE  (FullFilled = 0)'
      'ORDER BY InsDt Desc'
      '')
    Left = 32
    Top = 268
    object IntegerField9: TIntegerField
      DisplayWidth = 5
      FieldName = 'id'
    end
    object DateField2: TDateField
      DisplayLabel = #919#956#949#961#959#956#951#957#943#945
      FieldKind = fkCalculated
      FieldName = 'DateIn'
      Calculated = True
    end
    object WideStringField4: TWideStringField
      DisplayLabel = #927#957#959#956#945#964#949#960#974#957#965#956#959' '#917#960#953#963#954#941#960#964#951
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
    object WideStringField5: TWideStringField
      DisplayLabel = #917#964#945#953#961#949#943#945
      FieldName = 'Company'
      FixedChar = True
      Size = 50
    end
    object WideStringField6: TWideStringField
      DisplayLabel = #913#961'.'#932#945#965#964#972#964#951#964#945#962
      FieldName = 'IdentityNo'
      FixedChar = True
      Size = 10
    end
    object WideStringField7: TWideStringField
      DisplayLabel = #931#954#959#960#972#962
      FieldName = 'Reason'
      FixedChar = True
      Size = 50
    end
    object WideStringField8: TWideStringField
      DisplayLabel = #931#965#957#940#957#964#951#963#951' '#956#949
      FieldName = 'ContactWith'
      FixedChar = True
      Size = 50
    end
    object WideStringField9: TWideStringField
      DisplayLabel = #913#961#953#952#956'.'#922#965#954#955
      FieldName = 'CarNumber'
      FixedChar = True
      Size = 10
    end
    object BooleanField4: TBooleanField
      FieldName = 'WithCar'
    end
    object StringField6: TStringField
      DisplayLabel = #916#953#940#961#954#949#953#945' '#928#945#961#945#956#959#957#942#962
      FieldKind = fkCalculated
      FieldName = 'TimeInS'
      Size = 40
      Calculated = True
    end
    object DateTimeField5: TDateTimeField
      DisplayLabel = #911#961#945' '#917#953#963#972#948#959#965
      FieldName = 'DateTimeIn'
      DisplayFormat = 'h:mm:ss'
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'DateTimeOut'
    end
    object IntegerField10: TIntegerField
      FieldName = 'InsUsr'
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'InsDT'
    end
    object IntegerField11: TIntegerField
      FieldName = 'InUsr'
    end
    object IntegerField12: TIntegerField
      FieldName = 'OutUsr'
    end
    object BooleanField5: TBooleanField
      FieldName = 'FullFilled'
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'FullFilledDT'
    end
    object WideStringField10: TWideStringField
      FieldName = 'Comments'
      FixedChar = True
      Size = 250
    end
    object WideStringField11: TWideStringField
      FieldName = 'CardNumber'
      FixedChar = True
      Size = 10
    end
    object qryAirliftContactId: TIntegerField
      FieldName = 'ContactId'
    end
    object qryAirliftFullFilledUsr: TIntegerField
      FieldName = 'FullFilledUsr'
    end
    object qryAirliftDTime: TDateTimeField
      FieldName = 'DTime'
    end
  end
  object dtsAirlift: TDataSource
    AutoEdit = False
    DataSet = qryAirlift
    Left = 120
    Top = 268
  end
  object qryBrWorkers: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryBrPersonsCalcFields
    EnableBCD = False
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT *'
      'FROM [V_WorkersVisit]'
      'WHERE  (FullFilled = 0)'
      'ORDER BY InsDt Desc')
    Left = 32
    Top = 352
    object IntegerField1: TIntegerField
      DisplayWidth = 5
      FieldName = 'id'
    end
    object DateField1: TDateField
      DisplayLabel = #919#956#949#961#959#956#951#957#943#945
      FieldKind = fkCalculated
      FieldName = 'DateIn'
      Calculated = True
    end
    object WideStringField1: TWideStringField
      DisplayLabel = #927#957#959#956#945#964#949#960#974#957#965#956#959' '#917#960#953#963#954#941#960#964#951
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
    object WideStringField12: TWideStringField
      DisplayLabel = #931#954#959#960#972#962
      FieldName = 'Reason'
      FixedChar = True
      Size = 50
    end
    object WideStringField14: TWideStringField
      DisplayLabel = #913#961#953#952#956'.'#922#965#954#955
      FieldName = 'CarNumber'
      FixedChar = True
      Size = 10
    end
    object BooleanField1: TBooleanField
      FieldName = 'WithCar'
    end
    object StringField1: TStringField
      DisplayLabel = #916#953#940#961#954#949#953#945' '#928#945#961#945#956#959#957#942#962
      FieldKind = fkCalculated
      FieldName = 'TimeInS'
      Size = 40
      Calculated = True
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = #911#961#945' '#917#953#963#972#948#959#965
      FieldName = 'DateTimeIn'
      DisplayFormat = 'h:mm:ss'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DateTimeOut'
    end
    object IntegerField2: TIntegerField
      FieldName = 'InsUsr'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'InsDT'
    end
    object IntegerField3: TIntegerField
      FieldName = 'InUsr'
    end
    object IntegerField4: TIntegerField
      FieldName = 'OutUsr'
    end
    object BooleanField2: TBooleanField
      FieldName = 'FullFilled'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'FullFilledDT'
    end
    object WideStringField15: TWideStringField
      FieldName = 'Comments'
      FixedChar = True
      Size = 250
    end
    object WideStringField16: TWideStringField
      FieldName = 'CardNumber'
      FixedChar = True
      Size = 10
    end
    object qryBrWorkersContractors_Id: TIntegerField
      FieldName = 'Contractors_Id'
    end
    object qryBrWorkersContractors_Workers_Id: TIntegerField
      FieldName = 'Contractors_Workers_Id'
    end
    object qryBrWorkersSurname: TWideStringField
      FieldName = 'Surname'
      Size = 50
    end
    object qryBrWorkersADT: TWideStringField
      FieldName = 'ADT'
      Size = 10
    end
    object qryBrWorkersFullFilledUsr: TIntegerField
      FieldName = 'FullFilledUsr'
    end
    object qryBrWorkersDTime: TDateTimeField
      FieldName = 'DTime'
    end
    object qryBrWorkersContact: TWideStringField
      FieldName = 'Contact'
      Size = 30
    end
    object qryBrWorkersCompany: TWideStringField
      FieldName = 'Company'
      Size = 100
    end
    object qryBrWorkersReason_Id: TIntegerField
      FieldName = 'Reason_Id'
    end
    object qryBrWorkersContact_Id: TIntegerField
      FieldName = 'Contact_Id'
    end
    object qryBrWorkersContractors: TWideStringField
      FieldName = 'Contractors'
      Size = 100
    end
  end
  object dtsBrWorkers: TDataSource
    AutoEdit = False
    DataSet = qryBrWorkers
    Left = 120
    Top = 352
  end
end
