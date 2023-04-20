unit rKinhs3Mer;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB, Vcl.Dialogs,
  RBaseAvinCard, QRExport, DMain, Common, QRWebFilt, QRPDFFilt, QRXMLSFilt;

type
  TrptKinhs3Mer = class(TrptBaseAvinCard)
    dtsTran: TDataSource;
    qryTran: TADOQuery;
    qrySItem: TADOQuery;
    QRGroup2: TQRGroup;
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
    qrySItemSITEMID: TAutoIncField;
    qrySItemDescr: TWideStringField;
    qrySItemIGROUPID: TIntegerField;
    qrySItemICLASSID: TIntegerField;
    qrySItemPososto: TFloatField;
    qrySItemCODEINTERMINAL: TIntegerField;
    qrySItemMINPRICE: TFloatField;
    qrySItemMAXPRICE: TFloatField;
    qrySItemCHECKPRICE: TBooleanField;
    qrySItemInsUsr: TIntegerField;
    qrySItemInsDT: TDateTimeField;
    qrySItemUpdUsr: TIntegerField;
    qrySItemUpdDT: TDateTimeField;
    qrySItemDeleted: TBooleanField;
    qrySItemDelUsr: TIntegerField;
    qrySItemDelDT: TDateTimeField;
    qrySItemInActive: TBooleanField;
    qrySItemInActiveUsr: TIntegerField;
    qrySItemInActiveDt: TDateTimeField;
    qryTranTRANKMBEFORE: TIntegerField;
    qryTranTRANKMAFTER: TIntegerField;
    qryTranTRANREFSTR: TWideStringField;
    qryTranTRANUNITPRICE: TFloatField;
    qryTranSITEMCODEINTERMINAL: TIntegerField;
    qryTranSITEMDESCR: TWideStringField;
    qryTranSITEMIGROUPID: TIntegerField;
    qryTranIGROUPNAME: TWideStringField;
    qryTranFullCardNo: TStringField;
    QRDBText15: TQRDBText;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRGroup1: TQRGroup;
    QRLabel3: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText12: TQRDBText;
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRExpr4Print(sender: TObject; var Value: string);
  private

  public

  end;

implementation

uses FPrnTran;

{$R *.DFM}

procedure TrptKinhs3Mer.qryTranCalcFields(DataSet: TDataSet);
begin
  qryTranFullCardNo.AsString := ReturnFullIdNo(qryTranACARDACARDCODE.AsInteger);
end;

procedure TrptKinhs3Mer.QRExpr2Print(sender: TObject; var Value: String);
begin
  try
    Value := format('%m', [(strtofloat(Value))]);
  except
    Value := Value;
    // MessageDlg('Leo', mtCustom, [mbOK], 0);
  end;
end;

procedure TrptKinhs3Mer.QRExpr4Print(sender: TObject; var Value: string);
begin
  inherited;
  try
    Value := format('%.2f', [(strtofloat(Value))]);
  except
    Value := Value;
    // MessageDlg('Leo', mtCustom, [mbOK], 0);
  end;
end;

procedure TrptKinhs3Mer.QRLabel17Print(sender: TObject; var Value: String);
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
