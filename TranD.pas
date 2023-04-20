Unit TranD;

Interface

Uses
  SysUtils, Classes, DB, ADODB, dxmdaset, Common, Forms;

Type
  TTranDM = Class(TDataModule)
    qryTran: TADOQuery;
    qryTranTRANID: TAutoIncField;
    qryTranTRANDATE: TDateTimeField;
    qryTranACARDID: TIntegerField;
    qryTranSTATIONID: TIntegerField;
    qryTranINSDT: TDateTimeField;
    qryTranUPDDT: TDateTimeField;
    qryTranINSUSR: TIntegerField;
    qryTranUPDUSR: TIntegerField;
    dtsTran: TDataSource;
    memStation: TdxMemData;
    memStationNAME: TStringField;
    dtsStation: TDataSource;
    qryBrowser: TADOQuery;
    dtsBrowser: TDataSource;
    qryStation: TADOQuery;
    memACard: TdxMemData;
    memACardACARDCODE: TStringField;
    dtsACard: TDataSource;
    qryACard: TADOQuery;
    qryACardACARDID: TAutoIncField;
    qryACardACARDCODE: TWideStringField;
    qryACardCUSTOMERID: TIntegerField;
    qryACardISSUEDATE: TDateTimeField;
    qryACardEXPIREDATE: TDateTimeField;
    qryACardMETERBOOLEAN: TBooleanField;
    qryACardPINBOOLEAN: TBooleanField;
    qryACardINSDT: TDateTimeField;
    qryACardUPDDT: TDateTimeField;
    qryACardINSUSR: TIntegerField;
    qryACardUPDUSR: TIntegerField;
    qryACardSTARTDATE: TDateTimeField;
    qryACardVTYPEID: TIntegerField;
    qryACardCREATEBOOLEAN: TBooleanField;
    qryACardBLACKLISTBOOLEAN: TBooleanField;
    qryACardBLACKLISTDATE: TDateTimeField;
    qryACardBLACKLISTUSR: TIntegerField;
    qryACardBLACKLISTNOTES: TWideStringField;
    qryACardIGROUPID1: TIntegerField;
    qryACardIGROUPID2: TIntegerField;
    qryACardIGROUPID3: TIntegerField;
    qryACardIGROUPID4: TIntegerField;
    qryACardDAYAMOUNT: TFloatField;
    qryACardMONTHAMOUNT: TFloatField;
    qryTranAMOUNT: TFloatField;
    qryTranKMBEFORE: TIntegerField;
    qryTranKMAFTER: TIntegerField;
    qrySItem: TADOQuery;
    qrySItemSITEMID: TAutoIncField;
    qrySItemDESCR: TWideStringField;
    qrySItemIGROUPID: TIntegerField;
    qrySItemICLASSID: TIntegerField;
    qrySItemCODEINTERMINAL: TIntegerField;
    qryTranSITEMID: TIntegerField;
    qryTranQUANTITY: TFloatField;
    qryTranSITEMDESCR: TStringField;
    qryTranREFSTR: TWideStringField;
    qryTranISAUTO: TBooleanField;
    qryTranFullCardNo: TStringField;
    qryTranSTATIONUPD: TBooleanField;
    qryTranACARDUPD: TBooleanField;
    qryTranISVOID: TBooleanField;
    qryTranBATCHNO: TIntegerField;
    qryTranCOMMISSIONUPD: TBooleanField;
    qryTranSTATIONUPDBT: TIntegerField;
    qryTranACARDUPDBT: TIntegerField;
    qryTranCOMMISSIONUPDBT: TIntegerField;
    qryTranCONSUMUPD: TBooleanField;
    qryTranCONSUMDIVIDER: TFloatField;
    qryTranUNITPRICE: TFloatField;
    qryTranTRANTIME: TDateTimeField;
    qryTranISTYPED: TBooleanField;
    qryTranTRANPERIOD: TIntegerField;
    qryTranDISCOUNTUPD: TBooleanField;
    qryTranDISCOUNTUPDBT: TIntegerField;
    qryTranDISQUANTITY: TFloatField;
    qryTranDISAMOUNT: TFloatField;
    qryTranPELADAILYUPD: TBooleanField;
    qryTranPELADAILYUPDBT: TIntegerField;
    qryACardREGNO: TWideStringField;
    qryACardACARDHOLDER: TWideStringField;
    qryACardISACTIVE: TBooleanField;
    qryACardEXPIREPHDATE: TDateTimeField;
    qryACardEXPIRELODATE: TDateTimeField;
    qryACardIGROUPID5: TIntegerField;
    qryACardEMPLOYEESID: TIntegerField;
    qryACardNEWCARDBOOLEAN: TBooleanField;
    qryACardNEWCARDID: TIntegerField;
    qryACardCARDHASEMPNAME: TBooleanField;
    qryACardACARDCODENUM: TIntegerField;
    qryACardAll: TADOQuery;
    qryACardAllACARDID: TAutoIncField;
    qryACardAllACARDCODE: TWideStringField;
    qryACardAllCUSTOMERID: TIntegerField;
    qryACardAllISSUEDATE: TDateTimeField;
    qryACardAllEXPIREDATE: TDateTimeField;
    qryACardAllMETERBOOLEAN: TBooleanField;
    qryACardAllPINBOOLEAN: TBooleanField;
    qryACardAllINSDT: TDateTimeField;
    qryACardAllUPDDT: TDateTimeField;
    qryACardAllINSUSR: TIntegerField;
    qryACardAllUPDUSR: TIntegerField;
    qryACardAllSTARTDATE: TDateTimeField;
    qryACardAllVTYPEID: TIntegerField;
    qryACardAllCREATEBOOLEAN: TBooleanField;
    qryACardAllBLACKLISTBOOLEAN: TBooleanField;
    qryACardAllBLACKLISTDATE: TDateTimeField;
    qryACardAllBLACKLISTUSR: TIntegerField;
    qryACardAllBLACKLISTNOTES: TWideStringField;
    qryACardAllIGROUPID1: TIntegerField;
    qryACardAllIGROUPID2: TIntegerField;
    qryACardAllIGROUPID3: TIntegerField;
    qryACardAllIGROUPID4: TIntegerField;
    qryACardAllDAYAMOUNT: TFloatField;
    qryACardAllMONTHAMOUNT: TFloatField;
    qryACardAllREGNO: TWideStringField;
    qryACardAllACARDHOLDER: TWideStringField;
    qryACardAllISACTIVE: TBooleanField;
    qryACardAllEXPIREPHDATE: TDateTimeField;
    qryACardAllEXPIRELODATE: TDateTimeField;
    qryACardAllIGROUPID5: TIntegerField;
    qryACardAllEMPLOYEESID: TIntegerField;
    qryACardAllNEWCARDBOOLEAN: TBooleanField;
    qryACardAllNEWCARDID: TIntegerField;
    qryBlackList: TADOQuery;
    dsACardAll: TDataSource;
    qryBlackListBLACKLISTID: TAutoIncField;
    qryBlackListACARDID: TIntegerField;
    qryBlackListFRDATE: TDateTimeField;
    qryBlackListTODATE: TDateTimeField;
    qryBlackListNOTES: TWideStringField;
    qryBlackListINSDT: TDateTimeField;
    qryBlackListUPDDT: TDateTimeField;
    qryBlackListINSUSR: TIntegerField;
    qryBlackListUPDUSR: TIntegerField;
    qryTerminal: TADOQuery;
    qryMerchant: TADOQuery;
    dtsMerchant: TDataSource;
    dtsTerminal: TDataSource;
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
    qryACardAllFullCardNo: TStringField;
    qryTranMERCHANTID: TIntegerField;
    qryTranTERMINALID: TIntegerField;
    qryStationMerchantId: TIntegerField;
    qryStationStationid: TIntegerField;
    qryStationName: TWideStringField;
    qryStationSTREET: TWideStringField;
    qryStationCITY: TWideStringField;
    qryStationZIP: TWideStringField;
    qryTerminalStationId: TIntegerField;
    qryTerminalTerminalCode: TWideStringField;
    qryTerminalTerminalid: TIntegerField;
    qryTerminalTerminalSerialNo: TWideStringField;
    qryTranUnitValue: TFloatField;
    dtsStationAll: TDataSource;
    qryStationAll: TADOQuery;
    qryTerminalAll: TADOQuery;
    qryMerchantAll: TADOQuery;
    dtsMerchantAll: TDataSource;
    dtsTerminalAll: TDataSource;
    qryMerchantAllMerchantId: TIntegerField;
    qryMerchantAllName: TWideStringField;
    qryStationAllStationId: TIntegerField;
    qryStationAllName: TWideStringField;
    qryTerminalAllTerminalId: TIntegerField;
    qryTerminalAllTerminalCode: TWideStringField;
    qryBrowserTRANID: TAutoIncField;
    qryBrowserTRANDATE: TDateTimeField;
    qryBrowserACARDID: TIntegerField;
    qryBrowserMERCHANTID: TIntegerField;
    qryBrowserSTATIONID: TIntegerField;
    qryBrowserTERMINALID: TIntegerField;
    qryBrowserAMOUNT: TFloatField;
    qryBrowserSITEMID: TIntegerField;
    qryBrowserQUANTITY: TFloatField;
    qryBrowserREFSTR: TWideStringField;
    qryBrowserISAUTO: TBooleanField;
    qryBrowserISVOID: TBooleanField;
    qryBrowserBATCHNO: TIntegerField;
    qryBrowserUNITPRICE: TFloatField;
    qryBrowserTRANTIME: TDateTimeField;
    qryBrowserISTYPED: TBooleanField;
    qryBrowserLMerchant: TStringField;
    qryBrowserLStation: TStringField;
    qryBrowserLTerminal: TStringField;
    qryACardAllINACTIVEDATE: TDateTimeField;
    qryACardAllINACTIVEUSR: TIntegerField;
    qryACardAllINACTIVENOTES: TWideStringField;
    qryACardAllIGROUPID6: TIntegerField;
    qryACardAllIGROUPID7: TIntegerField;
    qryACardAllIGROUPID8: TIntegerField;
    qryACardAllIGROUPID9: TIntegerField;
    qryACardAllIGROUPID10: TIntegerField;
    qryACardAllCOSTCENTERID: TIntegerField;
    qryACardAllAcardCodeFull: TWideStringField;
    qryACardAllPending: TBooleanField;
    qryACardAllAcardCodeFull000: TWideStringField;
    qryACardAllCARDHASEMPNAME: TBooleanField;
    qryACardAllACARDCODENUM: TIntegerField;
    qryBrowserLSitem: TStringField;
    qryBrowser_Empty: TADOQuery;
    AutoIncField1: TAutoIncField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    FloatField1: TFloatField;
    IntegerField5: TIntegerField;
    FloatField2: TFloatField;
    WideStringField1: TWideStringField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    IntegerField6: TIntegerField;
    FloatField3: TFloatField;
    BooleanField3: TBooleanField;
    StringField4: TStringField;
    dsSItem: TDataSource;
    qryCustomer: TADOQuery;
    dtsCustomer: TDataSource;
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
    qryACardLCustomer: TStringField;
    qryBrowserLCustomer: TStringField;
    qryTranLCustomer: TStringField;
    qryVMST: TADOQuery;
    qryVMSTTerminalidTerminalCode: TWideStringField;
    qryVMSTStationName: TWideStringField;
    qryVMSTMerchantName: TWideStringField;
    qryVMSTMerchantSAPCode: TWideStringField;
    qryVMSTTerminalTerminalid: TIntegerField;
    qryVMSTStationStationId: TIntegerField;
    qryVMSTMerchantMerchantId: TIntegerField;
    qryVMSTMerchantInActive: TBooleanField;
    qryVMSTMerchantDeleted: TBooleanField;
    qryVMSTMerchantIsTest: TBooleanField;
    qryVMSTMerchantStopSales: TBooleanField;
    qryVMSTStationDeleted: TBooleanField;
    qryVMSTStationInActive: TBooleanField;
    qryVMSTStationStopSales: TBooleanField;
    qryVMSTMerchantMerchantCode: TWideStringField;
    qryVMSTStationStreet: TWideStringField;
    qryVMSTStationCity: TWideStringField;
    qryVMSTStationZIP: TWideStringField;
    qryVMSTMerchantAFM: TWideStringField;
    qryVMSTMerchantDOY: TWideStringField;
    dtsVMST: TDataSource;
    dxMemData1: TdxMemData;
    dxMemData1Terminal: TIntegerField;
    DataSource1: TDataSource;
    Procedure memStationNAMEChange(Sender: TField);
    Procedure DataModuleCreate(Sender: TObject);
    Procedure qryTranBeforePost(DataSet: TDataSet);
    Procedure qryTranNewRecord(DataSet: TDataSet);
    Procedure memACardACARDCODEChange(Sender: TField);
    procedure qryBrowserCalcFields(DataSet: TDataSet);
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure qryACardAllCalcFields(DataSet: TDataSet);
    procedure qryACardCalcFields(DataSet: TDataSet);
    procedure dtsTranStateChange(Sender: TObject);
  Private
    { Private declarations }
    Created: Boolean;
    Critical: Boolean;
    State: Integer; { 0=εισαγωγή, 1=μεταβολή... }
  Public
    { Public declarations }
    BrowseSqlInit: TStrings;
    Procedure DoInsert;
    Procedure DoUpdate;
    Procedure DoDelete;
    Procedure DoPost;
    Procedure UpdatePeriod;
    Function SaveIsAllowed: Boolean;
    Function CheckValidityOfCard(CardNo: Variant; PostDate: TDateTime): Boolean;
  End;

