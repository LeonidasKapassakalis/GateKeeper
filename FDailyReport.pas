unit FDailyReport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FSubParams, StdCtrls, DBCtrls, ExtCtrls, Grids, DBGrids,
  DBase, DMain, Menus, ActnList, Buttons, ComCtrls, Db,
  DBTables, DSysSubParams, ImgList, ToolWin, ADODB, DSubParams,
  FInsertDailyReport, rDailyReport;

type
  TFrmDailyReport = class(TfrmSubParams)
    BatchEnhm: TAction;
    EnhmTables: TAction;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    Query1: TADOQuery;
    Query1MaxId: TIntegerField;
    fnFindDaily: TADOStoredProc;
    fnFindDailyAA: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure BatchEnhmExecute(Sender: TObject);
    procedure EnhmTablesExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure UpdateExecute(Sender: TObject);
    procedure InsertExecute(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure UpdateActionsExecute(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
  private
    FormState: String;
    Version: Integer;
    procedure CreateAddEditForm; override;
    { Private declarations }
  public
    { Public declarations }
  protected
    function CreateDataModule: TDMBase; override;
    function CheckDate(ParDate: TDateTime): Integer;
  end;

var
  FrmDailyReport: TFrmDailyReport;

implementation

{$R *.DFM}

function TFrmDailyReport.CreateDataModule: TDMBase;
begin
  Result := TDMSubParams.Create(Self);
end;

procedure TFrmDailyReport.DeleteExecute(Sender: TObject);
begin
  // inherited;
  MessageDlg('Δεν μπορούν να γίνουν διαγραφές στο Ημερολόγιο', mtError, [mbOK], 0);
end;

procedure TFrmDailyReport.FormActivate(Sender: TObject);
begin
  inherited;
  Self.SetAddEditForm(TForm(TfrmInsertDailyReport));
end;

procedure TFrmDailyReport.FormCreate(Sender: TObject);
begin
  inherited;
  Grid.DataSource := TDMSubParams(DM).dtsDailyReport;
end;

procedure TFrmDailyReport.GridDblClick(Sender: TObject);
begin
  Self.FormState := 'View';
  inherited;

end;

procedure TFrmDailyReport.InsertExecute(Sender: TObject);
var
  currentDate: TDate;
begin
  currentDate    := Date;
  Self.FormState := 'Insert';
  Self.Version   := 0;
  if CheckDate(currentDate) = 0 then
    inherited
  else
    MessageDlg('Υπάρχει ήδη καταχώρηση για την Ημερομηνία', mtError, [mbOK], 0);
end;

procedure TFrmDailyReport.PrintExecute(Sender: TObject);
begin
  inherited;

end;

//procedure TFrmDailyReport.UpdateActionsExecute(Sender: TObject);
//begin
//  inherited;
//   //
//end;

procedure TFrmDailyReport.UpdateActionsExecute(Sender: TObject);
var
  i, x, y: Integer;
  AL: TActionList;
begin
  try
    DMMain.QFindFormID.Active := False;
    DMMain.QFindFormID.Parameters.ParamByName('PName').Value := 'T' + Self.Name;
    DMMain.QFindFormID.Active := True;
  except

  end;

  for x := 0 to Self.ComponentCount - 1 do
    if Self.Components[x] is TActionList then
      y := x;
  AL    := TActionList(Self.Components[y]);
  if True then // DM.FindFormID.IsEmpty then
    begin
      for i := 0 to AL.ActionCount - 1 do
        begin
          DMMain.QUpdateFormAction.Parameters.ParamByName('PFormId').Value := self.FormID;
          DMMain.QUpdateFormAction.Parameters.ParamByName('PAction').Value := TCustomAction(AL.Actions[i]).Name;
          DMMain.QUpdateFormAction.Parameters.ParamByName('PText').Value := TCustomAction(AL.Actions[i]).Caption;
          if Not(TCustomAction(AL.Actions[i]).Name = 'UpdCommandAct') then
            try
              DMMain.QUpdateFormAction.ExecSql;
            except
              on E: Exception do
                MessageDlg('Error ' + E.Message, mtError, [mbOK], 0);
            end;
        end;
      DMMain.QUpdateFormAction.Parameters.ParamByName('PFormId').Value := self.FormID;
      DMMain.QUpdateFormAction.Parameters.ParamByName('PAction').Value := 'All';
      DMMain.QUpdateFormAction.Parameters.ParamByName('PText').Value := 'All';
      try
        DMMain.QUpdateFormAction.ExecSql;
      except
        MessageDlg('Error', mtError, [mbOK], 0);
      end;
    end;
end;

procedure TFrmDailyReport.UpdateExecute(Sender: TObject);
var
  currentDate: TDate;
  currentDateΤime: TDateTime;
  aa: Integer;
begin
  currentDateΤime := Grid.DataSource.DataSet.FieldByName('RepDate').AsDateTime;
  currentDate     := currentDateΤime;
  Self.FormState  := 'Edit';
  aa              := CheckDate(currentDate);
  Self.Version    := aa + 1;
  if CheckDate(currentDate) > 0 then
    inherited
  else
    MessageDlg('Υπάρχει ήδη καταχώρηση για την Ημερομηνία', mtError, [mbOK], 0);
end;

procedure TFrmDailyReport.BatchEnhmExecute(Sender: TObject);
begin
  inherited;
  // Grid.DataSource.DataSet.First;
  // repeat
  // Query1.Active   := False;
  // Query1.SQL.Text := 'SELECT Max(Id) as MaxID FROM ' + TDMSysSubParams(DM).DailyReportTableName.asString;
  // try
  // Query1.Active := True;
  // if Not(TDMSysSubParams(DM).DailyReportNum.asInteger = Query1MaxId.asInteger) then
  // begin
  // Grid.DataSource.DataSet.edit;
  // TDMSysSubParams(DM).DailyReportNum.asInteger := Query1MaxId.asInteger + 1;
  // Grid.DataSource.DataSet.Post;
  // end;
  // except
  // end;
  // Grid.DataSource.DataSet.Next;
  // until Grid.DataSource.DataSet.Eof;
end;

procedure TFrmDailyReport.EnhmTablesExecute(Sender: TObject);
var
  rpt: TrptDailyReport;
begin
try
  rpt                                                  := TrptDailyReport.Create(Self);
  rpt.AdoQuery1.Active                                   := False;
  rpt.AdoQuery2.Active                                    := False;
  rpt.AdoQuery1.Parameters.ParamByName('PRepDate').Value := Grid.DataSource.DataSet.FieldByName('RepDate').AsDateTime;
  rpt.AdoQuery1.Active                                   := True;
  rpt.AdoQuery2.Active                                    := True;
  rpt.Preview;
finally
  rpt.Free;

end;

end;

function TFrmDailyReport.CheckDate(ParDate: TDateTime): Integer;
begin
  fnFindDaily.Active                                 := False;
  fnFindDaily.Parameters.ParamByName('@PDate').Value := ParDate;
  fnFindDaily.Active                                 := True;
  if fnFindDaily.RecordCount > 0 then
    CheckDate := fnFindDailyAA.AsInteger
  else
    CheckDate := 0;

end;

procedure TFrmDailyReport.CreateAddEditForm;
var
  frm: TfrmInsertDailyReport;
  currentDate: TDate;
  currentDateTime: TDateTime;
  ttt: string;
begin
  frm                        := TfrmInsertDailyReport.CreateSecurity(Self, 100);
  frm.DBRichEdit1.DataSource := Grid.DataSource;
  if Self.FormState = 'Insert' then
    begin
      currentDate            := Date;
      frm.DateLBL.Caption    := datetostr(currentDate);
      frm.VersionLBL.Caption := '';
    end
  else if Self.FormState = 'Edit' then
    begin
      currentDateTime        := Grid.DataSource.DataSet.FieldByName('RepDate').AsDateTime;
      currentDate            := currentDateTime;
      frm.DateLBL.Caption    := datetostr(currentDate);
      frm.VersionLBL.Caption := inttostr(Self.Version);
      Grid.DataSource.DataSet.Insert;
    end
  else if Self.FormState = 'View' then
    begin
      currentDateTime        := Grid.DataSource.DataSet.FieldByName('RepDate').AsDateTime;
      currentDate            := currentDateTime;
      frm.DateLBL.Caption    := datetostr(currentDate);
      frm.VersionLBL.Caption := Grid.DataSource.DataSet.FieldByName('AA').AsString;
      // frm.RichEdit1.     := Grid.DataSource.DataSet.FieldByName('RepText').Value;
      Grid.DataSource.DataSet.Cancel;
    end
  else
    begin
      MessageDlg('No self.FormState Set.' + #13 + #10 + 'Exit', mtError, [mbOK], 0);
      exit;
    end;

  // if Grid.DataSource.State in [dsInsert,dsEdit] then
  // begin
  // currentDate := Date;
  // frm.DateLBL.Caption := datetostr(currentDate);
  // frm.VersionLBL.Caption := '0';
  // end;

  frm.ShowModal;

  if ((frm.ModalResult = mrOk) and (not(Self.FormState = 'View'))) then
    begin
      // Grid.DataSource.DataSet.Insert;
      Grid.DataSource.DataSet.FieldByName('RepDate').AsDateTime := currentDate;
      // Grid.DataSource.DataSet.FieldByName('RepText').Value := frm.RichEdit1.Text;
      Grid.DataSource.DataSet.FieldByName('AA').Value := Self.Version;
      try
        Grid.DataSource.DataSet.Post();
      except
        on E: Exception do
          begin
            MessageDlg('Πρόβλημα ' + E.Message, mtWarning, [mbOK], 0);
            Grid.DataSource.DataSet.Cancel;
          end;
      end;
    end
  else
    begin
      Grid.DataSource.DataSet.Cancel;
    end;

  frm.Free;
end;

end.
