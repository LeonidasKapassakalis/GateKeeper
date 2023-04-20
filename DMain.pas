unit DMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBGrids, Quickrpt, QRCtrls, Db, dbctrls, stdctrls, DBase,
  Globals, Globals0, FCall, ADOInt, DateUtils,
  FInsertVariant, FSelectVariant, Variants, ExtDlgs,
  FDispImage, ActnList, Menus, Common, ComObj, OleCtrls, OleServer,
  JPeg, Data.Win.ADODB, Bde.DBTables, dxmdaset, Datasnap.Provider,
  Datasnap.DBClient;

type
  TDMMain = class(TDataModule)
    dsFpass: TDataSource;
    dsUGroup: TDataSource;
    DSQLFPASS: TDataSource;
    dsDForm: TDataSource;
    DSQLog: TDataSource;
    DSQLogTill: TDataSource;
    QFF: TQuery;
    dsFormField: TDataSource;
    QFFFORM: TIntegerField;
    QFFFIELD: TIntegerField;
    QFFPROC: TIntegerField;
    QFFVISIBLE: TBooleanField;
    QFFREQUIRED: TBooleanField;
    QFFDEFAULT: TStringField;
    QFFSUBPROC: TStringField;
    QFFHelpID: TStringField;
    QFFTag: TIntegerField;
    QFFType: TStringField;
    QFFDForm_Name: TStringField;
    QFFName: TStringField;
    QFFId: TIntegerField;
    dsSFormAction: TDataSource;
    dsFormActions: TDataSource;
    dsSForm: TDataSource;
    dsLocking: TDataSource;
    ADOConnection: TADOConnection;
    FPass: TADOTable;
    tTableIds: TADOTable;
    UGroup: TADOTable;
    DForm: TADOTable;
    tTableIdsAAAAA: TAutoIncField;
    tTableIdsTABLENAME: TWideStringField;
    tTableIdsNUM: TIntegerField;
    Log: TADOTable;
    QFormField: TADOQuery;
    QUpdLog: TADOQuery;
    QLFPASS: TADOQuery;
    InsFields: TADOQuery;
    QFindFormID: TADOQuery;
    QFindFormName: TADOQuery;
    QUPDSER1: TADOQuery;
    QUPDSER2: TADOQuery;
    QUPDSER3: TADOQuery;
    QLSForm: TADOQuery;
    QLSFForm: TADOQuery;
    QFindSAF: TADOQuery;
    QUpdateFormAction: TADOQuery;
    QLog: TADOQuery;
    QLogLogDate: TDateTimeField;
    QLogLogAA: TSmallintField;
    QLogLogTimeIn: TDateTimeField;
    QLogLogTimeOut: TDateTimeField;
    QLogFPass_Login: TWideStringField;
    QLogFPass_Name: TWideStringField;
    QLogDForm_Name: TWideStringField;
    QLogDForm_Perig: TWideStringField;
    QLogTill: TADOQuery;
    QLogTillFPass_Login: TWideStringField;
    QLogTillFPass_Name: TWideStringField;
    QLogTillFPass_Address: TWideStringField;
    QLogTillFPass_EMAIL: TWideStringField;
    QLogTillFPass_Phone: TWideStringField;
    QLogTillFPass_Time: TFloatField;
    QLogTillFPass_Valid_Till: TDateTimeField;
    QLogTillUGroup_Name: TWideStringField;
    QLogTillFPass_Key: TIntegerField;
    FormActions: TADOTable;
    SForm: TADOTable;
    SFormAction: TADOTable;
    qExec: TADOQuery;
    qSelectPrt: TADOQuery;
    LockIng: TADOTable;
    QLogUpd: TADOQuery;
    QInsVarMain: TADOQuery;
    QInsVarDetail: TADOQuery;
    QVariantsDetails: TADOQuery;
    QVariantsMain: TADOQuery;
    dsVariants: TDataSource;
    QVariantsMainid: TIntegerField;
    QVariantsMainName: TWideStringField;
    QVariantsMainPerig: TWideStringField;
    QVariantsMainFormId: TIntegerField;
    QVariantsDetailsId: TIntegerField;
    QVariantsDetailsFieldName: TWideStringField;
    QVariantsDetailsFieldType: TIntegerField;
    QVariantsDetailsFieldValue: TWideStringField;
    Logid: TIntegerField;
    LogUsr_id: TIntegerField;
    LogLogDate: TDateTimeField;
    LogForm_id: TWideStringField;
    LogLogAA: TSmallintField;
    LogLogTimeIn: TDateTimeField;
    LogLogTimeOut: TDateTimeField;
    QFindFormNameName: TWideStringField;
    SFormActionAction_Id: TIntegerField;
    SFormActionUGroup_Id: TIntegerField;
    LockIngTableName: TWideStringField;
    LockIngKeyValue: TWideStringField;
    LockIngRef_User_Id: TIntegerField;
    LockIngTTime: TDateTimeField;
    LockIngRef_Form_id: TIntegerField;
    QFindFormIDId: TIntegerField;
    QLSFFormId: TIntegerField;
    QLSFFormName: TWideStringField;
    QLSFFormPerig: TWideStringField;
    QLSFFormUnit_Name: TWideStringField;
    QLSFFormForm_Name: TWideStringField;
    QLSFFormVersion: TWideStringField;
    QLSFFormLast_Updated: TDateTimeField;
    QLSFFormComments: TWideMemoField;
    QLSFFormHelpID: TWideStringField;
    QLSFFormMTGroup: TIntegerField;
    dsTables: TDataSource;
    Tables: TADOTable;
    TablesId: TIntegerField;
    TablesName: TWideStringField;
    dsTableFields: TDataSource;
    TableFields: TADOTable;
    TableFieldsId: TIntegerField;
    TableFieldsTable_Id: TIntegerField;
    TableFieldsField_Name: TWideStringField;
    TableFieldsDisplay_Name: TWideStringField;
    TableFieldsDisplay_Format: TWideStringField;
    TableFieldsEdit_Format: TWideStringField;
    TableFieldsVisible: TBooleanField;
    TableFieldsReadOnly: TBooleanField;
    TableFieldsLookUp: TWideStringField;
    SPstRetFormId: TADOStoredProc;
    SPstRetFormIdId: TIntegerField;
    SPstRetFormName: TADOStoredProc;
    SPstRetFormNameName: TWideStringField;
    SPstRetTable: TADOStoredProc;
    SPstRetTableId: TIntegerField;
    SPstRetTableFields: TADOStoredProc;
    SPstRetTableFieldsField_Name: TWideStringField;
    SPstRetTableFieldsDisplay_Name: TWideStringField;
    SPstRetTableFieldsDisplay_Format: TWideStringField;
    SPstRetTableFieldsEdit_Format: TWideStringField;
    SPstRetTableFieldsVisible: TBooleanField;
    SPstRetTableFieldsReadOnly: TBooleanField;
    SPstRetTableFieldsLookUp: TWideStringField;
    SPstRetFormIdName: TWideStringField;
    SPstRetFormIdPerig: TWideStringField;
    SPstRetFormIdAncestorForm: TWideStringField;
    SPstRetFormIdSecurityName: TWideStringField;
    SPstRetFormIdDataSourceName: TWideStringField;
    SPstRetFormIdDataModule: TWideStringField;
    SPstRetFormNameId: TIntegerField;
    SPstRetFormNamePerig: TWideStringField;
    SPstRetFormNameAncestorForm: TWideStringField;
    SPstRetFormNameSecurityName: TWideStringField;
    SPstRetFormNameDataSourceName: TWideStringField;
    SPstRetFormNameDataModule: TWideStringField;
    QUpdateMenuAction: TADOQuery;
    SFormActionAllowed: TBooleanField;
    SPstRetTableFieldsInSearch: TBooleanField;
    SPstRetTableFieldsInFilter: TBooleanField;
    SPstRetTableFieldsFieldType: TWideStringField;
    TableFieldsInSearch: TBooleanField;
    TableFieldsInFilter: TBooleanField;
    TableFieldsFieldType: TWideStringField;
    stTabFieldsSearch: TADOStoredProc;
    stTabFieldsSearchField_Name: TWideStringField;
    TableFieldsAA: TIntegerField;
    TableFieldsAutoGen: TBooleanField;
    TableFieldsInSearchResult: TBooleanField;
    SPCurDate: TADOStoredProc;
    SPCurDateCurrentDateTimeAbove: TDateTimeField;
    VCustomer: TADOQuery;
    dsVCustomer: TDataSource;
    SPstRetPopupFormName: TADOStoredProc;
    stPopupForm: TADOTable;
    stPopupFormPopupFormId: TAutoIncField;
    stPopupFormPopupFormName: TWideStringField;
    stPopupFormFormName: TWideStringField;
    VCustomerCUSTOMERID: TAutoIncField;
    VCustomerNAME: TWideStringField;
    VCustomerSTREET: TWideStringField;
    VCustomerZIP: TWideStringField;
    VCustomerCITY: TWideStringField;
    VCustomerAFM: TWideStringField;
    VCustomerDOY: TWideStringField;
    VCustomerSTARTDATE: TDateTimeField;
    VCustomerAREAID: TIntegerField;
    VCustomerLOCATIONID: TIntegerField;
    VCustomerCGROUPID: TIntegerField;
    VCustomerCCLASSID: TIntegerField;
    VCustomerCREDITAMOUNT: TFloatField;
    VCustomerINSDT: TDateTimeField;
    VCustomerUPDDT: TDateTimeField;
    VCustomerINSUSR: TIntegerField;
    VCustomerUPDUSR: TIntegerField;
    VCustomerPROFESSION: TWideStringField;
    VCustomerBRANCHID: TIntegerField;
    VCustomerSAPCODE: TWideStringField;
    VCustomerISACTIVE: TBooleanField;
    VCustomerSALESMENID: TIntegerField;
    VCustomerDIAKID: TIntegerField;
    VCustomerISTEST: TBooleanField;
    VCustomerISCONS: TBooleanField;
    VCustomerAREABID: TIntegerField;
    VCustomerDATEPHEND: TDateTimeField;
    VCustomerDATELOEND: TDateTimeField;
    VCustomerHASDETAILEMP: TBooleanField;
    VCustomerALLCARDSTOBL: TBooleanField;
    VCustomerALLCARDSTOBLDATE: TDateTimeField;
    VCustomerALLCARDSTOBLSYSDATE: TDateTimeField;
    VCustomerALLCARDSTOBLUSR: TIntegerField;
    VCustomerCUSTOMEROFF: TBooleanField;
    VCustomerCUSTOMEROFFDATE: TDateTimeField;
    VCustomerCUSTOMEROFFSYSDATE: TDateTimeField;
    VCustomerCUSTOMEROFFUSR: TIntegerField;
    VCustomerCARDHASEMPNAME: TBooleanField;
    VCustomerDATEEND: TDateTimeField;
    VCustomerCompanyTypeId: TIntegerField;
    VariantsCXMain: TADOTable;
    VariantsCXMainid: TAutoIncField;
    VariantsCXMainName: TWideStringField;
    VariantsCXMainPerig: TWideStringField;
    VariantsCXMainClassFormName: TWideStringField;
    VariantsCXMainSetAsDefault: TBooleanField;
    VariantsCXMainSetAsUserDefault: TBooleanField;
    VariantsCXMainInsUsr: TIntegerField;
    VariantsCXMainInsDT: TDateTimeField;
    VariantsCXMainUpdUsr: TIntegerField;
    VariantsCXMainUpdDT: TDateTimeField;
    VariantsCXMainDeleted: TBooleanField;
    VariantsCXMainDelUsr: TIntegerField;
    VariantsCXMainDelDT: TDateTimeField;
    VariantsCXMainVariantField: TBlobField;
    qVariantsCXMain: TADOQuery;
    qVariantsCXMainid: TAutoIncField;
    qVariantsCXMainName: TWideStringField;
    qVariantsCXMainPerig: TWideStringField;
    qVariantsCXMainClassFormName: TWideStringField;
    qVariantsCXMainSetAsDefault: TBooleanField;
    qVariantsCXMainSetAsUserDefault: TBooleanField;
    qVariantsCXMainInsUsr: TIntegerField;
    qVariantsCXMainInsDT: TDateTimeField;
    qVariantsCXMainUpdUsr: TIntegerField;
    qVariantsCXMainUpdDT: TDateTimeField;
    qVariantsCXMainDeleted: TBooleanField;
    qVariantsCXMainDelUsr: TIntegerField;
    qVariantsCXMainDelDT: TDateTimeField;
    qVariantsCXMainVariantField: TBlobField;
    VariantsMemWsMain: TADOTable;
    qVariantsMemWsDetail: TADOQuery;
    qVariantsMemWsMain: TADOQuery;
    VariantsMemWsMainid: TAutoIncField;
    VariantsMemWsMainName: TWideStringField;
    VariantsMemWsMainPerig: TWideStringField;
    VariantsMemWsMainClassFormName: TWideStringField;
    VariantsMemWsMainInsUsr: TIntegerField;
    VariantsMemWsMainInsDT: TDateTimeField;
    VariantsMemWsMainUpdUsr: TIntegerField;
    VariantsMemWsMainUpdDT: TDateTimeField;
    VariantsMemWsMainDeleted: TBooleanField;
    VariantsMemWsMainDelUsr: TIntegerField;
    VariantsMemWsMainDelDT: TDateTimeField;
    VariantsMemWsDetail: TADOTable;
    VariantsMemWsDetailId: TAutoIncField;
    VariantsMemWsDetailVariantId: TIntegerField;
    VariantsMemWsDetailCalcAsValue: TBooleanField;
    VariantsMemWsDetailFieldName: TWideStringField;
    VariantsMemWsDetailFieldType: TIntegerField;
    VariantsMemWsDetailFieldValue: TWideStringField;
    qVariantsMemWsMainid: TAutoIncField;
    qVariantsMemWsMainName: TWideStringField;
    qVariantsMemWsMainPerig: TWideStringField;
    qVariantsMemWsMainClassFormName: TWideStringField;
    qVariantsMemWsMainInsUsr: TIntegerField;
    qVariantsMemWsMainInsDT: TDateTimeField;
    qVariantsMemWsMainUpdUsr: TIntegerField;
    qVariantsMemWsMainUpdDT: TDateTimeField;
    qVariantsMemWsMainDeleted: TBooleanField;
    qVariantsMemWsMainDelUsr: TIntegerField;
    qVariantsMemWsMainDelDT: TDateTimeField;
    qVariantsMemWsDetailId: TAutoIncField;
    qVariantsMemWsDetailVariantId: TIntegerField;
    qVariantsMemWsDetailCalcAsValue: TBooleanField;
    qVariantsMemWsDetailFieldName: TWideStringField;
    qVariantsMemWsDetailFieldType: TIntegerField;
    qVariantsMemWsDetailFieldValue: TWideStringField;
    QstBrowseFieldsGen: TADOQuery;
    QstBrowseFieldsGenReader: TADOQuery;
    QstBrowseFieldsGenId: TAutoIncField;
    QstBrowseFieldsGenBrowse_Name: TWideStringField;
    QstBrowseFieldsGenField_Name: TWideStringField;
    QstBrowseFieldsGenDisplay_Name: TWideStringField;
    QstBrowseFieldsGenDisplay_Format: TWideStringField;
    QstBrowseFieldsGenVisible: TBooleanField;
    QstBrowseFieldsGenReadOnly: TBooleanField;
    QstBrowseFieldsGenReaderId: TIntegerField;
    QstBrowseFieldsGenReaderBrowse_Name: TWideStringField;
    QstBrowseFieldsGenReaderField_Name: TWideStringField;
    QstBrowseFieldsGenReaderDisplay_Name: TWideStringField;
    QstBrowseFieldsGenReaderDisplay_Format: TWideStringField;
    QstBrowseFieldsGenReaderVisible: TBooleanField;
    QstBrowseFieldsGenReaderReadOnly: TBooleanField;
    qFromCode2Id: TADOQuery;
    qFromCode2IdAcardId: TAutoIncField;
    SPstRetPopupFormNamePopupFormId: TAutoIncField;
    SPstRetPopupFormNamePopupFormName: TWideStringField;
    SPstRetPopupFormNameFormName: TWideStringField;
    QstBrowseGenFieldsReader: TADOQuery;
    QstBrowseGenFieldsReaderId: TIntegerField;
    QstBrowseGenFieldsReaderBrowse_NameId: TIntegerField;
    QstBrowseGenFieldsReaderField_Name: TWideStringField;
    QstBrowseGenFieldsReaderDisplay_Name: TWideStringField;
    QstBrowseGenFieldsReaderDisplay_Format: TWideStringField;
    QstBrowseGenFieldsReaderVisible: TBooleanField;
    QstBrowseGenFieldsReaderReadOnly: TBooleanField;
    QstBrowseGenReader: TADOQuery;
    QstBrowseGenReaderid: TIntegerField;
    QstBrowseGenReaderBrowse_Name: TWideStringField;
    ADOQuery1: TADOQuery;
    qVariantsMemWsMainSubsequentAction: TWideStringField;
    qVariantsMemWsMainSubsequentComments: TWideStringField;
    qVariantsMemWsMainSubsequentMail: TWideStringField;
    VariantsMemWsMainSubsequentAction: TWideStringField;
    VariantsMemWsMainSubsequentComments: TWideStringField;
    VariantsMemWsMainSubsequentMail: TWideStringField;
    qVariantsMemWsDetailCalcType: TWideStringField;
    qVariantsMemWsMainSubsequentAutoClose: TBooleanField;
    qVariantsMemWsMainSubsequentActivateTrans: TBooleanField;
    qVariantsMemWsMainSubsequentAutoExec: TBooleanField;
    qVariantsMemWsMainSubsequentLogSection: TWideStringField;
    qrystGrid_Pivot: TADOQuery;
    qrystGrid_Pivotid: TIntegerField;
    qrystGrid_PivotGridId: TIntegerField;
    qrystGrid_PivotExcelMacroName: TWideStringField;
    qrystGrid_PivotExcelMacroFile: TWideStringField;
    qrystGrid_PivotExcelMacroDispName: TWideStringField;
    SFormSForm_Form: TIntegerField;
    SFormSForm_Group: TIntegerField;
    FPassId: TIntegerField;
    FPassLogin: TWideStringField;
    FPassPasswd: TWideStringField;
    FPassGroup: TSmallintField;
    FPassName: TWideStringField;
    FPassAddress: TWideStringField;
    FPassEMAIL: TWideStringField;
    FPassPhone: TWideStringField;
    FPassConn_Time: TFloatField;
    FPassValid_Till: TDateTimeField;
    FPassStath: TIntegerField;
    FPassDeleted: TBooleanField;
    FPassDelUsr: TIntegerField;
    FPassDelDT: TDateTimeField;
    FPassInActive: TBooleanField;
    FPassInActiveUsr: TIntegerField;
    FPassInActiveDt: TDateTimeField;
    FPassMaint_Log: TBooleanField;
    FPassCheck_Serial: TBooleanField;
    FPassSerial1: TIntegerField;
    FPassSerial2: TIntegerField;
    FPassSerial3: TIntegerField;
    UGroupId: TSmallintField;
    UGroupName: TWideStringField;
    UGroupInsUsr: TIntegerField;
    UGroupInsDT: TDateTimeField;
    UGroupUpdUsr: TIntegerField;
    UGroupUpdDT: TDateTimeField;
    UGroupDeleted: TBooleanField;
    UGroupDelUsr: TIntegerField;
    UGroupDelDT: TDateTimeField;
    UGroupInActive: TBooleanField;
    UGroupInActiveUsr: TIntegerField;
    UGroupInActiveDt: TDateTimeField;
    DFormId: TIntegerField;
    DFormName: TWideStringField;
    DFormPerig: TWideStringField;
    DFormUnit_Name: TWideStringField;
    DFormForm_Name: TWideStringField;
    DFormVersion: TWideStringField;
    DFormLast_Updated: TDateTimeField;
    DFormComments: TWideMemoField;
    DFormHelpID: TWideStringField;
    DFormMTGroup: TIntegerField;
    DFormAncestorForm: TWideStringField;
    DFormSecurityName: TWideStringField;
    DFormDataSourceName: TWideStringField;
    DFormDataModule: TWideStringField;
    FormActionsFormActionID: TIntegerField;
    FormActionsFormActionFormID: TIntegerField;
    FormActionsFormActionAction: TWideStringField;
    FormActionsFormActionText: TWideStringField;
    QLFPASSId: TIntegerField;
    QLFPASSLogin: TWideStringField;
    QLFPASSPasswd: TWideStringField;
    QLFPASSGroup: TSmallintField;
    QLFPASSName: TWideStringField;
    QLFPASSAddress: TWideStringField;
    QLFPASSEMAIL: TWideStringField;
    QLFPASSPhone: TWideStringField;
    QLFPASSConn_Time: TFloatField;
    QLFPASSValid_Till: TDateTimeField;
    QLFPASSStath: TIntegerField;
    QLFPASSDeleted: TBooleanField;
    QLFPASSDelUsr: TIntegerField;
    QLFPASSDelDT: TDateTimeField;
    QLFPASSInActive: TBooleanField;
    QLFPASSInActiveUsr: TIntegerField;
    QLFPASSInActiveDt: TDateTimeField;
    QLFPASSMaint_Log: TBooleanField;
    QLFPASSCheck_Serial: TBooleanField;
    QLFPASSSerial1: TIntegerField;
    QLFPASSSerial2: TIntegerField;
    QLFPASSSerial3: TIntegerField;
    TblChanges: TADOQuery;
    TblChangesgid: TGuidField;
    TblChangesTableId: TIntegerField;
    TblChangesField: TIntegerField;
    TblChangesInsertion: TBooleanField;
    TblChangesPrimKey: TIntegerField;
    TblChangesPrimGui: TGuidField;
    TblChangesDateTime: TDateTimeField;
    TblChangesUserId: TIntegerField;
    TblChangesForm: TIntegerField;
    TblChangesType: TIntegerField;
    TblChangesValueOld: TWideMemoField;
    TblChangesValueNew: TWideMemoField;
    cdsVTableFieldsNames: TClientDataSet;
    cdsVTableFieldsNamesTableName: TWideStringField;
    cdsVTableFieldsNamesFieldName: TWideStringField;
    cdsVTableFieldsNamesTableId: TIntegerField;
    cdsVTableFieldsNamesid: TIntegerField;
    cdsVTableFieldsNamesType: TWideStringField;
    cdsVTableFieldsNamesCheckChanges: TBooleanField;
    cdsVTableFieldsNamesFName: TWideStringField;
    DataSetProvider1: TDataSetProvider;
    VTableFieldsNames: TADOQuery;
    VTableFieldsNamesTableName: TWideStringField;
    VTableFieldsNamesFieldName: TWideStringField;
    VTableFieldsNamesTableId: TIntegerField;
    VTableFieldsNamesid: TIntegerField;
    VTableFieldsNamesType: TWideStringField;
    VTableFieldsNamesCheckChanges: TBooleanField;
    VTableFieldsNamesFName: TWideStringField;
    ADOQuery2: TADOQuery;
    ADOQuery2TableName: TWideStringField;
    ADOQuery2FieldName: TWideStringField;
    ADOQuery2TableId: TIntegerField;
    ADOQuery2id: TIntegerField;
    ADOQuery2Type: TWideStringField;
    ADOQuery2CheckChanges: TBooleanField;
    ADOQuery2FName: TWideStringField;
    QLSFormForm_Id: TIntegerField;
    QLSFormGroup_Id: TIntegerField;
    QFindSAFAllowed: TBooleanField;
    QFindSAFAction: TWideStringField;
    QFindSAFUGroup_Id: TIntegerField;
    QFindSAFFormID: TIntegerField;
    OldLogonMonitor: TADOTable;
    OldLogonMonitorid: TIntegerField;
    OldLogonMonitorUserId: TIntegerField;
    OldLogonMonitorMacAddr: TWideStringField;
    OldLogonMonitorIPV4Addr: TWideStringField;
    OldLogonMonitorIPV6Addr: TWideStringField;
    OldLogonMonitorComputerName: TWideStringField;
    OldLogonMonitorWindowsUserName: TWideStringField;
    OldLogonMonitorLogonDT: TDateTimeField;
    OldLogonMonitorLogoFFDT: TDateTimeField;
    OldLogonMonitorFileVersion: TWideStringField;
    fnHelpOur: TADOStoredProc;
    fnHelpOther: TADOStoredProc;
    fnHelpOtherDrvName: TWideStringField;
    fnHelpOtherRegNo: TWideStringField;
    fnHelpOtherCompany: TWideStringField;
    fnHelpOtherDateTimeIn: TDateTimeField;
    fnHelpOurCompanyName: TWideStringField;
    fnHelpOurCompanyId: TIntegerField;
    fnHelpOurDrvNameId: TIntegerField;
    fnHelpOurRegNoId: TIntegerField;
    fnHelpOurDateTimeIn: TDateTimeField;
    fnHelpOurRegNo: TWideStringField;
    fnHelpOurDriversName: TWideStringField;
    LogonMonitor: TADOQuery;
    LogonMonitorid: TIntegerField;
    LogonMonitorUserId: TIntegerField;
    LogonMonitorMacAddr: TWideStringField;
    LogonMonitorIPV4Addr: TWideStringField;
    LogonMonitorIPV6Addr: TWideStringField;
    LogonMonitorComputerName: TWideStringField;
    LogonMonitorWindowsUserName: TWideStringField;
    LogonMonitorFileVersion: TWideStringField;
    LogonMonitorLogOnDT: TDateTimeField;
    LogonMonitorLogOffDT: TDateTimeField;
    procedure DMMainCreate(Sender: TObject);
    procedure tFpassBeforePost(DataSet: TDataSet);
    procedure tFieldStatusBeforePost(DataSet: TDataSet);
    procedure UGroupBeforePost(DataSet: TDataSet);
    // procedure dsFpassStateChange(Sender: TObject);
    procedure tFormAction1CalcFields(DataSet: TDataSet);
    procedure FormActionsBeforePost(DataSet: TDataSet);
    procedure FormActionsCalcFields(DataSet: TDataSet);
    procedure ADOConnectionAfterConnect(Sender: TObject);
    procedure ADOConnectionBeforeConnect(Sender: TObject);
    procedure OpenAllTables;
    procedure ADOConnectionExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command;
      const Recordset: _Recordset);
    procedure ADOConnectionWillExecute(Connection: TADOConnection; var CommandText: WideString; var CursorType: TCursorType; var LockType: TADOLockType;
      var CommandType: TCommandType; var ExecuteOptions: TExecuteOptions; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
    procedure LogonMonitorBeforePost(DataSet: TDataSet);
  private
    FTranCount: Integer;
    procedure CommonSql(query: TADOQuery; const sql: string; param_names: array of string; params: variant);
  public
    // function ParserLight(PText:String):string;

    function ParserLight(PText: String; PNextText: String): string;
    function UpdateUser(UserId:Integer;Logon:Boolean):integer;

    procedure UpdSecurity(Form: String);
    procedure EnhmChanges(TblName: string; FieldName: string; FieldKind: TFieldKind; KeyValue: Integer; Insertion: Boolean; NewVal: string; OldVal: string);
    procedure EnhmChangesGuid(TblName: string; FieldName: string; FieldKind: TFieldKind; KeyValue: String; Insertion: Boolean; NewVal: string; OldVal: string);

    procedure Split(Delimiter: Char; Str: string; ListOfStrings: TStrings);
    procedure StartTransaction;
    procedure Commit;
    procedure Rollback;
    procedure ShowJpgImage(DBImage: TDBImage);
    procedure ExecSql(const sql: string; param_names: array of string; params: variant);
    { TODO -cCheck v3 : Only in One Module }
    // procedure ParamStateChange(Sender: TObject);
    // procedure SelectImage(dlg: TOpenPictureDialog; field: TBlobField);
    procedure ExecNewProcess(ProgramName: String; Wait: Boolean);

    procedure UpdToTableFields(DataS: TDataSet);
    procedure UpdFromTableFields(DataS: TDataSet);
    procedure UpdateFieldsExecute(FormId: Integer; Form: TForm);
    procedure UpdateActionsExecute(FormId: Integer; ActLst: TActionList);
    procedure UpdateMenuExecute(FormId: Integer; MMenu: TMainMenu);

    procedure UpdTostBrowse(stBrowse: string; DataS: TDataSet);
    procedure UpdFromstBrowse(stBrowse: string; DataS: TDataSet);

    function NewVariantCx(aowner: TComponent; FormClassName: String; CxParam: TStringStream): Boolean;
    function GetVariantCx(aowner: TComponent; FormClassName: String; CxParam: TStringStream): Boolean;

    function NewVariantMemWs(aowner: TComponent; FormClassName: String; CxParam: TdxMemData): Boolean;
    // function GetVariantMemWs(aowner: TComponent; FormClassName: String; CxParam:TdxMemData ): Boolean;
    function GetVariantMemWs(aowner: TComponent; FormClassName: String; CxParam: TdxMemData; var Action: string; Var Comments: string; Var email: String; Var AutoClose: Boolean;
      Var ActivateTrans: Boolean; Var AutoExec: Boolean; Var LogSection: Boolean): Boolean;

    function GetSoftVersion: String;
    function Login(const name, pass: string): Integer;
    function SelectPrint(const sql: string; param_names: array of string; params: variant): TDataSet;
    function FindSecurity(Form: String; Group: Integer; var FormId: Integer): Boolean;
    function FindSecuritySub(Form: String; Group: Integer): Boolean;
    function SearchSecurity(Action: String; Form, Group: Integer): Boolean;
    function FindFormName(id: Integer; var name: String): Boolean;
    function AcquireLock(User: String; DataSet: TDataSet; Form: String): Boolean;
    function ReleaseLock(User: String; DataSet: TDataSet; Form: String): Boolean;
    function LockInformation(DataSet: TDataSet): String;
    function AskDelete: Boolean;
    function PadSapCode(Code: int64): String;
    function NewVariant(aowner: TComponent; var name, Perig: String; PFormID: Integer; var VariantId: Integer): Boolean;
    function NewVariantDetail(VariantId: Integer; FieldName: String; FieldType: Integer; FieldValue: String): Boolean;
    function GetVariant(FormId: Integer; VariantId: Integer): Boolean;
    function GetVariantDetail(VariantId: Integer; var FieldName: String; var FieldType: Integer; var FieldValue: String): Boolean;
    function SearchLookUp(Grid: TDBGrid; FName, FValue: String): Integer;
    function GNow(): TDateTime;
  end;

type
  TSeccurityRec = Record
    FormUnit: String[40];
    FormId: Integer;
    InstanceId: Integer;
    NumAA: Integer;
    DateIn: TDateTime;
    TimeIn: TDateTime;
  end;

var
  DMMain: TDMMain;
  NumAA, StackAA, LoginGroup, LoginSF, LoginId: Integer;
  LoginName: String;
  Log_Maint: Boolean;
  SeccArr: Array [1 .. 200] of TSeccurityRec;

function CreateKey(const TableName: string): Integer;
function Check_Afm(const For_Check: String): Boolean;
function GetWindowsDrive: string;
function GetDriveSerial(Const drive: string): Integer;
procedure GreekForm(GForm: TForm);
procedure GreekPrint(GReport: TQuickRep);
// procedure GreekGraph(DGraph:TDecisionGraph;DPivot:TDecisionPivot;DGrid:TDecisionGrid);
procedure GenBeforePostWithName(DataSet: TDataSet; TableName: String);
procedure GenBeforePostWithNameN(DataSet: TDataSet; TableName: String);
procedure GenDeletePostWithNameN(DataSet: TDataSet);
procedure GenInActivePostWithNameN(DataSet: TDataSet);
function FormDate(aowner: TComponent; var PDate: TDateTime; State: TCallState = csDateTime): Integer;
function FormDateTitle(aowner: TComponent; var PDate: TDateTime; Title: String; State: TCallState = csDateTime): Integer;

implementation

uses FMain, FSubParams, AlertU, ResStr;

resourcestring
  StrΠρόβλημαΣτηνΒάση = 'Πρόβλημα στην Βάση!!!';
  StrΠροβλημαSecurityΣτ = 'Προβλημα Security στην Φορμα ';

{$R *.DFM}
  { TODO -cCheck v3 : Only in One Module }
  { procedure TDMMain.ParamStateChange(Sender: TObject);
    begin
    inherited;
    if Self.Owner is TfrmSubParams then
    if TDataSource(Sender).State in [dsInsert, dsEdit] then
    TfrmSubParams(Self.Owner).SetState('After')
    else
    TfrmSubParams(Self.Owner).SetState('Before');
    end; }

function CreateKey(const TableName: string): Integer;
var
  tbl: TADOTable;
  fld: TField;
begin
  DMMain.tTableIds.Active := False;
  DMMain.tTableIds.Active := True;
  tbl                     := DMMain.tTableIds;
  if Assigned(tbl) then
    begin
      if tbl.Locate('TABLENAME', TableName, []) then
        begin
          fld := tbl.FieldByName('NUM');
          tbl.Edit;
          result        := fld.AsInteger;
          fld.AsInteger := result + 1;
          tbl.Post;
        end
      else
        raise Exception.Create('Table: ' + TableName + ' not found !!!');
    end;
end;

function TDMMain.Login(const name, pass: string): Integer;
begin
  result := 0;
end;

procedure TDMMain.LogonMonitorBeforePost(DataSet: TDataSet);
begin
  if DataSet.State = dsInsert then
    TADOQuery(DataSet).FieldByName('Id').AsInteger := CreateKey('LogonMonitor');
end;

procedure TDMMain.DMMainCreate(Sender: TObject);
var
  DBname, DBPass: String;
  a: OleVariant;

  Stream: TFileStream;
  SStream: TStringStream;
  x: Integer;
  aa0: TComponent;
  aa: TField;
begin
  { Database.Connected      := False;
    frmMain.ReadIniG('Database',DBname);
    if DBName > '' then
    begin
    frmMain.ReadIniG('Password',DBPass);
    Database.AliasName:=DBName;
    end
    else
    begin
    Database.AliasName:='Obye2002';
    end; }

  try
    // Database.Connected      := True;
    ADOConnection.Connected := True;
  except
    ;
    MessageDlg(StrΠρόβλημαΣτηνΒάση, mtInformation, [mbOk], 0);
    Application.Terminate;
    exit;
  end;

  tTableIds.Active := True;
  // a:=tTableIds.Properties['Update Criteria'].Value;
  // MessageDlg(a, mtWarning, [mbOK], 0);
  // tTableIds.Properties['Update Criteria'].Value := adCriteriaKey;
  // a:=tTableIds.Properties['Update Criteria'].Value;
  // MessageDlg(a, mtWarning, [mbOK], 0);

  // Properties[ 'Update Criteria' ].Value

  FPass.Active  := True;
  UGroup.Active := True;
  DForm.Active  := True;
  // tFields.Active          := True;
  // tFieldStatus.Active     := True;
  SForm.Active := True;
  TblChanges.Active  := True;
  LogonMonitor.Active  := True;
  // tFormAction.Active  := True;
  // tSFormAction.Active := True;
  // tLockIng.Active     := True;


  // aa0:=TComponent.Create(Self);
  //
  // SStream := TStringStream.Create;//('mycomponent.txt', fmCreate);
  // try
  // for x := 0 to FPass.FieldCount -1 do
  // SStream.WriteComponent(FPass.Fields[x]);
  //
  // SStream.Seek(0,soFromBeginning);
  /// /    MessageDlg(SStream.ReadString(SStream.Size), mtWarning, [mbOK], 0);
  // for x := 0 to FPass.FieldCount -1 do
  // begin
  // aa:=TField.Create(aa0);
  // SStream.ReadComponent(aa);
  // MessageDlg(aa.Name, mtWarning, [mbOK], 0);
  // aa.Free;
  // end;
  // finally
  // SStream.Free;
  // end;

end;

procedure TDMMain.tFpassBeforePost(DataSet: TDataSet);
begin
  if DataSet.State = dsInsert then
    tTable(DataSet).FieldByName('FPass_Key').AsInteger := CreateKey(tTable(DataSet).TableName);
end;

procedure TDMMain.CommonSql(query: TADOQuery; const sql: string; param_names: array of string; params: variant);
var
  i: Integer;
begin
  query.sql.Text := sql;
  if VarIsArray(params) then
    begin
      for i                                                := Low(param_names) to High(param_names) do
        query.Parameters.ParamByName(param_names[i]).Value := params[i];
    end
  else if params <> Null then
    begin
      query.Parameters.ParamByName(param_names[Low(param_names)]).Value := params;
    end;
end;

function TDMMain.SelectPrint(const sql: string; param_names: array of string; params: variant): TDataSet;
begin
  CommonSql(qSelectPrt, sql, param_names, params);
  qSelectPrt.Open;
  result := qSelectPrt;
end;

procedure TDMMain.ExecSql(const sql: string; param_names: array of string; params: variant);
begin
  CommonSql(qExec, sql, param_names, params);
  qExec.ExecSql;
end;

{ var
  aa : TDataSet;
  begin
  aa := SelectPrint( .... );
  .....
  aa.Close;
}
procedure TDMMain.StartTransaction;
begin
  // if FTranCount = 0 then
  // Database.StartTransaction;
  Inc(FTranCount);
end;

procedure TDMMain.Commit;
begin
  // if FTranCount = 0 then
  // raise Exception.Create('Not in Transaction');
  // Dec(FTranCount);
  // if FTranCount = 0 then
  // Database.Commit;
end;

procedure TDMMain.Rollback;
begin
  // if FTranCount > 0 then
  // Database.Rollback;
  FTranCount := 0;
end;

function Check_Afm(const For_Check: String): Boolean;
var
  Acc, Digit, LeoP, i: Integer;
  LeoC: String[1];
begin
  Acc   := 0;
  for i := 1 to 8 do
    begin
      LeoC := For_Check[i];
      try
        Digit := strtoint(LeoC);
      except
        Check_Afm := False;
        exit;
      end;

      LeoP := (1 shl (9 - i));
      Acc  := Acc + (LeoP * Digit);
    end;
  i := Acc mod 11;
  if i = 10 then
    i := 1;
  if i = 11 then
    i := 2;

  LeoC := For_Check[9];
  try
    try
      Digit := strtoint(LeoC);
    except
    end
  finally
    Check_Afm := False;
  end;
  if i = Digit then
    Check_Afm := True
  else
    Check_Afm := False;
end;

procedure GreekPrint(GReport: TQuickRep);
Var
  i, ii: Integer;
begin
  for i := 0 to (GReport.ComponentCount - 1) do
    begin
      if (GReport.Components[i] is TQRBand) Then
        for ii := 0 to TQRBand(GReport.Components[i]).ComponentCount - 1 do
          begin
            if (TQRBand(GReport.Components[i]).Components[ii] is TQRDBText) Then
              with TQRBand(GReport.Components[i]).Components[ii] as TQRDBText do
              begin
                Font.Charset := 161;
                Font.Name := 'Courier New'
              end
            else if (TQRBand(GReport.Components[i]).Components[ii] is TQRLabel) Then
              with TQRBand(GReport.Components[i]).Components[ii] as TQRLabel do
              begin
                Font.Charset := 161;
                Font.Name := 'Courier New'
              end
          end;
      if (GReport.Components[i] is TQRDBText) Then
        with GReport.Components[i] as TQRDBText Do
              begin
                Font.Charset := 161;
                Font.Name := 'Courier New'
              end
      else if (GReport.Components[i] is TQRLabel) Then
        with GReport.Components[i] as TQRLabel Do
              begin
                Font.Charset := 161;
                Font.Name := 'Courier New'
              end
    end;
end;

procedure GreekForm(GForm: TForm);
Var
  i: Integer;
begin
  for i := 1 to (GForm.ComponentCount - 1) do
    begin
      if (GForm.Components[i] is TDBEdit) Then
        with GForm.Components[i] as TDBEdit Do
          Font.Charset := 161
      else if (GForm.Components[i] is TLabel) Then
        with GForm.Components[i] as TLabel Do
          Font.Charset := 161;
    end;
end;

{$IFDEF VER230}
{$ELSE}

procedure GreekGraph(DGraph: TDecisionGraph; DPivot: TDecisionPivot; DGrid: TDecisionGrid);
var
  i: Integer;
begin
  DGrid.LabelFont.Charset               := 161;
  DPivot.Font.Charset                   := 161;
  DGraph.Legend.Font.Charset            := 161;
  DGraph.Title.Font.Charset             := 161;
  DGraph.Legend.Font.Charset            := 161;
  DGraph.TopAxis.LabelsFont.Charset     := 161;
  DGraph.TopAxis.Title.Font.Charset     := 161;
  DGraph.BottomAxis.LabelsFont.Charset  := 161;
  DGraph.BottomAxis.Title.Font.Charset  := 161;
  DGraph.LeftAxis.LabelsFont.Charset    := 161;
  DGraph.LeftAxis.Title.Font.Charset    := 161;
  DGraph.RightAxis.LabelsFont.Charset   := 161;
  DGraph.RightAxis.Title.Font.Charset   := 161;
  for i                                 := 0 to (DGraph.SeriesCount - 1) do
    DGraph.Series[i].Marks.Font.Charset := 161;
end;
{$ENDIF}

function GetWindowsDrive: string;
var
  buff: array [0 .. MAX_PATH] of Char;
  p: Integer;
begin
  GetWindowsDirectory(buff, sizeof(buff));
  p := Pos('\', buff);
  if p > 0 then
    result := Copy(buff, 1, p)
  else
    result := buff;
end;

function GetDriveSerial(Const drive: string): Integer;
var
  buff: array [0 .. MAX_PATH] of Char;
  serial, dummy: DWORD;
begin
  GetVolumeInformation(PChar(drive), buff, sizeof(buff), @serial, dummy, dummy, nil, DWORD(0));
  result := serial;
end;

function TDMMain.FindSecurity(Form: String; Group: Integer; var FormId: Integer): Boolean;
begin
  If (LoginGroup = 0) then
    begin
      result                    := True;
      NumAA                     := NumAA + 1;
      StackAA                   := StackAA + 1;
      SeccArr[StackAA].FormUnit := Form;
      SeccArr[StackAA].DateIn   := Date;
      SeccArr[StackAA].TimeIn   := Now;
      SeccArr[StackAA].NumAA    := NumAA;

      QLSFForm.Active                                := False;
      QLSFForm.Parameters.ParamByName('PName').Value := Form;
      QLSFForm.Active                                := True;
      if QLSFForm.IsEmpty then
        begin
          DForm.Insert;
          DFormName.AsString  := Form;
          DFormPerig.AsString := Form;
          DForm.Post;
        end;
      QFindFormID.Active                               := False;
      QFindFormID.Parameters.ParamByName('Name').Value := Form;
      QFindFormID.Active                               := True;
      if QFindFormID.IsEmpty then
        begin
          result := False;
        end
      else
        begin
          FormId := QFindFormIDId.AsInteger;
          result := True;
        end;
      exit;
    end;

  QFindFormID.Active                               := False;
  QFindFormID.Parameters.ParamByName('Name').Value := Form;
  QFindFormID.Active                               := True;
  if Not QFindFormID.IsEmpty then
    begin
      FormId                                         := QFindFormIDId.AsInteger;
      QLSForm.Active                                 := False;
      QLSForm.Parameters.ParamByName('PForm').Value  := QFindFormIDId.AsInteger;
      QLSForm.Parameters.ParamByName('PGroup').Value := LoginGroup;
      QLSForm.Active                                 := True;
      if (QLSForm.IsEmpty) then
        result := False
      else
        begin
          result := True;
          if (result) then
            begin
              NumAA                     := NumAA + 1;
              StackAA                   := StackAA + 1;
              SeccArr[StackAA].FormUnit := Form;
              SeccArr[StackAA].DateIn   := Date;
              SeccArr[StackAA].TimeIn   := Now;
              SeccArr[StackAA].NumAA    := NumAA;
            end
        end
    end
  else
    result := False;
end;

function TDMMain.FindSecuritySub(Form: String; Group: Integer): Boolean;
begin
  If (LoginGroup = 0) then
    begin
      result := True;
      exit;
    end;
  QLSForm.Active                                 := False;
  QLSForm.Parameters.ParamByName('PForm').Value  := Form;
  QLSForm.Parameters.ParamByName('PGroup').Value := LoginGroup;
  QLSForm.Active                                 := True;
  if (QLSForm.IsEmpty) then
    result := False
  else
    begin
      result := True;
    end
end;

procedure TDMMain.UpdSecurity(Form: String);
var
  LeoS: String;
begin
  if (Form = SeccArr[StackAA].FormUnit) then
    begin
      QUpdLog.Parameters.ParamByName('Code').Value    := LoginName;
      QUpdLog.Parameters.ParamByName('DDate').Value   := SeccArr[StackAA].DateIn;
      QUpdLog.Parameters.ParamByName('Module').Value  := SeccArr[StackAA].FormUnit;
      QUpdLog.Parameters.ParamByName('AA').Value      := SeccArr[StackAA].NumAA;
      QUpdLog.Parameters.ParamByName('TimeIn').Value  := SeccArr[StackAA].TimeIn;
      QUpdLog.Parameters.ParamByName('TimeOut').Value := Now;
      if Log_Maint then
        QUpdLog.ExecSql;
      StackAA := StackAA - 1;
    end
  else
    begin
      QUpdLog.Parameters.ParamByName('Code').Value    := LoginName;
      QUpdLog.Parameters.ParamByName('DDate').Value   := SeccArr[StackAA].DateIn;
      QUpdLog.Parameters.ParamByName('Module').Value  := SeccArr[StackAA].FormUnit;
      QUpdLog.Parameters.ParamByName('AA').Value      := SeccArr[StackAA].NumAA;
      QUpdLog.Parameters.ParamByName('TimeIn').Value  := SeccArr[StackAA].TimeIn;
      QUpdLog.Parameters.ParamByName('TimeOut').Value := Now;
      if Log_Maint then
        QUpdLog.ExecSql;
      LeoS := StrΠροβλημαSecurityΣτ + Form;
      If (LoginGroup = 0) then
        MessageDlg(LeoS, mtError, [mbOk], 0);
      StackAA := StackAA - 1;
    end
end;

procedure TDMMain.tFieldStatusBeforePost(DataSet: TDataSet);
begin
  if DataSet.State = dsInsert then
    TADOTable(DataSet).FieldByName('Id').AsInteger := CreateKey(TADOTable(DataSet).TableName);
end;

function TDMMain.AskDelete: Boolean;
begin
  result := sAlert(mtConfirmation, SCADeleteRecord, 2) = 1;
end;

procedure TDMMain.UGroupBeforePost(DataSet: TDataSet);
begin
  if DataSet.State = dsInsert then
    TADOTable(DataSet).FieldByName('UGroup_Code').AsInteger := CreateKey(TADOTable(DataSet).TableName);
end;

procedure GenBeforePostWithName(DataSet: TDataSet; TableName: String);
begin
  if DataSet.State = dsInsert then
    begin
      if DataSet is tTable then
        tTable(DataSet).FieldByName('ID').AsInteger := CreateKey(TableName)
      else if DataSet is TADOTable then
        TADOTable(DataSet).FieldByName('ID').AsInteger := CreateKey(TableName)
      else if DataSet is TADOQuery then
        TADOQuery(DataSet).FieldByName('ID').AsInteger := CreateKey(TableName);
    end;
end;

// procedure TDMMain.dsFpassStateChange(Sender: TObject);
// begin
// ParamStateChange(Sender);
// end;

function FormDate(aowner: TComponent; var PDate: TDateTime; State: TCallState = csDateTime): Integer;
var
  frm: TfrmCall;
begin
  if PDate = 0 then
    PDate := Now;
  frm     := TfrmCall.CreateSpec(aowner, PDate, State);
  result  := frm.ShowModal;
  frm.Free;
end;

function FormDateTitle(aowner: TComponent; var PDate: TDateTime; Title: String; State: TCallState = csDateTime): Integer;
var
  frm: TfrmCall;
begin
  if PDate = 0 then
    PDate := Now;
  frm     := TfrmCall.CreateSpecTitle(aowner, PDate, Title, State);
  result  := frm.ShowModal;
  frm.Free;
end;

function TDMMain.SearchSecurity(Action: String; Form, Group: Integer): Boolean;
var TmpAllowed:Boolean;
begin
  if not FrmMain.chkNotLog4.Checked then
    FrmMain.JvLogFile4.Add(IntToStr(Form) + ' ' + Action);

  if LoginGroup = 0 then
    begin
      result := True;
      exit;
    end;

  QFindSAF.Active                                     := False;
  QFindSAF.Parameters.ParamByName('PFormAction').Value := 'All';
  QFindSAF.Parameters.ParamByName('PFormGroup').Value  := LoginGroup;
  QFindSAF.Parameters.ParamByName('PFormID').Value     := Form;
//  QFindSAF.Parameters.ParamByName('FormActionSubParam').Value := 0;
  QFindSAF.Active := True;
  if QFindSAF.IsEmpty then
    begin
      QFindSAF.Active                                     := False;
      QFindSAF.Parameters.ParamByName('PFormAction').Value := Action;
      QFindSAF.Parameters.ParamByName('PFormGroup').Value  := LoginGroup;
      QFindSAF.Parameters.ParamByName('PFormID').Value     := Form;
//      QFindSAF.Parameters.ParamByName('FormActionSubParam').Value := 0;
      QFindSAF.Active := True;
      if QFindSAF.IsEmpty then
        result := False
      else if Self.QFindSAFAllowed.AsBoolean = True then
        result := True
      else
        result := False
    end
  else
    begin
      TmpAllowed:=QFindSAFAllowed.AsBoolean;
      QFindSAF.Active                                     := False;
      QFindSAF.Parameters.ParamByName('PFormAction').Value := Action;
      QFindSAF.Parameters.ParamByName('PFormGroup').Value  := LoginGroup;
      QFindSAF.Parameters.ParamByName('PFormID').Value     := Form;
//      QFindSAF.Parameters.ParamByName('FormActionSubParam').Value := 0;
      QFindSAF.Active := True;
      if QFindSAF.IsEmpty then
        result := TmpAllowed//True
      else if QFindSAFAllowed.AsBoolean = False then
        result := False
      else
        result := True
    end;
end;

procedure TDMMain.tFormAction1CalcFields(DataSet: TDataSet);
begin
  // { TODO -oLeo -cCheck : Check }
  // FormActionsSubParam.AsString := FormActionsLuForm.AsString + ' ' +
  // FormActionsText.AsString + ' ' + FormActionsSubParam.AsString;
end;

function TDMMain.FindFormName(id: Integer; var name: String): Boolean;
begin
  QFindFormName.Parameters.ParamByName('ID').Value := id;
  QFindFormName.Active                             := True;
  Name                                             := QFindFormNameName.AsString;
  result                                           := Not(QFindFormName.IsEmpty);
  QFindFormName.Active                             := False;
end;

function TDMMain.AcquireLock(User: String; DataSet: TDataSet; Form: String): Boolean;
var
  LeoK, s, Key: String;
  x, y: Integer;
  Table: tTable;
  LeoSL: TStringList;
begin
  result := True;
  if Not(DataSet is tTable) then
    exit
  else
    Table := tTable(DataSet);

  for x := 0 to Table.IndexDefs.Count - 1 do
    begin
      if Table.IndexDefs[x].Options >= [ixUnique] then
        LeoK := Table.IndexDefs[x].Fields;
    end;
  LeoSL := TStringList.Create;
  y     := 1;
  for x := 1 to Length(LeoK) - 1 do
    begin
      if isDelimiter(';, ', LeoK, x) then
        begin
          s := Copy(LeoK, y, x - 1);
          y := x + 1;
          LeoSL.Add(s);
        end
    end;
  if LeoSL.Count = 0 then
    LeoSL.Add(LeoK);
  for x := 1 to LeoSL.Count do
    begin
      s   := LeoSL.Strings[x - 1];
      Key := Key + DataSet.FieldByName(s).AsString;
      Key := Key + ';';
    end;

  if Not LockIng.Locate('TableName;KeyValue', VarArrayOf([Table.TableName, Key]), []) then
    LockIng.InsertRecord([Table.TableName, Key, User, Now(), Form])
  else
    result := False;
end;

function TDMMain.ReleaseLock(User: String; DataSet: TDataSet; Form: String): Boolean;
var
  LeoK, s, Key: String;
  x, y: Integer;
  LeoSL: TStringList;
  Table: tTable;
begin
  result := True;
  if Not(DataSet is tTable) then
    exit
  else
    Table := tTable(DataSet);

  for x := 0 to Table.IndexDefs.Count - 1 do
    begin
      if Table.IndexDefs[x].Options >= [ixUnique] then
        LeoK := Table.IndexDefs[x].Fields;
    end;
  LeoSL := TStringList.Create;
  y     := 1;
  for x := 1 to Length(LeoK) - 1 do
    begin
      if isDelimiter(';, ', LeoK, x) then
        begin
          s := Copy(LeoK, y, x - 1);
          y := x + 1;
          LeoSL.Add(s);
        end
    end;
  if LeoSL.Count = 0 then
    LeoSL.Add(LeoK);
  for x := 1 to LeoSL.Count do
    begin
      s   := LeoSL.Strings[x - 1];
      Key := Key + DataSet.FieldByName(s).AsString;
      Key := Key + ';';
    end;

  if Not LockIng.Locate('TableName;KeyValue', VarArrayOf([Table.TableName, Key]), []) then
    result := False
  else
    LockIng.Delete;
end;

function TDMMain.LockInformation(DataSet: TDataSet): String;
var
  LeoK, s, Key: String;
  x, y: Integer;
  Table: tTable;
  LeoSL: TStringList;
begin
  if Not(DataSet is tTable) then
    exit
  else
    Table := tTable(DataSet);

  for x := 0 to Table.IndexDefs.Count - 1 do
    begin
      if Table.IndexDefs[x].Options >= [ixUnique] then
        LeoK := Table.IndexDefs[x].Fields;
    end;
  LeoSL := TStringList.Create;
  y     := 1;
  for x := 1 to Length(LeoK) - 1 do
    begin
      if isDelimiter(';, ', LeoK, x) then
        begin
          s := Copy(LeoK, y, x - 1);
          y := x + 1;
          LeoSL.Add(s);
        end
    end;
  if LeoSL.Count = 0 then
    LeoSL.Add(LeoK);
  for x := 1 to LeoSL.Count do
    begin
      s   := LeoSL.Strings[x - 1];
      Key := Key + DataSet.FieldByName(s).AsString;
      Key := Key + ';';
    end;

  if Not LockIng.Locate('TableName;KeyValue', VarArrayOf([Table.TableName, Key]), []) then
    result := '******'
  else
    begin
      result := Format('Η εγγραφή είναι δεσμευμένη από τον Χρήστη %S ' + chr(13) + 'στις %s από την Φόρμα %s [ %s ]',
        [LockIngRef_User_Id.AsString, LockIngTTime.AsString, LockIngRef_Form_id.AsString, LockIngKeyValue.AsString]);
    end;

end;

procedure TDMMain.FormActionsBeforePost(DataSet: TDataSet);
begin
  if DataSet.State = dsInsert then
    TADOTable(DataSet).FieldByName('FPass_Key').AsInteger := CreateKey(TADOTable(DataSet).TableName);

end;

procedure TDMMain.FormActionsCalcFields(DataSet: TDataSet);
begin
  { TODO -cCheck v3 : Check LookUp }
  // FormActionSubParam.AsString := FormActionLuForm.AsString + ' ' +
  // FormActionText.AsString + ' ' + FormActionSubParam.AsString;
end;

function TDMMain.NewVariant(aowner: TComponent; var name, Perig: String; PFormID: Integer; var VariantId: Integer): Boolean;
var
  frm: TFrmInsertVariant;
begin
  if FindSecurity('TfrmInsertVariant', LoginGroup, FormId) then
    begin
      frm := TFrmInsertVariant.CreateSecurity(aowner, FormId);
      UpdSecurity('TfrmInsertVariant');
      if frm.ShowModal = mrCancel then
        begin
          frm.Free;
          result := False;
          exit;
        end;
      Name                                               := frm.PName;
      Perig                                              := frm.PPerig;
      result                                             := True;
      QInsVarMain.Parameters.ParamByName('Name').Value   := Name;
      QInsVarMain.Parameters.ParamByName('Perig').Value  := Perig;
      QInsVarMain.Parameters.ParamByName('FormId').Value := PFormID;
      VariantId                                          := CreateKey('Variant');
      QInsVarMain.Parameters.ParamByName('id').Value     := VariantId;
      QInsVarMain.ExecSql;
      frm.Free;
    end
  else
    begin
      MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOk], 0);
      result := False;
    end;