Implementation

Uses
  Controls, Dialogs, DMain, FMain;

{$R *.dfm}

Procedure TTranDM.DataModuleCreate(Sender: TObject);
Begin
  BrowseSqlInit      := TStringList.Create;
  BrowseSqlInit.Text := qryBrowser.SQL.Text;
  Critical           := false;
  Created            := false;
  DMCreate(TForm(self), 'qryBrowser');
  Created := True;
End;

Procedure TTranDM.DoInsert;
Begin
  Try
    // frmMain.DoCursorPush(crSQLWait);
    State := 0;

    qryTran.Insert;
    qryTranISAUTO.AsBoolean  := false;
    qryTranISTYPED.AsBoolean := True;
    qryTranBATCHNO.AsInteger := 0;

    // Try
    // Critical := true;
    // memStationNAME.AsString := qryStationNAME.AsString;
    // memACardACARDCODE.AsString := qryACardACARDCODE.AsString;
    // Finally
    // Critical := false;
    // End;
  Finally
    // frmMain.DoCursorPop;
  End;
End;

Procedure TTranDM.DoUpdate;
Begin
  Try
    // frmMain.DoCursorPush(crSQLWait);
    State := 1;

    qryTran.Edit;

    // Try
    // Critical := true;
    // memStationNAME.AsString := qryStationNAME.AsString;
    // memACardACARDCODE.AsString := qryACardACARDCODE.AsString;
    // Finally
    // Critical := false;
    // End;
  Finally
    // frmMain.DoCursorPop;
  End;
