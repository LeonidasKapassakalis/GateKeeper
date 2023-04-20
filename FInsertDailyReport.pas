unit FInsertDailyReport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FBForm, StdCtrls, ExtCtrls, Menus, ActnList, ComCtrls,
  DSubParams, Vcl.DBCtrls;

type
  TfrmInsertDailyReport = class(TfrmBForm)
    Bevel1: TBevel;
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    cmdOK: TAction;
    cmdCancel: TAction;
    N1: TMenuItem;
    N2: TMenuItem;
    Panel1: TPanel;
    Button2: TButton;
    Button1: TButton;
    Label1: TLabel;
    DateLBL: TLabel;
    VersionLBL: TLabel;
    PopupMenu1: TPopupMenu;
    cmdFont1: TMenuItem;
    MenuItem1: TMenuItem;
    cmdIncFont1: TMenuItem;
    cmdDecFont1: TMenuItem;
    MenuItem2: TMenuItem;
    cmdFont10: TAction;
    cmdIncFont10: TAction;
    cmdDecFont10: TAction;
    FontDialog1: TFontDialog;
    DBRichEdit1: TDBRichEdit;
    procedure cmdOKExecute(Sender: TObject);
    procedure cmdCancelExecute(Sender: TObject);
    procedure cmdFont10Execute(Sender: TObject);
    procedure cmdIncFont10Execute(Sender: TObject);
    procedure cmdDecFont10Execute(Sender: TObject);
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



procedure TfrmInsertDailyReport.cmdFont10Execute(Sender: TObject);
begin
  inherited;
  FontDialog1.Font.CharSet:=(TDBRichEdit(PopupMenu1.PopupComponent)).SelAttributes.CharSet;
  FontDialog1.Font.Height :=(TDBRichEdit(PopupMenu1.PopupComponent)).SelAttributes.Height;
  FontDialog1.Font.Color  :=(TDBRichEdit(PopupMenu1.PopupComponent)).SelAttributes.Color;
  FontDialog1.Font.Style  :=(TDBRichEdit(PopupMenu1.PopupComponent)).SelAttributes.Style;
  FontDialog1.Font.Pitch  :=(TDBRichEdit(PopupMenu1.PopupComponent)).SelAttributes.Pitch;
  FontDialog1.Font.Size   :=(TDBRichEdit(PopupMenu1.PopupComponent)).SelAttributes.Size;
  FontDialog1.Font.Name   :=(TDBRichEdit(PopupMenu1.PopupComponent)).SelAttributes.Name;

if FontDialog1.Execute then
  begin
  (TDBRichEdit(PopupMenu1.PopupComponent)).SelAttributes.CharSet:=FontDialog1.Font.CharSet;
  (TDBRichEdit(PopupMenu1.PopupComponent)).SelAttributes.Height :=FontDialog1.Font.Height;
  (TDBRichEdit(PopupMenu1.PopupComponent)).SelAttributes.Color  :=FontDialog1.Font.Color;
  (TDBRichEdit(PopupMenu1.PopupComponent)).SelAttributes.Style  :=FontDialog1.Font.Style;
  (TDBRichEdit(PopupMenu1.PopupComponent)).SelAttributes.Pitch  :=FontDialog1.Font.Pitch;
  (TDBRichEdit(PopupMenu1.PopupComponent)).SelAttributes.Size   :=FontDialog1.Font.Size;
  (TDBRichEdit(PopupMenu1.PopupComponent)).SelAttributes.Name   :=FontDialog1.Font.Name;
  end;

end;

procedure TfrmInsertDailyReport.cmdIncFont10Execute(Sender: TObject);
begin
  inherited;
if PopupMenu1.PopupComponent is TRichEdit then
 (TDBRichEdit(PopupMenu1.PopupComponent)).SelAttributes.Size:=  (TDBRichEdit(PopupMenu1.PopupComponent)).SelAttributes.Size + 2;
end;

procedure TfrmInsertDailyReport.cmdDecFont10Execute(Sender: TObject);
begin
  inherited;
if PopupMenu1.PopupComponent is TRichEdit then
 (TDBRichEdit(PopupMenu1.PopupComponent)).SelAttributes.Size:=  (TDBRichEdit(PopupMenu1.PopupComponent)).SelAttributes.Size - 2;
end;


procedure TfrmInsertDailyReport.cmdOKExecute(Sender: TObject);
begin
  inherited;
  if DBRichEdit1.Text > '' then
    self.ModalResult := mrOK;
end;

procedure TfrmInsertDailyReport.cmdCancelExecute(Sender: TObject);
begin
  inherited;
  self.ModalResult := mrCancel;
end;

procedure TfrmInsertDailyReport.SetPName(const Value: String);
begin
  DBRichEdit1.Text := Value;
end;

function TfrmInsertDailyReport.GetPName: String;
begin
  Result := DBRichEdit1.Text;
end;

procedure TfrmInsertDailyReport.SetPPerig(const Value: String);
begin
  DBRichEdit1.Text := Value;
end;

function TfrmInsertDailyReport.GetPPerig: String;
begin
  Result := DBRichEdit1.Text;
end;

end.
