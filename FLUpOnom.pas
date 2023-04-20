unit FLUpOnom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FBEnFormQ, DB, ADODB, Menus, ActnList, Grids, DBGrids, ComCtrls,
  ExtCtrls;

type
  TfrmLUpOnom = class(TfrmBEnFormQ)
    procedure FormGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses DMain;

{$R *.dfm}
// If to Display Rename Fields etc
{ TODO -cCheck : Check V3 }

procedure TfrmLUpOnom.FormGridDblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

end.
