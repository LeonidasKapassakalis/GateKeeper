inherited DMSubParams33: TDMSubParams33
  OldCreateOrder = True
  OnCreate = DMSubParamsCreate
  Height = 344
  Width = 629
  object qryContractors: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Contractors')
    Left = 44
    Top = 20
    object qryContractorsid: TIntegerField
      FieldName = 'id'
    end
    object qryContractorsName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object qryContractorsCompany: TWideStringField
      FieldName = 'Company'
      Size = 100
    end
    object qryContractorsVAT: TWideStringField
      FieldName = 'VAT'
      FixedChar = True
      Size = 10
    end
    object qryContractorsInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryContractorsInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryContractorsNotes: TWideStringField
      FieldName = 'Notes'
      Size = 200
    end
  end
  object dtsContractors: TDataSource
    AutoEdit = False
    DataSet = qryContractors
    OnStateChange = dsCountryStateChange
    Left = 116
    Top = 20
  end
  object qryContractors_Workers: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Contractors_Workers')
    Left = 44
    Top = 92
    object qryContractors_WorkersId: TIntegerField
      FieldName = 'Id'
    end
    object qryContractors_WorkersLContractors_Id: TStringField
      FieldKind = fkLookup
      FieldName = 'LContractors_Id'
      LookupDataSet = qryContractors
      LookupKeyFields = 'id'
      LookupResultField = 'Company'
      KeyFields = 'Contractors_Id'
      Lookup = True
    end
    object qryContractors_WorkersContractors_Id: TIntegerField
      FieldName = 'Contractors_Id'
    end
    object qryContractors_WorkersName: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
    object qryContractors_WorkersSurname: TWideStringField
      FieldName = 'Surname'
      Size = 30
    end
    object qryContractors_WorkersInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryContractors_WorkersInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryContractors_WorkersActive: TBooleanField
      FieldName = 'Active'
    end
    object qryContractors_WorkersADT: TWideStringField
      FieldName = 'ADT'
      FixedChar = True
      Size = 10
    end
    object qryContractors_WorkersManualInsert: TBooleanField
      FieldName = 'ManualInsert'
    end
  end
  object dtsContractors_Workers: TDataSource
    AutoEdit = False
    DataSet = qryContractors_Workers
    OnStateChange = dsCountryStateChange
    Left = 116
    Top = 92
  end
  object qryContractors_Reason: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Contractors_Reason')
    Left = 44
    Top = 152
    object qryContractors_ReasonId: TIntegerField
      FieldName = 'Id'
    end
    object qryContractors_ReasonLContractors_Id: TStringField
      FieldKind = fkLookup
      FieldName = 'LContractors_Id'
      LookupDataSet = qryContractors
      LookupKeyFields = 'id'
      LookupResultField = 'Company'
      KeyFields = 'Contractors_Id'
      Lookup = True
    end
    object qryContractors_ReasonContractors_Id: TIntegerField
      FieldName = 'Contractors_Id'
    end
    object qryContractors_ReasonName: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
    object qryContractors_ReasonInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryContractors_ReasonInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryContractors_ReasonActive: TBooleanField
      FieldName = 'Active'
    end
  end
  object dtsContractors_Reason: TDataSource
    AutoEdit = False
    DataSet = qryContractors_Reason
    OnStateChange = dsCountryStateChange
    Left = 116
    Top = 152
  end
  object qryContractors_Contact: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Contractors_Contact')
    Left = 44
    Top = 236
    object IntegerField1: TIntegerField
      FieldName = 'Id'
    end
    object StringField1: TStringField
      FieldKind = fkLookup
      FieldName = 'LContractors_Id'
      LookupDataSet = qryContractors
      LookupKeyFields = 'id'
      LookupResultField = 'Company'
      KeyFields = 'Contractors_Id'
      Lookup = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'Contractors_Id'
    end
    object WideStringField1: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
    object IntegerField3: TIntegerField
      FieldName = 'InsUsr'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'InsDT'
    end
    object BooleanField1: TBooleanField
      FieldName = 'Active'
    end
  end
  object dtsContractors_Contact: TDataSource
    AutoEdit = False
    DataSet = qryContractors_Contact
    OnStateChange = dsCountryStateChange
    Left = 116
    Top = 236
  end
end
