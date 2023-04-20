inherited DMSysSubParams: TDMSysSubParams
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  object dsSFormAction: TDataSource
    AutoEdit = False
    DataSet = SFormAction
    OnStateChange = dsFormActionsStateChange
    Left = 368
    Top = 168
  end
  object dsFormActions: TDataSource
    AutoEdit = False
    DataSet = FormActions
    OnStateChange = dsFormActionsStateChange
    Left = 368
    Top = 24
  end
  object dsSForm: TDataSource
    AutoEdit = False
    DataSet = SForm
    OnStateChange = dsFormActionsStateChange
    Left = 368
    Top = 96
  end
  object FormActions: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    OnCalcFields = FormActionsCalcFields
    TableName = 'stFormActions'
    Left = 304
    Top = 24
    object FormActionsId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object FormActionsFormID: TIntegerField
      FieldName = 'FormID'
    end
    object FormActionsLForm: TStringField
      DisplayLabel = #934#972#961#956#945
      FieldKind = fkLookup
      FieldName = 'LUFormID'
      LookupDataSet = DForm
      LookupKeyFields = 'Id'
      LookupResultField = 'Perig'
      KeyFields = 'FormID'
      Lookup = True
    end
    object FormActionsAction: TWideStringField
      FieldName = 'Action'
      Size = 50
    end
    object FormActionsSubParam: TIntegerField
      FieldName = 'SubParam'
    end
    object FormActionsText: TWideStringField
      FieldName = 'Text'
      Size = 50
    end
    object FormActionsCFormActionSubParam: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFormActionSubParam'
      Calculated = True
    end
  end
  object SForm: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableName = 'stSForm'
    Left = 304
    Top = 96
    object SFormLForm: TStringField
      DisplayLabel = #934#972#961#956#945
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'LForm'
      LookupDataSet = DForm
      LookupKeyFields = 'Id'
      LookupResultField = 'Perig'
      KeyFields = 'Form_Id'
      LookupCache = True
      Size = 30
      Lookup = True
    end
    object SFormLGroup: TStringField
      DisplayLabel = 'Group'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'LGroup'
      LookupDataSet = UGroup
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'Group_Id'
      LookupCache = True
      Size = 30
      Lookup = True
    end
    object SFormForm_Id: TIntegerField
      FieldName = 'Form_Id'
    end
    object SFormGroup_Id: TIntegerField
      FieldName = 'Group_Id'
    end
  end
  object SFormAction: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableName = 'stSFormAction'
    Left = 304
    Top = 168
    object SFormActionLGroup: TStringField
      DisplayLabel = 'Group'
      FieldKind = fkLookup
      FieldName = 'LuGroup_Id'
      LookupDataSet = UGroup
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'UGroup_Id'
      LookupCache = True
      Lookup = True
    end
    object SFormActionLAction: TStringField
      DisplayLabel = 'Action'
      FieldKind = fkLookup
      FieldName = 'LuAction_Id'
      LookupDataSet = FormActions
      LookupKeyFields = 'Id'
      LookupResultField = 'CFormActionSubParam'
      KeyFields = 'Action_Id'
      LookupCache = True
      Size = 40
      Lookup = True
    end
    object SFormActionAction_Id: TIntegerField
      FieldName = 'Action_Id'
    end
    object SFormActionUGroup_Id: TIntegerField
      FieldName = 'UGroup_Id'
    end
    object SFormActionAllowed: TBooleanField
      FieldName = 'Allowed'
    end
  end
  object dsFpass: TDataSource
    AutoEdit = False
    DataSet = FPass
    OnStateChange = dsFormActionsStateChange
    Left = 88
    Top = 16
  end
  object dsUGroup: TDataSource
    AutoEdit = False
    DataSet = UGroup
    OnStateChange = dsFormActionsStateChange
    Left = 88
    Top = 88
  end
  object dsDForm: TDataSource
    AutoEdit = False
    DataSet = DForm
    OnStateChange = dsFormActionsStateChange
    Left = 88
    Top = 160
  end
  object FPass: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    IndexName = 'FPass_Login'
    TableName = 'stFPass'
    Left = 24
    Top = 16
    object FPassId: TIntegerField
      FieldName = 'Id'
    end
    object FPassLogin: TWideStringField
      FieldName = 'Login'
      Size = 30
    end
    object FPassPasswd: TWideStringField
      FieldName = 'Passwd'
    end
    object FPassGroup: TSmallintField
      FieldName = 'Group'
    end
    object FPassName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object FPassAddress: TWideStringField
      FieldName = 'Address'
      Size = 50
    end
    object FPassEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object FPassPhone: TWideStringField
      FieldName = 'Phone'
      Size = 30
    end
    object FPassConn_Time: TFloatField
      FieldName = 'Conn_Time'
    end
    object FPassValid_Till: TDateTimeField
      FieldName = 'Valid_Till'
    end
    object FPassStath: TIntegerField
      FieldName = 'Stath'
    end
    object FPassDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object FPassDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object FPassDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object FPassInActive: TBooleanField
      FieldName = 'InActive'
    end
    object FPassInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object FPassInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object FPassMaint_Log: TBooleanField
      FieldName = 'Maint_Log'
    end
    object FPassCheck_Serial: TBooleanField
      FieldName = 'Check_Serial'
    end
    object FPassSerial1: TIntegerField
      FieldName = 'Serial1'
    end
    object FPassSerial2: TIntegerField
      FieldName = 'Serial2'
    end
    object FPassSerial3: TIntegerField
      FieldName = 'Serial3'
    end
  end
  object UGroup: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableName = 'stUGroup'
    Left = 24
    Top = 88
    object UGroupId: TSmallintField
      FieldName = 'Id'
    end
    object UGroupName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object UGroupInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object UGroupInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object UGroupUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object UGroupUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object UGroupDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object UGroupDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object UGroupDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object UGroupInActive: TBooleanField
      FieldName = 'InActive'
    end
    object UGroupInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object UGroupInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object DForm: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableName = 'stDForm'
    Left = 24
    Top = 160
    object DFormId: TIntegerField
      FieldName = 'Id'
    end
    object DFormName: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
    object DFormPerig: TWideStringField
      FieldName = 'Perig'
      Size = 50
    end
    object DFormUnit_Name: TWideStringField
      FieldName = 'Unit_Name'
      Size = 50
    end
    object DFormForm_Name: TWideStringField
      FieldName = 'Form_Name'
      Size = 50
    end
    object DFormVersion: TWideStringField
      FieldName = 'Version'
      Size = 10
    end
    object DFormLast_Updated: TDateTimeField
      FieldName = 'Last_Updated'
    end
    object DFormComments: TWideMemoField
      FieldName = 'Comments'
      BlobType = ftWideMemo
    end
    object DFormHelpID: TWideStringField
      FieldName = 'HelpID'
      Size = 10
    end
    object DFormMTGroup: TIntegerField
      FieldName = 'MTGroup'
    end
    object DFormAncestorForm: TWideStringField
      FieldName = 'AncestorForm'
      Size = 30
    end
    object DFormSecurityName: TWideStringField
      FieldName = 'SecurityName'
      Size = 30
    end
    object DFormDataSourceName: TWideStringField
      FieldName = 'DataSourceName'
      Size = 30
    end
    object DFormDataModule: TWideStringField
      FieldName = 'DataModule'
      Size = 30
    end
  end
  object dsTableIds: TDataSource
    AutoEdit = False
    DataSet = TableIds
    OnStateChange = dsFormActionsStateChange
    Left = 608
    Top = 24
  end
  object TableIds: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableDirect = True
    TableName = 'TableIds'
    Left = 544
    Top = 24
    object TableIdsAAAAA: TAutoIncField
      FieldName = 'AAAAA'
      ReadOnly = True
    end
    object TableIdsTABLENAME: TWideStringField
      FieldName = 'TABLENAME'
      Size = 30
    end
    object TableIdsNUM: TIntegerField
      FieldName = 'NUM'
    end
  end
  object Log: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableName = 'stLog'
    Left = 24
    Top = 232
    object Logid: TIntegerField
      FieldName = 'id'
    end
    object LogUsr_id: TIntegerField
      FieldName = 'Usr_id'
    end
    object LogLogDate: TDateTimeField
      FieldName = 'LogDate'
    end
    object LogForm_id: TWideStringField
      FieldName = 'Form_id'
      Size = 30
    end
    object LogLogAA: TSmallintField
      FieldName = 'LogAA'
    end
    object LogLogTimeIn: TDateTimeField
      FieldName = 'LogTimeIn'
    end
    object LogLogTimeOut: TDateTimeField
      FieldName = 'LogTimeOut'
    end
  end
  object dsLog: TDataSource
    AutoEdit = False
    DataSet = Log
    OnStateChange = dsFormActionsStateChange
    Left = 88
    Top = 232
  end
  object TableFields: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableName = 'stTableFields'
    Left = 24
    Top = 304
    object TableFieldsId: TIntegerField
      FieldName = 'Id'
    end
    object TableFieldsTable_Id: TIntegerField
      FieldName = 'Table_Id'
    end
    object TableFieldsLuTable_Id: TStringField
      FieldKind = fkLookup
      FieldName = 'LuTable_Id'
      LookupDataSet = Tables
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'Table_Id'
      Size = 40
      Lookup = True
    end
    object TableFieldsAA: TIntegerField
      FieldName = 'AA'
    end
    object TableFieldsField_Name: TWideStringField
      FieldName = 'Field_Name'
      Size = 50
    end
    object TableFieldsDisplay_Name: TWideStringField
      FieldName = 'Display_Name'
      Size = 50
    end
    object TableFieldsDisplay_Format: TWideStringField
      FieldName = 'Display_Format'
      FixedChar = True
    end
    object TableFieldsEdit_Format: TWideStringField
      FieldName = 'Edit_Format'
      FixedChar = True
    end
    object TableFieldsVisible: TBooleanField
      FieldName = 'Visible'
    end
    object TableFieldsReadOnly: TBooleanField
      FieldName = 'ReadOnly'
    end
    object TableFieldsLookUp: TWideStringField
      FieldName = 'LookUp'
      Size = 50
    end
    object TableFieldsInSearch: TBooleanField
      FieldName = 'InSearch'
    end
    object TableFieldsInSearchResult: TBooleanField
      FieldName = 'InSearchResult'
    end
    object TableFieldsInFilter: TBooleanField
      FieldName = 'InFilter'
    end
    object TableFieldsFieldType: TWideStringField
      FieldName = 'FieldType'
      Size = 50
    end
    object TableFieldsAutoGen: TBooleanField
      FieldName = 'AutoGen'
    end
  end
  object dsTableFields: TDataSource
    AutoEdit = False
    DataSet = TableFields
    OnStateChange = dsFormActionsStateChange
    Left = 88
    Top = 304
  end
  object Tables: TADOTable
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableName = 'stTables'
    Left = 24
    Top = 376
    object TablesId: TIntegerField
      FieldName = 'Id'
    end
    object TablesName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object dsTables: TDataSource
    AutoEdit = False
    DataSet = Tables
    OnStateChange = dsFormActionsStateChange
    Left = 88
    Top = 376
  end
  object TblChanges: TADOTable
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    MaxRecords = 1000
    BeforePost = GenBeforePost
    IndexName = 'FPass_Login'
    TableName = 'TblChanges'
    Left = 536
    Top = 176
    object TblChangesgid: TGuidField
      FieldName = 'gid'
      FixedChar = True
      Size = 38
    end
    object TblChangesTableId: TIntegerField
      FieldName = 'TableId'
    end
    object TblChangesField: TIntegerField
      FieldName = 'Field'
    end
    object TblChangesInsertion: TBooleanField
      FieldName = 'Insertion'
    end
    object TblChangesDateTime: TDateTimeField
      FieldName = 'DateTime'
    end
    object TblChangesPrimKey: TIntegerField
      FieldName = 'PrimKey'
    end
    object TblChangesPrimGui: TGuidField
      FieldName = 'PrimGui'
      FixedChar = True
      Size = 38
    end
    object TblChangesUserId: TIntegerField
      FieldName = 'UserId'
    end
    object TblChangesForm: TIntegerField
      FieldName = 'Form'
    end
    object TblChangesType: TIntegerField
      FieldName = 'Type'
    end
    object TblChangesValueOld: TWideMemoField
      FieldName = 'ValueOld'
      BlobType = ftWideMemo
    end
    object TblChangesValueNew: TWideMemoField
      FieldName = 'ValueNew'
      BlobType = ftWideMemo
    end
    object TblChangesLTable: TStringField
      FieldKind = fkLookup
      FieldName = 'LTable'
      LookupDataSet = TableNames
      LookupKeyFields = 'id'
      LookupResultField = 'TableName'
      KeyFields = 'TableId'
      Lookup = True
    end
    object TblChangesLField: TStringField
      FieldKind = fkLookup
      FieldName = 'LField'
      LookupDataSet = FieldNames
      LookupKeyFields = 'id'
      LookupResultField = 'FieldName'
      KeyFields = 'Field'
      Lookup = True
    end
    object TblChangesLUsr: TStringField
      FieldKind = fkLookup
      FieldName = 'LUsr'
      LookupDataSet = stFPass
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'UserId'
      Lookup = True
    end
  end
  object dsTblChanges: TDataSource
    AutoEdit = False
    DataSet = TblChanges
    OnStateChange = dsFormActionsStateChange
    Left = 616
    Top = 176
  end
  object TableNames: TADOTable
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    IndexName = 'FPass_Login'
    TableName = 'TableNames'
    Left = 528
    Top = 256
    object TableNamesid: TIntegerField
      FieldName = 'id'
    end
    object TableNamesTableName: TWideStringField
      FieldName = 'TableName'
      FixedChar = True
      Size = 50
    end
    object TableNamesTableOrNot: TBooleanField
      FieldName = 'TableOrNot'
    end
    object TableNamesType: TIntegerField
      FieldName = 'Type'
    end
    object TableNamesBracketed: TBooleanField
      FieldName = 'Bracketed'
    end
    object TableNamesLogChanges: TBooleanField
      FieldName = 'LogChanges'
    end
    object TableNamesPhysicalDelete: TBooleanField
      FieldName = 'PhysicalDelete'
    end
    object TableNamesDescription: TWideStringField
      FieldName = 'Description'
      Size = 150
    end
  end
  object dsTableNames: TDataSource
    AutoEdit = False
    DataSet = TableNames
    OnStateChange = dsFormActionsStateChange
    Left = 608
    Top = 256
  end
  object FieldNames: TADOTable
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    TableName = 'FieldNames'
    Left = 528
    Top = 336
    object FieldNamesLTable: TStringField
      FieldKind = fkLookup
      FieldName = 'LTable'
      LookupDataSet = TableNames
      LookupKeyFields = 'id'
      LookupResultField = 'TableName'
      KeyFields = 'TableId'
      Lookup = True
    end
    object FieldNamesid: TIntegerField
      FieldName = 'id'
    end
    object FieldNamesTableId: TIntegerField
      FieldName = 'TableId'
    end
    object FieldNamesFieldName: TWideStringField
      FieldName = 'FieldName'
      FixedChar = True
      Size = 50
    end
    object FieldNamesDescription: TWideStringField
      FieldName = 'Description'
      FixedChar = True
      Size = 150
    end
    object FieldNamesType: TWideStringField
      FieldName = 'Type'
      FixedChar = True
    end
    object FieldNamesCheckChanges: TBooleanField
      FieldName = 'CheckChanges'
    end
    object FieldNamesLabel: TWideStringField
      FieldName = 'Label'
      FixedChar = True
      Size = 50
    end
    object FieldNamesRequired: TBooleanField
      FieldName = 'Required'
    end
    object FieldNamesGridOrder: TIntegerField
      FieldName = 'GridOrder'
    end
    object FieldNamesVisible: TBooleanField
      FieldName = 'Visible'
    end
    object FieldNamesVisibleForCust: TBooleanField
      FieldName = 'VisibleForCust'
    end
    object FieldNamesWidth: TIntegerField
      FieldName = 'Width'
    end
    object FieldNamesMinWidth: TIntegerField
      FieldName = 'MinWidth'
    end
    object FieldNamesBestFitWidth: TIntegerField
      FieldName = 'BestFitWidth'
    end
    object FieldNamesGrouping: TBooleanField
      FieldName = 'Grouping'
    end
    object FieldNamesGroupingType: TIntegerField
      FieldName = 'GroupingType'
    end
    object FieldNamesGroupingOrder: TIntegerField
      FieldName = 'GroupingOrder'
    end
    object FieldNamesSortOrder: TIntegerField
      FieldName = 'SortOrder'
    end
    object FieldNamesSortIndes: TIntegerField
      FieldName = 'SortIndes'
    end
    object FieldNamesGroupFooters: TBooleanField
      FieldName = 'GroupFooters'
    end
  end
  object dsFieldNames: TDataSource
    AutoEdit = False
    DataSet = FieldNames
    OnStateChange = dsFormActionsStateChange
    Left = 608
    Top = 336
  end
  object stFPass: TADOTable
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    IndexName = 'FPass_Login'
    TableName = 'stFPass'
    Left = 272
    Top = 304
    object stFPassId: TIntegerField
      FieldName = 'Id'
    end
    object stFPassLogin: TWideStringField
      FieldName = 'Login'
      Size = 30
    end
    object stFPassPasswd: TWideStringField
      FieldName = 'Passwd'
    end
    object stFPassGroup: TSmallintField
      FieldName = 'Group'
    end
    object stFPassName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object stFPassAddress: TWideStringField
      FieldName = 'Address'
      Size = 50
    end
    object stFPassEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object stFPassPhone: TWideStringField
      FieldName = 'Phone'
      Size = 30
    end
    object stFPassConn_Time: TFloatField
      FieldName = 'Conn_Time'
    end
    object stFPassValid_Till: TDateTimeField
      FieldName = 'Valid_Till'
    end
    object stFPassStath: TIntegerField
      FieldName = 'Stath'
    end
    object stFPassDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object stFPassDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object stFPassDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object stFPassInActive: TBooleanField
      FieldName = 'InActive'
    end
    object stFPassInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object stFPassInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object stFPassMaint_Log: TBooleanField
      FieldName = 'Maint_Log'
    end
    object stFPassCheck_Serial: TBooleanField
      FieldName = 'Check_Serial'
    end
    object stFPassSerial1: TIntegerField
      FieldName = 'Serial1'
    end
    object stFPassSerial2: TIntegerField
      FieldName = 'Serial2'
    end
    object stFPassSerial3: TIntegerField
      FieldName = 'Serial3'
    end
  end
  object dsstFPass: TDataSource
    AutoEdit = False
    DataSet = stFPass
    OnStateChange = dsFormActionsStateChange
    Left = 360
    Top = 304
  end
end
