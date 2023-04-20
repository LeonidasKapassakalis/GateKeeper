Unit ExportNewTerminal;

{
  Σειριακός αριθμός εφαρμογής 8    MELLON
  Ονομασία εταιρείας 30   right padded with spaces
  Αριθμός κυκλοφορίας 10   right padded with spaces
  Όριο ημέρας 3    left padded with zeroes
  Όριο μήνα 3    left padded with spaces
  Ημερομηνία λήξης 2    MMEE left padded with zeroes
  Προϊόντα 2
  Έκδοση 1    MELLON
  Ημερομηνία τελευταίας συναλλαγής 3    HHMMEE left padded with zeroes
  Ημερομηνία έκδοσης 3    HHMMEE left padded with zeroes
  Συναλλαγές ημέρας 3    left padded with zeroes
  Συναλλαγές μήνα 3    left padded with zeroes
  Χιλιόμετρα πριν 3    left padded with zeroes
  Χιλιόμετρα μετά 3    left padded with zeroes

  Σειριακός αριθμός εφαρμογής 8    MELLON
  Ονομασία εταιρείας 30   Karakitsos            4B6172616B6974736F7320202020
  Αριθμός κυκλοφορίας 10   YZA 1234              595A4120313233342020
  Όριο ημέρας 3    1001                  0003E9
  Όριο μήνα 3    98000                 017ED0
  Ημερομηνία λήξης 2    13/15                 0523
  Προϊόντα 2    3                     0003
  Έκδοση 1    MELLON
  Ημερομηνία τελευταίας συναλλαγής 3    25/06/02              03D2EA
  Ημερομηνία έκδοσης 3    01/01/99              0027D7
  Συναλλαγές ημέρας 3    18                    000012
  Συναλλαγές μήνα 3    803                   000323
  Χιλιόμετρα πριν 3    1000                  0003E8
  Χιλιόμετρα μετά 3    2001                  0007D1

  format
}

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DB, ADODB, ComCtrls, StdCtrls, ADOConEd, IniFiles,
  RNewCards, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, DBase,
  Vcl.PlatformDefaultStyleActnCtrls, FBaseDev0, Vcl.Menus, Vcl.Grids,
  Vcl.DBGrids, scExcelExport;

