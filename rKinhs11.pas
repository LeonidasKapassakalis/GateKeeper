unit rKinhs11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, DB, ADODB, QRCtrls, QuickRpt, ExtCtrls, QRExport,
  QRWebFilt, QRPDFFilt, DMain, QRXMLSFilt;

type
  TrptKinhs11 = class(TrptBaseAvinCard)
    dtsTran: TDataSource;
    qryTran: TADOQuery;
    QStation: TADOQuery;
    qryTranStationDescr: TStringField;
    QRBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    qrghDate: TQRGroup;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    qrgfStation: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    qrgfDate: TQRBand;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    qryTranStationTK: TStringField;
    qryTranStationAddress: TStringField;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText10: TQRDBText;
    qryTranStationCity: TStringField;
    qryTranSTATIONSTATIONID: TIntegerField;
    qryTranTRANTRANDATE: TDateTimeField;
    qryTranTRANSITEMID: TIntegerField;
    qryTranSITEMDESCR: TWideStringField;
    qryTranSumQuantity: TFloatField;
    qryTranSumAmount: TFloatField;
    qryTranCountKinhs: TIntegerField;
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
    qryTranStationName: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure QRDBText5Print(Sender: TObject; var Value: String);
    procedure QRDBText4Print(Sender: TObject; var Value: String);
    procedure QRLabel10Print(Sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptKinhs11: TrptKinhs11;

implementation

uses FPrnTran;

{$R *.dfm}

procedure TrptKinhs11.QuickRepBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  // QRImage1.Picture.Assign(QRACardLogo.Picture);
end;

procedure TrptKinhs11.QRDBText5Print(Sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%m', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure TrptKinhs11.QRDBText4Print(Sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%.2f', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure TrptKinhs11.QRLabel10Print(Sender: TObject; var Value: String);
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
