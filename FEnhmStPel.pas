unit FEnhmStPel;

{ TODO :
  Implement SAP Call in a Function.
  Set Sap Connector in a global Space }

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ActnList, ComCtrls, Common, FBaseDev0,
  StdCtrls, SAPFunctionsOCX_TLB, OleCtrls, SAPLogonCtrl_TLB, DBClient,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore,
  cxGraphics, cxControls, DEnhmTrans, DMain, CommonOut2000,
  cxLookAndFeels, cxLookAndFeelPainters, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPScxPageControlProducer,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC,
  Vcl.PlatformDefaultStyleActnCtrls, cxNavigator, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmFEnhmStPel = class(TfrmBaseDev0)
    dxPageControl1: TcxPageControl;
    tabBrowser: TcxTabSheet;
    dxBarManager1: TActionManager;
    qryTran: TADOQuery;
    dtsTran: TDataSource;
    qryMerchant: TADOQuery;
    qryCustomer: TADOQuery;
    ActionList1: TActionList;
    actEnhmStation: TAction;
    actClose: TAction;
    EnhmSap: TADOTable;
    EnhmSapCodePrat: TIntegerField;
    EnhmSapCodeCust: TIntegerField;
    EnhmSapAmount: TIntegerField;
    EnhmSapNeg: TIntegerField;
    EnhmSapSText: TStringField;
    EnhmTrans: TADOQuery;
    StatusBar1: TStatusBar;
    InsTrans: TADOQuery;
    InsTransTRANSID: TAutoIncField;
    InsTransSTATIONID: TIntegerField;
    InsTransDEBIT: TFloatField;
    InsTransCREDIT: TFloatField;
    InsTransTTEXT: TWideStringField;
    InsTransTRANSDATE: TDateTimeField;
    InsTransTRANBSID: TIntegerField;
    InsTransINSDT: TDateTimeField;
    InsTransUPDDT: TDateTimeField;
    InsTransINSUSR: TIntegerField;
    InsTransUPDUSR: TIntegerField;
    InsTransCUSTOMERID: TIntegerField;
    qryDeleteTranS: TADOQuery;
    IntegerField3: TIntegerField;
    WideStringField3: TWideStringField;
    IntegerField4: TIntegerField;
    WideStringField4: TWideStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    EnhmSapLOGARDATE: TStringField;
    EnhmSapDIAK: TIntegerField;
    UpdCommandAct: TAction;
    dxTabSheet1: TcxTabSheet;
    dxTabSheet2: TcxTabSheet;
    dxTabSheet3: TcxTabSheet;
    qrySumPela: TADOQuery;
    qrySumPrat: TADOQuery;
    qrySumPratSumAmount: TFloatField;
    qrySumPelaSumAmount: TFloatField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Memo1: TMemo;
    actCheckPelaSap: TAction;
    actCheckPratSap: TAction;
    SAPLogonControl1: TSAPLogonControl;
    SAPFunctions1: TSAPFunctions;
    Memo2: TMemo;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1CustomerSapCode: TWideStringField;
    ClientDataSet1SumAmount: TFloatField;
    ClientDataSet2: TClientDataSet;
    ClientDataSet1SapAmount: TFloatField;
    ClientDataSet2StationSapCode: TWideStringField;
    ClientDataSet2SumAmount: TFloatField;
    ClientDataSet2SapAmount: TFloatField;
    ClientDataSet2Status: TIntegerField;
    ClientDataSet1Status: TIntegerField;
    dxComponentPrinter1: TdxComponentPrinter;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    ActionToolBar1: TActionToolBar;
    ClientDataSet1LCustomerDesc: TStringField;
    ClientDataSet2StationDescr: TStringField;
    ClientDataSet1CustomerId: TStringField;
    ClientDataSet2StationId: TStringField;
    cxGrid2DBTableView1CustomerDesc: TcxGridDBColumn;
    cxGrid2DBTableView1CustomerId: TcxGridDBColumn;
    cxGrid2DBTableView1CustomerSapCode: TcxGridDBColumn;
    cxGrid2DBTableView1SumAmount: TcxGridDBColumn;
    cxGrid2DBTableView1SapAmount: TcxGridDBColumn;
    cxGrid2DBTableView1Status: TcxGridDBColumn;
    cxGrid3DBTableView1StationDescr: TcxGridDBColumn;
    cxGrid3DBTableView1StationId: TcxGridDBColumn;
    cxGrid3DBTableView1StationSapCode: TcxGridDBColumn;
    cxGrid3DBTableView1SumAmount: TcxGridDBColumn;
    cxGrid3DBTableView1SapAmount: TcxGridDBColumn;
    cxGrid3DBTableView1Status: TcxGridDBColumn;
    qryTranAcardCustomerId: TIntegerField;
    qryTranCustomerSapCode: TWideStringField;
    qryTranTranMerchantId: TIntegerField;
    qryTranMerchantSapCode: TWideStringField;
    qryTranSumAmount: TFloatField;
    qryTranSumQuantity: TFloatField;
    qrySumPelaCustomerSapCode: TWideStringField;
    qrySumPratMerchantSapCode: TWideStringField;
    qryCustomerCUSTOMERID: TAutoIncField;
    qryCustomerNAME: TWideStringField;
    qryMerchantMerchantId: TAutoIncField;
    qryMerchantName: TWideStringField;
    qryCustomerSAPCode: TWideStringField;
    qryMerchantSAPCode: TWideStringField;
    cxGrid1DBTableView1AcardCustomerId: TcxGridDBColumn;
    cxGrid1DBTableView1CustomerSapCode: TcxGridDBColumn;
    cxGrid1DBTableView1TranMerchantId: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantSapCode: TcxGridDBColumn;
    cxGrid1DBTableView1SumAmount: TcxGridDBColumn;
    cxGrid1DBTableView1SumQuantity: TcxGridDBColumn;
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
    qryTranLDiak: TStringField;
    qryTranLDiakSap: TStringField;
    cxGrid1DBTableView1LDiak: TcxGridDBColumn;
    cxGrid1DBTableView1LDiakSap: TcxGridDBColumn;
    qryCustomerDiakId: TIntegerField;
    qryCustomerLDiakSap: TStringField;
    procedure actEnhmStationExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCheckPelaSapExecute(Sender: TObject);
    procedure actCheckPratSapExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
  private
    FPratCheckStat: Boolean;
    FPelaCheck: Boolean;
    FPratCheck: Boolean;
    FPelaCheckStat: Boolean;
    procedure SetPelaCheck(const Value: Boolean);
    procedure SetPelaCheckStat(const Value: Boolean);
    procedure SetPratCheck(const Value: Boolean);
    procedure SetPratCheckStat(const Value: Boolean);
    { Private declarations }
  public
    DM: TDMEnhmTrans;
    ToDate: TDateTime;
    LogarDate: TDateTime;
    LogarDateToFile: TDateTime;

    SqlParamText: string;
    SumValue: String;

    function InsertDsPela(SapCode: Integer; SapAmount: Double): Boolean;
    function InsertDsPrat(SapCode: Integer; SapAmount: Double): Boolean;
    function CheckEqual(d1, d2: Double): Boolean;
    property PelaCheck: Boolean read FPelaCheck write SetPelaCheck;
    property PratCheck: Boolean read FPratCheck write SetPratCheck;
    property PelaCheckStat: Boolean read FPelaCheckStat write SetPelaCheckStat;
    property PratCheckStat: Boolean read FPratCheckStat write SetPratCheckStat;
  end;

