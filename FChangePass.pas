unit FChangePass;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, ADODB;

type
  TfrmChangePass = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Query1: TADOQuery;
    Query2: TADOQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses DMain;

{$R *.DFM}

procedure TfrmChangePass.Button1Click(Sender: TObject);
begin
if not (Edit2.Text = Edit3.Text) then
begin
    MessageDlg('Νέο Password διάφορο από την Επανάληψη του', mtError,[mbOk], 0);
    exit;
end;
Query2.Active:=False;
Query1.Parameters.ParamByName('NFPass_Pass').Value  :=Edit2.Text;
Query1.Parameters.ParamByName('PFPass_Pass').Value  :=Edit1.Text;
Query1.Parameters.ParamByName('PFPass_Login').Value :=DMain.LoginName;

Query2.Parameters.ParamByName('PFPass_Pass').Value  :=Edit1.Text;
Query2.Parameters.ParamByName('PFPass_Login').Value :=DMain.LoginName;
Query2.Active:=True;
if Query2.IsEmpty then
  begin
    MessageDlg('Λάθος παλαιό Password.', mtError,[mbOk], 0);
    self.ModalResult:=mrAbort;
  end
else
  begin
    Query1.ExecSQL;
    MessageDlg('Αλλαγή Password Ολοκληρώθηκε.'+chr(13)+'Εξόδος από το σύστημα.', mtInformation,[mbOk], 0);
    self.ModalResult:=mrAbort;
  end;
end;

end.
