unit EnhmParak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, ActnList, DB, ComCtrls, FBase, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, cxNavigator;

type
  TfrmEnhmParak = class(TfrmBase)
    dtsTran: TDataSource;
    qryTran: TADOQuery;
    qryTranTranStationId: TIntegerField;
    qryTranStationSapCode: TWideStringField;
    qryTranSumAmount: TFloatField;
    qryTranSumQuantity: TFloatField;
    qryTranStationDescr: TStringField;
    ADOQuery1: TADOQuery;
    ADOQuery1CUSTOMERID: TAutoIncField;
    ADOQuery1NAME: TWideStringField;
    ADOQuery1STREET: TWideStringField;
    ADOQuery1ZIP: TWideStringField;
    ADOQuery1CITY: TWideStringField;
    ADOQuery1AFM: TWideStringField;
    ADOQuery1DOY: TWideStringField;
    ADOQuery1PHONE1: TWideStringField;
    ADOQuery1PHONE2: TWideStringField;
    ADOQuery1MOBILE: TWideStringField;
    ADOQuery1FAX: TWideStringField;
    ADOQuery1STARTDATE: TDateTimeField;
    ADOQuery1AREAID: TIntegerField;
    ADOQuery1LOCATIONID: TIntegerField;
    ADOQuery1CGROUPID: TIntegerField;
    ADOQuery1CCLASSID: TIntegerField;
    ADOQuery1CREDITAMOUNT: TFloatField;
    ADOQuery1INSDT: TDateTimeField;
    ADOQuery1UPDDT: TDateTimeField;
    ADOQuery1INSUSR: TIntegerField;
    ADOQuery1UPDUSR: TIntegerField;
    ADOQuery1PROFESSION: TWideStringField;
    ADOQuery1EMAIL: TWideStringField;
    ADOQuery1LASTNAME: TWideStringField;
    ADOQuery1FIRSTNAME: TWideStringField;
    ADOQuery1METERBOOLEAN: TBooleanField;
    ADOQuery1PINBOOLEAN: TBooleanField;
    ADOQuery1IGROUPID1: TIntegerField;
    ADOQuery1IGROUPID2: TIntegerField;
    ADOQuery1IGROUPID3: TIntegerField;
    ADOQuery1IGROUPID4: TIntegerField;
    ADOQuery1DAYAMOUNT: TFloatField;
    ADOQuery1MONTHAMOUNT: TFloatField;
    ADOQuery1BRANCHID: TIntegerField;
    ADOQuery2: TADOQuery;
    ADOQuery2STATIONID: TAutoIncField;
    ADOQuery2NAME: TWideStringField;
    ADOQuery2STREET: TWideStringField;
    ADOQuery2ZIP: TWideStringField;
    ADOQuery2CITY: TWideStringField;
    ADOQuery2AFM: TWideStringField;
    ADOQuery2DOY: TWideStringField;
    ADOQuery2PHONE1: TWideStringField;
    ADOQuery2PHONE2: TWideStringField;
    ADOQuery2MOBILE: TWideStringField;
    ADOQuery2FAX: TWideStringField;
    ADOQuery2AREAID: TIntegerField;
    ADOQuery2LOCATIONID: TIntegerField;
    ADOQuery2TERMINALCODE: TWideStringField;
    ADOQuery2TERMINALSERIALNO: TWideStringField;
    ADOQuery2INSDT: TDateTimeField;
    ADOQuery2UPDDT: TDateTimeField;
    ADOQuery2INSUSR: TIntegerField;
    ADOQuery2UPDUSR: TIntegerField;
    ADOQuery2PROFESSION: TWideStringField;
    ADOQuery2EMAIL: TWideStringField;
    ADOQuery2LASTNAME: TWideStringField;
    ADOQuery2FIRSTNAME: TWideStringField;
    ADOQuery2SGROUPID: TIntegerField;
    ADOQuery2SCLASSID: TIntegerField;
    ADOQuery2STOPSALES: TBooleanField;
    ADOQuery2BRANCHID: TIntegerField;
    ADOQuery2IGROUPID1: TIntegerField;
    ADOQuery2IGROUPID2: TIntegerField;
    ADOQuery2IGROUPID3: TIntegerField;
    ADOQuery2IGROUPID4: TIntegerField;
    ADOQuery2POSOSTO1: TFloatField;
    ADOQuery2POSOSTO2: TFloatField;
    ADOQuery2POSOSTO3: TFloatField;
    ADOQuery2POSOSTO4: TFloatField;
    ADOQuery2MERCHANTCODE: TWideStringField;
    ADOQuery2IGROUPID5: TIntegerField;
    ADOQuery2POSOSTO5: TFloatField;
    ADOQuery2HAVEIGROUP1: TBooleanField;
    ADOQuery2HAVEIGROUP2: TBooleanField;
    ADOQuery2HAVEIGROUP3: TBooleanField;
    ADOQuery2HAVEIGROUP4: TBooleanField;
    ADOQuery2HAVEIGROUP5: TBooleanField;
    dxBarManager1: TActionManager;
    ActionList1: TActionList;
    actEnhmStation: TAction;
    actClose: TAction;
    EnhmSap: TADOTable;
    qryTranParakPer: TFloatField;
    qryTranParakAmount: TFloatField;
    EnhmSapCode: TIntegerField;
    EnhmSapAmount: TIntegerField;
    EnhmSapTaxCode: TStringField;
    EnhmSapSText: TStringField;
    FindStation: TADOQuery;
    FindStationSTATIONID: TAutoIncField;
    FindStationNAME: TWideStringField;
    FindStationSTREET: TWideStringField;
    FindStationZIP: TWideStringField;
    FindStationCITY: TWideStringField;
    FindStationAFM: TWideStringField;
    FindStationDOY: TWideStringField;
    FindStationPHONE1: TWideStringField;
    FindStationPHONE2: TWideStringField;
    FindStationMOBILE: TWideStringField;
    FindStationFAX: TWideStringField;
    FindStationAREAID: TIntegerField;
    FindStationLOCATIONID: TIntegerField;
    FindStationTERMINALCODE: TWideStringField;
    FindStationTERMINALSERIALNO: TWideStringField;
    FindStationINSDT: TDateTimeField;
    FindStationUPDDT: TDateTimeField;
    FindStationINSUSR: TIntegerField;
    FindStationUPDUSR: TIntegerField;
    FindStationPROFESSION: TWideStringField;
    FindStationEMAIL: TWideStringField;
    FindStationLASTNAME: TWideStringField;
    FindStationFIRSTNAME: TWideStringField;
    FindStationSGROUPID: TIntegerField;
    FindStationSCLASSID: TIntegerField;
    FindStationSTOPSALES: TBooleanField;
    FindStationBRANCHID: TIntegerField;
    FindStationIGROUPID1: TIntegerField;
    FindStationIGROUPID2: TIntegerField;
    FindStationIGROUPID3: TIntegerField;
    FindStationIGROUPID4: TIntegerField;
    FindStationPOSOSTO1: TFloatField;
    FindStationPOSOSTO2: TFloatField;
    FindStationPOSOSTO3: TFloatField;
    FindStationPOSOSTO4: TFloatField;
    FindStationMERCHANTCODE: TWideStringField;
    FindStationIGROUPID5: TIntegerField;
    FindStationPOSOSTO5: TFloatField;
    FindStationHAVEIGROUP1: TBooleanField;
    FindStationHAVEIGROUP2: TBooleanField;
    FindStationHAVEIGROUP3: TBooleanField;
    FindStationHAVEIGROUP4: TBooleanField;
    FindStationHAVEIGROUP5: TBooleanField;
    FindStationISACTIVE: TBooleanField;
    FindStationSAPCODE: TWideStringField;
    FindStationSALESMENID: TIntegerField;
    FindIGroup: TADOQuery;
    FindIGroupIGROUPID: TAutoIncField;
    FindIGroupDESCR: TWideStringField;
    FindIGroupINSDT: TDateTimeField;
    FindIGroupUPDDT: TDateTimeField;
    FindIGroupINSUSR: TIntegerField;
    FindIGroupUPDUSR: TIntegerField;
    FindIGroupBITNO: TIntegerField;
    FindIGroupPOSOSTO: TFloatField;
    qryTranIGroupID: TIntegerField;
    EnhmTrans: TADOQuery;
    qryDeleteTranP: TADOQuery;
    InsTranP: TADOQuery;
    InsTranPTRANPID: TAutoIncField;
    InsTranPSTATIONID: TIntegerField;
    InsTranPSITEMID: TIntegerField;
    InsTranPDEBIT: TFloatField;
    InsTranPCREDIT: TFloatField;
    InsTranPTTEXT: TWideStringField;
    InsTranPTRANPDATE: TDateTimeField;
    InsTranPTRANBCOID: TIntegerField;
    InsTranPINSDT: TDateTimeField;
    InsTranPUPDDT: TDateTimeField;
    InsTranPINSUSR: TIntegerField;
    InsTranPUPDUSR: TIntegerField;
    StatusBar1: TStatusBar;
    qrySumTranP: TADOQuery;
    qrySumTranPStationId: TIntegerField;
    qrySumTranPTranBCOID: TIntegerField;
    qrySumTranPSumParak: TFloatField;
    qrySumTranPLSapCode: TIntegerField;
    ADOQuery2ISACTIVE: TBooleanField;
    ADOQuery2SAPCODE: TWideStringField;
    ADOQuery2SALESMENID: TIntegerField;
    ADOQuery2ISTEST: TBooleanField;
    EnhmSapY: TADOTable;
    qStation: TADOQuery;
    AutoIncField1: TAutoIncField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    BooleanField1: TBooleanField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    WideStringField17: TWideStringField;
    IntegerField12: TIntegerField;
    FloatField5: TFloatField;
    BooleanField2: TBooleanField;
    BooleanField3: TBooleanField;
    BooleanField4: TBooleanField;
    BooleanField5: TBooleanField;
    BooleanField6: TBooleanField;
    BooleanField7: TBooleanField;
    WideStringField18: TWideStringField;
    IntegerField13: TIntegerField;
    qrySumTranPLStationKY: TIntegerField;
    EnhmSapYCODE: TIntegerField;
    EnhmSapYAMOUNT: TIntegerField;
    EnhmSapYTAXCODE: TStringField;
    EnhmSapYSTEXT: TStringField;
    UpdCommandAct: TAction;
    qrySumTranPLName: TStringField;
    AllStation: TADOQuery;
    AllStationSTATIONID: TIntegerField;
    AllStationNAME: TWideStringField;
    AllStationSTREET: TWideStringField;
    AllStationZIP: TWideStringField;
    AllStationCITY: TWideStringField;
    AllStationAFM: TWideStringField;
    AllStationDOY: TWideStringField;
    AllStationPHONE1: TWideStringField;
    AllStationPHONE2: TWideStringField;
    AllStationMOBILE: TWideStringField;
    AllStationFAX: TWideStringField;
    AllStationAREAID: TIntegerField;
    AllStationLOCATIONID: TIntegerField;
    AllStationTERMINALCODE: TWideStringField;
    AllStationTERMINALSERIALNO: TWideStringField;
    AllStationINSDT: TDateTimeField;
    AllStationUPDDT: TDateTimeField;
    AllStationINSUSR: TIntegerField;
    AllStationUPDUSR: TIntegerField;
    AllStationPROFESSION: TWideStringField;
    AllStationEMAIL: TWideStringField;
    AllStationLASTNAME: TWideStringField;
    AllStationFIRSTNAME: TWideStringField;
    AllStationSGROUPID: TIntegerField;
    AllStationSCLASSID: TIntegerField;
    AllStationSTOPSALES: TBooleanField;
    AllStationBRANCHID: TIntegerField;
    AllStationIGROUPID1: TIntegerField;
    AllStationIGROUPID2: TIntegerField;
    AllStationIGROUPID3: TIntegerField;
    AllStationIGROUPID4: TIntegerField;
    AllStationPOSOSTO1: TFloatField;
    AllStationPOSOSTO2: TFloatField;
    AllStationPOSOSTO3: TFloatField;
    AllStationPOSOSTO4: TFloatField;
    AllStationMERCHANTCODE: TWideStringField;
    AllStationIGROUPID5: TIntegerField;
    AllStationPOSOSTO5: TFloatField;
    AllStationHAVEIGROUP1: TBooleanField;
    AllStationHAVEIGROUP2: TBooleanField;
    AllStationHAVEIGROUP3: TBooleanField;
    AllStationHAVEIGROUP4: TBooleanField;
    AllStationHAVEIGROUP5: TBooleanField;
    AllStationISACTIVE: TBooleanField;
    AllStationSAPCODE: TWideStringField;
    AllStationSALESMENID: TIntegerField;
    AllStationISTEST: TBooleanField;
    AllStationAREABID: TIntegerField;
    AllStationSTATIONOFF: TBooleanField;
    AllStationSTATIONOFFDATE: TDateTimeField;
    AllStationSTATIONOFFSYSDATE: TDateTimeField;
    AllStationSTATIONOFFUSR: TIntegerField;
    ActionToolBar1: TActionToolBar;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1TranStationId: TcxGridDBColumn;
    cxGrid1DBTableView1StationSapCode: TcxGridDBColumn;
    cxGrid1DBTableView1SumAmount: TcxGridDBColumn;
    cxGrid1DBTableView1SumQuantity: TcxGridDBColumn;
    cxGrid1DBTableView1StationDescr: TcxGridDBColumn;
    cxGrid1DBTableView1ParakPer: TcxGridDBColumn;
    cxGrid1DBTableView1ParakAmount: TcxGridDBColumn;
    cxGrid1DBTableView1IGroupID: TcxGridDBColumn;
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure actCloseExecute(Sender: TObject);
    procedure actEnhmStationExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    GenPososto: Array[0..10] of Real;
    CachePelaths:Integer;
  public
    ToDate: TDateTime;
    VatComm: String;
    function ClearSpaces(InStr:String):string;
  end;