end;

function TDMMain.NewVariantDetail(VariantId: Integer; FieldName: String; FieldType: Integer; FieldValue: String): Boolean;
begin
  result                                                   := True;
  QInsVarDetail.Parameters.ParamByName('FieldName').Value  := FieldName;
  QInsVarDetail.Parameters.ParamByName('FieldType').Value  := FieldType;
  QInsVarDetail.Parameters.ParamByName('FieldValue').Value := FieldValue;
  QInsVarDetail.Parameters.ParamByName('id').Value         := VariantId;
  QInsVarDetail.ExecSql;
end;

function TDMMain.GetVariant(FormId: Integer; VariantId: Integer): Boolean;
var
  frm: TFrmSelectVariant;
  FormIDD: Integer;
begin
  FindSecurity('TfrmInsertVariant', LoginGroup, FormIDD);
  frm                                                   := TFrmSelectVariant.CreateSecurity(Self, FormIDD);
  QVariantsMain.Active                                  := False;
  QVariantsMain.Parameters.ParamByName('PFormId').Value := FormId;
  QVariantsMain.Active                                  := True;
  if QVariantsMain.IsEmpty then
    begin
      result := False;
      exit;
    end;
  QVariantsMain.First;
  if frm.ShowModal = mrCancel then
    begin
      result := False;
      exit;
    end;
  result                                               := True;
  QVariantsDetails.Active                              := False;
  VariantId                                            := QVariantsMainid.AsInteger;
  QVariantsDetails.Parameters.ParamByName('PId').Value := VariantId;
  QVariantsDetails.Active                              := True;
  QVariantsDetails.First;