Type
  TfrmExportNewTerminal = Class(TfrmBaseDev0)
    ActionList1: TActionList;
    actCancel: TAction;
    actOK: TAction;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    qryTerminal: TADOQuery;
    qryMST: TADOQuery;
    actPreview: TAction;
    UpdCommandAct: TAction;
    ActionManager1: TActionManager;
    ActionToolBar1: TActionToolBar;
    qryTerminalTerminalid: TAutoIncField;
    qryTerminalTerminalCode: TWideStringField;
    qryTerminalTerminalSerialNo: TWideStringField;
    qryTerminalTerminalType: TIntegerField;
    qryTerminalInsDt: TDateTimeField;
    qryTerminalUpdDt: TDateTimeField;
    qryTerminalInsUsr: TIntegerField;
    qryTerminalUpdUsr: TIntegerField;
    qryTerminalCreateBoolean: TBooleanField;
    qryTerminalPending: TBooleanField;
    qryMSTMerchantName: TWideStringField;
    qryMSTStationStationId: TIntegerField;
    qryMSTMerchantMerchantId: TIntegerField;
    qryMSTStationStreet: TWideStringField;
    qryMSTStationCity: TWideStringField;
    qryMSTTerminalTerminalid: TIntegerField;
    qryMSTTerminalidTerminalCode: TWideStringField;
    qryMSTStationName: TWideStringField;
    qryMSTMerchantSAPCode: TWideStringField;
    qryMSTMerchantInActive: TBooleanField;
    qryMSTMerchantDeleted: TBooleanField;
    qryMSTMerchantIsTest: TBooleanField;
    qryMSTMerchantStopSales: TBooleanField;
    qryMSTStationDeleted: TBooleanField;
    qryMSTStationInActive: TBooleanField;
    qryMSTStationStopSales: TBooleanField;
    qryMSTMerchantMerchantCode: TWideStringField;
    qryTerminalLMERCHANTSAP: TStringField;
    qryTerminalLMERCHANTNAME: TStringField;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    qryTerminalLSTATIONADDR: TStringField;
    qryTerminalLSTATIONZIP: TStringField;
    qryMSTStationZIP: TWideStringField;
    scExcelExport1: TscExcelExport;
    qryTerminalLMerchantCode: TStringField;
    qryTerminalBANKMERCH_ID: TStringField;
    qryTerminalTERMINAL_ID: TStringField;
    qryTerminalTRADE_NAME: TStringField;
    qryTerminalCOMPANY_NAME: TStringField;
    qryTerminalADDRESS: TStringField;
    qryTerminalTOWN: TStringField;
    qryTerminalZIP: TStringField;
    qryTerminalTEL: TStringField;
    qryTerminalFAX: TStringField;
    qryTerminalCONTACT: TStringField;
    qryTerminalAFM: TStringField;
    qryTerminalDOY: TStringField;
    qryTerminalTERM_TYPE: TStringField;
    qryTerminalSR_NO: TStringField;
    qryTerminalBANK_NOTE: TStringField;
    qryTerminalDATE_SEND: TStringField;
    qryTerminalRULE1: TStringField;
    qryTerminalRULE2: TStringField;
    qryTerminalRULE3: TStringField;
    qryTerminalRULE4: TStringField;
    qryTerminalRULE5: TStringField;
    qryTerminalLStationCity: TStringField;
    qryTerminalLMerchantDoy: TStringField;
    qryMSTMerchantAFM: TWideStringField;
    qryMSTMerchantDOY: TWideStringField;
    qryTerminalLMerchantAFM: TStringField;
    qryVStationContacts: TADOQuery;
    qryVStationContactsContactType_Procedure: TWideStringField;
    qryVStationContactsContactsName: TWideStringField;
    qryVStationContactsContactsSurname: TWideStringField;
    qryVStationContactsemail: TWideStringField;
    qryVStationContactsPhone: TWideStringField;
    qryVStationContactsFax: TWideStringField;
    qryVStationContactsMobile: TWideStringField;
    qryVStationContactsSendMail: TBooleanField;
    qryVStationContactsSendFax: TBooleanField;
    qryVStationContactsSendPrint: TBooleanField;
    qryVStationContactsMain: TBooleanField;
    qryVStationContactsAA: TIntegerField;
    qryVStationContactsStationid: TIntegerField;
    qryVStationContactsStationName: TWideStringField;
    qryTerminalLStationTel: TStringField;
    qryTerminalLStationId: TIntegerField;
    qryMSTLStationTel: TStringField;
    Label2: TLabel;
    // scExcelExport1: TscExcelExport;
    Procedure actCancelExecute(Sender: TObject);
    Procedure actOKExecute(Sender: TObject);
    Procedure actOKUpdate(Sender: TObject);
    procedure actPreviewExecute(Sender: TObject);
    procedure qryTerminalCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  Private
    { Private declarations }
    ADOError: Boolean;
    CmdSubString: AnsiString;
    Procedure DoExport;
    Function GetExportADOConStr: Boolean;
    Procedure FillCmd;
  Public
    { Public declarations }
  End;

Implementation

Uses Globals, Common, DMain;

Resourcestring
  ASK_STR_ADO_CONNECTION = 'Θέλετε να ορίσετε την σύνδεση με την βάση δεδομένων των στοιχείων προσωποποίησης';

{$R *.dfm}

Procedure TfrmExportNewTerminal.actCancelExecute(Sender: TObject);
Begin
  Close;
End;

Procedure TfrmExportNewTerminal.actOKExecute(Sender: TObject);
Begin
  DoExport;
  Close;
End;

