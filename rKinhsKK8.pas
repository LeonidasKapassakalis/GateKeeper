unit rKinhsKK8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB, QRExport,
  QRWebFilt, QRPDFFilt, DMain, QRXMLSFilt;

type
  TrptKinhsKK8 = class(TrptBaseAvinCard)
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
    QRGroup0: TQRGroup;
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
    QRDBText1: TQRDBText;
    QRDBText7: TQRDBText;
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
    qryTranCustomerName: TStringField;
    qryTranCustomerAddress: TStringField;
    qryTranCustomerZip: TStringField;
    qryTranCustomerCity: TStringField;
    QRGroup1: TQRGroup;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRGFEmp: TQRBand;
    QRExpr5: TQRExpr;
    QRLabel9: TQRLabel;
    QRDBText9: TQRDBText;
    QRExpr6: TQRExpr;
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
    qryTranLEmp: TStringField;
    ADOQuery2LNameSur: TStringField;
    qryTranCustomerCustomerId: TIntegerField;
    qryTranACARDEMPLOYEESID: TIntegerField;
    qryTranTranSitemId: TIntegerField;
    qryTranACardACardCode: TWideStringField;
    qryTranAcardAcardCodeFull: TWideStringField;
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
    qryTranLSitemDescr: TStringField;
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
    qryACardINACTIVEDATE: TDateTimeField;
    qryACardINACTIVEUSR: TIntegerField;
    qryACardINACTIVENOTES: TWideStringField;
    qryACardIGROUPID6: TIntegerField;
    qryACardIGROUPID7: TIntegerField;
    qryACardIGROUPID8: TIntegerField;
    qryACardIGROUPID9: TIntegerField;
    qryACardIGROUPID10: TIntegerField;
    qryACardCOSTCENTERID: TIntegerField;
    qryACardAcardCodeFull: TWideStringField;
    qryACardPending: TBooleanField;
    qryTranLRegNo: TStringField;
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure ADOQuery2CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses FPrnTran;

{$R *.dfm}

procedure TrptKinhsKK8.QRExpr1Print(sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%m', [(strtofloat(Value))]);
  except
    Value := Value;
  end;
end;

procedure TrptKinhsKK8.QRExpr3Print(sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%m', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure TrptKinhsKK8.QRLabel17Print(sender: TObject; var Value: String);
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

procedure TrptKinhsKK8.QRExpr2Print(sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%.2f', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure TrptKinhsKK8.ADOQuery2CalcFields(DataSet: TDataSet);
begin
  inherited;
  ADOQuery2LNameSur.AsString := Trim(ADOQuery2SurName.AsString) + ' ' + Trim(ADOQuery2Name.AsString);
end;

end.
