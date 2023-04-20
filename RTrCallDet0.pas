unit RTrCallDet0;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, DB, ADODB, QRCtrls, QuickRpt, ExtCtrls, QRWebFilt,
  QRPDFFilt, QRExport, QRXMLSFilt;

type
  TrptTrCallDet0 = class(TrptBaseAvinCard)
    dtsTran: TDataSource;
    qryTrCallDet: TADOQuery;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    qryTrCallDetLStatus: TStringField;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
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
    QRDBText4: TQRDBText;
    procedure qryTrCallDetCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses DMain;

{$R *.dfm}

procedure TrptTrCallDet0.qryTrCallDetCalcFields(DataSet: TDataSet);
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

end;

end.
