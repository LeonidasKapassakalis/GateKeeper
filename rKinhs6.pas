unit rKinhs6;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls, Common,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB, jpeg,
  RBaseAvinCard, QRExport, QRWebFilt, QRPDFFilt, QRXMLSFilt;

type
  TrptKinhs6 = class(TrptBaseAvinCard)
    QRGroup2: TQRGroup;
    QRDBText8: TQRDBText;
    QRBand2: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    dtsTran: TDataSource;
    qryTran: TADOQuery;
    qryTranFullCardNo: TStringField;
    qryTranAcc1: TFloatField;
    qryTranAcc2: TFloatField;
    qryTranAcc3: TFloatField;
    qryTranAcc4: TFloatField;
    qryTranAcc5: TFloatField;
    qryTranPos1: TFloatField;
    qryTranPos2: TFloatField;
    qryTranPos3: TFloatField;
    qryTranPos4: TFloatField;
    qryTranPos5: TFloatField;
    QRDBText6: TQRDBText;
    QRFBCust: TQRBand;
    QRLabel3: TQRLabel;
    QRExpr4: TQRExpr;
    QRDBText5: TQRDBText;
    QRFBPRAT: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr14: TQRExpr;
    QRLabel2: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRExpr5: TQRExpr;
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel15: TQRLabel;
    qryTranMerchantMerchantId: TIntegerField;
    qryTranMerchantName: TWideStringField;
    qryTranMerchantStreet: TWideStringField;
    qryTranMerchantZip: TWideStringField;
    qryTranMerchantCity: TWideStringField;
    qryTranMerchantAFM: TWideStringField;
    qryTranMerchantDOY: TWideStringField;
    qryTranMerchantIsTest: TBooleanField;
    qryTranMerchantAreaId: TIntegerField;
    qryTranMerchantSAPCode: TWideStringField;
    qryTranMerchantMerchantCode: TWideStringField;
    qryTranMerchantSalesMenId: TIntegerField;
    qryTranMerchantDeleted: TBooleanField;
    qryTranMerchantInActive: TBooleanField;
    qryTranMerchantStopSales: TBooleanField;
    qryTranStationStationId: TIntegerField;
    qryTranStationName: TWideStringField;
    qryTranStationStreet: TWideStringField;
    qryTranStationZIP: TWideStringField;
    qryTranStationCity: TWideStringField;
    qryTranStationAreaId: TIntegerField;
    qryTranStationSalesMenId: TIntegerField;
    qryTranStationDeleted: TBooleanField;
    qryTranStationInActive: TBooleanField;
    qryTranStationStopSales: TBooleanField;
    qryTranTerminalTerminalCode: TWideStringField;
    qryTranTerminalTerminalId: TIntegerField;
    qryTranTerminalSerialNo: TWideStringField;
    qryTranCUSTOMERCUSTOMERId: TIntegerField;
    qryTranCUSTOMERName: TWideStringField;
    qryTranCUSTOMERZip: TWideStringField;
    qryTranCUSTOMERStreet: TWideStringField;
    qryTranCUSTOMERCity: TWideStringField;
    qryTranCUSTOMERAFM: TWideStringField;
    qryTranCUSTOMERDOY: TWideStringField;
    qryTranCUSTOMERAreaId: TIntegerField;
    qryTranCUSTOMERCGroupId: TIntegerField;
    qryTranCUSTOMERCClassId: TIntegerField;
    qryTranCUSTOMERBranchId: TIntegerField;
    qryTranCUSTOMERSAPCode: TWideStringField;
    qryTranCUSTOMERIsActive: TBooleanField;
    qryTranCUSTOMERSalesMenId: TIntegerField;
    qryTranCUSTOMERIsTest: TBooleanField;
    qryTranCUSTOMERAreaBId: TIntegerField;
    qryTranCUSTOMERHASDETAILEMP: TBooleanField;
    qryTranCUSTOMERCUSTOMEROFF: TBooleanField;
    qryTranTRANTRANDATE: TDateTimeField;
    qryTranTRANACARDID: TIntegerField;
    qryTranTRANMerchantId: TIntegerField;
    qryTranTRANStationId: TIntegerField;
    qryTranTRANTerminalId: TIntegerField;
    qryTranTRANAmount: TFloatField;
    qryTranTRANSitemId: TIntegerField;
    qryTranTRANQuantity: TFloatField;
    qryTranTRANIsAuto: TBooleanField;
    qryTranTRANStationUPD: TBooleanField;
    qryTranTRANACARDUPD: TBooleanField;
    qryTranTRANIsVoid: TBooleanField;
    qryTranTRANBatchNo: TIntegerField;
    qryTranTRANCommissionUpd: TBooleanField;
    qryTranTRANStationUPDBT: TIntegerField;
    qryTranTRANAcardUPDBT: TIntegerField;
    qryTranTRANCommissionUPDBT: TIntegerField;
    qryTranTRANTranTime: TDateTimeField;
    qryTranTRANIsTyped: TBooleanField;
    qryTranTRANDiscountUPD: TBooleanField;
    qryTranTRANDiscountUPDBT: TIntegerField;
    qryTranTRANDisQuantity: TFloatField;
    qryTranTRANDisAmount: TFloatField;
    qryTranTRANPelaDailyUPD: TBooleanField;
    qryTranTRANPelaDailyUPDBT: TIntegerField;
    qryTranACARDACARDID: TIntegerField;
    qryTranACARDACARDCODE: TWideStringField;
    qryTranACARDCustimerId: TIntegerField;
    qryTranACARDVTypeId: TIntegerField;
    qryTranACARDREGNO: TWideStringField;
    qryTranACARDACARDHOLDER: TWideStringField;
    qryTranACARDIsActive: TBooleanField;
    qryTranACARDEMPLOYEESID: TIntegerField;
    qryTranACARDCostCenterId: TIntegerField;
    qryTranVTYPEVTYPEID: TIntegerField;
    qryTranVTYPEDescr: TWideStringField;
    qryTranREGNOSEQREGNOSEQID: TIntegerField;
    qryTranREGNOSEQREGNO: TWideStringField;
    qryTranTRANTRANID: TIntegerField;
    qryTranTRANKMBEFORE: TIntegerField;
    qryTranTRANKMAFTER: TIntegerField;
    qryTranTRANREFSTR: TWideStringField;
    qryTranTRANUNITPRICE: TFloatField;
    qryTranSITEMCODEINTERMINAL: TIntegerField;
    qryTranSITEMDESCR: TWideStringField;
    qryTranSITEMIGROUPID: TIntegerField;
    qryTranIGROUPNAME: TWideStringField;
    QRDBText13: TQRDBText;
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRExpr4Print(Sender: TObject; var Value: String);
    procedure QRExpr9Print(Sender: TObject; var Value: String);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRLabel17Print(Sender: TObject; var Value: String);
  private
    FPrintDetail: Boolean;
  public
    procedure SetPrintDetail(PrnDet: Boolean);
    property PrintDetail: Boolean read FPrintDetail write SetPrintDetail;
  end;

