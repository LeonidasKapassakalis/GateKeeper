unit FDialogWEdit;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Mask;

type
  TFrmDialogWEdit = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
  private
    { Private declarations }
  public
    constructor CreateWParams(aowner: TComponent; Text: String; Value: Integer; Caption: String);
    function ExecDialogWEdit(var Value: Integer): TModalResult;
  end;

var
  FrmDialogWEdit: TFrmDialogWEdit;

implementation

{$R *.DFM}
{ TFrmDialogWEdit }

constructor TFrmDialogWEdit.CreateWParams(aowner: TComponent; Text: String; Value: Integer; Caption: String);
begin
  Create(aowner);
  Label1.Caption := Text;
  MaskEdit1.Text := inttostr(Value);
  self.Caption   := Caption;
end;

function TFrmDialogWEdit.ExecDialogWEdit(var Value: Integer): TModalResult;
begin
  self.ShowModal;
  try
    Value := strtoint(MaskEdit1.Text);
  except
    Value := -1
  end;
  result := self.ModalResult;
  self.Destroy;
end;

end.