end;

function TDMMain.GetVariantDetail(VariantId: Integer; var FieldName: String; var FieldType: Integer; var FieldValue: String): Boolean;
begin
  if QVariantsDetails.Eof then
    result := False
  else
    begin
      FieldName  := QVariantsDetailsFieldName.AsString;
      FieldValue := QVariantsDetailsFieldValue.AsString;
      FieldType  := QVariantsDetailsFieldType.AsInteger;
      QVariantsDetails.Next;
      result := True
    end;
end;

Procedure TDMMain.ADOConnectionAfterConnect(Sender: TObject);
Begin
  // gADOError := ADO_ERR_NONE;
  OpenAllTables;
End;

Procedure TDMMain.OpenAllTables;
Var
  i: Integer;
  t: TADOTable;
Begin
  For i := 0 To (ComponentCount - 1) Do
    Begin
      If (Components[i] Is TADOTable) Then
        Begin
          t := TADOTable(Components[i]);
          Try
            t.Open;
          Finally
            { TODO : error message ... εμφάνισε το όνομα του πίνακα που έχει πρόβλημα }
          End;
          If (t.Active = False) Then
            // gADOError := ADO_ERR_OPEN_TABLE;
        End;
    End;
End;

Procedure TDMMain.ADOConnectionBeforeConnect(Sender: TObject);
Begin
  gADOError := ADO_ERR_NONE;
  ADOConnection.Close;
  ADOConnection.ConnectionString := gADOConStr;
