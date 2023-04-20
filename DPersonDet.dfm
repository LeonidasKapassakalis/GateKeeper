inherited DMPersonDet: TDMPersonDet
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  object qryPersonsVisit: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = qryPersonsVisitBeforePost
    AfterPost = qryPersonsVisitAfterPost
    Parameters = <
      item
        Name = 'Pid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM [PersonsVisit]'
      'WHERE [id] = :Pid')
    Left = 48
    Top = 40
    object qryPersonsVisitid: TIntegerField
      FieldName = 'id'
    end
    object qryPersonsVisitName: TWideStringField
      DisplayLabel = #927#957#959#956#945#964#949#960#974#957#965#956#959
      FieldName = 'Name'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 50
    end
    object qryPersonsVisitCompany: TWideStringField
      DisplayLabel = #917#964#945#953#961#949#943#945
      FieldName = 'Company'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 50
    end
    object qryPersonsVisitIdentityNo: TWideStringField
      DisplayLabel = #913#961'.'#932#945#965#964#972#964#951#964#945#962
      FieldName = 'IdentityNo'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 50
    end
    object qryPersonsVisitReason: TWideStringField
      DisplayLabel = #931#954#959#960#972#962' '#931#965#957#940#957#964#951#963#951#962
      FieldName = 'Reason'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 50
    end
    object qryPersonsVisitContactWith: TWideStringField
      DisplayLabel = #931#965#957#940#957#964#951#963#951' '#956#949
      FieldName = 'ContactWith'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 50
    end
    object qryPersonsVisitCardNumber: TWideStringField
      DisplayLabel = #913#961#953#952#956#972#962' '#922#940#961#964#945#962
      FieldName = 'CardNumber'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 10
    end
    object qryPersonsVisitWithCar: TBooleanField
      FieldName = 'WithCar'
      ProviderFlags = [pfInUpdate]
    end
    object qryPersonsVisitCarNumber: TWideStringField
      DisplayLabel = #913#961'.'#922#965#954#955#959#966#959#961#943#945#962
      FieldName = 'CarNumber'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 10
    end
    object qryPersonsVisitDateTimeIn: TDateTimeField
      FieldName = 'DateTimeIn'
      ProviderFlags = [pfInUpdate]
    end
    object qryPersonsVisitDateTimeOut: TDateTimeField
      FieldName = 'DateTimeOut'
      ProviderFlags = [pfInUpdate]
    end
    object qryPersonsVisitInsUsr: TIntegerField
      FieldName = 'InsUsr'
      ProviderFlags = [pfInUpdate]
    end
    object qryPersonsVisitInsDT: TDateTimeField
      FieldName = 'InsDT'
      ProviderFlags = [pfInUpdate]
    end
    object qryPersonsVisitInUsr: TIntegerField
      FieldName = 'InUsr'
      ProviderFlags = [pfInUpdate]
    end
    object qryPersonsVisitOutUsr: TIntegerField
      FieldName = 'OutUsr'
      ProviderFlags = [pfInUpdate]
    end
    object qryPersonsVisitFullFilled: TBooleanField
      FieldName = 'FullFilled'
      ProviderFlags = [pfInUpdate]
      DisplayValues = #927#955#959#954#955#951#961#969#956#941#957#951';'
    end
    object qryPersonsVisitFullFilledDT: TDateTimeField
      FieldName = 'FullFilledDT'
      ProviderFlags = [pfInUpdate]
    end
    object qryPersonsVisitFullFilledUsr: TIntegerField
      FieldName = 'FullFilledUsr'
      ProviderFlags = [pfInUpdate]
    end
    object qryPersonsVisitDTime: TDateTimeField
      FieldName = 'DTime'
      ProviderFlags = [pfInUpdate]
    end
    object qryPersonsVisitContactId: TIntegerField
      FieldName = 'ContactId'
      ProviderFlags = [pfInUpdate]
    end
    object qryPersonsVisitComments: TWideStringField
      FieldName = 'Comments'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object qryPersonsVisitAir_Lift: TBooleanField
      FieldName = 'Air_Lift'
    end
  end
  object dtsPersonsVisit: TDataSource
    AutoEdit = False
    DataSet = qryPersonsVisit
    OnStateChange = dtsPersonsVisitStateChange
    Left = 144
    Top = 40
  end
  object VL_PVPersons: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT *'
      'FROM [VL_PVPersons]')
    Left = 48
    Top = 144
    object VL_PVPersonsName: TWideStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
  end
  object VL_Reason: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT *'
      'FROM [VL_Reason]')
    Left = 48
    Top = 200
    object VL_ReasonReason: TWideStringField
      FieldName = 'Reason'
      FixedChar = True
      Size = 50
    end
  end
  object VL_PVCompany: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT *'
      'FROM [VL_PVCompany]')
    Left = 48
    Top = 256
    object VL_PVCompanyCompany: TWideStringField
      FieldName = 'Company'
      FixedChar = True
      Size = 50
    end
  end
  object VL_PVCarNumber: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT *'
      'FROM [VL_PVCarNumber]')
    Left = 48
    Top = 312
    object VL_PVCarNumberCarNumber: TWideStringField
      FieldName = 'CarNumber'
      FixedChar = True
      Size = 10
    end
  end
  object VL_PVContact: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT *'
      'FROM [Contacts]'
      'Order By [Name] ')
    Left = 48
    Top = 368
    object VL_PVContactName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object qryPersons: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [Persons]'
      'WHERE [id] = 0')
    Left = 376
    Top = 56
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
    Left = 448
    Top = 56
  end
end
