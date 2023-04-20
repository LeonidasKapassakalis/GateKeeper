unit RBaseAdo;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, DMain, ADODB,
  QRExport, QRWebFilt, QRXMLSFilt, QRPDFFilt, QRXLSXFilt;

type
  TrptBaseAdo = class(TQuickRep)
    ADOQuery1: TADOQuery;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRWMFFilter1: TQRWMFFilter;
    QrBFooter: TQRBand;
    QrBHeader: TQRBand;
    QRSysData4: TQRSysData;
    QRSysData5: TQRSysData;
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRXMLSSFilter1: TQRXMLSSFilter;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
  public
  end;

implementation

{$R *.DFM}

procedure TrptBaseAdo.QuickRepBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  DMain.GreekPrint(Sender AS TQuickRep);
end;

end.
