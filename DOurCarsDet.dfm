inherited DMOurCarsDet: TDMOurCarsDet
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  object qryCarsVisitOur: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforeInsert = qryCarsVisitOurBeforeInsert
    BeforePost = qryCarsVisitOurBeforePost
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
      'FROM [CarsVisitOur]'
      'Where [id] = :Pid')
    Left = 48
    Top = 40
    object qryCarsVisitOurid: TIntegerField
      FieldName = 'id'
    end
    object qryCarsVisitOurRegNoId: TIntegerField
      FieldName = 'RegNoId'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurProcedureState: TIntegerField
      FieldName = 'ProcedureState'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurFriendCar: TBooleanField
      FieldName = 'FriendCar'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurDrvNameId: TIntegerField
      FieldName = 'DrvNameId'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurCompanyId: TIntegerField
      FieldName = 'CompanyId'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurDA_Num: TWideStringField
      FieldName = 'DA_Num'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 50
    end
    object qryCarsVisitOurProducts: TWideStringField
      FieldName = 'Products'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 50
    end
    object qryCarsVisitOurWithoutWeight: TBooleanField
      FieldName = 'WithoutWeight'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurDateTimeIn: TDateTimeField
      FieldName = 'DateTimeIn'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurDateTimeOut: TDateTimeField
      FieldName = 'DateTimeOut'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurInsUsr: TIntegerField
      FieldName = 'InsUsr'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurProductId: TIntegerField
      FieldName = 'ProductId'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurInsDT: TDateTimeField
      FieldName = 'InsDT'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurInUsr: TIntegerField
      FieldName = 'InUsr'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurOutUsr: TIntegerField
      FieldName = 'OutUsr'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurFullFilled: TBooleanField
      FieldName = 'FullFilled'
      ProviderFlags = [pfInUpdate]
      DisplayValues = #927#955#959#954#955#951#961#969#956#941#957#951';'
    end
    object qryCarsVisitOurFullFilledDT: TDateTimeField
      FieldName = 'FullFilledDT'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurFullFilledUsr: TIntegerField
      FieldName = 'FullFilledUsr'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurCalcWeight: TBCDField
      FieldName = 'CalcWeight'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object qryCarsVisitOurNoted: TBooleanField
      FieldName = 'Noted'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurWater: TBCDField
      FieldName = 'Water'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object qryCarsVisitOurDTime: TDateTimeField
      FieldName = 'DTime'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurSpecialEltepe: TIntegerField
      FieldName = 'SpecialEltepe'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurComments: TWideStringField
      FieldName = 'Comments'
      ProviderFlags = [pfInUpdate]
      Size = 500
    end
  end
  object dtsCarsVisitOur: TDataSource
    AutoEdit = False
    DataSet = qryCarsVisitOur
    OnStateChange = dtsCarsVisitOurStateChange
    Left = 144
    Top = 40
  end
  object VL_Drivers: TADOQuery
    Connection = DMMain.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [Drivers]'
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
      'FROM [Products]')
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
  object VL_Company: TADOQuery
    Connection = DMMain.ADOConnection
    OnCalcFields = VL_CompanyCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [Company]'
      'WHERE FriendCompany = 1')
    Left = 48
    Top = 256
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
    object VL_CompanyCompId: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CompId'
      Calculated = True
    end
  end
  object VL_RegNo: TADOQuery
    Connection = DMMain.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [Cars]')
    Left = 48
    Top = 312
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
    Left = 144
    Top = 144
  end
  object dtsCompany: TDataSource
    AutoEdit = False
    DataSet = VL_Company
    Left = 152
    Top = 256
  end
  object dtsRegNo: TDataSource
    AutoEdit = False
    DataSet = VL_RegNo
    Left = 152
    Top = 312
  end
  object qryCarsVisitOurWeight: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    DataSource = dtsCarsVisitOur
    Parameters = <
      item
        Name = 'Id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT *'
      'FROM [CarsVisitOurWeight]'
      'Where id = :Id')
    Left = 304
    Top = 40
    object qryCarsVisitOurWeightid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCarsVisitOurWeightActionLevel: TIntegerField
      FieldName = 'ActionLevel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCarsVisitOurWeightaa: TIntegerField
      FieldName = 'aa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryCarsVisitOurWeightWeightDT: TDateTimeField
      FieldName = 'WeightDT'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurWeightWeightAA: TIntegerField
      FieldName = 'WeightAA'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurWeightWeightRegNo: TWideStringField
      FieldName = 'WeightRegNo'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qryCarsVisitOurWeightWeight: TBCDField
      FieldName = 'Weight'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 0
    end
    object qryCarsVisitOurWeightWater2: TBooleanField
      FieldName = 'Water'
      ProviderFlags = [pfInUpdate]
    end
    object qryCarsVisitOurWeightWeightGuid: TGuidField
      FieldName = 'WeightGuid'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 38
    end
  end
  object dtsCarsVisitOurWeight: TDataSource
    DataSet = qryCarsVisitOurWeight3
    Left = 432
    Top = 40
  end
  object GetTRawLib: TADOQuery
    Connection = DMMain.ADOConnection
    Parameters = <
      item
        Name = 'PGId'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM [TRawLib]'
      'Where Gid = :PGId')
    Left = 640
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
    object GetTRawLibError: TBooleanField
      FieldName = 'Error'
    end
    object GetTRawLibUsed: TBooleanField
      FieldName = 'Used'
    end
  end
  object qryCarsVisitOurWeight3: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    DataSource = dtsCarsVisitOur
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
      'FROM [CarsVisitOurWeight]'
      'Where id = :Id'
      'And ActionLevel = 3'
      'ORDER BY WeightDT')
    Left = 304
    Top = 112
    object qryCarsVisitOurWeight3id: TIntegerField
      FieldName = 'id'
    end
    object qryCarsVisitOurWeight3ActionLevel: TIntegerField
      FieldName = 'ActionLevel'
    end
    object qryCarsVisitOurWeight3aa: TIntegerField
      FieldName = 'aa'
    end
    object qryCarsVisitOurWeight3WeightDT: TDateTimeField
      DisplayWidth = 20
      FieldName = 'WeightDT'
    end
    object qryCarsVisitOurWeight3WeightAA: TIntegerField
      DisplayWidth = 8
      FieldName = 'WeightAA'
    end
    object qryCarsVisitOurWeight3Weight: TBCDField
      DisplayWidth = 12
      FieldName = 'Weight'
      Precision = 18
      Size = 0
    end
    object qryCarsVisitOurWeight3WeightRegNo: TWideStringField
      FieldName = 'WeightRegNo'
      Size = 10
    end
    object qryCarsVisitOurWeight3Water: TBooleanField
      FieldName = 'Water'
    end
    object qryCarsVisitOurWeight3WeightGuid: TGuidField
      FieldName = 'WeightGuid'
      FixedChar = True
      Size = 38
    end
  end
  object dtsCarsVisitOurWeight3: TDataSource
    AutoEdit = False
    DataSet = qryCarsVisitOurWeight3
    Left = 432
    Top = 112
  end
  object qryCarsVisitOurWeight4: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    DataSource = dtsCarsVisitOur
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
      'FROM [CarsVisitOurWeight]'
      'Where id = :Id'
      'And ActionLevel = 4'
      'ORDER BY WeightDT')
    Left = 304
    Top = 184
    object qryCarsVisitOurWeight4id: TIntegerField
      FieldName = 'id'
    end
    object qryCarsVisitOurWeight4ActionLevel: TIntegerField
      FieldName = 'ActionLevel'
    end
    object qryCarsVisitOurWeight4aa: TIntegerField
      FieldName = 'aa'
    end
    object qryCarsVisitOurWeight4WeightDT: TDateTimeField
      DisplayWidth = 20
      FieldName = 'WeightDT'
    end
    object qryCarsVisitOurWeight4WeightAA: TIntegerField
      DisplayWidth = 8
      FieldName = 'WeightAA'
    end
    object qryCarsVisitOurWeight4Weight: TBCDField
      DisplayWidth = 12
      FieldName = 'Weight'
      Precision = 18
      Size = 0
    end
    object qryCarsVisitOurWeight4WeightRegNo: TWideStringField
      FieldName = 'WeightRegNo'
      Size = 10
    end
    object qryCarsVisitOurWeight4Water: TBooleanField
      FieldName = 'Water'
    end
    object qryCarsVisitOurWeight4WeightGuid: TGuidField
      FieldName = 'WeightGuid'
      FixedChar = True
      Size = 38
    end
  end
  object dtsCarsVisitOurWeight4: TDataSource
    AutoEdit = False
    DataSet = qryCarsVisitOurWeight4
    Left = 432
    Top = 184
  end
  object qryCarsVisitOurWeight5: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    DataSource = dtsCarsVisitOur
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
      'FROM [CarsVisitOurWeight]'
      'Where id = :Id'
      'And ActionLevel = 5'
      'ORDER BY WeightDT')
    Left = 304
    Top = 256
    object qryCarsVisitOurWeight5id: TIntegerField
      FieldName = 'id'
    end
    object qryCarsVisitOurWeight5ActionLevel: TIntegerField
      FieldName = 'ActionLevel'
    end
    object qryCarsVisitOurWeight5aa: TIntegerField
      FieldName = 'aa'
    end
    object qryCarsVisitOurWeight5WeightDT: TDateTimeField
      DisplayWidth = 20
      FieldName = 'WeightDT'
    end
    object qryCarsVisitOurWeight5WeightAA: TIntegerField
      DisplayWidth = 8
      FieldName = 'WeightAA'
    end
    object qryCarsVisitOurWeight5Weight: TBCDField
      DisplayWidth = 12
      FieldName = 'Weight'
      Precision = 18
      Size = 0
    end
    object qryCarsVisitOurWeight5WeightRegNo: TWideStringField
      FieldName = 'WeightRegNo'
      Size = 10
    end
    object qryCarsVisitOurWeight5Water: TBooleanField
      FieldName = 'Water'
    end
    object qryCarsVisitOurWeight5WeightGuid: TGuidField
      FieldName = 'WeightGuid'
      FixedChar = True
      Size = 38
    end
  end
  object dtsCarsVisitOurWeight5: TDataSource
    AutoEdit = False
    DataSet = qryCarsVisitOurWeight5
    Left = 432
    Top = 256
  end
  object qryCarsVisitOurWeightWater: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    DataSource = dtsCarsVisitOur
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
      'FROM [CarsVisitOurWeight]'
      'WHERE id = :Id AND Water = 1')
    Left = 304
    Top = 320
    object qryCarsVisitOurWeightWaterid: TIntegerField
      FieldName = 'id'
    end
    object qryCarsVisitOurWeightWaterActionLevel: TIntegerField
      FieldName = 'ActionLevel'
    end
    object qryCarsVisitOurWeightWateraa: TIntegerField
      FieldName = 'aa'
    end
    object qryCarsVisitOurWeightWaterWeightRegNo: TWideStringField
      FieldName = 'WeightRegNo'
      Size = 10
    end
    object qryCarsVisitOurWeightWaterWeightDT: TDateTimeField
      FieldName = 'WeightDT'
    end
    object qryCarsVisitOurWeightWaterWeightAA: TIntegerField
      FieldName = 'WeightAA'
    end
    object qryCarsVisitOurWeightWaterWeight: TBCDField
      FieldName = 'Weight'
      Precision = 18
      Size = 0
    end
    object qryCarsVisitOurWeightWaterWater: TBooleanField
      FieldName = 'Water'
    end
    object qryCarsVisitOurWeightWaterWeightGuid: TGuidField
      FieldName = 'WeightGuid'
      FixedChar = True
      Size = 38
    end
  end
  object VL_SpecTank: TADOQuery
    Connection = DMMain.ADOConnection
    DataSource = dtsCompany
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [SpecTank]')
    Left = 48
    Top = 392
    object VL_SpecTankid: TIntegerField
      FieldName = 'id'
    end
    object VL_SpecTankSpName: TWideStringField
      FieldName = 'SpName'
      Size = 50
    end
    object VL_SpecTankCompId: TIntegerField
      FieldName = 'CompId'
    end
  end
  object dtsSpecTank: TDataSource
    AutoEdit = False
    DataSet = VL_SpecTank
    Left = 152
    Top = 392
  end
  object qfindSame: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PRegNo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Id'
      'FROM [CarsVisitOur]'
      'Where RegNoId = :PRegNo'
      'And     FullFilled = 0')
    Left = 640
    Top = 104
    object qfindSameId: TIntegerField
      FieldName = 'Id'
    end
  end
  object qryCarsVisitOurWeightNoWater: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsCarsVisitOur
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
      'FROM [CarsVisitOurWeight]'
      'Where id = :Id'
      'And ActionLevel = 4'
      'AND Water = 0'
      'ORDER BY WeightDT')
    Left = 304
    Top = 392
    object qryCarsVisitOurWeightNoWaterid: TIntegerField
      FieldName = 'id'
    end
    object qryCarsVisitOurWeightNoWaterActionLevel: TIntegerField
      FieldName = 'ActionLevel'
    end
    object qryCarsVisitOurWeightNoWateraa: TIntegerField
      FieldName = 'aa'
    end
    object qryCarsVisitOurWeightNoWaterWeightRegNo: TWideStringField
      FieldName = 'WeightRegNo'
      Size = 10
    end
    object qryCarsVisitOurWeightNoWaterWeightDT: TDateTimeField
      FieldName = 'WeightDT'
    end
    object qryCarsVisitOurWeightNoWaterWeightAA: TIntegerField
      FieldName = 'WeightAA'
    end
    object qryCarsVisitOurWeightNoWaterWeight: TBCDField
      FieldName = 'Weight'
      Precision = 18
      Size = 0
    end
    object qryCarsVisitOurWeightNoWaterWater: TBooleanField
      FieldName = 'Water'
    end
    object qryCarsVisitOurWeightNoWaterWeightGuid: TGuidField
      FieldName = 'WeightGuid'
      FixedChar = True
      Size = 38
    end
  end
  object qryCarLastWeight: TADOQuery
    Connection = DMMain.ADOConnection
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    DataSource = dtsCarsVisitOur
    Parameters = <
      item
        Name = 'RegNoId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM [CarLastWeight]'
      'WHERE [idid] = :RegNoId')
    Left = 640
    Top = 184
    object qryCarLastWeightId: TIntegerField
      FieldName = 'Id'
    end
    object qryCarLastWeightidid: TIntegerField
      FieldName = 'idid'
    end
    object qryCarLastWeightWeightDT: TDateTimeField
      FieldName = 'WeightDT'
    end
    object qryCarLastWeightWeight: TIntegerField
      FieldName = 'Weight'
    end
    object qryCarLastWeightWeightGuid: TGuidField
      FieldName = 'WeightGuid'
      FixedChar = True
      Size = 38
    end
  end
  object dtsProduct: TDataSource
    AutoEdit = False
    DataSet = VL_Product
    Left = 144
    Top = 200
  end
  object VCarLast: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforeInsert = qryCarsVisitOurBeforeInsert
    BeforePost = qryCarsVisitOurBeforePost
    DataSource = dtsCarsVisitOur
    Parameters = <
      item
        Name = 'RegNoId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM [VCarLast]'
      'Where [idid] = :RegNoId')
    Left = 512
    Top = 352
    object VCarLastidid: TIntegerField
      FieldName = 'idid'
    end
    object VCarLastCapacity: TBCDField
      FieldName = 'Capacity'
      Precision = 18
      Size = 0
    end
    object VCarLastGross: TBCDField
      FieldName = 'Gross'
      Precision = 18
      Size = 0
    end
    object VCarLastTrustPeriod: TIntegerField
      FieldName = 'TrustPeriod'
    end
    object VCarLastWeight: TIntegerField
      FieldName = 'Weight'
    end
    object VCarLastRegNo: TWideStringField
      FieldName = 'RegNo'
      Size = 10
    end
    object VCarLastWeightDT: TDateTimeField
      FieldName = 'WeightDT'
    end
  end
end
