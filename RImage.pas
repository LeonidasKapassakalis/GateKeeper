unit RImage;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB;

type
  TrepImage = class(TQuickRep)
    QRBand1: TQRBand;
    QRImage1: TQRImage;
  private

  public

  end;

implementation

uses DMain;

{$R *.DFM}

end.
