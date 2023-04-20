unit rKinhs8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB, QRExport,
  QRWebFilt, QRPDFFilt, Common, QRXMLSFilt;

type
  TrptKinhs8 = class(TrptBaseAvinCard)
    dtsTran: TDataSource;
    qryTran: TADOQuery;
    qryTranSumAmount: TFloatField;
    qryTranSumQuantity: TFloatField;
    qryTranFullCardNo: TStringField;
    qryTranCountKinhs: TIntegerField;
    qryTranSITEMDESCR: TStringField;
    qryTranCustomerName: TStringField;
    qryTranREGNO: TStringField;
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
    QRGroup2: TQRGroup;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRGFCard: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel1: TQRLabel;
    QRFBCust: TQRBand;
    QRExpr3: TQRExpr;
    QRLabel2: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText7: TQRDBText;
    qryTranCustomerAddress: TStringField;
    qryTranCustomerZip: TStringField;
    qryTranCustomerCity: TStringField;
    QRLabel3: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel17: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr4: TQRExpr;
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
    qryTranCUSTOMERCUSTOMERId: TIntegerField;
    qryTranTranSitemId: TIntegerField;
    qryTranACardACardCode: TWideStringField;
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses DMain, FPrnTran;

{$R *.dfm}
{
  SELECT     Acard.CustomerId, [Tran].SitemId , ACardCode, COUNT(*) AS CountKinhs, SUM([TRAN].AMOUNT) AS SumAmount,
  SUM([TRAN].QUANTITY) AS SumQuantity
  FROM         STATION INNER JOIN
  CUSTOMER INNER JOIN
  ACARD INNER JOIN
  [TRAN] ON ACARD.ACARDID = [TRAN].ACARDID ON CUSTOMER.CUSTOMERID = ACARD.CUSTOMERID ON
  STATION.STATIONID = [TRAN].STATIONID INNER JOIN
  SITEM ON [TRAN].SITEMID = SITEM.SITEMID
}
// Group By  [CUSTOMER.CUSTOMERId], [Tran.SitemId] , [ACard.ACardCode]

procedure TrptKinhs8.qryTranCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryTranFullCardNo.AsString := ReturnFullIdNo(qryTranACardACardCode.AsInteger);
end;

procedure TrptKinhs8.QRExpr1Print(sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%m', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure TrptKinhs8.QRExpr3Print(sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%m', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure TrptKinhs8.QRLabel17Print(sender: TObject; var Value: String);
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

procedure TrptKinhs8.QRExpr2Print(sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%.2f', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

end.