End;

procedure TTranDM.dtsTranStateChange(Sender: TObject);
var
  st: string;
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

Procedure TTranDM.qryTranBeforePost(DataSet: TDataSet);
var
  x0, y0, z0: Word;
Begin
  // !!!
  // if (State = 0) then qryTranISAUTO.AsBoolean := false;
  // GeneralDM.InsUpdFields(qryTranINSDT, qryTranUPDDT, qryTranINSUSR, qryTranUPDUSR);

  DecodeDate(qryTranTRANDATE.AsDateTime, x0, y0, z0);
  qryTranTRANPERIOD.AsInteger := (x0 * 100) + y0;
End;

Procedure TTranDM.qryTranNewRecord(DataSet: TDataSet);
Var
  Dt: TDateTime;
Begin
  Dt := Now;
  ReplaceTime(Dt, 0);
  qryTranTRANDATE.AsDateTime := Dt;
End;

Procedure TTranDM.DoDelete;
Begin
  { TODO : transaction control must be added }
  qryTran.Delete;
End;

Procedure TTranDM.DoPost;
var
  x0, y0, z0: Word;
Begin
  { TODO : transaction control must be added }
  { TODO -cVer 2 : Check for daily Enhm }
  { if qryTranPELADAILYUPD.AsBoolean then
    begin
    MessageDlg('Δεν μπορεί να γίνει ενημέρωση.Η Εγγραφή έχει αποσταλεί στο Κεντρικό Σύστημα.', mtError, [mbOK], 0);
    qryTran.Cancel;
    end
    else }
  begin
    DecodeDate(qryTranTRANDATE.AsDateTime, x0, y0, z0);
    qryTranTRANPERIOD.AsInteger := (x0 * 100) + y0;
    qryTran.Post;
  end;
