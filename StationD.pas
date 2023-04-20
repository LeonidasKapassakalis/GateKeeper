Unit StationD;

Interface

Uses
  SysUtils, Classes, DB, ADODB, Dialogs, ActnList, Forms;

Type
  TStationDM = Class(TDataModule)
    qryBrowser: TADOQuery;
    dtsBrowser: TDataSource;
    qryStation: TADOQuery;
    dtsStation: TDataSource;
    qryBrowserName: TWideStringField;
    qryBrowserSTREET: TWideStringField;
    qryBrowserZIP: TWideStringField;
    qryBrowserCITY: TWideStringField;
    qryStationName: TWideStringField;
    qryStationSTREET: TWideStringField;
    qryStationZIP: TWideStringField;
    qryStationCITY: TWideStringField;
    qryBrowserIGroupId1: TIntegerField;
    qryBrowserPososto1: TFloatField;
    qryBrowserHaveGroup1: TBooleanField;
    qryBrowserIGroupId2: TIntegerField;
    qryBrowserPososto2: TFloatField;
    qryBrowserHaveGroup2: TBooleanField;
    qryBrowserIGroupId3: TIntegerField;
    qryBrowserPososto3: TFloatField;
    qryBrowserHaveGroup3: TBooleanField;
    qryBrowserIGroupId4: TIntegerField;
    qryBrowserPososto4: TFloatField;
    qryBrowserHaveGroup4: TBooleanField;
    qryBrowserIGroupId5: TIntegerField;
    qryBrowserPososto5: TFloatField;
    qryBrowserHaveGroup5: TBooleanField;
    qryBrowserIGroupId6: TIntegerField;
    qryBrowserPososto6: TFloatField;
    qryBrowserHaveGroup6: TBooleanField;
    qryBrowserIGroupId7: TIntegerField;
    qryBrowserPososto7: TFloatField;
    qryBrowserHaveGroup7: TBooleanField;
    qryBrowserIGroupId8: TIntegerField;
    qryBrowserPososto8: TFloatField;
    qryBrowserHaveGroup8: TBooleanField;
    qryBrowserIGroupId9: TIntegerField;
    qryBrowserPososto9: TFloatField;
    qryBrowserHaveGroup9: TBooleanField;
    qryBrowserIGroupId10: TIntegerField;
    qryBrowserPososto10: TFloatField;
    qryBrowserHaveGroup10: TBooleanField;
    qryStationIGroupId1: TIntegerField;
    qryStationPososto1: TFloatField;
    qryStationHaveGroup1: TBooleanField;
    qryStationIGroupId2: TIntegerField;
    qryStationPososto2: TFloatField;
    qryStationHaveGroup2: TBooleanField;
    qryStationIGroupId3: TIntegerField;
    qryStationPososto3: TFloatField;
    qryStationHaveGroup3: TBooleanField;
    qryStationIGroupId4: TIntegerField;
    qryStationPososto4: TFloatField;
    qryStationHaveGroup4: TBooleanField;
    qryStationIGroupId5: TIntegerField;
    qryStationPososto5: TFloatField;
    qryStationHaveGroup5: TBooleanField;
    qryStationIGroupId6: TIntegerField;
    qryStationPososto6: TFloatField;
    qryStationHaveGroup6: TBooleanField;
    qryStationIGroupId7: TIntegerField;
    qryStationPososto7: TFloatField;
    qryStationHaveGroup7: TBooleanField;
    qryStationIGroupId8: TIntegerField;
    qryStationPososto8: TFloatField;
    qryStationHaveGroup8: TBooleanField;
    qryStationIGroupId9: TIntegerField;
    qryStationPososto9: TFloatField;
    qryStationHaveGroup9: TBooleanField;
    qryStationIGroupId10: TIntegerField;
    qryStationPososto10: TFloatField;
    qryStationHaveGroup10: TBooleanField;
    qryIGroup: TADOQuery;
    qryMerchant_Station: TADOQuery;
    qryMerchant: TADOQuery;
    dtsMerchant_Station: TDataSource;
    dtsMerchant: TDataSource;
    qryIGroupId: TAutoIncField;
    qryIGroupName: TWideStringField;
    qryIGroupBitNo: TIntegerField;
    qryStation_Terminal: TADOQuery;
    qryTerminal: TADOQuery;
    dtsStation_Terminal: TDataSource;
    dtsTerminal: TDataSource;
    qryStation_TerminalStartDate: TDateTimeField;
    qryTerminalTERMINALCODE: TWideStringField;
    qryTerminalTERMINALSERIALNO: TWideStringField;
    qryStation_TerminalLTerminal: TStringField;
    qryMerchant_StationLMerchant: TStringField;
    qryBrowserStationid: TIntegerField;
    qryStationStationid: TIntegerField;
    qryStation_TerminalStationId: TIntegerField;
    qryTerminalLTerminalFull: TStringField;
    qryTerminalTerminalid: TIntegerField;
    qryTerminalTerminalType: TIntegerField;
    qryMerchant_StationMerchantId: TIntegerField;
    qryMerchant_StationStationid: TIntegerField;
    qryStation_TerminalTerminalid: TIntegerField;
    qBranch: TADOQuery;
    qSalesMen: TADOQuery;
    QTown: TADOQuery;
    qBranchBRANCHID: TAutoIncField;
    qBranchDESCR: TWideStringField;
    qSalesMenSALESMENID: TAutoIncField;
    qSalesMenDESCR: TWideStringField;
    QTownArea00_Name: TWideStringField;
    QTownArea01_Name: TWideStringField;
    QTownArea02_Name: TWideStringField;
    QTownArea03_Name: TWideStringField;
    QTownArea02_Id: TIntegerField;
    QTownArea03_Id: TAutoIncField;
    QTownArea01_Id: TIntegerField;
    QTownArea00_Id: TIntegerField;
    QTownWholeDescr: TWideStringField;
    dsBranch: TDataSource;
    dsSalesMen: TDataSource;
    dsTown: TDataSource;
    qryMerchantMerchantId: TIntegerField;
    qryMerchantName: TWideStringField;
    qryMerchantStreet: TWideStringField;
    qryMerchantZIP: TWideStringField;
    qryMerchantCity: TWideStringField;
    qryMerchantAFM: TWideStringField;
    qryMerchantDOY: TWideStringField;
    qryMerchantISTEST: TBooleanField;
    qryMerchantAreaId: TIntegerField;
    qryMerchantSAPCode: TWideStringField;
    qryMerchantMerchantCode: TWideStringField;
    qryMerchantSalesMenId: TIntegerField;
    qryMerchantInsUsr: TIntegerField;
    qryMerchantInsDT: TDateTimeField;
    qryMerchantUpdUsr: TIntegerField;
    qryMerchantUpdDT: TDateTimeField;
    qryMerchantDeleted: TBooleanField;
    qryMerchantDelUsr: TIntegerField;
    qryMerchantDelDT: TDateTimeField;
    qryMerchantInActive: TBooleanField;
    qryMerchantInActiveUsr: TIntegerField;
    qryMerchantInActiveDt: TDateTimeField;
    qryMerchantStopSales: TBooleanField;
    qryMerchantStopSalesUsr: TIntegerField;
    qryMerchantStopSalesDt: TDateTimeField;
    qryStationAreaId: TIntegerField;
    qryStationSalesMenId: TIntegerField;
    qryStation_TerminalStationTerminalId: TAutoIncField;
    qryBrowserAreaId: TIntegerField;
    qryBrowserSalesMenId: TIntegerField;
    qryBrowserDeleted: TBooleanField;
    qryBrowserDelUsr: TIntegerField;
    qryBrowserDelDT: TDateTimeField;
    qryBrowserInActive: TBooleanField;
    qryBrowserInActiveUsr: TIntegerField;
    qryBrowserInActiveDt: TDateTimeField;
    qryBrowserStopSales: TBooleanField;
    qryBrowserStopSalesUsr: TIntegerField;
    qryBrowserStopSalesDt: TDateTimeField;
    qryStationDeleted: TBooleanField;
    qryStationDelUsr: TIntegerField;
    qryStationDelDT: TDateTimeField;
    qryStationInActive: TBooleanField;
    qryStationInActiveUsr: TIntegerField;
    qryStationInActiveDt: TDateTimeField;
    qryStationStopSales: TBooleanField;
    qryStationStopSalesUsr: TIntegerField;
    qryStationStopSalesDt: TDateTimeField;
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
    dtsBranch: TDataSource;
    qryBranchBRANCHID: TAutoIncField;
    qryBranchDESCR: TWideStringField;
    qryBranchINSDT: TDateTimeField;
    qryBranchUPDDT: TDateTimeField;
    qryBranchINSUSR: TIntegerField;
    qryBranchUPDUSR: TIntegerField;
    dtsStation_Contacts: TDataSource;
    qryStation_Contacts: TADOQuery;
    qryStation_ContactsLCont: TStringField;
    qryStation_ContactsLResr: TStringField;
    qryStation_ContactsLContactTypeId: TStringField;
    qryMaxMerchantContactsAA: TADOQuery;
    qryMaxMerchantContactsAAMax_AA: TIntegerField;
    qryContacts: TADOQuery;
    qryContactsid: TIntegerField;
    qryContactsType: TIntegerField;
    qryContactsType_id: TIntegerField;
    qryContactsName: TWideStringField;
    qryContactsSurname: TWideStringField;
    qryContactsPhone: TWideStringField;
    qryContactsFax: TWideStringField;
    qryContactsMobile: TWideStringField;
    qryContactsMailORFax: TIntegerField;
    qryContactsWhole: TStringField;
    dtsContacts: TDataSource;
    dtsContactType: TDataSource;
    qryContactType: TADOQuery;
    qryContactTypeContactTypeId: TAutoIncField;
    qryContactTypeContactType_Name: TWideStringField;
    qryStation_ContactsStationContactId: TAutoIncField;
    qryStation_ContactsStationId: TIntegerField;
    qryStation_ContactsContactId: TIntegerField;
    qryStation_ContactsContactTypeId: TIntegerField;
    qryStation_ContactsMain: TBooleanField;
    qryStation_ContactsAA: TIntegerField;
    qryContactsSendMail: TBooleanField;
    qryContactsSendFax: TBooleanField;
    qryContactsSendPrint: TBooleanField;
    dtsIGroup: TDataSource;
    qryIGroupDescr: TStringField;
    qryContactsOldCode: TIntegerField;
    qryContactsOldType: TIntegerField;
    qryContactsemail: TWideStringField;
    qryContactsComments: TMemoField;
    qryMaxTerminalCode: TADOQuery;
    qryMaxTerminalCodeMaxTerminalCode: TWideStringField;
    qryStation_ContactsLMail: TStringField;
    Procedure qryStationAFMValidate(Sender: TField);
    Procedure qryStationBeforePost(DataSet: TDataSet);
    Procedure qryStationNewRecord(DataSet: TDataSet);
    Procedure qryStationIGROUPID1Validate(Sender: TField);
    Procedure qryStationIGROUPID2Validate(Sender: TField);
    Procedure qryStationIGROUPID3Validate(Sender: TField);
    Procedure qryStationIGROUPID4Validate(Sender: TField);
    Procedure qryStationIGROUPID5Validate(Sender: TField);
    procedure leo(Sender: TObject);
    procedure qryTerminalCalcFields(DataSet: TDataSet);
    procedure dtsStation_TerminalStateChange(Sender: TObject);
    procedure dtsStationStateChange(Sender: TObject);
    procedure qryStation_TerminalBeforeDelete(DataSet: TDataSet);
    procedure qryStation_ContactsAfterInsert(DataSet: TDataSet);
    procedure dtsStation_ContactsStateChange(Sender: TObject);
    procedure qryContactsCalcFields(DataSet: TDataSet);
    procedure qryIGroupCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryStationAfterPost(DataSet: TDataSet);
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
    Procedure DoInActive;
    Procedure DoTest;
    Procedure DoStopSales;
    property CardFindId: Integer read FCardFindId write SetCardFindId;
  End;

