unit RImport;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, QRWebFilt, QRExport, QRPDFFilt,
  QRXLSXFilt;

type
  TrptImport = class(TQuickRep)
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand2: TQRBand;
    QRSysData1: TQRSysData;
    QRBand3: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRXMLSSFilter1: TQRXMLSSFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRWMFFilter1: TQRWMFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRHTMLFilter1: TQRHTMLFilter;
    procedure QRDBText5Print(sender: TObject; var Value: String);
  private

  public

  end;

var
  rptImport: TrptImport;

implementation

uses ImportStd;

{$R *.DFM}

procedure TrptImport.QRDBText5Print(sender: TObject; var Value: String);
begin
  if Value = '1' then
    Value := 'Σταθμοί με Κινήσεις';
  if Value = '2' then
    Value := 'Σταθμοί χωρίς Κινήσεις';
  if Value = '3' then
    Value := 'Σταθμοί χωρίς Επικοινωνία';
end;

end.
