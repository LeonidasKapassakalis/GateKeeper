unit rKinhsKK88;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB, QRExport, DConsum,
  QRWebFilt, QRPDFFilt, QRXMLSFilt;

type
  TrptKinhsKK88 = class(TrptBaseAvinCard)
    dtsTran: TDataSource;
    qryTran: TADOQuery;
    qrySItem: TADOQuery;
    qrySItemSITEMID: TAutoIncField;
    qrySItemDESCR: TWideStringField;
    qrySItemIGROUPID: TIntegerField;
    qrySItemICLASSID: TIntegerField;
    qrySItemPOSOSTO: TFloatField;
    qrySItemCODEINTERMINAL: TIntegerField;
    qrySItemINSDT: TDateTimeField;
    qrySItemUPDDT: TDateTimeField;
    qrySItemINSUSR: TIntegerField;
    qrySItemUPDUSR: TIntegerField;
    QCustomer: TADOQuery;
    ADOQuery1: TADOQuery;
    ADOQuery1REGNOSEQID: TAutoIncField;
    ADOQuery1REGNO: TWideStringField;
    QRGHEmp: TQRGroup;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRFBCust: TQRBand;
    QRExpr3: TQRExpr;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel17: TQRLabel;
    QRExpr4: TQRExpr;
    qryTranCountKinhs: TIntegerField;
    qryTranSumAmount: TFloatField;
    qryTranSumQuantity: TFloatField;
    qryTranCustomerName: TStringField;
    qryTranCustomerAddress: TStringField;
    qryTranCustomerZip: TStringField;
    qryTranCustomerCity: TStringField;
    QRGHKK: TQRGroup;
    qryTranLEmp: TStringField;
    QRGFEmp: TQRBand;
    QRExpr7: TQRExpr;
    QRLabel11: TQRLabel;
    QRDBText11: TQRDBText;
    QRExpr8: TQRExpr;
    QRDBText13: TQRDBText;
    qryTranACARDVTYPEID: TIntegerField;
    QRDBText1: TQRDBText;
    QRGFKK: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel10: TQRLabel;
    QRExpr2: TQRExpr;
    QRDBText9: TQRDBText;
    ADOQuery2: TADOQuery;
    ADOQuery2Id: TAutoIncField;
    ADOQuery2CustomerId: TIntegerField;
    ADOQuery2MhtrId: TIntegerField;
    ADOQuery2Name: TWideStringField;
    ADOQuery2SurName: TWideStringField;
    ADOQuery2Address: TWideStringField;
    ADOQuery2TK: TWideStringField;
    ADOQuery2Town: TWideStringField;
    ADOQuery2AFM: TWideStringField;
    ADOQuery2DOY: TWideStringField;
    ADOQuery2YpokId: TIntegerField;
    ADOQuery2SendPrint: TBooleanField;
    ADOQuery2SendMail: TBooleanField;
    ADOQuery2MailAddr: TWideStringField;
    ADOQuery2LNameSur: TStringField;
    ADOQuery3: TADOQuery;
    ADOQuery3VTYPEID: TAutoIncField;
    ADOQuery3DESCR: TWideStringField;
    ADOQuery3INSDT: TDateTimeField;
    ADOQuery3UPDDT: TDateTimeField;
    ADOQuery3INSUSR: TIntegerField;
    ADOQuery3UPDUSR: TIntegerField;
    qryTranLVType: TStringField;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    qryTranLCL: TFloatField;
    qryTranLCE: TFloatField;
    qryTranLKM: TIntegerField;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    qryTranLCnt: TIntegerField;
    QRDBText15: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRGHSi: TQRGroup;
    QRDBText16: TQRDBText;
    QRGFSi: TQRBand;
    QRExpr10: TQRExpr;
    QRLabel14: TQRLabel;
    QRExpr11: TQRExpr;
    QRDBText17: TQRDBText;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRDBText18: TQRDBText;
    ADOQuery4: TADOQuery;
    ADOQuery4SITEMID: TAutoIncField;
    ADOQuery4DESCR: TWideStringField;
    ADOQuery4IGROUPID: TIntegerField;
    ADOQuery4ICLASSID: TIntegerField;
    ADOQuery4POSOSTO: TFloatField;
    ADOQuery4CODEINTERMINAL: TIntegerField;
    ADOQuery4INSDT: TDateTimeField;
    ADOQuery4UPDDT: TDateTimeField;
    ADOQuery4INSUSR: TIntegerField;
    ADOQuery4UPDUSR: TIntegerField;
    ADOQuery4MINPRICE: TFloatField;
    ADOQuery4MAXPRICE: TFloatField;
    ADOQuery4CHECKPRICE: TBooleanField;
    qryTranLSi: TIntegerField;
    qryTranCustomerCustomerId: TIntegerField;
    qryTranAcardEmployeesid: TIntegerField;
    qryTranTranSitemId: TIntegerField;
    qryTranAcardACardId: TIntegerField;
    qryTranAcardAcardCodeFull: TWideStringField;
    qryTranACARDREGNO: TWideStringField;
    QCustomerCUSTOMERID: TAutoIncField;
    QCustomerNAME: TWideStringField;
    QCustomerSTREET: TWideStringField;
    QCustomerZIP: TWideStringField;
    QCustomerCITY: TWideStringField;
    QCustomerAFM: TWideStringField;
    QCustomerDOY: TWideStringField;
    QCustomerSTARTDATE: TDateTimeField;
    QCustomerAREAID: TIntegerField;
    QCustomerLOCATIONID: TIntegerField;
    QCustomerCGROUPID: TIntegerField;
    QCustomerCCLASSID: TIntegerField;
    QCustomerCREDITAMOUNT: TFloatField;
    QCustomerINSDT: TDateTimeField;
    QCustomerUPDDT: TDateTimeField;
    QCustomerINSUSR: TIntegerField;
    QCustomerUPDUSR: TIntegerField;
    QCustomerPROFESSION: TWideStringField;
    QCustomerBRANCHID: TIntegerField;
    QCustomerSAPCODE: TWideStringField;
    QCustomerISACTIVE: TBooleanField;
    QCustomerSALESMENID: TIntegerField;
    QCustomerDIAKID: TIntegerField;
    QCustomerISTEST: TBooleanField;
    QCustomerISCONS: TBooleanField;
    QCustomerAREABID: TIntegerField;
    QCustomerDATEPHEND: TDateTimeField;
    QCustomerDATELOEND: TDateTimeField;
    QCustomerHASDETAILEMP: TBooleanField;
    QCustomerALLCARDSTOBL: TBooleanField;
    QCustomerALLCARDSTOBLDATE: TDateTimeField;
    QCustomerALLCARDSTOBLSYSDATE: TDateTimeField;
    QCustomerALLCARDSTOBLUSR: TIntegerField;
    QCustomerCUSTOMEROFF: TBooleanField;
    QCustomerCUSTOMEROFFDATE: TDateTimeField;
    QCustomerCUSTOMEROFFSYSDATE: TDateTimeField;
    QCustomerCUSTOMEROFFUSR: TIntegerField;
    QCustomerCARDHASEMPNAME: TBooleanField;
    QCustomerDATEEND: TDateTimeField;
    QCustomerCompanyTypeId: TIntegerField;
    QCustomerGarantieId: TIntegerField;
    QCustomerGarantieAmount: TFloatField;
    QCustomerComments: TMemoField;
    qryTranLSitem: TStringField;
    qryTranLCalculated: TBooleanField;
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure ADOQuery2CalcFields(DataSet: TDataSet);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRExpr12Print(sender: TObject; var Value: String);
    procedure QRExpr13Print(sender: TObject; var Value: String);
  private
    { Private declarations }
    ArrGroups: Array [1 .. 10] of String;
    DM: TDMConsum;
  public
    FromDate: TDateTime;
    ToDate: TDateTime;
    EnhmMonth: Integer;
    EnhmYear: Integer;
    EnhmFile: Boolean;
    KatanStr: String;

    CntMO: Integer;
    procedure StartSt;
    procedure InitCons;
  end;

