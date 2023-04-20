unit FPassword;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfrmPassword = class(TForm)
	edName: TEdit;
	edPass: TEdit;
	edPassConf: TEdit;
	Label1: TLabel;
	Label2: TLabel;
	Label3: TLabel;
	btnOk: TButton;
	btnCancel: TButton;
	cbLevel: TComboBox;
	Label4: TLabel;
	procedure FormCreate(Sender: TObject);
  private
  public
  end;

implementation

uses
	Globals;

{$R *.DFM}

procedure TfrmPassword.FormCreate(Sender: TObject);
var
	n : TUserRight;
begin
	for n := urGuest to urAdmin do
		cbLevel.Items.AddObject( AccessLevelToStr( n ), TObject(n) );
	cbLevel.ItemIndex := 0;
end;

end.
