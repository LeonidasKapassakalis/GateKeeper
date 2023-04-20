unit FEnhmDaily;
{ TODO : Check for Simult Update Fix Delete Update etc. }

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ActnList, ComCtrls, Common, CommonOut2000, DEnhmTrans,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC,
  Vcl.PlatformDefaultStyleActnCtrls, cxNavigator, FBaseDev0, Vcl.Menus,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmFEnhmDaily = class(TfrmBaseDev0)
    dxPageControl1: TcxPageControl;
    dxBarManager1: TActionManager;
    qryTran: TADOQuery;
    dtsTran: TDataSource;
    qryMerchant: TADOQuery;
    qryCustomer: TADOQuery;
    ActionList1: TActionList;
    actEnhmStation: TAction;
    actClose: TAction;
    EnhmSap: TADOTable;
    EnhmTrans: TADOQuery;
    InsTrans: TADOQuery;
    qryDeleteTranS: TADOQuery;
    IntegerField3: TIntegerField;
    WideStringField3: TWideStringField;
    IntegerField4: TIntegerField;
    WideStringField4: TWideStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    UpdCommandAct: TAction;
    EnhmSapCODEPRAT: TIntegerField;
    EnhmSapCODECUST: TIntegerField;
    EnhmSapAMOUNT: TIntegerField;
    EnhmSapNEG: TIntegerField;
    EnhmSapSTEXT: TStringField;
    EnhmSapLOGARDATE: TStringField;
    EnhmSapDIAK: TIntegerField;
    InsTransTRANDLID: TAutoIncField;
    InsTransSTATIONID: TIntegerField;
    InsTransCUSTOMERID: TIntegerField;
    InsTransDEBIT: TFloatField;
    InsTransCREDIT: TFloatField;
    InsTransTTEXT: TWideStringField;
    InsTransTRANDLDATE: TDateTimeField;
    InsTransTRANBSID: TIntegerField;
    InsTransINSDT: TDateTimeField;
    InsTransUPDDT: TDateTimeField;
    InsTransINSUSR: TIntegerField;
    InsTransUPDUSR: TIntegerField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ActionToolBar1: TActionToolBar;
    StatusBar1: TStatusBar;
    qryTranCustomerSapCode: TWideStringField;
    qryTranMerchantSAPCode: TWideStringField;
    qryTranSumAmount: TFloatField;
    qryTranSumQuantity: TFloatField;
    cxGrid1DBTableView1CustomerSapCode: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantSAPCode: TcxGridDBColumn;
    cxGrid1DBTableView1SumAmount: TcxGridDBColumn;
    cxGrid1DBTableView1SumQuantity: TcxGridDBColumn;
    qryMerchantMerchantId: TAutoIncField;
    qryMerchantName: TWideStringField;
    qryCustomerCustomerId: TAutoIncField;
    qryCustomerName: TWideStringField;
    qryTranLCustomer: TStringField;
    qryTranLMerchant: TStringField;
    cxGrid1DBTableView1LCustomer: TcxGridDBColumn;
    cxGrid1DBTableView1LMerchant: TcxGridDBColumn;
    qryCustomerSapCode: TWideStringField;
    qryMerchantSapCode: TWideStringField;
    qryTranLCustId: TIntegerField;
    qryTranLMerId: TIntegerField;
    cxGrid1DBTableView1LCustId: TcxGridDBColumn;
    cxGrid1DBTableView1LMerId: TcxGridDBColumn;
    qryTranLDiak: TStringField;
    qryCustomerDiakId: TIntegerField;
    cxGrid1DBTableView1LDiak: TcxGridDBColumn;
    qryDiak: TADOQuery;
    qryDiakDiakID: TIntegerField;
    qryDiakDescr: TWideStringField;
    qryDiakDiakDays: TIntegerField;
    qryDiakDiakSAP: TIntegerField;
    qryDiakInsUsr: TIntegerField;
    qryDiakInsDT: TDateTimeField;
    qryDiakUpdUsr: TIntegerField;
    qryDiakUpdDT: TDateTimeField;
    qryDiakDeleted: TBooleanField;
    qryDiakDelUsr: TIntegerField;
    qryDiakDelDT: TDateTimeField;
    qryDiakInActive: TBooleanField;
    qryDiakInActiveUsr: TIntegerField;
    qryDiakInActiveDt: TDateTimeField;
    qryCustomerLDiakSap: TStringField;
    qryTranLDiakSap: TStringField;
    cxGrid1DBTableView1LDiakSap: TcxGridDBColumn;
    procedure actEnhmStationExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    DM: TDMEnhmTrans;
    ToDate: TDateTime;
    SqlParamText: string;
    SumValue: String;
    SumValueG0: String;
    SumValueL0: String;
  end;