End;

procedure TDMMain.ADOConnectionExecuteComplete(Connection: TADOConnection; RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus; const Command: _Command;
  const Recordset: _Recordset);
var
  x: Integer;
begin
  if FrmMain.chkNotLog2.Checked then
    exit;

  FrmMain.JvLogFile2.Add('+--->');
  try
    FrmMain.JvLogFile2.Add('Form Name :' + Screen.ActiveForm.name);
  except
    FrmMain.JvLogFile2.Add('!!! No Form Found');
  end;
  // if Assigned(Command) then
  begin
    FrmMain.JvLogFile2.Add('Command : ' + Trim(Command.CommandText));
    FrmMain.JvLogFile2.Add('Affected : ' + IntToStr(RecordsAffected));
    FrmMain.JvLogFile2.Add('Record Count : ' + IntToStr(Recordset.RecordCount));
    // 07052014  for x := 0 to Command.Parameters.Count do
    // begin
    // try
    // FrmMain.JvLogFile2.Add('Param Name : '+ Command.Parameters.Item[x].Name);
    // FrmMain.JvLogFile2.Add('Param Num  : '+  IntToStr(Command.Parameters.Item[x].Type_));
    // except
    //
    // end;
    // FrmMain.JvLogFile2.Add('Param Name : '+ Command.Parameters.Item[x].value);
    // end;
  end;
  FrmMain.JvLogFile2.Add('+<---');

  // FrmMain.Memo1.Lines.Add('+--->');
  // try
  // FrmMain.Memo1.Lines.Add('Form Name :'+ Screen.ActiveForm.Name);
  // except
  // FrmMain.Memo1.Lines.Add('!!! No Form Found');
  // end;
  /// /  if Assigned(Command) then
  // begin
  // FrmMain.Memo1.Lines.Add('Command : '+ Trim(Command.CommandText));
  // FrmMain.Memo1.Lines.Add('Affected : '+IntTostr(RecordsAffected));
  // FrmMain.Memo1.Lines.Add('Record Count : '+ IntTostr(Recordset.RecordCount));
  // for x := 0 to Command.Parameters.Count do
  // begin
  // try
  // FrmMain.Memo1.Lines.Add('Param Name : '+ Command.Parameters.Item[x].Name);
  // FrmMain.Memo1.Lines.Add('Param Num  : '+  IntToStr(Command.Parameters.Item[x].Type_));
  // except
  //
  // end;
  /// /        FrmMain.JvLogFile2.Add('Param Name : '+ Command.Parameters.Item[x].value);
  // end;
  // end;
  // FrmMain.Memo1.Lines.Add('+<---');

  // MessageDlg(Command.CommandText, mtWarning, [mbOK], 0);
  // MessageDlg(IntTostr(RecordsAffected), mtWarning, [mbOK], 0);
  // MessageDlg(IntTostr(Recordset.RecordCount), mtWarning, [mbOK], 0);
  // for x := 0 to Command.Parameters.Count do
  // begin
  // MessageDlg(Command.Parameters.Item[x].Name , mtWarning, [mbOK], 0);
  // end;
