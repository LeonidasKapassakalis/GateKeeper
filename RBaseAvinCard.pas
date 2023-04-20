unit RBaseAvinCard;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, QRExport, QRWebFilt,
  QRPDFFilt, Vcl.Dialogs, QRXMLSFilt;

type
  TrptBaseAvinCard = class(TQuickRep)
    QRBPF: TQRBand;
    QRSysData3: TQRSysData;
    QRGrHead: TQRGroup;
    QRACardLogo: TQRImage;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand6: TQRBand;
    QRSysData6: TQRSysData;
    QRACardLogo1: TQRImage;
    QRSysData7: TQRSysData;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRWMFFilter1: TQRWMFFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRHTMLFilter1: TQRHTMLFilter;
    QRXMLSFilter1: TQRXMLSFilter;
  private

  public

  end;

var
  rptBaseAvinCard: TrptBaseAvinCard;

implementation

{$R *.DFM}

end.
