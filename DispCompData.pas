unit DispCompData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ExtCtrls, StdCtrls, strUtils, CommonOut2000,
  DBCtrls, Mask, ComCtrls, DispCompDataDM, DB, DispCardData,
  SAPFunctionsOCX_TLB, OleCtrls, SAPLogonCtrl_TLB, Common, Grids,
  DBGrids, QuickRpt, QRCtrls, Menus, RSubParams, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.PlatformDefaultStyleActnCtrls, FBaseDev0, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxMemo, cxDBEdit,
  cxCurrencyEdit, cxCalc, cxCalendar, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  TfrmDispCompData = class(TfrmBaseDev0)
    Splitter1: TSplitter;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Label5: TLabel;
    ActionList1: TActionList;
    actMailComp: TAction;
    actRefresh: TAction;
    actInsErrpp: TAction;
    TabSheet4: TTabSheet;
    TabSheet7: TTabSheet;
    Label11: TLabel;
    Label1: TLabel;
    TabSheet2: TTabSheet;
    UpdCommandAct: TAction;
    BlLab: TLabel;
    actDispAnej: TAction;
    TabSheet3: TTabSheet;
    Memo1: TMemo;
    TabSheet6: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet8: TTabSheet;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    TabSheet9: TTabSheet;
    DBGrid2: TDBGrid;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    actPrintAnej: TAction;
    actPrintSum: TAction;
    TabSheet10: TTabSheet;
    QuickRep2: TQuickRep;
    QRBand3: TQRBand;
    QRLabel3: TQRLabel;
    QRBand4: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape2: TQRShape;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    TabSheet11: TTabSheet;
    QuickRep3: TQuickRep;
    QRBand5: TQRBand;
    QRBand6: TQRBand;
    QRDBText11: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel18: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    actPrintEcon: TAction;
    SAPFunctions1: TSAPFunctions;
    ActionManager1: TActionManager;
    ActionToolBar1: TActionToolBar;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cblc20: TcxDBLookupComboBox;
    cblc24: TcxDBLookupComboBox;
    DBEdit6: TDBText;
    DBEdit2: TDBText;
    cxGrid1DBTableView1ACARDID: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDCODE: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERID: TcxGridDBColumn;
    cxGrid1DBTableView1ISSUEDATE: TcxGridDBColumn;
    cxGrid1DBTableView1EXPIREDATE: TcxGridDBColumn;
    cxGrid1DBTableView1METERBOOLEAN: TcxGridDBColumn;
    cxGrid1DBTableView1PINBOOLEAN: TcxGridDBColumn;
    cxGrid1DBTableView1INSDT: TcxGridDBColumn;
    cxGrid1DBTableView1UPDDT: TcxGridDBColumn;
    cxGrid1DBTableView1INSUSR: TcxGridDBColumn;
    cxGrid1DBTableView1UPDUSR: TcxGridDBColumn;
    cxGrid1DBTableView1STARTDATE: TcxGridDBColumn;
    cxGrid1DBTableView1VTYPEID: TcxGridDBColumn;
    cxGrid1DBTableView1CREATEBOOLEAN: TcxGridDBColumn;
    cxGrid1DBTableView1BLACKLISTBOOLEAN: TcxGridDBColumn;
    cxGrid1DBTableView1BLACKLISTDATE: TcxGridDBColumn;
    cxGrid1DBTableView1BLACKLISTUSR: TcxGridDBColumn;
    cxGrid1DBTableView1BLACKLISTNOTES: TcxGridDBColumn;
    cxGrid1DBTableView1IGROUPID1: TcxGridDBColumn;
    cxGrid1DBTableView1IGROUPID2: TcxGridDBColumn;
    cxGrid1DBTableView1IGROUPID3: TcxGridDBColumn;
    cxGrid1DBTableView1IGROUPID4: TcxGridDBColumn;
    cxGrid1DBTableView1DAYAMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1MONTHAMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1REGNO: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDHOLDER: TcxGridDBColumn;
    cxGrid1DBTableView1ISACTIVE: TcxGridDBColumn;
    cxGrid1DBTableView1EXPIREPHDATE: TcxGridDBColumn;
    cxGrid1DBTableView1EXPIRELODATE: TcxGridDBColumn;
    cxGrid1DBTableView1IGROUPID5: TcxGridDBColumn;
    cxGrid1DBTableView1EMPLOYEESID: TcxGridDBColumn;
    cxGrid1DBTableView1NEWCARDBOOLEAN: TcxGridDBColumn;
    cxGrid1DBTableView1NEWCARDID: TcxGridDBColumn;
    cxGrid1DBTableView1CARDHASEMPNAME: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDCODENUM: TcxGridDBColumn;
    cxGrid1DBTableView1INACTIVEDATE: TcxGridDBColumn;
    cxGrid1DBTableView1INACTIVEUSR: TcxGridDBColumn;
    cxGrid1DBTableView1INACTIVENOTES: TcxGridDBColumn;
    cxGrid1DBTableView1IGROUPID6: TcxGridDBColumn;
    cxGrid1DBTableView1IGROUPID7: TcxGridDBColumn;
    cxGrid1DBTableView1IGROUPID8: TcxGridDBColumn;
    cxGrid1DBTableView1IGROUPID9: TcxGridDBColumn;
    cxGrid1DBTableView1IGROUPID10: TcxGridDBColumn;
    cxGrid1DBTableView1COSTCENTERID: TcxGridDBColumn;
    cxGrid1DBTableView1AcardCodeFull: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1TRANCID: TcxGridDBColumn;
    cxGridDBTableView1CUSTOMERID: TcxGridDBColumn;
    cxGridDBTableView1DEBIT: TcxGridDBColumn;
    cxGridDBTableView1CREDIT: TcxGridDBColumn;
    cxGridDBTableView1TTEXT: TcxGridDBColumn;
    cxGridDBTableView1TRANCDATE: TcxGridDBColumn;
    cxGridDBTableView1TRANBCID: TcxGridDBColumn;
    cxGridDBTableView1INSDT: TcxGridDBColumn;
    cxGridDBTableView1UPDDT: TcxGridDBColumn;
    cxGridDBTableView1INSUSR: TcxGridDBColumn;
    cxGridDBTableView1UPDUSR: TcxGridDBColumn;
    cxGridDBTableView1CYpol: TcxGridDBColumn;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxDBMemo1: TcxDBMemo;
    cxDBCurrencyEdit1: TDBText;
    cxDBTextEdit1: TDBText;
    cxDBTextEdit2: TDBText;
    cxDBTextEdit3: TDBText;
    cxDBCalcEdit1: TDBText;
    TabSheet1: TTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2ContactType_Procedure: TcxGridDBColumn;
    cxGridDBTableView2ContactsName: TcxGridDBColumn;
    cxGridDBTableView2ContactsSurname: TcxGridDBColumn;
    cxGridDBTableView2email: TcxGridDBColumn;
    cxGridDBTableView2Phone: TcxGridDBColumn;
    cxGridDBTableView2Fax: TcxGridDBColumn;
    cxGridDBTableView2Mobile: TcxGridDBColumn;
    cxGridDBTableView2SendMail: TcxGridDBColumn;
    cxGridDBTableView2SendFax: TcxGridDBColumn;
    cxGridDBTableView2SendPrint: TcxGridDBColumn;
    cxGridDBTableView2Main: TcxGridDBColumn;
    cxGridDBTableView2AA: TcxGridDBColumn;
    cxGridDBTableView2Stationid: TcxGridDBColumn;
    cxGridDBTableView2StationName: TcxGridDBColumn;
    cxDBDateEdit1: TcxDBDateEdit;
    procedure DBEdit1Exit(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBGrid5DblClick(Sender: TObject);
    procedure actInsErrppExecute(Sender: TObject);
    procedure dxDBGrid2DblClick(Sender: TObject);
    procedure actMailCompExecute(Sender: TObject);
    procedure dxDBGrid3DblClick(Sender: TObject);
    procedure actDispAnejExecute(Sender: TObject);
    procedure EnhmCDS2;
    procedure FinalCDS2;
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actPrintAnejExecute(Sender: TObject);
    procedure actPrintSumExecute(Sender: TObject);
    procedure actPrintEconExecute(Sender: TObject);
    procedure popFilterPopup(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure cblc20Exit(Sender: TObject);
    procedure cblc24Exit(Sender: TObject);
  private
    DM: TDMDispCompData;
  public
    PopupComp: TObject;
    procedure ResetAction;
    procedure SetAction;
    procedure SetAction2;
  end;

implementation

{$R *.dfm}

procedure TfrmDispCompData.DBEdit1Exit(Sender: TObject);
begin
  DM.memCustomer.Active := True;
  DM.memCustomer.Edit;
  actRefresh.Execute;

  DM.ClientDataSet1.CancelUpdates;
  DM.ClientDataSet2.CancelUpdates;

  // Fix
  // QRLabel1.Caption := DBEdit1.Text;
  // QRLabel3.Caption := DBEdit1.Text;
  // QRLabel18.Caption := DBEdit1.Text;
end;

procedure TfrmDispCompData.actRefreshExecute(Sender: TObject);
begin
  if DM.memCustomer.State in [dsEdit, dsInsert] then
    DM.memCustomer.Post;

  if DM.memCustomerCustomerId.IsNull then
    Exit;

  // DM.qryStation.Active:=False;
  ResetAction;
  BlLab.Caption := '';

  if DM.qCustomer.Active = False then
    DM.qCustomer.Active := True;

  // if DM.memCustomerNameKey.AsInteger > 0  then
  // DM.qCustomer.Parameters.ParamByName('PCustomerId').Value:=DM.memCustomerNameKey.AsInteger;
  DM.qCustomer.Requery();
  if Not DM.qCustomer.IsEmpty then
    begin
      DM.qACard.Active      := False;
      DM.qryTranC.Active    := False;
      DM.qryContacts.Active := False;

      DM.qACard.Active      := True;
      DM.qryTranC.Active    := True;
      DM.qryContacts.Active := True;
      SetAction;
    end
  else
    begin
      MessageDlg('Δεν Υπάρχει η Εταιρεία ', mtError, [mbOK], 0);
      ResetAction;
    end;
end;

procedure TfrmDispCompData.cblc20Exit(Sender: TObject);
begin
  inherited;
  actRefreshExecute(self);
end;

procedure TfrmDispCompData.cblc24Exit(Sender: TObject);
begin
  inherited;
  actRefreshExecute(self);
end;

procedure TfrmDispCompData.cxGrid1DBTableView1DblClick(Sender: TObject);
var
  frm: TfrmDispCardData;
  int1: Integer;
  APoint: TPoint;
  AHitTets: TcxCustomGridHitTest;
  ARec: TcxCustomGridRecord;

begin
  // Fix
  GetCursorPos(APoint);
  with cxGrid1.FocusedView.site do
    begin
      APoint   := ScreenToClient(APoint);
      AHitTets := ViewInfo.GetHitTest(APoint);
      if AHitTets is TcxGridRecordCellHitTest then
        begin
          ARec := TcxGridRecordCellHitTest(AHitTets).GridRecord;
          // MessageDlg(ARec.Values[1], mtCustom, [mbOK], 0);
        end;
    end;

  if Not(DM.qACard.IsEmpty) then
    begin
      frm := TfrmDispCardData.Create(self);
      try
        int1 := DM.qACardACARDID.AsInteger;
        frm.ViewSpecific(int1);
        frm.ShowModal;
      finally
        frm.Free;
      end;
    end;
end;

procedure TfrmDispCompData.cxGridDBTableView2DblClick(Sender: TObject);
begin
  inherited;
  if TDMDispCompData(DM).qryContactsemail.AsString > '' then
    CreateDraftMailStd(TDMDispCompData(DM).qryContactsemail.AsString, TDMDispCompData(DM).qryContactsContactsSurname.AsString);

end;

procedure TfrmDispCompData.FormCreate(Sender: TObject);
begin
  DM := TDMDispCompData.Create(self);
  ResetAction;
end;

procedure TfrmDispCompData.ResetAction;
var
  x: Integer;
begin
  for x := 0 to ActionList1.ActionCount - 1 do
    if ActionList1.Actions[x].Tag in [1, 2] then
      begin
        TAction(ActionList1.Actions[x]).Enabled := False;
        TAction(ActionList1.Actions[x]).Visible := False;
      end;
end;

procedure TfrmDispCompData.SetAction;
var
  x: Integer;
begin
  for x := 0 to ActionList1.ActionCount - 1 do
    if ActionList1.Actions[x].Tag = 1 then
      begin
        TAction(ActionList1.Actions[x]).Enabled := True;
        TAction(ActionList1.Actions[x]).Visible := True;
      end;
end;

procedure TfrmDispCompData.SetAction2;
var
  x: Integer;
begin
  for x := 0 to ActionList1.ActionCount - 1 do
    if ActionList1.Actions[x].Tag = 2 then
      begin
        TAction(ActionList1.Actions[x]).Enabled := True;
        TAction(ActionList1.Actions[x]).Visible := True;
      end;
end;

procedure TfrmDispCompData.dxDBGrid5DblClick(Sender: TObject);
var
  frm: TfrmDispCardData;
  int1: Integer;
begin
  // Fix
  if Not(DM.qACard.IsEmpty) then
    begin
      frm := TfrmDispCardData.Create(self);
      try
        int1 := DM.qACardACARDID.AsInteger;
        frm.ViewSpecific(int1);
      finally
        frm.Free;
      end;
    end;
end;

procedure TfrmDispCompData.actInsErrppExecute(Sender: TObject);
begin
  // GeneralDM.InsertErrpp(0,DM.qCustomerCustomerId.asInteger);
end;

procedure TfrmDispCompData.dxDBGrid2DblClick(Sender: TObject);
begin
  // if Not(DM.qDErrpp.IsEmpty) then
  // GeneralDM.EditErrpp(DM.qDErrppDERRPPID.AsInteger);
end;

procedure TfrmDispCompData.actMailCompExecute(Sender: TObject);
begin
  // GeneralDM.InsertMessage(2,DM.qCustomerCustomerID.AsInteger,DM.QCustomerName.AsString);
end;

procedure TfrmDispCompData.dxDBGrid3DblClick(Sender: TObject);
begin
  // if Not(DM.qMessCust.IsEmpty) then
  // GeneralDM.EditMessage(DM.qMessCustMESSAGEID.AsInteger,'');
end;

procedure TfrmDispCompData.actDispAnejExecute(Sender: TObject);
var
  Funct, Rec_opt: Variant;
  x: Integer;
  LogarDate: TDateTime;
  dd1, dd2, dd3: TDateTime;
begin
  inherited;
  if LogarDate = 0 then
    if FormDateTitle(self, LogarDate, 'Ενημέρωση αξιών για', csDate) = mrCancel then
      Exit;

  Funct := SAPFunctions1.Add('BAPI_AR_ACC_GETOPENITEMS');

  Funct.Exports('COMPANYCODE').value := '2000';
  Funct.Exports('CUSTOMER').value    := '00000' + DM.qCustomerSAPCODE.AsString;
  Funct.Exports('KEYDATE').value     := datetostr(LogarDate);
  Funct.Exports('NOTEDITEMS').value  := '';
  Funct.Exports('SECINDEX').value    := '';

  if not Funct.call then
    ShowMessage(Funct.exception);

  Rec_opt := Funct.tables.item('LINEITEMS');

  for x := 1 to Rec_opt.rowcount do
    begin
      dd1 := Rec_opt.value[x, 10];
      dd2 := Rec_opt.value[x, 11];
      Memo1.Lines.Add(Rec_opt.value[x, 8] + ' ' + datetostr(dd1) + ' ' + datetostr(dd2) + ' ' +
        { rec_opt.value[x,10]+' '+
          rec_opt.value[x,11]+' '+ }
        Rec_opt.value[x, 16] + ' ' + Rec_opt.value[x, 18] + ' ' + Rec_opt.value[x, 23] + ' ' + Rec_opt.value[x, 26]);

      DM.ClientDataSet1.Insert;
      DM.ClientDataSet1.Edit;
      DM.ClientDataSet1COMP_CODE.value   := Rec_opt.value[x, 1];
      DM.ClientDataSet1CUSTOMER.value    := Rec_opt.value[x, 2];
      DM.ClientDataSet1SP_GL_IND.value   := Rec_opt.value[x, 3];
      DM.ClientDataSet1CLEAR_DATE.value  := Rec_opt.value[x, 4];
      DM.ClientDataSet1CLR_DOC_NO.value  := Rec_opt.value[x, 5];
      DM.ClientDataSet1ALLOC_NUMR.value  := Rec_opt.value[x, 6];
      DM.ClientDataSet1FISC_YEAR.value   := Rec_opt.value[x, 7];
      DM.ClientDataSet1DOC_NO.value      := Rec_opt.value[x, 8];
      DM.ClientDataSet1ITEM_NUM.value    := Rec_opt.value[x, 9];
      DM.ClientDataSet1PSTNG_DATE.value  := Rec_opt.value[x, 10];
      DM.ClientDataSet1DOC_DATE.value    := Rec_opt.value[x, 11];
      DM.ClientDataSet1ENTRY_DATE.value  := Rec_opt.value[x, 12];
      DM.ClientDataSet1CURRENCY.value    := Rec_opt.value[x, 13];
      DM.ClientDataSet1LOC_CURR.value    := Rec_opt.value[x, 14];
      DM.ClientDataSet1REF_DOC_NUM.value := Rec_opt.value[x, 15];
      DM.ClientDataSet1DOC_TYPE.value    := Rec_opt.value[x, 16];
      DM.ClientDataSet1FIS_PERIOD.value  := Rec_opt.value[x, 17];
      DM.ClientDataSet1POST_KEY.value    := Rec_opt.value[x, 18];
      DM.ClientDataSet1DB_CR_IND.value   := Rec_opt.value[x, 19];
      DM.ClientDataSet1BUS_AREA.value    := Rec_opt.value[x, 20];
      DM.ClientDataSet1TAX_CODE.value    := Rec_opt.value[x, 21];
      DM.ClientDataSet1LC_AMOUNT.value   := Rec_opt.value[x, 22];
      DM.ClientDataSet1AMT_DOCCUR.value  := Rec_opt.value[x, 23];
      DM.ClientDataSet1LC_TAX.value      := Rec_opt.value[x, 24];
      DM.ClientDataSet1TX_DOC_CUR.value  := Rec_opt.value[x, 25];
      DM.ClientDataSet1ITEM_TEXT.value   := Rec_opt.value[x, 26];
      DM.ClientDataSet1BRANCH.value      := Rec_opt.value[x, 27];
      DM.ClientDataSet1BLINE_DATE.value  := Rec_opt.value[x, 28];
      DM.ClientDataSet1PMNTTRMS.value    := Rec_opt.value[x, 29];
      DM.ClientDataSet1DSCT_DAYS1.value  := Rec_opt.value[x, 30];
      DM.ClientDataSet1DSCT_DAYS2.value  := Rec_opt.value[x, 31];
      DM.ClientDataSet1T_CURRENCY.value  := Rec_opt.value[x, 56];
      DM.ClientDataSet1AMOUNT.value      := Rec_opt.value[x, 57];
      DM.ClientDataSet1NET_AMOUNT.value  := Rec_opt.value[x, 58];
      DM.ClientDataSet1INV_REF.value     := Rec_opt.value[x, 41];
      DM.ClientDataSet1INV_YEAR.value    := Rec_opt.value[x, 42];
      DM.ClientDataSet1INV_ITEM.value    := Rec_opt.value[x, 43];

      if ((Rec_opt.value[x, 3] = '') or (Rec_opt.value[x, 3] = 'Θ') or (Rec_opt.value[x, 3] = 'Π') or (Rec_opt.value[x, 3] = 'W')) then
        DM.ClientDataSet1.Post
      else
        DM.ClientDataSet1.Cancel;
    end;

  EnhmCDS2;

  SetAction2;

  PageControl1.ActivePage := TabSheet9;

end;

procedure TfrmDispCompData.EnhmCDS2;
begin
  DM.ClientDataSet2.Active := True;

  DM.ClientDataSet1.First;
  repeat
    if DM.ClientDataSet2.Locate('BlartDate', DM.ClientDataSet1BLINE_DATE.AsVariant, []) then
      begin
        DM.ClientDataSet2.Edit;
        if DM.ClientDataSet1DB_CR_IND.AsString = 'S' then
          DM.ClientDataSet2Debit.value := DM.ClientDataSet2Debit.value + DM.ClientDataSet1AMOUNT.value
        else
          DM.ClientDataSet2Credit.value := DM.ClientDataSet2Credit.value + DM.ClientDataSet1AMOUNT.value;
        DM.ClientDataSet2.Post;
      end
    else
      begin
        DM.ClientDataSet2.Insert;
        DM.ClientDataSet2.Edit;
        DM.ClientDataSet2BlartDate.value := DM.ClientDataSet1BLINE_DATE.value;
        try
          DM.ClientDataSet2Payment.value := DM.ClientDataSet1PMNTTRMS.AsInteger;
        except
          DM.ClientDataSet2Payment.value := 0;
        end;
        try
          DM.ClientDataSet2DueDate.value := DM.ClientDataSet1BLINE_DATE.value + (DM.ClientDataSet1PMNTTRMS.AsInteger - 2000);
        except
          DM.ClientDataSet2DueDate.value := DM.ClientDataSet1BLINE_DATE.value;
        end;

        if DM.ClientDataSet1DB_CR_IND.AsString = 'S' then
          DM.ClientDataSet2Debit.value := DM.ClientDataSet2Debit.value + DM.ClientDataSet1AMOUNT.value
        else
          DM.ClientDataSet2Credit.value := DM.ClientDataSet2Credit.value + DM.ClientDataSet1AMOUNT.value;
        DM.ClientDataSet2.Post;
      end;
    DM.ClientDataSet1.Next;
  until DM.ClientDataSet1.Eof;

  FinalCDS2;
end;

procedure TfrmDispCompData.Excel1Click(Sender: TObject);
begin
  inherited;
  // if PopupComp is TDBGrid then
  // GeneralDM.OutputFile(TDBGrid(PopupComp));
end;

procedure TfrmDispCompData.FinalCDS2;
var
  x: Currency;
begin
  DM.ClientDataSet2.First;
  x := 0;
  repeat
    DM.ClientDataSet2.Edit;
    x                                := x + DM.ClientDataSet2Debit.value - DM.ClientDataSet2Credit.value;
    DM.ClientDataSet2TotAmount.value := x;

    DM.ClientDataSet2OverDue.value := round(now - DM.ClientDataSet2DueDate.value);

    DM.ClientDataSet2.Post;

    DM.ClientDataSet2.Next;
  until DM.ClientDataSet2.Eof;

end;

procedure TfrmDispCompData.FormDestroy(Sender: TObject);
begin
  inherited;
  DM.ClientDataSet1.CancelUpdates;
  DM.ClientDataSet2.CancelUpdates;
end;

procedure TfrmDispCompData.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  HoldColor: TColor;
begin
  inherited;
  HoldColor := DBGrid1.Canvas.Brush.Color;
  if gbLast in DM.ClientDataSet1.GetGroupState(1) then
    begin
      DBGrid1.Canvas.Brush.Color := clYellow;
      DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      DBGrid1.Canvas.Brush.Color := HoldColor;
    end
  else
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmDispCompData.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  HoldColor: TColor;
begin
  inherited;
  HoldColor := DBGrid2.Canvas.Brush.Color;
  if DM.ClientDataSet2DueDate.AsDateTime < now then
    begin
      DBGrid2.Canvas.Brush.Color := clYellow;
      DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      DBGrid2.Canvas.Brush.Color := HoldColor;
    end
  else
    DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmDispCompData.actPrintAnejExecute(Sender: TObject);
begin
  inherited;
  QuickRep1.PreviewModal;
end;

procedure TfrmDispCompData.actPrintSumExecute(Sender: TObject);
begin
  inherited;
  QuickRep2.PreviewModal;
end;

procedure TfrmDispCompData.popFilterPopup(Sender: TObject);
begin
  inherited;
  if Sender is TPopupMenu then
    PopupComp := TPopupMenu(Sender).PopupComponent;
end;

procedure TfrmDispCompData.actPrintEconExecute(Sender: TObject);
begin
  inherited;
  QuickRep3.PreviewModal;
end;

end.

{ BAPI_AR_ACC_GETOPENITEMS

  1	COMP_CODE
  2	CUSTOMER
  3	SP_GL_IND
  4	CLEAR_DATE
  5	CLR_DOC_NO
  6	ALLOC_NMBR
  7	FISC_YEAR
  8	DOC_NO
  9	ITEM_NUM
  10	PSTNG_DATE
  11	DOC_DATE
  12	ENTRY_DATE
  13	CURRENCY
  14	LOC_CURRCY
  15	REF_DOC_NO
  16	DOC_TYPE
  17	FIS_PERIOD
  18	POST_KEY
  19	DB_CR_IND
  20	BUS_AREA
  21	TAX_CODE
  22	LC_AMOUNT
  23	AMT_DOCCUR
  24	LC_TAX
  25   	TX_DOC_CUR
  26	ITEM_TEXT
  27	BRANCH
  28	BLINE_DATE
  29	PMNTTRMS
  30	DSCT_DAYS1
  31	DSCT_DAYS2
  32	NETTERMS
  33	DSCT_PCT1
  34	DSCT_PCT2
  35	DISC_BASE
  36	DSC_AMT_LC
  37	DSC_AMT_DC
  38	PYMT_METH
  39	PMNT_BLOCK
  40	FIXEDTERMS
  41	INV_REF
  42	INV_YEAR
  43	INV_ITEM
  44	DUNN_BLOCK
  45	DUNN_KEY
  46	LAST_DUNN
  47	DUNN_LEVEL
  48	DUNN_AREA
  49	DOC_STATUS
  50	NXT_DOCTYP
  51	VAT_REG_NO
  52	REASON_CDE
  53	PMTMTHSUPL
  54	REF_KEY_1
  55	REF_KEY_2
  56	T_CURRENCY
  57	AMOUNT
  58	NET_AMOUNT
  59	NAME
  60	NAME_2
  61	NAME_3
  62	NAME_4
  63	POSTL_CODE
  64	CITY
  65	COUNTRY
  66	STREET
  67	PO_BOX
  68	POBX_PCD
  69	POBK_CURAC
  70	BANK_ACCT
  71	BANK_KEY
  72	BANK_CTRY
  73	TAX_NO_1
  74	TAX_NO_2
  75	TAX
  76	EQUAL_TAX
  77	REGION
  78    CTRL_KEY
  79	INSTR_KEY
  80	PAYEE_CODE
  81	LANGU
  82	BILL_LIFE
  83	BE_TAXCODE
  84	BILLTAX_LC
  85	BILLTAX_FC
  86	LC_COL_CHG
  87	COLL_CHARG
  88	CHGS_TX_CD
  89	ISSUE_DATE
  90	USAGEDATE
  91	BILL_USAGE
  92	DOMICILE
  93	DRAWER
  94	CTRBNK_LOC
  95	DRAW_CITY1
  96	DRAWEE
  97	DRAW_CITY2
  98	DISCT_DAYS
  99	DISCT_RATE
  100	ACCEPTED
  101	BILLSTATUS
  102	PRTEST_IND
  103	BE_DEMAND
  104	OBJ_TYPE
  105	REF_DOC
  106	REF_ORG_UN
  107	REVERSAL_DOC
  108	SP_GL_TYPE
  109	NEG_POSTNG
  110	BILL_DOC }
