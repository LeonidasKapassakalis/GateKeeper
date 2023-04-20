unit rDailyReport;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB, QRExport,
  QRWebFilt, QRPDFFilt, Common, QRXMLSFilt, RBaseAdo, QRNewXLSXFilt, QRXLSXFilt;

type
  TrptDailyReport = class(TrptBaseAdo)
    QRGroup2: TQRGroup;
    QRDBText8: TQRDBText;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRSubDetail1: TQRSubDetail;
    QRDBRichText2: TQRDBRichText;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRSysData3: TQRSysData;
    ADOQuery1id: TIntegerField;
    ADOQuery1RepDate: TDateTimeField;
    ADOQuery1AA: TIntegerField;
    ADOQuery1RepText: TBlobField;
    ADOQuery1InsUsr: TIntegerField;
    ADOQuery1InsDT: TDateTimeField;
    ADOQuery1InUsr: TIntegerField;
    DataSource1: TDataSource;
    AdoQuery2: TADOQuery;
    AdoQuery2id: TIntegerField;
    AdoQuery2RepDate: TDateTimeField;
    AdoQuery2AA: TIntegerField;
    AdoQuery2RepText: TBlobField;
    AdoQuery2InsUsr: TIntegerField;
    AdoQuery2InsDT: TDateTimeField;
    AdoQuery2InUsr: TIntegerField;
    DataSource2: TDataSource;
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
  private

  public

  end;

implementation

uses DMain, FPrnTran;

{$R *.DFM}

procedure TrptDailyReport.QRExpr2Print(sender: TObject; var Value: String);
begin
  Value := format('%m', [(strtofloat(Value))]);
end;

procedure TrptDailyReport.QRExpr3Print(sender: TObject; var Value: String);
begin
  Value := format('%f', [(strtofloat(Value))]);
end;

procedure TrptDailyReport.QRExpr1Print(sender: TObject; var Value: String);
begin
  Value := format('%m', [(strtofloat(Value))]);
end;

procedure TrptDailyReport.QRLabel8Print(sender: TObject; var Value: String);
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