Procedure TfrmExportNewTerminal.DoExport;
Begin
  // OutputFileDs(qryTerminal);

  Label2.Caption := 'Ανάγνωση Στοιχείων ';
  If (qryTerminal.RecordCount > 0) Then
    Begin
      ProgressBar1.Min      := 0;
      ProgressBar1.Max      := qryTerminal.RecordCount;
      ProgressBar1.Position := 0;
      qryTerminal.First;
      While (qryTerminal.Eof = false) Do
        Begin
          ProgressBar1.Position := ProgressBar1.Position + 1;
          If (qryTerminalCreateBoolean.AsBoolean = true) Then
            Begin
              if ((qryTerminalLMERCHANTNAME.IsNull) or (qryTerminalLSTATIONZIP.IsNull)) then
                begin
                  MessageDlg('Δεν μπορεί να γίνει αποστολή μη συνδεδεμένων Τερματικών ' + qryTerminalTerminalCode.AsString, mtCustom, [mbOK], 0);
                end
              else
                begin
                  qryTerminal.Edit;
                  qryTerminalCreateBoolean.AsBoolean := false;
                  qryTerminalPending.AsBoolean       := true;
                  qryTerminal.Post;
                end;
            End;
          qryTerminal.Next;
        End;
      Try
        if MessageDlg('Να γίνει ενημέρωση αναμονής;', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            qryTerminal.UpdateBatch; { TODO : μήπως πρέπει να γίνεται ερώτηση στον χειριστή ??? }
          end
        else
          begin
            qryTerminal.CancelBatch();
          end;
        scExcelExport1.ExportDataset;
      Except
        ;
      End;
      ProgressBar1.Position := ProgressBar1.Max;
    End
  Else
    ShowMessage('Δεν υπάρχουν εγγραφές για νέες κάρτες');
End;

Procedure TfrmExportNewTerminal.actOKUpdate(Sender: TObject);
Begin
  If (ADOError = true) Then
    (Sender As TAction).Enabled := false
  Else
    (Sender As TAction).Enabled := true;
End;

Function TfrmExportNewTerminal.GetExportADOConStr: Boolean;
Begin
End;

procedure TfrmExportNewTerminal.qryTerminalCalcFields(DataSet: TDataSet);
begin
  inherited;

  // TERMINAL_ID	BANKMERCH_ID	TRADE_NAME	COMPANY_NAME	ADDRESS	TOWN	ZIP	TEL	FAX
  // 09000379	09000379	ΠΕΡΙΣΤΕΡΙ	ΚΩΝΣΤΑΝΤΙΝΙΔΗΣ ΔΗΜΗΤΡΙΟΣ	ΚΩΝΣΤΑΝΤΙΝΟΥΠΟΛΕΩΣ 29	12132	2105723028	Β ΠΕΡΙΣΤΕΡΙΟΥ	115508803

  qryTerminalTERMINAL_ID.AsString  := qryTerminalTerminalCode.AsString;
  qryTerminalBANKMERCH_ID.AsString := qryTerminalLMerchantCode.AsString;
  qryTerminalTRADE_NAME.AsString   := qryTerminalLStationCity.AsString;
  qryTerminalCOMPANY_NAME.AsString := qryTerminalLMERCHANTNAME.AsString;
  qryTerminalADDRESS.AsString      := qryTerminalLSTATIONADDR.AsString;
  qryTerminalTOWN.AsString         := qryTerminalLSTATIONZIP.AsString;
  qryTerminalZIP.AsString          := qryTerminalLStationTel.AsString;
  qryTerminalTEL.AsString          := qryTerminalLMerchantDoy.AsString;
  qryTerminalFAX.AsString          := qryTerminalLMerchantAFM.AsString;
  qryTerminalCONTACT.AsString      := '1';
  qryTerminalAFM.AsString          := '1';
  qryTerminalDOY.AsString          := '1';
  qryTerminalTERM_TYPE.AsString    := '1';
  qryTerminalSR_NO.AsString        := '1';
  qryTerminalBANK_NOTE.AsString    := '1';
  qryTerminalDATE_SEND.AsString    := 'MAGIC6100';
  qryTerminalRULE1.AsString        := '';
  qryTerminalRULE2.AsString        := '';
  qryTerminalRULE3.AsString        := '';
  qryTerminalRULE4.AsString        := 'ΠΡΑΤΗΡΙΟ ΥΓΡΩΝ ΚΑΥΣΙΜΩΝ';
  qryTerminalRULE5.AsString        := '';
end;

Procedure TfrmExportNewTerminal.FillCmd;
Var
  a, b, Prod, Prod1, Prod2, Prod3, Prod4, Prod5, Prod6, Prod7, Prod8, Prod9, Prod10, Prod16, FullCardNo: AnsiString;
  DayLmt, MonthLmt, x: Integer;
  CustName, Leo: String;
  ProdArr: array [1 .. 10] of AnsiString;
Begin
End;

procedure TfrmExportNewTerminal.FormCreate(Sender: TObject);
begin
  inherited;
  qryVStationContacts.Active := true;
  qryMST.Active              := true;
  qryTerminal.Active         := true;
end;

procedure TfrmExportNewTerminal.actPreviewExecute(Sender: TObject);
var
  frm: TrptNewCards;
begin
  // try
  // frm:= TrptNewCards.Create(self);
  /// /   frm.ADOTable1.ConnectionString := self.ExportADOConnection.ConnectionString;
  // frm.ADOTable1.Active:=True;
  // frm.PreviewModal;
  // finally
  // frm.Free;
  // end;
end;

End.