End;

Procedure TTranDM.memStationNAMEChange(Sender: TField);
Begin
  // If (Critical = false) Then Begin
  // Try
  // Critical := true;
  // If (ZoomStation(TField(memStationNAME), TField(qryTranSTATIONID), false) <= 0) Then Abort
  // Finally
  // Critical := false;
  // End;
  // End;
End;

Procedure TTranDM.memACardACARDCODEChange(Sender: TField);
Begin
  // If (Critical = false) Then Begin
  // Try
  // Critical := true;
  // If (ZoomACard(TField(memACardACARDCODE), TField(qryTranACARDID), false) <= 0) Then Abort
  // Finally
  // Critical := false;
  // End;
  // End;
End;

Function TTranDM.SaveIsAllowed: Boolean;
Begin
  Result := True;
  If (Trunc(qryTranTRANDATE.AsDateTime) = 0) Or (qryTranACARDID.AsInteger = 0) Or (qryTranTERMINALID.AsInteger = 0) Or (qryTranSTATIONID.AsInteger = 0) Or
    (qryTranMERCHANTID.AsInteger = 0) Or (qryTranAMOUNT.AsFloat = 0) Or (qryTranSITEMID.AsInteger = 0) Or
  // Ποσότητα μόνο στα Καύσιμα Οχι MiniMarket Πλυντήριο
    ((qryTranQUANTITY.AsFloat = 0) And (qryTranSITEMID.AsInteger in [1, 2, 3, 4, 5, 6])) Then
    Result := false;
  Result   := True;
