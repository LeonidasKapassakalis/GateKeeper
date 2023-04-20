Unit ExportNew;

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
  RNewCards, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, FBaseDev0, Vcl.Menus;

Type
  TfrmExportNew = Class(TfrmBaseDev0)
    ActionList1: TActionList;
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
    qryACardDAYAMOUNT: TFloatField;
    qryACardMONTHAMOUNT: TFloatField;
    qryCustomer: TADOQuery;
    qryCustomerCUSTOMERID: TAutoIncField;
    qryCustomerNAME: TWideStringField;
    Label2: TLabel;
    ExportADOConnection: TADOConnection;
    cmdExport: TADOCommand;
    qryACardREGNO: TWideStringField;
    actPreview: TAction;
    UpdCommandAct: TAction;
    qryACardIGROUPID5: TIntegerField;
    qryACardACARDHOLDER: TWideStringField;
    qryACardISACTIVE: TBooleanField;
    qryACardEXPIREPHDATE: TDateTimeField;
    qryACardEXPIRELODATE: TDateTimeField;
    qryACardEMPLOYEESID: TIntegerField;
    qryACardNEWCARDBOOLEAN: TBooleanField;
    qryACardNEWCARDID: TIntegerField;
    qryACardCARDHASEMPNAME: TBooleanField;
    ActionManager1: TActionManager;
    ActionToolBar1: TActionToolBar;
    qryACardACARDCODENUM: TIntegerField;
    qryACardINACTIVEDATE: TDateTimeField;
    qryACardINACTIVEUSR: TIntegerField;
    qryACardINACTIVENOTES: TWideStringField;
    qryACardIGROUPID6: TIntegerField;
    qryACardIGROUPID7: TIntegerField;
    qryACardIGROUPID8: TIntegerField;
    qryACardIGROUPID9: TIntegerField;
    qryACardIGROUPID10: TIntegerField;
    qryACardCOSTCENTERID: TIntegerField;
    qryACardPending: TBooleanField;
    Procedure actCancelExecute(Sender: TObject);
    Procedure actOKExecute(Sender: TObject);
    Procedure FormShow(Sender: TObject);
    Procedure actOKUpdate(Sender: TObject);
    Procedure ExportADOConnectionBeforeConnect(Sender: TObject);
    procedure actPreviewExecute(Sender: TObject);
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

Uses Globals0, Common, DMain; // Globals

Resourcestring
  ASK_STR_ADO_CONNECTION = 'Θέλετε να ορίσετε την σύνδεση με την βάση δεδομένων των στοιχείων προσωποποίησης';

{$R *.dfm}

Procedure TfrmExportNew.FormShow(Sender: TObject);
Begin
  Label2.Caption := ' ';
  ADOError       := false;
  If (Length(gExportADOConStr) = 0) Then
    Begin
      If (AskUserYes(ASK_STR_ADO_CONNECTION) = true) Then
        Begin
          ADOError := GetExportADOConStr;
        End
      Else
        ADOError := true;
    End;
  If (ADOError = false) Then
    Begin
      Try
        ExportADOConnection.Open;
        If (ExportADOConnection.Connected = false) Then
          ADOError := true;
      Except
        ADOError := true;
      End;
    End;
End;

Procedure TfrmExportNew.actCancelExecute(Sender: TObject);
Begin
  Close;
End;

Procedure TfrmExportNew.actOKExecute(Sender: TObject);
Begin
  DoExport;
  Close;
End;

