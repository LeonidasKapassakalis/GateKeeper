unit FTableIds;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FSubParams, StdCtrls, DBCtrls, ExtCtrls, Grids, DBGrids,
  DBase, DMain, Menus, ActnList, Buttons, ComCtrls, Db,
  DBTables, DSysSubParams, ImgList, ToolWin, ADODB;

type
  TFrmTableIds = class(TfrmSubParams)
    BatchEnhm: TAction;
    Button1: TButton;
    Button2: TButton;
    EnhmTables: TAction;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    Query1: TADOQuery;
    Query1MaxId: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure BatchEnhmExecute(Sender: TObject);
    procedure EnhmTablesExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    function CreateDataModule: TDMBase; override;
  end;

var
  FrmTableIds: TFrmTableIds;

implementation

{$R *.DFM}

function TFrmTableIds.CreateDataModule: TDMBase;
begin
  Result := TDMSysSubParams.Create(Self);
end;

procedure TFrmTableIds.FormCreate(Sender: TObject);
begin
  inherited;
  Grid.DataSource := TDMSysSubParams(DM).dsTableIds;
end;

procedure TFrmTableIds.BatchEnhmExecute(Sender: TObject);
begin
  inherited;
  Grid.DataSource.DataSet.First;
  repeat
    Query1.Active   := False;
    Query1.SQL.Text := 'SELECT Max(Id) as MaxID FROM ' + TDMSysSubParams(DM).TableIdsTableName.asString;
    try
      Query1.Active := True;
      if Not(TDMSysSubParams(DM).TableIdsNum.asInteger = Query1MaxId.asInteger) then
        begin
          Grid.DataSource.DataSet.edit;
          TDMSysSubParams(DM).TableIdsNum.asInteger := Query1MaxId.asInteger + 1;
          Grid.DataSource.DataSet.Post;
        end;
    except
    end;
    Grid.DataSource.DataSet.Next;
  until Grid.DataSource.DataSet.Eof;
end;

procedure TFrmTableIds.EnhmTablesExecute(Sender: TObject);
var
  MyStringList: TStringList;
  i: Integer;
begin
  if Not(Grid.DataSource.DataSet.IsEmpty) then
    repeat
      Grid.DataSource.DataSet.Delete;
    until Grid.DataSource.DataSet.IsEmpty;

  MyStringList := TStringList.Create;
  try
    DMMain.ADOConnection.GetTableNames(MyStringList, False);
    // Session.GetTableNames('AvinLeo', '*',False, False, MyStringList);
    for i := 0 to MyStringList.Count - 1 do
      begin
        Grid.DataSource.DataSet.Insert;
        Grid.DataSource.DataSet.FieldByName('TableName').asString := MyStringList.Strings[i];
        Grid.DataSource.DataSet.Post;
      end;
  finally
    MyStringList.Free;
  end;
end;

end.
