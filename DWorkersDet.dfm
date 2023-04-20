inherited DMWorkersDet: TDMWorkersDet
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  object qryWorkersVisit: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = qryWorkersVisitBeforePost
    AfterPost = qryWorkersVisitAfterPost
    OnCalcFields = qryWorkersVisitCalcFields
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
      'FROM [WorkersVisit]'
      'WHERE [id] = :Pid')
    Left = 48
    Top = 40
    object qryWorkersVisitid: TIntegerField
      FieldName = 'id'
    end
    object qryWorkersVisitContractors_Workers_Id: TIntegerField
      FieldName = 'Contractors_Workers_Id'
    end
    object qryWorkersVisitContractors_Id: TIntegerField
      FieldName = 'Contractors_Id'
    end
    object qryWorkersVisitReason_Id: TIntegerField
      FieldName = 'Reason_Id'
    end
    object qryWorkersVisitContact_Id: TIntegerField
      FieldName = 'Contact_Id'
    end
    object qryWorkersVisitWithCar: TBooleanField
      FieldName = 'WithCar'
    end
    object qryWorkersVisitCarNumber: TWideStringField
      FieldName = 'CarNumber'
      Size = 50
    end
    object qryWorkersVisitCardNumber: TWideStringField
      FieldName = 'CardNumber'
      Size = 50
    end
    object qryWorkersVisitDateTimeIn: TDateTimeField
      FieldName = 'DateTimeIn'
    end
    object qryWorkersVisitDateTimeOut: TDateTimeField
      FieldName = 'DateTimeOut'
    end
    object qryWorkersVisitInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryWorkersVisitInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryWorkersVisitInUsr: TIntegerField
      FieldName = 'InUsr'
    end
    object qryWorkersVisitOutUsr: TIntegerField
      FieldName = 'OutUsr'
    end
    object qryWorkersVisitFullFilled: TBooleanField
      FieldName = 'FullFilled'
      DisplayValues = #927#955#959#954#955#951#961#969#956#941#957#951';'
    end
    object qryWorkersVisitFullFilledDT: TDateTimeField
      FieldName = 'FullFilledDT'
    end
    object qryWorkersVisitFullFilledUsr: TIntegerField
      FieldName = 'FullFilledUsr'
    end
    object qryWorkersVisitDTime: TDateTimeField
      FieldName = 'DTime'
    end
    object qryWorkersVisitComments: TWideStringField
      FieldName = 'Comments'
      Size = 500
    end
    object qryWorkersVisitPContractors_Id: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PContractors_Id'
      Calculated = True
    end
  end
  object dtsWorkersVisit: TDataSource
    AutoEdit = False
    DataSet = qryWorkersVisit
    OnStateChange = dtsWorkersVisitStateChange
    Left = 144
    Top = 40
  end
  object VL_ReasonContractors: TADOQuery
    Connection = DMMain.ADOConnection
    Parameters = <
      item
        Name = 'PContractors_Id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT [Id]'
      '      ,[Name]'
      '      ,[Active]'
      'FROM [VL_ReasonContractors]'
      'WHERE [Active] = 1'
      
        'AND ( [Contractors_Id] = 0 OR [Contractors_Id] = :PContractors_I' +
        'd)'
      '   ')
    Left = 48
    Top = 176
    object VL_ReasonContractorsId: TIntegerField
      FieldName = 'Id'
    end
    object VL_ReasonContractorsName: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
    object VL_ReasonContractorsActive: TBooleanField
      FieldName = 'Active'
    end
  end
  object VL_Contractors: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT *'
      'FROM [VL_Contractors]')
    Left = 48
    Top = 124
    object VL_ContractorsCompany: TWideStringField
      FieldName = 'Company'
      FixedChar = True
      Size = 50
    end
    object VL_ContractorsName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object VL_Contractorsid: TIntegerField
      FieldName = 'id'
    end
  end
  object VL_CarNumberContractors: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT *'
      'FROM [VL_PVCarNumberContractors]')
    Left = 48
    Top = 288
    object VL_CarNumberContractorsCarNumber: TWideStringField
      FieldName = 'CarNumber'
      FixedChar = True
      Size = 10
    end
  end
  object VL_ContactContractors: TADOQuery
    Connection = DMMain.ADOConnection
    Parameters = <
      item
        Name = 'PContractors_Id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT  [Name]'
      '      ,[Id]'
      '      ,[Active]'
      '      ,[Contractors_Id]'
      'FROM [VL_ContactContractors]'
      'WHERE Active = 1'
      
        'AND ( [Contractors_Id] = 0 OR [Contractors_Id] = :PContractors_I' +
        'd)'
      '   ')
    Left = 48
    Top = 236
    object VL_ContactContractorsName: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
    object VL_ContactContractorsId: TIntegerField
      FieldName = 'Id'
    end
    object VL_ContactContractorsActive: TBooleanField
      FieldName = 'Active'
    end
    object VL_ContactContractorsContractors_Id: TIntegerField
      FieldName = 'Contractors_Id'
    end
  end
  object qryWorkers: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [Contractors_Workers]'
      'WHERE [id] = 0')
    Left = 376
    Top = 56
    object qryWorkersId: TIntegerField
      FieldName = 'Id'
    end
    object qryWorkersContractors_Id: TIntegerField
      FieldName = 'Contractors_Id'
    end
    object qryWorkersName: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
    object qryWorkersSurname: TWideStringField
      FieldName = 'Surname'
      Size = 30
    end
    object qryWorkersADT: TWideStringField
      FieldName = 'ADT'
      FixedChar = True
      Size = 10
    end
    object qryWorkersInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryWorkersInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryWorkersActive: TBooleanField
      FieldName = 'Active'
    end
  end
  object dsWorkers: TDataSource
    AutoEdit = False
    DataSet = qryWorkers
    Left = 448
    Top = 56
  end
  object dtsVL_Contractors: TDataSource
    DataSet = VL_Contractors
    Left = 144
    Top = 120
  end
  object dts_ReasonContractors: TDataSource
    DataSet = VL_ReasonContractors
    Left = 144
    Top = 180
  end
  object dts_ContactContractors: TDataSource
    DataSet = VL_ContactContractors
    Left = 168
    Top = 240
  end
  object fnHelpWorkerWithId: TADOStoredProc
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'fnHelpWorkerWithId;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@PId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 380
    Top = 128
    object fnHelpWorkerWithIdName: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
    object fnHelpWorkerWithIdSurName: TWideStringField
      FieldName = 'SurName'
      Size = 30
    end
    object fnHelpWorkerWithIdCompany: TWideStringField
      FieldName = 'Company'
      Size = 100
    end
    object fnHelpWorkerWithIdADT: TWideStringField
      FieldName = 'ADT'
      FixedChar = True
      Size = 10
    end
    object fnHelpWorkerWithIdContractor_Id: TIntegerField
      FieldName = 'Contractor_Id'
    end
    object fnHelpWorkerWithIdWorker_Id: TIntegerField
      FieldName = 'Worker_Id'
    end
  end
end