implementation

uses GenDataModule, Globals, Main;

{$R *.dfm}

procedure TfrmEnhmParak.qryTranCalcFields(DataSet: TDataSet);
function ReturnParakPercent(Station:Integer;Group:Integer):Real;
  function FindGenProductPososto(Group:Integer):Real;
  begin
    if GenPososto[Group] > 0 then
       Result:=GenPososto[Group]
    else
       Result:=GenPososto[0];
  end;

begin
if Not( CachePelaths = Station ) then
   begin
     FindStation.Active:=False;
     FindStation.Parameters.ParamByName('id').Value:=Station;
     FindStation.Active:=True;
     CachePelaths:=Station;
   end;
if (Not( FindStation.IsEmpty)) then
   begin
    if FindStationIGroupID1.AsInteger = Group then
       begin
         Result:=FindStationPososto1.AsFloat;
         exit;
       end;
    if FindStationIGroupID2.AsInteger = Group then
       begin
         Result:=FindStationPososto2.AsFloat;
         exit;
       end;
    if FindStationIGroupID3.AsInteger = Group then
       begin
         Result:=FindStationPososto3.AsFloat;
         exit;
       end;
    if FindStationIGroupID4.AsInteger = Group then
       begin
         Result:=FindStationPososto4.AsFloat;
         exit;
       end;
    if FindStationIGroupID5.AsInteger = Group then
       begin
         Result:=FindStationPososto5.AsFloat;
         exit;
       end;
    Result:=FindGenProductPososto( Group );
   end