end;

procedure TDMMain.ADOConnectionWillExecute(Connection: TADOConnection; var CommandText: WideString; var CursorType: TCursorType; var LockType: TADOLockType;
  var CommandType: TCommandType; var ExecuteOptions: TExecuteOptions; var EventStatus: TEventStatus; const Command: _Command; const Recordset: _Recordset);
var
  x: Integer;
begin
  if not FrmMain.chkNotLog2.Checked then
    exit;

  FrmMain.JvLogFile2.Add('--->');
  try
    FrmMain.JvLogFile2.Add('Form Name :' + Screen.ActiveForm.name);
  except
    FrmMain.JvLogFile2.Add('!!! No Form Found');
  end;
  // if Assigned(Command) then
  begin
    FrmMain.JvLogFile2.Add('Command : ' + Trim(Command.CommandText));
    FrmMain.JvLogFile2.Add('Record Count : ' + IntToStr(Recordset.RecordCount));
    for x := 0 to Command.Parameters.Count do
      begin
        try

          FrmMain.JvLogFile2.Add('Param Name : ' + Command.Parameters.Item[x].name);
          FrmMain.JvLogFile2.Add('Param Num  : ' + IntToStr(Command.Parameters.Item[x].Type_));
        except

        end;
        // FrmMain.JvLogFile2.Add('Param Name : '+ Command.Parameters.Item[x].value);
      end;
  end;
  FrmMain.JvLogFile2.Add('<---');

end;

// wIN32
{ procedure TDMMain.SelectImage(dlg: TOpenPictureDialog; field: TBlobField);
  var
  stream: TBlobStream;
  image: TPicture;
  ds: TDataSet;
  begin
  image  := nil;
  stream := nil;
  ds     := field.DataSet;
  try
  if dlg.Execute then
  begin
  if (ds.State = dsBrowse) then
  if ds.Eof and ds.Bof then
  ds.Insert
  else
  ds.Edit;
  image           := TPicture.Create;
  stream          := TBlobStream.Create(field, bmWrite);
  stream.Position := 0;
  image.LoadFromFile(dlg.FileName);
  image.Graphic.SaveToStream(stream);
  end;
  finally
  image.Free;
  stream.Free;
  end;
  end; }

