unit FCheckLib;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DMain, FBForm, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TfrmCheckLib = class(TfrmBForm)
    qrySelectDouble: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button1: TButton;
    DeleteSpec: TADOQuery;
    qrySelectDoubleCnt: TIntegerField;
    qrySelectDoubleLibId: TIntegerField;
    qrySelectDoubleLibDateTime: TDateTimeField;
    qrySelectDoubleLibRegNo: TWideStringField;
    qrySelectDoubleUsed: TBooleanField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCheckLib: TfrmCheckLib;

implementation

{$R *.dfm}

procedure TfrmCheckLib.Button1Click(Sender: TObject);
begin
  inherited;
  qrySelectDouble.First;
  repeat
  try
    DeleteSpec.ExecSQL;
  except
    MessageDlg('Πρόβλημα στη Διαγραφή.', mtError, [mbOK], 0);
  end;
  qrySelectDouble.Next;
  until qrySelectDouble.Eof;
  qrySelectDouble.Active:=False;
  qrySelectDouble.Active:=True;
end;

procedure TfrmCheckLib.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  try
    DeleteSpec.ExecSQL;
    MessageDlg('Επιτυχής Διαγραφή.', mtInformation, [mbOK], 0);
  except
    MessageDlg('Πρόβλημα στη Διαγραφή.', mtError, [mbOK], 0);
  end;
end;

end.
