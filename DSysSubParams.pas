unit DSysSubParams;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBase, DB, ADODB, DBTables, Common;

type
  TDMSysSubParams = class(TDMBase)
    dsSFormAction: TDataSource;
    dsFormActions: TDataSource;
    dsSForm: TDataSource;
    FormActions: TADOTable;
    FormActionsLForm: TStringField;
    FormActionsCFormActionSubParam: TStringField;
    SForm: TADOTable;
    SFormAction: TADOTable;
    dsFpass: TDataSource;
    dsUGroup: TDataSource;
    dsDForm: TDataSource;
    FPass: TADOTable;
    UGroup: TADOTable;
    DForm: TADOTable;
    dsTableIds: TDataSource;
    TableIds: TADOTable;
    SFormLForm: TStringField;
    SFormLGroup: TStringField;
    SFormActionLGroup: TStringField;
    SFormActionLAction: TStringField;
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
    TableIdsAAAAA: TAutoIncField;
    TableIdsTABLENAME: TWideStringField;
    TableIdsNUM: TIntegerField;
    FormActionsId: TAutoIncField;
    FormActionsFormID: TIntegerField;
    FormActionsAction: TWideStringField;
    FormActionsSubParam: TIntegerField;
    FormActionsText: TWideStringField;
    SFormForm_Id: TIntegerField;
    SFormGroup_Id: TIntegerField;
    SFormActionAction_Id: TIntegerField;
    SFormActionUGroup_Id: TIntegerField;
    Log: TADOTable;
    dsLog: TDataSource;
    TableFields: TADOTable;
    dsTableFields: TDataSource;
    Tables: TADOTable;
    dsTables: TDataSource;
    Logid: TIntegerField;
    LogUsr_id: TIntegerField;
    LogLogDate: TDateTimeField;
    LogForm_id: TWideStringField;
    LogLogAA: TSmallintField;
    LogLogTimeIn: TDateTimeField;
    LogLogTimeOut: TDateTimeField;
    TableFieldsId: TIntegerField;
    TableFieldsTable_Id: TIntegerField;
    TableFieldsField_Name: TWideStringField;
    TableFieldsDisplay_Name: TWideStringField;
    TableFieldsDisplay_Format: TWideStringField;
    TableFieldsEdit_Format: TWideStringField;
    TableFieldsVisible: TBooleanField;
    TableFieldsReadOnly: TBooleanField;
    TableFieldsLookUp: TWideStringField;
    TablesId: TIntegerField;
    TablesName: TWideStringField;
    DFormAncestorForm: TWideStringField;
    DFormSecurityName: TWideStringField;
    DFormDataSourceName: TWideStringField;
    DFormDataModule: TWideStringField;
    SFormActionAllowed: TBooleanField;
    TableFieldsLuTable_Id: TStringField;
    TableFieldsInSearch: TBooleanField;
    TableFieldsInFilter: TBooleanField;
    TableFieldsFieldType: TWideStringField;
    TableFieldsAutoGen: TBooleanField;
    TableFieldsInSearchResult: TBooleanField;
    TableFieldsAA: TIntegerField;
    TblChanges: TADOTable;
    dsTblChanges: TDataSource;
    TblChangesgid: TGuidField;
    TblChangesTableId: TIntegerField;
    TblChangesField: TIntegerField;
    TblChangesInsertion: TBooleanField;
    TblChangesDateTime: TDateTimeField;
    TblChangesPrimKey: TIntegerField;
    TblChangesPrimGui: TGuidField;
    TblChangesUserId: TIntegerField;
    TblChangesForm: TIntegerField;
    TblChangesType: TIntegerField;
    TblChangesValueOld: TWideMemoField;
    TblChangesValueNew: TWideMemoField;
    TableNames: TADOTable;
    dsTableNames: TDataSource;
    FieldNames: TADOTable;
    dsFieldNames: TDataSource;
    TableNamesid: TIntegerField;
    TableNamesTableName: TWideStringField;
    TableNamesTableOrNot: TBooleanField;
    TableNamesType: TIntegerField;
    TableNamesBracketed: TBooleanField;
    TableNamesLogChanges: TBooleanField;
    TableNamesPhysicalDelete: TBooleanField;
    TableNamesDescription: TWideStringField;
    FieldNamesid: TIntegerField;
    FieldNamesTableId: TIntegerField;
    FieldNamesFieldName: TWideStringField;
    FieldNamesDescription: TWideStringField;
    FieldNamesType: TWideStringField;
    FieldNamesCheckChanges: TBooleanField;
    FieldNamesLabel: TWideStringField;
    FieldNamesRequired: TBooleanField;
    FieldNamesGridOrder: TIntegerField;
    FieldNamesVisible: TBooleanField;
    FieldNamesVisibleForCust: TBooleanField;
    FieldNamesWidth: TIntegerField;
    FieldNamesMinWidth: TIntegerField;
    FieldNamesBestFitWidth: TIntegerField;
    FieldNamesGrouping: TBooleanField;
    FieldNamesGroupingType: TIntegerField;
    FieldNamesGroupingOrder: TIntegerField;
    FieldNamesSortOrder: TIntegerField;
    FieldNamesSortIndes: TIntegerField;
    FieldNamesGroupFooters: TBooleanField;
    TblChangesLTable: TStringField;
    TblChangesLField: TStringField;
    stFPass: TADOTable;
    stFPassId: TIntegerField;
    stFPassLogin: TWideStringField;
    stFPassPasswd: TWideStringField;
    stFPassGroup: TSmallintField;
    stFPassName: TWideStringField;
    stFPassAddress: TWideStringField;
    stFPassEMAIL: TWideStringField;
    stFPassPhone: TWideStringField;
    stFPassConn_Time: TFloatField;
    stFPassValid_Till: TDateTimeField;
    stFPassStath: TIntegerField;
    stFPassDeleted: TBooleanField;
    stFPassDelUsr: TIntegerField;
    stFPassDelDT: TDateTimeField;
    stFPassInActive: TBooleanField;
    stFPassInActiveUsr: TIntegerField;
    stFPassInActiveDt: TDateTimeField;
    stFPassMaint_Log: TBooleanField;
    stFPassCheck_Serial: TBooleanField;
    stFPassSerial1: TIntegerField;
    stFPassSerial2: TIntegerField;
    stFPassSerial3: TIntegerField;
    dsstFPass: TDataSource;
    TblChangesLUsr: TStringField;
    FieldNamesLTable: TStringField;
    procedure dsFormActionsStateChange(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure GenBeforePost(DataSet: TDataSet);
    procedure FormActionsCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMSysSubParams: TDMSysSubParams;

implementation

uses DMain;

{$R *.dfm}

procedure TDMSysSubParams.dsFormActionsStateChange(Sender: TObject);
begin
  inherited;
  ParamStateChange(Sender);
end;

procedure TDMSysSubParams.DataModuleCreate(Sender: TObject);
begin
  DMCreate(TForm(self));
end;

procedure TDMSysSubParams.GenBeforePost(DataSet: TDataSet);
begin
  inherited;
  BeforePost(DataSet);
end;

procedure TDMSysSubParams.FormActionsCalcFields(DataSet: TDataSet);
begin
  inherited;
  FormActionsCFormActionSubParam.asString := FormActionsLForm.asString + ' ' + FormActionsText.asString + ' ' + FormActionsSubParam.asString;
end;

end.