Procedure TfrmExportNew.DoExport;
Begin
  Label2.Caption := 'Ανάγνωση πελατών ';
  qryCustomer.Close;
  qryCustomer.Open;

  Label2.Caption := 'Ανάγνωση καρτών';
  qryACard.Close;
  qryACard.SQL.Clear;
  qryACard.SQL.Add('SELECT * FROM ACARD WHERE CREATEBOOLEAN = ' + ADOYesStr);
  qryACard.Open;
  Label2.Caption := ' ';
  CmdSubString   := 'CARDNO, COMPANYNAME, VEHICLENO, DAYFLOORLIMIT, MONTHFLOORLIMIT, ' + 'STARTINGDATE, EXPIRATIONDATE, VERSION, PRODUCT1, PRODUCT2, PRODUCT3, PRODUCT4, ' +
    'PRODUCT5, PRODUCT6, PRODUCT7, PRODUCT8, ' + 'PRODUCT9, PRODUCT10, PRODUCT11, PRODUCT12, ' + 'PRODUCT13, PRODUCT14, PRODUCT15, PRODUCT16';
  If (qryACard.RecordCount > 0) Then
    Begin
      ProgressBar1.Min      := 0;
      ProgressBar1.Max      := qryACard.RecordCount;
      ProgressBar1.Position := 0;
      cmdExport.CommandText := 'DELETE FROM AVIN';
      cmdExport.Execute;
      qryACard.First;
      While (qryACard.Eof = false) Do
        Begin
          ProgressBar1.Position := ProgressBar1.Position + 1;
          If (qryACardCREATEBOOLEAN.AsBoolean = true) Then
            Begin { to be on the safe side of the game !!! }
              FillCmd;
              qryACard.Edit;
              qryACardCREATEBOOLEAN.AsBoolean := false;
              qryACardPending.AsBoolean       := true;
              qryACard.Post;
            End;
          qryACard.Next;
        End;
      Try
        qryACard.UpdateBatch; { TODO : μήπως πρέπει να γίνεται ερώτηση στον χειριστή ??? }
      Except
        ;
      End;
      ProgressBar1.Position := ProgressBar1.Max;
    End
  Else
    ShowMessage('Δεν υπάρχουν εγγραφές για νέες κάρτες');
End;

Procedure TfrmExportNew.actOKUpdate(Sender: TObject);
Begin
  If (ADOError = true) Then
    (Sender As TAction).Enabled := false
  Else
    (Sender As TAction).Enabled := true;
End;

Function TfrmExportNew.GetExportADOConStr: Boolean;
var
  a: AnsiString;
  f: TIniFile;
Begin
  If EditConnectionString(ExportADOConnection) Then
    Begin
      gExportADOConStr := ExportADOConnection.ConnectionString;
      a                := ChangeFileExt(Application.ExeName, '.INI');
      f                := TIniFile.Create(a);
      f.WriteString(INI_ADO_SECTION, INI_EXPORT_STRING_LINE, gExportADOConStr);
      f.Free;
    End;
  If (Length(gExportADOConStr) = 0) Then
    Result := true
  Else
    Result := false;
End;

Procedure TfrmExportNew.ExportADOConnectionBeforeConnect(Sender: TObject);
Begin
  ExportADOConnection.Close;
  ExportADOConnection.ConnectionString := gExportADOConStr;
End;

Procedure TfrmExportNew.FillCmd;
Var
  a, b, Prod, Prod1, Prod2, Prod3, Prod4, Prod5, Prod6, Prod7, Prod8, Prod9, Prod10, Prod16, FullCardNo: AnsiString;
  DayLmt, MonthLmt, x: Integer;
  CustName, Leo: String;
  ProdArr: array [1 .. 10] of AnsiString;