{ procedure TDMMain.ShowJpgImage(DBImage: TDBImage);
  var frm:TfrmDispImage;
  begin
  frm := TfrmDispImage.Create(self);
  frm.Image1.Picture.Assign(DbImage.Picture);
  frm.Image1.Height := DbImage.Picture.Height;
  frm.Image1.Width  := DbImage.Picture.Width;
  frm.Height := DbImage.Picture.Height + 30;
  frm.Width  := DbImage.Picture.Width + 10;
  frm.ShowModal;
  frm.Free;
  end; }

procedure TDMMain.ShowJpgImage(DBImage: TDBImage);
var
  LJpg: TJpegImage;
  AFormat: Word;
  AData: Cardinal;
  APalette: HPALETTE;
  LocalPath: String;
begin
  // DBImage.Picture.RegisterClipboardFormat(AFormat,TJPEGImage);
  // DBImage.Picture.SaveToClipboardFormat(AFormat,AData,APalette);
  // LJpg.LoadFromClipboardFormat(AFormat,AData,APalette);
  // DBImage.Picture.SaveToFile(Application.ExeName+'Test1.bmp');

  LocalPath := ExtractFilePath(Application.ExeName) + 'Temp\';

  try
    LJpg := TJpegImage.Create;
    LJpg.Assign(DBImage.Picture.Bitmap);
    LJpg.SaveToFile(LocalPath + 'Test1.jpg');

    // Execute PhotoEd
    // ExecNewProcess('c:\Photoed.exe c:\test1.bmp',True);
    // Execute Fax Viewer
    ExecNewProcess('rundll32.exe C:\WINDOWS\System32\shimgvw.dll,ImageView_Fullscreen ' + LocalPath + 'Test1.jpg', True);
  finally
    LJpg.Free;
  end;
end;

procedure TDMMain.ExecNewProcess(ProgramName: String; Wait: Boolean);
var
  StartInfo: TStartupInfo;
  ProcInfo: TProcessInformation;
  CreateOK: Boolean;
begin
  { fill with known state }
  FillChar(StartInfo, sizeof(TStartupInfo), #0);
  FillChar(ProcInfo, sizeof(TProcessInformation), #0);
  StartInfo.cb := sizeof(TStartupInfo);
  CreateOK     := CreateProcess(nil, PChar(ProgramName), nil, nil, False, CREATE_NEW_PROCESS_GROUP + NORMAL_PRIORITY_CLASS, nil, nil, StartInfo, ProcInfo);
  { check to see if successful }
  if CreateOK then
    begin
      // may or may not be needed. Usually wait for child processes
      if Wait then
        WaitForSingleObject(ProcInfo.hProcess, INFINITE);
    end
  else
    begin
      ShowMessage('Unable to run ' + ProgramName);
    end;

  CloseHandle(ProcInfo.hProcess);
  CloseHandle(ProcInfo.hThread);
end;

function TDMMain.PadSapCode(Code: int64): String;
var
  x, x1: String;
  y, y1, y2: Integer;
begin
  x := IntToStr(Code);
  y := Length(x);

  y1     := 10 - y;
  for y2 := 1 to y1 do
    x1   := x1 + '0';

  result := x1 + x;
end;

function TDMMain.GetSoftVersion(): String;
var
  tbl: TADOTable;
  fld: TField;
  fint: Integer;
  a: string;
begin
  tbl := DMMain.tTableIds;
  if tbl.Locate('TableName', 'VersionInfo', [loCaseInsensitive]) then
    begin
      fld  := tbl.FieldByName('NUM');
      fint := fld.AsInteger;
      a    := IntToStr(fint);
      if Length(a) < 4 then
        a    := '0' + a;
      result := a;
    end
  else
    raise ERangeError.Create('Table: VersionInfo not found !!!');
  // raise Exception.Create('Table: VersionInfo not found !!!');
end;

/// ****** 3A >
procedure GenBeforePostWithNameN(DataSet: TDataSet; TableName: String);
var
  x: TField;
begin
  // Chear multi cast with Parent Object
  if DataSet.State = dsInsert then
    begin
      try
        DataSet.FieldByName('ID').AsInteger := CreateKey(TableName);
      except
        // Silent Pass NO
      end;
      DataSet.FieldByName('InsUsr').Value := LoginId;
      DataSet.FieldByName('InsDt').Value  := Now();
      try
        DataSet.FieldByName('Deleted').AsBoolean := False;
      except
        // Silent Pass NO
      end;
      try
        DataSet.FieldByName('InActive').AsBoolean := False;
      except
        // Silent Pass NO
      end;
    end;

  if DataSet.State = dsEdit then
    begin
      DataSet.FindField('UpdUsr').Value  := LoginId;
      DataSet.FieldByName('UpdDt').Value := Now();

      MessageDlg(DataSet.Fields[1].OldValue, mtWarning, [mbOk], 0);

    end;
end;

procedure GenDeletePostWithNameN(DataSet: TDataSet);
var
  Ltf: TField;
begin
  Ltf := DataSet.FindField('Deleted');
  if Ltf = Nil then
    begin
      exit;
    end
  else
    begin
      DataSet.Edit;
      DataSet.FindField('Deleted').Value := True;
      DataSet.FindField('DelUsr').Value  := LoginId;
      DataSet.FieldByName('DelDt').Value := Now();
      DataSet.Post;
      // Abort;
    end;
end;

procedure GenInActivePostWithNameN(DataSet: TDataSet);
begin
  if DataSet.State = dsEdit then
    begin
      DataSet.FindField('InActive').Value     := True;
      DataSet.FindField('InActiveUsr').Value  := LoginId;
      DataSet.FieldByName('InActiveDt').Value := Now();
    end;
end;

procedure GenTestPostWithNameN(DataSet: TDataSet);
begin
  if DataSet.State = dsEdit then
    begin
      DataSet.FindField('IsTest').Value  := True;
      DataSet.FindField('TstUsr').Value  := LoginId;
      DataSet.FieldByName('TstDt').Value := Now();
    end;
end;

/// ****** 3A <
///
///
/// 21062012

procedure TDMMain.UpdToTableFields(DataS: TDataSet);
var
  x: Integer;
begin
  DMMain.Tables.Insert;
  DMMain.TablesName.AsString := DataS.name;
  try
    DMMain.Tables.Post;
  except
    DMMain.Tables.Cancel;
  end;

  SPstRetTable.Active                                     := False;
  SPstRetTable.Parameters.ParamByName('@TableName').Value := DataS.name;
  SPstRetTable.Active                                     := True;

  for x := 0 to DataS.FieldCount - 1 do
    begin
      TableFields.Insert;
      TableFieldsTable_Id.AsInteger    := SPstRetTableId.AsInteger;
      TableFieldsField_Name.AsString   := DataS.Fields[x].FieldName;
      TableFieldsDisplay_Name.AsString := DataS.Fields[x].DisplayLabel;
      TableFieldsAA.AsInteger          := x * 10; // For step 10 AA

      TableFieldsInFilter.AsBoolean       := True;
      TableFieldsInSearch.AsBoolean       := True;
      TableFieldsInSearchResult.AsBoolean := True;
      TableFieldsFieldType.AsString       := DataS.Fields[x].ClassName;

      // DMMain.TableFieldsDisplay_Format.AsString  := xx.Fields[x3].DisplayFormat;
      // DMMain.TableFieldsEdit_Format.AsString  := xx.Fields[x3].EditFormat;
      // DMMain.TableFieldsLookUp        xx.Fields[x3].Lookup
      try
        TableFields.Post;
      except
        TableFields.Cancel;
      end;
    end;
end;


// Leonidas Update SPs

procedure TDMMain.UpdFromTableFields(DataS: TDataSet);
var
  tf: TField;
  x: Integer;
begin
  SPstRetTable.Active                                     := False;
  SPstRetTable.Parameters.ParamByName('@TableName').Value := DataS.name;
  SPstRetTable.Active                                     := True;
  if SPstRetTable.IsEmpty then
    exit;

  // Exit;

  SPstRetTableFields.Active                              := False;
  SPstRetTableFields.Parameters.ParamByName('@Id').Value := SPstRetTableId.AsInteger;
  SPstRetTableFields.Active                              := True;

  for x := 0 to DataS.FieldCount - 1 do
    begin
      if SPstRetTableFields.Locate('Field_Name', variant(DataS.Fields[x].name), []) then
        begin
          DataS.Fields[x].DisplayLabel := SPstRetTableFieldsDisplay_Name.AsString;
          DataS.Fields[x].Visible      := SPstRetTableFieldsVisible.AsBoolean;
        end;
    end;

  // { TODO -cCritical Performance : Please do not remove comment if you want Table Retreived Captions }
  // Exit;

  SPstRetTableFields.First;
  repeat
    // tf := DataS.FindField(SPstRetTableFieldsField_Name.AsString);
    try
      try
        tf := DataS.FieldByName(SPstRetTableFieldsField_Name.AsString);
        // if Not(tf = Nil) then
        // begin
        tf.DisplayLabel := SPstRetTableFieldsDisplay_Name.AsString;
        tf.Visible      := SPstRetTableFieldsVisible.AsBoolean;
        // end;
      except

      end;
    finally
      SPstRetTableFields.Next;
    end;
  until SPstRetTableFields.Eof;

end;

procedure TDMMain.UpdateActionsExecute(FormId: Integer; ActLst: TActionList);
var
  i: Integer;
begin
  for i := 0 to ActLst.ActionCount - 1 do
    begin
      QUpdateFormAction.Parameters.ParamByName('PId').Value := CreateKey('stFormAction');
      QUpdateFormAction.Parameters.ParamByName('PFormId').Value := FormId;
      QUpdateFormAction.Parameters.ParamByName('PAction').Value := TCustomAction(ActLst.Actions[i]).name;
      QUpdateFormAction.Parameters.ParamByName('PSubParam').Value := 0;
      QUpdateFormAction.Parameters.ParamByName('PText').Value := TCustomAction(ActLst.Actions[i]).Caption;
      try
        QUpdateFormAction.ExecSql;
      except
        on E: Exception do
          MessageDlg(E.Message, mtWarning, [mbOk], 0);
      end;
    end;
  QUpdateFormAction.Parameters.ParamByName('PId').Value := CreateKey('stFormAction');
  QUpdateFormAction.Parameters.ParamByName('PFormId').Value := FormId;
  QUpdateFormAction.Parameters.ParamByName('PAction').Value := 'All';
  QUpdateFormAction.Parameters.ParamByName('PText').Value := 'All';
  QUpdateFormAction.Parameters.ParamByName('PSubParam').Value := 0;
  try
    QUpdateFormAction.ExecSql;
  except
    on E: Exception do
      MessageDlg(E.Message, mtWarning, [mbOk], 0);
  end;
end;

function TDMMain.SearchLookUp(Grid: TDBGrid; FName, FValue: String): Integer;
begin

end;

procedure TDMMain.UpdateMenuExecute(FormId: Integer; MMenu: TMainMenu);
var
  i: Integer;
begin
  for i := 0 to MMenu.Items.Count - 1 do
    begin
      QUpdateMenuAction.Parameters.ParamByName('PId').Value := CreateKey('stMenus');
      QUpdateMenuAction.Parameters.ParamByName('PName').Value := MMenu.Items[i].name;
      QUpdateMenuAction.Parameters.ParamByName('PEmptyLeaf').Value := False;
      QUpdateMenuAction.Parameters.ParamByName('PCaption').Value := MMenu.Items[i].Caption;
      QUpdateMenuAction.Parameters.ParamByName('PCategory').Value := '';
      QUpdateMenuAction.Parameters.ParamByName('PHelpKeyword').Value := '';
      if MMenu.Items[i].Action = Nil then

      else
        QUpdateMenuAction.Parameters.ParamByName('POnExecute').Value := MMenu.Items[i].Action.name;
      try
        QUpdateMenuAction.ExecSql;
      except
        on E: Exception do
          MessageDlg(E.Message, mtWarning, [mbOk], 0);
      end;
    end;
end;

procedure TDMMain.UpdateFieldsExecute(FormId: Integer; Form: TForm);
var
  i: Integer;
begin
  inherited;
  for i := 0 to Form.ComponentCount - 1 do
    begin
      InsFields.Parameters.ParamByName('ID').Value     := CreateKey('Fields');
      InsFields.Parameters.ParamByName('Form').Value   := FormId;
      InsFields.Parameters.ParamByName('Name').Value   := Components[i].name;
      InsFields.Parameters.ParamByName('Type').Value   := Components[i].ClassName;
      InsFields.Parameters.ParamByName('HelpID').Value := 0;
      InsFields.Parameters.ParamByName('Tag').Value    := 0;
      try
        InsFields.ExecSql;
      except
        // SetStatusText('Εχει ήδη ενημερωθεί το πεδίο ' + Components[i].Name,0);
      end;
    end;
end;

function TDMMain.GNow(): TDateTime;
begin
  try
    SPCurDate.Active := True;
    result           := SPCurDateCurrentDateTimeAbove.AsDateTime;
    SPCurDate.Active := False;
  except
    result := Now();
  end;
end;

/// ////////////////////////////////////////////////////////////////
///
// procedure TfrmBaseSel.cmdGetVariantExecute(Sender: TObject);
// var FieldName,FieldValue:String;
// FieldType,LLL:Integer;
// PComponent:TComponent;
// begin
// DMMain.GetVariant(PFormId,LLL);
// while   DMMain.GetVariantDetail(4,FieldName,FieldType,FieldValue) do
// begin
// case FieldType of
// 1:TEdit(FindComponent(FieldName)).Text:=FieldValue;
// 4:TMaskEdit(FindComponent(FieldName)).Text:=FieldValue;
// 2:TDBLookUpComboBox(FindComponent(FieldName)).KeyValue:=FieldValue;
// 3:if FieldValue = 'True' then
// TCheckBox(FindComponent(FieldName)).Checked:=True
// else
// TCheckBox(FindComponent(FieldName)).Checked:=False;
// 5:TRadioGroup(FindComponent(FieldName)).ItemIndex:=strtoint(FieldValue);
// 6:begin
// FillOutStrClb(TCheckListBox(FindComponent(FieldName)),FieldValue);
// end;
// end;
// end;
// end;
//
// procedure TfrmBaseSel.cmdNewVariantExecute(Sender: TObject);
// var i,VarId:Integer;
// Name,Perig,t:String;
// begin
// if DMMain.NewVariant(self,Name,Perig,PFormId,VarId) then
// begin
// for i:= 0 to Self.ComponentCount - 1 do
// begin
// if Self.Components[i] is TEdit then
// DMMain.NewVariantDetail(VarId,Self.Components[i].Name,1,TEdit(Self.Components[i]).Text);
// if Self.Components[i] is TMaskEdit then
// DMMain.NewVariantDetail(VarId,Self.Components[i].Name,4,TMaskEdit(Self.Components[i]).Text);
// if Self.Components[i] is TDBLookUpComboBox then
// if TDBLookUpComboBox(Self.Components[i]).KeyValue > 0 then
// DMMain.NewVariantDetail(VarId,Self.Components[i].Name,2,InttoStr(TDBLookUpComboBox(Self.Components[i]).KeyValue));
// if Self.Components[i] is TCheckBox then
// if TCheckBox(Self.Components[i]).Checked then
// DMMain.NewVariantDetail(VarId,Self.Components[i].Name,3,'True')
// else
// DMMain.NewVariantDetail(VarId,Self.Components[i].Name,3,'False');
// if Self.Components[i] is TRadioGroup then
// DMMain.NewVariantDetail(VarId,Self.Components[i].Name,5,InttoStr(TRadioGroup(Self.Components[i]).ItemIndex));
// if Self.Components[i] is TCheckListBox then
// begin
// t:=FillInStrClb(TCheckListBox(Self.Components[i]));
// if t > '' then
// DMMain.NewVariantDetail(VarId,Self.Components[i].Name,6,t);
// end;
// end;
// end;
// end;

function TDMMain.NewVariantCx(aowner: TComponent; FormClassName: String; CxParam: TStringStream): Boolean;
var
  frm: TFrmInsertVariant;
begin
  if FindSecurity('TfrmInsertVariant', LoginGroup, FormId) then
    begin
      frm := TFrmInsertVariant.CreateSecurity(aowner, FormId);
      UpdSecurity('TfrmInsertVariant');
      if frm.ShowModal = mrCancel then
        begin
          frm.Free;
          result := False;
          exit;
        end
      else
        begin
          VariantsCXMain.Insert;
          VariantsCXMainClassFormName.AsString     := FormClassName;
          VariantsCXMainSetAsDefault.AsBoolean     := False;
          VariantsCXMainSetAsUserDefault.AsBoolean := False;
          VariantsCXMainInsDT.AsDateTime           := Now();
          VariantsCXMainInsUsr.AsInteger           := LoginId;
          VariantsCXMainName.AsString              := frm.PName;
          VariantsCXMainPerig.AsString             := frm.PPerig;
          VariantsCXMainVariantField.LoadFromStream(CxParam);
          VariantsCXMain.Post;
        end;
      frm.Free;
    end
  else
    begin
      MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOk], 0);
      result := False;
    end;
