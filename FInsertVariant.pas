unit FInsertVariant;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FBForm, StdCtrls, ExtCtrls, Menus, ActnList, ComCtrls;

type
  TfrmInsertVariant = class(TfrmBForm)
    Bevel1: TBevel;
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    cmdOK: TAction;
    cmdCancel: TAction;
    N1: TMenuItem;
    N2: TMenuItem;
    Edit2: TEdit;
    Edit1: TEdit;
    Panel1: TPanel;
    Button2: TButton;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure cmdOKExecute(Sender: TObject);
    procedure cmdCancelExecute(Sender: TObject);
  private
    FPPerig: String;
    procedure SetPName(const Value: String);
    Function GetPName: String;
    procedure SetPPerig(const Value: String);
    Function GetPPerig: String;
    { Private declarations }
  public
    property PPerig: String read GetPPerig write SetPPerig;
    property PName: String read GetPName write SetPName;
  end;

implementation

{$R *.DFM}

procedure TfrmInsertVariant.cmdOKExecute(Sender: TObject);
begin
  inherited;
  if Edit1.Text > '' then
    self.ModalResult := mrOK;
end;

procedure TfrmInsertVariant.cmdCancelExecute(Sender: TObject);
begin
  inherited;
  self.ModalResult := mrCancel;
end;

procedure TfrmInsertVariant.SetPName(const Value: String);
begin
  Edit1.Text := Value;
end;

function TfrmInsertVariant.GetPName: String;
begin
  Result := Edit1.Text;
end;

procedure TfrmInsertVariant.SetPPerig(const Value: String);
begin
  Edit2.Text := Value;
end;

function TfrmInsertVariant.GetPPerig: String;
begin
  Result := Edit2.Text;
end;

end.
