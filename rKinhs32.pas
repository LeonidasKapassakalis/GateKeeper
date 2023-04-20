unit rKinhs32;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB, jpeg,
  RBaseAvinCard, QRExport, QRWebFilt, QRPDFFilt, DMain,
  QRXMLSFilt;

type
  TrptKinhs32 = class(TrptBaseAvinCard)
    dtsTran: TDataSource;
    qryTran: TADOQuery;
    qryTranFullCardNo: TStringField;
    QRGroup2: TQRGroup;
    QRDBText8: TQRDBText;
    QRBand2: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand3: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    qryTranAcc1: TFloatField;
    qryTranAcc2: TFloatField;
    qryTranAcc3: TFloatField;
    qryTranAcc4: TFloatField;
    qryTranAcc5: TFloatField;
    qryTranAcc6: TFloatField;
    qryTranPos1: TFloatField;
    qryTranPos2: TFloatField;
    qryTranPos3: TFloatField;
    qryTranPos4: TFloatField;
    qryTranPos5: TFloatField;
    qryTranPos6: TFloatField;
    qryTranKm1: TIntegerField;
    qryTranKm2: TIntegerField;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRLabel13: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRExpr24: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr25: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr23: TQRExpr;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRDBText11: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr27: TQRExpr;
    qryTranDis1: TFloatField;
    qryTranDis2: TFloatField;
    qryTranDis3: TFloatField;
    qryTranDis4: TFloatField;
    qryTranDis5: TFloatField;
    qryTranDis6: TFloatField;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    qryTranRes1: TFloatField;
    qryTranRes2: TFloatField;
    qryTranRes3: TFloatField;
    qryTranRes4: TFloatField;
    qryTranRes5: TFloatField;
    qryTranRes6: TFloatField;
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
    QRDBText14: TQRDBText;
    QRLabel27: TQRLabel;
    QRExpr28: TQRExpr;
    QRExpr29: TQRExpr;
    QRExpr30: TQRExpr;
    QRExpr31: TQRExpr;
    qryTranKm6: TIntegerField;
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QEmployeesCalcFields(DataSet: TDataSet);
  private

  public

  end;

implementation

uses FPrnTran;

{$R *.DFM}

procedure TrptKinhs32.qryTranCalcFields(DataSet: TDataSet);
begin
  // qryTranFullCardNo.AsString:=GeneralDM.ReturnFullIdNo(qryTranAcardCode.AsInteger);
  case qryTranSITEMIGROUPID.AsInteger of
    1:
      begin
        if qryTranTRANDiscountUPD.AsBoolean = True then
          begin
            qryTranDis1.AsFloat := qryTranTRANDisAmount.AsFloat;
            qryTranRes1.AsFloat := qryTranTRANAmount.AsFloat - qryTranTRANDisAmount.AsFloat;
          end;
        qryTranAcc1.AsFloat  := qryTranTRANAmount.AsFloat;
        qryTranPos1.AsFloat  := qryTranTRANQuantity.AsFloat;
        qryTranKm1.AsInteger := qryTranTRANKMAFTER.AsInteger - qryTranTRANKMBEFORE.AsInteger;
      end;
    2:
      begin
        if qryTranTRANDiscountUPD.AsBoolean = True then
          begin
            qryTranDis2.AsFloat := qryTranTRANDisAmount.AsFloat;
            qryTranRes2.AsFloat := qryTranTRANAmount.AsFloat - qryTranTRANDisAmount.AsFloat;
          end;
        qryTranAcc2.AsFloat  := qryTranTRANAmount.AsFloat;
        qryTranPos2.AsFloat  := qryTranTRANQuantity.AsFloat;
        qryTranKm2.AsInteger := qryTranTRANKMAFTER.AsInteger - qryTranTRANKMBEFORE.AsInteger;
      end;
    3:
      begin
        if qryTranTRANDiscountUPD.AsBoolean = True then
          begin
            qryTranDis3.AsFloat := qryTranTRANDisAmount.AsFloat;
            qryTranRes3.AsFloat := qryTranTRANAmount.AsFloat - qryTranTRANDisAmount.AsFloat;
          end;
        qryTranAcc3.AsFloat := qryTranTRANAmount.AsFloat;
        qryTranPos3.AsFloat := qryTranTRANQuantity.AsFloat;
      end;
    4:
      begin
        if qryTranTRANDiscountUPD.AsBoolean = True then
          begin
            qryTranDis4.AsFloat := qryTranTRANDisAmount.AsFloat;
            qryTranRes4.AsFloat := qryTranTRANAmount.AsFloat - qryTranTRANDisAmount.AsFloat;
          end;
        qryTranAcc4.AsFloat := qryTranTRANAmount.AsFloat;
        qryTranPos4.AsFloat := 0;
      end;
    5:
      begin
        if qryTranTRANDiscountUPD.AsBoolean = True then
          begin
            qryTranDis5.AsFloat := qryTranTRANDisAmount.AsFloat;
            qryTranRes5.AsFloat := qryTranTRANAmount.AsFloat - qryTranTRANDisAmount.AsFloat;
          end;
        qryTranAcc5.AsFloat := qryTranTRANAmount.AsFloat;
        qryTranPos5.AsFloat := 0;
      end;
    6:
      begin
        if qryTranTRANDiscountUPD.AsBoolean = True then
          begin
            qryTranDis6.AsFloat := qryTranTRANDisAmount.AsFloat;
            qryTranRes6.AsFloat := qryTranTRANAmount.AsFloat - qryTranTRANDisAmount.AsFloat;
          end;
        qryTranAcc6.AsFloat  := qryTranTRANAmount.AsFloat;
        qryTranPos6.AsFloat  := qryTranTRANQuantity.AsFloat;
        qryTranKm6.AsInteger := qryTranTRANKMAFTER.AsInteger - qryTranTRANKMBEFORE.AsInteger;
      end;
  end;
end;

procedure TrptKinhs32.QRExpr1Print(sender: TObject; var Value: String);
begin
  try
    Value := format('%m', [(strtofloat(Value))]);
  except
    Value := Value;
  end;
end;

procedure TrptKinhs32.QRExpr2Print(sender: TObject; var Value: String);
begin
  try
    Value := format('%.2f', [(strtofloat(Value))]);
  except
    Value := Value;
  end;
end;

procedure TrptKinhs32.QRLabel17Print(sender: TObject; var Value: String);
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

procedure TrptKinhs32.QEmployeesCalcFields(DataSet: TDataSet);
begin
  inherited;
  // QEmployeesFullName.AsString := Trim(QEmployeesSurName.AsString) + ' ' +
  // Trim(QEmployeesName.AsString);
end;

end.
