unit DispStatData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, Mask, ExtCtrls, StdCtrls, DBCtrls, ComCtrls,
  Common, CommonOut2000, Tran, TranD, fGMapMain,
  DispStatDataDM, DB, Vcl.ActnMan, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView,
  cxGrid, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ToolWin, Vcl.ActnCtrls,
  Vcl.Menus, cxClasses, FBaseDev0, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.DBCGrids,
  cxCalendar, cxDBEdit, Vcl.Grids, Vcl.DBGrids, Vcl.OleCtrls, SHDocVw,
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
  TfrmDispStatData = class(TfrmBaseDev0)
    Splitter1: TSplitter;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    TabSheet3: TTabSheet;
    TabSheet6: TTabSheet;
    Panel1: TPanel;
    Label5: TLabel;
    ActionList1: TActionList;
    actMailComp: TAction;
    actApproval: TAction;
    actRefresh: TAction;
    dxBarManager1: TActionManager;
    actInsError: TAction;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    actInsErrpp: TAction;
    UpdCommandAct: TAction;
    BlLab: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    ActionToolBar1: TActionToolBar;
    DBEdit6: TDBText;
    DBEdit7: TDBText;
    DBEdit10: TDBText;
    DBEdit11: TDBText;
    DBEdit9: TDBText;
    DBEdit8: TDBText;
    cblc15: TcxDBLookupComboBox;
    TabSheet1: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    DBCheckBox6: TDBCheckBox;
    TabSheet4: TTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    actInsertTran: TAction;
    actEditTran: TAction;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    cxDBDateEdit1: TcxDBDateEdit;
    DBText3: TDBText;
    Label1: TLabel;
    cxGrid1DBTableView1MerchantMerchantId: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantName: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantStreet: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantZip: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantCity: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantAFM: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantDOY: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantIsTest: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantAreaId: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantSAPCode: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantMerchantCode: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantSalesMenId: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantDeleted: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantInActive: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantStopSales: TcxGridDBColumn;
    cxGrid1DBTableView1StationStationId: TcxGridDBColumn;
    cxGrid1DBTableView1StationName: TcxGridDBColumn;
    cxGrid1DBTableView1StationStreet: TcxGridDBColumn;
    cxGrid1DBTableView1StationZIP: TcxGridDBColumn;
    cxGrid1DBTableView1StationCity: TcxGridDBColumn;
    cxGrid1DBTableView1StationAreaId: TcxGridDBColumn;
    cxGrid1DBTableView1StationSalesMenId: TcxGridDBColumn;
    cxGrid1DBTableView1StationDeleted: TcxGridDBColumn;
    cxGrid1DBTableView1StationInActive: TcxGridDBColumn;
    cxGrid1DBTableView1StationStopSales: TcxGridDBColumn;
    cxGrid1DBTableView1TerminalTerminalCode: TcxGridDBColumn;
    cxGrid1DBTableView1TerminalTerminalId: TcxGridDBColumn;
    cxGrid1DBTableView1TerminalSerialNo: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERCUSTOMERId: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERName: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERZip: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERStreet: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERCity: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERAFM: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERDOY: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERAreaId: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERCGroupId: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERCClassId: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERBranchId: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERSAPCode: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERIsActive: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERSalesMenId: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERIsTest: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERAreaBId: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERHASDETAILEMP: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERCUSTOMEROFF: TcxGridDBColumn;
    cxGrid1DBTableView1TRANTRANDATE: TcxGridDBColumn;
    cxGrid1DBTableView1TRANACARDID: TcxGridDBColumn;
    cxGrid1DBTableView1TRANMerchantId: TcxGridDBColumn;
    cxGrid1DBTableView1TRANStationId: TcxGridDBColumn;
    cxGrid1DBTableView1TRANTerminalId: TcxGridDBColumn;
    cxGrid1DBTableView1TRANAmount: TcxGridDBColumn;
    cxGrid1DBTableView1TRANSitemId: TcxGridDBColumn;
    cxGrid1DBTableView1TRANQuantity: TcxGridDBColumn;
    cxGrid1DBTableView1TRANIsAuto: TcxGridDBColumn;
    cxGrid1DBTableView1TRANStationUPD: TcxGridDBColumn;
    cxGrid1DBTableView1TRANACARDUPD: TcxGridDBColumn;
    cxGrid1DBTableView1TRANIsVoid: TcxGridDBColumn;
    cxGrid1DBTableView1TRANBatchNo: TcxGridDBColumn;
    cxGrid1DBTableView1TRANCommissionUpd: TcxGridDBColumn;
    cxGrid1DBTableView1TRANStationUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView1TRANAcardUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView1TRANCommissionUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView1TRANTranTime: TcxGridDBColumn;
    cxGrid1DBTableView1TRANIsTyped: TcxGridDBColumn;
    cxGrid1DBTableView1TRANDiscountUPD: TcxGridDBColumn;
    cxGrid1DBTableView1TRANDiscountUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView1TRANDisQuantity: TcxGridDBColumn;
    cxGrid1DBTableView1TRANDisAmount: TcxGridDBColumn;
    cxGrid1DBTableView1TRANPelaDailyUPD: TcxGridDBColumn;
    cxGrid1DBTableView1TRANPelaDailyUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDACARDID: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDACARDCODE: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDCustimerId: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDVTypeId: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDREGNO: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDACARDHOLDER: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIsActive: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDEMPLOYEESID: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDCostCenterId: TcxGridDBColumn;
    cxGrid1DBTableView1VTYPEVTYPEID: TcxGridDBColumn;
    cxGrid1DBTableView1VTYPEDescr: TcxGridDBColumn;
    cxGrid1DBTableView1REGNOSEQREGNOSEQID: TcxGridDBColumn;
    cxGrid1DBTableView1REGNOSEQREGNO: TcxGridDBColumn;
    cxGrid1DBTableView1TRANTRANID: TcxGridDBColumn;
    cxGrid1DBTableView1TRANKMBEFORE: TcxGridDBColumn;
    cxGrid1DBTableView1TRANKMAFTER: TcxGridDBColumn;
    cxGrid1DBTableView1TRANREFSTR: TcxGridDBColumn;
    cxGrid1DBTableView1TRANUNITPRICE: TcxGridDBColumn;
    cxGrid1DBTableView1SITEMCODEINTERMINAL: TcxGridDBColumn;
    cxGrid1DBTableView1SITEMDESCR: TcxGridDBColumn;
    cxGrid1DBTableView1SITEMIGROUPID: TcxGridDBColumn;
    cxGrid1DBTableView1IGROUPNAME: TcxGridDBColumn;
    cxGrid1DBTableView1CostCenterCCName: TcxGridDBColumn;
    cxGrid1DBTableView1CostCenterCCNameFull: TcxGridDBColumn;
    cxGrid1DBTableView1AcardAcardCodeFull: TcxGridDBColumn;
    cxGridDBTableView2MerchantName: TcxGridDBColumn;
    cxGridDBTableView2StationStreet: TcxGridDBColumn;
    cxGridDBTableView2StationCity: TcxGridDBColumn;
    cxGridDBTableView2APPROVALID: TcxGridDBColumn;
    cxGridDBTableView2APPROVALAMOUNT: TcxGridDBColumn;
    cxGridDBTableView2APPROVALCODE: TcxGridDBColumn;
    cxGridDBTableView2AcardAcardCodeFull: TcxGridDBColumn;
    cxGridDBTableView2INSUSR: TcxGridDBColumn;
    cxGridDBTableView2Name: TcxGridDBColumn;
    cxGridDBTableView2INSDT: TcxGridDBColumn;
    cxGridDBTableView2MerchantMerchantId: TcxGridDBColumn;
    cxGridDBTableView2TerminalTerminalid: TcxGridDBColumn;
    cxGridDBTableView2APPROVALACARDID: TcxGridDBColumn;
    cxGridDBTableView2APPROVALSTATIONID: TcxGridDBColumn;
    cxGridDBTableView1ContactType_Procedure: TcxGridDBColumn;
    cxGridDBTableView1ContactsName: TcxGridDBColumn;
    cxGridDBTableView1ContactsSurname: TcxGridDBColumn;
    cxGridDBTableView1email: TcxGridDBColumn;
    cxGridDBTableView1Phone: TcxGridDBColumn;
    cxGridDBTableView1Fax: TcxGridDBColumn;
    cxGridDBTableView1Mobile: TcxGridDBColumn;
    cxGridDBTableView1SendMail: TcxGridDBColumn;
    cxGridDBTableView1SendFax: TcxGridDBColumn;
    cxGridDBTableView1SendPrint: TcxGridDBColumn;
    cxGridDBTableView1Main: TcxGridDBColumn;
    cxGridDBTableView1AA: TcxGridDBColumn;
    cxGridDBTableView1Stationid: TcxGridDBColumn;
    cxGridDBTableView1StationName: TcxGridDBColumn;
    cxGridDBTableView3TRCALLDDATE: TcxGridDBColumn;
    cxGridDBTableView3TRCALLDSTATIONID: TcxGridDBColumn;
    cxGridDBTableView3TRCALLDSTATUS: TcxGridDBColumn;
    cxGridDBTableView3LCallStatus: TcxGridDBColumn;
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure SetAction;
    procedure ResetAction;
    procedure actMailCompExecute(Sender: TObject);
    procedure actApprovalExecute(Sender: TObject);
    procedure actInsErrorExecute(Sender: TObject);
    procedure dxDBGrid2DblClick(Sender: TObject);
    procedure dxDBGrid3DblClick(Sender: TObject);
    procedure actInsErrppExecute(Sender: TObject);
    procedure dxDBGrid5DblClick(Sender: TObject);
    procedure popFilterPopup(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure cblc15Exit(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure actEditTranExecute(Sender: TObject);
    procedure actInsertTranExecute(Sender: TObject);
    procedure cblc15PropertiesChange(Sender: TObject);
    procedure DBEdit7Click(Sender: TObject);

  private
    DM: TDispStatDataDM;
  public
    PopupComp: TObject;
    procedure ViewSpecific(StationId: Integer);
  end;

var
  frmDispStatData: TfrmDispStatData;

implementation

{$R *.dfm}

uses FMain;

procedure TfrmDispStatData.DBEdit1Exit(Sender: TObject);
begin
  // DM.memStation.Active:=True;
  // DM.memStation.Edit;
  // If (ZoomStation(TField(DM.memStationName), TField(DM.memStationNameKey), False) <= 0) Then
  // Abort;
  // actRefresh.Execute;
end;

procedure TfrmDispStatData.DBEdit7Click(Sender: TObject);
var
  flags: OleVariant;
begin
  inherited;
  // if not frmGMapMain.WebBrowser1.Busy then
  // begin
  // MessageDlg('Not Busy', mtCustom, [mbOK], 0);
  // flags := REFRESH_NORMAL;
  // frmGMapMain.WebBrowser1.Refresh2(flags);
  // end;

  // frmGMapMain.GotoAddress(DM.qryMerchantStationStreet.AsString+' '+DM.qryMerchantStationCity.AsString + ' ΕΛΛΑΔΑ');

end;

procedure TfrmDispStatData.FormCreate(Sender: TObject);
begin
  DM := TDispStatDataDM.Create(Self);
  ResetAction;
  DM.memStation.Edit;
  DM.memStationDateFrom.AsDateTime := EncodeDate(2014, 1, 1);
end;

procedure TfrmDispStatData.actRefreshExecute(Sender: TObject);
begin
  if DM.memStation.State in [dsEdit, dsInsert] then
    DM.memStation.Post;

  DM.qryStation.Active := False;
  ResetAction;
  BlLab.Caption := '';

  DM.qryStation.Active := True;
  if Not DM.qryStation.IsEmpty then
    begin
      DM.qryTrans.Active           := False;
      DM.qryMerchant.Active        := False;
      DM.qryApproval.Active        := False;
      DM.qryTRCALLDET.Active       := False;
      DM.qryStationTerminal.Active := False;

      DM.qryTrans.Active           := True;
      DM.qryMerchant.Active        := True;
      DM.qryApproval.Active        := True;
      DM.qryTRCALLDET.Active       := True;
      DM.qryStationTerminal.Active := True;

      SetAction;
    end
  else
    begin
      MessageDlg('Δεν Υπάρχει το Πρατήριο ', mtError, [mbOK], 0);
      ResetAction;
    end;
end;

procedure TfrmDispStatData.cblc15Exit(Sender: TObject);
begin
  inherited;
  actRefreshExecute(Self);
end;

procedure TfrmDispStatData.cblc15PropertiesChange(Sender: TObject);
begin
  inherited;
  cblc15Exit(Self);
end;

procedure TfrmDispStatData.cxGridDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if TDispStatDataDM(DM).qryContactsemail.AsString > '' then
    CreateDraftMailStd(TDispStatDataDM(DM).qryContactsemail.AsString, TDispStatDataDM(DM).qryContactsContactsSurname.AsString);
end;

procedure TfrmDispStatData.ResetAction;
var
  x: Integer;
begin
  // for x:=0 to ActionList1.ActionCount -1 do
  // if ActionList1.Actions[x].Tag = 1 then
  // begin
  // TAction(ActionList1.Actions[x]).Enabled:=False;
  // TAction(ActionList1.Actions[x]).Visible:=False;
  // end;
end;

procedure TfrmDispStatData.SetAction;
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

procedure TfrmDispStatData.actMailCompExecute(Sender: TObject);
begin
  // GeneralDM.InsertMessage(3,DM.qStationStationID.AsInteger,DM.QStationName.AsString);
end;

procedure TfrmDispStatData.actApprovalExecute(Sender: TObject);
begin
  frmMain.InsertApprovalSpec(DM.memStationStationId.asinteger, -1);
end;

procedure TfrmDispStatData.actEditTranExecute(Sender: TObject);
var
  frm: TfrmTran;
  I, id: Integer;
begin
  inherited;
  try
    try
      id  := TDispStatDataDM(DM).qTranTRANTRANID.asinteger;
      frm := TfrmTran.Create(Application);
      TfrmTran(frm).OpenSpecific(id, 'TranId', 'qryBrowser');
      TfrmTran(frm).SelectionDone                 := True;
      TTranDM(TfrmTran(frm).DM).qryBrowser.Active := False;
      TTranDM(TfrmTran(frm).DM).qryBrowser.SQL.Add(' Where TranId = ' + IntToStr(id));
      TTranDM(TfrmTran(frm).DM).qryBrowser.Active := True;
      frm.actDispIdExecute(Self);
      frm.ShowModal;
    except
      MsgDlg('Error create form' + 'FormClass.ClassName');
    end;
  finally
    frm.Free;
  end;
end;

procedure TfrmDispStatData.actInsErrorExecute(Sender: TObject);
begin
  // GeneralDM.InsertError(DM.QStationSTATIONID.AsInteger);
end;

procedure TfrmDispStatData.dxDBGrid2DblClick(Sender: TObject);
begin
  // if Not(DM.qDError.IsEmpty) then
  // GeneralDM.EditError(DM.qDErrorDERRORID.AsInteger);
end;

procedure TfrmDispStatData.dxDBGrid3DblClick(Sender: TObject);
begin
  // if Not(DM.qMessStat.IsEmpty) then
  // GeneralDM.EditMessage(DM.qMessStatMESSAGEID.AsInteger,'');
end;

procedure TfrmDispStatData.actInsErrppExecute(Sender: TObject);
begin
  // GeneralDM.InsertErrpp(DM.QStationSTATIONID.AsInteger,0);
end;

procedure TfrmDispStatData.actInsertTranExecute(Sender: TObject);
var
  frm: TfrmTran;
  I, id: Integer;
begin
  inherited;
  try
    try
      frm := TfrmTran.Create(Application);
      TfrmTran(frm).OpenSpecific(id, 'TranId', 'qryBrowser');
      TfrmTran(frm).SelectionDone                 := True;
      TTranDM(TfrmTran(frm).DM).qryBrowser.Active := False;
      TTranDM(TfrmTran(frm).DM).qryBrowser.SQL.Add(' Where TranId = ' + IntToStr(id));
      TTranDM(TfrmTran(frm).DM).qryBrowser.Active := True;
      // TfrmTran(frm).actMainDispExecute(Self);
      frm.actInsertExecute(Self);
      TTranDM(TfrmTran(frm).DM).qryTranMERCHANTID.asinteger := TDispStatDataDM(DM).memStationLMerchantId.asinteger;
      TTranDM(TfrmTran(frm).DM).qryTranSTATIONID.asinteger := TDispStatDataDM(DM).memStationStationId.asinteger;
      frm.ShowModal;
    except
      MsgDlg('Error create form' + 'FormClass.ClassName');
    end;
  finally
    frm.Free;
  end;
end;

procedure TfrmDispStatData.dxDBGrid5DblClick(Sender: TObject);
begin
  // if Not(DM.qDErrpp.IsEmpty) then
  // GeneralDM.EditErrpp(DM.qDErrppDERRPPID.AsInteger);
end;

procedure TfrmDispStatData.N1Click(Sender: TObject);
// var rep:TQuickRep;
begin
  // if PopupComp is TDBGrid then
  begin
    // rep:=TRptSubParams.CreateFrom(self,TDBGrid(PopupComp),DBEdit1.Text);
    // rep.PreviewModal;
    // rep.Free;
  end;
end;

procedure TfrmDispStatData.popFilterPopup(Sender: TObject);
begin
  inherited;
  if Sender is TPopupMenu then
    begin
      PopupComp := TPopupMenu(Sender).PopupComponent;
    end;
end;

procedure TfrmDispStatData.ViewSpecific(StationId: Integer);
begin
  DM.memStation.Edit;
  DM.memStationStationId.asinteger := StationId;
  actRefreshExecute(Self);
end;

end.
