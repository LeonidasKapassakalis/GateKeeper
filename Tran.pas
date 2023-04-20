Unit Tran;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, TranD, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView,
  cxGrid, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCurrencyEdit, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxCalendar, cxPC, cxNavigator, cxClasses, FBaseDev0, Vcl.Menus,
  Vcl.DBCtrls, FFilterEn, ADODB, cxLabel, cxDBLabel, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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

Type
  TfrmTran = Class(TfrmBaseDev0)
    ActionList1: TActionList;
    actClose: TAction;
    actInsert: TAction;
    actUpdate: TAction;
    actDelete: TAction;
    actCancel: TAction;
    actOK: TAction;
    dxPageControl1: TcxPageControl;
    tabBrowser: TcxTabSheet;
    tabData: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dxDBDateEdit1: TcxDBDateEdit;
    dxDBEdit1: TcxDBTextEdit;
    dxDBEdit2: TcxDBTextEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxDBEdit3: TcxDBTextEdit;
    dxDBEdit4: TcxDBTextEdit;
    Label7: TLabel;
    Label8: TLabel;
    dxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxDBLookupEdit1: TcxDBLookupComboBox;
    dxDBEdit5: TcxDBTextEdit;
    Label9: TLabel;
    UpdCommandAct: TAction;
    ActionToolBar1: TActionToolBar;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cblcAcard: TcxDBLookupComboBox;
    cblcMerchant: TcxDBLookupComboBox;
    cblcTerminal: TcxDBLookupComboBox;
    cblcStation: TcxDBLookupComboBox;
    dbtxtMerchantId: TDBText;
    dbtxtMerchantId1: TDBText;
    lbl1: TLabel;
    lbl2: TLabel;
    dbtxtStationId: TDBText;
    actSelectCriteria: TAction;
    cxGrid1DBTableView1TRANID: TcxGridDBColumn;
    cxGrid1DBTableView1TRANDATE: TcxGridDBColumn;
    cxGrid1DBTableView1LMerchant: TcxGridDBColumn;
    cxGrid1DBTableView1LStation: TcxGridDBColumn;
    cxGrid1DBTableView1LTerminal: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDID: TcxGridDBColumn;
    cxGrid1DBTableView1MERCHANTID: TcxGridDBColumn;
    cxGrid1DBTableView1STATIONID: TcxGridDBColumn;
    cxGrid1DBTableView1TERMINALID: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1SITEMID: TcxGridDBColumn;
    cxGrid1DBTableView1QUANTITY: TcxGridDBColumn;
    cxGrid1DBTableView1REFSTR: TcxGridDBColumn;
    cxGrid1DBTableView1ISAUTO: TcxGridDBColumn;
    cxGrid1DBTableView1ISVOID: TcxGridDBColumn;
    cxGrid1DBTableView1BATCHNO: TcxGridDBColumn;
    cxGrid1DBTableView1UNITPRICE: TcxGridDBColumn;
    cxGrid1DBTableView1TRANTIME: TcxGridDBColumn;
    cxGrid1DBTableView1ISTYPED: TcxGridDBColumn;
    act1: TAction;
    actmgr1: TActionManager;
    actDisp0: TAction;
    cxDBLabel1: TcxDBLabel;
    cxGrid1DBTableView1LSitem: TcxGridDBColumn;
    cxGrid1DBTableView1LCustomer: TcxGridDBColumn;
    DBText1: TDBText;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    actFindFromTermId: TAction;
    Procedure actCloseExecute(Sender: TObject);
    Procedure actInsertExecute(Sender: TObject);
    Procedure actUpdateExecute(Sender: TObject);
    Procedure actDeleteExecute(Sender: TObject);
    Procedure actCancelExecute(Sender: TObject);
    Procedure actOKExecute(Sender: TObject);
    Procedure FormShow(Sender: TObject);
    Procedure UpdateBrowserToolBar(Sender: TObject);
    Procedure UpdateDataToolBar(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    Procedure dxDBGrid1DblClick(Sender: TObject);
    procedure dxDBEdit1Exit(Sender: TObject);
    procedure dxDBEdit2Exit(Sender: TObject);
    procedure actEnhmPeriodExecute(Sender: TObject);
    procedure cblcAcardExit(Sender: TObject);
    procedure dxDBCurrencyEdit1Exit(Sender: TObject);
    procedure actSelectCriteriaExecute(Sender: TObject);
    procedure act1Execute(Sender: TObject);
    procedure actMainDispExecute(Sender: TObject);
    procedure cxDBLookupComboBox1DblClick(Sender: TObject);
    procedure actFindFromTermIdExecute(Sender: TObject);
  Private
    { Private declarations }
    Created: Boolean;
    State: Integer; { 0=εισαγωγή, 1=μεταβολή... }
    FrDate: TDateTime;
    ToDate: TDateTime;
    FrACard: AnsiString;
    ToACard: AnsiString;
    FrStation: AnsiString;
    ToStation: AnsiString;
    Procedure UpdateRec;
  Public
    { Public declarations }
    DM: TTranDM;
    SelectionDone: Boolean;
    EditSpecificBit: Boolean;
    Procedure RegisterCriteria(AFrDate, AToDate: TDateTime; AFrACard, AToACard, AFrStation, AToStation: AnsiString);
  Published
    procedure MainStateChange; override;
    procedure MainStateChange0(St: String); override;
    procedure SubStateChange(St: String); override;
  End;

Implementation

Uses
  Common, FMain, DBase;

{$R *.dfm}

Procedure TfrmTran.FormCreate(Sender: TObject);
Begin
  Created       := False;
  SelectionDone := False;
  DM            := TTranDM.Create(self);
  PrimDM        := DM;
  SecDM         := DM;
  Created       := True;
  MainStateChange0('Browse');
End;

Procedure TfrmTran.FormShow(Sender: TObject);
Var
  a: AnsiString;
Begin
  if Created then
    if Assigned(DM) then
      if Not SelectionDone then
        begin
          SelectionDone := True;
          actSelectCriteriaExecute(self);
        end;

  // dxPageControl1.ActivePage := tabBrowser;
  // Try
  // frmMain.DoCursorPush(crSQLWait);
  // a := WhereApoDateOnly(FrDate, 'TRANDATE', true);
  // a := a + WhereEosDateOnly(ToDate, 'TRANDATE',Not(length(Trim(a))>1));
  // a := a + WhereApoNumber(FrACard, 'ACARDCODENum',Not(length(Trim(a))>1));
  // a := a + WhereEosNumber(ToACard, 'ACARDCODENum',Not(length(Trim(a))>1));
  // a := a + WhereApoString(FrStation, 'STATION.NAME',Not(length(Trim(a))>1));
  // a := a + WhereEosString(ToStation, 'STATION.NAME',Not(length(Trim(a))>1));
  // If (Length(a) <> 0) Then DM.qryBrowser.SQL.Add(' WHERE ' + a);
  // DM.qryBrowser.Open;
  // DM.qrySItem.Open;
  // Finally
  // frmMain.DoCursorPop;
  // End;
End;

Procedure TfrmTran.actCloseExecute(Sender: TObject);
Begin
  Close;
End;

Procedure TfrmTran.actInsertExecute(Sender: TObject);
Begin
  State := 0;
  DM.DoInsert;
  dxPageControl1.ActivePage := tabData;
  AllClick(ActionList1);
End;

procedure TfrmTran.actMainDispExecute(Sender: TObject);
begin
  inherited;
  if dxPageControl1.ActivePage = tabData then
    dxPageControl1.ActivePage := tabBrowser
  else
    dxPageControl1.ActivePage := tabData;
  AllClick(ActionList1);
end;

Procedure TfrmTran.actUpdateExecute(Sender: TObject);
Begin
  UpdateRec;
  if DM.qryTranPELADAILYUPD.AsBoolean then
    dxDBCurrencyEdit1.Properties.ReadOnly := True
  else
    dxDBCurrencyEdit1.Properties.ReadOnly := False;
  if DM.qryTranPELADAILYUPD.AsBoolean then
    dxDBCurrencyEdit1.Enabled := False
  else
    dxDBCurrencyEdit1.Enabled := True;
  AllClick(ActionList1);
End;

procedure TfrmTran.cblcAcardExit(Sender: TObject);
var
  CNo: Integer;
begin
  CNo := DM.qryTranACARDID.AsInteger;

  if DM.CheckValidityOfCard(DM.qryTranACARDID.AsInteger, DM.qryTranTRANDATE.AsDateTime) then
    begin
      DM.qryTran.Cancel;
      dxPageControl1.ActivePage := tabBrowser;
    end;
end;

procedure TfrmTran.cxDBLookupComboBox1DblClick(Sender: TObject);
begin
  inherited;
  if ((DM.dxMemData1Terminal.AsInteger > 0) and (DM.qryTran.State in [dsEdit, dsInsert])) then
    begin
      DM.qryTranMERCHANTID.Value := DM.qryVMSTMerchantMerchantId.Value;
      DM.qryTranSTATIONID.Value  := DM.qryVMSTStationStationId.Value;
      DM.qryTranTERMINALID.Value := DM.qryVMSTTerminalTerminalid.Value;
    end;

end;

Procedure TfrmTran.dxDBGrid1DblClick(Sender: TObject);
Begin
  UpdateRec;
End;

Procedure TfrmTran.actDeleteExecute(Sender: TObject);
Begin
  If (AskUserNo('Να διαγραφεί;') = True) Then
    Begin
      DM.DoDelete;
      DM.qryBrowser.Requery();
      // DM.qryBrowser.Close;
      // DM.qryBrowser.Open;
      { TODO -cCritical : Critical }
      // dxDBGrid1.Refresh;
    End;
End;

procedure TfrmTran.actSelectCriteriaExecute(Sender: TObject);
var
  frm: TfrmFilterEn;
  TmpSql: string;
begin
  inherited;
  frm := TfrmFilterEn.CreateWithParamDSet(self, DM.qryBrowser_Empty, DM);
  if frm.ShowModal = mrOk then
    TmpSql := frm.KSleo
  else
    TmpSql := '';
  frm.Free;
  DM.qryBrowser.Active   := False;
  DM.qryBrowser.SQL.Text := DM.BrowseSqlInit.Text;
  if TmpSql = '' then
    if MessageDlg('Προσοχή δεν έχουν οριστεί κριτήρια.Μπορεί η εκτέλεση να πάρει πολύ χρόνο', mtInformation, [mbOK, mbCancel], 0) = mrCancel then
      exit;
  if TmpSql > '' then
    DM.qryBrowser.SQL.Add(' Where  ' + TmpSql);
  DM.qryBrowser.Active := True;
end;

procedure TfrmTran.act1Execute(Sender: TObject);
begin
  // inherited;
  actSelectCriteria.Execute;
end;

Procedure TfrmTran.actCancelExecute(Sender: TObject);
Begin
  DM.qryTran.Cancel;
  cxDBLookupComboBox1.Visible := False;
  dxPageControl1.ActivePage   := tabBrowser;
  AllClick(ActionList1);
End;

Procedure TfrmTran.actOKExecute(Sender: TObject);
Begin
  DM.DoPost;
  cxDBLookupComboBox1.Visible := False;
  dxPageControl1.ActivePage   := tabBrowser;
  DM.qryBrowser.Requery();
  AllClick(ActionList1);
End;

Procedure TfrmTran.UpdateBrowserToolBar(Sender: TObject);
Begin
  // 08052014
  // If (dxPageControl1.ActivePage = tabBrowser) Then (Sender As TAction).Visible := true
  // Else (Sender As TAction).Visible := false;
End;

Procedure TfrmTran.UpdateDataToolBar(Sender: TObject);
Begin
  // 08052014
  // If (dxPageControl1.ActivePage = tabData) Then Begin
  // (Sender As TAction).Visible := true;
  // If ((Sender As TAction) = actOK) Then (Sender As TAction).Enabled := DM.SaveIsAllowed;
  // End Else (Sender As TAction).Visible := false;
End;

Procedure TfrmTran.UpdateRec;
Begin
  State := 1;
  DM.DoUpdate;
  dxPageControl1.ActivePage := tabData;
  AllClick(ActionList1);
End;

Procedure TfrmTran.RegisterCriteria(AFrDate, AToDate: TDateTime; AFrACard, AToACard, AFrStation, AToStation: AnsiString);
Begin
  FrDate    := AFrDate;
  ToDate    := AToDate;
  FrACard   := AFrACard;
  ToACard   := AToACard;
  FrStation := AFrStation;
  ToStation := AToStation;
End;

procedure TfrmTran.dxDBCurrencyEdit1Exit(Sender: TObject);
begin
  inherited;
  if DM.qryTran.State in [dsEdit, dsInsert] then
    if DM.qryTranQUANTITY.AsFloat > 0 then
      DM.qryTranUNITPRICE.AsFloat := DM.qryTranAMOUNT.AsFloat / DM.qryTranQUANTITY.AsFloat
    else
      DM.qryTranUNITPRICE.AsFloat := 0;
end;

procedure TfrmTran.dxDBEdit1Exit(Sender: TObject);
var
  CNo: Integer;
begin
  DM.memACardACARDCODEChange(dxDBEdit1.DataBinding.DataSource.DataSet.FieldByName('ACARDCODE'));

  CNo := DM.qryTranACARDID.AsInteger;

  if DM.CheckValidityOfCard(CNo, DM.qryTranTRANDATE.AsDateTime) then
    begin
      DM.qryTran.Cancel;
      dxPageControl1.ActivePage := tabBrowser;
    end;
end;

procedure TfrmTran.dxDBEdit2Exit(Sender: TObject);
begin
  DM.memStationNAMEChange(dxDBEdit2.DataBinding.DataSource.DataSet.FieldByName('Name'));
end;

procedure TfrmTran.actEnhmPeriodExecute(Sender: TObject);
begin
  inherited;
  DM.UpdatePeriod;
  AllClick(ActionList1);
end;

procedure TfrmTran.actFindFromTermIdExecute(Sender: TObject);
begin
  inherited;
  cxDBLookupComboBox1.Visible := Not cxDBLookupComboBox1.Visible;
end;

procedure TfrmTran.MainStateChange;
begin
  // Published
  // To be called from DataModule
end;

procedure TfrmTran.MainStateChange0(St: String);
begin
  SetState(ActionList1, St);
  if St = 'UPD' then
    dxPageControl1.ActivePage := tabData;
end;

procedure TfrmTran.SubStateChange(St: String);
begin
  inherited;

end;

End.
