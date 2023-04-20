unit RKinhsMisth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB, QRExport,
  QRWebFilt, QRPDFFilt, DMain, QRXMLSFilt;

type
  TrptKinhsMisth = class(TrptBaseAvinCard)
    dtsTran: TDataSource;
    QRBDetail: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRExpr1: TQRExpr;
    QRLabel8: TQRLabel;
    qryTran: TADOQuery;
    qryTranSUMAMOUNT: TFloatField;
    qryTranSUMDISAMOUNT: TFloatField;
    qryTranSUMQUANTITY: TFloatField;
    qryTranLName: TStringField;
    qryTranLSurName: TStringField;
    qEmployees: TADOQuery;
    qEmployeesId: TAutoIncField;
    qEmployeesCustomerId: TIntegerField;
    qEmployeesMhtrId: TIntegerField;
    qEmployeesName: TWideStringField;
    qEmployeesSurName: TWideStringField;
    qEmployeesAddress: TWideStringField;
    qEmployeesTK: TWideStringField;
    qEmployeesTown: TWideStringField;
    qEmployeesAFM: TWideStringField;
    qEmployeesDOY: TWideStringField;
    qEmployeesYpokId: TIntegerField;
    qryTranEmployeesMhtrId: TIntegerField;
    qryTranCustomerCustomerId: TAutoIncField;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses FEnhmEmployees;

{$R *.dfm}

procedure TrptKinhsMisth.QRDBText4Print(sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%m', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure TrptKinhsMisth.QRDBText5Print(sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%.2f', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

end.