implementation

uses Globals, DMain, FMain;

{$R *.dfm}

procedure TfrmFEnhmDaily.actEnhmStationExecute(Sender: TObject);
var
  x: Integer;
  CallVar: Variant;
  BatchNo: Integer;
  YY, MM, DD: Word;
  YYL, MML, DDL: Word;
  LogarDate: TDateTime;
  xxx: Integer;
  PostOk: Boolean;
begin
  // Check if all Customers Station Have Valid Sap Codes
  qryTran.First;
  repeat
    try
      x := qryTranCustomerSapCode.AsInteger
    except
      MessageDlg('Πρόβλημα με Κωδικό SAP Πελάτη ' + qryTranCustomerSapCode.AsString, mtError, [mbOK], 0);
      exit;
    end;
    if Not x > 0 then
      begin
        MessageDlg('Πρόβλημα με Κωδικό SAP Πελάτη ' + qryTranCustomerSapCode.AsString, mtError, [mbOK], 0);
        exit;
      end;

    try
      x := qryTranMerchantSAPCode.AsInteger
    except
      MessageDlg('Πρόβλημα με Κωδικό SAP Πρατηρίου ' + qryTranMerchantSAPCode.AsString, mtError, [mbOK], 0);
      exit;
    end;
    if Not x > 0 then
      begin
        MessageDlg('Πρόβλημα με Κωδικό SAP Πρατηρίου ' + qryTranMerchantSAPCode.AsString, mtError, [mbOK], 0);
        exit;
      end;
    qryTran.Next;
  until qryTran.Eof;

  // Check for empty Transfer File
  EnhmSap.Active := True;
  if Not EnhmSap.IsEmpty then
    begin
      MessageDlg('Υπάρχει ήδη Αρχείο!' + #13 + #10 + 'Πρέπει να Διαγραφεί', mtError, [mbOK], 0);
      exit;
    end;

  if FormDateTitle(Self, LogarDate, 'Ενημέρωση αξιών για', csDate) = mrCancel then
    exit;

  DecodeDate(ToDate, YY, MM, DD);
  DecodeDate(LogarDate, YYL, MML, DDL);

  // Requery Data from Server to find last Enhm
  DM.qryEnhmDlCall.Close;
  DM.qryEnhmDlCall.Open;

  if DM.qryEnhmDlCall.Locate('EnDLCallDate;EnDLCallTry;EnDLCallFrom', VarArrayOf([Inttostr(DD) + '/' + Inttostr(MM) + '/' + Inttostr(YY), '0', '1']), []) then
    begin
      { MessageDlg('Εχεί γίνει η ενημέρωση για την ημέρα.Δεν μπορεί να γίνει ξανά.', mtError, [mbOK], 0);
        exit; }
      if MessageDlg('Εχεί γίνει η ενημέρωση για την ημέρα.Nα γίνει ξανά.', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        exit
      else
        begin
          PostOk := False;
          xxx    := 0;
          repeat
            DM.qryEnhmDlCall.Insert;
            DM.qryEnhmDlCall.Edit;
            DM.qryEnhmDlCall.FieldByName('EnDLCallDate').AsDateTime := ToDate;
            DM.qryEnhmDlCall.FieldByName('EnDLCallTry').AsInteger := xxx;
            DM.qryEnhmDlCall.FieldByName('EnDLCallFrom').AsInteger := 1;
            try
              DM.qryEnhmDlCall.Post;
              PostOk := True;
            except
              DM.qryEnhmDlCall.Cancel;
              inc(xxx);
            end
          until PostOk = True;
        end;
    end
    { begin
      if MessageDlg('Εχετε ήδη Ενημερώσει για την Ημερομηνία.' + chr(13) +
      'Nα διαγραφούν οι εγγραφές;', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
      qryDeleteTranS.Parameters.ParamByName('PTranBSID').Value:=GeneralDM.tblEnhmDlCallENDLCALLID.AsInteger;
      qryDeleteTranS.ExecSQL;
      end
      else
      exit;
      end }
  else
    begin
      PostOk := False;
      xxx    := 0;
      repeat
        DM.qryEnhmDlCall.Insert;
        DM.qryEnhmDlCall.Edit;
        DM.qryEnhmDlCall.FieldByName('EnDLCallDate').AsDateTime := ToDate;
        DM.qryEnhmDlCall.FieldByName('EnDLCallTry').AsInteger := xxx;
        DM.qryEnhmDlCall.FieldByName('EnDLCallFrom').AsInteger := 1;
        try
          DM.qryEnhmDlCall.Post;
          PostOk := True;
        except
          DM.qryEnhmDlCall.Cancel;
          inc(xxx);
        end
      until PostOk = True;
    end;
  if DM.qryEnhmDlCall.Locate('EnDLCallDate;EnDLCallTry;EnDLCallFrom', VarArrayOf([Inttostr(DD) + '/' + Inttostr(MM) + '/' + Inttostr(YY), Inttostr(xxx), '1']), []) then
    begin
      BatchNo := DM.qryEnhmDlCallENDLCALLID.AsInteger;
    end
  else
    begin
      ShowMessage('Πρόβλημα στην Ενημέρωση');
      exit;
    end;

  qryTran.First;
  StatusBar1.Panels[0].Text := ' ';
  repeat
    EnhmSap.Append;
    EnhmSapCODEPRAT.AsInteger := qryTranMerchantSAPCode.AsInteger;
    EnhmSapCODECUST.AsInteger := qryTranCustomerSapCode.AsInteger;
    EnhmSapAMOUNT.AsInteger   := Round(qryTranSumAmount.AsFloat * 100);
    if qryTranSumAmount.AsFloat > 0 then
      EnhmSapNEG.AsInteger := 0
    else
      EnhmSapNEG.AsInteger := 1;
    try
      EnhmSapDIAK.AsInteger := strtoint(qryTranLDiakSap.AsString);
    except
      EnhmSapDIAK.AsInteger := 2000
    end;
    EnhmSapLOGARDATE.AsString := Format('%4.4d%2.2d%2.2d', [YYL, MML, DDL]);
    EnhmSapSTEXT.AsString     := 'Ενημέρωση Κινήσεων(Ημ.) για ' + Format('%2.2d%2.2d%2.2d', [DD, MM, (YY mod 1000)]);
    // 2013    StatusBar1.Panels[0].Text   :='Ενημέρωση Κινήσεων Πελάτη '+ qryTranCustomerDescr.AsString + ' Πρατηρίου ' + qryTranStationDescr.AsString;
    StatusBar1.Refresh;
    EnhmSap.Post;

    InsTrans.Active := True;
    InsTrans.Insert;
    InsTrans.Edit;
    InsTransSTATIONID.AsInteger   := qryTranLMerId.AsInteger; // TranStationId.AsInteger;
    InsTransCUSTOMERID.AsInteger  := qryTranLCustId.AsInteger; // AcardCustomerId.AsInteger;
    InsTransTRANBSID.AsInteger    := BatchNo;
    InsTransTRANDLDATE.AsDateTime := ToDate;
    InsTransCREDIT.AsFloat        := qryTranSumAmount.AsFloat;
    InsTransTTEXT.AsString        := 'Ενημέρωση Κινήσεων για ' + datetostr(ToDate);
    InsTransINSDT.AsDateTime      := now();
    InsTransUPDDT.AsDateTime      := now();
    InsTransINSUSR.AsInteger      := gUUserId;
    InsTransUPDUSR.AsInteger      := gUUserId;
    InsTrans.Post;

    qryTran.Next;
  until qryTran.Eof;

  // EnhmTrans.SQL.Add(SqlParamText);
  EnhmTrans.Parameters.ParamByName('BTStation').Value := BatchNo;
  EnhmTrans.Parameters.ParamByName('BTUpd').Value     := True;
  EnhmTrans.ExecSQL;

  StatusBar1.Panels[0].Text := ' ';

  CreateDraftMail(ReadApplicationIni(INI_ADO_SECTION, MAIL_TO), ReadApplicationIni(INI_ADO_SECTION, MAIL_CC), ReadApplicationIni(INI_ADO_SECTION, MAIL_BCC),
    'Ενημέρωση Ημερησίου Αρχείου AVINCARD', 'Ενημέρωση Ημερησίου Αρχείου AVINCARD ' + datetostr(ToDate) + chr(13) + SumValue + chr(13) + SumValueG0 + chr(13) + SumValueL0);

  MessageDlg('Ολοκλήρωση Διαδικασίας!', mtInformation, [mbOK], 0);
end;

procedure TfrmFEnhmDaily.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmFEnhmDaily.FormCreate(Sender: TObject);
begin
  EnhmSap.Active           := False;
  EnhmSap.ConnectionString := '';
  EnhmSap.ConnectionString := ReadApplicationIni(INI_ADO_SECTION, INI_EXPORT_SAP_DAILY);
  EnhmSap.Active           := True;

  DM := TDMEnhmTrans.Create(Self);

end;

end.
