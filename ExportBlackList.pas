Unit ExportBlackList;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Globals,
  Dialogs, ActnList, ComCtrls, StdCtrls, DB, ADODB, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.PlatformDefaultStyleActnCtrls, FBaseDev0, Vcl.Menus;

Type
  TfrmExportBlackList = Class(TfrmBaseDev0)
    ActionList1: TActionList;
    dxBarManager1: TActionManager;
    actCancel: TAction;
    actOK: TAction;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    qryACard: TADOQuery;
    qryACardACARDID: TAutoIncField;
    qryACardACARDCODE: TWideStringField;
    qryACardCUSTOMERID: TIntegerField;
    qryACardISSUEDATE: TDateTimeField;
    qryACardEXPIREDATE: TDateTimeField;
    qryACardMETERBOOLEAN: TBooleanField;
    qryACardPINBOOLEAN: TBooleanField;
    qryACardINSDT: TDateTimeField;
    qryACardUPDDT: TDateTimeField;
    qryACardINSUSR: TIntegerField;
    qryACardUPDUSR: TIntegerField;
    qryACardSTARTDATE: TDateTimeField;
    qryACardVTYPEID: TIntegerField;
    qryACardCREATEBOOLEAN: TBooleanField;
    qryACardBLACKLISTBOOLEAN: TBooleanField;
    qryACardBLACKLISTDATE: TDateTimeField;
    qryACardBLACKLISTUSR: TIntegerField;
    qryACardBLACKLISTNOTES: TWideStringField;
    qryACardIGROUPID1: TIntegerField;
    qryACardIGROUPID2: TIntegerField;
    qryACardIGROUPID3: TIntegerField;
    qryACardIGROUPID4: TIntegerField;
    qryACardFullCardNo: TStringField;
    UpdCommandAct: TAction;
    SaveDialog1: TSaveDialog;
    ActionManager1: TActionManager;
    ActionToolBar1: TActionToolBar;
    actOKTill: TAction;
    Procedure actCancelExecute(Sender: TObject);
    Procedure actOKExecute(Sender: TObject);
    procedure qryACardCalcFields(DataSet: TDataSet);
    procedure actOKTillExecute(Sender: TObject);
  Private
    { Private declarations }
    Procedure DoExport;
    Procedure DoExportTill;
  Public
    { Public declarations }
  End;

Implementation

Uses Common, DMain, FMain;

{$R *.dfm}

Procedure TfrmExportBlackList.actCancelExecute(Sender: TObject);
Begin
  Close;
End;

Procedure TfrmExportBlackList.actOKExecute(Sender: TObject);
Begin
  DoExport;
  Close;
End;

procedure TfrmExportBlackList.actOKTillExecute(Sender: TObject);
begin
  inherited;
  DoExportTill;
  Close;
end;

Procedure TfrmExportBlackList.DoExport;
Var
  List: TStringList;
  Filename: String;
Begin
  qryACard.Close;
  qryACard.SQL.Clear;
  { TODO -oLeonidas -cMSSQL : Change Of AdoYesStr AdoNoStr from True False to 1 0 }
  // qryACard.SQL.Add('SELECT * FROM ACARD WHERE BLACKLISTBOOLEAN = ' + ADOYesStr);
  qryACard.SQL.Add('SELECT * FROM ACARD WHERE BLACKLISTBOOLEAN = ' + ADOYesStr);
  qryACard.Open;

  SaveDialog1.InitialDir := GetIniPath('EXPORT_BLACKLIST');
  SaveDialog1.InitialDir := ReadApplicationIni(INI_ADO_SECTION, EXPORT_BLACKLIST);

  If (qryACard.RecordCount > 0) Then
    Begin
      List := TStringList.Create;
      if SaveDialog1.Execute = True then
        Filename := SaveDialog1.Filename
      else
        exit;
      Try
        ProgressBar1.Min      := 0;
        ProgressBar1.Max      := qryACard.RecordCount;
        ProgressBar1.Position := 0;
        qryACard.First;
        While (qryACard.Eof = false) Do
          Begin
            ProgressBar1.Position := ProgressBar1.Position + 1;
            If (qryACardBLACKLISTBOOLEAN.AsBoolean = True) Then
              Begin { to be on the safe side of the game !!! }
                List.Add(qryACardFullCardNo.AsString);
              End;
            qryACard.Next;
            List.SaveToFile(Filename);
          End;
        ProgressBar1.Position := ProgressBar1.Max;
      Finally
        List.Free;
      End;
    End
  Else
    ShowMessage('Δεν υπάρχουν εγγραφές στην black list');
End;

Procedure TfrmExportBlackList.DoExportTill;
Var
  List: TStringList;
  Filename: String;
  ExpireDate: TDateTime;
  a: String;
Begin

  if FormDateTitle(Self, ExpireDate, 'Ημερομηνία Λήξης Μεγαλύτερη από ', csDate) = mrCancel then
    exit;

  qryACard.Close;
  qryACard.SQL.Clear;
  { TODO -oLeonidas -cMSSQL : Change Of AdoYesStr AdoNoStr from True False to 1 0 }
  // qryACard.SQL.Add('SELECT * FROM ACARD WHERE BLACKLISTBOOLEAN = ' + ADOYesStr);
  qryACard.SQL.Add('SELECT * FROM ACARD WHERE BLACKLISTBOOLEAN = ' + ADOYesStr);
  a := WhereApoDateOnly(ExpireDate, 'EXPIREDATE', false);
  qryACard.SQL.Add(a);

  // MessageDlg(qryACard.SQL.Text, mtWarning, [mbOK], 0);

  qryACard.Open;

  SaveDialog1.InitialDir := GetIniPath('EXPORT_BLACKLIST');
  SaveDialog1.InitialDir := ReadApplicationIni(INI_ADO_SECTION, EXPORT_BLACKLIST);

  If (qryACard.RecordCount > 0) Then
    Begin
      List := TStringList.Create;
      if SaveDialog1.Execute = True then
        Filename := SaveDialog1.Filename
      else
        exit;
      Try
        ProgressBar1.Min      := 0;
        ProgressBar1.Max      := qryACard.RecordCount;
        ProgressBar1.Position := 0;
        qryACard.First;
        While (qryACard.Eof = false) Do
          Begin
            ProgressBar1.Position := ProgressBar1.Position + 1;
            If (qryACardBLACKLISTBOOLEAN.AsBoolean = True) Then
              Begin { to be on the safe side of the game !!! }
                List.Add(qryACardFullCardNo.AsString);
              End;
            qryACard.Next;
            List.SaveToFile(Filename);
          End;
        ProgressBar1.Position := ProgressBar1.Max;
      Finally
        List.Free;
      End;
    End
  Else
    ShowMessage('Δεν υπάρχουν εγγραφές στην black list');
End;

procedure TfrmExportBlackList.qryACardCalcFields(DataSet: TDataSet);
begin
  qryACardFullCardNo.AsString := ReturnFullIdNoUnfor(qryACardACARDCODE.AsInteger);
end;

End.
