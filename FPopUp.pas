unit FPopUp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPopUp = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure DBGrid1DblClick(Sender: TObject);
  private
    FPopUpKeyField: string;
    FReturnKey: Integer;
    procedure SetPopUpKeyField(const Value: string);
    procedure SetReturnKey(const Value: Integer);
    { Private declarations }
  public
    property PopUpKeyField: string read FPopUpKeyField write SetPopUpKeyField;
    property ReturnKey: Integer read FReturnKey write SetReturnKey;
    { Public declarations }
  end;

var
  frmPopUp: TfrmPopUp;

implementation

{$R *.dfm}

procedure TfrmPopUp.DBGrid1DblClick(Sender: TObject);
var
  x: TField;
begin
  // x:=Self.DataSource1.DataSet.FieldByName(PopUpKeyField);
  x := Self.DataSource1.DataSet.FieldByName('BatchBlEnhmId');
  if Assigned(x) then
    ReturnKey := x.AsInteger
  else
    ReturnKey := -1;
  Self.Close;
end;

procedure TfrmPopUp.SetPopUpKeyField(const Value: string);
begin
  FPopUpKeyField := Value;
end;

procedure TfrmPopUp.SetReturnKey(const Value: Integer);
begin
  FReturnKey := Value;
end;

end.