End;

procedure TTranDM.qryACardAllCalcFields(DataSet: TDataSet);
begin
  // if Not qryACardAllAcardCode.IsNull then
  // qryACardAllFullCardNo.AsString:=ReturnFullIdNo(qryACardAllAcardCode.AsInteger)
  // else
  // qryACardAllFullCardNo.AsString:='140528';
end;

procedure TTranDM.qryACardCalcFields(DataSet: TDataSet);
begin
  // if Not qryACardAcardCode.IsNull then
  // qryACard FullCardNo.AsString:=ReturnFullIdNo(qryACardAcardCode.AsInteger)
  // else
  // qryACardFullCardNo.AsString:='140528';

end;

procedure TTranDM.qryBrowserCalcFields(DataSet: TDataSet);
begin
  // QryBrowserFullCardNo.AsString:=ReturnFullIdNo(qryBrowserACARDID.AsInteger);
end;

procedure TTranDM.qryTranCalcFields(DataSet: TDataSet);
begin
  // QryTranFullCardNo.AsString:=GeneralDM.ReturnFullIdNo(qryTranAcardCode.AsInteger);
end;

procedure TTranDM.UpdatePeriod;
var
  x, y, z: Word;
begin
  qryTran.Active := True;
  qryTran.First;
  repeat
    qryTran.Edit;
    DecodeDate(qryTranTRANDATE.AsDateTime, x, y, z);
    qryTranTRANPERIOD.AsInteger := (x * 100) + y;
    qryTran.Post;
    qryTran.Next;
  until qryTran.Eof;

end;

function TTranDM.CheckValidityOfCard(CardNo: Variant; PostDate: TDateTime): Boolean;
var
  ErrorStat: Boolean;
begin
  ErrorStat           := false;
  qryBlackList.Active := True;

  if qryACardAll.Locate('ACARDID', CardNo, []) then
    begin
      if qryACardAllBLACKLISTBOOLEAN.AsBoolean = True then
        If MessageDlg('H κάρτα είναι σε Black List.' + #13 + #10 + 'Να γίνει καταχώρηση της Κίνησης.', mtError, [mbYes, mbNo], 0) = mrNo then
          ErrorStat := True;
      if qryACardAllISACTIVE.AsBoolean = false then
        If MessageDlg('H κάρτα δεν είναι ενεργή.' + #13 + #10 + 'Να γίνει καταχώρηση της Κίνησης.', mtError, [mbYes, mbNo], 0) = mrNo then
          ErrorStat := True;
      qryBlackList.First;
      repeat
        if ((qryBlackListFRDATE.AsDateTime - 1 <= PostDate) And (qryBlackListTODATE.AsDateTime + 1 >= PostDate)) then
          If MessageDlg('H κάρτα είναι σε Black List για το χρονικό Διάστημα.' + #13 + #10 + 'Να γίνει καταχώρηση της Κίνησης.', mtError, [mbYes, mbNo], 0) = mrNo then
            ErrorStat := True;
        qryBlackList.Next;
      until qryBlackList.Eof end
    else
      begin
        MessageDlg('Πρόβλημα σε εύρεση κάρτας,', mtError, [mbOK], 0);
        ErrorStat := True;
      end;

  Result := ErrorStat;
end;

End.
