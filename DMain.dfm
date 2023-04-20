object DMMain: TDMMain
  OldCreateOrder = False
  OnCreate = DMMainCreate
  Height = 705
  Width = 875
  object dsFpass: TDataSource
    AutoEdit = False
    DataSet = FPass
    Left = 104
    Top = 136
  end
  object dsUGroup: TDataSource
    AutoEdit = False
    DataSet = UGroup
    Left = 104
    Top = 192
  end
  object DSQLFPASS: TDataSource
    AutoEdit = False
    Left = 448
    Top = 80
  end
  object dsDForm: TDataSource
    AutoEdit = False
    DataSet = DForm
    Left = 104
    Top = 256
  end
  object DSQLog: TDataSource
    AutoEdit = False
    DataSet = QLog
    Left = 584
    Top = 224
  end
  object DSQLogTill: TDataSource
    AutoEdit = False
    DataSet = QLogTill
    Left = 448
    Top = 320
  end
  object QFF: TQuery
    DatabaseName = 'AvinLeo'
    SQL.Strings = (
      
        'SELECT Fieldstatus.FORM, Fieldstatus.FIELD, Fieldstatus.PROC, Fi' +
        'eldstatus.VISIBLE, Fieldstatus.REQUIRED, Fieldstatus.[DEFAULT], ' +
        'Fieldstatus.SUBPROC, Fields.HelpID, Movementtype.Id, Fields.Name' +
        ',Fields.Tag, Fields.Type, Dform.DForm_Name'
      
        'FROM DForm Dform, Fields Fields, FieldStatus Fieldstatus, Moveme' +
        'ntType Movementtype'
      'WHERE  (Dform.ID = Fields.FORM)  '
      '   AND  (Fields.FORM = Fieldstatus.FORM)  '
      '   AND  (Fields.ID = Fieldstatus.FIELD)  '
      '   AND  (Fieldstatus.PROC = Movementtype.Id)  '
      '   AND  (DForm.DForm_Name           = :FormName)'
      '  AND   (MovementType.ID = :MTID)'
      ' ')
    Left = 656
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'FormName'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'MTID'
        ParamType = ptUnknown
      end>
    object QFFFORM: TIntegerField
      FieldName = 'FORM'
    end
    object QFFFIELD: TIntegerField
      FieldName = 'FIELD'
    end
    object QFFPROC: TIntegerField
      FieldName = 'PROC'
    end
    object QFFVISIBLE: TBooleanField
      FieldName = 'VISIBLE'
    end
    object QFFREQUIRED: TBooleanField
      FieldName = 'REQUIRED'
    end
    object QFFDEFAULT: TStringField
      FieldName = 'DEFAULT'
      Size = 50
    end
    object QFFSUBPROC: TStringField
      FieldName = 'SUBPROC'
    end
    object QFFHelpID: TStringField
      FieldName = 'HelpID'
      Size = 10
    end
    object QFFTag: TIntegerField
      FieldName = 'Tag'
    end
    object QFFType: TStringField
      FieldName = 'Type'
      Size = 50
    end
    object QFFDForm_Name: TStringField
      FieldName = 'DForm_Name'
    end
    object QFFName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object QFFId: TIntegerField
      FieldName = 'Id'
    end
  end
  object dsFormField: TDataSource
    DataSet = QFormField
    Left = 728
    Top = 120
  end
  object dsSFormAction: TDataSource
    AutoEdit = False
    DataSet = SFormAction
    Left = 104
    Top = 424
  end
  object dsFormActions: TDataSource
    AutoEdit = False
    DataSet = FormActions
    Left = 120
    Top = 376
  end
  object dsSForm: TDataSource
    AutoEdit = False
    DataSet = SForm
    Left = 104
    Top = 312
  end
  object dsLocking: TDataSource
    AutoEdit = False
    Left = 104
    Top = 480
  end
  object ADOConnection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=130368;Persist Security Info=True;U' +
      'ser ID=sa;Initial Catalog=GateKeeper2;Data Source=KAPASSLE\New20' +
      '16;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4' +
      '096;Workstation ID=KAPASAKA-XVURZM;Use Encryption for Data=False' +
      ';Tag with column collation when possible=False'
    ConnectOptions = coAsyncConnect
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    AfterConnect = ADOConnectionAfterConnect
    BeforeConnect = ADOConnectionBeforeConnect
    OnExecuteComplete = ADOConnectionExecuteComplete
    Left = 40
    Top = 24
  end
  object FPass: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    TableName = 'stFPass'
    Left = 40
    Top = 136
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
  object tTableIds: TADOTable
    Connection = ADOConnection
    CursorType = ctDynamic
    TableName = 'TableIds'
    Left = 40
    Top = 80
    object tTableIdsAAAAA: TAutoIncField
      FieldName = 'AAAAA'
    end
    object tTableIdsTABLENAME: TWideStringField
      FieldName = 'TABLENAME'
      Size = 30
    end
    object tTableIdsNUM: TIntegerField
      FieldName = 'NUM'
    end
  end
  object UGroup: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    BeforePost = UGroupBeforePost
    TableName = 'stUGroup'
    Left = 40
    Top = 192
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
    Connection = ADOConnection
    CursorType = ctStatic
    BeforePost = tFieldStatusBeforePost
    TableName = 'stDForm'
    Left = 40
    Top = 256
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
  object Log: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    BeforePost = tFpassBeforePost
    TableName = 'stLog'
    Left = 216
    Top = 240
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
  object QFormField: TADOQuery
    Connection = ADOConnection
    ParamCheck = False
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT ID, FORM, Name, Descr, Type, Tag, HelpID'
      'FROM Fields Fields'
      'Where Form = :ID')
    Left = 656
    Top = 120
  end
  object QUpdLog: TADOQuery
    Connection = ADOConnection
    Parameters = <
      item
        Name = 'Code'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'DDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'AA'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Module'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'TimeIn'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'TimeOut'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'Insert Into Log ( LogName , LogDate, LogAA, Log_Module, LogTimeI' +
        'n, LogTimeOut)'
      'Values ( :Code , :DDate, :AA, :Module, :TimeIn, :TimeOut);')
    Left = 528
    Top = 272
  end
  object QLFPASS: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PLogin'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end
      item
        Name = 'PPass'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM stFPass '
      'Where Login = :PLogin'
      'AND     Passwd =  :PPass')
    Left = 216
    Top = 32
    object QLFPASSId: TIntegerField
      FieldName = 'Id'
    end
    object QLFPASSLogin: TWideStringField
      FieldName = 'Login'
      Size = 30
    end
    object QLFPASSPasswd: TWideStringField
      FieldName = 'Passwd'
    end
    object QLFPASSGroup: TSmallintField
      FieldName = 'Group'
    end
    object QLFPASSName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object QLFPASSAddress: TWideStringField
      FieldName = 'Address'
      Size = 50
    end
    object QLFPASSEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object QLFPASSPhone: TWideStringField
      FieldName = 'Phone'
      Size = 30
    end
    object QLFPASSConn_Time: TFloatField
      FieldName = 'Conn_Time'
    end
    object QLFPASSValid_Till: TDateTimeField
      FieldName = 'Valid_Till'
    end
    object QLFPASSStath: TIntegerField
      FieldName = 'Stath'
    end
    object QLFPASSDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object QLFPASSDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object QLFPASSDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object QLFPASSInActive: TBooleanField
      FieldName = 'InActive'
    end
    object QLFPASSInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object QLFPASSInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object QLFPASSMaint_Log: TBooleanField
      FieldName = 'Maint_Log'
    end
    object QLFPASSCheck_Serial: TBooleanField
      FieldName = 'Check_Serial'
    end
    object QLFPASSSerial1: TIntegerField
      FieldName = 'Serial1'
    end
    object QLFPASSSerial2: TIntegerField
      FieldName = 'Serial2'
    end
    object QLFPASSSerial3: TIntegerField
      FieldName = 'Serial3'
    end
  end
  object InsFields: TADOQuery
    Connection = ADOConnection
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'FORM'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Name'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Descr'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Type'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Tag'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'HelpID'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'insert into Fields'
      '  (ID, FORM, Name, Descr, Type, Tag, HelpID)'
      'values'
      '  (ID, FORM, Name, Descr, Type, Tag, HelpID)')
    Left = 728
    Top = 32
  end
  object QFindFormID: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Name'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'Select Id '
      'From stDForm'
      'Where Name = :Name')
    Left = 216
    Top = 104
    object QFindFormIDId: TIntegerField
      FieldName = 'Id'
    end
  end
  object QFindFormName: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'Select Name'
      'From stDForm'
      'Where  Id = :Id')
    Left = 216
    Top = 160
    object QFindFormNameName: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
  end
  object QUPDSER1: TADOQuery
    Connection = ADOConnection
    ExecuteOptions = [eoExecuteNoRecords]
    Parameters = <
      item
        Name = 'PSerial'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'PLogin'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'PPass'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE  FPass'
      ' Set '
      '  FPass_Serial1 = :PSerial'
      'Where FPass_Login = :PLogin'
      'AND    FPass_Pass = :PPass')
    Left = 536
    Top = 24
  end
  object QUPDSER2: TADOQuery
    Connection = ADOConnection
    ExecuteOptions = [eoExecuteNoRecords]
    Parameters = <
      item
        Name = 'PSerial'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'PLogin'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'PPass'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'UPDATE  FPass'
      ' Set '
      '  FPass_Serial2 = :PSerial'
      'Where FPass_Login = :PLogin'
      'AND    FPass_Pass = :PPass')
    Left = 536
    Top = 72
  end
  object QUPDSER3: TADOQuery
    Connection = ADOConnection
    ExecuteOptions = [eoExecuteNoRecords]
    Parameters = <
      item
        Name = 'PSerial'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'PLogin'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'PPass'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE  FPass'
      ' Set '
      '  FPass_Serial3 = PSerial'
      'Where FPass_Login = PLogin'
      'AND    FPass_Pass = PPass')
    Left = 536
    Top = 120
  end
  object QLSForm: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PForm'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PGroup'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM stSForm'
      'WHERE Form_id   = :PForm'
      'AND     Group_id  = :PGroup')
    Left = 592
    Top = 272
    object QLSFormForm_Id: TIntegerField
      FieldName = 'Form_Id'
    end
    object QLSFormGroup_Id: TIntegerField
      FieldName = 'Group_Id'
    end
  end
  object QLSFForm: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PName'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'Select * from stDForm '
      'Where Name = :PName')
    Left = 216
    Top = 304
    object QLSFFormId: TIntegerField
      FieldName = 'Id'
    end
    object QLSFFormName: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
    object QLSFFormPerig: TWideStringField
      FieldName = 'Perig'
      Size = 50
    end
    object QLSFFormUnit_Name: TWideStringField
      FieldName = 'Unit_Name'
      Size = 50
    end
    object QLSFFormForm_Name: TWideStringField
      FieldName = 'Form_Name'
      Size = 50
    end
    object QLSFFormVersion: TWideStringField
      FieldName = 'Version'
      Size = 10
    end
    object QLSFFormLast_Updated: TDateTimeField
      FieldName = 'Last_Updated'
    end
    object QLSFFormComments: TWideMemoField
      FieldName = 'Comments'
      BlobType = ftWideMemo
    end
    object QLSFFormHelpID: TWideStringField
      FieldName = 'HelpID'
      Size = 10
    end
    object QLSFFormMTGroup: TIntegerField
      FieldName = 'MTGroup'
    end
  end
  object QFindSAF: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PFormAction'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = 'All'
      end
      item
        Name = 'PFormGroup'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PFormID'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 405
      end>
    SQL.Strings = (
      
        'SELECT     stSFormAction.Allowed, stFormActions.Action, stSFormA' +
        'ction.UGroup_Id, stFormActions.FormID'
      'FROM         stFormActions INNER JOIN'
      
        '                   stSFormAction ON stFormActions.Id = stSFormAc' +
        'tion.Action_Id'
      'WHERE     (stFormActions.Action = :PFormAction ) '
      'AND (stSFormAction.UGroup_Id = :PFormGroup ) '
      'AND (stFormActions.FormID = :PFormID)')
    Left = 536
    Top = 168
    object QFindSAFAllowed: TBooleanField
      FieldName = 'Allowed'
    end
    object QFindSAFAction: TWideStringField
      FieldName = 'Action'
      Size = 50
    end
    object QFindSAFUGroup_Id: TIntegerField
      FieldName = 'UGroup_Id'
    end
    object QFindSAFFormID: TIntegerField
      FieldName = 'FormID'
    end
  end
  object QUpdateFormAction: TADOQuery
    Connection = ADOConnection
    ExecuteOptions = [eoExecuteNoRecords]
    Parameters = <
      item
        Name = 'PFormId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PAction'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'PSubParam'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PText'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'insert into stFormActions'
      '  (FormId, Action, SubParam, Text)'
      'values'
      '  (:PFormId, :PAction, :PSubParam, :PText)')
    Left = 40
    Top = 560
  end
  object QLog: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PFPassLogin'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'PLogDateFrom'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'PLogDateTo'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT LogDate , LogAA , LogTimeIn , LogTimeOut , '
      ' FPass_Login , FPass_Name , DForm_Name , '
      ' DForm_Perig'
      'FROM Log Log , FPass FPass , '
      ' DForm DForm'
      'WHERE ( Log.LogName = FPass.FPass_Login )'
      '  AND'
      ' (  Log.Log_Module = DForm.DForm_Name )'
      '  AND'
      ' ( FPass.FPass_Login = :PFPassLogin )'
      '  AND'
      ' (  Log.LogDate >= :PLogDateFrom )'
      '  AND'
      ' (  Log.LogDate <= :PLogDateTo )'
      'Order  By  LogDate ')
    Left = 520
    Top = 224
    object QLogLogDate: TDateTimeField
      FieldName = 'LogDate'
    end
    object QLogLogAA: TSmallintField
      FieldName = 'LogAA'
    end
    object QLogLogTimeIn: TDateTimeField
      FieldName = 'LogTimeIn'
    end
    object QLogLogTimeOut: TDateTimeField
      FieldName = 'LogTimeOut'
    end
    object QLogFPass_Login: TWideStringField
      FieldName = 'FPass_Login'
      Size = 10
    end
    object QLogFPass_Name: TWideStringField
      FieldName = 'FPass_Name'
      Size = 50
    end
    object QLogDForm_Name: TWideStringField
      FieldName = 'DForm_Name'
    end
    object QLogDForm_Perig: TWideStringField
      FieldName = 'DForm_Perig'
      Size = 50
    end
  end
  object QLogTill: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PTillDateFrom'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'PTillDateTo'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'SELECT FPass_Login , FPass_Name , FPass_Address , '
      ' FPass_EMAIL , FPass_Phone , FPass_Time , '
      ' FPass_Valid_Till , UGroup_Name , '
      ' FPass_Key'
      'FROM FPass FPass , UGroup UGroup'
      'WHERE ( FPass.FPass_Group = UGroup.UGroup_Code )'
      'AND ( FPass.FPass_Valid_Till >= :PTillDateFrom ) '
      'AND ( FPass.FPass_Valid_Till <= :PTillDateTo ) ')
    Left = 384
    Top = 320
    object QLogTillFPass_Login: TWideStringField
      FieldName = 'FPass_Login'
      Size = 10
    end
    object QLogTillFPass_Name: TWideStringField
      FieldName = 'FPass_Name'
      Size = 50
    end
    object QLogTillFPass_Address: TWideStringField
      FieldName = 'FPass_Address'
      Size = 50
    end
    object QLogTillFPass_EMAIL: TWideStringField
      FieldName = 'FPass_EMAIL'
      Size = 50
    end
    object QLogTillFPass_Phone: TWideStringField
      FieldName = 'FPass_Phone'
      Size = 30
    end
    object QLogTillFPass_Time: TFloatField
      FieldName = 'FPass_Time'
    end
    object QLogTillFPass_Valid_Till: TDateTimeField
      FieldName = 'FPass_Valid_Till'
    end
    object QLogTillUGroup_Name: TWideStringField
      FieldName = 'UGroup_Name'
      Size = 30
    end
    object QLogTillFPass_Key: TIntegerField
      FieldName = 'FPass_Key'
    end
  end
  object FormActions: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    BeforePost = FormActionsBeforePost
    OnCalcFields = FormActionsCalcFields
    TableName = 'FormAction'
    Left = 40
    Top = 376
    object FormActionsFormActionID: TIntegerField
      FieldName = 'FormActionID'
    end
    object FormActionsFormActionFormID: TIntegerField
      FieldName = 'FormActionFormID'
    end
    object FormActionsFormActionAction: TWideStringField
      FieldName = 'FormActionAction'
    end
    object FormActionsFormActionText: TWideStringField
      FieldName = 'FormActionText'
      Size = 30
    end
  end
  object SForm: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    TableName = 'SForm'
    Left = 40
    Top = 312
    object SFormSForm_Form: TIntegerField
      FieldName = 'SForm_Form'
    end
    object SFormSForm_Group: TIntegerField
      FieldName = 'SForm_Group'
    end
  end
  object SFormAction: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    TableName = 'stSFormAction'
    Left = 40
    Top = 424
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
  object qExec: TADOQuery
    Connection = ADOConnection
    Parameters = <>
    Left = 312
    Top = 24
  end
  object qSelectPrt: TADOQuery
    Connection = ADOConnection
    Parameters = <>
    Left = 448
    Top = 32
  end
  object LockIng: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    TableName = 'stLocking'
    Left = 40
    Top = 480
    object LockIngTableName: TWideStringField
      FieldName = 'TableName'
      Size = 50
    end
    object LockIngKeyValue: TWideStringField
      FieldName = 'KeyValue'
      Size = 50
    end
    object LockIngRef_User_Id: TIntegerField
      FieldName = 'Ref_User_Id'
    end
    object LockIngTTime: TDateTimeField
      FieldName = 'TTime'
    end
    object LockIngRef_Form_id: TIntegerField
      FieldName = 'Ref_Form_id'
    end
  end
  object QLogUpd: TADOQuery
    Connection = ADOConnection
    Parameters = <
      item
        Name = 'PFPassLogin'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'PLogDateFrom'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'PLogDateTo'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Delete'
      'FROM Log'
      'WHERE '
      ' ( Log.LogName = :PFPassLogin )'
      '  AND'
      ' (  Log.LogDate >= :PLogDateFrom )'
      '  AND'
      ' (  Log.LogDate <= :PLogDateTo )')
    Left = 581
    Top = 320
  end
  object QInsVarMain: TADOQuery
    Connection = ADOConnection
    Parameters = <
      item
        Name = 'id'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Name'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'Perig'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'FormId'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'insert into VariantsMain'
      '  (id, Name, Perig, FormId)'
      'values'
      '  (:id, :Name, :Perig, :FormId)')
    Left = 656
    Top = 176
  end
  object QInsVarDetail: TADOQuery
    Connection = ADOConnection
    Parameters = <
      item
        Name = 'Id'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'FieldName'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'FieldType'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'FieldValue'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'insert into VariantsDetail'
      '  (Id, FieldName, FieldType, FieldValue)'
      'values'
      '  (:Id, :FieldName, :FieldType, :FieldValue)')
    Left = 728
    Top = 176
  end
  object QVariantsDetails: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    DataSource = dsVariants
    Parameters = <
      item
        Name = 'PId'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Select * '
      'From VariantsDetail'
      'Where id = :PId')
    Left = 736
    Top = 448
    object QVariantsDetailsId: TIntegerField
      FieldName = 'Id'
    end
    object QVariantsDetailsFieldName: TWideStringField
      FieldName = 'FieldName'
      Size = 30
    end
    object QVariantsDetailsFieldType: TIntegerField
      FieldName = 'FieldType'
    end
    object QVariantsDetailsFieldValue: TWideStringField
      FieldName = 'FieldValue'
    end
  end
  object QVariantsMain: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PFormId'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Select * '
      'From VariantsMain'
      'Where FormId = :PFormId')
    Left = 672
    Top = 464
    object QVariantsMainid: TIntegerField
      FieldName = 'id'
    end
    object QVariantsMainName: TWideStringField
      FieldName = 'Name'
    end
    object QVariantsMainPerig: TWideStringField
      FieldName = 'Perig'
      Size = 50
    end
    object QVariantsMainFormId: TIntegerField
      FieldName = 'FormId'
    end
  end
  object dsVariants: TDataSource
    DataSet = QVariantsMain
    Left = 728
    Top = 512
  end
  object dsTables: TDataSource
    AutoEdit = False
    DataSet = Tables
    Left = 256
    Top = 392
  end
  object Tables: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    BeforePost = tFieldStatusBeforePost
    TableName = 'stTables'
    Left = 192
    Top = 392
    object TablesId: TIntegerField
      FieldName = 'Id'
    end
    object TablesName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object dsTableFields: TDataSource
    AutoEdit = False
    DataSet = TableFields
    Left = 256
    Top = 456
  end
  object TableFields: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    BeforePost = tFieldStatusBeforePost
    TableName = 'stTableFields'
    Left = 192
    Top = 456
    object TableFieldsId: TIntegerField
      FieldName = 'Id'
    end
    object TableFieldsTable_Id: TIntegerField
      FieldName = 'Table_Id'
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
    object TableFieldsInFilter: TBooleanField
      FieldName = 'InFilter'
    end
    object TableFieldsFieldType: TWideStringField
      FieldName = 'FieldType'
      Size = 50
    end
    object TableFieldsAA: TIntegerField
      FieldName = 'AA'
    end
    object TableFieldsAutoGen: TBooleanField
      FieldName = 'AutoGen'
    end
    object TableFieldsInSearchResult: TBooleanField
      FieldName = 'InSearchResult'
    end
  end
  object SPstRetFormId: TADOStoredProc
    Connection = ADOConnection
    CursorType = ctStatic
    ProcedureName = 'stRetFormId;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@FormName'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end>
    Left = 356
    Top = 544
    object SPstRetFormIdId: TIntegerField
      FieldName = 'Id'
    end
    object SPstRetFormIdName: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
    object SPstRetFormIdPerig: TWideStringField
      FieldName = 'Perig'
      Size = 50
    end
    object SPstRetFormIdAncestorForm: TWideStringField
      FieldName = 'AncestorForm'
      Size = 30
    end
    object SPstRetFormIdSecurityName: TWideStringField
      FieldName = 'SecurityName'
      Size = 30
    end
    object SPstRetFormIdDataSourceName: TWideStringField
      FieldName = 'DataSourceName'
      Size = 30
    end
    object SPstRetFormIdDataModule: TWideStringField
      FieldName = 'DataModule'
      Size = 30
    end
  end
  object SPstRetFormName: TADOStoredProc
    Connection = ADOConnection
    CursorType = ctStatic
    ProcedureName = 'stRetFormName;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@FormId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 444
    Top = 544
    object SPstRetFormNameId: TIntegerField
      FieldName = 'Id'
    end
    object SPstRetFormNameName: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
    object SPstRetFormNamePerig: TWideStringField
      FieldName = 'Perig'
      Size = 50
    end
    object SPstRetFormNameAncestorForm: TWideStringField
      FieldName = 'AncestorForm'
      Size = 30
    end
    object SPstRetFormNameSecurityName: TWideStringField
      FieldName = 'SecurityName'
      Size = 30
    end
    object SPstRetFormNameDataSourceName: TWideStringField
      FieldName = 'DataSourceName'
      Size = 30
    end
    object SPstRetFormNameDataModule: TWideStringField
      FieldName = 'DataModule'
      Size = 30
    end
  end
  object SPstRetTable: TADOStoredProc
    Connection = ADOConnection
    CursorType = ctStatic
    ProcedureName = 'stRetTable;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@TableName'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end>
    Left = 520
    Top = 544
    object SPstRetTableId: TIntegerField
      FieldName = 'Id'
    end
  end
  object SPstRetTableFields: TADOStoredProc
    Connection = ADOConnection
    CursorType = ctStatic
    ProcedureName = 'stRetTableFields;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 598
    Top = 544
    object SPstRetTableFieldsField_Name: TWideStringField
      FieldName = 'Field_Name'
      Size = 50
    end
    object SPstRetTableFieldsDisplay_Name: TWideStringField
      FieldName = 'Display_Name'
      Size = 50
    end
    object SPstRetTableFieldsDisplay_Format: TWideStringField
      FieldName = 'Display_Format'
      FixedChar = True
    end
    object SPstRetTableFieldsEdit_Format: TWideStringField
      FieldName = 'Edit_Format'
      FixedChar = True
    end
    object SPstRetTableFieldsVisible: TBooleanField
      FieldName = 'Visible'
    end
    object SPstRetTableFieldsReadOnly: TBooleanField
      FieldName = 'ReadOnly'
    end
    object SPstRetTableFieldsLookUp: TWideStringField
      FieldName = 'LookUp'
      Size = 50
    end
    object SPstRetTableFieldsInSearch: TBooleanField
      FieldName = 'InSearch'
    end
    object SPstRetTableFieldsInFilter: TBooleanField
      FieldName = 'InFilter'
    end
    object SPstRetTableFieldsFieldType: TWideStringField
      FieldName = 'FieldType'
      Size = 50
    end
  end
  object QUpdateMenuAction: TADOQuery
    Connection = ADOConnection
    ExecuteOptions = [eoExecuteNoRecords]
    Parameters = <
      item
        Name = 'PId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'PName'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'PEmptyLeaf'
        Attributes = [paNullable]
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'PParentLeaf'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PCaption'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'PCategory'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'PHelpKeyword'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'POnExecute'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'insert into stMenu'
      
        '   (Id,Name,EmptyLeaf,ParentLeaf,Caption,Category,HelpKeyword,On' +
        'Execute)'
      'values'
      
        '   (:PId,:PName,:PEmptyLeaf,:PParentLeaf,:PCaption,:PCategory,:P' +
        'HelpKeyword,:POnExecute)'
      '')
    Left = 120
    Top = 560
  end
  object stTabFieldsSearch: TADOStoredProc
    Connection = ADOConnection
    CursorType = ctStatic
    ProcedureName = 'stTabFieldsSearch;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@TabName'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end>
    Left = 676
    Top = 544
    object stTabFieldsSearchField_Name: TWideStringField
      FieldName = 'Field_Name'
      Size = 50
    end
  end
  object SPCurDate: TADOStoredProc
    Connection = ADOConnection
    CursorType = ctStatic
    ProcedureName = 'curdate'
    Parameters = <>
    Left = 736
    Top = 272
    object SPCurDateCurrentDateTimeAbove: TDateTimeField
      FieldName = 'CurrentDateTimeAbove'
      ReadOnly = True
    end
  end
  object VCustomer: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    MarshalOptions = moMarshalModifiedOnly
    Parameters = <>
    SQL.Strings = (
      'Select * From VCustomer')
    Left = 296
    Top = 80
    object VCustomerCUSTOMERID: TAutoIncField
      FieldName = 'CUSTOMERID'
      ReadOnly = True
    end
    object VCustomerNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object VCustomerSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object VCustomerZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object VCustomerCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object VCustomerAFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object VCustomerDOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object VCustomerSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object VCustomerAREAID: TIntegerField
      FieldName = 'AREAID'
    end
    object VCustomerLOCATIONID: TIntegerField
      FieldName = 'LOCATIONID'
    end
    object VCustomerCGROUPID: TIntegerField
      FieldName = 'CGROUPID'
    end
    object VCustomerCCLASSID: TIntegerField
      FieldName = 'CCLASSID'
    end
    object VCustomerCREDITAMOUNT: TFloatField
      FieldName = 'CREDITAMOUNT'
    end
    object VCustomerINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object VCustomerUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object VCustomerINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object VCustomerUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object VCustomerPROFESSION: TWideStringField
      FieldName = 'PROFESSION'
      Size = 50
    end
    object VCustomerBRANCHID: TIntegerField
      FieldName = 'BRANCHID'
    end
    object VCustomerSAPCODE: TWideStringField
      FieldName = 'SAPCODE'
      Size = 10
    end
    object VCustomerISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object VCustomerSALESMENID: TIntegerField
      FieldName = 'SALESMENID'
    end
    object VCustomerDIAKID: TIntegerField
      FieldName = 'DIAKID'
    end
    object VCustomerISTEST: TBooleanField
      FieldName = 'ISTEST'
    end
    object VCustomerISCONS: TBooleanField
      FieldName = 'ISCONS'
    end
    object VCustomerAREABID: TIntegerField
      FieldName = 'AREABID'
    end
    object VCustomerDATEPHEND: TDateTimeField
      FieldName = 'DATEPHEND'
    end
    object VCustomerDATELOEND: TDateTimeField
      FieldName = 'DATELOEND'
    end
    object VCustomerHASDETAILEMP: TBooleanField
      FieldName = 'HASDETAILEMP'
    end
    object VCustomerALLCARDSTOBL: TBooleanField
      FieldName = 'ALLCARDSTOBL'
    end
    object VCustomerALLCARDSTOBLDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLDATE'
    end
    object VCustomerALLCARDSTOBLSYSDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLSYSDATE'
    end
    object VCustomerALLCARDSTOBLUSR: TIntegerField
      FieldName = 'ALLCARDSTOBLUSR'
    end
    object VCustomerCUSTOMEROFF: TBooleanField
      FieldName = 'CUSTOMEROFF'
    end
    object VCustomerCUSTOMEROFFDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFDATE'
    end
    object VCustomerCUSTOMEROFFSYSDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFSYSDATE'
    end
    object VCustomerCUSTOMEROFFUSR: TIntegerField
      FieldName = 'CUSTOMEROFFUSR'
    end
    object VCustomerCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object VCustomerDATEEND: TDateTimeField
      FieldName = 'DATEEND'
    end
    object VCustomerCompanyTypeId: TIntegerField
      FieldName = 'CompanyTypeId'
    end
  end
  object dsVCustomer: TDataSource
    AutoEdit = False
    DataSet = VCustomer
    Left = 352
    Top = 80
  end
  object SPstRetPopupFormName: TADOStoredProc
    Connection = ADOConnection
    CursorType = ctStatic
    ProcedureName = 'stRetPopupFormName'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@PopupFormName'
        DataType = ftWideString
        Size = 120
        Value = ' '
      end>
    Left = 276
    Top = 544
    object SPstRetPopupFormNamePopupFormId: TAutoIncField
      FieldName = 'PopupFormId'
      ReadOnly = True
    end
    object SPstRetPopupFormNamePopupFormName: TWideStringField
      FieldName = 'PopupFormName'
      Size = 120
    end
    object SPstRetPopupFormNameFormName: TWideStringField
      FieldName = 'FormName'
      Size = 120
    end
  end
  object stPopupForm: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    TableName = 'stPopupForm'
    Left = 354
    Top = 416
    object stPopupFormPopupFormId: TAutoIncField
      FieldName = 'PopupFormId'
      ReadOnly = True
    end
    object stPopupFormPopupFormName: TWideStringField
      FieldName = 'PopupFormName'
      Size = 30
    end
    object stPopupFormFormName: TWideStringField
      FieldName = 'FormName'
      Size = 30
    end
  end
  object VariantsCXMain: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    TableName = 'VariantsCXMain'
    Left = 448
    Top = 384
    object VariantsCXMainid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object VariantsCXMainName: TWideStringField
      FieldName = 'Name'
    end
    object VariantsCXMainPerig: TWideStringField
      FieldName = 'Perig'
      Size = 150
    end
    object VariantsCXMainClassFormName: TWideStringField
      FieldName = 'ClassFormName'
      Size = 100
    end
    object VariantsCXMainSetAsDefault: TBooleanField
      FieldName = 'SetAsDefault'
    end
    object VariantsCXMainSetAsUserDefault: TBooleanField
      FieldName = 'SetAsUserDefault'
    end
    object VariantsCXMainInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object VariantsCXMainInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object VariantsCXMainUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object VariantsCXMainUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object VariantsCXMainDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object VariantsCXMainDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object VariantsCXMainDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object VariantsCXMainVariantField: TBlobField
      FieldName = 'VariantField'
    end
  end
  object qVariantsCXMain: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PClassFormName'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 150
        Value = Null
      end>
    SQL.Strings = (
      'Select * '
      'From VariantsCxMain'
      'Where ClassFormName = :PClassFormName')
    Left = 448
    Top = 440
    object qVariantsCXMainid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qVariantsCXMainName: TWideStringField
      FieldName = 'Name'
    end
    object qVariantsCXMainPerig: TWideStringField
      FieldName = 'Perig'
      Size = 150
    end
    object qVariantsCXMainClassFormName: TWideStringField
      FieldName = 'ClassFormName'
      Size = 100
    end
    object qVariantsCXMainSetAsDefault: TBooleanField
      FieldName = 'SetAsDefault'
    end
    object qVariantsCXMainSetAsUserDefault: TBooleanField
      FieldName = 'SetAsUserDefault'
    end
    object qVariantsCXMainInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qVariantsCXMainInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qVariantsCXMainUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qVariantsCXMainUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qVariantsCXMainDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qVariantsCXMainDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qVariantsCXMainDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qVariantsCXMainVariantField: TBlobField
      FieldName = 'VariantField'
    end
  end
  object VariantsMemWsMain: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    TableName = 'VariantsMemWsMain'
    Left = 320
    Top = 144
    object VariantsMemWsMainid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object VariantsMemWsMainName: TWideStringField
      FieldName = 'Name'
    end
    object VariantsMemWsMainPerig: TWideStringField
      FieldName = 'Perig'
      Size = 150
    end
    object VariantsMemWsMainClassFormName: TWideStringField
      FieldName = 'ClassFormName'
      Size = 100
    end
    object VariantsMemWsMainInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object VariantsMemWsMainInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object VariantsMemWsMainUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object VariantsMemWsMainUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object VariantsMemWsMainDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object VariantsMemWsMainDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object VariantsMemWsMainDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object VariantsMemWsMainSubsequentAction: TWideStringField
      FieldName = 'SubsequentAction'
      Size = 50
    end
    object VariantsMemWsMainSubsequentComments: TWideStringField
      FieldName = 'SubsequentComments'
      Size = 100
    end
    object VariantsMemWsMainSubsequentMail: TWideStringField
      FieldName = 'SubsequentMail'
      Size = 50
    end
  end
  object qVariantsMemWsDetail: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PVariantId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * '
      'From VariantsMemWsDetail'
      'Where VariantId = :PVariantId')
    Left = 312
    Top = 224
    object qVariantsMemWsDetailId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qVariantsMemWsDetailVariantId: TIntegerField
      FieldName = 'VariantId'
    end
    object qVariantsMemWsDetailCalcAsValue: TBooleanField
      FieldName = 'CalcAsValue'
    end
    object qVariantsMemWsDetailFieldName: TWideStringField
      FieldName = 'FieldName'
      Size = 50
    end
    object qVariantsMemWsDetailFieldType: TIntegerField
      FieldName = 'FieldType'
    end
    object qVariantsMemWsDetailFieldValue: TWideStringField
      FieldName = 'FieldValue'
      Size = 150
    end
    object qVariantsMemWsDetailCalcType: TWideStringField
      FieldName = 'CalcType'
      Size = 250
    end
  end
  object qVariantsMemWsMain: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PClassFormName'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    SQL.Strings = (
      'Select * '
      'From VariantsMemWsMain'
      'Where ClassFormName = :PClassFormName')
    Left = 424
    Top = 224
    object qVariantsMemWsMainid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qVariantsMemWsMainName: TWideStringField
      FieldName = 'Name'
    end
    object qVariantsMemWsMainPerig: TWideStringField
      FieldName = 'Perig'
      Size = 150
    end
    object qVariantsMemWsMainClassFormName: TWideStringField
      FieldName = 'ClassFormName'
      Size = 100
    end
    object qVariantsMemWsMainInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qVariantsMemWsMainInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qVariantsMemWsMainUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qVariantsMemWsMainUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qVariantsMemWsMainDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qVariantsMemWsMainDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qVariantsMemWsMainDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qVariantsMemWsMainSubsequentAction: TWideStringField
      FieldName = 'SubsequentAction'
      Size = 50
    end
    object qVariantsMemWsMainSubsequentComments: TWideStringField
      FieldName = 'SubsequentComments'
      Size = 100
    end
    object qVariantsMemWsMainSubsequentMail: TWideStringField
      FieldName = 'SubsequentMail'
      Size = 50
    end
    object qVariantsMemWsMainSubsequentAutoClose: TBooleanField
      FieldName = 'SubsequentAutoClose'
    end
    object qVariantsMemWsMainSubsequentActivateTrans: TBooleanField
      FieldName = 'SubsequentActivateTrans'
    end
    object qVariantsMemWsMainSubsequentAutoExec: TBooleanField
      FieldName = 'SubsequentAutoExec'
    end
    object qVariantsMemWsMainSubsequentLogSection: TWideStringField
      FieldName = 'SubsequentLogSection'
      Size = 50
    end
  end
  object VariantsMemWsDetail: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    TableName = 'VariantsMemWsDetail'
    Left = 448
    Top = 144
    object VariantsMemWsDetailId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object VariantsMemWsDetailVariantId: TIntegerField
      FieldName = 'VariantId'
    end
    object VariantsMemWsDetailCalcAsValue: TBooleanField
      FieldName = 'CalcAsValue'
    end
    object VariantsMemWsDetailFieldName: TWideStringField
      FieldName = 'FieldName'
      Size = 50
    end
    object VariantsMemWsDetailFieldType: TIntegerField
      FieldName = 'FieldType'
    end
    object VariantsMemWsDetailFieldValue: TWideStringField
      FieldName = 'FieldValue'
      Size = 150
    end
  end
  object QstBrowseFieldsGen: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM stBrowseFieldsGen')
    Left = 656
    Top = 248
    object QstBrowseFieldsGenId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object QstBrowseFieldsGenBrowse_Name: TWideStringField
      FieldName = 'Browse_Name'
      FixedChar = True
      Size = 10
    end
    object QstBrowseFieldsGenField_Name: TWideStringField
      FieldName = 'Field_Name'
      FixedChar = True
      Size = 50
    end
    object QstBrowseFieldsGenDisplay_Name: TWideStringField
      FieldName = 'Display_Name'
      FixedChar = True
      Size = 50
    end
    object QstBrowseFieldsGenDisplay_Format: TWideStringField
      FieldName = 'Display_Format'
      FixedChar = True
    end
    object QstBrowseFieldsGenVisible: TBooleanField
      FieldName = 'Visible'
    end
    object QstBrowseFieldsGenReadOnly: TBooleanField
      FieldName = 'ReadOnly'
    end
  end
  object QstBrowseFieldsGenReader: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'PBrowse_Name'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM stBrowseFieldsGen'
      'Where Browse_Name = :PBrowse_Name')
    Left = 656
    Top = 304
    object QstBrowseFieldsGenReaderId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object QstBrowseFieldsGenReaderBrowse_Name: TWideStringField
      FieldName = 'Browse_Name'
      FixedChar = True
      Size = 50
    end
    object QstBrowseFieldsGenReaderField_Name: TWideStringField
      FieldName = 'Field_Name'
      FixedChar = True
      Size = 50
    end
    object QstBrowseFieldsGenReaderDisplay_Name: TWideStringField
      FieldName = 'Display_Name'
      FixedChar = True
      Size = 50
    end
    object QstBrowseFieldsGenReaderDisplay_Format: TWideStringField
      FieldName = 'Display_Format'
      FixedChar = True
    end
    object QstBrowseFieldsGenReaderVisible: TBooleanField
      FieldName = 'Visible'
    end
    object QstBrowseFieldsGenReaderReadOnly: TBooleanField
      FieldName = 'ReadOnly'
    end
  end
  object qFromCode2Id: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PAcardCode'
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = 0
      end>
    SQL.Strings = (
      'SELECT AcardId'
      'FROM Acard'
      'Where AcardCode = :PAcardCode'
      '')
    Left = 120
    Top = 24
    object qFromCode2IdAcardId: TAutoIncField
      FieldName = 'AcardId'
      ReadOnly = True
    end
  end
  object QstBrowseGenFieldsReader: TADOQuery
    AutoCalcFields = False
    Connection = ADOConnection
    CursorLocation = clUseServer
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'PBrowse_NameId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM stBrowseGenFields'
      'Where Browse_NameId = :PBrowse_NameId')
    Left = 720
    Top = 384
    object QstBrowseGenFieldsReaderId: TIntegerField
      FieldName = 'Id'
    end
    object QstBrowseGenFieldsReaderBrowse_NameId: TIntegerField
      FieldName = 'Browse_NameId'
    end
    object QstBrowseGenFieldsReaderField_Name: TWideStringField
      FieldName = 'Field_Name'
      Size = 50
    end
    object QstBrowseGenFieldsReaderDisplay_Name: TWideStringField
      FieldName = 'Display_Name'
      Size = 50
    end
    object QstBrowseGenFieldsReaderDisplay_Format: TWideStringField
      FieldName = 'Display_Format'
      Size = 50
    end
    object QstBrowseGenFieldsReaderVisible: TBooleanField
      FieldName = 'Visible'
    end
    object QstBrowseGenFieldsReaderReadOnly: TBooleanField
      FieldName = 'ReadOnly'
    end
  end
  object QstBrowseGenReader: TADOQuery
    AutoCalcFields = False
    Connection = ADOConnection
    CursorLocation = clUseServer
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'PBrowse_Name'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM stBrowseGen'
      'Where Browse_Name = :PBrowse_Name')
    Left = 720
    Top = 336
    object QstBrowseGenReaderid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object QstBrowseGenReaderBrowse_Name: TWideStringField
      FieldName = 'Browse_Name'
      Size = 50
    end
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection
    Parameters = <>
    Left = 296
    Top = 304
  end
  object qrystGrid_Pivot: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ParamGrid'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM stGrid_Pivot'
      'WHERE GridId = :ParamGrid')
    Left = 360
    Top = 480
    object qrystGrid_Pivotid: TIntegerField
      FieldName = 'id'
    end
    object qrystGrid_PivotGridId: TIntegerField
      FieldName = 'GridId'
    end
    object qrystGrid_PivotExcelMacroName: TWideStringField
      FieldName = 'ExcelMacroName'
      Size = 50
    end
    object qrystGrid_PivotExcelMacroFile: TWideStringField
      FieldName = 'ExcelMacroFile'
      Size = 50
    end
    object qrystGrid_PivotExcelMacroDispName: TWideStringField
      FieldName = 'ExcelMacroDispName'
      Size = 30
    end
  end
  object TblChanges: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM TblChanges'
      'Where Gid = '#39'00000000-0000-0000-0000-000000000000'#39
      '')
    Left = 512
    Top = 408
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
    object TblChangesPrimKey: TIntegerField
      FieldName = 'PrimKey'
    end
    object TblChangesPrimGui: TGuidField
      FieldName = 'PrimGui'
      FixedChar = True
      Size = 38
    end
    object TblChangesDateTime: TDateTimeField
      FieldName = 'DateTime'
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
  end
  object cdsVTableFieldsNames: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 584
    Top = 408
    Data = {
      C47002009619E0BD010000001800000007002102000003000000010109546162
      6C654E616D6501004A00000002000753554254595045020049000A0046697865
      644368617200055749445448020002006400094669656C644E616D6501004A00
      000002000753554254595045020049000A004669786564436861720005574944
      5448020002006400075461626C65496404000100000000000269640400010000
      000000045479706501004A00000002000753554254595045020049000A004669
      78656443686172000557494454480200020028000C436865636B4368616E6765
      73020003000000000005464E616D6501004A0002000100055749445448020002
      00CA000000000000647300740050006F0070007500700046006F0072006D0020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020006450006F0070007500700046006F0072006D00
      4900640020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002B000000010000002869006E0074
      0020002000200020002000200020002000200020002000200020002000200020
      002000FFFF2E7300740050006F0070007500700046006F0072006D002E005000
      6F0070007500700046006F0072006D0049006400000000647300740050006F00
      70007500700046006F0072006D00200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200020006450006F
      0070007500700046006F0072006D004E0061006D006500200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002B00000002000000286E007600610072006300680061007200200020002000
      200020002000200020002000200020002000FFFF327300740050006F00700075
      00700046006F0072006D002E0050006F0070007500700046006F0072006D004E
      0061006D006500000000647300740050006F0070007500700046006F0072006D
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020006446006F0072006D004E0061006D006500
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002B00000003000000286E0076
      0061007200630068006100720020002000200020002000200020002000200020
      0020002000FFFF287300740050006F0070007500700046006F0072006D002E00
      46006F0072006D004E0061006D00650000000064730074004D0065006E007500
      3000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020006449006400200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020002000200020002A0000
      00040000002869006E0074002000200020002000200020002000200020002000
      2000200020002000200020002000FFFF14730074004D0065006E00750030002E
      004900640000000064730074004D0065006E0075003000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000644E0061006D00650020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002A00000005000000286E00760061
      0072006300680061007200200020002000200020002000200020002000200020
      002000FFFF18730074004D0065006E00750030002E004E0061006D0065000000
      0064730074004D0065006E007500300020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020006453004E0061006D006500200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002A00000006000000286E0076006100720063006800
      61007200200020002000200020002000200020002000200020002000FFFF1A73
      0074004D0065006E00750030002E0053004E0061006D00650000000064730074
      004D0065006E0075003000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00644300440054004C006500760065006C002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002A000000070000002869006E0074002000200020002000200020
      0020002000200020002000200020002000200020002000FFFF20730074004D00
      65006E00750030002E004300440054004C006500760065006C00000000647300
      74004D0065006E00750030002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20006450006100720065006E0074004900640020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002A000000080000002869006E00740020002000200020002000
      200020002000200020002000200020002000200020002000FFFF20730074004D
      0065006E00750030002E0050006100720065006E007400490064000000006473
      0074004D0065006E007500300020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020006453006F00720074004F00720064006500720020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002A000000090000002869006E007400200020002000200020
      00200020002000200020002000200020002000200020002000FFFF2273007400
      4D0065006E00750030002E0053006F00720074004F0072006400650072000000
      0064730074004D0065006E007500300020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000644F006E006C0079005200430056002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002A0000000A00000028620069007400200020002000
      20002000200020002000200020002000200020002000200020002000FFFF1E73
      0074004D0065006E00750030002E004F006E006C007900520043005600000000
      64730074004D0065006E00750030002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200064440065006C006500740065006400200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002A0000000B0000002862006900740020002000200020
      002000200020002000200020002000200020002000200020002000FFFF1E7300
      74004D0065006E00750030002E00440065006C00650074006500640000000064
      730074004D0065006E0075003000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200064440065006C00550073007200200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002A0000000C0000002869006E0074002000200020002000
      2000200020002000200020002000200020002000200020002000FFFF1C730074
      004D0065006E00750030002E00440065006C0055007300720000000064730074
      004D0065006E0075003000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0064440065006C00440074002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002A0000000D000000286400610074006500740069006D00650020
      0020002000200020002000200020002000200020002000FFFF1A730074004D00
      65006E00750030002E00440065006C004400740000000064540062006C004300
      680061006E006700650073002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200064670069
      0064002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00350000000E0000002875006E0069007100750065006900640065006E007400
      690066006900650072002000200020002000FFFF1C540062006C004300680061
      006E006700650073002E0067006900640000000064540062006C004300680061
      006E006700650073002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200064540061006200
      6C00650049006400200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020003500
      00000F0000002869006E00740020002000200020002000200020002000200020
      002000200020002000200020002000FFFF24540062006C004300680061006E00
      6700650073002E005400610062006C0065004900640000000064540062006C00
      4300680061006E00670065007300200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020006446
      00690065006C0064002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200035000000100000002869006E0074002000200020002000200020002000
      2000200020002000200020002000200020002000FFFF20540062006C00430068
      0061006E006700650073002E004600690065006C00640000000064540062006C
      004300680061006E006700650073002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200064
      49006E00730065007200740069006F006E002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200035000000110000002862006900740020002000200020002000200020
      002000200020002000200020002000200020002000FFFF28540062006C004300
      680061006E006700650073002E0049006E00730065007200740069006F006E00
      00000064540062006C004300680061006E006700650073002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000644400610074006500540069006D00650020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200035000000120000002864006100740065007400
      69006D006500200020002000200020002000200020002000200020002000FFFF
      26540062006C004300680061006E006700650073002E00440061007400650054
      0069006D00650000000064540062006C004300680061006E0067006500730020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000645000720069006D004B00650079002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200035000000130000002869006E
      0074002000200020002000200020002000200020002000200020002000200020
      0020002000FFFF24540062006C004300680061006E006700650073002E005000
      720069006D004B006500790000000064540062006C004300680061006E006700
      6500730020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000645000720069006D00470075
      0069002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200035000000140000
      002875006E0069007100750065006900640065006E0074006900660069006500
      72002000200020002000FFFF24540062006C004300680061006E006700650073
      002E005000720069006D0047007500690000000064540062006C004300680061
      006E006700650073002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200064550073006500
      7200490064002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020003500
      0000150000002869006E00740020002000200020002000200020002000200020
      002000200020002000200020002000FFFF22540062006C004300680061006E00
      6700650073002E0055007300650072004900640000000064540062006C004300
      680061006E006700650073002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200020006446006F
      0072006D00200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0035000000160000002869006E00740020002000200020002000200020002000
      200020002000200020002000200020002000FFFF1E540062006C004300680061
      006E006700650073002E0046006F0072006D0000000064540062006C00430068
      0061006E00670065007300200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020006454007900
      7000650020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      35000000170000002869006E0074002000200020002000200020002000200020
      0020002000200020002000200020002000FFFF1E540062006C00430068006100
      6E006700650073002E00540079007000650000000064540062006C0043006800
      61006E0067006500730020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200064560061006C
      00750065004F006C006400200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200035
      00000018000000286E0076006100720063006800610072002000200020002000
      20002000200020002000200020002000FFFF26540062006C004300680061006E
      006700650073002E00560061006C00750065004F006C00640000000064540062
      006C004300680061006E00670065007300200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0064560061006C00750065004E00650077002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020003500000019000000286E00760061007200630068006100720020
      0020002000200020002000200020002000200020002000FFFF26540062006C00
      4300680061006E006700650073002E00560061006C00750065004E0065007700
      00000064730074004D0065006E00750020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000644900640020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000290000001A0000002869006E00740020002000
      200020002000200020002000200020002000200020002000200020002000FFFF
      12730074004D0065006E0075002E004900640000000064730074004D0065006E
      0075002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020002000644E006100
      6D00650020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      290000001B000000286E00760061007200630068006100720020002000200020
      0020002000200020002000200020002000FFFF16730074004D0065006E007500
      2E004E0061006D00650000000064730074004D0065006E007500200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020006445006D007000740079004C0065
      0061006600200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000290000001C00000028
      6200690074002000200020002000200020002000200020002000200020002000
      2000200020002000FFFF20730074004D0065006E0075002E0045006D00700074
      0079004C0065006100660000000064730074004D0065006E0075002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020006450006100720065006E007400
      4C00650061006600200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000290000001D000000
      2869006E00740020002000200020002000200020002000200020002000200020
      002000200020002000FFFF22730074004D0065006E0075002E00500061007200
      65006E0074004C0065006100660000000064730074004D0065006E0075002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200064430061007000740069
      006F006E00200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020002000290000001E
      000000286E007600610072006300680061007200200020002000200020002000
      200020002000200020002000FFFF1C730074004D0065006E0075002E00430061
      007000740069006F006E0000000064730074004D0065006E0075002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200064430061007400650067006F00
      7200790020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000290000001F000000
      286E007600610072006300680061007200200020002000200020002000200020
      002000200020002000FFFF1E730074004D0065006E0075002E00430061007400
      650067006F007200790000000064730074004D0065006E007500200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200064480065006C0070004B00650079
      0077006F00720064002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000290000002000000028
      6E00760061007200630068006100720020002000200020002000200020002000
      2000200020002000FFFF24730074004D0065006E0075002E00480065006C0070
      004B006500790077006F007200640000000064730074004D0065006E00750020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000644F006E0045007800
      6500630075007400650020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200029000000
      21000000286E0076006100720063006800610072002000200020002000200020
      00200020002000200020002000FFFF20730074004D0065006E0075002E004F00
      6E00450078006500630075007400650000000064730074004D0065006E007500
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020006449006E00730055
      0073007200200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000290000
      00220000002869006E0074002000200020002000200020002000200020002000
      2000200020002000200020002000FFFF1A730074004D0065006E0075002E0049
      006E00730055007300720000000064730074004D0065006E0075002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020006449006E007300440054002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002900000023000000
      2873006D0061006C006C006400610074006500740069006D0065002000200020
      002000200020002000FFFF18730074004D0065006E0075002E0049006E007300
      4400540000000064730074004D0065006E007500200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020006455007000640055007300720020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200029000000240000002869006E007400
      2000200020002000200020002000200020002000200020002000200020002000
      2000FFFF1A730074004D0065006E0075002E0055007000640055007300720000
      000064730074004D0065006E0075002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200064550070006400440054002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200029000000250000002873006D0061006C006C0064
      00610074006500740069006D0065002000200020002000200020002000FFFF18
      730074004D0065006E0075002E00550070006400440054000000006473007400
      4D0065006E007500200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      64440065006C0065007400650064002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000290000002600000028620069007400200020002000200020002000
      20002000200020002000200020002000200020002000FFFF1C730074004D0065
      006E0075002E00440065006C00650074006500640000000064730074004D0065
      006E007500200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000644400
      65006C0055007300720020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200029000000270000002869006E007400200020002000200020002000200020
      00200020002000200020002000200020002000FFFF1A730074004D0065006E00
      75002E00440065006C0055007300720000000064730074004D0065006E007500
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000200064440065006C0044
      0054002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000290000
      00280000002873006D0061006C006C006400610074006500740069006D006500
      2000200020002000200020002000FFFF18730074004D0065006E0075002E0044
      0065006C004400540000000064730074004D0065006E00750020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020006449006E0041006300740069007600
      6500200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200029000000290000002862
      0069007400200020002000200020002000200020002000200020002000200020
      00200020002000FFFF1E730074004D0065006E0075002E0049006E0041006300
      740069007600650000000064730074004D0065006E0075002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020006449006E004100630074006900760065
      0055007300720020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000290000002A000000286900
      6E00740020002000200020002000200020002000200020002000200020002000
      200020002000FFFF24730074004D0065006E0075002E0049006E004100630074
      0069007600650055007300720000000064730074004D0065006E007500200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020006449006E00410063007400
      6900760065004400740020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000290000002B00
      00002873006D0061006C006C006400610074006500740069006D006500200020
      0020002000200020002000FFFF22730074004D0065006E0075002E0049006E00
      41006300740069007600650044007400000000645400610062006C0065004E00
      61006D0065007300200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020006469006400200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000340000
      002C0000002869006E0074002000200020002000200020002000200020002000
      2000200020002000200020002000FFFF1A5400610062006C0065004E0061006D
      00650073002E0069006400000000645400610062006C0065004E0061006D0065
      0073002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000645400610062006C0065004E00
      61006D0065002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000340000002D000000
      286E006300680061007200200020002000200020002000200020002000200020
      002000200020002000FFFF285400610062006C0065004E0061006D0065007300
      2E005400610062006C0065004E0061006D006500000000645400610062006C00
      65004E0061006D00650073002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200064540061
      0062006C0065004F0072004E006F007400200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00340000002E0000002862006900740020002000200020002000200020002000
      200020002000200020002000200020002000FFFF2A5400610062006C0065004E
      0061006D00650073002E005400610062006C0065004F0072004E006F00740000
      0000645400610062006C0065004E0061006D0065007300200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020006442007200610063006B006500740065006400200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000340000002F000000286200690074002000200020
      0020002000200020002000200020002000200020002000200020002000FFFF28
      5400610062006C0065004E0061006D00650073002E0042007200610063006B00
      6500740065006400000000645400610062006C0065004E0061006D0065007300
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000644C006F0067004300680061006E0067
      0065007300200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020003400000030000000286200
      6900740020002000200020002000200020002000200020002000200020002000
      200020002000FFFF2A5400610062006C0065004E0061006D00650073002E004C
      006F0067004300680061006E00670065007300000000645400610062006C0065
      004E0061006D0065007300200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020006450006800
      790073006900630061006C00440065006C006500740065002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      3400000031000000286200690074002000200020002000200020002000200020
      0020002000200020002000200020002000FFFF325400610062006C0065004E00
      61006D00650073002E0050006800790073006900630061006C00440065006C00
      650074006500000000645400610062006C0065004E0061006D00650073002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000644400650073006300720069007000740069
      006F006E00200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020003400000032000000286E007600
      6100720063006800610072002000200020002000200020002000200020002000
      20002000FFFF2C5400610062006C0065004E0061006D00650073002E00440065
      0073006300720069007000740069006F006E0000000064730074004D0065006D
      003200530051004C002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020006449006400
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      28000000330000002869006E0074002000200020002000200020002000200020
      0020002000200020002000200020002000FFFF18730074004D0065006D003200
      530051004C002E004900640000000064730074004D0065006D00320053005100
      4C00200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000645400610062006C00650049
      0064002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200028000000340000
      002869006E007400200020002000200020002000200020002000200020002000
      20002000200020002000FFFF22730074004D0065006D003200530051004C002E
      005400610062006C0065004900640000000064730074004D0065006D00320053
      0051004C00200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000644600690065006C00
      64004E0061006D00650020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200028000000
      35000000286E0076006100720063006800610072002000200020002000200020
      00200020002000200020002000FFFF26730074004D0065006D00320053005100
      4C002E004600690065006C0064004E0061006D00650000000064730074004D00
      65006D003200530051004C002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020006453
      0051004C00560061007200200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002800000036000000286200690074002000200020002000200020002000
      2000200020002000200020002000200020002000FFFF20730074004D0065006D
      003200530051004C002E00530051004C0056006100720000000064730074004D
      0065006D003200530051004C0020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200064
      5400720065006100740041007300200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200028000000370000002869006E00740020002000200020002000200020
      002000200020002000200020002000200020002000FFFF22730074004D006500
      6D003200530051004C002E005400720065006100740041007300000000647300
      74004D0065006D003200530051004C0020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200064530071006C004E0061006D006500200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002800000038000000286E007600610072006300680061007200
      200020002000200020002000200020002000200020002000FFFF22730074004D
      0065006D003200530051004C002E00530071006C004E0061006D006500000000
      64730074004D0065006D003200530051004C0020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200064530071006C00470072006F007500700020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200028000000390000002869006E00740020002000200020
      002000200020002000200020002000200020002000200020002000FFFF247300
      74004D0065006D003200530051004C002E00530071006C00470072006F007500
      700000000064730074004D0065006D003200530051004C002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020006441006C00690061007300530071006C002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000280000003A000000286E00760061007200
      6300680061007200200020002000200020002000200020002000200020002000
      FFFF24730074004D0065006D003200530051004C002E0041006C006900610073
      00530071006C0000000064730074004D0065006D003200530051004C00200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200064530071006C0054006500780074004900
      6E00640065007800200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000280000003B0000002869006E
      0074002000200020002000200020002000200020002000200020002000200020
      0020002000FFFF2C730074004D0065006D003200530051004C002E0053007100
      6C00540065007800740049006E00640065007800000000645400610062006C00
      65004E0061006D00650041006C00690061007300200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200064690064
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00330000003C0000002869006E00740020002000200020002000200020002000
      200020002000200020002000200020002000FFFF225400610062006C0065004E
      0061006D00650041006C006900610073002E0069006400000000645400610062
      006C0065004E0061006D00650041006C00690061007300200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200064
      5400610062006C00650049006400200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000330000003D0000002869006E00740020002000200020002000200020
      002000200020002000200020002000200020002000FFFF2C5400610062006C00
      65004E0061006D00650041006C006900610073002E005400610062006C006500
      49006400000000645400610062006C0065004E0061006D00650041006C006900
      6100730020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000645400610062006C0065004E0061006D00650041
      006C006900610073002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000330000003E000000286E0063006800
      6100720020002000200020002000200020002000200020002000200020002000
      2000FFFF3A5400610062006C0065004E0061006D00650041006C006900610073
      002E005400610062006C0065004E0061006D00650041006C0069006100730000
      0000645400610062006C00650049006400730020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200064410041004100410041002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000320000003F0000002869006E0074002000200020
      0020002000200020002000200020002000200020002000200020002000FFFF1C
      5400610062006C0065004900640073002E004100410041004100410000000064
      5400610062006C00650049006400730020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000645400410042004C0045004E0041004D004500200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020003200000040000000286E00760061007200630068006100
      7200200020002000200020002000200020002000200020002000FFFF24540061
      0062006C0065004900640073002E005400410042004C0045004E0041004D0045
      00000000645400610062006C0065004900640073002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000644E0055004D0020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200032000000410000002869006E007400200020
      00200020002000200020002000200020002000200020002000200020002000FF
      FF185400610062006C0065004900640073002E004E0055004D00000000645300
      6F00750072006300650073002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000646900640020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020001C000000420000002869006E00740020002000200020002000
      200020002000200020002000200020002000200020002000FFFF1453006F0075
      0072006300650073002E00690064000000006453006F00750072006300650073
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020006453004E0061006D00
      6500200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200020001C000000
      43000000286E0063006800610072002000200020002000200020002000200020
      00200020002000200020002000FFFF1A53006F00750072006300650073002E00
      53004E0061006D0065000000006453006F007500720063006500730020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000644E0061006D0065002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020001C0000004400000028
      6E00630068006100720020002000200020002000200020002000200020002000
      2000200020002000FFFF1853006F00750072006300650073002E004E0061006D
      0065000000006453006F00750072006300650073002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020006443006F006E007400610063007400200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020001C00000045000000286E006300680061
      0072002000200020002000200020002000200020002000200020002000200020
      00FFFF1E53006F00750072006300650073002E0043006F006E00740061006300
      74000000006453006F0075007200630065007300200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020006441006300710075006900720069006E0067005F0042
      0061006E006B0020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020001C00000046000000286200690074002000
      2000200020002000200020002000200020002000200020002000200020002000
      FFFF2C53006F00750072006300650073002E0041006300710075006900720069
      006E0067005F00420061006E006B000000006453006F00750072006300650073
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020006446006F0072006D00
      6100740020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200020001C000000
      470000002869006E007400200020002000200020002000200020002000200020
      00200020002000200020002000FFFF1C53006F00750072006300650073002E00
      46006F0072006D006100740000000064530046006F0072006D00410063007400
      69006F006E002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200064530046006F0072006D0041
      006300740069006F006E005F0049006400200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020001B000000480000
      002869006E007400200020002000200020002000200020002000200020002000
      20002000200020002000FFFF34530046006F0072006D0041006300740069006F
      006E002E00530046006F0072006D0041006300740069006F006E005F00490064
      0000000064530046006F0072006D0041006300740069006F006E002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200064530046006F0072006D0041006300740069006F006E00
      5F00470072006F00750070002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020001B000000490000002873006D0061006C006C
      0069006E007400200020002000200020002000200020002000200020002000FF
      FF3A530046006F0072006D0041006300740069006F006E002E00530046006F00
      72006D0041006300740069006F006E005F00470072006F007500700000000064
      530046006F0072006D0041006300740069006F006E0020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200064530046006F0072006D0041006300740069006F006E005F0041006C
      006C006F00770065006400200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020001B0000004A0000002873006D0061006C006C0069006E00
      7400200020002000200020002000200020002000200020002000FFFF3E530046
      006F0072006D0041006300740069006F006E002E00530046006F0072006D0041
      006300740069006F006E005F0041006C006C006F007700650064000000006453
      0046006F0072006D002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200064530046006F0072006D005F0046006F0072006D002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020001A0000004B0000002869006E007400200020002000200020
      00200020002000200020002000200020002000200020002000FFFF2053004600
      6F0072006D002E00530046006F0072006D005F0046006F0072006D0000000064
      530046006F0072006D0020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200064530046006F0072006D005F00470072006F00750070002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020001A0000004C0000002869006E0074002000200020002000
      2000200020002000200020002000200020002000200020002000FFFF22530046
      006F0072006D002E00530046006F0072006D005F00470072006F007500700000
      00006443007500730074006F006D006500720020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200064490064002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000070000004D0000002869006E0074002000200020
      0020002000200020002000200020002000200020002000200020002000FFFF16
      43007500730074006F006D00650072002E004900640000000064430075007300
      74006F006D006500720020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200020002000644E
      0061006D00650020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000070000004E000000286E00760061007200630068006100720020002000
      2000200020002000200020002000200020002000FFFF1A43007500730074006F
      006D00650072002E004E0061006D0065000000006443007500730074006F006D
      0065007200200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200064410064006400
      7200650073007300200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020000700
      00004F000000286E007600610072006300680061007200200020002000200020
      002000200020002000200020002000FFFF2043007500730074006F006D006500
      72002E0041006400640072006500730073000000006443007500730074006F00
      6D00650072002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000644600610078
      004E006F00200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200007
      00000050000000286E0076006100720063006800610072002000200020002000
      20002000200020002000200020002000FFFF1C43007500730074006F006D0065
      0072002E004600610078004E006F000000006443007500730074006F006D0065
      0072002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200064540065006C004E00
      6F00200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200007000000
      51000000286E0076006100720063006800610072002000200020002000200020
      00200020002000200020002000FFFF1C43007500730074006F006D0065007200
      2E00540065006C004E006F000000006443007500730074006F006D0065007200
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020006465006D00610069006C0020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200007000000520000
      00286E0076006100720063006800610072002000200020002000200020002000
      20002000200020002000FFFF1C43007500730074006F006D00650072002E0065
      006D00610069006C000000006443007500730074006F006D0065007200200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020006443006F006E007400610063007400
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020000700000053000000286E
      0076006100720063006800610072002000200020002000200020002000200020
      00200020002000FFFF2043007500730074006F006D00650072002E0043006F00
      6E0074006100630074000000006443007500730074006F006D00650072002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200064530061006C00650073004D0061
      006E002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000070000005400000028
      69006E0074002000200020002000200020002000200020002000200020002000
      2000200020002000FFFF2243007500730074006F006D00650072002E00530061
      006C00650073004D0061006E000000006443007500730074006F006D00650072
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000644E006F006D006F007300
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000070000005500
      00002869006E0074002000200020002000200020002000200020002000200020
      0020002000200020002000FFFF1C43007500730074006F006D00650072002E00
      4E006F006D006F0073000000006443007500730074006F006D00650072002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020006443007500730074004700720070
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000070000005600000028
      69006E0074002000200020002000200020002000200020002000200020002000
      2000200020002000FFFF2043007500730074006F006D00650072002E00430075
      00730074004700720070000000006443007500730074006F006D006500720020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020006449006E007300550073007200
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020000700000057000000
      2869006E00740020002000200020002000200020002000200020002000200020
      002000200020002000FFFF1E43007500730074006F006D00650072002E004900
      6E0073005500730072000000006443007500730074006F006D00650072002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020006449006E00730044005400200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000070000005800000028
      6400610074006500740069006D00650020002000200020002000200020002000
      2000200020002000FFFF1C43007500730074006F006D00650072002E0049006E
      007300440054000000006443007500730074006F006D00650072002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020006455007000640055007300720020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200007000000590000002869006E
      0074002000200020002000200020002000200020002000200020002000200020
      0020002000FFFF1E43007500730074006F006D00650072002E00550070006400
      5500730072000000006443007500730074006F006D0065007200200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000645500700064004400540020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000070000005A0000002864006100
      74006500740069006D0065002000200020002000200020002000200020002000
      20002000FFFF1C43007500730074006F006D00650072002E0055007000640044
      0054000000006443007500730074006F006D0065007200200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200064440065006C005500730072002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000070000005B0000002869006E00740020
      0020002000200020002000200020002000200020002000200020002000200020
      00FFFF1E43007500730074006F006D00650072002E00440065006C0055007300
      72000000006443007500730074006F006D006500720020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200064440065006C00440054002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000070000005C000000286400610074006500
      740069006D006500200020002000200020002000200020002000200020002000
      FFFF1C43007500730074006F006D00650072002E00440065006C004400540000
      00006443007500730074006F006D006500720020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200064440065006C00650074006500640020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000070000005D000000286200690074002000200020
      0020002000200020002000200020002000200020002000200020002000FFFF20
      43007500730074006F006D00650072002E00440065006C006500740065006400
      0000006443007500730074006F006D0065007200200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020006448006F006E006400720069006B00680020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000070000005E0000002862006900740020002000
      200020002000200020002000200020002000200020002000200020002000FFFF
      2243007500730074006F006D00650072002E0048006F006E006400720069006B
      0068000000006443007500730074006F006D0065007200200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020006448006F006E006400720069006B0068004E006F00
      6D006F0073002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000070000005F0000002869006E00740020
      0020002000200020002000200020002000200020002000200020002000200020
      00FFFF2C43007500730074006F006D00650072002E0048006F006E0064007200
      69006B0068004E006F006D006F0073000000006443007500730074006F006D00
      6500720020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000645000720069006E
      0074004400690061006B00200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000070000
      0060000000286200690074002000200020002000200020002000200020002000
      2000200020002000200020002000FFFF2443007500730074006F006D00650072
      002E005000720069006E0074004400690061006B000000006443007500730074
      006F006D00650072002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000644400
      690061006B002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200007000000610000002869006E007400200020002000200020002000200020
      00200020002000200020002000200020002000FFFF1A43007500730074006F00
      6D00650072002E004400690061006B000000006443007500730074006F006D00
      6500720020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000645000720069006E
      0074004D0065006D006F00310020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000070000
      0062000000286200690074002000200020002000200020002000200020002000
      2000200020002000200020002000FFFF2643007500730074006F006D00650072
      002E005000720069006E0074004D0065006D006F003100000000644300750073
      0074006F006D0065007200200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200064
      43007500730074004D0065006D006F0031002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200007000000630000002869006D00610067006500200020002000200020
      002000200020002000200020002000200020002000FFFF244300750073007400
      6F006D00650072002E0043007500730074004D0065006D006F00310000000064
      43007500730074006F006D006500720020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000645000720069006E0074004D0065006D006F00320020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020000700000064000000286200690074002000200020002000
      2000200020002000200020002000200020002000200020002000FFFF26430075
      00730074006F006D00650072002E005000720069006E0074004D0065006D006F
      0032000000006443007500730074006F006D0065007200200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020006443007500730074004D0065006D006F0032002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200007000000650000002869006D00610067
      0065002000200020002000200020002000200020002000200020002000200020
      00FFFF2443007500730074006F006D00650072002E0043007500730074004D00
      65006D006F0032000000006443007500730074006F006D006500720020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000645000720069006E0074004D0065006D
      006F003300200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020000700000066000000286200
      6900740020002000200020002000200020002000200020002000200020002000
      200020002000FFFF2643007500730074006F006D00650072002E005000720069
      006E0074004D0065006D006F0033000000006443007500730074006F006D0065
      0072002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000644300750073007400
      4D0065006D006F00330020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200007000000
      670000002869006D006100670065002000200020002000200020002000200020
      00200020002000200020002000FFFF2443007500730074006F006D0065007200
      2E0043007500730074004D0065006D006F003300000000644300750073007400
      6F006D0065007200200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200020006445006D
      00610069006C00530065006E0064002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0007000000680000002862006900740020002000200020002000200020002000
      200020002000200020002000200020002000FFFF2443007500730074006F006D
      00650072002E0045006D00610069006C00530065006E00640000000064430075
      00730074006F006D006500720020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0064460061007800530065006E00640020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020000700000069000000286200690074002000200020002000200020
      0020002000200020002000200020002000200020002000FFFF20430075007300
      74006F006D00650072002E00460061007800530065006E006400000000644300
      7500730074006F006D0065007200200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20006441006C006C004600410078005000720069006E00740020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000070000006A0000002862006900740020002000200020002000
      200020002000200020002000200020002000200020002000FFFF284300750073
      0074006F006D00650072002E0041006C006C004600410078005000720069006E
      0074000000006443007500730074006F006D0065007200200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000644100630074006900760065002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000070000006B0000002862006900740020
      0020002000200020002000200020002000200020002000200020002000200020
      00FFFF1E43007500730074006F006D00650072002E0041006300740069007600
      65000000006443007500730074006F006D006500720020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000644F006C006400490064002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000070000006C0000002869006E0074002000
      2000200020002000200020002000200020002000200020002000200020002000
      FFFF1C43007500730074006F006D00650072002E004F006C0064004900640000
      00006443007500730074006F006D006500720020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000644F006C0064004E0042002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000070000006D0000002869006E0074002000200020
      0020002000200020002000200020002000200020002000200020002000FFFF1C
      43007500730074006F006D00650072002E004F006C0064004E00420000000064
      43007500730074006F006D006500720020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200064500072006500660073002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000070000006E0000002869006E0074002000200020002000
      2000200020002000200020002000200020002000200020002000FFFF1C430075
      00730074006F006D00650072002E005000720065006600730000000064430075
      00730074006F006D006500720020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0064530041005000490064002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000070000006F000000286E00630068006100720020002000200020
      0020002000200020002000200020002000200020002000FFFF1C430075007300
      74006F006D00650072002E005300410050004900640000000064430075007300
      74006F006D006500720020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020006453
      0061006C00650073004F00660066006900630065002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200007000000700000002869006E0074002000200020002000200020002000
      2000200020002000200020002000200020002000FFFF2843007500730074006F
      006D00650072002E00530061006C00650073004F006600660069006300650000
      00006443007500730074006F006D006500720020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000645000720069006E00740046006F0072006D00200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200007000000710000002869006E0074002000200020
      0020002000200020002000200020002000200020002000200020002000FFFF24
      43007500730074006F006D00650072002E005000720069006E00740046006F00
      72006D000000006443007500730074006F006D00650072002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020006447005000720065006600730020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200007000000720000002869006E007400
      2000200020002000200020002000200020002000200020002000200020002000
      2000FFFF1E43007500730074006F006D00650072002E00470050007200650066
      0073000000006443007500730074006F006D0065007200200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200064470072006F007500700043007500730074003000
      3100200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200007000000730000002869006E00740020
      0020002000200020002000200020002000200020002000200020002000200020
      00FFFF2843007500730074006F006D00650072002E00470072006F0075007000
      4300750073007400300031000000006443007500730074006F006D0065007200
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200064470072006F007500700043
      0075007300740030003200200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200007000000740000
      002869006E007400200020002000200020002000200020002000200020002000
      20002000200020002000FFFF2843007500730074006F006D00650072002E0047
      0072006F00750070004300750073007400300032000000006443007500730074
      006F006D00650072002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000644800
      6500610064005400650078007400490064002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200007000000750000002869006E007400200020002000200020002000200020
      00200020002000200020002000200020002000FFFF2643007500730074006F00
      6D00650072002E00480065006100640054006500780074004900640000000064
      43005400720061006E0020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200064690064002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200006000000760000002875006E0069007100750065006900
      640065006E007400690066006900650072002000200020002000FFFF10430054
      00720061006E002E00690064000000006443005400720061006E002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020006453006F00750072006300
      6500200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000060000007700
      00002869006E0074002000200020002000200020002000200020002000200020
      0020002000200020002000FFFF1843005400720061006E002E0053006F007500
      7200630065000000006443005400720061006E00200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000644D00650072006300680061006E00740069
      0064002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200006000000780000002869006E00
      7400200020002000200020002000200020002000200020002000200020002000
      20002000FFFF2043005400720061006E002E004D00650072006300680061006E
      007400690064000000006443005400720061006E002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000645400650072006D0069006E0061006C00
      4900640020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200006000000790000002869006E
      0074002000200020002000200020002000200020002000200020002000200020
      0020002000FFFF2043005400720061006E002E005400650072006D0069006E00
      61006C00490064000000006443005400720061006E0020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200064530074006100740069006F006E0049
      0064002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000060000007A000000286900
      6E00740020002000200020002000200020002000200020002000200020002000
      200020002000FFFF1E43005400720061006E002E00530074006100740069006F
      006E00490064000000006443005400720061006E002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020006454007200440061007400650020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000060000007B00000028640061
      0074006500740069006D00650020002000200020002000200020002000200020
      0020002000FFFF1843005400720061006E002E00540072004400610074006500
      0000006443005400720061006E00200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020006443006100720064004E006F002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000060000007C000000286E006300680061007200
      200020002000200020002000200020002000200020002000200020002000FFFF
      1843005400720061006E002E0043006100720064004E006F0000000064430054
      00720061006E0020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00644100410043006F0064006500200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000060000007D000000286E00630068006100720020002000200020
      0020002000200020002000200020002000200020002000FFFF18430054007200
      61006E002E004100410043006F00640065000000006443005400720061006E00
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000200020006456006F0069
      0064002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200006
      0000007E00000028620069007400200020002000200020002000200020002000
      20002000200020002000200020002000FFFF1443005400720061006E002E0056
      006F00690064000000006443005400720061006E002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020006443007200650064006900740020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000060000007F00000028620069
      0074002000200020002000200020002000200020002000200020002000200020
      0020002000FFFF1843005400720061006E002E00430072006500640069007400
      0000006443005400720061006E00200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200064560061006C007500650020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200006000000800000002864006500630069006D00
      61006C002000200020002000200020002000200020002000200020002000FFFF
      1643005400720061006E002E00560061006C0075006500000000644300540072
      0061006E00200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200064
      43006C00650061007200560061006C0075006500200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200006000000810000002864006500630069006D0061006C002000200020
      002000200020002000200020002000200020002000FFFF204300540072006100
      6E002E0043006C00650061007200560061006C00750065000000006443005400
      720061006E002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      64440069007300560061006C0075006500200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200006000000820000002864006500630069006D0061006C0020002000
      20002000200020002000200020002000200020002000FFFF1C43005400720061
      006E002E00440069007300560061006C00750065000000006443005400720061
      006E002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000644300
      6800650063006B00650064002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000060000008300000028620069007400200020002000200020002000200020
      00200020002000200020002000200020002000FFFF1A43005400720061006E00
      2E0043006800650063006B00650064000000006443005400720061006E002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000644500720072006F
      0072002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000060000
      0084000000286200690074002000200020002000200020002000200020002000
      2000200020002000200020002000FFFF1643005400720061006E002E00450072
      0072006F0072000000006443005400720061006E002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020006443006800650063006B00520075006E00
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200006000000850000002869006E
      0074002000200020002000200020002000200020002000200020002000200020
      0020002000FFFF1C43005400720061006E002E0043006800650063006B005200
      75006E000000006443005400720061006E002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020006449006D0070006F0072007400520075006E0020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200006000000860000002869006E007400
      2000200020002000200020002000200020002000200020002000200020002000
      2000FFFF1E43005400720061006E002E0049006D0070006F0072007400520075
      006E0000000064530061006C00650073004D0061006E00200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000646900640020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200019000000870000002869006E00740020
      0020002000200020002000200020002000200020002000200020002000200020
      00FFFF16530061006C00650073004D0061006E002E0069006400000000645300
      61006C00650073004D0061006E00200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000644E0061006D006500200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020001900000088000000286E007600610072006300680061007200
      200020002000200020002000200020002000200020002000FFFF1A530061006C
      00650073004D0061006E002E004E0061006D00650000000064530061006C0065
      0073004D0061006E002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000644600
      75006C006C004E0061006D006500200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20001900000089000000286E0076006100720063006800610072002000200020
      00200020002000200020002000200020002000FFFF22530061006C0065007300
      4D0061006E002E00460075006C006C004E0061006D0065000000006453006100
      6C00650073004D0061006E002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      64460075006C006C004E0061006D006500310020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000190000008A000000286E0076006100720063006800610072002000
      20002000200020002000200020002000200020002000FFFF24530061006C0065
      0073004D0061006E002E00460075006C006C004E0061006D0065003100000000
      64530061006C00650073004D0061006E00200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200064460075006C006C004E0061006D00650032002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000190000008B000000286E007600610072006300680061
      007200200020002000200020002000200020002000200020002000FFFF245300
      61006C00650073004D0061006E002E00460075006C006C004E0061006D006500
      320000000064530061006C00650073004D0061006E0020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000645300690067006E0020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000190000008C0000002869006D0061006700
      6500200020002000200020002000200020002000200020002000200020002000
      FFFF1A530061006C00650073004D0061006E002E005300690067006E00000000
      644E006F006D006F007300200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000646900640020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000160000008D0000002869006E00740020002000200020
      002000200020002000200020002000200020002000200020002000FFFF104E00
      6F006D006F0073002E0069006400000000644E006F006D006F00730020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000644E006F006D006F0073
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020002000160000008E
      000000286E007600610072006300680061007200200020002000200020002000
      200020002000200020002000FFFF164E006F006D006F0073002E004E006F006D
      006F007300000000644E006F006D006F00730020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200064530041005000690064002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000160000008F000000286E00630068
      0061007200200020002000200020002000200020002000200020002000200020
      002000FFFF164E006F006D006F0073002E005300410050006900640000000064
      4E006F006D006F00730020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020006449006E007300550073007200200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200016000000900000002869006E0074002000200020002000
      2000200020002000200020002000200020002000200020002000FFFF184E006F
      006D006F0073002E0049006E007300550073007200000000644E006F006D006F
      0073002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000644900
      6E00730044005400200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20001600000091000000286400610074006500740069006D0065002000200020
      00200020002000200020002000200020002000FFFF164E006F006D006F007300
      2E0049006E00730044005400000000644E006F006D006F007300200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000645500700064005500730072
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200016000000920000
      002869006E007400200020002000200020002000200020002000200020002000
      20002000200020002000FFFF184E006F006D006F0073002E0055007000640055
      0073007200000000644E006F006D006F00730020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200064550070006400440054002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020001600000093000000286400610074
      006500740069006D006500200020002000200020002000200020002000200020
      002000FFFF164E006F006D006F0073002E005500700064004400540000000064
      4E006F006D006F00730020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200064440065006C00550073007200200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200016000000940000002869006E0074002000200020002000
      2000200020002000200020002000200020002000200020002000FFFF184E006F
      006D006F0073002E00440065006C00550073007200000000644E006F006D006F
      0073002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000644400
      65006C0044005400200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20001600000095000000286400610074006500740069006D0065002000200020
      00200020002000200020002000200020002000FFFF164E006F006D006F007300
      2E00440065006C0044005400000000644E006F006D006F007300200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200064440065006C006500740065
      0064002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200016000000960000
      0028620069007400200020002000200020002000200020002000200020002000
      20002000200020002000FFFF1A4E006F006D006F0073002E00440065006C0065
      00740065006400000000644E006F006D006F0073002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200064440075006D006D0079004E006F006D00
      6F00730020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000160000009700000028620069
      0074002000200020002000200020002000200020002000200020002000200020
      0020002000FFFF204E006F006D006F0073002E00440075006D006D0079004E00
      6F006D006F007300000000644E006F006D006F00730020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000644F006C006400490064002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020001600000098000000286900
      6E00740020002000200020002000200020002000200020002000200020002000
      200020002000FFFF164E006F006D006F0073002E004F006C0064004900640000
      0000644E006F006D006F00730020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000644F006C0064004E0042002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200016000000990000002869006E0074002000200020
      0020002000200020002000200020002000200020002000200020002000FFFF16
      4E006F006D006F0073002E004F006C0064004E004200000000644D004D002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020006469
      0064002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000150000009A0000002869006E0074002000200020002000200020002000
      2000200020002000200020002000200020002000FFFF0A4D004D002E00690064
      00000000644D004D002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000644D004D00200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000150000009B000000286E0076006100720063
      00680061007200200020002000200020002000200020002000200020002000FF
      FF0A4D004D002E004D004D00000000644D004D00200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020006454006500780074004D004D
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020002000150000009C0000
      00286E0076006100720063006800610072002000200020002000200020002000
      20002000200020002000FFFF124D004D002E0054006500780074004D004D0000
      0000644D004D0020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020006449006E007300550073007200200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000150000009D0000002869006E0074002000200020
      0020002000200020002000200020002000200020002000200020002000FFFF12
      4D004D002E0049006E007300550073007200000000644D004D00200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000200020006449006E0073
      0044005400200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200015
      0000009E000000286400610074006500740069006D0065002000200020002000
      20002000200020002000200020002000FFFF104D004D002E0049006E00730044
      005400000000644D004D00200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000645500700064005500730072002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000150000009F0000002869006E00740020
      0020002000200020002000200020002000200020002000200020002000200020
      00FFFF124D004D002E00550070006400550073007200000000644D004D002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020006455
      0070006400440054002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200015000000A0000000286400610074006500740069006D00650020002000
      2000200020002000200020002000200020002000FFFF104D004D002E00550070
      00640044005400000000644D004D002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200064440065006C0055007300720020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200015000000A10000002869006E
      0074002000200020002000200020002000200020002000200020002000200020
      0020002000FFFF124D004D002E00440065006C00550073007200000000644D00
      4D00200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200064440065006C004400540020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200015000000A2000000286400610074006500740069006D006500
      200020002000200020002000200020002000200020002000FFFF104D004D002E
      00440065006C0044005400000000644D004D0020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200064440065006C00650074006500
      6400200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000200015000000A3000000
      2862006900740020002000200020002000200020002000200020002000200020
      002000200020002000FFFF144D004D002E00440065006C006500740065006400
      0000006446006F0072006D0041006300740069006F006E002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020006446006F0072006D0041006300740069006F006E00490044
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200010000000A40000002869006E00740020002000
      200020002000200020002000200020002000200020002000200020002000FFFF
      2E46006F0072006D0041006300740069006F006E002E0046006F0072006D0041
      006300740069006F006E00490044000000006446006F0072006D004100630074
      0069006F006E0020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020006446006F0072006D00
      41006300740069006F006E0046006F0072006D00490044002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200010000000
      A50000002869006E007400200020002000200020002000200020002000200020
      00200020002000200020002000FFFF3646006F0072006D004100630074006900
      6F006E002E0046006F0072006D0041006300740069006F006E0046006F007200
      6D00490044000000006446006F0072006D0041006300740069006F006E002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020006446006F0072006D0041006300740069006F
      006E0041006300740069006F006E002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200010000000A6000000286E007600
      6100720063006800610072002000200020002000200020002000200020002000
      20002000FFFF3646006F0072006D0041006300740069006F006E002E0046006F
      0072006D0041006300740069006F006E0041006300740069006F006E00000000
      6446006F0072006D0041006300740069006F006E002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020006446006F0072006D0041006300740069006F006E00540065007800
      7400200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200010000000A7000000286E007600610072006300680061
      007200200020002000200020002000200020002000200020002000FFFF324600
      6F0072006D0041006300740069006F006E002E0046006F0072006D0041006300
      740069006F006E005400650078007400000000644C006F006700200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000644C006F0067004E
      0061006D00650020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000140000
      00A8000000286E00760061007200630068006100720020002000200020002000
      2000200020002000200020002000FFFF164C006F0067002E004C006F0067004E
      0061006D006500000000644C006F006700200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000644C006F00670044006100740065002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200014000000A900000028640061
      0074006500740069006D00650020002000200020002000200020002000200020
      0020002000FFFF164C006F0067002E004C006F00670044006100740065000000
      00644C006F006700200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000644C006F00670041004100200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200014000000AA0000002873006D0061006C006C006900
      6E007400200020002000200020002000200020002000200020002000FFFF124C
      006F0067002E004C006F00670041004100000000644C006F0067002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020002000644C006F006700
      5F004D006F00640075006C006500200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020001400
      0000AB000000286E007600610072006300680061007200200020002000200020
      002000200020002000200020002000FFFF1C4C006F0067002E004C006F006700
      5F004D006F00640075006C006500000000644C006F0067002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000644C006F006700540069
      006D00650049006E002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020002000200014000000AC
      000000286400610074006500740069006D006500200020002000200020002000
      200020002000200020002000FFFF1A4C006F0067002E004C006F006700540069
      006D00650049006E00000000644C006F00670020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000644C006F006700540069006D006500
      4F00750074002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200014000000AD0000002864
      00610074006500740069006D0065002000200020002000200020002000200020
      00200020002000FFFF1C4C006F0067002E004C006F006700540069006D006500
      4F007500740000000064560061007200690061006E0074007300470072004D00
      610069006E002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000646900640020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020003A000000AE0000002869006E00
      7400200020002000200020002000200020002000200020002000200020002000
      20002000FFFF22560061007200690061006E0074007300470072004D00610069
      006E002E006900640000000064560061007200690061006E0074007300470072
      004D00610069006E002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000644E0061006D006500200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020003A000000AF000000286E
      0076006100720063006800610072002000200020002000200020002000200020
      00200020002000FFFF26560061007200690061006E0074007300470072004D00
      610069006E002E004E0061006D00650000000064560061007200690061006E00
      74007300470072004D00610069006E0020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020006450006500720069
      0067002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020002000200020003A0000
      00B0000000286E00760061007200630068006100720020002000200020002000
      2000200020002000200020002000FFFF28560061007200690061006E00740073
      00470072004D00610069006E002E005000650072006900670000000064560061
      007200690061006E0074007300470072004D00610069006E0020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      006446006F0072006D0049006400200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020003A000000B10000002869006E0074002000200020002000200020
      0020002000200020002000200020002000200020002000FFFF2A560061007200
      690061006E0074007300470072004D00610069006E002E0046006F0072006D00
      4900640000000064560061007200690061006E0074007300470072004D006100
      69006E0020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020006449006E00730055007300720020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020003A000000B20000002869006E007400
      2000200020002000200020002000200020002000200020002000200020002000
      2000FFFF2A560061007200690061006E0074007300470072004D00610069006E
      002E0049006E00730055007300720000000064560061007200690061006E0074
      007300470072004D00610069006E002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020006449006E0073004400
      5400200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200020003A000000
      B30000002873006D0061006C006C006400610074006500740069006D00650020
      00200020002000200020002000FFFF28560061007200690061006E0074007300
      470072004D00610069006E002E0049006E007300440054000000006456006100
      7200690061006E0074007300470072004D00610069006E002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      6455007000640055007300720020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020003A000000B40000002869006E007400200020002000200020002000
      20002000200020002000200020002000200020002000FFFF2A56006100720069
      0061006E0074007300470072004D00610069006E002E00550070006400550073
      00720000000064560061007200690061006E0074007300470072004D00610069
      006E002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000645500700064004400540020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020003A000000B50000002873006D0061006C
      006C006400610074006500740069006D00650020002000200020002000200020
      00FFFF28560061007200690061006E0074007300470072004D00610069006E00
      2E0055007000640044005400000000644C006F0063006B0049006E0067002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000645400610062006C0065004E
      0061006D00650020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200013000000B60000
      00286E0076006100720063006800610072002000200020002000200020002000
      20002000200020002000FFFF224C006F0063006B0049006E0067002E00540061
      0062006C0065004E0061006D006500000000644C006F0063006B0049006E0067
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000644B00650079005600
      61006C0075006500200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200013000000
      B7000000286E0076006100720063006800610072002000200020002000200020
      00200020002000200020002000FFFF204C006F0063006B0049006E0067002E00
      4B0065007900560061006C0075006500000000644C006F0063006B0049006E00
      6700200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020006455007300650072
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000130000
      00B8000000286E00760061007200630068006100720020002000200020002000
      2000200020002000200020002000FFFF184C006F0063006B0049006E0067002E
      005500730065007200000000644C006F0063006B0049006E0067002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000645400540069006D00650020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200013000000B90000002864
      00610074006500740069006D0065002000200020002000200020002000200020
      00200020002000FFFF1A4C006F0063006B0049006E0067002E00540054006900
      6D006500000000644C006F0063006B0049006E00670020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020006446006F0072006D002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200013000000BA000000286E0076006100
      7200630068006100720020002000200020002000200020002000200020002000
      2000FFFF184C006F0063006B0049006E0067002E0046006F0072006D00000000
      6446005000610073007300200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200064460050006100730073005F004B00650079002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200012000000BB0000002869006E00740020002000200020
      002000200020002000200020002000200020002000200020002000FFFF1E4600
      50006100730073002E00460050006100730073005F004B006500790000000064
      4600500061007300730020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200064460050006100730073005F004C006F00670069006E002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200012000000BC000000286E00760061007200630068006100
      7200200020002000200020002000200020002000200020002000FFFF22460050
      006100730073002E00460050006100730073005F004C006F00670069006E0000
      0000644600500061007300730020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200064460050006100730073005F00500061007300730020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200012000000BD000000286E00760061007200630068
      0061007200200020002000200020002000200020002000200020002000FFFF20
      460050006100730073002E00460050006100730073005F005000610073007300
      0000006446005000610073007300200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200064460050006100730073005F00470072006F007500700020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200012000000BE0000002873006D0061006C006C00
      69006E007400200020002000200020002000200020002000200020002000FFFF
      22460050006100730073002E00460050006100730073005F00470072006F0075
      0070000000006446005000610073007300200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200064460050006100730073005F004E0061006D006500
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200012000000BF000000286E007600610072
      0063006800610072002000200020002000200020002000200020002000200020
      00FFFF20460050006100730073002E00460050006100730073005F004E006100
      6D00650000000064460050006100730073002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200064460050006100730073005F0041006400640072
      0065007300730020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200012000000C0000000286E0076006100
      7200630068006100720020002000200020002000200020002000200020002000
      2000FFFF26460050006100730073002E00460050006100730073005F00410064
      0064007200650073007300000000644600500061007300730020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200064460050006100730073005F00
      45004D00410049004C0020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000200012000000C1000000
      286E007600610072006300680061007200200020002000200020002000200020
      002000200020002000FFFF22460050006100730073002E004600500061007300
      73005F0045004D00410049004C00000000644600500061007300730020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200064460050006100730073
      005F00500068006F006E00650020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020002000200012000000C2
      000000286E007600610072006300680061007200200020002000200020002000
      200020002000200020002000FFFF22460050006100730073002E004600500061
      00730073005F00500068006F006E006500000000644600500061007300730020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200064460050006100
      730073005F00540069006D006500200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020001200
      0000C30000002866006C006F0061007400200020002000200020002000200020
      002000200020002000200020002000FFFF20460050006100730073002E004600
      50006100730073005F00540069006D0065000000006446005000610073007300
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000644600500061
      00730073005F00560061006C00690064005F00540069006C006C002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200012
      000000C40000002873006D0061006C006C006400610074006500740069006D00
      65002000200020002000200020002000FFFF2C460050006100730073002E0046
      0050006100730073005F00560061006C00690064005F00540069006C006C0000
      0000644600500061007300730020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200064460050006100730073005F004C006F006700200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200012000000C50000002869006E0074002000200020
      0020002000200020002000200020002000200020002000200020002000FFFF1E
      460050006100730073002E00460050006100730073005F004C006F0067000000
      0064460050006100730073002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200064460050006100730073005F00530065007200690061006C0020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200012000000C60000002869006E007400200020002000
      20002000200020002000200020002000200020002000200020002000FFFF2446
      0050006100730073002E00460050006100730073005F00530065007200690061
      006C000000006446005000610073007300200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200064460050006100730073005F005300650072006900
      61006C0031002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200012000000C70000002869006E00740020
      0020002000200020002000200020002000200020002000200020002000200020
      00FFFF26460050006100730073002E00460050006100730073005F0053006500
      7200690061006C00310000000064460050006100730073002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200064460050006100730073005F0053
      0065007200690061006C00320020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200012000000C800000028
      69006E0074002000200020002000200020002000200020002000200020002000
      2000200020002000FFFF26460050006100730073002E00460050006100730073
      005F00530065007200690061006C003200000000644600500061007300730020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200064460050006100
      730073005F00530065007200690061006C003300200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020001200
      0000C90000002869006E00740020002000200020002000200020002000200020
      002000200020002000200020002000FFFF26460050006100730073002E004600
      50006100730073005F00530065007200690061006C0033000000006446005000
      6100730073002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      64460050006100730073005F0053007400610074006800200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200012000000CA0000002869006E007400200020002000200020002000
      20002000200020002000200020002000200020002000FFFF2246005000610073
      0073002E00460050006100730073005F00530074006100740068000000006456
      0061007200690061006E007400730047007200440065007400610069006C0020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020006449006400200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200039000000CB0000002869006E007400200020002000200020
      00200020002000200020002000200020002000200020002000FFFF2656006100
      7200690061006E007400730047007200440065007400610069006C002E004900
      640000000064560061007200690061006E007400730047007200440065007400
      610069006C002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000644600690065006C0064004E0061006D006500200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200039000000CC000000286E00760061007200
      6300680061007200200020002000200020002000200020002000200020002000
      FFFF34560061007200690061006E007400730047007200440065007400610069
      006C002E004600690065006C0064004E0061006D0065000000006446006F0072
      006D007300200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200064
      4900640020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200011000000CD0000002869006E00740020002000200020002000200020
      002000200020002000200020002000200020002000FFFF1046006F0072006D00
      73002E00490064000000006446006F0072006D00730020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000644E0061006D00650020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200011000000CE000000286E00
      7600610072006300680061007200200020002000200020002000200020002000
      200020002000FFFF1446006F0072006D0073002E004E0061006D006500000000
      6446006F0072006D007300200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000645400650068004E0061006D006500200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200011000000CF000000286E007600610072006300680061
      007200200020002000200020002000200020002000200020002000FFFF1A4600
      6F0072006D0073002E005400650068004E0061006D0065000000006446006F00
      72006D0073002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      6444006500730063007200200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200011000000D0000000286E0076006100720063006800610072002000
      20002000200020002000200020002000200020002000FFFF1646006F0072006D
      0073002E00440065007300630072000000006446006F0072006D007300200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200064480065006C007000
      4900440020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200011000000
      D1000000286E0076006100720063006800610072002000200020002000200020
      00200020002000200020002000FFFF1846006F0072006D0073002E0048006500
      6C007000490044000000006446006F0072006D00730020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000644D005400470072006F007500700020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200011000000D2000000286900
      6E00740020002000200020002000200020002000200020002000200020002000
      200020002000FFFF1A46006F0072006D0073002E004D005400470072006F0075
      00700000000064560061007200690061006E0074007300430058004D00610069
      006E002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000646900640020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200037000000D30000002869006E00740020
      0020002000200020002000200020002000200020002000200020002000200020
      00FFFF22560061007200690061006E0074007300430058004D00610069006E00
      2E006900640000000064560061007200690061006E0074007300430058004D00
      610069006E002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000644E0061006D006500200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200037000000D4000000286E007600
      6100720063006800610072002000200020002000200020002000200020002000
      20002000FFFF26560061007200690061006E0074007300430058004D00610069
      006E002E004E0061006D00650000000064560061007200690061006E00740073
      00430058004D00610069006E0020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020006450006500720069006700
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200037000000D500
      0000286E00760061007200630068006100720020002000200020002000200020
      0020002000200020002000FFFF28560061007200690061006E00740073004300
      58004D00610069006E002E005000650072006900670000000064560061007200
      690061006E0074007300430058004D00610069006E0020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020006443
      006C0061007300730046006F0072006D004E0061006D00650020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200037000000D6000000286E00760061007200630068006100720020002000
      2000200020002000200020002000200020002000FFFF38560061007200690061
      006E0074007300430058004D00610069006E002E0043006C0061007300730046
      006F0072006D004E0061006D00650000000064560061007200690061006E0074
      007300430058004D00610069006E002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000645300650074004100
      7300440065006600610075006C00740020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200037000000
      D700000028620069007400200020002000200020002000200020002000200020
      00200020002000200020002000FFFF36560061007200690061006E0074007300
      430058004D00610069006E002E00530065007400410073004400650066006100
      75006C00740000000064560061007200690061006E0074007300430058004D00
      610069006E002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000645300650074004100730055007300650072
      00440065006600610075006C0074002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200037000000D80000002862006900
      7400200020002000200020002000200020002000200020002000200020002000
      20002000FFFF3E560061007200690061006E0074007300430058004D00610069
      006E002E00530065007400410073005500730065007200440065006600610075
      006C00740000000064560061007200690061006E0074007300430058004D0061
      0069006E00200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020006449006E007300550073007200200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200037000000D90000002869006E0074
      0020002000200020002000200020002000200020002000200020002000200020
      002000FFFF2A560061007200690061006E0074007300430058004D0061006900
      6E002E0049006E00730055007300720000000064560061007200690061006E00
      74007300430058004D00610069006E0020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020006449006E00730044
      0054002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000370000
      00DA0000002873006D0061006C006C006400610074006500740069006D006500
      2000200020002000200020002000FFFF28560061007200690061006E00740073
      00430058004D00610069006E002E0049006E0073004400540000000064560061
      007200690061006E0074007300430058004D00610069006E0020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0064550070006400550073007200200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200037000000DB0000002869006E0074002000200020002000200020
      0020002000200020002000200020002000200020002000FFFF2A560061007200
      690061006E0074007300430058004D00610069006E002E005500700064005500
      7300720000000064560061007200690061006E0074007300430058004D006100
      69006E0020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020006455007000640044005400200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200037000000DC0000002873006D006100
      6C006C006400610074006500740069006D006500200020002000200020002000
      2000FFFF28560061007200690061006E0074007300430058004D00610069006E
      002E005500700064004400540000000064560061007200690061006E00740073
      00430058004D00610069006E0020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200064440065006C0065007400
      6500640020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200037000000DD00
      0000286200690074002000200020002000200020002000200020002000200020
      0020002000200020002000FFFF2C560061007200690061006E00740073004300
      58004D00610069006E002E00440065006C006500740065006400000000645600
      61007200690061006E0074007300430058004D00610069006E00200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200064440065006C005500730072002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200037000000DE0000002869006E00740020002000200020002000
      200020002000200020002000200020002000200020002000FFFF2A5600610072
      00690061006E0074007300430058004D00610069006E002E00440065006C0055
      007300720000000064560061007200690061006E0074007300430058004D0061
      0069006E00200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200064440065006C00440054002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200037000000DF0000002873006D0061
      006C006C006400610074006500740069006D0065002000200020002000200020
      002000FFFF28560061007200690061006E0074007300430058004D0061006900
      6E002E00440065006C004400540000000064560061007200690061006E007400
      7300430058004D00610069006E00200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200064560061007200690061
      006E0074004600690065006C0064002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020002000200037000000E0
      0000002869006D00610067006500200020002000200020002000200020002000
      200020002000200020002000FFFF36560061007200690061006E007400730043
      0058004D00610069006E002E00560061007200690061006E0074004600690065
      006C00640000000064560061007200690061006E00740073004D0065006D0057
      0073004D00610069006E00200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200064690064002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020003D000000E10000002869006E0074
      0020002000200020002000200020002000200020002000200020002000200020
      002000FFFF28560061007200690061006E00740073004D0065006D0057007300
      4D00610069006E002E006900640000000064560061007200690061006E007400
      73004D0065006D00570073004D00610069006E00200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000644E0061006D00650020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020003D000000E2
      000000286E007600610072006300680061007200200020002000200020002000
      200020002000200020002000FFFF2C560061007200690061006E00740073004D
      0065006D00570073004D00610069006E002E004E0061006D0065000000006456
      0061007200690061006E00740073004D0065006D00570073004D00610069006E
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020006450006500720069006700200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020003D000000E3000000286E0076006100720063006800610072
      00200020002000200020002000200020002000200020002000FFFF2E56006100
      7200690061006E00740073004D0065006D00570073004D00610069006E002E00
      5000650072006900670000000064560061007200690061006E00740073004D00
      65006D00570073004D00610069006E0020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020006443006C0061007300730046006F
      0072006D004E0061006D00650020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020003D000000E400000028
      6E00760061007200630068006100720020002000200020002000200020002000
      2000200020002000FFFF3E560061007200690061006E00740073004D0065006D
      00570073004D00610069006E002E0043006C0061007300730046006F0072006D
      004E0061006D00650000000064560061007200690061006E00740073004D0065
      006D00570073004D00610069006E002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020006449006E0073005500730072002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020003D000000E50000002869
      006E007400200020002000200020002000200020002000200020002000200020
      00200020002000FFFF30560061007200690061006E00740073004D0065006D00
      570073004D00610069006E002E0049006E007300550073007200000000645600
      61007200690061006E00740073004D0065006D00570073004D00610069006E00
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20006449006E0073004400540020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020003D000000E60000002873006D0061006C006C00640061007400
      6500740069006D0065002000200020002000200020002000FFFF2E5600610072
      00690061006E00740073004D0065006D00570073004D00610069006E002E0049
      006E0073004400540000000064560061007200690061006E00740073004D0065
      006D00570073004D00610069006E002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000645500700064005500730072002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020003D000000E70000002869
      006E007400200020002000200020002000200020002000200020002000200020
      00200020002000FFFF30560061007200690061006E00740073004D0065006D00
      570073004D00610069006E002E00550070006400550073007200000000645600
      61007200690061006E00740073004D0065006D00570073004D00610069006E00
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000645500700064004400540020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020003D000000E80000002873006D0061006C006C00640061007400
      6500740069006D0065002000200020002000200020002000FFFF2E5600610072
      00690061006E00740073004D0065006D00570073004D00610069006E002E0055
      00700064004400540000000064560061007200690061006E00740073004D0065
      006D00570073004D00610069006E002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200064440065006C006500740065006400
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020003D000000E90000002862
      0069007400200020002000200020002000200020002000200020002000200020
      00200020002000FFFF32560061007200690061006E00740073004D0065006D00
      570073004D00610069006E002E00440065006C00650074006500640000000064
      560061007200690061006E00740073004D0065006D00570073004D0061006900
      6E00200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200064440065006C00550073007200200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020003D000000EA0000002869006E0074002000200020002000
      2000200020002000200020002000200020002000200020002000FFFF30560061
      007200690061006E00740073004D0065006D00570073004D00610069006E002E
      00440065006C0055007300720000000064560061007200690061006E00740073
      004D0065006D00570073004D00610069006E0020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200064440065006C0044005400
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000200020003D000000EB00
      00002873006D0061006C006C006400610074006500740069006D006500200020
      0020002000200020002000FFFF2E560061007200690061006E00740073004D00
      65006D00570073004D00610069006E002E00440065006C004400540000000064
      560061007200690061006E00740073004D0065006D00570073004D0061006900
      6E00200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200064530075006200730065007100750065006E00740041006300740069
      006F006E00200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020003D000000EC000000286E00760061007200630068006100
      7200200020002000200020002000200020002000200020002000FFFF44560061
      007200690061006E00740073004D0065006D00570073004D00610069006E002E
      00530075006200730065007100750065006E00740041006300740069006F006E
      0000000064560061007200690061006E00740073004D0065006D00570073004D
      00610069006E0020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200064530075006200730065007100750065006E0074004300
      6F006D006D0065006E0074007300200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020003D000000ED000000286E0076006100720063
      00680061007200200020002000200020002000200020002000200020002000FF
      FF48560061007200690061006E00740073004D0065006D00570073004D006100
      69006E002E00530075006200730065007100750065006E00740043006F006D00
      6D0065006E007400730000000064560061007200690061006E00740073004D00
      65006D00570073004D00610069006E0020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020006453007500620073006500710075
      0065006E0074004D00610069006C002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020003D000000EE00000028
      6E00760061007200630068006100720020002000200020002000200020002000
      2000200020002000FFFF40560061007200690061006E00740073004D0065006D
      00570073004D00610069006E002E00530075006200730065007100750065006E
      0074004D00610069006C0000000064560061007200690061006E00740073004D
      0065006D00570073004D00610069006E00200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200064530075006200730065007100
      750065006E0074004100750074006F0043006C006F0073006500200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020003D000000EF000000
      2862006900740020002000200020002000200020002000200020002000200020
      002000200020002000FFFF4A560061007200690061006E00740073004D006500
      6D00570073004D00610069006E002E0053007500620073006500710075006500
      6E0074004100750074006F0043006C006F007300650000000064560061007200
      690061006E00740073004D0065006D00570073004D00610069006E0020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020006453
      0075006200730065007100750065006E00740041006300740069007600610074
      0065005400720061006E00730020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020003D000000F0000000286200690074002000200020002000200020002000
      2000200020002000200020002000200020002000FFFF52560061007200690061
      006E00740073004D0065006D00570073004D00610069006E002E005300750062
      00730065007100750065006E0074004100630074006900760061007400650054
      00720061006E00730000000064560061007200690061006E00740073004D0065
      006D00570073004D00610069006E002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000645300750062007300650071007500
      65006E0074004100750074006F00450078006500630020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020003D000000F10000002862
      0069007400200020002000200020002000200020002000200020002000200020
      00200020002000FFFF48560061007200690061006E00740073004D0065006D00
      570073004D00610069006E002E00530075006200730065007100750065006E00
      74004100750074006F0045007800650063000000006456006100720069006100
      6E00740073004D0065006D00570073004D00610069006E002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000645300750062
      00730065007100750065006E0074004C006F006700530065006300740069006F
      006E002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020002000200020003D
      000000F2000000286E0076006100720063006800610072002000200020002000
      20002000200020002000200020002000FFFF4C560061007200690061006E0074
      0073004D0065006D00570073004D00610069006E002E00530075006200730065
      007100750065006E0074004C006F006700530065006300740069006F006E0000
      000064560061007200690061006E00740073004D0065006D00570073004D0061
      0069006E00200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200064530075006200730065007100750065006E00740048006900
      6E00740020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020003D000000F3000000287400650078007400200020
      0020002000200020002000200020002000200020002000200020002000FFFF40
      560061007200690061006E00740073004D0065006D00570073004D0061006900
      6E002E00530075006200730065007100750065006E007400480069006E007400
      00000064560061007200690061006E00740073004D0065006D00570073004D00
      610069006E002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200064530075006200730065007100750065006E007400440069
      0073007000480069006E00740020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020003D000000F40000002862006900740020002000
      200020002000200020002000200020002000200020002000200020002000FFFF
      48560061007200690061006E00740073004D0065006D00570073004D00610069
      006E002E00530075006200730065007100750065006E00740044006900730070
      00480069006E00740000000064560061007200690061006E00740073004D0065
      006D00570073004D00610069006E002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000645300750062007300650071007500
      65006E0074005000720069006E0074004E0061006D0065002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020003D000000F5000000286E
      0076006100720063006800610072002000200020002000200020002000200020
      00200020002000FFFF4A560061007200690061006E00740073004D0065006D00
      570073004D00610069006E002E00530075006200730065007100750065006E00
      74005000720069006E0074004E0061006D006500000000644600690065006C00
      6400530074006100740075007300200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200020006446004F
      0052004D00200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      000F000000F60000002869006E00740020002000200020002000200020002000
      200020002000200020002000200020002000FFFF204600690065006C00640053
      00740061007400750073002E0046004F0052004D00000000644600690065006C
      0064005300740061007400750073002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000645000
      52004F0043002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20000F000000F70000002869006E007400200020002000200020002000200020
      00200020002000200020002000200020002000FFFF204600690065006C006400
      5300740061007400750073002E00500052004F00430000000064460069006500
      6C00640053007400610074007500730020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020006446
      00490045004C0044002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020000F000000F80000002869006E0074002000200020002000200020002000
      2000200020002000200020002000200020002000FFFF224600690065006C0064
      005300740061007400750073002E004600490045004C00440000000064460069
      0065006C00640053007400610074007500730020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0064560049005300490042004C00450020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020000F000000F9000000286200690074002000200020002000200020
      0020002000200020002000200020002000200020002000FFFF26460069006500
      6C0064005300740061007400750073002E00560049005300490042004C004500
      000000644600690065006C006400530074006100740075007300200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000645200450051005500490052004500440020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020000F000000FA0000002862006900740020002000
      200020002000200020002000200020002000200020002000200020002000FFFF
      284600690065006C0064005300740061007400750073002E0052004500510055
      004900520045004400000000644600690065006C006400530074006100740075
      0073002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200064440045004600410055004C005400
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020000F000000FB000000286E
      0076006100720063006800610072002000200020002000200020002000200020
      00200020002000FFFF264600690065006C006400530074006100740075007300
      2E00440045004600410055004C005400000000644600690065006C0064005300
      7400610074007500730020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020006453005500420050
      0052004F00430020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020002000200020000F0000
      00FC000000286E00760061007200630068006100720020002000200020002000
      2000200020002000200020002000FFFF264600690065006C0064005300740061
      007400750073002E00530055004200500052004F004300000000644600690065
      006C006400730020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200064
      4900440020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020000E000000FD0000002869006E00740020002000200020002000200020
      002000200020002000200020002000200020002000FFFF124600690065006C00
      640073002E0049004400000000644600690065006C0064007300200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020006446004F0052004D002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020000E000000FE00000028
      69006E0074002000200020002000200020002000200020002000200020002000
      2000200020002000FFFF164600690065006C00640073002E0046004F0052004D
      00000000644600690065006C0064007300200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000644E0061006D0065002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020000E000000FF000000286E0076006100720063
      00680061007200200020002000200020002000200020002000200020002000FF
      FF164600690065006C00640073002E004E0061006D0065000000006446006900
      65006C0064007300200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      6444006500730063007200200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020000E00000000010000286E0076006100720063006800610072002000
      20002000200020002000200020002000200020002000FFFF184600690065006C
      00640073002E0044006500730063007200000000644600690065006C00640073
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200064540079007000
      6500200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020000E00
      000001010000286E007600610072006300680061007200200020002000200020
      002000200020002000200020002000FFFF164600690065006C00640073002E00
      5400790070006500000000644600690065006C00640073002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200064540061006700200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020000E00000002010000286900
      6E00740020002000200020002000200020002000200020002000200020002000
      200020002000FFFF144600690065006C00640073002E00540061006700000000
      644600690065006C006400730020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200064480065006C007000490044002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020000E00000003010000286E007600610072006300680061
      007200200020002000200020002000200020002000200020002000FFFF1A4600
      690065006C00640073002E00480065006C007000490044000000006456006100
      7200690061006E00740073004D0065006D005700730044006500740061006900
      6C00200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      6449006400200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020003C000000040100002869006E007400200020002000200020002000
      20002000200020002000200020002000200020002000FFFF2C56006100720069
      0061006E00740073004D0065006D0057007300440065007400610069006C002E
      004900640000000064560061007200690061006E00740073004D0065006D0057
      007300440065007400610069006C002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200064560061007200690061006E00740049006400
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020003C000000050100002869006E0074
      0020002000200020002000200020002000200020002000200020002000200020
      002000FFFF3A560061007200690061006E00740073004D0065006D0057007300
      440065007400610069006C002E00560061007200690061006E00740049006400
      00000064560061007200690061006E00740073004D0065006D00570073004400
      65007400610069006C0020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200064430061006C00630041007300560061006C007500650020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020003C000000060100002862006900740020002000
      200020002000200020002000200020002000200020002000200020002000FFFF
      3E560061007200690061006E00740073004D0065006D00570073004400650074
      00610069006C002E00430061006C00630041007300560061006C007500650000
      000064560061007200690061006E00740073004D0065006D0057007300440065
      007400610069006C002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000644600690065006C0064004E0061006D006500200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020003C00000007010000286E00760061007200630068
      0061007200200020002000200020002000200020002000200020002000FFFF3A
      560061007200690061006E00740073004D0065006D0057007300440065007400
      610069006C002E004600690065006C0064004E0061006D006500000000645600
      61007200690061006E00740073004D0065006D00570073004400650074006100
      69006C0020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000644600690065006C00640054007900700065002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020003C000000080100002869006E00740020002000200020002000
      200020002000200020002000200020002000200020002000FFFF3A5600610072
      00690061006E00740073004D0065006D0057007300440065007400610069006C
      002E004600690065006C00640054007900700065000000006456006100720069
      0061006E00740073004D0065006D0057007300440065007400610069006C0020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000644600
      690065006C006400560061006C00750065002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20003C00000009010000286E0076006100720063006800610072002000200020
      00200020002000200020002000200020002000FFFF3C56006100720069006100
      6E00740073004D0065006D0057007300440065007400610069006C002E004600
      690065006C006400560061006C00750065000000006456006100720069006100
      6E00740073004D0065006D0057007300440065007400610069006C0020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200064430061006C
      0063005400790070006500200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020002000200020003C
      0000000A010000286E0076006100720063006800610072002000200020002000
      20002000200020002000200020002000FFFF38560061007200690061006E0074
      0073004D0065006D0057007300440065007400610069006C002E00430061006C
      0063005400790070006500000000644600690065006C0064004E0061006D0065
      0073002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200064690064002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020000D0000000B010000
      2869006E00740020002000200020002000200020002000200020002000200020
      002000200020002000FFFF1A4600690065006C0064004E0061006D0065007300
      2E0069006400000000644600690065006C0064004E0061006D00650073002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000645400610062006C00650049006400200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020000D0000000C0100002869006E00
      7400200020002000200020002000200020002000200020002000200020002000
      20002000FFFF244600690065006C0064004E0061006D00650073002E00540061
      0062006C00650049006400000000644600690065006C0064004E0061006D0065
      0073002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000644600690065006C0064004E00
      61006D0065002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020000D0000000D010000
      286E006300680061007200200020002000200020002000200020002000200020
      002000200020002000FFFF284600690065006C0064004E0061006D0065007300
      2E004600690065006C0064004E0061006D006500000000644600690065006C00
      64004E0061006D00650073002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200064440065
      0073006300720069007000740069006F006E0020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      000D0000000E010000286E006300680061007200200020002000200020002000
      200020002000200020002000200020002000FFFF2C4600690065006C0064004E
      0061006D00650073002E004400650073006300720069007000740069006F006E
      00000000644600690065006C0064004E0061006D006500730020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020006454007900700065002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020000D0000000F010000286E0063006800610072
      00200020002000200020002000200020002000200020002000200020002000FF
      FF1E4600690065006C0064004E0061006D00650073002E005400790070006500
      000000644600690065006C0064004E0061006D00650073002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020006443006800650063006B004300680061006E006700650073
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020000D000000100100002862006900740020002000
      200020002000200020002000200020002000200020002000200020002000FFFF
      2E4600690065006C0064004E0061006D00650073002E0043006800650063006B
      004300680061006E00670065007300000000644400690061006B002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000646900640020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200020000B000000
      110100002869006E007400200020002000200020002000200020002000200020
      00200020002000200020002000FFFF0E4400690061006B002E00690064000000
      00644400690061006B0020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000644400690061006B002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020000B00000012010000286E0076006100720063006800
      61007200200020002000200020002000200020002000200020002000FFFF1244
      00690061006B002E004400690061006B00000000644400690061006B00200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200064500072006900
      6E00740054006500780074002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020000B00
      000013010000286E007600610072006300680061007200200020002000200020
      002000200020002000200020002000FFFF1C4400690061006B002E0050007200
      69006E0074005400650078007400000000644400690061006B00200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000645000720069006E0074
      0054006500780074004900740065006D00200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020000B00000014
      010000286E007600610072006300680061007200200020002000200020002000
      200020002000200020002000FFFF244400690061006B002E005000720069006E
      00740054006500780074004900740065006D00000000644400690061006B0020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020006453004100
      5000490064002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      0B00000015010000286E00630068006100720020002000200020002000200020
      0020002000200020002000200020002000FFFF144400690061006B002E005300
      4100500049006400000000644400690061006B00200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020006449006E007300550073007200200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020000B00000016010000286900
      6E00740020002000200020002000200020002000200020002000200020002000
      200020002000FFFF164400690061006B002E0049006E00730055007300720000
      0000644400690061006B00200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020006449006E007300440054002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020000B00000017010000286400610074006500740069
      006D006500200020002000200020002000200020002000200020002000FFFF14
      4400690061006B002E0049006E00730044005400000000644400690061006B00
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200064550070
      0064005500730072002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      000B000000180100002869006E00740020002000200020002000200020002000
      200020002000200020002000200020002000FFFF164400690061006B002E0055
      0070006400550073007200000000644400690061006B00200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200064550070006400440054002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020000B00000019010000
      286400610074006500740069006D006500200020002000200020002000200020
      002000200020002000FFFF144400690061006B002E0055007000640044005400
      000000644400690061006B002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200064440065006C005500730072002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020000B0000001A0100002869006E00740020002000
      200020002000200020002000200020002000200020002000200020002000FFFF
      164400690061006B002E00440065006C00550073007200000000644400690061
      006B002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200064
      440065006C004400540020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020000B0000001B010000286400610074006500740069006D006500200020
      002000200020002000200020002000200020002000FFFF144400690061006B00
      2E00440065006C0044005400000000644400690061006B002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200064440065006C006500740065
      0064002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020000B0000001C0100
      0028620069007400200020002000200020002000200020002000200020002000
      20002000200020002000FFFF184400690061006B002E00440065006C00650074
      006500640000000064440046006F0072006D0020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200064490044002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020000A0000001D0100002869006E0074
      0020002000200020002000200020002000200020002000200020002000200020
      002000FFFF10440046006F0072006D002E004900440000000064440046006F00
      72006D0020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020006444
      0046006F0072006D005F004E0061006D00650020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020000A0000001E010000286E00760061007200630068006100720020002000
      2000200020002000200020002000200020002000FFFF20440046006F0072006D
      002E00440046006F0072006D005F004E0061006D00650000000064440046006F
      0072006D00200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200064
      440046006F0072006D005F005000650072006900670020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020000A0000001F010000286E007600610072006300680061007200200020
      002000200020002000200020002000200020002000FFFF22440046006F007200
      6D002E00440046006F0072006D005F0050006500720069006700000000644400
      46006F0072006D00200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200064440046006F0072006D005F0055006E00690074005F004E0061006D0065
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020000A00000020010000286E007600610072006300680061007200
      200020002000200020002000200020002000200020002000FFFF2A440046006F
      0072006D002E00440046006F0072006D005F0055006E00690074005F004E0061
      006D00650000000064440046006F0072006D0020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200064440046006F0072006D005F0046006F007200
      6D005F004E0061006D0065002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020000A00000021010000286E00760061
      0072006300680061007200200020002000200020002000200020002000200020
      002000FFFF2A440046006F0072006D002E00440046006F0072006D005F004600
      6F0072006D005F004E0061006D00650000000064440046006F0072006D002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000200064440046006F0072
      006D005F00560065007200730069006F006E0020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020002000200020000A0000
      0022010000286E00760061007200630068006100720020002000200020002000
      2000200020002000200020002000FFFF26440046006F0072006D002E00440046
      006F0072006D005F00560065007200730069006F006E0000000064440046006F
      0072006D00200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200064
      440046006F0072006D005F004C006100730074005F0055007000640061007400
      6500640020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020000A00000023010000286400610074006500740069006D006500200020
      002000200020002000200020002000200020002000FFFF30440046006F007200
      6D002E00440046006F0072006D005F004C006100730074005F00550070006400
      610074006500640000000064440046006F0072006D0020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200064440046006F0072006D005F0043006F
      006D006D0065006E007400730020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020000A00000024010000286E00
      7600610072006300680061007200200020002000200020002000200020002000
      200020002000FFFF28440046006F0072006D002E00440046006F0072006D005F
      0043006F006D006D0065006E007400730000000064440046006F0072006D0020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200064440046006F00
      72006D005F00480065006C007000490044002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020000A00
      000025010000286E007600610072006300680061007200200020002000200020
      002000200020002000200020002000FFFF24440046006F0072006D002E004400
      46006F0072006D005F00480065006C0070004900440000000064440046006F00
      72006D0020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020006444
      0046006F0072006D005F004D005400470072006F007500700020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020000A000000260100002869006E0074002000200020002000200020002000
      2000200020002000200020002000200020002000FFFF26440046006F0072006D
      002E00440046006F0072006D005F004D005400470072006F0075007000000000
      6444006100740065004900640073002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000644900640020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200009000000270100002869006E00740020002000200020
      002000200020002000200020002000200020002000200020002000FFFF144400
      6100740065004900640073002E00490064000000006444006100740065004900
      6400730020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000200020006453006F0075
      0072006300650049006400200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200009
      000000280100002869006E007400200020002000200020002000200020002000
      20002000200020002000200020002000FFFF2044006100740065004900640073
      002E0053006F0075007200630065004900640000000064440061007400650049
      0064007300200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020006444006100
      74006500560061006C0075006500200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      0900000029010000286400610074006500740069006D00650020002000200020
      0020002000200020002000200020002000FFFF22440061007400650049006400
      73002E004400610074006500560061006C007500650000000064440061007400
      6500490064007300200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020006444
      00610074006500560061006C0046002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000090000002A0100002864006500630069006D0061006C00200020002000
      2000200020002000200020002000200020002000FFFF20440061007400650049
      00640073002E004400610074006500560061006C004600000000644400610074
      0065004900640073002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200064
      460069006C0065004E0061006D00650020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000090000002B010000286E006300680061007200200020002000200020
      002000200020002000200020002000200020002000FFFF204400610074006500
      4900640073002E00460069006C0065004E0061006D0065000000006443007500
      730074006F006D00650072002000510075006500720079002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      6449006400200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000080000002C0100002869006E007400200020002000200020002000
      20002000200020002000200020002000200020002000FFFF2243007500730074
      006F006D00650072002000510075006500720079002E00490064000000006443
      007500730074006F006D00650072002000510075006500720079002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000644E0061006D0065002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000080000002D010000286E0076006100720063006800610072
      00200020002000200020002000200020002000200020002000FFFF2643007500
      730074006F006D00650072002000510075006500720079002E004E0061006D00
      65000000006443007500730074006F006D006500720020005100750065007200
      7900200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000644600610078004E006F002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000080000002E010000286E00760061007200
      6300680061007200200020002000200020002000200020002000200020002000
      FFFF2843007500730074006F006D00650072002000510075006500720079002E
      004600610078004E006F000000006443007500730074006F006D006500720020
      0051007500650072007900200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020006465006D00610069006C002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000080000002F010000
      286E007600610072006300680061007200200020002000200020002000200020
      002000200020002000FFFF2843007500730074006F006D006500720020005100
      75006500720079002E0065006D00610069006C00000000644300750073007400
      6F006D0065007200200051007500650072007900200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200020006445006D
      00610069006C00530065006E0064002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0008000000300100002862006900740020002000200020002000200020002000
      200020002000200020002000200020002000FFFF3043007500730074006F006D
      00650072002000510075006500720079002E0045006D00610069006C00530065
      006E0064000000006443007500730074006F006D006500720020005100750065
      0072007900200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200064460061007800530065006E00640020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020000800000031010000286200690074
      0020002000200020002000200020002000200020002000200020002000200020
      002000FFFF2C43007500730074006F006D006500720020005100750065007200
      79002E00460061007800530065006E0064000000006443007500730074006F00
      6D00650072002000510075006500720079002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200064440065006C
      0065007400650064002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200008
      0000003201000028620069007400200020002000200020002000200020002000
      20002000200020002000200020002000FFFF2C43007500730074006F006D0065
      0072002000510075006500720079002E00440065006C00650074006500640000
      00006443007500730074006F006D006500720020005100750065007200790020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200064410063007400690076006500200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020000800000033010000286200690074002000200020
      0020002000200020002000200020002000200020002000200020002000FFFF2A
      43007500730074006F006D00650072002000510075006500720079002E004100
      630074006900760065000000006443007500730074006F006D00650072002000
      5100750065007200790020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020006443007500730074004700720070
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000080000003401000028
      69006E0074002000200020002000200020002000200020002000200020002000
      2000200020002000FFFF2C43007500730074006F006D00650072002000510075
      006500720079002E0043007500730074004700720070000000006456004C005F
      0050006500720073006F006E0073002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200064
      4E0061006D006500200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020004000000035010000286E006300680061007200200020002000200020
      002000200020002000200020002000200020002000FFFF1E56004C005F005000
      6500720073006F006E0073002E004E0061006D0065000000006456004C005F00
      4400720069007600650072004E0061006D006500200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020006444
      00720076004E0061006D00650020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020003F00000036010000286E00630068006100720020002000200020002000
      2000200020002000200020002000200020002000FFFF2A56004C005F00440072
      0069007600650072004E0061006D0065002E004400720076004E0061006D0065
      000000006456004C005F0043006F006D00700061006E00790020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000644E0061006D0065002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020003E00000037010000286E0063006800610072
      00200020002000200020002000200020002000200020002000200020002000FF
      FF1E56004C005F0043006F006D00700061006E0079002E004E0061006D006500
      0000006450006500720073006F006E0073005600690073006900740020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000646900640020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200017000000380100002869006E00740020002000
      200020002000200020002000200020002000200020002000200020002000FFFF
      1E50006500720073006F006E007300560069007300690074002E006900640000
      00006450006500720073006F006E007300560069007300690074002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000644E0061006D00650020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020001700000039010000286E00630068006100720020
      0020002000200020002000200020002000200020002000200020002000FFFF22
      50006500720073006F006E007300560069007300690074002E004E0061006D00
      65000000006450006500720073006F006E007300560069007300690074002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020006443006F006D00700061006E00790020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000170000003A010000286E00630068006100
      7200200020002000200020002000200020002000200020002000200020002000
      FFFF2850006500720073006F006E007300560069007300690074002E0043006F
      006D00700061006E0079000000006450006500720073006F006E007300560069
      0073006900740020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000644900640065006E0074006900
      740079004E006F00200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000170000003B010000
      286E006300680061007200200020002000200020002000200020002000200020
      002000200020002000FFFF2E50006500720073006F006E007300560069007300
      690074002E004900640065006E0074006900740079004E006F00000000645000
      6500720073006F006E0073005600690073006900740020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20006452006500610073006F006E002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000170000003C010000286E006300680061007200200020002000
      200020002000200020002000200020002000200020002000FFFF265000650072
      0073006F006E007300560069007300690074002E0052006500610073006F006E
      000000006450006500720073006F006E00730056006900730069007400200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020006443006F006E0074006100630074005700690074006800
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000170000003D010000286E0063006800610072
      00200020002000200020002000200020002000200020002000200020002000FF
      FF3050006500720073006F006E007300560069007300690074002E0043006F00
      6E00740061006300740057006900740068000000006450006500720073006F00
      6E00730056006900730069007400200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000645700690074
      0068004300610072002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200017
      0000003E01000028620069007400200020002000200020002000200020002000
      20002000200020002000200020002000FFFF2850006500720073006F006E0073
      00560069007300690074002E0057006900740068004300610072000000006450
      006500720073006F006E00730056006900730069007400200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000644300610072004E0075006D0062006500720020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000170000003F010000286E0063006800610072002000200020
      00200020002000200020002000200020002000200020002000FFFF2C50006500
      720073006F006E007300560069007300690074002E004300610072004E007500
      6D006200650072000000006450006500720073006F006E007300560069007300
      6900740020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020006443006100720064004E0075006D0062
      0065007200200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020001700000040010000286900
      6E00740020002000200020002000200020002000200020002000200020002000
      200020002000FFFF2E50006500720073006F006E007300560069007300690074
      002E0043006100720064004E0075006D00620065007200000000645000650072
      0073006F006E0073005600690073006900740020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200064
      4400610074006500540069006D00650049006E00200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020001700000041010000286400610074006500740069006D006500200020
      002000200020002000200020002000200020002000FFFF2E5000650072007300
      6F006E007300560069007300690074002E004400610074006500540069006D00
      650049006E000000006450006500720073006F006E0073005600690073006900
      7400200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000644400610074006500540069006D0065004F
      0075007400200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200017000000420100002864006100
      74006500740069006D0065002000200020002000200020002000200020002000
      20002000FFFF3050006500720073006F006E007300560069007300690074002E
      004400610074006500540069006D0065004F0075007400000000645000650072
      0073006F006E0073005600690073006900740020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200064
      49006E0073005500730072002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200017000000430100002869006E00740020002000200020002000200020
      002000200020002000200020002000200020002000FFFF265000650072007300
      6F006E007300560069007300690074002E0049006E0073005500730072000000
      006450006500720073006F006E00730056006900730069007400200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020006449006E00730044005400200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000170000004401000028640061007400650074006900
      6D006500200020002000200020002000200020002000200020002000FFFF2450
      006500720073006F006E007300560069007300690074002E0049006E00730044
      0054000000006450006500720073006F006E0073005600690073006900740020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020006449006E0055007300720020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200017000000450100002869006E00740020
      0020002000200020002000200020002000200020002000200020002000200020
      00FFFF2450006500720073006F006E007300560069007300690074002E004900
      6E005500730072000000006450006500720073006F006E007300560069007300
      6900740020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000644F0075007400550073007200200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020001700000046010000286900
      6E00740020002000200020002000200020002000200020002000200020002000
      200020002000FFFF2650006500720073006F006E007300560069007300690074
      002E004F00750074005500730072000000006450006500720073006F006E0073
      0056006900730069007400200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200064460075006C006C00
      460069006C006C00650064002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200017000000
      4701000028620069007400200020002000200020002000200020002000200020
      00200020002000200020002000FFFF2E50006500720073006F006E0073005600
      69007300690074002E00460075006C006C00460069006C006C00650064000000
      006450006500720073006F006E00730056006900730069007400200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200064460075006C006C00460069006C006C00650064004400540020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000170000004801000028640061007400650074006900
      6D006500200020002000200020002000200020002000200020002000FFFF3250
      006500720073006F006E007300560069007300690074002E00460075006C006C
      00460069006C006C0065006400440054000000006450006500720073006F006E
      0073005600690073006900740020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020006443006F006D00
      6D0065006E007400730020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020001700
      000049010000286E006300680061007200200020002000200020002000200020
      002000200020002000200020002000FFFF2A50006500720073006F006E007300
      560069007300690074002E0043006F006D006D0065006E007400730000000064
      4300610072007300560069007300690074005700650069006700680074002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200064690064002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000040000004A0100002869006E0074002000200020002000
      2000200020002000200020002000200020002000200020002000FFFF24430061
      0072007300560069007300690074005700650069006700680074002E00690064
      0000000064430061007200730056006900730069007400570065006900670068
      0074002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020006441006300740069006F006E004C006500760065006C00
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000040000004B0100002869006E007400200020
      00200020002000200020002000200020002000200020002000200020002000FF
      FF36430061007200730056006900730069007400570065006900670068007400
      2E0041006300740069006F006E004C006500760065006C000000006443006100
      7200730056006900730069007400570065006900670068007400200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      6461006100200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000040000004C0100002869006E007400200020002000200020002000
      20002000200020002000200020002000200020002000FFFF2443006100720073
      00560069007300690074005700650069006700680074002E0061006100000000
      6443006100720073005600690073006900740057006500690067006800740020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000645700650069006700680074004400540020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000040000004D010000286400610074006500740069006D
      006500200020002000200020002000200020002000200020002000FFFF304300
      610072007300560069007300690074005700650069006700680074002E005700
      6500690067006800740044005400000000644300610072007300560069007300
      6900740057006500690067006800740020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200064570065006900670068
      0074004100410020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020002000040000004E
      0100002869006E00740020002000200020002000200020002000200020002000
      200020002000200020002000FFFF304300610072007300560069007300690074
      005700650069006700680074002E005700650069006700680074004100410000
      0000644300610072007300560069007300690074005700650069006700680074
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200064570065006900670068007400200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000040000004F0100002864006500630069006D0061
      006C002000200020002000200020002000200020002000200020002000FFFF2C
      4300610072007300560069007300690074005700650069006700680074002E00
      5700650069006700680074000000006443006100720073005600690073006900
      74004F0074006800650072002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000646900640020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200002000000500100
      002869006E007400200020002000200020002000200020002000200020002000
      20002000200020002000FFFF224300610072007300560069007300690074004F
      0074006800650072002E00690064000000006443006100720073005600690073
      00690074004F0074006800650072002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000645200650067004E00
      6F00200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200002000000
      51010000286E0063006800610072002000200020002000200020002000200020
      00200020002000200020002000FFFF2843006100720073005600690073006900
      74004F0074006800650072002E005200650067004E006F000000006443006100
      72007300560069007300690074004F0074006800650072002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      64430075007200720065006E0074005300740061007400650020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200002000000520100002869006E007400200020002000200020002000
      20002000200020002000200020002000200020002000FFFF3643006100720073
      00560069007300690074004F0074006800650072002E00430075007200720065
      006E007400530074006100740065000000006443006100720073005600690073
      00690074004F0074006800650072002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000644400720076004E00
      61006D0065002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200002000000
      53010000286E0063006800610072002000200020002000200020002000200020
      00200020002000200020002000FFFF2C43006100720073005600690073006900
      74004F0074006800650072002E004400720076004E0061006D00650000000064
      4300610072007300560069007300690074004F00740068006500720020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020006443006F006D00700061006E00790020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020000200000054010000286E00630068006100720020002000
      2000200020002000200020002000200020002000200020002000FFFF2C430061
      0072007300560069007300690074004F0074006800650072002E0043006F006D
      00700061006E007900000000644300610072007300560069007300690074004F
      0074006800650072002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000644300610072004F0077006E006500
      7200200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020000200000055010000286E
      0063006800610072002000200020002000200020002000200020002000200020
      00200020002000FFFF2E4300610072007300560069007300690074004F007400
      6800650072002E004300610072004F0077006E00650072000000006443006100
      72007300560069007300690074004F0074006800650072002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      64440041005F004E0075006D0020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020000200000056010000286E0063006800610072002000200020002000
      20002000200020002000200020002000200020002000FFFF2A43006100720073
      00560069007300690074004F0074006800650072002E00440041005F004E0075
      006D00000000644300610072007300560069007300690074004F007400680065
      0072002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200064500072006F006400750063007400730020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020000200000057010000286E006300680061
      0072002000200020002000200020002000200020002000200020002000200020
      00FFFF2E4300610072007300560069007300690074004F007400680065007200
      2E00500072006F00640075006300740073000000006443006100720073005600
      69007300690074004F0074006800650072002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000645700690074
      0068006F00750074005700650069006700680074002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200002
      0000005801000028620069007400200020002000200020002000200020002000
      20002000200020002000200020002000FFFF3843006100720073005600690073
      00690074004F0074006800650072002E0057006900740068006F007500740057
      0065006900670068007400000000644300610072007300560069007300690074
      004F007400680065007200200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200064440061007400650054006900
      6D00650049006E00200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020000200000059010000
      286400610074006500740069006D006500200020002000200020002000200020
      002000200020002000FFFF324300610072007300560069007300690074004F00
      74006800650072002E004400610074006500540069006D00650049006E000000
      00644300610072007300560069007300690074004F0074006800650072002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000644400610074006500540069006D0065004F0075007400200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000020000005A01000028640061007400650074006900
      6D006500200020002000200020002000200020002000200020002000FFFF3443
      00610072007300560069007300690074004F0074006800650072002E00440061
      0074006500540069006D0065004F007500740000000064430061007200730056
      0069007300690074004F00740068006500720020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020006449006E00
      7300550073007200200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      020000005B0100002869006E0074002000200020002000200020002000200020
      0020002000200020002000200020002000FFFF2A430061007200730056006900
      7300690074004F0074006800650072002E0049006E0073005500730072000000
      00644300610072007300560069007300690074004F0074006800650072002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020006449006E00730044005400200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000020000005C01000028640061007400650074006900
      6D006500200020002000200020002000200020002000200020002000FFFF2843
      00610072007300560069007300690074004F0074006800650072002E0049006E
      00730044005400000000644300610072007300560069007300690074004F0074
      0068006500720020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020006449006E00550073007200200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000020000005D0100002869006E
      0074002000200020002000200020002000200020002000200020002000200020
      0020002000FFFF284300610072007300560069007300690074004F0074006800
      650072002E0049006E0055007300720000000064430061007200730056006900
      7300690074004F00740068006500720020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000644F007500740055
      0073007200200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000020000
      005E0100002869006E0074002000200020002000200020002000200020002000
      2000200020002000200020002000FFFF2A430061007200730056006900730069
      0074004F0074006800650072002E004F00750074005500730072000000006443
      00610072007300560069007300690074004F0074006800650072002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200064460075006C006C00460069006C006C00650064002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000020000005F01000028620069007400200020002000200020
      00200020002000200020002000200020002000200020002000FFFF3243006100
      72007300560069007300690074004F0074006800650072002E00460075006C00
      6C00460069006C006C0065006400000000644300610072007300560069007300
      690074004F007400680065007200200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200064460075006C006C0046
      0069006C006C0065006400440054002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020000200000060
      010000286400610074006500740069006D006500200020002000200020002000
      200020002000200020002000FFFF364300610072007300560069007300690074
      004F0074006800650072002E00460075006C006C00460069006C006C00650064
      0044005400000000644300610072007300560069007300690074004F00740068
      0065007200200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020006443006F006D006D0065006E00740073002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020000200000061010000286E00630068
      0061007200200020002000200020002000200020002000200020002000200020
      002000FFFF2E4300610072007300560069007300690074004F00740068006500
      72002E0043006F006D006D0065006E007400730000000064500072006F006400
      7500630074007300200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200064690064
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0018000000620100002869006E00740020002000200020002000200020002000
      200020002000200020002000200020002000FFFF16500072006F006400750063
      00740073002E006900640000000064500072006F006400750063007400730020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000644E0061006D00650020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020001800000063010000
      286E006300680061007200200020002000200020002000200020002000200020
      002000200020002000FFFF1A500072006F00640075006300740073002E004E00
      61006D00650000000064500072006F0064007500630074007300200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020006443006F006D006D0065006E007400730020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020001800000064010000286E006300
      6800610072002000200020002000200020002000200020002000200020002000
      20002000FFFF22500072006F00640075006300740073002E0043006F006D006D
      0065006E00740073000000006444007200690076006500720073002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000646900640020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020000C000000650100002869
      006E007400200020002000200020002000200020002000200020002000200020
      00200020002000FFFF1444007200690076006500720073002E00690064000000
      0064440072006900760065007200730020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000644E0061006D0065002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020000C00000066010000286E0063006800610072002000
      20002000200020002000200020002000200020002000200020002000FFFF1844
      007200690076006500720073002E004E0061006D006500000000644400720069
      0076006500720073002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200064
      43006F006D00700061006E007900490064002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020000C000000670100002869006E00740020002000200020002000200020
      002000200020002000200020002000200020002000FFFF224400720069007600
      6500720073002E0043006F006D00700061006E00790049006400000000644400
      7200690076006500720073002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20006443006F006D006D0065006E007400730020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020000C00000068010000286E006300680061007200200020002000
      200020002000200020002000200020002000200020002000FFFF204400720069
      0076006500720073002E0043006F006D006D0065006E00740073000000006443
      0061007200730020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020006469006400200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200001000000690100002869006E007400200020002000200020
      00200020002000200020002000200020002000200020002000FFFF0E43006100
      720073002E006900640000000064430061007200730020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000645200650067004E006F00200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000010000006A01000028
      6E00630068006100720020002000200020002000200020002000200020002000
      2000200020002000FFFF1443006100720073002E005200650067004E006F0000
      0000644300610072007300200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020006443006F006D00700061006E00790049006400200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000010000006B0100002869006E0074002000200020
      0020002000200020002000200020002000200020002000200020002000FFFF1C
      43006100720073002E0043006F006D00700061006E0079004900640000000064
      4300610072007300200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020006443006F006D00700061006E00790020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000010000006C010000286E00630068006100720020002000
      2000200020002000200020002000200020002000200020002000FFFF18430061
      00720073002E0043006F006D00700061006E0079000000006443006100720073
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000644300
      6100700061006300690074007900200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000010000006D0100002864006500630069006D0061006C0020002000200020
      00200020002000200020002000200020002000FFFF1A43006100720073002E00
      4300610070006100630069007400790000000064430061007200730020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000200064470072006F0073
      0073002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000010000
      006E0100002864006500630069006D0061006C00200020002000200020002000
      2000200020002000200020002000FFFF1443006100720073002E00470072006F
      0073007300000000644300610072007300200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200064540072007500730074005000650072006900
      6F00640020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000010000006F0100002869006E0074
      0020002000200020002000200020002000200020002000200020002000200020
      002000FFFF2043006100720073002E0054007200750073007400500065007200
      69006F0064000000006443006100720073002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020006443006F006D006D0065006E007400730020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020000100000070010000286E007600
      6100720063006800610072002000200020002000200020002000200020002000
      20002000FFFF1A43006100720073002E0043006F006D006D0065006E00740073
      000000006443006F006D00700061006E00790020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020006469006400200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200005000000710100002869006E007400200020
      00200020002000200020002000200020002000200020002000200020002000FF
      FF1443006F006D00700061006E0079002E00690064000000006443006F006D00
      700061006E007900200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200020002000644E
      0061006D00650020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020000500000072010000286E00630068006100720020002000200020002000
      2000200020002000200020002000200020002000FFFF1843006F006D00700061
      006E0079002E004E0061006D0065000000006443006F006D00700061006E0079
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020006443006F006D006D00
      65006E0074007300200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200005000000
      73010000286E0063006800610072002000200020002000200020002000200020
      00200020002000200020002000FFFF2043006F006D00700061006E0079002E00
      43006F006D006D0065006E00740073000000006443006F006D00700061006E00
      7900200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020006446007200690065
      006E00640043006F006D00700061006E00790020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000050000
      0074010000286200690074002000200020002000200020002000200020002000
      2000200020002000200020002000FFFF2A43006F006D00700061006E0079002E
      0046007200690065006E00640043006F006D00700061006E0079000000006443
      006F006D00700061006E00790020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000645300700065006300690061006C0043006F006D002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000050000007501000028620069007400200020002000200020
      00200020002000200020002000200020002000200020002000FFFF2443006F00
      6D00700061006E0079002E005300700065006300690061006C0043006F006D00
      000000644300610072007300560069007300690074004F007500720020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000646900640020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200003000000760100002869006E00740020002000
      200020002000200020002000200020002000200020002000200020002000FFFF
      1E4300610072007300560069007300690074004F00750072002E006900640000
      0000644300610072007300560069007300690074004F00750072002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000645200650067004E006F004900640020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200003000000770100002869006E0074002000200020
      0020002000200020002000200020002000200020002000200020002000FFFF28
      4300610072007300560069007300690074004F00750072002E00520065006700
      4E006F0049006400000000644300610072007300560069007300690074004F00
      7500720020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200064430075007200720065006E00740053
      0074006100740065002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020000300000078010000286900
      6E00740020002000200020002000200020002000200020002000200020002000
      200020002000FFFF324300610072007300560069007300690074004F00750072
      002E00430075007200720065006E007400530074006100740065000000006443
      00610072007300560069007300690074004F0075007200200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020006446007200690065006E00640043006100720020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000030000007901000028620069007400200020002000200020
      00200020002000200020002000200020002000200020002000FFFF2C43006100
      72007300560069007300690074004F00750072002E0046007200690065006E00
      6400430061007200000000644300610072007300560069007300690074004F00
      7500720020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000644400720076004E0061006D00650049
      0064002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000030000007A010000286900
      6E00740020002000200020002000200020002000200020002000200020002000
      200020002000FFFF2C4300610072007300560069007300690074004F00750072
      002E004400720076004E0061006D006500490064000000006443006100720073
      00560069007300690074004F0075007200200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000644300
      6F006D00700061006E0079004900640020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000030000007B0100002869006E007400200020002000200020002000200020
      00200020002000200020002000200020002000FFFF2C43006100720073005600
      69007300690074004F00750072002E0043006F006D00700061006E0079004900
      6400000000644300610072007300560069007300690074004F00750072002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200064440041005F004E0075006D00200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000030000007C010000286E00630068006100
      7200200020002000200020002000200020002000200020002000200020002000
      FFFF264300610072007300560069007300690074004F00750072002E00440041
      005F004E0075006D00000000644300610072007300560069007300690074004F
      0075007200200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200064500072006F006400750063007400
      7300200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000030000007D010000286E
      0063006800610072002000200020002000200020002000200020002000200020
      00200020002000FFFF2A4300610072007300560069007300690074004F007500
      72002E00500072006F0064007500630074007300000000644300610072007300
      560069007300690074004F007500720020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200064570069
      00740068006F0075007400570065006900670068007400200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00030000007E0100002862006900740020002000200020002000200020002000
      200020002000200020002000200020002000FFFF344300610072007300560069
      007300690074004F00750072002E0057006900740068006F0075007400570065
      006900670068007400000000644300610072007300560069007300690074004F
      0075007200200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000644400610074006500540069006D00
      650049006E002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000030000007F0100002864
      00610074006500740069006D0065002000200020002000200020002000200020
      00200020002000FFFF2E4300610072007300560069007300690074004F007500
      72002E004400610074006500540069006D00650049006E000000006443006100
      72007300560069007300690074004F0075007200200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      644400610074006500540069006D0065004F0075007400200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020000300000080010000286400610074006500740069006D0065002000
      20002000200020002000200020002000200020002000FFFF3043006100720073
      00560069007300690074004F00750072002E004400610074006500540069006D
      0065004F0075007400000000644300610072007300560069007300690074004F
      0075007200200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020006449006E0073005500730072002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200003000000810100002869
      006E007400200020002000200020002000200020002000200020002000200020
      00200020002000FFFF264300610072007300560069007300690074004F007500
      72002E0049006E00730055007300720000000064430061007200730056006900
      7300690074004F00750072002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020006449006E00730044
      0054002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000030000
      0082010000286400610074006500740069006D00650020002000200020002000
      2000200020002000200020002000FFFF24430061007200730056006900730069
      0074004F00750072002E0049006E007300440054000000006443006100720073
      00560069007300690074004F0075007200200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000644900
      6E00550073007200200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200003000000830100002869006E007400200020002000200020002000200020
      00200020002000200020002000200020002000FFFF2443006100720073005600
      69007300690074004F00750072002E0049006E00550073007200000000644300
      610072007300560069007300690074004F007500720020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000644F00750074005500730072002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200003000000840100002869006E00740020002000200020002000
      200020002000200020002000200020002000200020002000FFFF264300610072
      007300560069007300690074004F00750072002E004F00750074005500730072
      00000000644300610072007300560069007300690074004F0075007200200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200064460075006C006C00460069006C006C00650064002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000030000008501000028620069007400200020
      00200020002000200020002000200020002000200020002000200020002000FF
      FF2E4300610072007300560069007300690074004F00750072002E0046007500
      6C006C00460069006C006C006500640000000064430061007200730056006900
      7300690074004F00750072002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000200064460075006C006C
      00460069006C006C006500640044005400200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000030000
      0086010000286400610074006500740069006D00650020002000200020002000
      2000200020002000200020002000FFFF32430061007200730056006900730069
      0074004F00750072002E00460075006C006C00460069006C006C006500640044
      005400000000644300610072007300560069007300690074004F007500720020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020006443006F006D006D0065006E007400730020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020000300000087010000286E006300680061
      0072002000200020002000200020002000200020002000200020002000200020
      00FFFF2A4300610072007300560069007300690074004F00750072002E004300
      6F006D006D0065006E007400730000000064730074004C006F00670020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200064690064002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002700000088
      0100002869006E00740020002000200020002000200020002000200020002000
      200020002000200020002000FFFF10730074004C006F0067002E006900640000
      000064730074004C006F00670020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000645500730072005F0069006400200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200027000000890100002869006E0074002000200020
      0020002000200020002000200020002000200020002000200020002000FFFF18
      730074004C006F0067002E005500730072005F00690064000000006473007400
      4C006F0067002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      644C006F00670044006100740065002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000270000008A0100002873006D0061006C006C006400610074006500
      740069006D0065002000200020002000200020002000FFFF1A730074004C006F
      0067002E004C006F006700440061007400650000000064730074004C006F0067
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020006446006F00
      72006D005F006900640020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      270000008B010000286E00760061007200630068006100720020002000200020
      0020002000200020002000200020002000FFFF1A730074004C006F0067002E00
      46006F0072006D005F006900640000000064730074004C006F00670020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000644C006F006700410041
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020002000270000008C
      0100002873006D0061006C006C0069006E007400200020002000200020002000
      200020002000200020002000FFFF16730074004C006F0067002E004C006F0067
      004100410000000064730074004C006F00670020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000644C006F006700540069006D00650049006E00
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000270000008D0100002873006D0061
      006C006C006400610074006500740069006D0065002000200020002000200020
      002000FFFF1E730074004C006F0067002E004C006F006700540069006D006500
      49006E0000000064730074004C006F0067002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000644C006F006700540069006D0065004F00750074
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000270000008E0100002873006D006100
      6C006C006400610074006500740069006D006500200020002000200020002000
      2000FFFF20730074004C006F0067002E004C006F006700540069006D0065004F
      007500740000000064730074004C006F0063006B0069006E0067002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000645400610062006C0065004E0061006D006500
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000260000008F010000286E00760061
      0072006300680061007200200020002000200020002000200020002000200020
      002000FFFF26730074004C006F0063006B0069006E0067002E00540061006200
      6C0065004E0061006D00650000000064730074004C006F0063006B0069006E00
      6700200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000644B0065007900560061006C
      0075006500200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200026000000900100
      00286E0076006100720063006800610072002000200020002000200020002000
      20002000200020002000FFFF24730074004C006F0063006B0069006E0067002E
      004B0065007900560061006C007500650000000064730074004C006F0063006B
      0069006E00670020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200064520065006600
      5F0055007300650072005F004900640020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002600
      0000910100002869006E00740020002000200020002000200020002000200020
      002000200020002000200020002000FFFF2A730074004C006F0063006B006900
      6E0067002E005200650066005F0055007300650072005F004900640000000064
      730074004C006F0063006B0069006E0067002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000645400540069006D0065002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200026000000920100002873006D0061006C006C0064006100
      74006500740069006D0065002000200020002000200020002000FFFF1E730074
      004C006F0063006B0069006E0067002E005400540069006D0065000000006473
      0074004C006F0063006B0069006E006700200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000645200650066005F0046006F0072006D005F0069006400200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200026000000930100002869006E007400200020002000200020
      00200020002000200020002000200020002000200020002000FFFF2A73007400
      4C006F0063006B0069006E0067002E005200650066005F0046006F0072006D00
      5F006900640000000064730074004C006F0063006B0020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000644900640020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200025000000940100002869006E00
      7400200020002000200020002000200020002000200020002000200020002000
      20002000FFFF12730074004C006F0063006B002E004900640000000064730074
      004C006F0063006B002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00645400610062006C0065004E0061006D006500200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002500000095010000286E00760061007200630068006100720020
      0020002000200020002000200020002000200020002000FFFF20730074004C00
      6F0063006B002E005400610062006C0065004E0061006D006500000000647300
      74004C006F0063006B0020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200064460069006C006C00650072002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002500000096010000286E006300680061007200200020002000
      200020002000200020002000200020002000200020002000FFFF1A730074004C
      006F0063006B002E00460069006C006C00650072000000006473007400470072
      0069006400470065006E00200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000646900
      6400200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200024000000970100002869006E007400200020002000200020002000200020
      00200020002000200020002000200020002000FFFF1873007400470072006900
      6400470065006E002E0069006400000000647300740047007200690064004700
      65006E0020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020006447007200690064004E
      0061006D00650020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002400000098
      010000286E006300680061007200200020002000200020002000200020002000
      200020002000200020002000FFFF24730074004700720069006400470065006E
      002E0047007200690064004E0061006D00650000000064730074004700720069
      006400470065006E002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020006448006100
      73005000690076006F0074002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2400000099010000286200690074002000200020002000200020002000200020
      0020002000200020002000200020002000FFFF24730074004700720069006400
      470065006E002E004800610073005000690076006F0074000000006473007400
      47007200690064005F005000690076006F007400200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      6469006400200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000230000009A0100002869006E007400200020002000200020002000
      20002000200020002000200020002000200020002000FFFF1E73007400470072
      00690064005F005000690076006F0074002E0069006400000000647300740047
      007200690064005F005000690076006F00740020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200064
      4700720069006400490064002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000230000009B0100002869006E00740020002000200020002000200020
      002000200020002000200020002000200020002000FFFF267300740047007200
      690064005F005000690076006F0074002E004700720069006400490064000000
      00647300740047007200690064005F005000690076006F007400200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020006445007800630065006C004D006100630072006F004E0061006D
      0065002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000230000009C010000286E0076006100720063006800
      61007200200020002000200020002000200020002000200020002000FFFF3673
      00740047007200690064005F005000690076006F0074002E0045007800630065
      006C004D006100630072006F004E0061006D0065000000006473007400470072
      00690064005F005000690076006F007400200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000644500
      7800630065006C004D006100630072006F00460069006C006500200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000230000009D010000286E0076006100720063006800610072002000200020
      00200020002000200020002000200020002000FFFF3673007400470072006900
      64005F005000690076006F0074002E0045007800630065006C004D0061006300
      72006F00460069006C006500000000647300740047007200690064005F005000
      690076006F007400200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020006445007800630065006C004D
      006100630072006F0044006900730070004E0061006D00650020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020002000230000009E0100
      00286E0076006100720063006800610072002000200020002000200020002000
      20002000200020002000FFFF3E7300740047007200690064005F005000690076
      006F0074002E0045007800630065006C004D006100630072006F004400690073
      0070004E0061006D0065000000006473007400470065006E0050006100720061
      006D002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200064690064002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000220000009F010000
      2869006E00740020002000200020002000200020002000200020002000200020
      002000200020002000FFFF1A73007400470065006E0050006100720061006D00
      2E00690064000000006473007400470065006E0050006100720061006D002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000645400790070006500200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200022000000A00100002875006E00
      69007100750065006900640065006E0074006900660069006500720020002000
      20002000FFFF1E73007400470065006E0050006100720061006D002E00540079
      00700065000000006473007400470065006E0050006100720061006D00200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020006453006F007200740020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200022000000A10100002869006E0074
      0020002000200020002000200020002000200020002000200020002000200020
      002000FFFF1E73007400470065006E0050006100720061006D002E0053006F00
      720074000000006473007400470065006E0050006100720061006D0020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020006446006C00640054007900700065002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200022000000A20100002869006E007400
      2000200020002000200020002000200020002000200020002000200020002000
      2000FFFF2473007400470065006E0050006100720061006D002E0046006C0064
      0054007900700065000000006473007400470065006E0050006100720061006D
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200064560061006C007500650031002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200022000000A3010000286E
      0076006100720063006800610072002000200020002000200020002000200020
      00200020002000FFFF2273007400470065006E0050006100720061006D002E00
      560061006C007500650031000000006473007400470065006E00500061007200
      61006D0020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200064560061006C007500650032
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200022000000A40100
      00286E0076006100720063006800610072002000200020002000200020002000
      20002000200020002000FFFF2273007400470065006E0050006100720061006D
      002E00560061006C007500650032000000006473007400470065006E00500061
      00720061006D0020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200064560061006C007500
      6500330020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200022000000
      A5010000286E0076006100720063006800610072002000200020002000200020
      00200020002000200020002000FFFF2273007400470065006E00500061007200
      61006D002E00560061006C007500650033000000006473007400470065006E00
      50006100720061006D0020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200064560061006C
      0075006500340020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200022
      000000A6010000286E0076006100720063006800610072002000200020002000
      20002000200020002000200020002000FFFF2273007400470065006E00500061
      00720061006D002E00560061006C007500650034000000006473007400470065
      006E0050006100720061006D0020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000645600
      61006C0075006500350020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200022000000A7010000286E0076006100720063006800610072002000200020
      00200020002000200020002000200020002000FFFF2273007400470065006E00
      50006100720061006D002E00560061006C007500650035000000006473007400
      4600500061007300730020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      6449006400200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200021000000A80100002869006E007400200020002000200020002000
      20002000200020002000200020002000200020002000FFFF1473007400460050
      006100730073002E004900640000000064730074004600500061007300730020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000644C006F00670069006E00
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200021000000A901
      0000286E00760061007200630068006100720020002000200020002000200020
      0020002000200020002000FFFF1A73007400460050006100730073002E004C00
      6F00670069006E00000000647300740046005000610073007300200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200064500061007300730077006400200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200021000000AA010000286E00
      7600610072006300680061007200200020002000200020002000200020002000
      200020002000FFFF1C73007400460050006100730073002E0050006100730073
      0077006400000000647300740046005000610073007300200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200064470072006F00750070002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200021000000AB0100002873006D0061
      006C006C0069006E007400200020002000200020002000200020002000200020
      002000FFFF1A73007400460050006100730073002E00470072006F0075007000
      0000006473007400460050006100730073002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000644E0061006D006500200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200021000000AC010000286E007600610072006300
      680061007200200020002000200020002000200020002000200020002000FFFF
      1873007400460050006100730073002E004E0061006D00650000000064730074
      0046005000610073007300200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0064410064006400720065007300730020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200021000000AD010000286E00760061007200630068006100720020
      0020002000200020002000200020002000200020002000FFFF1E730074004600
      50006100730073002E0041006400640072006500730073000000006473007400
      4600500061007300730020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      6445004D00410049004C00200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200021000000AE010000286E0076006100720063006800610072002000
      20002000200020002000200020002000200020002000FFFF1A73007400460050
      006100730073002E0045004D00410049004C0000000064730074004600500061
      0073007300200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020006450006800
      6F006E0065002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      21000000AF010000286E00760061007200630068006100720020002000200020
      0020002000200020002000200020002000FFFF1A730074004600500061007300
      73002E00500068006F006E006500000000647300740046005000610073007300
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020006443006F006E006E005F
      00540069006D0065002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020002000200021000000B0
      0100002866006C006F0061007400200020002000200020002000200020002000
      200020002000200020002000FFFF2273007400460050006100730073002E0043
      006F006E006E005F00540069006D006500000000647300740046005000610073
      0073002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200064560061006C00
      690064005F00540069006C006C00200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002100
      0000B1010000286400610074006500740069006D006500200020002000200020
      002000200020002000200020002000FFFF247300740046005000610073007300
      2E00560061006C00690064005F00540069006C006C0000000064730074004600
      5000610073007300200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020006453
      0074006100740068002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200021000000B20100002869006E0074002000200020002000200020002000
      2000200020002000200020002000200020002000FFFF1A730074004600500061
      00730073002E0053007400610074006800000000647300740046005000610073
      0073002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200064440065006C00
      6500740065006400200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002100
      0000B30100002862006900740020002000200020002000200020002000200020
      002000200020002000200020002000FFFF1E7300740046005000610073007300
      2E00440065006C00650074006500640000000064730074004600500061007300
      7300200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000200064440065006C0055
      0073007200200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000210000
      00B40100002869006E0074002000200020002000200020002000200020002000
      2000200020002000200020002000FFFF1C73007400460050006100730073002E
      00440065006C0055007300720000000064730074004600500061007300730020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200064440065006C0044005400
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200021000000B501
      00002873006D0061006C006C006400610074006500740069006D006500200020
      0020002000200020002000FFFF1A73007400460050006100730073002E004400
      65006C0044005400000000647300740046005000610073007300200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020006449006E004100630074006900760065
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200021000000B6010000286200
      6900740020002000200020002000200020002000200020002000200020002000
      200020002000FFFF2073007400460050006100730073002E0049006E00410063
      0074006900760065000000006473007400460050006100730073002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020006449006E0041006300740069007600
      6500550073007200200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200021000000B70100002869
      006E007400200020002000200020002000200020002000200020002000200020
      00200020002000FFFF2673007400460050006100730073002E0049006E004100
      6300740069007600650055007300720000000064730074004600500061007300
      7300200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020006449006E00410063
      0074006900760065004400740020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000210000
      00B80100002873006D0061006C006C006400610074006500740069006D006500
      2000200020002000200020002000FFFF2473007400460050006100730073002E
      0049006E00410063007400690076006500440074000000006473007400460050
      0061007300730020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000644D00
      610069006E0074005F004C006F00670020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200021000000B901000028620069007400200020002000200020002000200020
      00200020002000200020002000200020002000FFFF2273007400460050006100
      730073002E004D00610069006E0074005F004C006F0067000000006473007400
      4600500061007300730020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      6443006800650063006B005F00530065007200690061006C0020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200021000000BA01000028620069007400200020002000200020002000
      20002000200020002000200020002000200020002000FFFF2873007400460050
      006100730073002E0043006800650063006B005F00530065007200690061006C
      0000000064730074004600500061007300730020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200064530065007200690061006C0031002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200021000000BB0100002869006E007400200020
      00200020002000200020002000200020002000200020002000200020002000FF
      FF1E73007400460050006100730073002E00530065007200690061006C003100
      0000006473007400460050006100730073002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200064530065007200690061006C003200200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200021000000BC0100002869006E00740020002000
      200020002000200020002000200020002000200020002000200020002000FFFF
      1E73007400460050006100730073002E00530065007200690061006C00320000
      0000647300740046005000610073007300200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200064530065007200690061006C00330020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200021000000BD0100002869006E0074002000200020
      0020002000200020002000200020002000200020002000200020002000FFFF1E
      73007400460050006100730073002E00530065007200690061006C0033000000
      006473007400440046006F0072006D0020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020006449006400200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020000000BE0100002869006E007400200020002000
      20002000200020002000200020002000200020002000200020002000FFFF1473
      007400440046006F0072006D002E00490064000000006473007400440046006F
      0072006D00200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020002000644E006100
      6D00650020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20000000BF010000286E00760061007200630068006100720020002000200020
      0020002000200020002000200020002000FFFF1873007400440046006F007200
      6D002E004E0061006D0065000000006473007400440046006F0072006D002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000645000650072006900670020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020000000C00100
      00286E0076006100720063006800610072002000200020002000200020002000
      20002000200020002000FFFF1A73007400440046006F0072006D002E00500065
      007200690067000000006473007400440046006F0072006D0020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020006455006E00690074005F004E0061006D00
      6500200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020000000C1010000286E0076
      0061007200630068006100720020002000200020002000200020002000200020
      0020002000FFFF2273007400440046006F0072006D002E0055006E0069007400
      5F004E0061006D0065000000006473007400440046006F0072006D0020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020006446006F0072006D005F004E0061
      006D006500200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020000000C201000028
      6E00760061007200630068006100720020002000200020002000200020002000
      2000200020002000FFFF2273007400440046006F0072006D002E0046006F0072
      006D005F004E0061006D0065000000006473007400440046006F0072006D0020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020006456006500720073006900
      6F006E0020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200020000000C301
      0000286E00760061007200630068006100720020002000200020002000200020
      0020002000200020002000FFFF1E73007400440046006F0072006D002E005600
      65007200730069006F006E000000006473007400440046006F0072006D002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000644C006100730074005F0055
      0070006400610074006500640020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020000000C40100
      002873006D0061006C006C006400610074006500740069006D00650020002000
      20002000200020002000FFFF2873007400440046006F0072006D002E004C0061
      00730074005F0055007000640061007400650064000000006473007400440046
      006F0072006D0020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000644300
      6F006D006D0065006E0074007300200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020000000C5010000286E0074006500780074002000200020002000200020
      00200020002000200020002000200020002000FFFF2073007400440046006F00
      72006D002E0043006F006D006D0065006E007400730000000064730074004400
      46006F0072006D00200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020006448
      0065006C00700049004400200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020000000C6010000286E00760061007200630068006100720020002000
      2000200020002000200020002000200020002000FFFF1C73007400440046006F
      0072006D002E00480065006C007000490044000000006473007400440046006F
      0072006D00200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020002000644D005400
      470072006F007500700020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20000000C70100002869006E0074002000200020002000200020002000200020
      0020002000200020002000200020002000FFFF1E73007400440046006F007200
      6D002E004D005400470072006F00750070000000006473007400440046006F00
      72006D0020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000200020006441006E0063
      006500730074006F00720046006F0072006D0020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      000000C8010000286E0076006100720063006800610072002000200020002000
      20002000200020002000200020002000FFFF2873007400440046006F0072006D
      002E0041006E0063006500730074006F00720046006F0072006D000000006473
      007400440046006F0072006D0020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200064530065006300750072006900740079004E0061006D00650020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020000000C9010000286E0076006100720063006800610072
      00200020002000200020002000200020002000200020002000FFFF2873007400
      440046006F0072006D002E00530065006300750072006900740079004E006100
      6D0065000000006473007400440046006F0072006D0020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200064440061007400610053006F0075007200630065
      004E0061006D0065002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020000000CA010000286E0076006100
      7200630068006100720020002000200020002000200020002000200020002000
      2000FFFF2C73007400440046006F0072006D002E00440061007400610053006F
      0075007200630065004E0061006D0065000000006473007400440046006F0072
      006D002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200064440061007400
      61004D006F00640075006C006500200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      0000CB010000286E007600610072006300680061007200200020002000200020
      002000200020002000200020002000FFFF2473007400440046006F0072006D00
      2E0044006100740061004D006F00640075006C00650000000064730074004200
      72006F00770073006500470065006E004600690065006C006400730020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020006449
      0064002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020001F000000CC0100002869006E0074002000200020002000200020002000
      2000200020002000200020002000200020002000FFFF2873007400420072006F
      00770073006500470065006E004600690065006C00640073002E004900640000
      00006473007400420072006F00770073006500470065006E004600690065006C
      0064007300200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200064420072006F007700730065005F004E0061006D0065004900
      6400200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020001F000000CD0100002869006E0074002000200020
      0020002000200020002000200020002000200020002000200020002000FFFF3E
      73007400420072006F00770073006500470065006E004600690065006C006400
      73002E00420072006F007700730065005F004E0061006D006500490064000000
      006473007400420072006F00770073006500470065006E004600690065006C00
      6400730020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000644600690065006C0064005F004E0061006D0065002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020001F000000CE010000286E0076006100720063006800
      61007200200020002000200020002000200020002000200020002000FFFF3873
      007400420072006F00770073006500470065006E004600690065006C00640073
      002E004600690065006C0064005F004E0061006D006500000000647300740042
      0072006F00770073006500470065006E004600690065006C0064007300200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200064
      44006900730070006C00610079005F004E0061006D0065002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020001F000000CF010000286E007600610072006300680061007200200020
      002000200020002000200020002000200020002000FFFF3C7300740042007200
      6F00770073006500470065006E004600690065006C00640073002E0044006900
      730070006C00610079005F004E0061006D006500000000647300740042007200
      6F00770073006500470065006E004600690065006C0064007300200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200064440069
      00730070006C00610079005F0046006F0072006D006100740020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      001F000000D0010000286E007600610072006300680061007200200020002000
      200020002000200020002000200020002000FFFF4073007400420072006F0077
      0073006500470065006E004600690065006C00640073002E0044006900730070
      006C00610079005F0046006F0072006D00610074000000006473007400420072
      006F00770073006500470065006E004600690065006C00640073002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000645600
      69007300690062006C0065002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20001F000000D101000028620069007400200020002000200020002000200020
      00200020002000200020002000200020002000FFFF3273007400420072006F00
      770073006500470065006E004600690065006C00640073002E00560069007300
      690062006C0065000000006473007400420072006F0077007300650047006500
      6E004600690065006C0064007300200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020006452006500610064004F006E006C0079
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020001F000000D2010000286200
      6900740020002000200020002000200020002000200020002000200020002000
      200020002000FFFF3473007400420072006F00770073006500470065006E0046
      00690065006C00640073002E0052006500610064004F006E006C007900000000
      6473007400420072006F00770073006500470065006E00200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000646900640020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020001E000000D30100002869006E00740020002000200020
      002000200020002000200020002000200020002000200020002000FFFF1C7300
      7400420072006F00770073006500470065006E002E0069006400000000647300
      7400420072006F00770073006500470065006E00200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200064420072006F007700730065005F004E0061006D00650020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020001E000000D4010000286E007600610072006300680061007200
      200020002000200020002000200020002000200020002000FFFF2E7300740042
      0072006F00770073006500470065006E002E00420072006F007700730065005F
      004E0061006D0065000000006473007400420072006F00770073006500460069
      0065006C0064007300470065006E002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000644900640020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020001D000000D50100002869
      006E007400200020002000200020002000200020002000200020002000200020
      00200020002000FFFF2873007400420072006F00770073006500460069006500
      6C0064007300470065006E002E00490064000000006473007400420072006F00
      7700730065004600690065006C0064007300470065006E002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000200064420072006F
      007700730065005F004E0061006D006500200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020002000200020001D
      000000D6010000286E0063006800610072002000200020002000200020002000
      20002000200020002000200020002000FFFF3A73007400420072006F00770073
      0065004600690065006C0064007300470065006E002E00420072006F00770073
      0065005F004E0061006D0065000000006473007400420072006F007700730065
      004600690065006C0064007300470065006E0020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000644600690065006C006400
      5F004E0061006D00650020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000200020001D000000D701
      0000286E00630068006100720020002000200020002000200020002000200020
      0020002000200020002000FFFF3873007400420072006F007700730065004600
      690065006C0064007300470065006E002E004600690065006C0064005F004E00
      61006D0065000000006473007400420072006F00770073006500460069006500
      6C0064007300470065006E002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020006444006900730070006C00610079005F004E
      0061006D00650020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020001D000000D8010000286E006300
      6800610072002000200020002000200020002000200020002000200020002000
      20002000FFFF3C73007400420072006F007700730065004600690065006C0064
      007300470065006E002E0044006900730070006C00610079005F004E0061006D
      0065000000006473007400420072006F007700730065004600690065006C0064
      007300470065006E002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020006444006900730070006C00610079005F0046006F00
      72006D0061007400200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020001D000000D9010000286E006300680061
      0072002000200020002000200020002000200020002000200020002000200020
      00FFFF4073007400420072006F007700730065004600690065006C0064007300
      470065006E002E0044006900730070006C00610079005F0046006F0072006D00
      610074000000006473007400420072006F007700730065004600690065006C00
      64007300470065006E0020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200064560069007300690062006C0065002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020001D000000DA01000028620069007400
      2000200020002000200020002000200020002000200020002000200020002000
      2000FFFF3273007400420072006F007700730065004600690065006C00640073
      00470065006E002E00560069007300690062006C006500000000647300740042
      0072006F007700730065004600690065006C0064007300470065006E00200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200064
      52006500610064004F006E006C00790020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020001D000000DB0100002862006900740020002000200020002000200020
      002000200020002000200020002000200020002000FFFF347300740042007200
      6F007700730065004600690065006C0064007300470065006E002E0052006500
      610064004F006E006C0079000000006473007400420072006F00770073006500
      4600690065006C0064007300470065006E002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200064420072006F007700730065
      005F004E0061006D006500490064002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020001D000000DC0100
      002869006E007400200020002000200020002000200020002000200020002000
      20002000200020002000FFFF3E73007400420072006F00770073006500460069
      0065006C0064007300470065006E002E00420072006F007700730065005F004E
      0061006D0065004900640000000064730074005500470072006F007500700020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200064490064002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000200031000000DD010000
      2873006D0061006C006C0069006E007400200020002000200020002000200020
      002000200020002000FFFF16730074005500470072006F00750070002E004900
      640000000064730074005500470072006F007500700020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000644E0061006D00650020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200031000000DE010000286E00760061007200
      6300680061007200200020002000200020002000200020002000200020002000
      FFFF1A730074005500470072006F00750070002E004E0061006D006500000000
      64730074005500470072006F0075007000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020006449006E0073005500730072002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200031000000DF0100002869006E00740020002000200020
      002000200020002000200020002000200020002000200020002000FFFF1E7300
      74005500470072006F00750070002E0049006E00730055007300720000000064
      730074005500470072006F007500700020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020006449006E007300440054002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200031000000E00100002873006D0061006C006C0064006100
      74006500740069006D0065002000200020002000200020002000FFFF1C730074
      005500470072006F00750070002E0049006E0073004400540000000064730074
      005500470072006F007500700020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0064550070006400550073007200200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200031000000E10100002869006E0074002000200020002000200020
      0020002000200020002000200020002000200020002000FFFF1E730074005500
      470072006F00750070002E005500700064005500730072000000006473007400
      5500470072006F00750070002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      6455007000640044005400200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200031000000E20100002873006D0061006C006C006400610074006500
      740069006D0065002000200020002000200020002000FFFF1C73007400550047
      0072006F00750070002E00550070006400440054000000006473007400550047
      0072006F00750070002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000644400
      65006C0065007400650064002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200031000000E301000028620069007400200020002000200020002000200020
      00200020002000200020002000200020002000FFFF2073007400550047007200
      6F00750070002E00440065006C00650074006500640000000064730074005500
      470072006F007500700020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020006444
      0065006C00550073007200200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200031000000E40100002869006E0074002000200020002000200020002000
      2000200020002000200020002000200020002000FFFF1E730074005500470072
      006F00750070002E00440065006C005500730072000000006473007400550047
      0072006F00750070002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000644400
      65006C0044005400200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200031000000E50100002873006D0061006C006C006400610074006500740069
      006D0065002000200020002000200020002000FFFF1C73007400550047007200
      6F00750070002E00440065006C00440054000000006473007400550047007200
      6F00750070002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000200020006449006E0041
      0063007400690076006500200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200031
      000000E601000028620069007400200020002000200020002000200020002000
      20002000200020002000200020002000FFFF22730074005500470072006F0075
      0070002E0049006E004100630074006900760065000000006473007400550047
      0072006F00750070002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000644900
      6E00410063007400690076006500550073007200200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200031000000E70100002869006E007400200020002000200020002000200020
      00200020002000200020002000200020002000FFFF2873007400550047007200
      6F00750070002E0049006E004100630074006900760065005500730072000000
      0064730074005500470072006F00750070002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020006449006E00410063007400690076006500440074002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200031000000E80100002873006D0061006C006C006400
      610074006500740069006D0065002000200020002000200020002000FFFF2673
      0074005500470072006F00750070002E0049006E004100630074006900760065
      004400740000000064730074005400610062006C006500730020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200064490064002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200030000000E90100002869006E0074
      0020002000200020002000200020002000200020002000200020002000200020
      002000FFFF16730074005400610062006C00650073002E004900640000000064
      730074005400610062006C006500730020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000644E0061006D00650020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200030000000EA010000286E00760061007200630068006100
      7200200020002000200020002000200020002000200020002000FFFF1A730074
      005400610062006C00650073002E004E0061006D006500000000647300740054
      00610062006C0065007300200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200064
      53006500610072006300680052006500730075006C005400610062006C006500
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200030000000EB010000286E007600610072006300680061007200200020
      002000200020002000200020002000200020002000FFFF327300740054006100
      62006C00650073002E0053006500610072006300680052006500730075006C00
      5400610062006C00650000000064730074005400610062006C00650073002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020006444006500730063007200200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200030000000EC01000028
      6E00760061007200630068006100720020002000200020002000200020002000
      2000200020002000FFFF1C730074005400610062006C00650073002E00440065
      0073006300720000000064730074005400610062006C00650073002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200064530071006C005F005400650078007400
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200030000000ED010000286E0076
      0061007200630068006100720020002000200020002000200020002000200020
      0020002000FFFF22730074005400610062006C00650073002E00530071006C00
      5F00540065007800740000000064730074005400610062006C00650073002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020006454006500630068004E0061006D
      0065002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200030000000EE01000028
      6E00760061007200630068006100720020002000200020002000200020002000
      2000200020002000FFFF22730074005400610062006C00650073002E00540065
      00630068004E0061006D00650000000064730074005400610062006C00650046
      00690065006C0064007300470065006E006500720061006C0020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020006449006400200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000200020002F000000EF01
      00002869006E0074002000200020002000200020002000200020002000200020
      0020002000200020002000FFFF2E730074005400610062006C00650046006900
      65006C0064007300470065006E006500720061006C002E004900640000000064
      730074005400610062006C0065004600690065006C0064007300470065006E00
      6500720061006C00200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000644600690065006C0064005F004E0061006D00650020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002F000000F0010000286E00760061007200630068006100
      7200200020002000200020002000200020002000200020002000FFFF3E730074
      005400610062006C0065004600690065006C0064007300470065006E00650072
      0061006C002E004600690065006C0064005F004E0061006D0065000000006473
      0074005400610062006C0065004600690065006C0064007300470065006E0065
      00720061006C0020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020006444006900730070006C00610079005F004E0061006D00650020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002F000000F1010000286E0076006100720063006800610072
      00200020002000200020002000200020002000200020002000FFFF4273007400
      5400610062006C0065004600690065006C0064007300470065006E0065007200
      61006C002E0044006900730070006C00610079005F004E0061006D0065000000
      0064730074005400610062006C0065004600690065006C006400730047006500
      6E006500720061006C0020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020006444006900730070006C00610079005F0046006F0072006D0061
      0074002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002F000000F2010000286E0063006800610072002000
      20002000200020002000200020002000200020002000200020002000FFFF4673
      0074005400610062006C0065004600690065006C0064007300470065006E0065
      00720061006C002E0044006900730070006C00610079005F0046006F0072006D
      006100740000000064730074005400610062006C0065004600690065006C0064
      007300470065006E006500720061006C00200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200064560069007300690062006C00650020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002F000000F3010000286200690074
      0020002000200020002000200020002000200020002000200020002000200020
      002000FFFF38730074005400610062006C0065004600690065006C0064007300
      470065006E006500720061006C002E00560069007300690062006C0065000000
      0064730074005400610062006C0065004600690065006C006400730047006500
      6E006500720061006C0020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020006452006500610064004F006E006C007900200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002F000000F401000028620069007400200020002000
      20002000200020002000200020002000200020002000200020002000FFFF3A73
      0074005400610062006C0065004600690065006C0064007300470065006E0065
      00720061006C002E0052006500610064004F006E006C00790000000064730074
      005400610062006C0065004600690065006C0064007300200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0064490064002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002E000000F50100002869006E0074002000200020002000200020
      0020002000200020002000200020002000200020002000FFFF20730074005400
      610062006C0065004600690065006C00640073002E0049006400000000647300
      74005400610062006C0065004600690065006C00640073002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000645400610062006C0065005F004900640020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002E000000F60100002869006E00740020002000200020002000
      200020002000200020002000200020002000200020002000FFFF2C7300740054
      00610062006C0065004600690065006C00640073002E005400610062006C0065
      005F004900640000000064730074005400610062006C0065004600690065006C
      0064007300200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000644600690065006C0064005F004E006100
      6D00650020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002E000000F7010000286E0076
      0061007200630068006100720020002000200020002000200020002000200020
      0020002000FFFF30730074005400610062006C0065004600690065006C006400
      73002E004600690065006C0064005F004E0061006D0065000000006473007400
      5400610062006C0065004600690065006C006400730020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      6441004100200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002E000000F80100002869006E007400200020002000200020002000
      20002000200020002000200020002000200020002000FFFF2073007400540061
      0062006C0065004600690065006C00640073002E004100410000000064730074
      005400610062006C0065004600690065006C0064007300200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      006444006900730070006C00610079005F004E0061006D006500200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002E000000F9010000286E00760061007200630068006100720020
      0020002000200020002000200020002000200020002000FFFF34730074005400
      610062006C0065004600690065006C00640073002E0044006900730070006C00
      610079005F004E0061006D00650000000064730074005400610062006C006500
      4600690065006C00640073002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020006444006900730070006C
      00610079005F0046006F0072006D006100740020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002E000000FA
      010000286E006300680061007200200020002000200020002000200020002000
      200020002000200020002000FFFF38730074005400610062006C006500460069
      0065006C00640073002E0044006900730070006C00610079005F0046006F0072
      006D006100740000000064730074005400610062006C0065004600690065006C
      0064007300200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020006445006400690074005F0046006F007200
      6D00610074002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002E000000FB010000286E0063
      0068006100720020002000200020002000200020002000200020002000200020
      0020002000FFFF32730074005400610062006C0065004600690065006C006400
      73002E0045006400690074005F0046006F0072006D0061007400000000647300
      74005400610062006C0065004600690065006C00640073002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200064560069007300690062006C006500200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002E000000FC0100002862006900740020002000200020002000
      200020002000200020002000200020002000200020002000FFFF2A7300740054
      00610062006C0065004600690065006C00640073002E00560069007300690062
      006C00650000000064730074005400610062006C0065004600690065006C0064
      0073002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020006452006500610064004F006E006C0079002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002E000000FD010000286200690074
      0020002000200020002000200020002000200020002000200020002000200020
      002000FFFF2C730074005400610062006C0065004600690065006C0064007300
      2E0052006500610064004F006E006C0079000000006473007400540061006200
      6C0065004600690065006C006400730020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000644100750074
      006F00470065006E002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020002000200020002E
      000000FE01000028620069007400200020002000200020002000200020002000
      20002000200020002000200020002000FFFF2A730074005400610062006C0065
      004600690065006C00640073002E004100750074006F00470065006E00000000
      64730074005400610062006C0065004600690065006C00640073002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000644C006F006F006B00550070002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002E000000FF010000286E007600610072006300680061
      007200200020002000200020002000200020002000200020002000FFFF287300
      74005400610062006C0065004600690065006C00640073002E004C006F006F00
      6B005500700000000064730074005400610062006C0065004600690065006C00
      6400730020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020006449006E0053006500610072006300680020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002E000000000200002862006900
      7400200020002000200020002000200020002000200020002000200020002000
      20002000FFFF2C730074005400610062006C0065004600690065006C00640073
      002E0049006E0053006500610072006300680000000064730074005400610062
      006C0065004600690065006C0064007300200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020006449006E00
      53006500610072006300680052006500730075006C0074002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2E00000001020000286200690074002000200020002000200020002000200020
      0020002000200020002000200020002000FFFF38730074005400610062006C00
      65004600690065006C00640073002E0049006E00530065006100720063006800
      52006500730075006C00740000000064730074005400610062006C0065004600
      690065006C006400730020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020006449006E00460069006C0074
      0065007200200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020002E000000020200
      0028620069007400200020002000200020002000200020002000200020002000
      20002000200020002000FFFF2C730074005400610062006C0065004600690065
      006C00640073002E0049006E00460069006C0074006500720000000064730074
      005400610062006C0065004600690065006C0064007300200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00644600690065006C0064005400790070006500200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002E00000003020000286E00760061007200630068006100720020
      0020002000200020002000200020002000200020002000FFFF2E730074005400
      610062006C0065004600690065006C00640073002E004600690065006C006400
      540079007000650000000064730074005400610062006C006500460069006500
      6C00640073002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020006444006F006E0074004C006F006F006B
      0050006100720065006E00740020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002E00000004020000286200
      6900740020002000200020002000200020002000200020002000200020002000
      200020002000FFFF38730074005400610062006C0065004600690065006C0064
      0073002E0044006F006E0074004C006F006F006B0050006100720065006E0074
      000000006473007400530046006F0072006D0041006300740069006F006E0020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020006441006300740069006F006E005F004900640020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002D000000050200002869006E007400200020
      00200020002000200020002000200020002000200020002000200020002000FF
      FF2E73007400530046006F0072006D0041006300740069006F006E002E004100
      6300740069006F006E005F00490064000000006473007400530046006F007200
      6D0041006300740069006F006E00200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020002000645500470072006F
      00750070005F0049006400200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020002000200020002D0000
      00060200002869006E0074002000200020002000200020002000200020002000
      2000200020002000200020002000FFFF2E73007400530046006F0072006D0041
      006300740069006F006E002E005500470072006F00750070005F004900640000
      00006473007400530046006F0072006D0041006300740069006F006E00200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020006441006C006C006F0077006500640020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002D00000007020000286200690074002000200020
      0020002000200020002000200020002000200020002000200020002000FFFF2A
      73007400530046006F0072006D0041006300740069006F006E002E0041006C00
      6C006F0077006500640000000064560061007200690061006E00740073004D00
      610069006E002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020006469006400200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000200020003B0000000802000028
      69006E0074002000200020002000200020002000200020002000200020002000
      2000200020002000FFFF1E560061007200690061006E00740073004D00610069
      006E002E006900640000000064560061007200690061006E00740073004D0061
      0069006E00200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000644E0061006D006500200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020002000200020003B00000009020000286E
      0076006100720063006800610072002000200020002000200020002000200020
      00200020002000FFFF22560061007200690061006E00740073004D0061006900
      6E002E004E0061006D00650000000064560061007200690061006E0074007300
      4D00610069006E00200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000645000650072006900670020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020003B0000000A0200
      00286E0076006100720063006800610072002000200020002000200020002000
      20002000200020002000FFFF24560061007200690061006E00740073004D0061
      0069006E002E005000650072006900670000000064560061007200690061006E
      00740073004D00610069006E0020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020006446006F007200
      6D00490064002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020003B00
      00000B0200002869006E00740020002000200020002000200020002000200020
      002000200020002000200020002000FFFF26560061007200690061006E007400
      73004D00610069006E002E0046006F0072006D00490064000000006456006100
      7200690061006E00740073004D00610069006E00200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      6449006E00730055007300720020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020003B0000000C0200002869006E007400200020002000200020002000
      20002000200020002000200020002000200020002000FFFF2656006100720069
      0061006E00740073004D00610069006E002E0049006E00730055007300720000
      000064560061007200690061006E00740073004D00610069006E002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020006449006E007300440054002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020003B0000000D020000286400610074006500740069
      006D006500200020002000200020002000200020002000200020002000FFFF24
      560061007200690061006E00740073004D00610069006E002E0049006E007300
      4400540000000064560061007200690061006E00740073004D00610069006E00
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020006455007000640055007300720020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020003B0000000E0200002869006E007400
      2000200020002000200020002000200020002000200020002000200020002000
      2000FFFF26560061007200690061006E00740073004D00610069006E002E0055
      007000640055007300720000000064560061007200690061006E00740073004D
      00610069006E0020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200064550070006400440054002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020003B0000000F020000
      286400610074006500740069006D006500200020002000200020002000200020
      002000200020002000FFFF24560061007200690061006E00740073004D006100
      69006E002E005500700064004400540000000064560061007200690061006E00
      74007300440065007400610069006C0020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020006449006400200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000380000
      00100200002869006E0074002000200020002000200020002000200020002000
      2000200020002000200020002000FFFF22560061007200690061006E00740073
      00440065007400610069006C002E004900640000000064560061007200690061
      006E0074007300440065007400610069006C0020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020006446006900
      65006C0064004E0061006D006500200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      3800000011020000286E00760061007200630068006100720020002000200020
      0020002000200020002000200020002000FFFF30560061007200690061006E00
      74007300440065007400610069006C002E004600690065006C0064004E006100
      6D00650000000064560061007200690061006E00740073004400650074006100
      69006C0020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000644600690065006C006400540079007000650020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200038000000120200002869006E007400
      2000200020002000200020002000200020002000200020002000200020002000
      2000FFFF30560061007200690061006E0074007300440065007400610069006C
      002E004600690065006C00640054007900700065000000006456006100720069
      0061006E0074007300440065007400610069006C002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000644600
      690065006C006400560061006C00750065002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20003800000013020000286E0076006100720063006800610072002000200020
      00200020002000200020002000200020002000FFFF3256006100720069006100
      6E0074007300440065007400610069006C002E004600690065006C0064005600
      61006C00750065000000006473007400530046006F0072006D00200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000200020002000200020006446006F0072006D005F004900640020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002C00000014020000286900
      6E00740020002000200020002000200020002000200020002000200020002000
      200020002000FFFF1E73007400530046006F0072006D002E0046006F0072006D
      005F00490064000000006473007400530046006F0072006D0020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200064470072006F00750070005F0049006400
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002C000000150200002869006E
      0074002000200020002000200020002000200020002000200020002000200020
      0020002000FFFF2073007400530046006F0072006D002E00470072006F007500
      70005F0049006400000000645500470072006F00750070002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000645500470072006F00750070005F0043
      006F006400650020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020003600000016020000287300
      6D0061006C006C0069006E007400200020002000200020002000200020002000
      200020002000FFFF245500470072006F00750070002E005500470072006F0075
      0070005F0043006F0064006500000000645500470072006F0075007000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000645500470072006F007500
      70005F004E0061006D0065002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000360000001702
      0000286E00760061007200630068006100720020002000200020002000200020
      0020002000200020002000FFFF245500470072006F00750070002E0055004700
      72006F00750070005F004E0061006D006500000000645500470072006F007500
      7000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000200020006449006E0073
      0055007300720020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200036
      000000180200002869006E007400200020002000200020002000200020002000
      20002000200020002000200020002000FFFF1A5500470072006F00750070002E
      0049006E007300550073007200000000645500470072006F0075007000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020006449006E00730044005400
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000360000001902
      0000286400610074006500740069006D00650020002000200020002000200020
      0020002000200020002000FFFF185500470072006F00750070002E0049006E00
      730044005400000000645500470072006F007500700020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000645500700064005500730072002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00200020002000200020002000200020002000360000001A0200002869006E00
      7400200020002000200020002000200020002000200020002000200020002000
      20002000FFFF1A5500470072006F00750070002E005500700064005500730072
      00000000645500470072006F0075007000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020006455007000640044005400200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000360000001B02000028640061007400650074
      0069006D006500200020002000200020002000200020002000200020002000FF
      FF185500470072006F00750070002E0055007000640044005400000000644400
      7200690076006500720073002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200064500068006F004E0061006D006500200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020000C00000057020000286E006300680061007200200020002000
      200020002000200020002000200020002000200020002000FFFF1E4400720069
      0076006500720073002E00500068006F004E0061006D00650000000064710072
      0079004400720069007600650072007300200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0064690064002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020002000F4030000580200002869006E0074002000200020002000200020
      0020002000200020002000200020002000200020002000FFFF1A710072007900
      44007200690076006500720073002E0069006400000000647100720079004400
      7200690076006500720073002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000200020002000200020002000644E0061
      006D006500200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      00F403000059020000286E006300680061007200200020002000200020002000
      200020002000200020002000200020002000FFFF1E7100720079004400720069
      0076006500720073002E004E0061006D00650000000064710072007900440072
      0069007600650072007300200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020006443006F00
      6D00700061006E00790049006400200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      F40300005A0200002869006E0074002000200020002000200020002000200020
      0020002000200020002000200020002000FFFF28710072007900440072006900
      76006500720073002E0043006F006D00700061006E0079004900640000000064
      7100720079004400720069007600650072007300200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      200020006443006F006D006D0065006E00740073002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000F40300005B020000286E00630068006100720020002000
      2000200020002000200020002000200020002000200020002000FFFF26710072
      00790044007200690076006500720073002E0043006F006D006D0065006E0074
      0073000000006471007200790044007200690076006500720073002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200064500068006F004E0061006D006500200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20002000200020002000200020002000F40300005C020000286E006300680061
      0072002000200020002000200020002000200020002000200020002000200020
      00FFFF2471007200790044007200690076006500720073002E00500068006F00
      4E0061006D006500}
    object cdsVTableFieldsNamesTableName: TWideStringField
      FieldName = 'TableName'
      FixedChar = True
      Size = 50
    end
    object cdsVTableFieldsNamesFieldName: TWideStringField
      FieldName = 'FieldName'
      FixedChar = True
      Size = 50
    end
    object cdsVTableFieldsNamesTableId: TIntegerField
      FieldName = 'TableId'
    end
    object cdsVTableFieldsNamesid: TIntegerField
      FieldName = 'id'
    end
    object cdsVTableFieldsNamesType: TWideStringField
      FieldName = 'Type'
      FixedChar = True
    end
    object cdsVTableFieldsNamesCheckChanges: TBooleanField
      FieldName = 'CheckChanges'
    end
    object cdsVTableFieldsNamesFName: TWideStringField
      FieldName = 'FName'
      ReadOnly = True
      Size = 101
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = cdsVTableFieldsNames
    Left = 584
    Top = 456
  end
  object VTableFieldsNames: TADOQuery
    AutoCalcFields = False
    Connection = ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM VTableFieldsNames'
      ''
      '')
    Left = 512
    Top = 456
    object VTableFieldsNamesTableName: TWideStringField
      FieldName = 'TableName'
      FixedChar = True
      Size = 50
    end
    object VTableFieldsNamesFieldName: TWideStringField
      FieldName = 'FieldName'
      FixedChar = True
      Size = 50
    end
    object VTableFieldsNamesTableId: TIntegerField
      FieldName = 'TableId'
    end
    object VTableFieldsNamesid: TIntegerField
      FieldName = 'id'
    end
    object VTableFieldsNamesType: TWideStringField
      FieldName = 'Type'
      FixedChar = True
    end
    object VTableFieldsNamesCheckChanges: TBooleanField
      FieldName = 'CheckChanges'
    end
    object VTableFieldsNamesFName: TWideStringField
      FieldName = 'FName'
      ReadOnly = True
      Size = 101
    end
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM [VTableFieldsNames]')
    Left = 328
    Top = 376
    object ADOQuery2TableName: TWideStringField
      FieldName = 'TableName'
      FixedChar = True
      Size = 50
    end
    object ADOQuery2FieldName: TWideStringField
      FieldName = 'FieldName'
      FixedChar = True
      Size = 50
    end
    object ADOQuery2TableId: TIntegerField
      FieldName = 'TableId'
    end
    object ADOQuery2id: TIntegerField
      FieldName = 'id'
    end
    object ADOQuery2Type: TWideStringField
      FieldName = 'Type'
      FixedChar = True
    end
    object ADOQuery2CheckChanges: TBooleanField
      FieldName = 'CheckChanges'
    end
    object ADOQuery2FName: TWideStringField
      FieldName = 'FName'
      ReadOnly = True
      Size = 101
    end
  end
  object OldLogonMonitor: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    BeforePost = tFieldStatusBeforePost
    TableName = 'LogonMonitor'
    Left = 336
    Top = 616
    object OldLogonMonitorid: TIntegerField
      FieldName = 'id'
    end
    object OldLogonMonitorUserId: TIntegerField
      FieldName = 'UserId'
    end
    object OldLogonMonitorMacAddr: TWideStringField
      FieldName = 'MacAddr'
      FixedChar = True
      Size = 30
    end
    object OldLogonMonitorIPV4Addr: TWideStringField
      FieldName = 'IPV4Addr'
      FixedChar = True
      Size = 15
    end
    object OldLogonMonitorIPV6Addr: TWideStringField
      FieldName = 'IPV6Addr'
      FixedChar = True
      Size = 10
    end
    object OldLogonMonitorComputerName: TWideStringField
      FieldName = 'ComputerName'
      FixedChar = True
      Size = 50
    end
    object OldLogonMonitorWindowsUserName: TWideStringField
      FieldName = 'WindowsUserName'
      FixedChar = True
      Size = 50
    end
    object OldLogonMonitorFileVersion: TWideStringField
      FieldName = 'FileVersion'
      FixedChar = True
      Size = 10
    end
    object OldLogonMonitorLogonDT: TDateTimeField
      FieldName = 'LogonDT'
    end
    object OldLogonMonitorLogoFFDT: TDateTimeField
      FieldName = 'LogoFFDT'
    end
  end
  object fnHelpOur: TADOStoredProc
    Connection = ADOConnection
    CursorType = ctStatic
    ProcedureName = 'fnHelpOur;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@PName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end
      item
        Name = '@PCompany'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end
      item
        Name = '@PRegNo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end>
    Left = 208
    Top = 632
    object fnHelpOurCompanyName: TWideStringField
      FieldName = 'Company.Name'
      Size = 50
    end
    object fnHelpOurCompanyId: TIntegerField
      FieldName = 'CompanyId'
    end
    object fnHelpOurDrvNameId: TIntegerField
      FieldName = 'DrvNameId'
    end
    object fnHelpOurRegNoId: TIntegerField
      FieldName = 'RegNoId'
    end
    object fnHelpOurDateTimeIn: TDateTimeField
      FieldName = 'DateTimeIn'
      ReadOnly = True
    end
    object fnHelpOurRegNo: TWideStringField
      FieldName = 'RegNo'
      Size = 10
    end
    object fnHelpOurDriversName: TWideStringField
      FieldName = 'Drivers.Name'
      Size = 50
    end
  end
  object fnHelpOther: TADOStoredProc
    Connection = ADOConnection
    CursorType = ctStatic
    ProcedureName = 'fnHelpOther;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@PName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end
      item
        Name = '@PCompany'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end
      item
        Name = '@PRegNo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end>
    Left = 128
    Top = 632
    object fnHelpOtherDrvName: TWideStringField
      FieldName = 'DrvName'
      Size = 50
    end
    object fnHelpOtherRegNo: TWideStringField
      FieldName = 'RegNo'
      Size = 50
    end
    object fnHelpOtherCompany: TWideStringField
      FieldName = 'Company'
      Size = 50
    end
    object fnHelpOtherDateTimeIn: TDateTimeField
      FieldName = 'DateTimeIn'
    end
  end
  object LogonMonitor: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    BeforePost = LogonMonitorBeforePost
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM'
      'LOGONMONITOR')
    Left = 420
    Top = 612
    object LogonMonitorid: TIntegerField
      FieldName = 'id'
    end
    object LogonMonitorUserId: TIntegerField
      FieldName = 'UserId'
    end
    object LogonMonitorMacAddr: TWideStringField
      FieldName = 'MacAddr'
      FixedChar = True
      Size = 30
    end
    object LogonMonitorIPV4Addr: TWideStringField
      FieldName = 'IPV4Addr'
      FixedChar = True
      Size = 15
    end
    object LogonMonitorIPV6Addr: TWideStringField
      FieldName = 'IPV6Addr'
      FixedChar = True
      Size = 10
    end
    object LogonMonitorComputerName: TWideStringField
      FieldName = 'ComputerName'
      FixedChar = True
      Size = 50
    end
    object LogonMonitorWindowsUserName: TWideStringField
      FieldName = 'WindowsUserName'
      FixedChar = True
      Size = 50
    end
    object LogonMonitorFileVersion: TWideStringField
      FieldName = 'FileVersion'
      FixedChar = True
      Size = 10
    end
    object LogonMonitorLogOnDT: TDateTimeField
      FieldName = 'LogOnDT'
    end
    object LogonMonitorLogOffDT: TDateTimeField
      FieldName = 'LogOffDT'
    end
  end
end