implementation

uses FPrnTranEmp; // , PrnStat ;

{$R *.dfm}

procedure TrptKinhsKK88.qryTranCalcFields(DataSet: TDataSet);
var
  CL, CE: Real;
  KM: Integer;
  SText: String;
begin
  if qryTranLCalculated.AsBoolean = True then
    Exit;
  CL := 0;
  CE := 0;
  KM := 0;
  if qryTranTranSitemId.AsInteger in [1, 2, 3, 4, 5, 9] then
    if DM.ReturnConsumptionGroup(qryTranAcardACardId.AsInteger, FromDate, ToDate, qryTranLSi.AsInteger, CL, CE, KM, SText) then
      begin
        qryTranLCL.Value             := CL;
        qryTranLCE.Value             := CE;
        qryTranLKM.Value             := KM;
        qryTranLCnt.Value            := 1;
        qryTranLCalculated.AsBoolean := True;
      end
    else
      begin
        qryTranLCnt.Value            := 0;
        qryTranLCalculated.AsBoolean := True;
      end
  else
    begin
      qryTranLCnt.Value            := 0;
      qryTranLCalculated.AsBoolean := True;
    end;

end;

procedure TrptKinhsKK88.QRExpr1Print(sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%m', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure TrptKinhsKK88.QRExpr3Print(sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%m', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure TrptKinhsKK88.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  if self.Owner is TfrmPrnTranEmp then
    if TfrmPrnTranEmp(self.Owner).ToDate > 0 then
      Value := 'Κινήσεις έως ' + datetostr(TfrmPrnTranEmp(self.Owner).ToDate)
    else
      Value := ' '
  else
    Value := ' ';
end;

procedure TrptKinhsKK88.QRExpr2Print(sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%.2f', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure TrptKinhsKK88.ADOQuery2CalcFields(DataSet: TDataSet);
begin
  inherited;
  ADOQuery2LNameSur.AsString := ADOQuery2SurName.AsString + ' ' + ADOQuery2Name.AsString;
end;

procedure TrptKinhsKK88.StartSt;
var
  D0, M0, Y0, D1, M1, Y1: Word;
begin
  inherited;

  DM := TDMConsum.Create(self);

  if self.Owner is TfrmPrnTranEmp then
    begin
      if TfrmPrnTranEmp(self.Owner).ToDate > 0 then
        ToDate := TfrmPrnTranEmp(self.Owner).ToDate;
      if TfrmPrnTranEmp(self.Owner).FrDate > 0 then
        FromDate := TfrmPrnTranEmp(self.Owner).FrDate;
    end;
  { TODO -cCheck : Check }
  // if self.Owner is TfrmPrnStat then
  // begin
  // if TfrmPrnStat(Self.Owner).ToDateSt > 0 then
  // ToDate  :=TfrmPrnStat(Self.Owner).ToDateSt;
  // if TfrmPrnStat(Self.Owner).FrDateSt > 0 then
  // FromDate:=TfrmPrnStat(Self.Owner).FrDateSt;
  // end;

  if self.Owner is TfrmPrnTranEmp then
    begin
      KatanStr := 'Κατανάλωση από ' + datetostr(TfrmPrnTranEmp(self.Owner).FrDateSt) + ' έως ' + datetostr(TfrmPrnTranEmp(self.Owner).ToDateSt)
    end
  else
    KatanStr := '';

  if self.Owner is TfrmPrnTranEmp then
    begin
      if TfrmPrnTranEmp(self.Owner).ToDateSt > 0 then
        ToDate := TfrmPrnTranEmp(self.Owner).ToDateSt;
      if TfrmPrnTranEmp(self.Owner).FrDateSt > 0 then
        FromDate := TfrmPrnTranEmp(self.Owner).FrDateSt;
    end;

  DecodeDate(FromDate, Y0, M0, D0);
  DecodeDate(ToDate, Y1, M1, D1);

  if ((Y0 = Y1) and (M0 = M1)) then
    begin
      EnhmFile  := FALSE;
      EnhmMonth := M0;
      EnhmYear  := Y0;
    end
  { TODO -cCheck : Check }
  // else
  // begin
  // EnhmFile:=False;
  // MessageDlg('Δεν θα ενημερωθεί το αρχείο Καταναλώσεων', mtInformation, [mbOK], 0);
  // end;
  //
  // if EnhmFile then
  // if MessageDlg('Να ενημρωθεί το αρχείο Καταναλώσεων', mtConfirmation, [mbYes,mbNo], 0)= mrNo then
  // EnhmFile:=False;
  //
  // GeneralDM.tblIGroup.First;
  // repeat
  // ArrGroups[GeneralDM.tblIGroupIGROUPID.AsInteger]:=GeneralDM.tblIGroupDESCR.AsString;
  // GeneralDM.tblIGroup.Next;
  // until GeneralDM.tblIGroup.Eof;
  //
end;

procedure TrptKinhsKK88.QRLabel9Print(sender: TObject; var Value: String);
begin
  inherited;
  if KatanStr > ' ' then
    Value := KatanStr
  else
    Value := '';
end;

procedure TrptKinhsKK88.QRExpr12Print(sender: TObject; var Value: String);
begin
  inherited;
  try
    CntMO := strtoint(Value)
  except
    CntMO := 0
  end;
  Value := ''
end;

procedure TrptKinhsKK88.QRExpr13Print(sender: TObject; var Value: String);
var
  MOEur: Real;
  MOLt: Real;
begin
  inherited;
  if CntMO > 0 then
    begin
      MOEur := strtofloat(Value);
      MOLt  := MOEur / CntMO;
      Value := format('%f', [MOLt]);
    end
  else
    begin
      Value := '';
    end;
end;

procedure TrptKinhsKK88.InitCons;
var
  CL, CE: Real;
  KM: Integer;
  SText: String;
begin
  DM.ReturnConsumptionGroup(4096, 40700, 40750, 1, CL, CE, KM, SText);
end;

end.