end;

function TDMMain.GetVariantCx(aowner: TComponent; FormClassName: String; CxParam: TStringStream): Boolean;
var
  frm: TFrmSelectVariant;
  FormIDD: Integer;
begin
  FindSecurity('TfrmInsertVariant', LoginGroup, FormIDD);
  frm := TFrmSelectVariant.CreateSecurity(Self, FormIDD);
  UpdSecurity('TfrmInsertVariant');
  qVariantsCXMain.Active := False;
  qVariantsCXMain.Parameters.ParamByName('PClassFormName').Value := FormClassName;
  qVariantsCXMain.Active := True;
  if qVariantsCXMain.IsEmpty then
    begin
      result := False;
    end
  else
    begin
      qVariantsCXMain.First;
      dsVariants.DataSet := QVariantsMain;
      dsVariants.DataSet := qVariantsCXMain;
      if frm.ShowModal = mrCancel then
        begin
          result := False;
        end
      else
        begin
          result := True;
          qVariantsCXMainVariantField.SaveToStream(CxParam);
        end;
      dsVariants.DataSet := QVariantsMain;
      CxParam.Seek(0, 0);
    end;
  frm.Free;
end;

function TDMMain.NewVariantMemWs(aowner: TComponent; FormClassName: String; CxParam: TdxMemData): Boolean;
var
  frm: TFrmInsertVariant;
  x: Integer;
begin
  if FindSecurity('TfrmInsertVariant', LoginGroup, FormId) then
    begin
      frm := TFrmInsertVariant.CreateSecurity(aowner, FormId);
      UpdSecurity('TfrmInsertVariant');
      if frm.ShowModal = mrCancel then
        begin
          frm.Free;
          result := False;
          exit;
        end
      else
        begin
          VariantsMemWsMain.Insert;
          VariantsMemWsMainClassFormName.AsString := FormClassName;
          VariantsMemWsMainInsDT.AsDateTime       := Now();
          VariantsMemWsMainInsUsr.AsInteger       := LoginId;
          VariantsMemWsMainName.AsString          := frm.PName;
          VariantsMemWsMainPerig.AsString         := frm.PPerig;
          VariantsMemWsMain.Post;

          for x := 0 to CxParam.FieldCount - 1 do
            begin
              if Not CxParam.Fields[x].IsNull then
                begin
                  VariantsMemWsDetail.Append;
                  VariantsMemWsDetailVariantId.AsInteger := VariantsMemWsMainid.AsInteger;
                  VariantsMemWsDetailFieldName.AsString  := CxParam.Fields[x].FieldName;
                  VariantsMemWsDetailFieldValue.AsString := TField(CxParam.Fields[x]).Value;
                  VariantsMemWsDetail.Post;
                end;
            end;
        end;
      frm.Free;
    end
  else
    begin
      MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOk], 0);
      result := False;
    end;
end;

function TDMMain.GetVariantMemWs(aowner: TComponent; FormClassName: String; CxParam: TdxMemData; var Action: string; Var Comments: string; Var email: String;
  Var AutoClose: Boolean; Var ActivateTrans: Boolean; Var AutoExec: Boolean; Var LogSection: Boolean): Boolean;
var
  frm: TFrmSelectVariant;
  FormIDD: Integer;
  TmpField: TField;
begin
  FindSecurity('TfrmInsertVariant', LoginGroup, FormIDD);
  frm := TFrmSelectVariant.CreateSecurity(Self, FormIDD);
  UpdSecurity('TfrmInsertVariant');
  qVariantsMemWsMain.Active := False;
  qVariantsMemWsMain.Parameters.ParamByName('PClassFormName').Value := FormClassName;
  qVariantsMemWsMain.Active := True;
  if qVariantsMemWsMain.IsEmpty then
    begin
      result := False;
    end
  else
    begin
      qVariantsMemWsMain.First;
      dsVariants.DataSet := QVariantsMain;
      dsVariants.DataSet := qVariantsMemWsMain;
      if frm.ShowModal = mrCancel then
        begin
          result := False;
        end
      else
        begin
          Action   := qVariantsMemWsMainSubsequentAction.AsString;
          Comments := qVariantsMemWsMainSubsequentComments.AsString;
          email    := qVariantsMemWsMainSubsequentMail.AsString;

          AutoClose     := qVariantsMemWsMainSubsequentAutoClose.AsBoolean;
          ActivateTrans := qVariantsMemWsMainSubsequentActivateTrans.AsBoolean;
          AutoExec      := qVariantsMemWsMainSubsequentAutoExec.AsBoolean;
          LogSection    := qVariantsMemWsMainSubsequentLogSection.AsBoolean;

          qVariantsMemWsDetail.Active := False;
          qVariantsMemWsDetail.Parameters.ParamByName('PVariantId').Value := qVariantsMemWsMainid.Value;
          qVariantsMemWsDetail.Active := True;
          qVariantsMemWsDetail.First;
          repeat
            TmpField := CxParam.FieldByName(qVariantsMemWsDetailFieldName.AsString);
            if ((Assigned(TmpField)) and (not(qVariantsMemWsDetailFieldName.AsString = 'RecId'))) then
              if qVariantsMemWsDetailCalcAsValue.AsBoolean = False then
                begin
                  // MessageDlg(TmpField.FieldName+' '+qVariantsMemWsDetailFieldValue.AsString , mtConfirmation, [mbOK], 0);
                  TmpField.Value := qVariantsMemWsDetailFieldValue.AsString;
                end
              else
                begin
                  // MessageDlg(TmpField.FieldName+' '+qVariantsMemWsDetailFieldValue.AsString , mtConfirmation, [mbOK], 0);
                  try
                    TmpField.Value := ParserLight(qVariantsMemWsDetailFieldValue.AsString, qVariantsMemWsDetailCalcType.AsString);
                  except
                    on E: Exception do
                      begin
                        MessageDlg(E.Message + ' ' + TmpField.FieldName, mtError, [mbOk], 0);
                        TmpField.Value := 0;
                      end;
                  end;
                end;
            qVariantsMemWsDetail.Next;
          until qVariantsMemWsDetail.Eof;
        end;
    end;
  frm.Free;
end;

procedure TDMMain.UpdTostBrowse(stBrowse: string; DataS: TDataSet);
var
  x: Integer;
begin
  QstBrowseFieldsGen.Active := True;
  for x                     := 0 to DataS.FieldCount - 1 do
    begin
      QstBrowseFieldsGen.Append;
      QstBrowseFieldsGenBrowse_Name.AsString  := stBrowse;
      QstBrowseFieldsGenField_Name.AsString   := DataS.Fields[x].FieldName;
      QstBrowseFieldsGenDisplay_Name.AsString := DataS.Fields[x].DisplayLabel;
      QstBrowseFieldsGenVisible.AsBoolean     := True;
      QstBrowseFieldsGenReadOnly.AsBoolean    := False;

      try
        QstBrowseFieldsGen.Post;
      except
        QstBrowseFieldsGen.Cancel;
      end;
    end;
  try
    QstBrowseFieldsGen.UpdateBatch();
    MsgDlg('Update of ' + stBrowse + ' done.');
  except
    MsgDlg('Error in Update of ' + stBrowse);
  end;
end;

procedure TDMMain.UpdFromstBrowse(stBrowse: string; DataS: TDataSet);
begin
  { TODO : Check for faster Solution }
  // Exit;

  QstBrowseGenReader.Active := False;
  QstBrowseGenReader.Parameters.ParamByName('PBrowse_Name').Value := stBrowse;
  QstBrowseGenReader.Active := True;

  if QstBrowseGenReader.IsEmpty then
    exit;

  QstBrowseGenFieldsReader.Active := False;
  QstBrowseGenFieldsReader.Parameters.ParamByName('PBrowse_NameId').Value := QstBrowseGenReaderid.AsInteger;
  QstBrowseGenFieldsReader.Active := True;

  if QstBrowseGenFieldsReader.IsEmpty then
    exit;

  // QstBrowseFieldsGenReader.First;
  repeat
    try
      DataS.FieldByName(QstBrowseGenFieldsReaderField_Name.AsString).DisplayLabel := QstBrowseGenFieldsReaderDisplay_Name.AsString;
      DataS.FieldByName(QstBrowseGenFieldsReaderField_Name.AsString).Visible := QstBrowseGenFieldsReaderVisible.AsBoolean;
    except

    end;
    // DataS.FieldByName(QstBrowseFieldsGenReaderField_Name.asstring).DisplayFormat:= QstBrowseFieldsGenReaderDisplay_Format.AsString;
    QstBrowseGenFieldsReader.Next;
  until QstBrowseGenFieldsReader.Eof;

  // QstBrowseFieldsGenReader.Active := False;
  // QstBrowseFieldsGenReader.Parameters.ParamByName('PBrowse_Name').Value :=stBrowse;
  // QstBrowseFieldsGenReader.Active := True;
  //
  // if QstBrowseFieldsGenReader.IsEmpty then
  // Exit;
  //
  /// /  QstBrowseFieldsGenReader.First;
  // repeat
  // try
  // DataS.FieldByName(Trim(QstBrowseFieldsGenReaderField_Name.AsString)).DisplayLabel := Trim(QstBrowseFieldsGenReaderDisplay_Name.AsString);
  // DataS.FieldByName(Trim(QstBrowseFieldsGenReaderField_Name.asstring)).Visible      := QstBrowseFieldsGenReaderVisible.AsBoolean;
  // except
  //
  // end;
  /// /    DataS.FieldByName(QstBrowseFieldsGenReaderField_Name.asstring).DisplayFormat:= QstBrowseFieldsGenReaderDisplay_Format.AsString;
  // QstBrowseFieldsGenReader.Next;
  // until QstBrowseFieldsGenReader.Eof ;
  //
