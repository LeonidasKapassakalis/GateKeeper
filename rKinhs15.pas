unit rKinhs15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, DB, ADODB, QRCtrls, QuickRpt, ExtCtrls, QRExport,
  QRWebFilt, QRPDFFilt, DMain, QRXMLSFilt;

type
  TrptKinhs15 = class(TrptBaseAvinCard)
    QRBand3: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
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
    QArea: TADOQuery;
    qryTranSitemId: TIntegerField;
    qryTranCountKinhs: TIntegerField;
    qryTranSumAmount: TFloatField;
    qryTranSumQuantity: TFloatField;
    qryTranLArea: TStringField;
    qryTranLSitem: TStringField;
    QRDBText3: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel6: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr1: TQRExpr;
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
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    qryTranPos6: TFloatField;
    qryTranAcc6: TFloatField;
    QRLabel8: TQRLabel;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QAreaArea00_Name: TWideStringField;
    QAreaArea01_Name: TWideStringField;
    QAreaArea02_Name: TWideStringField;
    QAreaArea03_Name: TWideStringField;
    QAreaArea02_Id: TIntegerField;
    QAreaArea03_Id: TIntegerField;
    QAreaArea01_Id: TIntegerField;
    QAreaArea00_Id: TIntegerField;
    QAreaWholeDescr: TWideStringField;
    qryTranQTMArea01_Id: TIntegerField;
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses FPrnTran;

{$R *.dfm}

procedure TrptKinhs15.QRLabel10Print(sender: TObject; var Value: String);
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

procedure TrptKinhs15.qryTranCalcFields(DataSet: TDataSet);
begin
  inherited;
  // case qryTranCodeInTerminal.AsInteger of
  // 1..3:begin
  // qryTranAcc1.AsFloat := qryTranSumAMOUNT.AsFloat;
  // qryTranPos1.AsFloat := qryTranSumQUANTITY.AsFloat;
  // end;
  // 4:begin
  // qryTranAcc2.AsFloat := qryTranSumAMOUNT.AsFloat;
  // qryTranPos2.AsFloat := qryTranSumQUANTITY.AsFloat;
  // end;
  // 5:begin
  // qryTranAcc3.AsFloat := qryTranSumAMOUNT.AsFloat;
  // qryTranPos3.AsFloat := qryTranSumQUANTITY.AsFloat;
  // end;
  // 6:begin
  // qryTranAcc4.AsFloat := qryTranSumAMOUNT.AsFloat;
  // qryTranPos4.AsFloat := 0;
  // end;
  // 7:begin
  // qryTranAcc5.AsFloat := qryTranSumAMOUNT.AsFloat;
  // qryTranPos5.AsFloat := 0;
  // end;
  // 8:begin
  // qryTranAcc6.AsFloat := qryTranSumAMOUNT.AsFloat;
  // qryTranPos6.AsFloat := qryTranSumQUANTITY.AsFloat;
  // end;
  // end;

end;

procedure TrptKinhs15.QRExpr2Print(sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%m', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure TrptKinhs15.QRExpr1Print(sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%.2f', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

end.
