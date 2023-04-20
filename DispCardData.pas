unit DispCardData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DB, ADODB, DMain, DBCtrls, ActnList,
  ExtCtrls, ComCtrls, DispCardDataDM, Vcl.ActnMan, Common, Tran, TranD,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ToolWin, Vcl.ActnCtrls, Vcl.Menus,
  RSubParams, Vcl.Grids, Vcl.DBGrids, QuickRpt, QRCtrls, FBaseDev0, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCalendar, cxDBEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  TFrmDispCardData = class(TfrmBaseDev0)
    ActionList1: TActionList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Splitter1: TSplitter;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    actPin: TAction;
    actPukk: TAction;
    actMailCard: TAction;
    actMailComp: TAction;
    actApproval: TAction;
    Label1: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    actRefresh: TAction;
    TabSheet7: TTabSheet;
    UpdCommandAct: TAction;
    ActionManager1: TActionManager;
    Label17: TLabel;
    cblcAcard: TcxDBLookupComboBox;
    DBEdit1: TDBText;
    DBEdit5: TDBText;
    DBEdit3: TDBText;
    DBEdit4: TDBText;
    DBLookupComboBox1: TDBText;
    DBLookupComboBox6: TDBText;
    DBLookupComboBox7: TDBText;
    DBLookupComboBox8: TDBText;
    DBLookupComboBox2: TDBText;
    DBEdit6: TDBText;
    DBEdit7: TDBText;
    DBEdit10: TDBText;
    DBEdit11: TDBText;
    DBEdit8: TDBText;
    DBEdit9: TDBText;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
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
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    cxGridDBTableView1APPROVALID: TcxGridDBColumn;
    cxGridDBTableView1APPROVALACARDID: TcxGridDBColumn;
    cxGridDBTableView1APPROVALSTATIONID: TcxGridDBColumn;
    cxGridDBTableView1APPROVALAMOUNT: TcxGridDBColumn;
    cxGridDBTableView1APPROVALCODE: TcxGridDBColumn;
    cxGridDBTableView1INSDT: TcxGridDBColumn;
    cxGridDBTableView1UPDDT: TcxGridDBColumn;
    cxGridDBTableView1INSUSR: TcxGridDBColumn;
    cxGridDBTableView1UPDUSR: TcxGridDBColumn;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    TabError: TTabSheet;
    BlLab: TLabel;
    ActionToolBar1: TActionToolBar;
    MaskEdit1: TMaskEdit;
    actInsertTran: TAction;
    actEditTran: TAction;
    cxDBDateEdit1: TcxDBDateEdit;
    DBText6: TDBText;
    procedure MaskEdit1Exit(Sender: TObject);
    procedure actMailCardExecute(Sender: TObject);
    procedure actMailCompExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actApprovalExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actRefresh0Execute(Sender: TObject);
    procedure SetAction;
    procedure ResetAction;
    procedure actPinExecute(Sender: TObject);
    procedure actPukkExecute(Sender: TObject);
    procedure dxDBGrid2DblClick(Sender: TObject);
    procedure dxDBGrid3DblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure popFilterPopup(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure cxDBLookupComboBox1Exit(Sender: TObject);
    procedure cxDBLookupComboBox1Enter(Sender: TObject);
    procedure actInsertTranExecute(Sender: TObject);
    procedure actEditTranExecute(Sender: TObject);
  private
    DM: TDispCardDataDm;
    TxtLeoCard: string;
  public
    PopupComp: TObject;
    procedure ViewSpecific(CardId: Integer);
  end;

implementation

{$R *.dfm}

uses FMain;

procedure TFrmDispCardData.MaskEdit1Exit(Sender: TObject);
begin
  actRefresh0Execute(Self);
end;

procedure TFrmDispCardData.N1Click(Sender: TObject);
var
  rep: TQuickRep;
begin
  if PopupComp is TDBGrid then
    begin
      // rep:=TRptSubParams.CreateFrom(self,TDBGrid(PopupComp),DBEdit1.Text);
      // rep.PreviewModal;
      // rep.Free;
    end;
end;

procedure TFrmDispCardData.popFilterPopup(Sender: TObject);
begin
  inherited;
  if Sender is TPopupMenu then
    PopupComp := TPopupMenu(Sender).PopupComponent;
end;

procedure TFrmDispCardData.actEditTranExecute(Sender: TObject);
var
  frm: TfrmTran;
  I, id: Integer;
begin
  inherited;
  try
    try
      id  := TDispCardDataDm(DM).qTranTRANTRANID.AsInteger;
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

procedure TFrmDispCardData.actInsertTranExecute(Sender: TObject);
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
      TTranDM(TfrmTran(frm).DM).qryTranACARDID.AsInteger := TDispCardDataDm(DM).qACardACARDID.AsInteger;
      frm.ShowModal;
    except
      MsgDlg('Error create form' + 'FormClass.ClassName');
    end;
  finally
    frm.Free;
  end;
end;

procedure TFrmDispCardData.actMailCardExecute(Sender: TObject);
begin
  // GeneralDM.InsertMessage(1,DM.qACardACARDID.AsInteger,DM.qACardFullCardNo.AsString);
end;

procedure TFrmDispCardData.actMailCompExecute(Sender: TObject);
begin
  // GeneralDM.InsertMessage(2,DM.qACardCUSTOMERID.AsInteger,DM.qCustNAME.AsString);
end;

procedure TFrmDispCardData.FormCreate(Sender: TObject);
begin
  DM := TDispCardDataDm.Create(Self);
  ResetAction;
  DM.memStation.Edit;
  DM.memStationDateFrom.AsDateTime := EncodeDate(2014, 1, 1);
  DBText6.Font.Color               := clBtnFace;
  DBText6.Font.Style               := []
end;

procedure TFrmDispCardData.actApprovalExecute(Sender: TObject);
begin
  frmMain.InsertApprovalSpec(-1, DM.memStationCardKey.AsInteger);
end;

procedure TFrmDispCardData.actRefreshExecute(Sender: TObject);
var
  TToday: TDateTime;
  LeoCard: Integer;
begin
  if DM.memStation.State in [dsEdit, dsInsert] then
    DM.memStation.Post;

  DM.qACard.Active := False;
  ResetAction;
  BlLab.Caption := '';
  // Fix
  // LeoCard:=ReturnCardCodeFromFullNo(MasKEdit1.Text);
  // if LeoCard > 0  then
  // DM.qACard.Parameters.ParamByName('PAcardCode').Value:=LeoCard;
  DM.qACard.Active := True;
  if Not DM.qACard.IsEmpty then
    begin
      DM.qCust.Active := False;
      DM.qTran.Active := False;
      // DM.qMessACard.Active := False;
      // DM.qMessCust.Active  := False;
      DM.qApproval.Active := False;
      // DM.qConsG.Active     := False;

      DM.qCust.Active := True;
      DM.qTran.Active := True;
      // DM.qMessACard.Active := True;
      // DM.qMessCust.Active  := True;
      DM.qApproval.Active := True;
      // DM.qConsG.Active     := True;
      TToday        := now;
      BlLab.Caption := '';
      SetAction;
      if DM.qACardBLACKLISTBOOLEAN.AsBoolean then
        begin
          // ShowMessage('Κάρτα σε Black List');
          BlLab.Caption := 'Black List';
        end;
      if (DM.qACardISACTIVE.AsBoolean = False) then
        begin
          // ShowMessage('Η κάρτα είναι Ανενεργή');
          if BlLab.Caption > '' then
            BlLab.Caption := BlLab.Caption + chr(13) + 'Ανενεργή'
          else
            BlLab.Caption := 'Η κάρτα είναι Ανενεργή';
        end;
      if (DM.qACardSTARTDATE.AsDateTime > TToday) then
        begin
          // ShowMessage('Η κάρτα θα λειτουργεί στο μέλλον');
          if BlLab.Caption > '' then
            BlLab.Caption := BlLab.Caption + chr(13) + 'Στο μέλλον'
          else
            BlLab.Caption := 'Η κάρτα θα λειτουργεί στο μέλλον';
        end;
      if (DM.qACardEXPIREDATE.AsDateTime < TToday) then
        begin
          // ShowMessage('Η κάρτα έχει λήξει');
          if BlLab.Caption > '' then
            BlLab.Caption := BlLab.Caption + chr(13) + 'Εχει λήξει'
          else
            BlLab.Caption := 'Η κάρτα έχει λήξει';
        end;
      if BlLab.Caption > '' then
        begin
          ShowMessage(BlLab.Caption);
          PageControl1.ActivePage := TabError;
        end;
      if not(DM.qACardAcardCodeFull.AsString = TxtLeoCard) then
        begin
          MessageDlg('Πρόβλημα στο Check Digit', mtError, [mbOK], 0);
          DBText6.Font.Color := clRed;
          DBText6.Font.Style := [fsBold];
        end
      else
        begin
          DBText6.Font.Color := clBtnFace;
          DBText6.Font.Style := []
        end;
    end
  else
    begin
      MessageDlg('Δεν Υπάρχει η κάρτα ', mtError, [mbOK], 0);
      ResetAction;
    end;
end;

procedure TFrmDispCardData.cxDBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
  // MaskEdit1.Text := '1405 28';
end;

procedure TFrmDispCardData.cxDBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
  actRefresh0Execute(Self);
end;

procedure TFrmDispCardData.ResetAction;
var
  x: Integer;
begin
  for x := 0 to ActionList1.ActionCount - 1 do
    if ActionList1.Actions[x].Tag = 1 then
      begin
        TAction(ActionList1.Actions[x]).Enabled := False;
        TAction(ActionList1.Actions[x]).Visible := False;
      end;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TFrmDispCardData.SetAction;
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

procedure TFrmDispCardData.ViewSpecific(CardId: Integer);
begin
  DM.memStation.Edit;
  DM.memStationCardKey.AsInteger := CardId;
  actRefreshExecute(Self);
end;

procedure TFrmDispCardData.actPinExecute(Sender: TObject);
begin
  MessageDlg('PassWord is : ' + ReturnPass(DM.qACardAcardCodeFull.AsString), mtConfirmation, [mbYes], 0)
end;

procedure TFrmDispCardData.actPukkExecute(Sender: TObject);
begin
  MessageDlg('Pukk is : ' + ReturnPukk(DM.qACardAcardCodeFull.AsString), mtConfirmation, [mbYes], 0)
end;

procedure TFrmDispCardData.dxDBGrid2DblClick(Sender: TObject);
begin
  // Fix
  // if Not(DM.qMessACard.IsEmpty) then
  // GeneralDM.EditMessage(DM.qMessACardMESSAGEID.AsInteger,'');
end;

procedure TFrmDispCardData.dxDBGrid3DblClick(Sender: TObject);
begin
  // Fix
  // if Not(DM.qMessCust.IsEmpty) then
  // GeneralDM.EditMessage(DM.qMessCustMESSAGEID.asInteger,'');
end;

procedure TFrmDispCardData.Excel1Click(Sender: TObject);
begin
  inherited;
  // Fix
  // if PopupComp is TDBGrid then
  // GeneralDM.OutputFile(TDBGrid(PopupComp));
end;

procedure TFrmDispCardData.actRefresh0Execute(Sender: TObject);
var
  TToday: TDateTime;
  LeoCard: Integer;
  vLeoCard: Variant;
  FromRegNo: Boolean;
  TmpStr: string;
begin
  try
    LeoCard    := ReturnCardIdFromFullNo(MaskEdit1.Text);
    TxtLeoCard := StringReplace(MaskEdit1.Text, ' ', '-', [rfReplaceAll]);;
    FromRegNo  := False;
  except
    FromRegNo := True;
  end;

  if LeoCard > 0 then
    begin
      vLeoCard := LeoCard;
      DM.memStation.Edit;
      DM.memStationCardKey.AsInteger := LeoCard;
      DM.memStation.Post;
    end;

  actRefreshExecute(Self);

  if FromRegNo then
    begin
      TmpStr         := DM.qACardAcardCodeFull.AsString;
      MaskEdit1.Text := StringReplace(TmpStr, '-', ' ', [rfReplaceAll]);
    end;

  // DM.qACard.Parameters.ParamByName('PAcardCode').Value:=LeoCard;
  // DM.qACard.Active:=True;
  // if Not DM.qACard.IsEmpty then
  // begin
  // DM.qCust.Active      := False;
  // DM.qTran.Active      := False;
  // DM.qApproval.Active  := False;
  //
  // DM.qCust.Active      := True;
  // DM.qTran.Active      := True;
  // DM.qApproval.Active  := True;
  // TToday:=now;
  // SetAction;
  // if DM.qACardBLACKLISTBOOLEAN.AsBoolean then
  // begin
  // ShowMessage('Κάρτα σε Black List');
  // BlLab.Caption:='Black List';
  // end;
  // if ( DM.qACardISACTIVE.AsBoolean = False )  then
  // begin
  // ShowMessage('Η κάρτα είναι Ανενεργή');
  // if BlLab.Caption > '' then
  // BlLab.Caption:=BlLab.Caption+' Ανενεργή'
  // else
  // BlLab.Caption:='Η κάρτα είναι Ανενεργή';
  // end;
  // if ( DM.qACardSTARTDATE.AsDateTime > TToday )  then
  // begin
  // ShowMessage('Η κάρτα θα λειτουργεί στο μέλλον');
  // if BlLab.Caption > '' then
  // BlLab.Caption:=BlLab.Caption+' Στο μέλλον'
  // else
  // BlLab.Caption:='Η κάρτα θα λειτουργεί στο μέλλον';
  // end;
  // if ( DM.qACardEXPIREDATE.AsDateTime < TToday )  then
  // begin
  // ShowMessage('Η κάρτα έχει λήξει');
  // if BlLab.Caption > '' then
  // BlLab.Caption:=BlLab.Caption+' Εχει λήξει'
  // else
  // BlLab.Caption:='Η κάρτα έχει λήξει';
  // end;
  // end
  // else
  // begin
  // MessageDlg('Δεν Υπάρχει η κάρτα ', mtError, [mbOK], 0);
  // ResetAction;
  // end;
end;

end.
