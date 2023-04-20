unit rKinhsKK3;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB,
  RBaseAvinCard, QRExport, QRWebFilt, QRPDFFilt, QRXMLSFilt, DMain;

type
  TrptKinhsKK3 = class(TrptBaseAvinCard)
    dtsTran: TDataSource;
    qryTran: TADOQuery;
    QRGroup2: TQRGroup;
    QRDBText8: TQRDBText;
    QRBand2: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand3: TQRBand;
    QRExpr1: TQRExpr;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand4: TQRBand;
    QRExpr2: TQRExpr;
    QRDBText9: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
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
    qryTranEMPLOYEESNAME: TWideStringField;
    qryTranEMPLOYEESMhtrId: TIntegerField;
    qryTranEMPLOYEESSurName: TWideStringField;
    qryTranEMPLOYEESAddress: TWideStringField;
    qryTranEMPLOYEESTK: TWideStringField;
    qryTranEMPLOYEESTOWN: TWideStringField;
    qryTranEMPLOYEESAFM: TWideStringField;
    qryTranEMPLOYEESDOY: TWideStringField;
    qryTranEMPLOYEESSendPrint: TBooleanField;
    qryTranEMPLOYEESSendMail: TBooleanField;
    qryTranEMPLOYEESMailAddr: TWideStringField;
    qryTranCostCenterCCName: TWideStringField;
    qryTranCostCenterCCNameFull: TWideStringField;
    qryTranAcardAcardCodeFull: TWideStringField;
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
  private

  public

  end;

implementation

uses FPrnTran;

{$R *.DFM}

procedure TrptKinhsKK3.qryTranCalcFields(DataSet: TDataSet);
begin
  // qryTranLNameSur.AsString   := qryTranCUSTOMERNAME.AsString + ' - ' + qryTranEMPSURNAME.AsString;
end;

procedure TrptKinhsKK3.QRExpr2Print(sender: TObject; var Value: String);
begin
  try
    Value := format('%m', [(strtofloat(Value))]);
  except
    Value := Value;
  end;
end;

procedure TrptKinhsKK3.QRLabel17Print(sender: TObject; var Value: String);
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
