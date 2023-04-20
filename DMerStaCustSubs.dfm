inherited DMMerStaCust: TDMMerStaCust
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  object qryQTown: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM QTown')
    Left = 44
    Top = 32
    object qryQTownArea00_Name: TWideStringField
      FieldName = 'Area00_Name'
      Size = 50
    end
    object qryQTownArea01_Name: TWideStringField
      FieldName = 'Area01_Name'
      Size = 50
    end
    object qryQTownArea02_Name: TWideStringField
      FieldName = 'Area02_Name'
      Size = 50
    end
    object qryQTownArea03_Name: TWideStringField
      FieldName = 'Area03_Name'
      Size = 50
    end
    object qryQTownArea02_Id: TIntegerField
      FieldName = 'Area02_Id'
    end
    object qryQTownArea03_Id: TAutoIncField
      FieldName = 'Area03_Id'
      ReadOnly = True
    end
    object qryQTownArea01_Id: TIntegerField
      FieldName = 'Area01_Id'
    end
    object qryQTownArea00_Id: TIntegerField
      FieldName = 'Area00_Id'
    end
    object qryQTownWholeDescr: TWideStringField
      FieldName = 'WholeDescr'
      ReadOnly = True
      Size = 203
    end
  end
  object dtsQTown: TDataSource
    AutoEdit = False
    DataSet = qryQTown
    Left = 136
    Top = 32
  end
  object qryBranch: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Branch')
    Left = 44
    Top = 96
    object qryBranchBRANCHID: TAutoIncField
      FieldName = 'BRANCHID'
      ReadOnly = True
    end
    object qryBranchDESCR: TWideStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object qryBranchINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryBranchUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryBranchINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryBranchUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object dtsBranch: TDataSource
    AutoEdit = False
    DataSet = qryBranch
    Left = 136
    Top = 96
  end
  object qrySalesMen: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SalesMen')
    Left = 44
    Top = 168
    object qrySalesMenSALESMENID: TAutoIncField
      FieldName = 'SALESMENID'
      ReadOnly = True
    end
    object qrySalesMenDESCR: TWideStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object qrySalesMenSAPID: TIntegerField
      FieldName = 'SAPID'
    end
    object qrySalesMenINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qrySalesMenUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qrySalesMenINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qrySalesMenUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object dtsSalesMen: TDataSource
    AutoEdit = False
    DataSet = qrySalesMen
    Left = 136
    Top = 168
  end
  object qryDiak: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Diak')
    Left = 44
    Top = 232
    object qryDiakDiakID: TAutoIncField
      FieldName = 'DiakID'
      ReadOnly = True
    end
    object qryDiakDescr: TWideStringField
      FieldName = 'Descr'
    end
    object qryDiakDiakDays: TIntegerField
      FieldName = 'DiakDays'
    end
    object qryDiakDiakSAP: TIntegerField
      FieldName = 'DiakSAP'
    end
    object qryDiakInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryDiakInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryDiakUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qryDiakUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qryDiakDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryDiakDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryDiakDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryDiakInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryDiakInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryDiakInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object dtsDiak: TDataSource
    AutoEdit = False
    DataSet = qryDiak
    Left = 136
    Top = 232
  end
  object dsContactType: TDataSource
    AutoEdit = False
    Left = 442
    Top = 168
  end
  object qryContactType: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ContactType')
    Left = 356
    Top = 168
    object qryContactTypeContactTypeId: TAutoIncField
      FieldName = 'ContactTypeId'
      ReadOnly = True
    end
    object qryContactTypeContactType_Name: TWideStringField
      FieldName = 'ContactType_Name'
      Size = 50
    end
    object qryContactTypeContactType_Procedure: TWideStringField
      FieldName = 'ContactType_Procedure'
      FixedChar = True
      Size = 6
    end
    object qryContactTypeInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryContactTypeInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryContactTypeUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qryContactTypeUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qryContactTypeDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryContactTypeDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryContactTypeDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryContactTypeInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryContactTypeInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryContactTypeInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object dtsContacts: TDataSource
    AutoEdit = False
    DataSet = qryContacts
    Left = 440
    Top = 96
  end
  object qryContacts: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Contacts')
    Left = 352
    Top = 96
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
  end
  object qryCostCenter: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM CostCenter'
      '')
    Left = 352
    Top = 24
    object qryCostCenterCostCenterId: TAutoIncField
      FieldName = 'CostCenterId'
      ReadOnly = True
    end
    object qryCostCenterCustomerId: TIntegerField
      FieldName = 'CustomerId'
    end
    object qryCostCenterCustomerAA: TIntegerField
      FieldName = 'CustomerAA'
    end
    object qryCostCenterLCustomer: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustomer'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'NAME'
      KeyFields = 'CustomerId'
      Size = 50
      Lookup = True
    end
    object qryCostCenterCCName: TWideStringField
      FieldName = 'CCName'
      FixedChar = True
      Size = 10
    end
    object qryCostCenterCCNameFull: TWideStringField
      FieldName = 'CCNameFull'
      FixedChar = True
      Size = 100
    end
    object qryCostCenterInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryCostCenterInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryCostCenterUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qryCostCenterUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qryCostCenterDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryCostCenterDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryCostCenterDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryCostCenterInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryCostCenterInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryCostCenterInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object dtsCostCenter: TDataSource
    DataSet = qryCostCenter
    Left = 440
    Top = 24
  end
  object qryCustomer: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT CustomerId, Name'
      '  FROM VCustomer'
      'ORDER BY Name')
    Left = 576
    Top = 24
    object qryCustomerCUSTOMERID: TAutoIncField
      FieldName = 'CUSTOMERID'
      ReadOnly = True
    end
    object qryCustomerNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
  end
  object dtsCustomer: TDataSource
    AutoEdit = False
    DataSet = qryCustomer
    Left = 656
    Top = 24
  end
end