end;

procedure TDMMain.Split(Delimiter: Char; Str: string; ListOfStrings: TStrings);
begin
  ListOfStrings.Clear;
  ListOfStrings.Delimiter     := Delimiter;
  ListOfStrings.DelimitedText := Str;
end;

function TDMMain.ParserLight(PText: String; PNextText: String): string;
var
  xdt: TDateTime;
  ToStr: string;
  y, M, D, x: Word;
  TSl: TStringList;
  TSitem: TStrings;
begin

  if PText = 'PrevDay' then
    begin
      xdt := Now;
      xdt := IncDay(xdt, -1);
      DecodeDate(xdt, y, M, D);
      xdt    := EncodeDate(y, M, D);
      ToStr  := DateToStr(xdt);
      result := DateToStr(xdt);
    end;
  if PText = 'StartPrevMonth' then
    begin
      xdt := Now;
      xdt := IncMonth(xdt, -1);
      DecodeDate(xdt, y, M, D);
      xdt    := EncodeDate(y, M, 1);
      ToStr  := DateToStr(xdt);
      result := DateToStr(xdt);
    end;
  if PText = 'EndPrevMonth' then
    begin
      xdt := Now;
      xdt := IncMonth(xdt, -1);
      DecodeDate(xdt, y, M, D);
      xdt    := EndOfAMonth(y, M);
      ToStr  := DateToStr(xdt);
      result := DateToStr(xdt);
    end;
  if PText = 'PrevMonth10' then
    begin
      xdt := Now;
      xdt := IncMonth(xdt, -1);
      DecodeDate(xdt, y, M, D);
      xdt    := EncodeDate(y, M, 10);
      ToStr  := DateToStr(xdt);
      result := DateToStr(xdt);
    end;
  if PText = 'PrevMonth20' then
    begin
      xdt := Now;
      xdt := IncMonth(xdt, -1);
      DecodeDate(xdt, y, M, D);
      xdt    := EncodeDate(y, M, 20);
      ToStr  := DateToStr(xdt);
      result := DateToStr(xdt);
    end;
  if PText = 'PrevMonth30' then
    begin
      xdt := Now;
      xdt := IncMonth(xdt, -1);
      DecodeDate(xdt, y, M, D);
      xdt    := EndOfAMonth(y, M);
      ToStr  := DateToStr(xdt);
      result := DateToStr(xdt);
    end;
  if PText = 'CurrMonth10' then
    begin
      xdt := Now;
      DecodeDate(xdt, y, M, D);
      xdt    := EncodeDate(y, M, 10);
      ToStr  := DateToStr(xdt);
      result := DateToStr(xdt);
    end;
  if PText = 'CurrMonth20' then
    begin
      xdt := Now;
      DecodeDate(xdt, y, M, D);
      xdt    := EncodeDate(y, M, 20);
      ToStr  := DateToStr(xdt);
      result := DateToStr(xdt);
    end;
  if PText = 'CurrMonth30' then
    begin
      xdt := Now;
      DecodeDate(xdt, y, M, D);
      xdt    := EndOfAMonth(y, M);
      ToStr  := DateToStr(xdt);
      result := DateToStr(xdt);
    end;
  if PText = 'StartCurrentMonth' then
    begin
      xdt := Now;
      DecodeDate(xdt, y, M, D);
      xdt    := EncodeDate(y, M, 1);
      ToStr  := DateToStr(xdt);
      result := DateToStr(xdt);
    end;
  if PText = 'EndCurrentMonth' then
    begin
      xdt := Now;
      DecodeDate(xdt, y, M, D);
      xdt    := EndOfAMonth(y, M);
      ToStr  := DateToStr(xdt);
      result := DateToStr(xdt);
    end;

  if PText = 'PrevDayFMT' then
    begin
      xdt := Now;
      xdt := IncDay(xdt, -1);
      DecodeDate(xdt, y, M, D);
      xdt    := EncodeDate(y, M, D);
      ToStr  := DateToStr(xdt);
      result := FormatDateTime('yyyy-mm-dd hh:nn:ss', xdt);
    end;
  if PText = 'StartPrevMonthFMT' then
    begin
      xdt := Now;
      xdt := IncMonth(xdt, -1);
      DecodeDate(xdt, y, M, D);
      xdt    := EncodeDate(y, M, 1);
      ToStr  := DateToStr(xdt);
      result := FormatDateTime('yyyy-mm-dd hh:nn:ss', xdt);
    end;
  if PText = 'EndPrevMonthFMT' then
    begin
      xdt := Now;
      xdt := IncMonth(xdt, -1);
      DecodeDate(xdt, y, M, D);
      xdt    := EndOfAMonth(y, M);
      ToStr  := DateToStr(xdt);
      result := FormatDateTime('yyyy-mm-dd', xdt);
    end;
  if PText = 'StartCurrentMonthFMT' then
    begin
      xdt := Now;
      DecodeDate(xdt, y, M, D);
      xdt    := EncodeDate(y, M, 1);
      ToStr  := DateToStr(xdt);
      result := FormatDateTime('yyyy-mm-dd hh:nn:ss', xdt);
    end;
  if PText = 'EndCurrentMonthFMT' then
    begin
      xdt := Now;
      DecodeDate(xdt, y, M, D);
      xdt    := EndOfAMonth(y, M);
      ToStr  := DateToStr(xdt);
      result := FormatDateTime('yyyy-mm-dd hh:nn:ss', xdt);
    end;

  if PText = 'ParamCalc' then
    begin
      TSl := TStringList.Create;
      Split(',', PNextText, TSl);
      // for x:=0 to TSl.Count -1 do
      // MessageDlg(TSl.Strings[x] , mtCustom, [mbOK], 0);
      if TSl.Count < 2 then
        TSl.Add(' ');
      if TSl.Count = 5 then
        ADOQuery1.sql.Text := TSl.Strings[0] + ParserLight(TSl.Strings[1], '') + ' ' + TSl.Strings[2] + ParserLight(TSl.Strings[3], '') + TSl.Strings[4]
      else
        ADOQuery1.sql.Text := TSl.Strings[0] + ParserLight(TSl.Strings[1], '') + ' ' + TSl.Strings[2];

      // MessageDlg(ADOQuery1.SQL.Text, mtCustom, [mbOK], 0);
      try
        ADOQuery1.Active := True;
        if ADOQuery1.RecordCount = 0 then
          raise Exception.Create('No param Value Found ');
        if ADOQuery1.RecordCount = 1 then
          result := ADOQuery1.Fields[0].Value;
        if ADOQuery1.RecordCount > 1 then
          raise Exception.Create('Multiple Values Found ');
      finally
        ADOQuery1.Active := False;
      end;
      /// Result:='9999'
      ///
    end;

end;


// procedure TfrmEnhmXLS1.Button1Click(Sender: TObject);
// var x,i,y,DispFCnt:Integer;
// Sheet: Variant;
// XLApp: Variant;
// LeoS:String;
// begin
// if OpenDialog1.Execute = False then
// exit;
//
// XLApp:= CreateOleObject('Excel.Application');
// XLApp.Workbooks.Open(OpenDialog1.FileName);
//
// Sheet := XLApp.Workbooks[1].WorkSheets[1];
//
// Cds1.DisableControls;
// for y:=1 to 500 do
// begin
// Cds1.Insert;
// Cds1CdsF0.AsInteger   := y;
// Cds1cdsF1.AsString    := Trim(Sheet.Cells[y,1]);
// Cds1cdsF2.AsString    := Trim(Sheet.Cells[y,2]);
// Cds1cdsF3.AsString    := Trim(Sheet.Cells[y,3]);
// Cds1cdsF4.AsString    := Trim(Sheet.Cells[y,4]);
// Cds1cdsF5.AsString    := Trim(Sheet.Cells[y,5]);
// Cds1cdsF6.AsString    := Trim(Sheet.Cells[y,6]);
// Cds1cdsF7.AsString    := Trim(Sheet.Cells[y,5]);
// Cds1cdsf7.AsCurrency  := Round(Cds1cdsf7.AsCurrency / 1000);
// if cds1cdsF5.AsString > '' then
// Cds1.Post
// else
// Cds1.Cancel;
// end;
//
// XLApp.Workbooks.Close;
//
// Cds1.EnableControls;
// Cds1.First;
//
// end;
//

// -----------------------------------------
procedure TDMMain.EnhmChanges(TblName: string; FieldName: string; FieldKind: TFieldKind; KeyValue: Integer; Insertion: Boolean; NewVal: string; OldVal: string);
var
  tmpstr: variant;
begin
  // Dataset.Name,Dataset.Fields[x].FieldName,Dataset.Fields[x].FieldKind,False,VartoStr(Dataset.Fields[x].NewValue),VartoStr(Dataset.Fields[x].OldValue))

  tmpstr := TblName + '.' + FieldName;

  if cdsVTableFieldsNames.Locate('Fname', tmpstr, []) then
    begin
      TblChanges.Insert;
      TblChangesTableId.AsInteger   := cdsVTableFieldsNamesTableId.AsInteger;
      TblChangesField.AsInteger     := cdsVTableFieldsNamesid.AsInteger;
      TblChangesInsertion.AsBoolean := Insertion;
      TblChangesDateTime.AsDateTime := Now;
      TblChangesType.AsInteger      := 1;
      TblChangesPrimKey.AsInteger   := KeyValue;
      TblChangesUserId.AsInteger    := LoginId;
      TblChangesValueNew.AsString   := NewVal;
      TblChangesValueOld.AsString   := OldVal;
      TblChanges.Post;
    end
  else
    begin
      // MessageDlg('Cannot Update Field', mtError, [mbOK], 0);
    end;
end;

procedure TDMMain.EnhmChangesGuid(TblName: string; FieldName: string; FieldKind: TFieldKind; KeyValue: String; Insertion: Boolean; NewVal: string; OldVal: string);
var
  tmpstr: variant;
begin
  // Dataset.Name,Dataset.Fields[x].FieldName,Dataset.Fields[x].FieldKind,False,VartoStr(Dataset.Fields[x].NewValue),VartoStr(Dataset.Fields[x].OldValue))

  tmpstr := TblName + '.' + FieldName;

  if cdsVTableFieldsNames.Locate('Fname', tmpstr, []) then
    begin
      TblChanges.Insert;
      TblChangesTableId.AsInteger   := cdsVTableFieldsNamesTableId.AsInteger;
      TblChangesField.AsInteger     := cdsVTableFieldsNamesid.AsInteger;
      TblChangesInsertion.AsBoolean := Insertion;
      TblChangesDateTime.AsDateTime := Now;
      TblChangesType.AsInteger      := 1;
      TblChangesPrimGui.Value       := KeyValue; // StringToGUID(KeyValue);
      TblChangesUserId.AsInteger    := LoginId;
      TblChangesValueNew.AsString   := NewVal;
      TblChangesValueOld.AsString   := OldVal;
      TblChanges.Post;
    end
  else
    begin
      // MessageDlg('Cannot Update Field', mtError, [mbOK], 0);
    end;
end;

function TDMMain.UpdateUser(UserId:Integer;Logon:Boolean):integer;
var vI:Variant;
begin
if Logon then
  begin
    LogonMonitor.Insert;
    LogonMonitor.Edit;
    LogonMonitorUserId.AsInteger          := UserId;
    LogonMonitormacAddr.asstring          := GetMac;
    LogonMonitorIPV4Addr.asstring         := GetLocalIP;
    LogonMonitorComputerName.asstring     := ComputerName;
    LogonMonitorWindowsUserName.asstring  := GetUserFromWindows;
    LogonMonitorFileVersion.asstring      := frmMain.ExeVer;
    LogonMonitorLogonDT.AsDateTime        := Now();
    LogonMonitor.Post;
    Result:=LogonMonitorid.AsInteger;
  end
else
  begin
    vI:=UserId;
    if LogonMonitor.locate('Id',vI,[]) = True then
    begin
      LogonMonitor.Edit;
      LogonMonitorLogOffDT.AsDateTime     := Now();
      try
      LogonMonitor.Post;
      Result:=0;
      except
        Result:=-1;
      end;


    end;

  end;
// GetMac:String;
// GetUserFromWindows:String;
// ComputerName : String;
// GetLocalIP: string;
end;

end.