Begin
  If (qryCustomer.Locate('CUSTOMERID', qryACardCUSTOMERID.AsInteger, []) = true) Then
    Begin
      DayLmt   := Trunc(DoubleRnd((qryACardDAYAMOUNT.AsFloat), 0));
      MonthLmt := Trunc(DoubleRnd((qryACardMONTHAMOUNT.AsFloat), 0));
      if (qryACardIGROUPID1.IsNull = false) then
        Prod1 := ADOYesStr
      else
        Prod1 := ADONoStr;
      if (qryACardIGROUPID2.IsNull = false) then
        Prod2 := ADOYesStr
      else
        Prod2 := ADONoStr;
      if (qryACardIGROUPID3.IsNull = false) then
        Prod3 := ADOYesStr
      else
        Prod3 := ADONoStr;
      if (qryACardIGROUPID4.IsNull = false) then
        Prod4 := ADOYesStr
      else
        Prod4 := ADONoStr;

      for x        := 1 to 10 do
        ProdArr[x] := ADONoStr;

      for x := 1 to 10 do
        begin
          if Not qryACard.FieldByName('IGROUPID' + inttostr(x)).IsNull then
            ProdArr[qryACard.FieldByName('IGROUPID' + inttostr(x)).AsInteger] := ADOYesStr;
        end;

