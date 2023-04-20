Unit TerminalD;

Interface

Uses
  SysUtils, Classes, DB, ADODB, Dialogs, Forms;

Type
  TTerminalDM = Class(TDataModule)
    qryBrowser: TADOQuery;
    dtsBrowser: TDataSource;
    qryTERMINAL: TADOQuery;
    dtsTERMINAL: TDataSource;
    qryStation_Terminal: TADOQuery;
    dtsStation_Terminal: TDataSource;
    dtsStation: TDataSource;
    qryStation: TADOQuery;
    qryBrowserTerminalid: TIntegerField;
    qryBrowserTerminalCode: TWideStringField;
    qryBrowserTerminalSerialNo: TWideStringField;
    qryBrowserTerminalType: TIntegerField;
    qryTERMINALTerminalid: TIntegerField;
    qryTERMINALTerminalCode: TWideStringField;
    qryTERMINALTerminalSerialNo: TWideStringField;
    qryTERMINALTerminalType: TIntegerField;
    qryStationStationid: TIntegerField;
    qryStationName: TWideStringField;
    qryStationSTREET: TWideStringField;
    qryStationZIP: TWideStringField;
    qryStationCITY: TWideStringField;
    qryStation_TerminalStationTerminalId: TAutoIncField;
    qryStation_TerminalStationId: TIntegerField;
    qryStation_TerminalTerminalid: TIntegerField;
    qryStation_TerminalStartDate: TDateTimeField;
    dtsTerminalType: TDataSource;
    qryTerminalType: TADOQuery;
    qryTerminalTypeTerminalTypeId: TIntegerField;
    qryTerminalTypeTerminalType_Name: TWideStringField;
    qryBrowserLTerminalType: TStringField;
    qryStation_TerminalLStation: TStringField;
    qryStationStationWhole: TStringField;
    qryTERMINALInsDt: TDateTimeField;
    qryTERMINALUpdDt: TDateTimeField;
    qryTERMINALInsUsr: TIntegerField;
    qryTERMINALUpdUsr: TIntegerField;
    qryTERMINALCreateBoolean: TBooleanField;
    qryTERMINALPending: TBooleanField;
    qryBrowserInsDt: TDateTimeField;
    qryBrowserUpdDt: TDateTimeField;
    qryBrowserInsUsr: TIntegerField;
    qryBrowserUpdUsr: TIntegerField;
    qryBrowserCreateBoolean: TBooleanField;
    qryBrowserPending: TBooleanField;
    qryMaxTerminalCode: TADOQuery;
    qryMaxTerminalCodeMaxTerminalCode: TWideStringField;
    Procedure qryTERMINALBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure dtsTERMINALStateChange(Sender: TObject);
    procedure qryStationCalcFields(DataSet: TDataSet);
    procedure qryTERMINALNewRecord(DataSet: TDataSet);
    procedure qryTERMINALAfterPost(DataSet: TDataSet);
  Private
    { Private declarations }
    Created: Boolean;
    FCardFindId: Integer;
    procedure SetCardFindId(const Value: Integer);
  Public
    { Public declarations }
    Procedure DoInsert;
    Procedure DoUpdate;
    Procedure DoDelete;
    property CardFindId: Integer read FCardFindId write SetCardFindId;
  End;

Implementation

Uses Common, DMain;

{$R *.dfm}
{ TTerminalDM }

procedure TTerminalDM.DataModuleCreate(Sender: TObject);
begin
  Created := False;
  DMCreate(TForm(self));
  UpdFromstBrowse('frmTerminal', qryBrowser);
  Created := True;
end;

Procedure TTerminalDM.DoDelete;
Begin

End;

Procedure TTerminalDM.DoInsert;
Begin
  qryTERMINAL.Insert;
End;

Procedure TTerminalDM.DoUpdate;
Begin
  qryTERMINAL.Edit;
End;

procedure TTerminalDM.dtsTERMINALStateChange(Sender: TObject);
var
  st: String;
begin
  if Created then
    begin
      if TDataSource(Sender).State in [dsEdit, dsInsert] then
        st := 'UPD'
      else
        st := 'Browse';
      ExecMethodStrParam(self.Owner, 'MainStateChange0', st);
    end;
end;

procedure TTerminalDM.qryStationCalcFields(DataSet: TDataSet);
begin
  qryStationStationWhole.AsString := Trim(qryStationName.AsString) + ' ' + Trim(qryStationSTREET.AsString);
end;

procedure TTerminalDM.qryTERMINALAfterPost(DataSet: TDataSet);
begin
  CardFindId := qryTERMINALTerminalid.AsInteger;
end;

Procedure TTerminalDM.qryTERMINALBeforePost(DataSet: TDataSet);
Begin
  // GeneralDM.InsUpdFields(qryStationINSDT, qryStationUPDDT, qryStationINSUSR, qryStationUPDUSR);

End;

procedure TTerminalDM.qryTERMINALNewRecord(DataSet: TDataSet);
begin
  qryTERMINALCreateBoolean.AsBoolean := True;
  qryTERMINALPending.AsBoolean       := False;
end;

procedure TTerminalDM.SetCardFindId(const Value: Integer);
begin
  FCardFindId := Value;
end;

End.
