Unit MerchantD;

Interface

Uses
  SysUtils, Classes, DB, ADODB, Dialogs, ActnList, Forms, Common;

Type
  TMerchantDM = Class(TDataModule)
    qryBrowser: TADOQuery;
    dtsBrowser: TDataSource;
    qryMerchant: TADOQuery;
    dtsMerchant: TDataSource;
    qryMerchant_Station: TADOQuery;
    qryStation: TADOQuery;
    dtsMerchant_Station: TDataSource;
    dtsStation: TDataSource;
    dtsMerchant_Contacts: TDataSource;
    qryMerchant_Contacts: TADOQuery;
    qryMerchant_ContactsLCont: TStringField;
    qryMerchant_ContactsLResr: TStringField;
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
    qryContactsWhole: TStringField;
    dtsContacts: TDataSource;
    qryMerchant_ContactsMain: TBooleanField;
    qryMerchant_ContactsAA: TIntegerField;
    qryMerchant_StationMerchantId: TIntegerField;
    qryMerchant_StationStationid: TIntegerField;
    qBranch: TADOQuery;
    qSalesMen: TADOQuery;
    QTown: TADOQuery;
    dsBranch: TDataSource;
    dsSalesMen: TDataSource;
    dsTown: TDataSource;
    qBranchBranchId: TAutoIncField;
    qBranchDescr: TWideStringField;
    qSalesMenSALESMENID: TAutoIncField;
    qSalesMenDescr: TWideStringField;
    QTownArea00_Name: TWideStringField;
    QTownArea01_Name: TWideStringField;
    QTownArea02_Name: TWideStringField;
    QTownArea03_Name: TWideStringField;
    QTownArea02_Id: TIntegerField;
    QTownArea03_Id: TAutoIncField;
    QTownArea01_Id: TIntegerField;
    QTownArea00_Id: TIntegerField;
    QTownWholeDescr: TWideStringField;
    qryBrowserMerchantId: TIntegerField;
    qryBrowserName: TWideStringField;
    qryBrowserZIP: TWideStringField;
    qryBrowserCity: TWideStringField;
    qryBrowserAFM: TWideStringField;
    qryBrowserDOY: TWideStringField;
    qryBrowserInsUsr: TIntegerField;
    qryBrowserInsDT: TDateTimeField;
    qryBrowserUpdUsr: TIntegerField;
    qryBrowserUpdDT: TDateTimeField;
    qryBrowserDeleted: TBooleanField;
    qryBrowserDelUsr: TIntegerField;
    qryBrowserDelDT: TDateTimeField;
    qryBrowserInActive: TBooleanField;
    qryBrowserInActiveUsr: TIntegerField;
    qryBrowserInActiveDt: TDateTimeField;
    qryBrowserSAPCODE: TWideStringField;
    qryBrowserISTEST: TBooleanField;
    qryBrowserStopSales: TBooleanField;
    qryBrowserStopSalesUsr: TIntegerField;
    qryBrowserStopSalesDt: TDateTimeField;
    qryMerchant_ContactsMerchantContactsId: TAutoIncField;
    qryMerchant_Contactsmerchantid: TIntegerField;
    qryMerchant_ContactsContactid: TIntegerField;
    qryMerchant_StationMerchantStationId: TAutoIncField;
    qryBrowserStreet: TWideStringField;
    qryMaxMerchantContactsAA: TADOQuery;
    qryMaxMerchantContactsAAMax_AA: TIntegerField;
    qryMerchant_StationLStation: TStringField;
    qryBrowserAreaId: TIntegerField;
    qryBrowserMerchantCode: TWideStringField;
    qryBrowserSalesMenId: TIntegerField;
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
    qryStationStationid: TAutoIncField;
    qryStationName: TWideStringField;
    qryStationSTREET: TWideStringField;
    qryStationZIP: TWideStringField;
    qryStationCITY: TWideStringField;
    qryStationAreaId: TIntegerField;
    qryStationSalesMenId: TIntegerField;
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
    dsContactType: TDataSource;
    qryContactType: TADOQuery;
    qryContactTypeContactTypeId: TAutoIncField;
    qryContactTypeContactType_Name: TWideStringField;
    qryMerchant_ContactsContactTypeId: TIntegerField;
    qryMerchant_ContactsLContactTypeId: TStringField;
    qryMerchantBranchId: TIntegerField;
    qryMerchantIGroupId1: TIntegerField;
    qryMerchantPososto1: TFloatField;
    qryMerchantIGroupId2: TIntegerField;
    qryMerchantPososto2: TFloatField;
    qryMerchantIGroupId3: TIntegerField;
    qryMerchantPososto3: TFloatField;
    qryMerchantIGroupId4: TIntegerField;
    qryMerchantPososto4: TFloatField;
    qryMerchantIGroupId5: TIntegerField;
    qryMerchantPososto5: TFloatField;
    qryMerchantIGroupId6: TIntegerField;
    qryMerchantPososto6: TFloatField;
    qryMerchantIGroupId7: TIntegerField;
    qryMerchantPososto7: TFloatField;
    qryMerchantIGroupId8: TIntegerField;
    qryMerchantPososto8: TFloatField;
    qryMerchantIGroupId9: TIntegerField;
    qryMerchantPososto9: TFloatField;
    qryMerchantIGroupId10: TIntegerField;
    qryMerchantPososto10: TFloatField;
    qryIGroup: TADOQuery;
    dtsIGroup: TDataSource;
    qryIGroupId: TAutoIncField;
    qryIGroupName: TWideStringField;
    qryIGroupBitNo: TIntegerField;
    qryContactsSendMail: TBooleanField;
    qryContactsSendFax: TBooleanField;
    qryContactsSendPrint: TBooleanField;
    qryContactsOldCode: TIntegerField;
    qryContactsOldType: TIntegerField;
    qryContactsComments: TMemoField;
    qryMaxMerchantCode: TADOQuery;
    qryMaxMerchantCodeMaxMerchantCode: TWideStringField;
    qryStationDeleted: TBooleanField;
    qryStationDelUsr: TIntegerField;
    qryStationDelDT: TDateTimeField;
    qryStationInActive: TBooleanField;
    qryStationInActiveUsr: TIntegerField;
    qryStationInActiveDt: TDateTimeField;
    qryStationStopSales: TBooleanField;
    qryStationStopSalesUsr: TIntegerField;
    qryStationStopSalesDt: TDateTimeField;
    qryStationIsTest: TBooleanField;
    qryStationIsTestUsr: TIntegerField;
    qryStationIsTestDt: TDateTimeField;
    qryStationEndPending: TBooleanField;
    qryStationEndPendingDT: TDateTimeField;
    qryStationEndPendingUsr: TIntegerField;
    qryTerminal: TADOQuery;
    qryTerminalTerminalid: TAutoIncField;
    qryTerminalTerminalCode: TWideStringField;
    qryTerminalTerminalSerialNo: TWideStringField;
    qryTerminalTerminalType: TIntegerField;
    qryTerminalInsDt: TDateTimeField;
    qryTerminalUpdDt: TDateTimeField;
    qryTerminalInsUsr: TIntegerField;
    qryTerminalUpdUsr: TIntegerField;
    qryTerminalCreateBoolean: TBooleanField;
    qryTerminalPending: TBooleanField;
    qryStation_Terminal: TADOQuery;
    qryStation_TerminalStationTerminalId: TAutoIncField;
    qryStation_TerminalStationId: TIntegerField;
    qryStation_TerminalTerminalid: TIntegerField;
    qryStation_TerminalStartDate: TDateTimeField;
    qryStation_Contacts: TADOQuery;
    qryStation_ContactsStationContactId: TAutoIncField;
    qryStation_ContactsStationId: TIntegerField;
    qryStation_ContactsContactId: TIntegerField;
    qryStation_ContactsContactTypeId: TIntegerField;
    qryStation_ContactsMain: TBooleanField;
    qryStation_ContactsAA: TIntegerField;
    qryMerchant_ContactsLMail: TStringField;
    qryFindAFM: TADOQuery;
    qryFindAFMMerchantId: TAutoIncField;
    qryFindAFMName: TWideStringField;
    Procedure qryMERCHANTAFMValidate(Sender: TField);
    Procedure qryMerchantBeforePost(DataSet: TDataSet);
    Procedure qryMerchantNewRecord(DataSet: TDataSet);
    procedure dtsMerchant_StationStateChange(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryContactsCalcFields(DataSet: TDataSet);
    procedure qryMerchant_ContactsAfterInsert(DataSet: TDataSet);
    procedure qryMerchant_StationAfterInsert(DataSet: TDataSet);
    procedure dtsMerchantStateChange(Sender: TObject);
    procedure qryMerchantAfterPost(DataSet: TDataSet);
    procedure qryMerchantIGroupId10Validate(Sender: TField);
  Private
    Created: Boolean;
    FCardFindId: Integer;
    procedure ExecMethod(OnObject: TObject; MethodName: string);
    procedure SetCardFindId(const Value: Integer);
    { Private declarations }
  Public
    { Public declarations }
    Procedure DoInsert;
    Procedure DoUpdate;
    Procedure DoDelete;
    Procedure DoInActive;
    Procedure DoTest;
    Procedure DoSimple;
    Procedure DoStopSales;
    property CardFindId: Integer read FCardFindId write SetCardFindId;

  End;

Implementation

Uses Merchant, DMain;

{$R *.dfm}
{ TMerchantDM }

procedure TMerchantDM.DataModuleCreate(Sender: TObject);
begin
  Created := False;
  DMCreate(TForm(self));
  UpdFromstBrowse('frmMerchant', qryBrowser);
  Created := True;
end;

Procedure TMerchantDM.DoTest;
Begin
  GenTestPostWithNameN(qryMerchant);
End;

Procedure TMerchantDM.DoInActive;
Begin
  GenInActivePostWithNameN(qryMerchant);
End;

procedure TMerchantDM.DoSimple;
var
  Meid, StId, TrId: Integer;
begin
  Meid := qryMerchantMerchantId.AsInteger;
  qryStation.Append;
  qryStation.Edit;

  qryStationName.AsString        := qryMerchantName.AsString;
  qryStationAreaId.AsInteger     := qryMerchantAreaId.AsInteger;
  qryStationSTREET.AsString      := qryMerchantStreet.AsString;
  qryStationZIP.AsString         := qryMerchantZIP.AsString;
  qryStationCITY.AsString        := qryMerchantCity.AsString;
  qryStationSalesMenId.AsInteger := qryMerchantSalesMenId.AsInteger;
  qryStationEndPending.AsBoolean := False;
  qryStation.Post;
  StId := qryStationStationid.AsInteger;

  qryTerminal.Active := True;
  qryTerminal.Append;
  qryTerminal.Edit;
  qryTerminalTerminalCode.AsString   := qryMerchantMerchantCode.AsString;
  qryTerminalPending.AsBoolean       := True;
  qryTerminalCreateBoolean.AsBoolean := True;
  qryTerminal.Post;
  TrId               := qryTerminalTerminalid.AsInteger;
  qryTerminal.Active := False;

  qryMerchant_Station.Append;
  qryMerchant_Station.Edit;
  qryMerchant_StationMerchantId.AsInteger := Meid;
  qryMerchant_StationStationid.AsInteger  := StId;
  qryMerchant_Station.Post;

  qryStation_Terminal.Active := True;
  qryStation_Terminal.Append;
  qryStation_Terminal.Edit;
  qryStation_TerminalTerminalid.AsInteger := TrId;
  qryStation_TerminalStationId.AsInteger  := StId;
  qryStation_Terminal.Post;
  qryStation_Terminal.Active := False;

  qryStation_Contacts.Active := True;
  qryStation_Contacts.Append;
  qryStation_Contacts.Edit;
  qryStation_ContactsContactId.AsInteger     := qryMerchant_ContactsContactid.AsInteger;
  qryStation_ContactsStationId.AsInteger     := StId;
  qryStation_ContactsContactTypeId.AsInteger := qryMerchant_ContactsContactTypeId.AsInteger;
  qryStation_ContactsMain.AsBoolean          := qryMerchant_ContactsMain.AsBoolean;
  qryStation_ContactsAA.AsInteger            := qryMerchant_ContactsAA.AsInteger;
  qryStation_Contacts.Post;

  // qryStation_TerminalStationid.AsInteger  := StId;
  // qryStation_Terminal.Post;
  // qryStation_Terminal.Active := False;

end;

Procedure TMerchantDM.DoStopSales;
Begin
  // qryMerchant.Delete;
End;

Procedure TMerchantDM.DoDelete;
Begin
  GenDeletePostWithNameN(qryMerchant);
End;

Procedure TMerchantDM.DoInsert;
Begin
  qryMerchant.Insert;
End;

Procedure TMerchantDM.DoUpdate;
Begin
  qryMerchant.Edit;
End;

procedure TMerchantDM.ExecMethod(OnObject: TObject; MethodName: string);
type
  TExec = procedure of object;
var
  Routine: TMethod;
  Exec: TExec;
begin
  Routine.Data := Pointer(OnObject);
  Routine.Code := OnObject.MethodAddress(MethodName);
  if NOT Assigned(Routine.Code) then
    Exit;
  Exec := TExec(Routine);
  Exec;
end;

procedure TMerchantDM.dtsMerchantStateChange(Sender: TObject);
type
  TProcedure = procedure of object;
var
  ap: Pointer;
  m: TMethod;
  Proc: TProcedure;
begin
  if Created then
    begin
      // Self.Owner.FieldAddress('CheckIfThere')
      // m.Code:=Self.Owner.MethodAddress('CheckIfThere');
      // m.Data:=Nil;

      ExecMethod(self.Owner, 'CheckIfThere');

      ExecMethod(self.Owner, 'CheckIfThere123');

      // Proc:=TFrmMerchant(Self.Owner).CheckIfThere;
      // Proc;
      // Self.Owner.ExecuteAction(m.code);

      // TfrmMerchant(Self.Owner).CheckifThere;
    end;
  // TMyFuncType(m);
  // m.execute;
  // AllClick(ActionList1);
end;

procedure TMerchantDM.dtsMerchant_StationStateChange(Sender: TObject);
var
  x: Integer;
  st: String;
  at: TComponent;
begin
  if Created then
    begin
      if TDataSource(Sender).State in [dsEdit, dsInsert] then
        st := 'UPD'
      else
        st := 'Browse';
      ExecMethodStrParam(self.Owner, 'SubStateChange', st);
    end;
  // Comment out 06022014
  /// /!!!! Probably Impliment in a Table With DataSet ActionListName Owner/Self State
  /// /  MessageDlg(TDataSource(Sender).Name, mtWarning, [mbOK], 0);
  //
  // if TDataSource(Sender).State in [dsEdit,dsInsert] then
  // st := 'UPD'
  // else
  // st := 'Browse';
  //
  // At:=self.Owner.FindComponent('ActListContacts');
  // if assigned(At) then
  // for x  := 0 to TActionList(At).ActionCount -1 do //   TfrmMerchant(Self.Owner).ActListContacts.ActionCount -1 do
  // if  TAction(TActionList(At).Actions[x]).Category = st  then
  // begin
  // TAction(TActionList(At).Actions[x]).Enabled := True;
  // TAction(TActionList(At).Actions[x]).Visible := True;
  // end
  // else
  // begin
  // TAction(TActionList(At).Actions[x]).Enabled := False;
  // TAction(TActionList(At).Actions[x]).Visible := False;
  // end
  // Comment out 06022014
end;

procedure TMerchantDM.qryContactsCalcFields(DataSet: TDataSet);
begin
  qryContactsWhole.AsString := Trim(qryContactsSurname.AsString) + ' ' + Trim(qryContactsName.AsString) + ' ' + Trim(qryContactsPhone.AsString) + '-' +
    Trim(qryContactsMobile.AsString) + '-' + Trim(qryContactsemail.AsString);
end;

Procedure TMerchantDM.qryMERCHANTAFMValidate(Sender: TField);
Begin
  If (CheckAfm(qryMerchantAFM.AsString) = False) Then
    Begin
      ShowMessage('Λανθασμένο Α.Φ.Μ.');
      { TODO : change ShowMessage to MsgDlg }
      Abort;
    End;
End;

procedure TMerchantDM.qryMerchantAfterPost(DataSet: TDataSet);
begin
  CardFindId := qryMerchantMerchantId.AsInteger;
end;

Procedure TMerchantDM.qryMerchantBeforePost(DataSet: TDataSet);
Begin
  // GeneralDM.InsUpdFields(qryStationINSDT, qryStationUPDDT, qryStationINSUSR, qryStationUPDUSR);
End;

procedure TMerchantDM.qryMerchantIGroupId10Validate(Sender: TField);
var
  x, y, z, sn: string;
  i, sv, lv: Integer;
  lff: TField;
begin
  if Sender.IsNull then
    Exit;

  sn := Sender.FieldName;
  sv := Sender.AsInteger;

  y := 'IGroupId';

  for i := 1 to 10 do
    begin
      z := y + IntToStr(i);
      if Not(z = sn) then
        begin
          lff := Sender.DataSet.FieldByName(z);
          if Not lff.IsNull then
            if lff.AsInteger = sv then
              begin
                MessageDlg('Υπάρχει η καταχώρηση.', mtError, [mbOK], 0);
                Abort;
              end;
        end;
    end;
end;

Procedure TMerchantDM.qryMerchantNewRecord(DataSet: TDataSet);
Begin
  // qryStationSTOPSALES.AsBoolean := false;
End;

procedure TMerchantDM.qryMerchant_ContactsAfterInsert(DataSet: TDataSet);
begin
  qryMaxMerchantContactsAA.Close;
  qryMaxMerchantContactsAA.Open;
  DataSet.FieldByName('AA').Value := qryMaxMerchantContactsAAMax_AA.AsInteger + 1;
  if qryMaxMerchantContactsAAMax_AA.AsInteger = 0 then
    DataSet.FieldByName('Main').Value := True
  else
    DataSet.FieldByName('Main').Value := False;
end;

procedure TMerchantDM.qryMerchant_StationAfterInsert(DataSet: TDataSet);
begin
  //
end;

procedure TMerchantDM.SetCardFindId(const Value: Integer);
begin
  FCardFindId := Value;
end;

End.