{$REGION 'OldCode'}
      // Prod1  := ADONoStr;
      // Prod2  := ADONoStr;
      // Prod3  := ADONoStr;
      // Prod4  := ADONoStr;
      // Prod5  := ADONoStr;
      // Prod6  := ADONoStr;
      // Prod7  := ADONoStr;
      // Prod8  := ADONoStr;
      // Prod9  := ADONoStr;
      // Prod10 := ADONoStr;

      // if ((qryACardIGROUPID1.IsNull = false) And
      // (qryACardIGROUPID1.AsInteger = 1))
      // then Prod1 := ADOYesStr;
      // if ((qryACardIGROUPID1.IsNull = false) And
      // (qryACardIGROUPID1.AsInteger = 2))
      // then Prod2 := ADOYesStr;
      // if ((qryACardIGROUPID1.IsNull = false) And
      // (qryACardIGROUPID1.AsInteger = 3))
      // then Prod3 := ADOYesStr;
      // if ((qryACardIGROUPID1.IsNull = false) And
      // (qryACardIGROUPID1.AsInteger = 4))
      // then Prod4 := ADOYesStr;
      // if ((qryACardIGROUPID1.IsNull = false) And
      // (qryACardIGROUPID1.AsInteger = 5))
      // then Prod5 := ADOYesStr;
      // if ((qryACardIGROUPID1.IsNull = false) And
      // (qryACardIGROUPID1.AsInteger = 6))
      // then Prod6 := ADOYesStr;
      // if ((qryACardIGROUPID1.IsNull = false) And
      // (qryACardIGROUPID1.AsInteger = 7))
      // then Prod7 := ADOYesStr;
      // if ((qryACardIGROUPID1.IsNull = false) And
      // (qryACardIGROUPID1.AsInteger = 8))
      // then Prod8 := ADOYesStr;
      // if ((qryACardIGROUPID1.IsNull = false) And
      // (qryACardIGROUPID1.AsInteger = 9))
      // then Prod9 := ADOYesStr;
      // if ((qryACardIGROUPID1.IsNull = false) And
      // (qryACardIGROUPID1.AsInteger = 10))
      // then Prod10 := ADOYesStr;
      //
      //
      //
      // if ((qryACardIGROUPID2.IsNull = false) And
      // (qryACardIGROUPID2.AsInteger = 1))
      // then Prod1 := ADOYesStr;
      // if ((qryACardIGROUPID2.IsNull = false) And
      // (qryACardIGROUPID2.AsInteger = 2))
      // then Prod2 := ADOYesStr;
      // if ((qryACardIGROUPID2.IsNull = false) And
      // (qryACardIGROUPID2.AsInteger = 3))
      // then Prod3 := ADOYesStr;
      // if ((qryACardIGROUPID2.IsNull = false) And
      // (qryACardIGROUPID2.AsInteger = 4))
      // then Prod4 := ADOYesStr;
      // if ((qryACardIGROUPID2.IsNull = false) And
      // (qryACardIGROUPID2.AsInteger = 5))
      // then Prod5 := ADOYesStr;
      // if ((qryACardIGROUPID2.IsNull = false) And
      // (qryACardIGROUPID2.AsInteger = 6))
      // then Prod6 := ADOYesStr;
      //
      // if ((qryACardIGROUPID3.IsNull = false) And
      // (qryACardIGROUPID3.AsInteger = 1))
      // then Prod1 := ADOYesStr;
      // if ((qryACardIGROUPID3.IsNull = false) And
      // (qryACardIGROUPID3.AsInteger = 2))
      // then Prod2 := ADOYesStr;
      // if ((qryACardIGROUPID3.IsNull = false) And
      // (qryACardIGROUPID3.AsInteger = 3))
      // then Prod3 := ADOYesStr;
      // if ((qryACardIGROUPID3.IsNull = false) And
      // (qryACardIGROUPID3.AsInteger = 4))
      // then Prod4 := ADOYesStr;
      // if ((qryACardIGROUPID3.IsNull = false) And
      // (qryACardIGROUPID3.AsInteger = 5))
      // then Prod5 := ADOYesStr;
      // if ((qryACardIGROUPID3.IsNull = false) And
      // (qryACardIGROUPID3.AsInteger = 6))
      // then Prod6 := ADOYesStr;
      //
      // if ((qryACardIGROUPID4.IsNull = false) And
      // (qryACardIGROUPID4.AsInteger = 1))
      // then Prod1 := ADOYesStr;
      // if ((qryACardIGROUPID4.IsNull = false) And
      // (qryACardIGROUPID4.AsInteger = 2))
      // then Prod2 := ADOYesStr;
      // if ((qryACardIGROUPID4.IsNull = false) And
      // (qryACardIGROUPID4.AsInteger = 3))
      // then Prod3 := ADOYesStr;
      // if ((qryACardIGROUPID4.IsNull = false) And
      // (qryACardIGROUPID4.AsInteger = 4))
      // then Prod4 := ADOYesStr;
      // if ((qryACardIGROUPID4.IsNull = false) And
      // (qryACardIGROUPID4.AsInteger = 5))
      // then Prod5 := ADOYesStr;
      // if ((qryACardIGROUPID4.IsNull = false) And
      // (qryACardIGROUPID4.AsInteger = 6))
      // then Prod6 := ADOYesStr;
      //
      //
      // if ((qryACardIGROUPID5.IsNull = false) And
      // (qryACardIGROUPID5.AsInteger = 1))
      // then Prod1 := ADOYesStr;
      // if ((qryACardIGROUPID5.IsNull = false) And
      // (qryACardIGROUPID5.AsInteger = 2))
      // then Prod2 := ADOYesStr;
      // if ((qryACardIGROUPID5.IsNull = false) And
      // (qryACardIGROUPID5.AsInteger = 3))
      // then Prod3 := ADOYesStr;
      // if ((qryACardIGROUPID5.IsNull = false) And
      // (qryACardIGROUPID5.AsInteger = 4))
      // then Prod4 := ADOYesStr;
      // if ((qryACardIGROUPID5.IsNull = false) And
      // (qryACardIGROUPID5.AsInteger = 5))
      // then Prod5 := ADOYesStr;
      // if ((qryACardIGROUPID5.IsNull = false) And
      // (qryACardIGROUPID5.AsInteger = 6))
      // then Prod6 := ADOYesStr;
      //
      // if ((qryACardIGROUPID6.IsNull = false) And
      // (qryACardIGROUPID6.AsInteger = 1))
      // then Prod1 := ADOYesStr;
      // if ((qryACardIGROUPID6.IsNull = false) And
      // (qryACardIGROUPID6.AsInteger = 2))
      // then Prod2 := ADOYesStr;
      // if ((qryACardIGROUPID6.IsNull = false) And
      // (qryACardIGROUPID6.AsInteger = 3))
      // then Prod3 := ADOYesStr;
      // if ((qryACardIGROUPID6.IsNull = false) And
      // (qryACardIGROUPID6.AsInteger = 4))
      // then Prod4 := ADOYesStr;
      // if ((qryACardIGROUPID6.IsNull = false) And
      // (qryACardIGROUPID6.AsInteger = 5))
      // then Prod5 := ADOYesStr;
      // if ((qryACardIGROUPID6.IsNull = false) And
      // (qryACardIGROUPID6.AsInteger = 6))
      // then Prod6 := ADOYesStr;