Implementation

Uses
  Common, Station, DMain;

{$R *.dfm}
{ TStationDM }

procedure TStationDM.leo(Sender: TObject);
begin
  Created := False;
  DMCreate(TForm(self));
  Created := True;
end;

procedure TStationDM.DataModuleCreate(Sender: TObject);
begin
  Created := False;
  DMCreate(TForm(self));
  UpdFromstBrowse('frmStation', qryBrowser);
  Created := True;
end;

Procedure TStationDM.DoDelete;
Begin
  qryStation.Edit;
  qryStationDeleted.AsBoolean := True;
  qryStation.Post;
End;

procedure TStationDM.DoInActive;
begin
  GenInActivePostWithNameN(qryStation);
end;

Procedure TStationDM.DoInsert;
Begin
  qryStation.Insert;
End;

procedure TStationDM.DoStopSales;
begin

end;

procedure TStationDM.DoTest;
begin
  GenTestPostWithNameN(qryStation);
end;

Procedure TStationDM.DoUpdate;
Begin
  qryStation.Edit;
End;

procedure TStationDM.dtsStationStateChange(Sender: TObject);
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

procedure TStationDM.dtsStation_ContactsStateChange(Sender: TObject);
var
  x: Integer;
  st: String;
  at: TComponent;
begin
  // !!!! Probably Impliment in a Table With DataSet ActionListName Owner/Self State
  // MessageDlg(TDataSource(Sender).Name, mtWarning, [mbOK], 0);

  if TDataSource(Sender).State in [dsEdit, dsInsert] then
    st := 'UPD'
  else
    st := 'Browse';

  at := self.Owner.FindComponent('ActListContacts');
  if assigned(at) then
    for x := 0 to TActionList(at).ActionCount - 1 do // TfrmMerchant(Self.Owner).ActListContacts.ActionCount -1 do
      if TAction(TActionList(at).Actions[x]).Category = st then
        begin
          TAction(TActionList(at).Actions[x]).Enabled := True;
          TAction(TActionList(at).Actions[x]).Visible := True;
        end
      else
        begin
          TAction(TActionList(at).Actions[x]).Enabled := False;
          TAction(TActionList(at).Actions[x]).Visible := False;
        end
