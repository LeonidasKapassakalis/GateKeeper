unit RKinhs12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB, QRExport,
  QRWebFilt, QRPDFFilt, DMain, QRXMLSFilt;

type
  TrptKinhs12 = class(TrptBaseAvinCard)
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
    QStation: TADOQuery;
    qrgfDate: TQRBand;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QCustomer: TADOQuery;
    qrghDate: TQRGroup;
    QRLabel5: TQRLabel;
    QRDBText9: TQRDBText;
    QRFBStation: TQRBand;
    QRDBText6: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    qryTranStationSTATIONID: TIntegerField;
    qryTranCustomerCUSTOMERID: TIntegerField;
    qryTranTRANSITEMID: TIntegerField;
    qryTranSumQuantity: TFloatField;
    qryTranSumAmount: TFloatField;
    qryTranCountKinhs: TIntegerField;
    // Calc Fields
    qryTranAcc1: TFloatField;
    qryTranAcc2: TFloatField;
    qryTranAcc3: TFloatField;
    qryTranAcc4: TFloatField;
    qryTranAcc5: TFloatField;
    qryTranAcc6: TFloatField;
    qryTranAcc7: TFloatField;
    qryTranAcc8: TFloatField;
    qryTranAcc9: TFloatField;
    qryTranAcc10: TFloatField;
    qryTranPos1: TFloatField;
    qryTranPos2: TFloatField;
    qryTranPos3: TFloatField;
    qryTranPos4: TFloatField;
    qryTranPos5: TFloatField;
    qryTranPos6: TFloatField;
    qryTranPos7: TFloatField;
    qryTranPos8: TFloatField;
    qryTranPos9: TFloatField;
    qryTranPos10: TFloatField;
    qryTranKm1: TIntegerField;
    qryTranKm2: TIntegerField;
    qryTranKm3: TIntegerField;
    qryTranKm4: TIntegerField;
    qryTranKm5: TIntegerField;
    qryTranKm6: TIntegerField;
    qryTranKm7: TIntegerField;
    qryTranKm8: TIntegerField;
    qryTranKm9: TIntegerField;
    qryTranKm10: TIntegerField;
    qryIGroup: TADOQuery;
    qryIGroupId: TAutoIncField;
    qryIGroupName: TWideStringField;
    qryIGroupBITNO: TIntegerField;
    qryIGroupPOSOSTO: TFloatField;
    qryIGroupInsUsr: TIntegerField;
    qryIGroupInsDT: TDateTimeField;
    qryIGroupUpdUsr: TIntegerField;
    qryIGroupUpdDT: TDateTimeField;
    qryIGroupDeleted: TBooleanField;
    qryIGroupDelUsr: TIntegerField;
    qryIGroupDelDT: TDateTimeField;
    qryIGroupInActive: TBooleanField;
    qryIGroupInActiveUsr: TIntegerField;
    qryIGroupInActiveDt: TDateTimeField;
    qryIGroupUseKM: TBooleanField;
    qryIGroupUseQuantity: TBooleanField;
    qryIGroupCalcCons: TBooleanField;
    QStationStationid: TAutoIncField;
    QStationName: TWideStringField;
    QStationSTREET: TWideStringField;
    QStationZIP: TWideStringField;
    QStationCITY: TWideStringField;
    QStationAreaId: TIntegerField;
    QStationSalesMenId: TIntegerField;
    QStationIGroupId1: TIntegerField;
    QStationPososto1: TFloatField;
    QStationHaveGroup1: TBooleanField;
    QStationIGroupId2: TIntegerField;
    QStationPososto2: TFloatField;
    QStationHaveGroup2: TBooleanField;
    QStationIGroupId3: TIntegerField;
    QStationPososto3: TFloatField;
    QStationHaveGroup3: TBooleanField;
    QStationIGroupId4: TIntegerField;
    QStationPososto4: TFloatField;
    QStationHaveGroup4: TBooleanField;
    QStationIGroupId5: TIntegerField;
    QStationPososto5: TFloatField;
    QStationHaveGroup5: TBooleanField;
    QStationIGroupId6: TIntegerField;
    QStationPososto6: TFloatField;
    QStationHaveGroup6: TBooleanField;
    QStationIGroupId7: TIntegerField;
    QStationPososto7: TFloatField;
    QStationHaveGroup7: TBooleanField;
    QStationIGroupId8: TIntegerField;
    QStationPososto8: TFloatField;
    QStationHaveGroup8: TBooleanField;
    QStationIGroupId9: TIntegerField;
    QStationPososto9: TFloatField;
    QStationHaveGroup9: TBooleanField;
    QStationIGroupId10: TIntegerField;
    QStationPososto10: TFloatField;
    QStationHaveGroup10: TBooleanField;
    QStationDeleted: TBooleanField;
    QStationDelUsr: TIntegerField;
    QStationDelDT: TDateTimeField;
    QStationInActive: TBooleanField;
    QStationInActiveUsr: TIntegerField;
    QStationInActiveDt: TDateTimeField;
    QStationStopSales: TBooleanField;
    QStationStopSalesUsr: TIntegerField;
    QStationStopSalesDt: TDateTimeField;
    QStationIsTest: TBooleanField;
    QStationIsTestUsr: TIntegerField;
    QStationIsTestDt: TDateTimeField;
    QStationEndPending: TBooleanField;
    QStationEndPendingDT: TDateTimeField;
    QStationEndPendingUsr: TIntegerField;
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
    qryTranStationId: TIntegerField;
    qryTranCustomerId: TIntegerField;
    qryTranLStationName: TStringField;
    qryTranLCustomerName: TStringField;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    qryTranSITEMIGROUPID: TIntegerField;
    qrySItemMINPRICE: TFloatField;
    qrySItemMAXPRICE: TFloatField;
    qrySItemCHECKPRICE: TBooleanField;
    qrySItemDeleted: TBooleanField;
    qrySItemDelUsr: TIntegerField;
    qrySItemDelDT: TDateTimeField;
    qrySItemInActive: TBooleanField;
    qrySItemInActiveUsr: TIntegerField;
    qrySItemInActiveDt: TDateTimeField;
    qryTranLSitemDesc: TStringField;
    qryTranLStationAddress: TStringField;
    qryTranLStationCity: TStringField;
    qryTranLStationZip: TStringField;
    ChildBand1: TQRChildBand;
    ChildBand2: TQRChildBand;
    ChildBand3: TQRChildBand;
    ChildBand4: TQRChildBand;
    ChildBand5: TQRChildBand;
    ChildBand6: TQRChildBand;
    ChildBand7: TQRChildBand;
    ChildBand8: TQRChildBand;
    ChildBand9: TQRChildBand;
    ChildBand10: TQRChildBand;
    ChildBand11: TQRChildBand;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr24: TQRExpr;
    QRExpr25: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr28: TQRExpr;
    QRExpr29: TQRExpr;
    QRExpr30: TQRExpr;
    QRExpr31: TQRExpr;
    QRExpr32: TQRExpr;
    QRExpr33: TQRExpr;
    QRExpr34: TQRExpr;
    QRExpr35: TQRExpr;
    QRExpr36: TQRExpr;
    QRExpr37: TQRExpr;
    QRLabel6: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    // Calc Fields
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure QRDBTextMoneyPrint(Sender: TObject; var Value: String);
    procedure QRExprPosotPrint(Sender: TObject; var Value: String);
    procedure QRLabel12Print(Sender: TObject; var Value: String);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRLabel13Print(Sender: TObject; var Value: string);
    procedure ChildBand11AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand6AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRDBText4Print(Sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    PrnBand: array [1 .. 10] of Boolean;
    procedure IntReport;
    procedure InternalSt;
  end;

var
  rptKinhs12: TrptKinhs12;

implementation

uses FPrnTran;

{$R *.dfm}

procedure TrptKinhs12.QuickRepBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  // Leonidas 2013
  // QRImage1.Picture.Assign(QRACardLogo.Picture);
end;

procedure TrptKinhs12.qryTranCalcFields(DataSet: TDataSet);
var
  Category: string;
  CategoryV: Variant;
  FldAcc, FldPos, FldKm: TField;
  UpDKm, UpdPos: Boolean;
begin
  inherited;
  qryTranStationId.Value  := qryTranStationSTATIONID.Value;
  qryTranCustomerId.Value := qryTranCustomerCUSTOMERID.Value;

  Category  := qryTranSITEMIGROUPID.AsString;
  CategoryV := qryTranSITEMIGROUPID.AsVariant;
  if qryIGroup.Locate('Id', CategoryV, []) then
    begin
      UpDKm  := qryIGroupUseKM.AsBoolean;
      UpdPos := qryIGroupUseQuantity.AsBoolean;
    end
  else
    begin
      UpDKm  := False;
      UpdPos := False;
    end;

  FldAcc := DataSet.FieldByName('Acc' + Category);
  FldPos := DataSet.FieldByName('Pos' + Category);
  FldKm  := DataSet.FieldByName('Km' + Category);
  if Assigned(FldAcc) then
    begin
      FldAcc.AsFloat := qryTranSumAmount.AsFloat;
      if UpdPos then
        FldPos.AsFloat := qryTranSumQuantity.AsFloat;
      // if UpDKm then
      // FldKm.AsInteger:= qryTranTRANKMAFTER.AsInteger - qryTranTranKMBEFORE.AsInteger;
    end;


  // if qryTranSumAmount.AsFloat > 0 then
  // PrnBand[StrToInt(Category)] := True;

end;

procedure TrptKinhs12.ChildBand11AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
var
  x: Integer;
begin
  inherited;
  for x        := 1 to 10 do
    PrnBand[x] := False;
end;

procedure TrptKinhs12.ChildBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var
  x: Integer;
begin
  inherited;
  PrintBand := PrnBand[Sender.Tag];
end;

procedure TrptKinhs12.InternalSt;
var
  x: Integer;
begin
  for x        := 1 to 10 do
    PrnBand[x] := False;
end;

procedure TrptKinhs12.IntReport;
var
  x: Integer;
begin
  // for x := 1  to 10 do
  // PrnBand[x] := False;
  qryIGroup.Active := True;
  qrySItem.Active  := True;
  QStation.Active  := True;
  QCustomer.Active := True;

end;

procedure TrptKinhs12.QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  if qryTranSumAmount.AsFloat > 0 then
    PrnBand[qryTranSITEMIGROUPID.AsInteger] := True;
end;

procedure TrptKinhs12.QRBand6AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  inherited;
  InternalSt;
  if qryTranSumAmount.AsFloat > 0 then
    PrnBand[qryTranSITEMIGROUPID.AsInteger] := True;
end;

procedure TrptKinhs12.QRDBText4Print(Sender: TObject; var Value: string);
begin
  inherited;
  try
    Value := format('%.2f', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure TrptKinhs12.QRDBTextMoneyPrint(Sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%m', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure TrptKinhs12.QRExprPosotPrint(Sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%.2f', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure TrptKinhs12.QRLabel12Print(Sender: TObject; var Value: String);
begin
  inherited;
  if self.Owner is TfrmPrnTran then
    if TfrmPrnTran(self.Owner).ToDate > 0 then
      Value := 'Κινήσεις έως ' + datetostr(TfrmPrnTran(self.Owner).ToDate)
    else
      Value := ' '
  else
    Value := ' ';
end;

procedure TrptKinhs12.QRLabel13Print(Sender: TObject; var Value: string);
var
  x: Variant;
begin
  inherited;
  x := TQRLabel(Sender).Tag;
  if qryIGroup.Locate('Id', x, []) then
    Value := qryIGroupName.AsString;
end;

end.