implementation

uses Globals;

{$R *.dfm}

procedure TfrmFEnhmStPel.actEnhmStationExecute(Sender: TObject);
var
  x: Integer;
  CallVar: Variant;
  BatchNo: Integer;
  YY, MM, DD: Word;
  YYL, MML, DDL: Word;
  // LogarDate:TDateTime;
begin
  if PelaCheck = False then
    begin
      MessageDlg('Κάντε Ελέγχο Πελατών', mtError, [mbOK], 0);
      exit;
    end;

  if PratCheck = False then
    begin
      MessageDlg('Κάντε Ελέγχο Πρατηρίων', mtError, [mbOK], 0);
      exit;
    end;

  if PelaCheckStat = False then
    begin
      if MessageDlg('Πρόβλημα στον Ελέγχο Πελατών' + #13 + #10 + 'OK για συνέχεια.', mtError, [mbOK, mbCancel], 0) = mrCancel then
        exit;
    end;

  if PratCheckStat = False then
    begin
      if MessageDlg('Πρόβλημα στον Ελέγχο Πρατηρίων' + #13 + #10 + 'OK για συνέχεια.', mtError, [mbOK, mbCancel], 0) = mrCancel then
        exit;
    end;

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
      // ToFix 2014     x:=qryTranStationSapCode.AsInteger
      x := qryTranMerchantSapCode.AsInteger
    except
      MessageDlg('Πρόβλημα με Κωδικό SAP Πρατηρίου ' + qryTranMerchantSapCode.AsString, mtError, [mbOK], 0);
      exit;
    end;
    if Not x > 0 then
      begin
        MessageDlg('Πρόβλημα με Κωδικό SAP Πρατηρίου ' + qryTranMerchantSapCode.AsString, mtError, [mbOK], 0);
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

  if LogarDateToFile = 0 then
    if FormDateTitle(Self, LogarDateToFile, 'Ενημέρωση αξιών για', csDate) = mrCancel then
      exit;

  DecodeDate(ToDate, YY, MM, DD);
  DecodeDate(LogarDateToFile, YYL, MML, DDL);

  // Requery Data from Server to find last Enhm
  DM.qryEnhmSTCall.Close;
  DM.qryEnhmSTCall.Open;

  if DM.qryEnhmSTCall.Locate('EnSCallDate;EnSCallFrom', VarArrayOf([Inttostr(DD) + '/' + Inttostr(MM) + '/' + Inttostr(YY), '1']), []) then
    begin
      if MessageDlg('Εχετε ήδη Ενημερώσει για την Ημερομηνία.' + chr(13) + 'Nα διαγραφούν οι εγγραφές;', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          qryDeleteTranS.Parameters.ParamByName('PTranBSID').Value := DM.qryEnhmSTCallENSCALLID.AsInteger;
          qryDeleteTranS.ExecSQL;
          // self.Refresh;
        end
      else
        exit;
    end
  else
    begin
      DM.qryEnhmSTCall.Insert;
      DM.qryEnhmSTCall.Edit;
      DM.qryEnhmSTCall.FieldByName('EnsCallDate').AsDateTime := ToDate;
      DM.qryEnhmSTCall.FieldByName('EnsCallFrom').AsInteger := 1;
      DM.qryEnhmSTCall.Post;
    end;
  // if GeneralDM.tblEnhmSTCall.Locate('EnsCallDate',CallVar,[]) then
  if DM.qryEnhmSTCall.Locate('EnSCallDate;EnSCallFrom', VarArrayOf([Inttostr(DD) + '/' + Inttostr(MM) + '/' + Inttostr(YY), '1']), []) then
    begin
      BatchNo := DM.qryEnhmSTCallENSCALLID.AsInteger;
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
    EnhmSapCodeCust.AsInteger := qryTranCustomerSapCode.AsInteger;
    EnhmSapCodePrat.AsInteger := qryTranMerchantSapCode.AsInteger;
    EnhmSapAmount.AsInteger   := Round(qryTranSumAmount.AsFloat * 100);
    if qryTranSumAmount.AsFloat > 0 then
      EnhmSapNeg.AsInteger := 0
    else
      EnhmSapNeg.AsInteger := 1;
    try
      EnhmSapDIAK.AsInteger := strtoint(qryTranLDiakSap.AsString);
    except
      EnhmSapDIAK.AsInteger := 2000
    end;
    // EnhmSapLOGARDATE.AsString   :=LogarDate;
    EnhmSapLOGARDATE.AsString := Format('%4.4d%2.2d%2.2d', [YYL, MML, DDL]);
    // EnhmSapSText.AsString       :='Ενημέρωση Κινήσεων της ' + datetostr(ToDate) ;
    EnhmSapSText.AsString := 'Ενημέρωση Κινήσεων της ' + Format('%2.2d%2.2d%2.2d', [DD, MM, (YY mod 1000)]);
    // To Fix 2014    StatusBar1.Panels[0].Text   :='Ενημέρωση Κινήσεων Πελάτη '+ qryTranCustomerDescr.AsString + ' Πρατηρίου ' + qryTranStationDescr.AsString;
    StatusBar1.Refresh;
    EnhmSap.Post;

    InsTrans.Active := True;
    InsTrans.Insert;
    InsTrans.Edit;
    InsTransSTATIONID.AsInteger  := qryTranTranMerchantId.AsInteger;
    InsTransCUSTOMERID.AsInteger := qryTranAcardCustomerId.AsInteger;
    InsTransTRANBSID.AsInteger   := BatchNo;
    InsTransTRANSDATE.AsDateTime := ToDate;
    InsTransCREDIT.AsFloat       := qryTranSumAmount.AsFloat;
    InsTransTTEXT.AsString       := 'Ενημέρωση Κινήσεων της ' + datetostr(ToDate);
    InsTransINSDT.AsDateTime     := now();
    InsTransUPDDT.AsDateTime     := now();
    InsTransINSUSR.AsInteger     := gUUserId;
    InsTransUPDUSR.AsInteger     := gUUserId;
    InsTrans.Post;

    qryTran.Next;
  until qryTran.Eof;

  EnhmTrans.Parameters.ParamByName('BTStation').Value := BatchNo;
  EnhmTrans.Parameters.ParamByName('BTUpd').Value     := True;
  EnhmTrans.ExecSQL;

  StatusBar1.Panels[0].Text := ' ';

  CreateDraftMail(ReadApplicationIni(INI_ADO_SECTION, MAIL_TO), ReadApplicationIni(INI_ADO_SECTION, MAIL_CC), ReadApplicationIni(INI_ADO_SECTION, MAIL_BCC),
    'Ενημέρωση Δεκαημέρου Αρχείου AVINCARD', 'Ενημέρωση Δεκαημέρου Αρχείου AVINCARD ' + datetostr(ToDate));

  Application.BringToFront;

  MessageDlg('Ολοκλήρωση Διαδικασίας!', mtInformation, [mbOK], 0);

end;

procedure TfrmFEnhmStPel.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmFEnhmStPel.FormCreate(Sender: TObject);
begin
  EnhmSap.Active           := False;
  EnhmSap.ConnectionString := ReadApplicationIni(INI_ADO_SECTION, INI_EXPORT_SAP_PRAT);
  EnhmSap.Active           := True;

  DM := TDMEnhmTrans.Create(Self);

  PelaCheck := False;
  PratCheck := False;
end;

procedure TfrmFEnhmStPel.actCheckPelaSapExecute(Sender: TObject);
var
  Funct, Rec_opt: Variant;
  x: Integer;
  OldCursor: TCursor;
begin
  inherited;
  if LogarDate = 0 then
    if FormDateTitle(Self, LogarDate, 'Ημερομηνία για συμφωνία SAP (Εως) ', csDate) = mrCancel then
      exit;

  PelaCheck     := True;
  PelaCheckStat := True;

  qrySumPela.First;

  OldCursor     := Screen.Cursor;
  Screen.Cursor := crHourGlass;

  repeat

    Funct := SAPFunctions1.Add('BAPI_AR_ACC_GETKEYDATEBALANCE');

    Funct.Exports('COMPANYCODE').Value  := '2000';
    Funct.Exports('CUSTOMER').Value     := '00000' + qrySumPelaCustomerSapCode.AsString;
    Funct.Exports('KEYDATE').Value      := datetostr(LogarDate);
    Funct.Exports('BALANCESPGLI').Value := '*';

    if not Funct.call then
      ShowMessage(Funct.exception);

    Rec_opt := Funct.tables.item('KEYBALANCE');

    Memo1.Lines.Add(qrySumPelaCustomerSapCode.AsString); // + ' ' +qrySumPelaCustomerDescr.AsString);

    for x := 1 to Rec_opt.rowcount do
      begin
        Memo1.Lines.Add(Rec_opt.Value[x, 1] + ' ' + Rec_opt.Value[x, 2] + ' ' + Rec_opt.Value[x, 3] + ' ' + Rec_opt.Value[x, 4] + ' ' + Rec_opt.Value[x, 5] + ' ' +
          Rec_opt.Value[x, 6]);
        if ((Rec_opt.Value[x, 1] = 'Θ') and (Rec_opt.Value[x, 2] = 'EUR')) then
          begin
            Memo1.Lines.Add('+ Special GL Found');
            InsertDsPela(qrySumPelaCustomerSapCode.AsInteger, Rec_opt.Value[x, 4])
          end;
        if ((Rec_opt.Value[x, 1] = 'Ψ') and (Rec_opt.Value[x, 2] = 'EUR')) then
          begin
            Memo1.Lines.Add('+++ Special GL Found');
            InsertDsPela(qrySumPelaCustomerSapCode.AsInteger, Rec_opt.Value[x, 4])
          end;
      end;
    Memo1.Lines.Add('-------------------------------');
    qrySumPela.Next;

  until qrySumPela.Eof;

  Screen.Cursor := OldCursor;

end;

procedure TfrmFEnhmStPel.actCheckPratSapExecute(Sender: TObject);
var
  Funct, Rec_opt: Variant;
  x: Integer;
  OldCursor: TCursor;
begin
  inherited;
  if LogarDate = 0 then
    if FormDateTitle(Self, LogarDate, 'Ημερομηνία για συμφωνία SAP (Εως) ', csDate) = mrCancel then
      exit;

  PratCheck     := True;
  PratCheckStat := True;

  qrySumPrat.First;

  OldCursor     := Screen.Cursor;
  Screen.Cursor := crHourGlass;

  repeat

    Funct := SAPFunctions1.Add('BAPI_AR_ACC_GETKEYDATEBALANCE');

    Funct.Exports('COMPANYCODE').Value  := '2000';
    Funct.Exports('CUSTOMER').Value     := '00000' + qrySumPratMerchantSapCode.AsString;
    Funct.Exports('KEYDATE').Value      := datetostr(LogarDate);
    Funct.Exports('BALANCESPGLI').Value := '*';

    if not Funct.call then
      ShowMessage(Funct.exception);

    Rec_opt := Funct.tables.item('KEYBALANCE');

    Memo2.Lines.Add(qrySumPratMerchantSapCode.AsString); // + ' ' +qrySumPratStationDescr.AsString);

    for x := 1 to Rec_opt.rowcount do
      begin
        Memo2.Lines.Add(Rec_opt.Value[x, 1] + ' ' + Rec_opt.Value[x, 2] + ' ' + Rec_opt.Value[x, 3] + ' ' + Rec_opt.Value[x, 4] + ' ' + Rec_opt.Value[x, 5] + ' ' +
          Rec_opt.Value[x, 6]);
        if ((Rec_opt.Value[x, 1] = 'Θ') and (Rec_opt.Value[x, 2] = 'EUR')) then
          begin
            Memo2.Lines.Add('+++ Special GL Found');
            InsertDsPrat(qrySumPratMerchantSapCode.AsInteger, Rec_opt.Value[x, 4])
          end;
        if ((Rec_opt.Value[x, 1] = 'Ψ') and (Rec_opt.Value[x, 2] = 'EUR')) then
          begin
            Memo2.Lines.Add('+++ Special GL Found');
            InsertDsPrat(qrySumPratMerchantSapCode.AsInteger, Rec_opt.Value[x, 4])
          end;
      end;
    Memo2.Lines.Add('-------------------------------');
    qrySumPrat.Next;

  until qrySumPrat.Eof;

  Screen.Cursor := OldCursor;

end;

procedure TfrmFEnhmStPel.FormActivate(Sender: TObject);
begin
  inherited;
  ClientDataSet1.Active := True;
  ClientDataSet2.Active := True;

  ClientDataSet1.CancelUpdates;
  ClientDataSet2.CancelUpdates;

  qrySumPela.First;
  repeat
    ClientDataSet1.Insert;
    ClientDataSet1.Edit;
    // ClientDataSet1AcardCustomerId.Value := qrySumPelaAcardCustomerId.Value;
    // ClientDataSet1CustomerDescr.Value   := qrySumPelaCustomerDescr.Value;
    ClientDataSet1CustomerSapCode.Value := qrySumPelaCustomerSapCode.Value;
    ClientDataSet1SumAmount.Value       := qrySumPelaSumAmount.Value;
    ClientDataSet1Status.AsInteger      := 1;
    ClientDataSet1SapAmount.AsFloat     := 0;
    ClientDataSet1.Post;
    qrySumPela.Next;
  until qrySumPela.Eof;

  qrySumPrat.First;
  repeat
    ClientDataSet2.Insert;
    ClientDataSet2.Edit;
    // ClientDataSet2TranStationId.Value   := qrySumPratTranStationId.Value;
    // ClientDataSet2StationDescr.Value    := qrySumPratStationDescr.Value;
    ClientDataSet2StationSapCode.Value := qrySumPratMerchantSapCode.Value;
    ClientDataSet2SumAmount.Value      := qrySumPratSumAmount.Value;
    ClientDataSet2Status.AsInteger     := 1;
    ClientDataSet2SapAmount.AsFloat    := 0;
    ClientDataSet2.Post;
    qrySumPrat.Next;
  until qrySumPrat.Eof;
end;

function TfrmFEnhmStPel.InsertDsPela(SapCode: Integer; SapAmount: Double): Boolean;
var
  SapVar: Variant;
begin
  SapVar := SapCode;
  if ClientDataSet1.Locate('Customer.SapCode', SapVar, []) then
    begin
      ClientDataSet1.Edit;
      ClientDataSet1SapAmount.AsFloat := abs(SapAmount);
      // if (ClientDataSet1SumAmount.AsFloat = abs(SapAmount)) then
      if CheckEqual(ClientDataSet1SumAmount.AsFloat, abs(SapAmount)) then
        begin
          ClientDataSet1Status.AsInteger := 0;
          result                         := True;
        end
      else
        begin
          ClientDataSet1Status.AsInteger := 1;
          PelaCheckStat                  := False;
          result                         := False;
        end;
      ClientDataSet1.Post;
    end
end;

function TfrmFEnhmStPel.InsertDsPrat(SapCode: Integer; SapAmount: Double): Boolean;
var
  SapVar: Variant;
begin
  SapVar := SapCode;
  if ClientDataSet2.Locate('Station.SapCode', SapVar, []) then
    begin
      ClientDataSet2.Edit;
      ClientDataSet2SapAmount.AsFloat := abs(SapAmount);
      // if (ClientDataSet2SumAmount.AsFloat = abs(SapAmount)) then
      if CheckEqual(ClientDataSet2SumAmount.AsFloat, abs(SapAmount)) then
        begin
          ClientDataSet2Status.AsInteger := 0;
          result                         := True;
        end
      else
        begin
          ClientDataSet2Status.AsInteger := 1;
          PratCheckStat                  := False;
          result                         := False;
        end;
      ClientDataSet2.Post;
    end
  // result := ClientDataSet2Status.AsBoolean;
end;

procedure TfrmFEnhmStPel.SetPelaCheck(const Value: Boolean);
begin
  FPelaCheck := Value;
end;

procedure TfrmFEnhmStPel.SetPelaCheckStat(const Value: Boolean);
begin
  FPelaCheckStat := Value;
end;

procedure TfrmFEnhmStPel.SetPratCheck(const Value: Boolean);
begin
  FPratCheck := Value;
end;

procedure TfrmFEnhmStPel.SetPratCheckStat(const Value: Boolean);
begin
  FPratCheckStat := Value;
end;

function TfrmFEnhmStPel.CheckEqual(d1, d2: Double): Boolean;
var
  x1, x2: LongInt;
begin
  x1 := Round(d1 * 100);
  x2 := Round(d2 * 100);
  if x1 = x2 then
    result := True
  else
    result := False;

end;

procedure TfrmFEnhmStPel.Action1Execute(Sender: TObject);
begin
  inherited;
  // dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfrmFEnhmStPel.Action2Execute(Sender: TObject);
begin
  inherited;
  // dxComponentPrinter1.Preview(True, dxComponentPrinter1Link2);
end;

procedure TfrmFEnhmStPel.Action3Execute(Sender: TObject);
begin
  inherited;
  // dxComponentPrinter1.Preview(True, dxComponentPrinter1Link3);
end;

procedure TfrmFEnhmStPel.Action4Execute(Sender: TObject);
begin
  inherited;
  //
end;

end.