end;

procedure TStationDM.dtsStation_TerminalStateChange(Sender: TObject);
var
  st: String;
begin
  if Created then
    begin
      if TDataSource(Sender).State in [dsEdit, dsInsert] then
        st := 'UPD'
      else
        st := 'Browse';
      ExecMethodStrParam(self.Owner, 'SubStateChange', st);
    end;
end;

procedure TStationDM.qryContactsCalcFields(DataSet: TDataSet);
begin
  qryContactsWhole.AsString := Trim(qryContactsSurname.AsString) + ' ' + Trim(qryContactsName.AsString) + ' ' + Trim(qryContactsPhone.AsString) + '-' +
    Trim(qryContactsMobile.AsString) + '-' + Trim(qryContactsemail.AsString);
end;

procedure TStationDM.qryIGroupCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('Descr').AsString := DataSet.FieldByName('Name').AsString;
end;

Procedure TStationDM.qryStationAFMValidate(Sender: TField);
Begin
  // !!!
  // If (CheckAfm(qryStationAFM.AsString) = false) Then Begin
  // ShowMessage('Λανθασμένο Α.Φ.Μ.');
  { TODO : change ShowMessage to MsgDlg }
  // Abort;
  // End;
End;

procedure TStationDM.qryStationAfterPost(DataSet: TDataSet);
begin
  CardFindId := qryStationStationid.AsInteger;
