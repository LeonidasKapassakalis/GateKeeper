unit FEnhmEmployees;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, ActnList, DB, ComCtrls, Common,
  Grids, DBGrids, FBEnForm, Menus, ExtCtrls, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.PlatformDefaultStyleActnCtrls, rKinhsMisth;

type
  TfrmEnhmEmployees = class(TfrmBEnForm)
    dxBarManager1: TActionManager;
    qryTran: TADOQuery;
    dtsTran: TDataSource;
    ActionList1: TActionList;
    actEnhmPelates: TAction;
    actClose: TAction;
    UpdCommandAct: TAction;
    qEmployees: TADOQuery;
    qEmployeesId: TAutoIncField;
    qEmployeesCustomerId: TIntegerField;
    qEmployeesMhtrId: TIntegerField;
    qEmployeesName: TWideStringField;
    qEmployeesSurName: TWideStringField;
    qEmployeesAddress: TWideStringField;
    qEmployeesTK: TWideStringField;
    qEmployeesTown: TWideStringField;
    qEmployeesAFM: TWideStringField;
    qEmployeesDOY: TWideStringField;
    qEmployeesYpokId: TIntegerField;
    qryTranLName: TStringField;
    qryTranLSurName: TStringField;
    SaveDialog1: TSaveDialog;
    qryCheckDisEnhm: TADOQuery;
    qryCheckDisEnhmCountNoDisUpd: TIntegerField;
    ActionToolBar1: TActionToolBar;
    actPrint: TAction;
    actEnhmPelatesPylon: TAction;
    qryTranSUMAMOUNT: TFloatField;
    qryTranSUMDISAMOUNT: TFloatField;
    qryTranSUMQUANTITY: TFloatField;
    qryTranEmployeesMhtrId: TIntegerField;
    qryTranCustomerCustomerId: TAutoIncField;
    procedure actCloseExecute(Sender: TObject);
    procedure actEnhmPelatesExecute(Sender: TObject);
    procedure actEnhmPelatesPylonExecute(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
  private
    { Private declarations }
  public
    CustomerName: AnsiString;
    CustomerCode: Integer;
    PassSql: string;
  end;

implementation

uses Globals, DMain, FMain;

{$R *.dfm}

procedure TfrmEnhmEmployees.actCloseExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmEnhmEmployees.actEnhmPelatesExecute(Sender: TObject);
type
  PelatesSapRec = record
    AllChars: array [1 .. 134] of char;
  end;
var
  PelatesRec: PelatesSapRec;
  PelatesSap: TextFile;
  BufferChr: string;
  MasterCompanys: String;
  OutS: String;
  MasterCompany: Integer;
  x, i, itemp: Integer;
  LogarDate: TDateTime;
  Ammount: Double;
  YYL, MML, DDL: Word;
begin

  if qryCheckDisEnhmCountNoDisUpd.AsInteger > 0 then
    begin
      MessageDlg('Δεν έχει γίνει ενημέρωση έκπτωσης', mtError, [mbOK], 0);
      exit;
    end;

  LogarDate := Now;

  if FormDateTitle(Self, LogarDate, 'Ενημέρωση Μισθοδοσίας της', csDate) = mrCancel then
    exit;

  DecodeDate(LogarDate, YYL, MML, DDL);

  { TODO : Check if Already Done }

  SaveDialog1.InitialDir := GetIniPath('EXPORT_MISTH');
  SaveDialog1.FileName   := CustomerName + inttostr(YYL) + inttostr(MML) + '.txt';
  SaveDialog1.DefaultExt := 'txt';
  if SaveDialog1.Execute then
    begin
      AssignFile(PelatesSap, SaveDialog1.FileName);
      Rewrite(PelatesSap);
    end
  else
    begin
      exit;
    end;

  qryTran.First;

  while (Not(qryTran.Eof)) do
    begin
      Ammount := qryTranSUMAMOUNT.asFloat - qryTranSUMDISAMOUNT.asFloat;
      // OutS:=Format('%.5d%.5d%.2d%.4d01',[qryTranMhtrid.asInteger,Round(qryTranSumAmount.asFloat*100),MML,YYL]);
      // OutS:=Format('%.5d%.5d%.2d%.4d01',[qryTranMhtrid.asInteger,Round(Ammount*100),MML,YYL]);
      OutS := Format('%.5d%.7d%.2d%.4d01', [qryTranEmployeesMhtrId.AsInteger, Round(Ammount * 100), MML, YYL]);

      Writeln(PelatesSap, OutS);
      qryTran.Next;
    end;
  CloseFile(PelatesSap);

  MessageDlg('Διαδικασία Ολοκληρώθηκε', mtInformation, [mbOK], 0);
end;

procedure TfrmEnhmEmployees.actEnhmPelatesPylonExecute(Sender: TObject);
type
  PelatesSapRec = record
    AllChars: array [1 .. 134] of char;
  end;
var
  PelatesRec: PelatesSapRec;
  PelatesSap: TextFile;
  BufferChr: string;
  MasterCompanys: String;
  OutS: String;
  MasterCompany: Integer;
  x, i, itemp: Integer;
  LogarDate: TDateTime;
  Ammount: Double;
  TempMhtrid: Integer;
  YYL, MML, DDL: Word;
begin

  if qryCheckDisEnhmCountNoDisUpd.AsInteger > 0 then
    begin
      MessageDlg('Δεν έχει γίνει ενημέρωση έκπτωσης', mtError, [mbOK], 0);
      exit;
    end;

  LogarDate := Now;

  if FormDateTitle(Self, LogarDate, 'Ενημέρωση Μισθοδοσίας της', csDate) = mrCancel then
    exit;

  DecodeDate(LogarDate, YYL, MML, DDL);

  { TODO : Check if Already Done }

  SaveDialog1.InitialDir := GetIniPath('EXPORT_MISTH');
  SaveDialog1.FileName   := 'AVINCARD_' + Format('%.4d%.2d', [YYL, MML]) + '.csv';
  // inttostr(YYL)+inttostr(MML)+'.csv';
  SaveDialog1.DefaultExt := 'csv';
  if SaveDialog1.Execute then
    begin
      AssignFile(PelatesSap, SaveDialog1.FileName);
      Rewrite(PelatesSap);
    end
  else
    begin
      exit;
    end;

  qryTran.First;

  while (Not(qryTran.Eof)) do
    begin
      Ammount := qryTranSUMAMOUNT.asFloat - qryTranSUMDISAMOUNT.asFloat;
      if qryTranEmployeesMhtrId.AsInteger > 100000 then
        TempMhtrid := qryTranEmployeesMhtrId.AsInteger
      else
        TempMhtrid := qryTranEmployeesMhtrId.AsInteger + 20000;

      // OutS:=Format('%.5d%.5d%.2d%.4d01',[qryTranMhtrid.asInteger,Round(qryTranSumAmount.asFloat*100),MML,YYL]);
      // OutS:=Format('%.5d%.5d%.2d%.4d01',[qryTranMhtrid.asInteger,Round(Ammount*100),MML,YYL]);
      // OutS:=Format('%.5d,%.7d,%.2d,%.4d',[qryTranMhtrid.asInteger,Round(Ammount*100),MML,YYL]);
      // OutS:=Format('%d,%d,%.2d,%.4d',[qryTranMhtrid.asInteger,Round(Ammount*100),MML,YYL]);
      OutS := Format('%d;%d;%.2d;%.4d', [TempMhtrid, Round(Ammount * 100), MML, YYL]);

      Writeln(PelatesSap, OutS);
      qryTran.Next;
    end;
  CloseFile(PelatesSap);

  MessageDlg('Διαδικασία Ολοκληρώθηκε', mtInformation, [mbOK], 0);
end;

procedure TfrmEnhmEmployees.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  SetFilterGrid(FormGrid);
  SetFilterGrid(FormGrid);
  BrowseIndex(Indexes);
  BrowseFields(Pedia);
  BrowseFieldsIdx(PediaIdx);
  IndexAct := True;
end;

procedure TfrmEnhmEmployees.actPrintExecute(Sender: TObject);
var
  frm: TrptKinhsMisth;
begin
  frm                  := TrptKinhsMisth.Create(Self);
  frm.qryTran.Active   := False;
  frm.qryTran.SQL.Text := qryTran.SQL.Text;
  frm.qryTran.Active   := True;
  LoadImage(frm);
  frm.Preview;
  frm.Free;
end;

end.
