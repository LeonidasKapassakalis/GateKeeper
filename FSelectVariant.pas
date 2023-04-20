unit FSelectVariant;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FBForm, Grids, DBGrids, ComCtrls, Menus, ActnList, Db, DBTables, ADODB;

type
  TfrmSelectVariant = class(TfrmBForm)
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    cmdOk: TAction;
    cmdCancel: TAction;
    cmdDelete: TAction;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    cmdManipl: TAction;
    N4: TMenuItem;
    QDeleteDetail: TADOQuery;
    QDeleteMain: TADOQuery;
    procedure cmdOkExecute(Sender: TObject);
    procedure cmdCancelExecute(Sender: TObject);
    procedure cmdManiplExecute(Sender: TObject);
    procedure cmdDeleteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelectVariant: TfrmSelectVariant;

implementation

uses DMain;

{$R *.DFM}

procedure TfrmSelectVariant.cmdOkExecute(Sender: TObject);
begin
  inherited;
  modalresult := mrOk;
end;

procedure TfrmSelectVariant.cmdCancelExecute(Sender: TObject);
begin
  inherited;
  modalresult := mrCancel;
end;

procedure TfrmSelectVariant.cmdManiplExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmSelectVariant.cmdDeleteExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  QDeleteDetail.Parameters.ParamByName('PId').Value := DBGrid1.DataSource.DataSet.FieldByName('id').asInteger;
  QDeleteDetail.ExecSQL;
  QDeleteMain.Parameters.ParamByName('PId').Value := DBGrid1.DataSource.DataSet.FieldByName('id').asInteger;
  QDeleteMain.ExecSQL;
  DBGrid1.DataSource.DataSet.Active := False;
  DBGrid1.DataSource.DataSet.Active := True;
end;

end.
