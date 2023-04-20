unit rKinhs16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, DB, ADODB, QRCtrls, QuickRpt, ExtCtrls, QRExport,
  QRWebFilt, QRPDFFilt, DMain, QRXMLSFilt;

type
  Trptkinhs16 = class(TrptBaseAvinCard)
    QRBand3: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    dtsTran: TDataSource;
    qryTran: TADOQuery;
    qrySItem: TADOQuery;
    QCustomer: TADOQuery;
    QRLabel10: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    qryTranLCustomer: TStringField;
    QRLabel1: TQRLabel;
    QRBand1: TQRBand;
    QRExpr4: TQRExpr;
    QRExpr3: TQRExpr;
    qryTranLSitem: TStringField;
    qryTranCounter: TIntegerField;
    qryTranCUSTOMERCustomerId: TIntegerField;
    qryTranTranSitemId: TIntegerField;
    qryTranCountKinhs: TIntegerField;
    qryTranSumAmount: TFloatField;
    qryTranSumQuantity: TFloatField;
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
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QRExpr4Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure QRBand1BeforePrint(sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRGrHeadBeforePrint(sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    Counter: Integer;
  end;

implementation

uses FPrnTran;

{$R *.dfm}

procedure Trptkinhs16.QRExpr3Print(sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%m', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure Trptkinhs16.QRExpr4Print(sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%.2f', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure Trptkinhs16.QRLabel10Print(sender: TObject; var Value: String);
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

procedure Trptkinhs16.qryTranCalcFields(DataSet: TDataSet);
begin
  inherited;
  Counter := Counter + 1;
end;

procedure Trptkinhs16.QRBand1BeforePrint(sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if qryTran.Eof then
    begin
      PrintBand := True;
    end
  else if Counter > 2 then
    begin
      PrintBand := True;
    end
  else
    begin
      PrintBand := False;
      QRExpr4.Reset;
      QRExpr3.Reset;
    end;
  Counter := 0;
end;

procedure Trptkinhs16.QRGrHeadBeforePrint(sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  Counter         := 0;
  QRBand1.Enabled := True;
end;

end.
