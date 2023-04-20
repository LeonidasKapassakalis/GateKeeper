unit FViewPdf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, AcroPDFLib_TLB;
// PdfLib_TLB, AcroPDFLib_TLB;

type
  TfrmViewPdf = class(TForm)
    AcroPDF1: TAcroPDF;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmViewPdf: TfrmViewPdf;

implementation

{$R *.dfm}

end.