end;

Procedure TStationDM.qryStationBeforePost(DataSet: TDataSet);
Begin
  // GeneralDM.InsUpdFields(qryStationINSDT, qryStationUPDDT, qryStationINSUSR, qryStationUPDUSR);
End;

Procedure TStationDM.qryStationNewRecord(DataSet: TDataSet);
Begin
  // 072013
  // qryStationSTOPSALES.AsBoolean := false;
End;

procedure TStationDM.qryStation_ContactsAfterInsert(DataSet: TDataSet);
begin
  qryMaxMerchantContactsAA.Close;
  qryMaxMerchantContactsAA.Open;
  DataSet.FieldByName('AA').Value := qryMaxMerchantContactsAAMax_AA.AsInteger + 1;
  if qryMaxMerchantContactsAAMax_AA.AsInteger = 0 then
    DataSet.FieldByName('Main').Value := True
  else
    DataSet.FieldByName('Main').Value := False;
end;

procedure TStationDM.qryStation_TerminalBeforeDelete(DataSet: TDataSet);
begin
  /// /////
  GenDeletePostWithNameN(DataSet);
end;

procedure TStationDM.qryTerminalCalcFields(DataSet: TDataSet);
begin
  qryTerminalLTerminalFull.AsString := qryTerminalTERMINALCODE.AsString + ' ' + qryTerminalTERMINALSERIALNO.AsString;
