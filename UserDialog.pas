unit UserDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TUserDialog = class(TForm)
    edt1: TEdit;
    procedure edt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    UserName: string;
    function Execute: Boolean;
  end;

implementation

{$R *.dfm}

procedure TUserDialog.edt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    ModalResult := mrOk;
  if Key = VK_ESCAPE then
    ModalResult := mrCancel;
end;

function TUserDialog.Execute: Boolean;
begin
  Result   := (ShowModal = mrOk);
  UserName := edt1.Text;
end;

end.
