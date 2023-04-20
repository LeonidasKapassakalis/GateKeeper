Unit CustomerD;

Interface

Uses
  SysUtils, Classes, DB, ADODB, Dialogs, Common, Globals, Controls, ActnList, Forms;

Type
  TCustomerDM = Class(TDataModule)
    qryBrowser: TADOQuery;
    dtsBrowser: TDataSource;
    qryCustomer: TADOQuery;
    dtsCustomer: TDataSource;
    qryACard: TADOQuery;
    qryCostCenter: TADOQuery;
    dtsCostCenter: TDataSource;
    dtsCustomer_Contacts: TDataSource;
    qryCustomer_Contacts: TADOQuery;
    qryCustomer_ContactsCustomerid: TIntegerField;
    qryCustomer_ContactsContactid: TIntegerField;
    qryCustomer_ContactsMain: TBooleanField;
    qryCustomer_ContactsAA: TIntegerField;
    qryContacts: TADOQuery;
    qryContactsid: TIntegerField;
    qryContactsType: TIntegerField;
    qryContactsType_id: TIntegerField;
    qryContactsName: TWideStringField;
    qryContactsSurname: TWideStringField;
    qryContactsemail: TWideStringField;
    qryContactsPhone: TWideStringField;
    qryContactsFax: TWideStringField;
    qryContactsMobile: TWideStringField;
    qryContactsMailORFax: TIntegerField;
    qryCustomer_ContactsLCont: TStringField;
    qryMaxCustomerContactsAA: TADOQuery;
    qryMaxCustomerContactsAAMax_AA: TIntegerField;
    qryCustomer_ContactsLResr: TStringField;
    qryContactsWhole: TStringField;
    qryMaxCostCenterAA: TADOQuery;
    qryMaxCostCenterAAMaxCustomerAA: TIntegerField;
    dtsContacts: TDataSource;
    qryQTown: TADOQuery;
    qryQTownArea00_Name: TWideStringField;
    qryQTownArea01_Name: TWideStringField;
    qryQTownArea02_Name: TWideStringField;
    qryQTownArea03_Name: TWideStringField;
    qryQTownArea02_Id: TIntegerField;
    qryQTownArea03_Id: TAutoIncField;
    qryQTownArea01_Id: TIntegerField;
    qryQTownArea00_Id: TIntegerField;
    qryQTownWholeDescr: TWideStringField;
    dtsQTown: TDataSource;
    qryBranch: TADOQuery;
    qryBranchBRANCHID: TAutoIncField;
    qryBranchDESCR: TWideStringField;
    qryBranchINSDT: TDateTimeField;
    qryBranchUPDDT: TDateTimeField;
    qryBranchINSUSR: TIntegerField;
    qryBranchUPDUSR: TIntegerField;
    dtsBranch: TDataSource;
    qryCostCenterCostCenterId: TAutoIncField;
    qryCostCenterCustomerId: TIntegerField;
    qryCostCenterCustomerAA: TIntegerField;
    qryCostCenterCCName: TWideStringField;
    qryCostCenterCCNameFull: TWideStringField;
    qryCostCenterInsUsr: TIntegerField;
    qryCostCenterInsDT: TDateTimeField;
    qryCostCenterUpdUsr: TIntegerField;
    qryCostCenterUpdDT: TDateTimeField;
    qryCostCenterDeleted: TBooleanField;
    qryCostCenterDelUsr: TIntegerField;
    qryCostCenterDelDT: TDateTimeField;
    qryCostCenterInActive: TBooleanField;
    qryCostCenterInActiveUsr: TIntegerField;
    qryCostCenterInActiveDt: TDateTimeField;
    qrySalesMen: TADOQuery;
    dtsSalesMen: TDataSource;
    qryDiak: TADOQuery;
    dtsDiak: TDataSource;
    qrySalesMenSALESMENID: TAutoIncField;
    qrySalesMenDESCR: TWideStringField;
    qrySalesMenSAPID: TIntegerField;
    qrySalesMenINSDT: TDateTimeField;
    qrySalesMenUPDDT: TDateTimeField;
    qrySalesMenINSUSR: TIntegerField;
    qrySalesMenUPDUSR: TIntegerField;
    qryDiakDiakID: TAutoIncField;
    qryDiakDescr: TWideStringField;
    qryDiakDiakDays: TIntegerField;
    qryDiakDiakSAP: TIntegerField;
    qryDiakInsUsr: TIntegerField;
    qryDiakInsDT: TDateTimeField;
    qryDiakUpdUsr: TIntegerField;
    qryDiakUpdDT: TDateTimeField;
    qryDiakDeleted: TBooleanField;
    qryDiakDelUsr: TIntegerField;
    qryDiakDelDT: TDateTimeField;
    qryDiakInActive: TBooleanField;
    qryDiakInActiveUsr: TIntegerField;
    qryDiakInActiveDt: TDateTimeField;
    dtsACard: TDataSource;
    qryContactsSendMail: TBooleanField;
    qryContactsSendFax: TBooleanField;
    qryContactsSendPrint: TBooleanField;
    qryGarantie: TADOQuery;
    dtsGarantie: TDataSource;
    qryGarantieGarantieId: TAutoIncField;
    qryGarantieGarantieName: TWideStringField;
    qryGarantieInsUsr: TIntegerField;
    qryGarantieInsDT: TDateTimeField;
    qryGarantieUpdUsr: TIntegerField;
    qryGarantieUpdDT: TDateTimeField;
    qryGarantieDeleted: TBooleanField;
    qryGarantieDelUsr: TIntegerField;
    qryGarantieDelDT: TDateTimeField;
    qryGarantieInActive: TBooleanField;
    qryGarantieInActiveUsr: TIntegerField;
    qryGarantieInActiveDt: TDateTimeField;
    qryCompanyType: TADOQuery;
    dtsCompanyType: TDataSource;
    qryCompanyTypeCompanyTypeId: TAutoIncField;
    qryCompanyTypeName: TWideStringField;
    qryCompanyTypeInsUsr: TIntegerField;
    qryCompanyTypeInsDT: TDateTimeField;
    qryCompanyTypeUpdUsr: TIntegerField;
    qryCompanyTypeUpdDT: TDateTimeField;
    qryCompanyTypeDeleted: TBooleanField;
    qryCompanyTypeDelUsr: TIntegerField;
    qryCompanyTypeDelDT: TDateTimeField;
    qryCompanyTypeInActive: TBooleanField;
    qryCompanyTypeInActiveUsr: TIntegerField;
    qryCompanyTypeInActiveDt: TDateTimeField;
    qryBrowserCUSTOMERID: TAutoIncField;
    qryBrowserNAME: TWideStringField;
    qryBrowserSTREET: TWideStringField;
    qryBrowserZIP: TWideStringField;
    qryBrowserCITY: TWideStringField;
    qryBrowserAFM: TWideStringField;
    qryBrowserDOY: TWideStringField;
    qryBrowserSTARTDATE: TDateTimeField;
    qryBrowserAREAID: TIntegerField;
    qryBrowserLOCATIONID: TIntegerField;
    qryBrowserCGROUPID: TIntegerField;
    qryBrowserCCLASSID: TIntegerField;
    qryBrowserCREDITAMOUNT: TFloatField;
    qryBrowserINSDT: TDateTimeField;
    qryBrowserUPDDT: TDateTimeField;
    qryBrowserINSUSR: TIntegerField;
    qryBrowserUPDUSR: TIntegerField;
    qryBrowserPROFESSION: TWideStringField;
    qryBrowserBRANCHID: TIntegerField;
    qryBrowserSAPCODE: TWideStringField;
    qryBrowserISACTIVE: TBooleanField;
    qryBrowserSALESMENID: TIntegerField;
    qryBrowserDIAKID: TIntegerField;
    qryBrowserISTEST: TBooleanField;
    qryBrowserISCONS: TBooleanField;
    qryBrowserAREABID: TIntegerField;
    qryBrowserDATEPHEND: TDateTimeField;
    qryBrowserDATELOEND: TDateTimeField;
    qryBrowserHASDETAILEMP: TBooleanField;
    qryBrowserALLCARDSTOBL: TBooleanField;
    qryBrowserALLCARDSTOBLDATE: TDateTimeField;
    qryBrowserALLCARDSTOBLSYSDATE: TDateTimeField;
    qryBrowserALLCARDSTOBLUSR: TIntegerField;
    qryBrowserCUSTOMEROFF: TBooleanField;
    qryBrowserCUSTOMEROFFDATE: TDateTimeField;
    qryBrowserCUSTOMEROFFSYSDATE: TDateTimeField;
    qryBrowserCUSTOMEROFFUSR: TIntegerField;
    qryBrowserCARDHASEMPNAME: TBooleanField;
    qryBrowserDATEEND: TDateTimeField;
    qryBrowserCompanyTypeId: TIntegerField;
    qryBrowserGarantieId: TIntegerField;
    qryBrowserGarantieAmount: TFloatField;
    qryBrowserComments: TMemoField;
    qryCustomerCUSTOMERID: TAutoIncField;
    qryCustomerNAME: TWideStringField;
    qryCustomerSTREET: TWideStringField;
    qryCustomerZIP: TWideStringField;
    qryCustomerCITY: TWideStringField;
    qryCustomerAFM: TWideStringField;
    qryCustomerDOY: TWideStringField;
    qryCustomerSTARTDATE: TDateTimeField;
    qryCustomerAREAID: TIntegerField;
    qryCustomerLOCATIONID: TIntegerField;
    qryCustomerCGROUPID: TIntegerField;
    qryCustomerCCLASSID: TIntegerField;
    qryCustomerCREDITAMOUNT: TFloatField;
    qryCustomerINSDT: TDateTimeField;
    qryCustomerUPDDT: TDateTimeField;
    qryCustomerINSUSR: TIntegerField;
    qryCustomerUPDUSR: TIntegerField;
    qryCustomerPROFESSION: TWideStringField;
    qryCustomerBRANCHID: TIntegerField;
    qryCustomerSAPCODE: TWideStringField;
    qryCustomerISACTIVE: TBooleanField;
    qryCustomerSALESMENID: TIntegerField;
    qryCustomerDIAKID: TIntegerField;
    qryCustomerISTEST: TBooleanField;
    qryCustomerISCONS: TBooleanField;
    qryCustomerAREABID: TIntegerField;
    qryCustomerDATEPHEND: TDateTimeField;
    qryCustomerDATELOEND: TDateTimeField;
    qryCustomerHASDETAILEMP: TBooleanField;
    qryCustomerALLCARDSTOBL: TBooleanField;
    qryCustomerALLCARDSTOBLDATE: TDateTimeField;
    qryCustomerALLCARDSTOBLSYSDATE: TDateTimeField;
    qryCustomerALLCARDSTOBLUSR: TIntegerField;
    qryCustomerCUSTOMEROFF: TBooleanField;
    qryCustomerCUSTOMEROFFDATE: TDateTimeField;
    qryCustomerCUSTOMEROFFSYSDATE: TDateTimeField;
    qryCustomerCUSTOMEROFFUSR: TIntegerField;
    qryCustomerCARDHASEMPNAME: TBooleanField;
    qryCustomerDATEEND: TDateTimeField;
    qryCustomerCompanyTypeId: TIntegerField;
    qryCustomerGarantieId: TIntegerField;
    qryCustomerGarantieAmount: TFloatField;
    qryCustomerComments: TMemoField;
    qryPDF: TADOQuery;
    dtsPDF: TDataSource;
    qryPDFCustomerId: TIntegerField;
    qryPDFPdfText: TStringField;
    qryPDFInsDt: TDateTimeField;
    qryPDFPdfCont: TBlobField;
    qryPDFId: TIntegerField;
    qryPDFInsUsr: TIntegerField;
    qryPDFUpdUsr: TIntegerField;
    qryPDFUpdDt: TDateTimeField;
    qryPDFDeleted: TBooleanField;
    qryPDFDelUsr: TIntegerField;
    qryPDFDelDT: TDateTimeField;
    qryCClass: TADOQuery;
    dtsCClass: TDataSource;
    qryCClassCClassID: TAutoIncField;
    qryCClassDescr: TWideStringField;
    qryCClassInsUsr: TIntegerField;
    qryCClassInsDT: TDateTimeField;
    qryCClassUpdUsr: TIntegerField;
    qryCClassUpdDT: TDateTimeField;
    qryCClassDeleted: TBooleanField;
    qryCClassDelUsr: TIntegerField;
    qryCClassDelDT: TDateTimeField;
    qryCClassInActive: TBooleanField;
    qryCClassInActiveUsr: TIntegerField;
    qryCClassInActiveDt: TDateTimeField;
    qryCGroup: TADOQuery;
    dtsCGroup: TDataSource;
    qryCustomer_ContactsCustomerContactId: TAutoIncField;
    qryCustomer_ContactsContactTypeId: TIntegerField;
    qryContactsOldCode: TIntegerField;
    qryContactsOldType: TIntegerField;
    qryCustomer_ContactsLContactTypeId: TStringField;
    qryContactType: TADOQuery;
    qryContactTypeContactTypeId: TAutoIncField;
    qryContactTypeContactType_Name: TWideStringField;
    dtsContactType: TDataSource;
    qryCustomer_ContactsLMial: TStringField;
    qryFindAFM: TADOQuery;
    qryFindAFMCustomerId: TAutoIncField;
    qryFindAFMName: TWideStringField;
    qryBLACKLIST: TADOQuery;
    qryACard_BLId: TADOQuery;
    qryACardACARDID: TAutoIncField;
    qryACardACARDCODE: TWideStringField;
    qryACardAcardCodeFull: TWideStringField;
    qryACardCUSTOMERID: TIntegerField;
    qryACardISSUEDATE: TDateTimeField;
    qryACardEXPIREDATE: TDateTimeField;
    qryACardBLACKLISTBOOLEAN: TBooleanField;
    qryACardDAYAMOUNT: TFloatField;
    qryACardMONTHAMOUNT: TFloatField;
    qryACardREGNO: TWideStringField;
    qryACardISACTIVE: TBooleanField;
    qryACardEXPIRELODATE: TDateTimeField;
    qryACardBLACKLISTDATE: TDateTimeField;
    qryACardBLACKLISTUSR: TIntegerField;
    qryACardBLACKLISTNOTES: TWideStringField;
    qryACardINACTIVEDATE: TDateTimeField;
    qryACardINACTIVEUSR: TIntegerField;
    qryACardINACTIVENOTES: TWideStringField;
    qryACardBlackListBatchNum: TIntegerField;
    qryACard_BLIdACARDID: TAutoIncField;
    qryACard_BLIdACARDCODE: TWideStringField;
    qryACard_BLIdAcardCodeFull: TWideStringField;
    qryACard_BLIdCUSTOMERID: TIntegerField;
    qryACard_BLIdISSUEDATE: TDateTimeField;
    qryACard_BLIdEXPIREDATE: TDateTimeField;
    qryACard_BLIdBLACKLISTBOOLEAN: TBooleanField;
    qryACard_BLIdDAYAMOUNT: TFloatField;
    qryACard_BLIdMONTHAMOUNT: TFloatField;
    qryACard_BLIdREGNO: TWideStringField;
    qryACard_BLIdISACTIVE: TBooleanField;
    qryACard_BLIdEXPIRELODATE: TDateTimeField;
    qryACard_BLIdBLACKLISTDATE: TDateTimeField;
    qryACard_BLIdBLACKLISTUSR: TIntegerField;
    qryACard_BLIdBLACKLISTNOTES: TWideStringField;
    qryACard_BLIdINACTIVEDATE: TDateTimeField;
    qryACard_BLIdINACTIVEUSR: TIntegerField;
    qryACard_BLIdINACTIVENOTES: TWideStringField;
    qryACard_BLIdBlackListBatchNum: TIntegerField;
    qryBatchBlEnhm: TADOQuery;
    qryBatchBlEnhmBatchBlEnhmId: TIntegerField;
    qryBatchBlEnhmDate: TDateTimeField;
    qryBatchBlEnhmCustomerid: TIntegerField;
    qryBatchBlEnhmCardCount: TIntegerField;
    qryBatchBlEnhmINSDT: TDateTimeField;
    qryBatchBlEnhmUPDDT: TDateTimeField;
    qryBatchBlEnhmINSUSR: TIntegerField;
    qryBatchBlEnhmUPDUSR: TIntegerField;
    dtsBatchBlEnhm: TDataSource;
    qryBLACKLISTBLACKLISTID: TAutoIncField;
    qryBLACKLISTACARDID: TIntegerField;
    qryBLACKLISTFRDATE: TDateTimeField;
    qryBLACKLISTTODATE: TDateTimeField;
    qryBLACKLISTNOTES: TWideStringField;
    qryBLACKLISTINSDT: TDateTimeField;
    qryBLACKLISTUPDDT: TDateTimeField;
    qryBLACKLISTINSUSR: TIntegerField;
    qryBLACKLISTUPDUSR: TIntegerField;
    qryBLACKLISTBatchNum: TIntegerField;
    qryCustomerLIsActive: TBooleanField;
    Procedure qryCustomerAFMValidate(Sender: TField);
    Procedure qryCustomerNewRecord(DataSet: TDataSet);
    Procedure qryCustomerBeforePost(DataSet: TDataSet);
    Procedure qryCustomerIGROUPIDValidate(Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryCustomer_ContactsAfterInsert(DataSet: TDataSet);
    procedure qryContactsCalcFields(DataSet: TDataSet);
    procedure qryCostCenterAfterInsert(DataSet: TDataSet);
    procedure qryCustomer_ContactsBeforePost(DataSet: TDataSet);
    procedure qryCostCenterPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure qryCustomer_ContactsPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure dtsCustomer_ContactsStateChange(Sender: TObject);
    procedure dtsCustomerStateChange(Sender: TObject);
    procedure qryCustomerAfterPost(DataSet: TDataSet);
    procedure qryPDFBeforePost(DataSet: TDataSet);
    procedure qryCustomerCalcFields(DataSet: TDataSet);
  Private
    Created: Boolean;
    CardCount: Integer;
    FCardFindId: Integer;
    procedure SetCardFindId(const Value: Integer);
    { Private declarations }
  Public
    { Public declarations }
    Procedure DoInsert;
    Procedure DoUpdate;
    Procedure DoDelete;

    Procedure DoPost;
    Procedure DoCancel;

    procedure BatchRevokeBL;
    Procedure DoBlackList(CustomerId: Integer);
    Procedure DoBlackListReverse(CustomerId: Integer; BatchId: Integer);
    Procedure DoInActive(CustomerId: Integer);
    Procedure DoActive(CustomerId: Integer);
    property CardFindId: Integer read FCardFindId write SetCardFindId;
  End;

Implementation

Uses DMain;

{$R *.dfm}
{ TCustomerDM }

Procedure TCustomerDM.DoDelete;
Begin
  // qryCustomer.Delete;
End;

Procedure TCustomerDM.DoInsert;
Begin
  qryCustomer.Insert;
  qryCustomerISACTIVE.AsBoolean := True;
End;

procedure TCustomerDM.DoPost;
begin

end;

Procedure TCustomerDM.DoUpdate;
Begin
  qryCustomer.Edit;
End;

procedure TCustomerDM.dtsCustomerStateChange(Sender: TObject);
// begin
// if Created then
// ExecMethod(Self.Owner,'MainStateChange');
var
  st: String;
begin
  if Created then
    begin
      if TDataSource(Sender).State in [dsEdit, dsInsert] then
        st := 'UPD'
      else
        st := 'Browse';
      ExecMethodStrParam(Self.Owner, 'MainStateChange0', st);
    end;
end;

procedure TCustomerDM.dtsCustomer_ContactsStateChange(Sender: TObject);
// var x:Integer;
// st:String;
// begin
var
  st: String;
begin
  if Created then
    begin
      if TDataSource(Sender).State in [dsEdit, dsInsert] then
        st := 'UPD'
      else
        st := 'Browse';
      ExecMethodStrParam(Self.Owner, 'SubStateChange', st);
    end;

  // if TDataSource(Sender).State in [dsEdit,dsInsert] then
  // st := 'UPD'
  // else
  // st := 'Browse';
  //
  // if Created then
  // begin
  // if TDataSource(Sender).State in [dsEdit,dsInsert] then
  // st := 'UPD'
  // else
  // st := 'Browse';
  // ExecMethodStrParam(Self.Owner,'SubStateChange',st);
  // end;

  { for x  := 0 to TfrmCustomer(Self.Owner).ActListContacts.ActionCount -1 do
    if  TAction(TfrmCustomer(Self.Owner).ActListContacts.Actions[x]).Category = st  then
    begin
    TAction(TfrmCustomer(Self.Owner).ActListContacts.Actions[x]).Enabled := True;
    TAction(TfrmCustomer(Self.Owner).ActListContacts.Actions[x]).Visible := True
    end
    else
    begin
    TAction(TfrmCustomer(Self.Owner).ActListContacts.Actions[x]).Enabled := False;
    TAction(TfrmCustomer(Self.Owner).ActListContacts.Actions[x]).Visible := False
    end }
end;

procedure TCustomerDM.qryContactsCalcFields(DataSet: TDataSet);
begin
  qryContactsWhole.AsString := Trim(qryContactsSurname.AsString) + ' ' + Trim(qryContactsName.AsString) + ' ' + Trim(qryContactsPhone.AsString) + '-' +
    Trim(qryContactsMobile.AsString) + '-' + Trim(qryContactsemail.AsString);
end;

procedure TCustomerDM.qryCostCenterAfterInsert(DataSet: TDataSet);
begin
  qryMaxCostCenterAA.Close;
  qryMaxCostCenterAA.Open;
  DataSet.FieldByName('CustomerAA').Value := qryMaxCostCenterAAMaxCustomerAA.AsInteger + 1;
end;

procedure TCustomerDM.qryCostCenterPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  MessageDlg(E.Message, mtError, [mbOK], 0);
end;

Procedure TCustomerDM.qryCustomerAFMValidate(Sender: TField);
Begin
  If (CheckAfm(qryCustomerAFM.AsString) = false) Then
    Begin
      ShowMessage('Λανθασμένο Α.Φ.Μ.');
      { TODO : change ShowMessage to MsgDlg }
      Abort;
    End;
End;

procedure TCustomerDM.qryCustomerAfterPost(DataSet: TDataSet);
begin
  CardFindId := qryCustomerCUSTOMERID.AsInteger;
end;

Procedure TCustomerDM.qryCustomerNewRecord(DataSet: TDataSet);
Begin
  // qryCustomerSTARTDATE.AsDateTime := Now;
  // qryCustomerMETERBOOLEAN.AsBoolean := false;
  // qryCustomerPINBOOLEAN.AsBoolean := false;
End;

procedure TCustomerDM.qryCustomer_ContactsAfterInsert(DataSet: TDataSet);
begin
  qryMaxCustomerContactsAA.Close;
  qryMaxCustomerContactsAA.Open;
  DataSet.FieldByName('AA').Value   := qryMaxCustomerContactsAAMax_AA.AsInteger + 1;
  DataSet.FieldByName('Main').Value := false;
end;

procedure TCustomerDM.qryCustomer_ContactsBeforePost(DataSet: TDataSet);
begin
  // !!!
  // DMMain.InsUpdFieldsDs(Dataset);
end;

procedure TCustomerDM.qryCustomer_ContactsPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  MessageDlg(E.Message, mtError, [mbOK], 0);
end;

procedure TCustomerDM.qryPDFBeforePost(DataSet: TDataSet);
begin
  if DataSet.State = dsInsert then
    begin
      DataSet.FieldByName('InsUsr').Value      := LoginId;
      DataSet.FieldByName('InsDt').Value       := Now();
      DataSet.FieldByName('Deleted').AsBoolean := false;
    end
  else
    begin
      DataSet.FieldByName('UpdUsr').Value := LoginId;
      DataSet.FieldByName('UpdDt').Value  := Now();
    end;
end;

procedure TCustomerDM.SetCardFindId(const Value: Integer);
begin
  FCardFindId := Value;
end;

Procedure TCustomerDM.qryCustomerBeforePost(DataSet: TDataSet);
Begin
  // !!!
  // Fix for DBase
  /// BeforePost( DataSet );
  // !!!
  // GeneralDM.InsUpdFieldsDs(Dataset);
  // { TODO -cCreal Old : Clear }
  // GeneralDM.InsUpdFields(qryCustomerINSDT, qryCustomerUPDDT, qryCustomerINSUSR, qryCustomerUPDUSR);
  qryCustomerAREAID.Value := qryCustomerAREABID.Value;

End;

procedure TCustomerDM.qryCustomerCalcFields(DataSet: TDataSet);
begin
  qryCustomerLIsActive.Value := qryCustomerISACTIVE.Value;
end;

Procedure TCustomerDM.qryCustomerIGROUPIDValidate(Sender: TField);
var
  x: Integer;
  Nam: String;
begin
  Nam := 'IGROUPID';
  If (Sender.IsNull = false) Then
    begin
      for x := 1 to 10 do
        begin
          Nam := 'IGROUPID' + inttostr(x);
          if Not(Nam = Sender.FieldName) then
            begin
              if qryCustomer.FieldByName(Nam).AsInteger = Sender.AsInteger then
                begin
                  MessageDlg('Πρόβλημα στην καταχώρηση του πεδίου Ομάδα ' + inttostr(x), mtError, [mbOK], 0);
                  raise ERangeError.CreateFmt('Πρόβλημα στην καταχώρηση του πεδίου %s', [Nam]);
                end;
            end;
        end;
      // If (qryCustomerIGROUPID1.AsInteger = qryCustomerIGROUPID2.AsInteger) Or
      // (qryCustomerIGROUPID1.AsInteger = qryCustomerIGROUPID3.AsInteger) Or
      // (qryCustomerIGROUPID1.AsInteger = qryCustomerIGROUPID4.AsInteger) Then
      // Abort;
    End;
End;

procedure TCustomerDM.DoBlackList(CustomerId: Integer);
var
  Mr: Integer;
  procedure EnhmBlack(BatchBlNum: Integer);
  begin
    qryACard.Edit;
    qryACardBLACKLISTBOOLEAN.AsBoolean := True;
    qryACardBLACKLISTDATE.AsDateTime   := Now;
    qryACardBLACKLISTUSR.AsInteger     := gUUserID;
    qryACardBLACKLISTNOTES.AsString    := 'Batch Enhm from Customer';
    // qryACardBlackListBatchNum.AsInteger := qryACardCUSTOMERID.AsInteger;
    qryACardBlackListBatchNum.AsInteger := BatchBlNum;
    CardCount                           := CardCount + 1;
    // BlackListBatchNium	int	Checked

    qryACard.Post;
  end;

var
  xx: Boolean;
  BatchBlNum: Integer;
begin
  Mr := MessageDlg('Μόνο οι ενεργές Κάρτες', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
  case Mr of
    mrYes:
      xx := false;
    mrNo:
      xx := True;
    mrCancel:
      Exit;
  end;

  qryACard.Active                                     := false;
  qryACard.Parameters.ParamByName('CustomerId').Value := CustomerId;
  qryACard.Active                                     := True;

  if qryACard.IsEmpty then
    begin
      Raise Exception.Create('Δεν έχει κάρτες απο αυτη την Batch ενημέρωση ο πελάτης');
      Exit;
    end;

  qryBatchBlEnhm.Active := True;
  qryBatchBlEnhm.Append;
  qryBatchBlEnhmCustomerid.AsInteger := CustomerId;
  qryBatchBlEnhmDate.AsDateTime      := Now;
  qryBatchBlEnhm.Post;

  BatchBlNum := qryBatchBlEnhmBatchBlEnhmId.AsInteger;

  CardCount := 0;
  qryACard.First;
  repeat
    if xx = false then
      begin
        if qryACardISACTIVE.AsBoolean = True then
          If qryACardBLACKLISTBOOLEAN.AsBoolean = false then
            EnhmBlack(BatchBlNum);
      end
    else
      begin
        If qryACardBLACKLISTBOOLEAN.AsBoolean = false then
          EnhmBlack(BatchBlNum);
      end;
    qryACard.Next;
  until qryACard.Eof;

  qryACard.Active := false;
  qryACard.Active := True;

  qryBatchBlEnhm.Edit;
  qryBatchBlEnhmCardCount.AsInteger := CardCount;
  qryBatchBlEnhm.Post;

  MessageDlg('Ενημερώθηκαν ' + inttostr(CardCount) + ' κάρτες με αριθμό Batch ' + inttostr(BatchBlNum), mtInformation, [mbOK], 0);
end;

procedure TCustomerDM.DoBlackListReverse(CustomerId, BatchId: Integer);
var
  Mr: Integer;
  procedure EnhmBlackReverse(BatchBlNum: Integer);
  begin
    qryACard_BLId.Edit;
    qryACard_BLIdBLACKLISTBOOLEAN.AsBoolean := false;
    qryACard_BLIdBLACKLISTDATE.Clear;
    qryACard_BLIdBLACKLISTUSR.AsInteger  := gUUserID;
    qryACard_BLIdBLACKLISTNOTES.AsString := 'Batch UnEnhm from Customer';
    CardCount                            := CardCount + 1;
    qryACard_BLId.Post;
  end;

  procedure EnhmBlackDetailReverse(BatchBlNum: Integer);
  begin
    qryBLACKLIST.Append;
    qryBLACKLIST.Edit;
    qryBLACKLISTACARDID.AsInteger := qryACard_BLIdACARDID.AsInteger;
    qryBLACKLISTFRDATE.AsDateTime := qryACard_BLIdBLACKLISTDATE.AsDateTime;
    qryBLACKLISTTODATE.AsDateTime := Now;
    qryBLACKLISTNOTES.AsString    := qryACard_BLIdBLACKLISTNOTES.AsString;
    qryBLACKLISTINSDT.AsDateTime  := Now;
    qryBLACKLISTUPDDT.AsDateTime  := Now;
    qryBLACKLISTINSUSR.AsInteger  := qryACard_BLIdBLACKLISTUSR.AsInteger;
    qryBLACKLISTUPDUSR.AsInteger  := gUUserID;
    qryBLACKLIST.Post;
  end;

var
  xx: Boolean;
  BatchBlNum: Integer;
begin

  qryACard_BLId.Active := false;

  qryACard_BLId.Parameters.ParamByName('PCUSTOMERID').Value := CustomerId;
  qryACard_BLId.Parameters.ParamByName('PBlackListBatchNum').Value := BatchId;
  qryACard_BLId.Active := True;

  qryBLACKLIST.Active := True;

  if qryACard_BLId.IsEmpty then
    begin
      Raise Exception.Create('Δεν έχει κάρτες ο πελάτης');
    end;

  CardCount := 0;
  qryACard_BLId.First;
  repeat
    If qryACard_BLIdBLACKLISTBOOLEAN.AsBoolean = True then
      begin
        EnhmBlackDetailReverse(BatchBlNum);
        EnhmBlackReverse(BatchBlNum);
      end;
    qryACard_BLId.Next;
  until qryACard_BLId.Eof;

  qryACard.Active := false;
  qryACard.Active := True;

  MessageDlg('Ενημερώθηκαν ' + inttostr(CardCount) + ' κάρτες.', mtInformation, [mbOK], 0);

end;

procedure TCustomerDM.DoCancel;
begin

end;

procedure TCustomerDM.DoInActive(CustomerId: Integer);
begin
  qryACard.Active                                     := false;
  qryACard.Parameters.ParamByName('CustomerId').Value := CustomerId;
  qryACard.Active                                     := True;

  if qryACard.IsEmpty then
    begin
      Raise Exception.Create('Δεν έχει κάρτες ο πελάτης');
    end;

  qryACard.First;
  repeat
    if qryACardISACTIVE.AsBoolean = True then
      begin
        qryACard.Edit;
        qryACardISACTIVE.AsBoolean      := false;
        qryACardINACTIVEDATE.AsDateTime := Now;
        qryACardINACTIVEUSR.AsInteger   := gUUserID;
        qryACardINACTIVENOTES.AsString  := 'Batch Enhm';
        qryACard.Post;
      end;
    qryACard.Next;
  until qryACard.Eof;

  qryACard.Active := false;
end;

procedure TCustomerDM.DataModuleCreate(Sender: TObject);
begin
  Created := false;
  DMCreate(TForm(Self));
  UpdFromstBrowse('frmCustomer', qryBrowser);
  Created := True;
end;
{ 19082013 ---
  var x:integer;
  begin
  for x:=0 to self.ComponentCount -1 do
  begin
  if Self.Components[x] is TAdoTable then
  try
  TAdoTable(Self.Components[x]).Active := True;
  except on E:SysUtils.Exception do
  frmMain.DispPrintExp(E,self.Name,Self.Components[x].Name);
  end;
  if Self.Components[x] is TAdoQuery then
  if Not (TAdoQuery(Self.Components[x]).Tag = 9999) then
  try
  TAdoQuery(Self.Components[x]).Active := True;
  except on E:SysUtils.Exception do
  frmMain.DispPrintExp(E,self.Name,Self.Components[x].Name);
  end;
  End;
  end; }

procedure TCustomerDM.DoActive(CustomerId: Integer);
begin
  MessageDlg('Can not implement this Function.', mtError, [mbOK], 0);
end;

procedure TCustomerDM.BatchRevokeBL;
begin
  If (qryACardBLACKLISTBOOLEAN.AsBoolean = false) Then
    Begin
      qryBLACKLIST.Insert;
      qryBLACKLISTACARDID.AsInteger := qryACardACARDID.AsInteger;
      qryBLACKLISTFRDATE.AsDateTime := qryACardBLACKLISTDATE.AsDateTime;
      qryBLACKLISTTODATE.AsDateTime := NowDateOnly;
      qryBLACKLISTNOTES.AsString    := qryACardBLACKLISTNOTES.AsString;
      qryBLACKLISTINSDT.AsDateTime  := qryACardBLACKLISTDATE.AsDateTime;
      qryBLACKLISTUPDDT.AsDateTime  := Now;
      qryBLACKLISTINSUSR.AsInteger  := qryACardBLACKLISTUSR.AsInteger;
      qryBLACKLISTUPDUSR.AsInteger  := gUUserID;
      qryBLACKLIST.Post;
    End;
end;

End.