implementation

uses DMain, FPrnTran;

{$R *.DFM}

procedure TrptKinhs6.SetPrintDetail(PrnDet: Boolean);
begin
  FPrintDetail := PrnDet;
end;

procedure TrptKinhs6.qryTranCalcFields(DataSet: TDataSet);
begin
  qryTranFullCardNo.AsString := ReturnFullIdNo(qryTranACARDACARDCODE.AsInteger);
  case qryTranSITEMIGROUPID.AsInteger of
    1:
      begin
        qryTranAcc1.AsFloat := qryTranTRANAmount.AsFloat;
        qryTranPos1.AsFloat := qryTranTRANQuantity.AsFloat;
      end;
    2:
      begin
        qryTranAcc2.AsFloat := qryTranTRANAmount.AsFloat;
        qryTranPos2.AsFloat := qryTranTRANQuantity.AsFloat;
      end;
    3:
      begin
        qryTranAcc3.AsFloat := qryTranTRANAmount.AsFloat;
        qryTranPos3.AsFloat := qryTranTRANQuantity.AsFloat;
      end;
    4:
      begin
        qryTranAcc4.AsFloat := qryTranTRANAmount.AsFloat;
        qryTranPos4.AsFloat := qryTranTRANQuantity.AsFloat;
      end;
    5:
      begin
        qryTranAcc5.AsFloat := qryTranTRANAmount.AsFloat;
        qryTranPos5.AsFloat := qryTranTRANQuantity.AsFloat;
      end;
  end;
end;

procedure TrptKinhs6.QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if PrintDetail = false then
    TQRCustomBand(Sender).Height := 0;
  // PrintBand:=PrintDetail;
end;

procedure TrptKinhs6.QRExpr4Print(Sender: TObject; var Value: String);
begin
  try
    Value := format('%m', [(strtofloat(Value))]);
  except
    Value := '-';
  end;

end;

procedure TrptKinhs6.QRExpr9Print(Sender: TObject; var Value: String);
begin
  try
    Value := format('%.2f', [(strtofloat(Value))]);
  except
    Value := '-';
  end;
end;

procedure TrptKinhs6.QRGroup2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if PrintDetail = false then
    TQRCustomBand(Sender).Height := 0;
end;

procedure TrptKinhs6.QRLabel17Print(Sender: TObject; var Value: String);
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

end.