else
    Result:=FindGenProductPososto( Group );
end;

var Leo:Real;
begin
qryTranParakPer.AsFloat:=ReturnParakPercent(qryTranTranStationId.AsInteger,qryTranIGroupID.AsInteger);
Leo:=qryTranSumAmount.AsInteger * qryTranParakPer.AsFloat / 100 ;
Leo:=(round((Leo * 100)) / 100);
qryTranParakAmount.AsFloat:=Leo;

end;

procedure TfrmEnhmParak.actCloseExecute(Sender: TObject);
begin
close;
end;

procedure TfrmEnhmParak.actEnhmStationExecute(Sender: TObject);
var x:Integer;
    CallVar:Variant;
    BatchNo:Integer;
    YY,MM,DD:Word;
    aaa:string;
begin
  aaa:=ClearSpaces('Male     1234');
  Assert(aaa='Male 1234','Wrong Exec');

  DecodeDate(ToDate,YY,MM,DD);
  CallVar:=ToDate;

//Requery Data from Server to find last Enhm


 GeneralDM.tblEnhmCOCall.Close;
 GeneralDM.tblEnhmCOCall.Open;

  if GeneralDM.tblEnhmCOCall.Locate('EnCCallDate',CallVar,[]) then
     begin
        if MessageDlg('Εχετε ήδη Ενημερώσει για την Ημερομηνία.' + chr(13) +
                      'Nα διαγραφούν οι εγγραφές;', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
               qryDeleteTranP.Parameters.ParamByName('PTranBCOID').Value:=GeneralDM.tblEnhmCOCallENCCALLID.AsInteger;
               qryDeleteTranP.ExecSQL;
               self.Refresh;
           end
        else
           exit;
     end
  else
     begin
       GeneralDM.tblEnhmCOCall.Insert;
       GeneralDM.tblEnhmCOCall.Edit;
       GeneralDM.tblEnhmCOCall.FieldByName('EnCCallDate').AsDateTime :=ToDate;
       GeneralDM.tblEnhmCOCall.Post;
     end;
  if GeneralDM.tblEnhmCOCall.Locate('EnCCallDate',CallVar,[]) then
     begin
       BatchNo:=GeneralDM.tblEnhmCOCallENCCALLID.AsInteger;
     end
  else
     begin
        ShowMessage('Πρόβλημα στην Ενημέρωση');
        exit;
     end ;

  EnhmSap.Active:=True;
  if Not(EnhmSap.IsEmpty) then
     begin
       MessageDlg('Υπάρχει ήδη Αρχείο!'+#13+#10+'Πρέπει να Διαγραφεί', mtError, [mbOK], 0);
       exit;
     end;

  EnhmSapY.Active:=True;
  if Not(EnhmSapY.IsEmpty) then
     begin
       MessageDlg('Υπάρχει ήδη Αρχείο(Υποκ.)!'+#13+#10+'Πρέπει να Διαγραφεί', mtError, [mbOK], 0);
       exit;
     end;

  qryTran.First;
  StatusBar1.Panels[0].Text   :=' ';
  repeat
    InsTranP.Active:=True;
    InsTranP.Insert;
    InsTranP.Edit;
    InsTranPSTATIONID.AsInteger :=qryTranTranStationId.AsInteger;
    InsTranPTRANBCOID.AsInteger :=BatchNo;
    InsTranPSITEMID.AsInteger   :=qryTranIGroupID.AsInteger;
    InsTranPDEBIT.AsFloat       :=qryTranParakAmount.AsFloat;
    InsTranPTTEXT.AsString      :=Format('Αξία : %f  Ποσοστό : %f',[qryTranSumAmount.asFloat,qryTranParakPer.asFloat]);
    StatusBar1.Panels[0].Text   :=Format('Αξία : %f  Ποσοστό : %f',[qryTranSumAmount.asFloat,qryTranParakPer.asFloat]);
    StatusBar1.Refresh;
    InsTranPTRANPDATE.AsDateTime:=ToDate;
    InsTranPINSDT.AsDateTime    :=now();
    InsTranPUPDDT.AsDateTime    :=now();
    InsTranPINSUSR.AsInteger    :=gUUserId;
    InsTranPUPDUSR.AsInteger    :=gUUserId;
    InsTranP.Post;
    qryTran.Next;
  until qryTran.Eof;

  StatusBar1.Panels[0].Text   :=' ';
  StatusBar1.Refresh;

  qrySumTranP.Active:=False;
  qrySumTranP.Parameters.ParamByName('PTranBCID').Value:=BatchNo;
  qrySumTranP.Active:=True;

if qrySumTranP.IsEmpty then
   begin
    StatusBar1.Panels[0].Text   :=' ';
    MessageDlg('Δεν Υπάρχουν Κινήσεις Παρακράτησης!', mtInformation, [mbOK], 0);
   end;

if EnhmSap.IsEmpty then
 begin
  qrySumTranP.First;
  repeat
    if qrySumTranPLStationKY.AsInteger = 1 then
       begin
         EnhmSap.Append;
         EnhmSapCode.AsInteger       :=qrySumTranPLSapCode.AsInteger;
         EnhmSapAmount.AsFloat       :=qrySumTranPSumParak.asFloat * 100;
// 10/2/2009
//         EnhmSapSText.AsString       :='Ενημέρωση Παρακράτησης AVINCARD';
        EnhmSapSText.AsString       :='Ενημ.Παρακ.AVINCARD ' + ClearSpaces(qrySumTranPLName.AsString);
// FPA 19%
//       EnhmSapTaxCode.AsString     :='99';
//       EnhmSapTaxCode.AsString     :='95';
//         EnhmSapTaxCode.AsString     :='C4';
// FPA from Ini Value
        EnhmSapTaxCode.AsString     :=VatComm;

         if EnhmSapAmount.AsInteger > 0 then
            EnhmSap.Post
         else
            EnhmSap.Cancel;
       end
    else
       begin
         EnhmSapY.Append;
         EnhmSapYCode.AsInteger       :=qrySumTranPLSapCode.AsInteger;
         EnhmSapYAmount.AsFloat       :=qrySumTranPSumParak.asFloat * 100;
// 10/2/2009
//         EnhmSapYSText.AsString       :='Ενημέρωση Παρακράτησης AVINCARD';
        EnhmSapYSText.AsString       :='Ενημ.Παρακ.AVINCARD ' + ClearSpaces(qrySumTranPLName.AsString);
// FPA 19%
//       EnhmSapYTaxCode.AsString     :='99';
//       EnhmSapYTaxCode.AsString     :='95';
//         EnhmSapYTaxCode.AsString     :='C4';
// FPA from Ini Value
        EnhmSapYTaxCode.AsString     :=VatComm;

         if EnhmSapYAmount.AsInteger > 0 then
            EnhmSapY.Post
         else
            EnhmSapY.Cancel;
       end;
    qrySumTranP.Next;
  until qrySumTranP.Eof;

  GeneralDM.CreateDraftMail(frmMain.ReadApplicationIni(INI_ADO_SECTION,MAIL_TO),
                            frmMain.ReadApplicationIni(INI_ADO_SECTION,MAIL_CC),
                            frmMain.ReadApplicationIni(INI_ADO_SECTION,MAIL_BCC),
                            'Ενημέρωση Αρχείου Παρακράτησης AVINCARD',
                            'Ενημέρωση Αρχείου Παρακράτησης AVINCARD '+ DatetoStr(ToDate));

  MessageDlg('Ολοκλήρωση Διαδικασίας!', mtInformation, [mbOK], 0);
 end;

//  qryTransDet.First;
//  repeat
    EnhmTrans.Parameters.ParamByName('BTCommission').Value:=BatchNo;
    EnhmTrans.Parameters.ParamByName('BTUpd').Value       :=True;
//    EnhmTrans.Parameters.ParamByName('Id').Value     :=qryTransDetTranId.AsInteger;
    EnhmTrans.ExecSQL;
//    StatusBar1.Panels[0].Text   :='Ενημέρωση Trans id: '+ qryTransDetTranId.AsString;
//    StatusBar1.Refresh;
//    qryTransDet.Next;
//  until qryTransDet.Eof;

  StatusBar1.Panels[0].Text   :='';
  MessageDlg('Ολοκλήρωση Διαδικασίας!', mtInformation, [mbOK], 0);

end;

function TfrmEnhmParak.ClearSpaces(InStr:String):string;
var x,y:Integer;
begin
  y:=Length(InStr);
  for x:= 0 to y do
      InStr:=StringReplace(InStr,'  ',' ',[]);
  Result:=InStr;
end;

procedure TfrmEnhmParak.FormShow(Sender: TObject);
var x:Integer;
begin
  for x:=0 to 10 do
    GenPososto[x]:=0;

FindIGroup.Active:=False;
FindIGroup.Active:=True;
FindIGroup.First;
repeat
 GenPososto[FindIGroupIGROUPID.AsInteger]:=FindIGroupPOSOSTO.AsFloat;
 FindIGroup.Next;
until FindIGroup.Eof;

 GenPososto[0]:=1;

 VatComm:=frmMain.ReadApplicationIni(INI_ADO_SECTION, INI_VAT_CODE_COMMISSION);

 if VatComm = '' then
    VatComm:='C4';

 EnhmSap.Active:=False;
 EnhmSap.ConnectionString:=frmMain.ReadApplicationIni(INI_ADO_SECTION,  INI_EXPORT_SAP_PARAKRAT);
 EnhmSap.Active:=True;

 EnhmSapY.Active:=False;
 EnhmSapY.ConnectionString:=frmMain.ReadApplicationIni(INI_ADO_SECTION,  INI_EXPORT_SAP_PARAKRATY);
 EnhmSapY.Active:=True;

end;

end.