{$ENDREGION}
      if (qryACardMETERBOOLEAN.AsBoolean = true) then
        Prod16 := ADOYesStr
      else
        Prod16   := ADONoStr;
      Prod       := ADONoStr;
      FullCardNo := ReturnFullIdNoUnfor(qryACardACARDCODE.AsInteger);
      if qryACardCARDHASEMPNAME.AsBoolean = true then
        CustName := qryACardACARDHOLDER.AsString
      else
        CustName := qryCustomerNAME.AsString;
      // 16052005
      // CustName:=qryCustomerNAME.AsString;

      if Length(CustName) > 40 then
        Delete(CustName, 40, (Length(CustName) - 40));
      // a := QuotedStr(qryACardACARDCODE.AsString) + ', ' + QuotedStr(qryCustomerNAME.AsString) + ', ' +
      // QuotedStr( qryCustomerNAME.AsString) + ', ' +
      a := QuotedStr(FullCardNo) + ', ' + QuotedStr(CustName) + ', ' + QuotedStr(qryACardREGNO.AsString) + ', ' + Format('%.5d', [DayLmt]) + ', ' + Format('%.5d', [MonthLmt]) +
        ', ' + FormatDateTime('MM', qryACardISSUEDATE.AsDateTime) + FormatDateTime('YY', qryACardISSUEDATE.AsDateTime) + ', ' + FormatDateTime('MM', qryACardEXPIREDATE.AsDateTime)
        + FormatDateTime('YY', qryACardEXPIREDATE.AsDateTime) + ', 1, ' + { VersionNumber=1 !!! }
        ProdArr[1] + ', ' + ProdArr[2] + ', ' + ProdArr[3] + ', ' + ProdArr[4] + ', ' + ProdArr[5] + ', ' + ProdArr[6] + ', ' + ProdArr[7] + ' ,' + ProdArr[8] + ', ' + ProdArr[9] +
        ', ' + ProdArr[10] + ', ' + Prod + ' ,' + Prod + ', ' +
      // Prod1 + ', ' + Prod2 + ', ' + Prod3 + ', ' + Prod4 + ', ' +
      // Prod5 + ', ' + Prod6 + ', ' + Prod7 + ' ,' + Prod8 + ', ' +
      // Prod9 + ', ' + Prod10 + ', ' + Prod + ' ,' + Prod + ', ' +
        Prod + ', ' + Prod + ', ' + Prod + ' ,' + Prod16;
      // b := 'CARDNO, COMPANYNAME, VEHICLENO, DAYFLOORLIMIT, MONTHFLOORLIMIT, ' +
      // 'STARTINGDATE, EXPIRATIONDATE, VERSION, PRODUCT1, PRODUCT2, PRODUCT3, PRODUCT4, ' +
      // 'PRODUCT5, PRODUCT6, PRODUCT7, PRODUCT8, ' +
      // 'PRODUCT9, PRODUCT10, PRODUCT11, PRODUCT12, ' +
      // 'PRODUCT13, PRODUCT14, PRODUCT15, PRODUCT16';
      cmdExport.CommandText := 'INSERT INTO AVIN (' + CmdSubString + ') VALUES (' + a + ')';
      cmdExport.Execute;
    End;
End;

procedure TfrmExportNew.actPreviewExecute(Sender: TObject);
var
  frm: TrptNewCards;
begin
  try
    frm := TrptNewCards.Create(self);
    // frm.ADOTable1.ConnectionString := self.ExportADOConnection.ConnectionString;
    frm.ADOTable1.Active := true;
    frm.PreviewModal;
  finally
    frm.Free;
  end;
end;

End.
