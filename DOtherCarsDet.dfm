inherited DMOtherCarsDet: TDMOtherCarsDet
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Width = 770
  object qryCarsVisitOther: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = qryCarsVisitOtherBeforePost
    AfterPost = qryCarsVisitOtherAfterPost
    OnCalcFields = qryCarsVisitOtherCalcFields
    Parameters = <
      item
        Name = 'PId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM [CarsVisitOther]'
      'WHERE [Id] = :PId')
    Left = 48
    Top = 40
    object qryCarsVisitOtherid: TIntegerField
      FieldName = 'id'
    end
    object qryCarsVisitOtherRegNo: TWideStringField
      FieldName = 'RegNo'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qryCarsVisitOtherProcedureState: TIntegerField
      FieldName = 'ProcedureState'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOtherDrvName: TWideStringField
      FieldName = 'DrvName'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 50
    end
    object qryCarsVisitOtherCompany: TWideStringField
      FieldName = 'Company'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 50
    end
    object qryCarsVisitOtherCarOwner: TWideStringField
      FieldName = 'CarOwner'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 50
    end
    object qryCarsVisitOtherDA_Num: TWideStringField
      FieldName = 'DA_Num'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 50
    end
    object qryCarsVisitOtherProducts: TWideStringField
      FieldName = 'Products'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 50
    end
    object qryCarsVisitOtherWithoutWeight: TBooleanField
      FieldName = 'WithoutWeight'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOtherDateTimeIn: TDateTimeField
      FieldName = 'DateTimeIn'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOtherDateTimeOut: TDateTimeField
      FieldName = 'DateTimeOut'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOtherInsUsr: TIntegerField
      FieldName = 'InsUsr'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOtherInsDT: TDateTimeField
      FieldName = 'InsDT'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOtherInUsr: TIntegerField
      FieldName = 'InUsr'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOtherOutUsr: TIntegerField
      FieldName = 'OutUsr'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOtherFullFilled: TBooleanField
      FieldName = 'FullFilled'
      ProviderFlags = [pfInUpdate]
      DisplayValues = #927#955#959#954#955#951#961#969#956#941#957#951';'
    end
    object qryCarsVisitOtherFullFilledDT: TDateTimeField
      FieldName = 'FullFilledDT'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOtherCalcWeight: TBCDField
      FieldName = 'CalcWeight'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object qryCarsVisitOtherNoted: TBooleanField
      FieldName = 'Noted'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOtherFullFilledUsr: TIntegerField
      FieldName = 'FullFilledUsr'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOtherDTime: TDateTimeField
      FieldName = 'DTime'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOtherCompanyId: TIntegerField
      FieldName = 'CompanyId'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOtherDriverId: TIntegerField
      FieldName = 'DriverId'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOtherProductId: TIntegerField
      FieldName = 'ProductId'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOtherComments: TWideStringField
      FieldName = 'Comments'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
    object qryCarsVisitOtherLong_Stay: TBooleanField
      FieldName = 'Long_Stay'
    end
  end
  object dtsCarsVisitOther: TDataSource
    AutoEdit = False
    DataSet = qryCarsVisitOther
    OnStateChange = dtsCarsVisitOtherStateChange
    Left = 144
    Top = 40
  end
  object VL_Drivers: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [DriversOther]'
      'ORDER BY [Name] DESC')
    Left = 48
    Top = 144
    object VL_Driversid: TIntegerField
      FieldName = 'id'
    end
    object VL_DriversName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object VL_DriversCompanyId: TIntegerField
      FieldName = 'CompanyId'
    end
    object VL_DriversComments: TWideStringField
      FieldName = 'Comments'
      Size = 150
    end
    object VL_DriversPhoName: TWideStringField
      FieldName = 'PhoName'
      Size = 50
    end
    object VL_DriversAutoCreate: TBooleanField
      FieldName = 'AutoCreate'
    end
    object VL_DriversAutoCreateSource: TIntegerField
      FieldName = 'AutoCreateSource'
    end
  end
  object VL_Product: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [Products]'
      'ORDER BY [NAME] DESC')
    Left = 48
    Top = 200
    object VL_ProductName: TWideStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
    object VL_Productid: TIntegerField
      FieldName = 'id'
    end
    object VL_ProductComments: TWideStringField
      FieldName = 'Comments'
      Size = 150
    end
    object VL_ProductPhoName: TWideStringField
      FieldName = 'PhoName'
      Size = 50
    end
  end
  object VL_RegNo: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [CarsOther]'
      '')
    Left = 48
    Top = 312
    object VL_RegNoid: TIntegerField
      FieldName = 'id'
    end
    object VL_RegNoRegNo: TWideStringField
      FieldName = 'RegNo'
      Size = 10
    end
    object VL_RegNoCompanyId: TIntegerField
      FieldName = 'CompanyId'
    end
    object VL_RegNoComments: TWideStringField
      FieldName = 'Comments'
      Size = 200
    end
  end
  object qryCarsVisitOtherWeight: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsCarsVisitOther
    Parameters = <
      item
        Name = 'Id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM [CarsVisitOtherWeight]'
      'Where id = :Id')
    Left = 312
    Top = 40
    object qryCarsVisitOtherWeightid: TIntegerField
      FieldName = 'id'
    end
    object qryCarsVisitOtherWeightActionLevel: TIntegerField
      FieldName = 'ActionLevel'
    end
    object qryCarsVisitOtherWeightaa: TIntegerField
      FieldName = 'aa'
    end
    object qryCarsVisitOtherWeightWeightDT: TDateTimeField
      FieldName = 'WeightDT'
    end
    object qryCarsVisitOtherWeightWeightAA: TIntegerField
      FieldName = 'WeightAA'
    end
    object qryCarsVisitOtherWeightWeight: TBCDField
      FieldName = 'Weight'
      Precision = 18
      Size = 0
    end
    object qryCarsVisitOtherWeightWeightRegNo: TWideStringField
      FieldName = 'WeightRegNo'
      Size = 50
    end
    object qryCarsVisitOtherWeightWeightGuid: TGuidField
      FieldName = 'WeightGuid'
      FixedChar = True
      Size = 38
    end
  end
  object dtsCarsVisitOtherWeight: TDataSource
    AutoEdit = False
    DataSet = qryCarsVisitOtherWeight
    Left = 456
    Top = 32
  end
  object GetTRawLib: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PGId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM [TRawLib]'
      'Where Gid = :PGId')
    Left = 616
    Top = 32
    object GetTRawLibGId: TGuidField
      FieldName = 'GId'
      FixedChar = True
      Size = 38
    end
    object GetTRawLibLibId: TIntegerField
      FieldName = 'LibId'
    end
    object GetTRawLibLibDateTime: TDateTimeField
      FieldName = 'LibDateTime'
    end
    object GetTRawLibLibRegNo: TWideStringField
      FieldName = 'LibRegNo'
      Size = 50
    end
    object GetTRawLibLibWeight: TIntegerField
      FieldName = 'LibWeight'
    end
    object GetTRawLibUsed: TBooleanField
      FieldName = 'Used'
    end
    object GetTRawLibError: TBooleanField
      FieldName = 'Error'
    end
  end
  object qryCarsVisitOtherWeight1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = dtsCarsVisitOther
    Parameters = <
      item
        Name = 'Id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM [CarsVisitOtherWeight]'
      'WHERE id = :Id'
      'AND ActionLevel = 1'
      'ORDER BY WeightDT')
    Left = 312
    Top = 128
    object qryCarsVisitOtherWeight1id: TIntegerField
      FieldName = 'id'
    end
    object qryCarsVisitOtherWeight1ActionLevel: TIntegerField
      FieldName = 'ActionLevel'
    end
    object qryCarsVisitOtherWeight1aa: TIntegerField
      FieldName = 'aa'
    end
    object qryCarsVisitOtherWeight1WeightDT: TDateTimeField
      DisplayWidth = 20
      FieldName = 'WeightDT'
    end
    object qryCarsVisitOtherWeight1WeightAA: TIntegerField
      FieldName = 'WeightAA'
    end
    object qryCarsVisitOtherWeight1Weight: TBCDField
      DisplayWidth = 10
      FieldName = 'Weight'
      Precision = 18
      Size = 0
    end
    object qryCarsVisitOtherWeight1WeightRegNo: TWideStringField
      FieldName = 'WeightRegNo'
      Size = 50
    end
    object qryCarsVisitOtherWeight1WeightGuid: TGuidField
      FieldName = 'WeightGuid'
      FixedChar = True
      Size = 38
    end
  end
  object dtsCarsVisitOtherWeight1: TDataSource
    AutoEdit = False
    DataSet = qryCarsVisitOtherWeight1
    Left = 464
    Top = 128
  end
  object qryCarsVisitOtherWeight2: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = dtsCarsVisitOther
    Parameters = <
      item
        Name = 'Id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM [CarsVisitOtherWeight]'
      'WHERE id = :Id'
      'AND ActionLevel = 2'
      'ORDER BY WeightDT')
    Left = 304
    Top = 200
    object qryCarsVisitOtherWeight2id: TIntegerField
      FieldName = 'id'
    end
    object qryCarsVisitOtherWeight2ActionLevel: TIntegerField
      FieldName = 'ActionLevel'
    end
    object qryCarsVisitOtherWeight2aa: TIntegerField
      FieldName = 'aa'
    end
    object qryCarsVisitOtherWeight2WeightDT: TDateTimeField
      FieldName = 'WeightDT'
    end
    object qryCarsVisitOtherWeight2WeightAA: TIntegerField
      FieldName = 'WeightAA'
    end
    object qryCarsVisitOtherWeight2Weight: TBCDField
      DisplayWidth = 10
      FieldName = 'Weight'
      Precision = 18
      Size = 0
    end
    object qryCarsVisitOtherWeight2WeightRegNo: TWideStringField
      FieldName = 'WeightRegNo'
      Size = 50
    end
    object qryCarsVisitOtherWeight2WeightGuid: TGuidField
      FieldName = 'WeightGuid'
      FixedChar = True
      Size = 38
    end
  end
  object dtsCarsVisitOtherWeight2: TDataSource
    AutoEdit = False
    DataSet = qryCarsVisitOtherWeight2
    Left = 464
    Top = 200
  end
  object ADOQuery1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [VL_Driver]')
    Left = 168
    Top = 144
    object WideStringField1: TWideStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
  end
  object VL_Company: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [Company]'
      'WHERE [FriendCompany] = 0'
      'ORDER BY [Name] DESC')
    Left = 48
    Top = 256
    object VL_Companyid: TIntegerField
      FieldName = 'id'
    end
    object WideStringField2: TWideStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
    object VL_CompanyComments: TWideStringField
      FieldName = 'Comments'
      Size = 150
    end
    object VL_CompanyFriendCompany: TBooleanField
      FieldName = 'FriendCompany'
    end
    object VL_CompanySpecialCom: TBooleanField
      FieldName = 'SpecialCom'
    end
    object VL_CompanySpecialCom1: TBooleanField
      FieldName = 'SpecialCom1'
    end
    object VL_CompanyPhoName: TWideStringField
      FieldName = 'PhoName'
      Size = 50
    end
    object VL_CompanyAutoCreate: TBooleanField
      FieldName = 'AutoCreate'
    end
    object VL_CompanyAutoCreateSource: TIntegerField
      FieldName = 'AutoCreateSource'
    end
  end
  object VL_CarOwner: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [VL_CarOwner]')
    Left = 48
    Top = 376
    object WideStringField3: TWideStringField
      FieldName = 'CarOwner'
      FixedChar = True
      Size = 50
    end
  end
  object qfindSame: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = qryCarsVisitOtherBeforePost
    AfterPost = qryCarsVisitOtherAfterPost
    OnCalcFields = qryCarsVisitOtherCalcFields
    Parameters = <
      item
        Name = 'PRegNo'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Id'
      'FROM [CarsVisitOther]'
      'Where RegNo = :PRegNo'
      'And     FullFilled = 0')
    Left = 616
    Top = 112
    object qfindSameId: TIntegerField
      FieldName = 'Id'
    end
  end
  object dsVL_Product: TDataSource
    AutoEdit = False
    DataSet = VL_Product
    Left = 168
    Top = 200
  end
  object dsVL_Company: TDataSource
    AutoEdit = False
    DataSet = VL_Company
    Left = 168
    Top = 256
  end
  object qryDriversOther: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [DriversOther]'
      'WHERE [id] = 0')
    Left = 608
    Top = 304
    object qryDriversOtherid: TIntegerField
      FieldName = 'id'
    end
    object qryDriversOtherName: TWideStringField
      FieldName = 'Name'
      Size = 50
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
    Left = 696
    Top = 304
  end
  object qryCarsOther: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [CarsOther]'
      'WHERE [id] = 0')
    Left = 608
    Top = 384
    object qryCarsOtherid: TIntegerField
      FieldName = 'id'
    end
    object qryCarsOtherRegNo: TWideStringField
      FieldName = 'RegNo'
      Size = 10
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
    Left = 704
    Top = 376
  end
  object qryCompany: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [Company]'
      'WHERE [id] = 0')
    Left = 608
    Top = 232
    object qryCompanyid: TIntegerField
      FieldName = 'id'
    end
    object qryCompanyName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object qryCompanyComments: TWideStringField
      FieldName = 'Comments'
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
    Left = 696
    Top = 232
  end
  object spCheckCar: TADOStoredProc
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'ChkOtherCar;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@RegNo'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end>
    Left = 312
    Top = 280
    object spCheckCarid: TIntegerField
      FieldName = 'id'
    end
    object spCheckCarRegNo: TWideStringField
      FieldName = 'RegNo'
      Size = 10
    end
  end
  object spCheckDriver: TADOStoredProc
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'ChkOtherDriver;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@DriverName'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end>
    Left = 312
    Top = 392
    object spCheckDriverid: TIntegerField
      FieldName = 'id'
    end
    object spCheckDriverName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object spCheckDriverCompanyId: TIntegerField
      FieldName = 'CompanyId'
    end
  end
  object spCheckCompany: TADOStoredProc
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'ChkOtherCompany;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ComName'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end>
    Left = 312
    Top = 336
    object spCheckCompanyid: TIntegerField
      FieldName = 'id'
    end
    object spCheckCompanyName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
end
