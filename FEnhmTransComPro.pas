unit FEnhmTransComPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, dxmdaset, ActnList, DBCtrls, StdCtrls, FBaseDev0,
  ExtCtrls, FEnhmTransCom, ADODB, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.Menus;

type
  TfrmEnhmTransComPrologue = class(TfrmBaseDev0)
    ue: TPanel;
    dblcPEF: TDBLookupComboBox;
    dxBarManager1: TActionManager;
    ActionList1: TActionList;
    actCancel: TAction;
    actOK: TAction;
    UpdCommandAct: TAction;
    memWS: TdxMemData;
    dtsWS: TDataSource;
    QryCustomer: TADOQuery;
    dtsCustomer: TDataSource;
    memWSFrCompany: TIntegerField;
    Panel1: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ActionToolBar1: TActionToolBar;
    memWSFrDate: TIntegerField;
    qryEnhmPeCall: TADOQuery;
    dtsEnhmPeCall: TDataSource;
    qryEnhmPeCallENPCALLID: TAutoIncField;
    qryEnhmPeCallENPCALLDATE: TDateTimeField;
    QryCustomerCUSTOMERID: TAutoIncField;
    QryCustomerNAME: TWideStringField;
    procedure actCancelExecute(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses DMain;

{$R *.dfm}

procedure TfrmEnhmTransComPrologue.actCancelExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmEnhmTransComPrologue.actOKExecute(Sender: TObject);
Var
  frm: TfrmEnhmTransCom;
Begin
  frm := TfrmEnhmTransCom.Create(Self);
  memWS.Post;
  frm.FrCompany       := memWSFrCompany.AsInteger;
  frm.EnhmCompanyName := DBLookupComboBox1.Text;

  if Not(dblcPEF.KeyValue = Null) then
    begin
      frm.EnhmCustBtF := dblcPEF.KeyValue;
      frm.EnhmCustBtT := dblcPEF.KeyValue;
    end;

  if ((memWSFrCompany.AsInteger > 0)) then
    // and
    // (Not (dblcPeF.KeyValue = Null))) then
    begin
      frm.ShowModal;
      frm.Free;
      Close;
    end
  else
    begin
      MessageDlg('Παρακαλώ Δώστε Πελάτη', mtError, [mbOK], 0);
      memWS.Edit;
      frm.Free;
    end;
end;

procedure TfrmEnhmTransComPrologue.FormCreate(Sender: TObject);
begin
  inherited;
  QryCustomer.Active   := True;
  qryEnhmPeCall.Active := True;
  memWS.Active         := True;
end;

end.