end;

procedure TStationDM.SetCardFindId(const Value: Integer);
begin
  FCardFindId := Value;
end;

Procedure TStationDM.qryStationIGROUPID1Validate(Sender: TField);
Begin
  If (qryStationIGroupId1.IsNull = False) Then
    Begin
      If (qryStationIGroupId1.AsInteger = qryStationIGroupId2.AsInteger) Or (qryStationIGroupId1.AsInteger = qryStationIGroupId3.AsInteger) Or
        (qryStationIGroupId1.AsInteger = qryStationIGroupId4.AsInteger) Or (qryStationIGroupId1.AsInteger = qryStationIGroupId5.AsInteger) Then
        Abort;
    End;
End;

Procedure TStationDM.qryStationIGROUPID2Validate(Sender: TField);
Begin
  If (qryStationIGroupId2.IsNull = False) Then
    Begin
      If (qryStationIGroupId2.AsInteger = qryStationIGroupId1.AsInteger) Or (qryStationIGroupId2.AsInteger = qryStationIGroupId3.AsInteger) Or
        (qryStationIGroupId2.AsInteger = qryStationIGroupId4.AsInteger) Or (qryStationIGroupId2.AsInteger = qryStationIGroupId5.AsInteger) Then
        Abort;
    End;
End;

Procedure TStationDM.qryStationIGROUPID3Validate(Sender: TField);
Begin
  If (qryStationIGroupId3.IsNull = False) Then
    Begin
      If (qryStationIGroupId3.AsInteger = qryStationIGroupId1.AsInteger) Or (qryStationIGroupId3.AsInteger = qryStationIGroupId2.AsInteger) Or
        (qryStationIGroupId3.AsInteger = qryStationIGroupId4.AsInteger) Or (qryStationIGroupId3.AsInteger = qryStationIGroupId5.AsInteger) Then
        Abort;
    End;
End;

Procedure TStationDM.qryStationIGROUPID4Validate(Sender: TField);
Begin
  If (qryStationIGroupId4.IsNull = False) Then
    Begin
      If (qryStationIGroupId4.AsInteger = qryStationIGroupId1.AsInteger) Or (qryStationIGroupId4.AsInteger = qryStationIGroupId2.AsInteger) Or
        (qryStationIGroupId4.AsInteger = qryStationIGroupId3.AsInteger) Or (qryStationIGroupId4.AsInteger = qryStationIGroupId5.AsInteger) Then
        Abort;
    End;
End;

Procedure TStationDM.qryStationIGROUPID5Validate(Sender: TField);
Begin
  If (qryStationIGroupId4.IsNull = False) Then
    Begin
      If (qryStationIGroupId4.AsInteger = qryStationIGroupId1.AsInteger) Or (qryStationIGroupId4.AsInteger = qryStationIGroupId2.AsInteger) Or
        (qryStationIGroupId4.AsInteger = qryStationIGroupId3.AsInteger) Or (qryStationIGroupId4.AsInteger = qryStationIGroupId4.AsInteger) Then
        Abort;
    End;
End;

End.
