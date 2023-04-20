unit FDispImage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Menus, RImage;

type
  TfrmDispImage = class(TForm)
    Image1: TImage;
    PopupMenu1: TPopupMenu;
    actPrint: TMenuItem;
    actStrech: TMenuItem;
    procedure actPrintClick(Sender: TObject);
    procedure actStrechClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmDispImage.actPrintClick(Sender: TObject);
var
  rpt: TrepImage;
begin
  rpt := TrepImage.Create(self);
  rpt.QRImage1.Picture.Assign(Image1.Picture);
  rpt.QRImage1.Stretch := Image1.Stretch;
  rpt.PreviewModal;
  rpt.Free;
end;

procedure TfrmDispImage.actStrechClick(Sender: TObject);
begin
  Image1.Stretch := Not Image1.Stretch;
end;

end.
