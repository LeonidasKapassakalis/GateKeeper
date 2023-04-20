unit RTrCallDet1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, QRCtrls, DB, ADODB, QuickRpt, ExtCtrls, QRWebFilt,
  QRPDFFilt, QRExport, QRXMLSFilt;

type
  TrptTrCallDet1 = class(TrptBaseAvinCard)
    QRBand1: TQRBand;
    dtsTran: TDataSource;
    qryTrCallDet: TADOQuery;
    qryTrCallDetLStatus: TStringField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    qryTrCallDetLTrick: TStringField;
    qryTrCallDetStationName: TWideStringField;
    qryTrCallDetTerminalidTerminalCode: TWideStringField;
    qryTrCallDetMerchantName: TWideStringField;
    qryTrCallDetMerchantSAPCode: TWideStringField;
    qryTrCallDetTerminalTerminalid: TIntegerField;
    qryTrCallDetStationStationId: TIntegerField;
    qryTrCallDetMerchantMerchantId: TIntegerField;
    qryTrCallDetMerchantMerchantCode: TWideStringField;
    qryTrCallDetTRCALLDSTATUS: TIntegerField;
    qryTrCallDetTRCALLDDATE: TDateTimeField;
    qryTrCallDetTRCALLDSTATIONID: TIntegerField;
    QRDBText3: TQRDBText;
    procedure qryTrCallDetCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses DMain;

{$R *.dfm}

procedure TrptTrCallDet1.qryTrCallDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  case qryTrCallDetTRCALLDSTATUS.AsInteger of
    1:
      qryTrCallDetLStatus.AsString := 'OK';
    2:
      qryTrCallDetLStatus.AsString := 'Χωρίς Κινήσεις';
    3:
      qryTrCallDetLStatus.AsString := 'Χωρίς Επικοινωνία';
  end;
  qryTrCallDetLTrick.AsString := qryTrCallDetTRCALLDDATE.AsString + qryTrCallDetTRCALLDSTATUS.AsString;
end;

end.
