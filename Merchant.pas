Unit Merchant;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, MerchantD, StdCtrls, DBCtrls, FBaseDev0, dxPSGlbl, dxPSUtl,
  dxPSEngn, ADODB, System.TypInfo, CommonOut2000,
  Menus, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.PlatformDefaultStyleActnCtrls,
  cxGridLevel, cxGridCustomView, cxGrid, cxCurrencyEdit, cxDBEdit,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxPC, cxNavigator, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxCommon,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ExtCtrls, cxClasses, dxmdaset, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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

Type
  TfrmMerchant = Class(TfrmBaseDev0)
    ActionList1: TActionList;
    actClose: TAction;
    actInsert: TAction;
    actUpdate: TAction;
    actDelete: TAction;
    actOK: TAction;
    actCancel: TAction;
    dxPageControl1: TcxPageControl;
    tabBrowser: TcxTabSheet;
    tabData: TcxTabSheet;
    UpdCommandAct: TAction;
    actGridPrint: TAction;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ActionManager1: TActionManager;
    ActionToolBar1: TActionToolBar;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    PnlTop: TPanel;
    cxDBCBDeleted: TcxDBCheckBox;
    cxDBCBInActive: TcxDBCheckBox;
    cxDBCBTest: TcxDBCheckBox;
    Label7: TLabel;
    cxDBTSAP: TcxDBTextEdit;
    cxDBTDOY: TcxDBTextEdit;
    Label6: TLabel;
    Label5: TLabel;
    cxDBTAFM: TcxDBTextEdit;
    cxDBTCity: TcxDBTextEdit;
    Label4: TLabel;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTAddress: TcxDBTextEdit;
    Label2: TLabel;
    Label1: TLabel;
    cxDBTName: TcxDBTextEdit;
    BottomPanel: TPanel;
    PageControl1: TPageControl;
    StationsTab: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Id: TcxGridDBColumn;
    cxGridDBTableView1CustomerId: TcxGridDBColumn;
    cxGridDBTableView1CustomerAA: TcxGridDBColumn;
    cxGridDBTableView1CCName: TcxGridDBColumn;
    cxGridDBTableView1CCNameFull: TcxGridDBColumn;
    cxGridDBTableView1InsUsr: TcxGridDBColumn;
    cxGridDBTableView1InsDT: TcxGridDBColumn;
    cxGridDBTableView1UpdUsr: TcxGridDBColumn;
    cxGridDBTableView1UpdDT: TcxGridDBColumn;
    cxGridDBTableView1Deleted: TcxGridDBColumn;
    cxGridDBTableView1DelUsr: TcxGridDBColumn;
    cxGridDBTableView1DelDT: TcxGridDBColumn;
    cxGridDBTableView1InActive: TcxGridDBColumn;
    cxGridDBTableView1InActiveUsr: TcxGridDBColumn;
    cxGridDBTableView1InActiveDt: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    Panel2: TPanel;
    ToolBar2: TToolBar;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ContactsTab: TTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel1: TPanel;
    ImageList1: TImageList;
    ActListContacts: TActionList;
    actCntEdit: TAction;
    actCntDelete: TAction;
    actCntInsert: TAction;
    actCntPost: TAction;
    actCntCancel: TAction;
    Action1: TAction;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    dxComponentPrinter1Link2: TdxGridReportLink;
    dxComponentPrinter1Link3: TdxGridReportLink;
    dxDBLSalesMen: TcxDBLookupComboBox;
    dxDBLBranch: TcxDBLookupComboBox;
    dxDBLArea: TcxDBLookupComboBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cxGrid2DBTableView1MerchantStationId1: TcxGridDBColumn;
    cxGrid2DBTableView1MerchantId1: TcxGridDBColumn;
    cxGrid2DBTableView1Stationid1: TcxGridDBColumn;
    cxGrid2DBTableView1LStation1: TcxGridDBColumn;
    actDisp: TAction;
    actInActive: TAction;
    actTest: TAction;
    actNext: TAction;
    actPrev: TAction;
    actFirst: TAction;
    actLast: TAction;
    cxGrid1DBTableView1MerchantId1: TcxGridDBColumn;
    cxGrid1DBTableView1Name1: TcxGridDBColumn;
    cxGrid1DBTableView1Street1: TcxGridDBColumn;
    cxGrid1DBTableView1ZIP1: TcxGridDBColumn;
    cxGrid1DBTableView1City1: TcxGridDBColumn;
    cxGrid1DBTableView1AFM1: TcxGridDBColumn;
    cxGrid1DBTableView1DOY1: TcxGridDBColumn;
    cxGrid1DBTableView1InsUsr1: TcxGridDBColumn;
    cxGrid1DBTableView1InsDT1: TcxGridDBColumn;
    cxGrid1DBTableView1UpdUsr1: TcxGridDBColumn;
    cxGrid1DBTableView1UpdDT1: TcxGridDBColumn;
    cxGrid1DBTableView1Deleted1: TcxGridDBColumn;
    cxGrid1DBTableView1DelUsr1: TcxGridDBColumn;
    cxGrid1DBTableView1DelDT1: TcxGridDBColumn;
    cxGrid1DBTableView1InActive1: TcxGridDBColumn;
    cxGrid1DBTableView1InActiveUsr1: TcxGridDBColumn;
    cxGrid1DBTableView1InActiveDt1: TcxGridDBColumn;
    cxGrid1DBTableView1Area_Id1: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantCode1: TcxGridDBColumn;
    cxGrid1DBTableView1SalesMenId1: TcxGridDBColumn;
    cxGrid1DBTableView1SGroup_Id1: TcxGridDBColumn;
    cxGrid1DBTableView1SClass_Id1: TcxGridDBColumn;
    cxGrid1DBTableView1SAPCODE1: TcxGridDBColumn;
    cxGrid1DBTableView1AreaId1: TcxGridDBColumn;
    cxGrid1DBTableView1ISTEST1: TcxGridDBColumn;
    cxGrid1DBTableView1StopSales1: TcxGridDBColumn;
    cxGrid1DBTableView1StopSalesUsr1: TcxGridDBColumn;
    cxGrid1DBTableView1StopSalesDt1: TcxGridDBColumn;
    cxDBTMerchantID: TcxDBTextEdit;
    Label11: TLabel;
    actStat: TAction;
    memWS: TdxMemData;
    memWSComponentName: TStringField;
    memWSComponentValueInt: TIntegerField;
    memWSComponentValueDT: TDateTimeField;
    Commision: TTabSheet;
    GroupBox1: TGroupBox;
    LabelProm1: TLabel;
    LabelProm2: TLabel;
    LabelProm3: TLabel;
    LabelProm4: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    LabelProm5: TLabel;
    Label26: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    dxDBLookupComboBox666: TcxDBLookupComboBox;
    dxDBLookupEditComboBox7: TcxDBLookupComboBox;
    dxDBLookupEdit8: TcxDBLookupComboBox;
    dxDBLookupEdit9: TcxDBLookupComboBox;
    dxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxDBLookupEdit10: TcxDBLookupComboBox;
    dxDBCurrencyEdit5: TcxDBCurrencyEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    actMaxMerchant: TAction;
    cxGrid4DBTableView1LCont: TcxGridDBColumn;
    cxGrid4DBTableView1LResr: TcxGridDBColumn;
    cxGrid4DBTableView1LContactTypeId: TcxGridDBColumn;
    cxGrid4DBTableView1MerchantContactsId: TcxGridDBColumn;
    cxGrid4DBTableView1merchantid: TcxGridDBColumn;
    cxGrid4DBTableView1Contactid: TcxGridDBColumn;
    cxGrid4DBTableView1ContactTypeId: TcxGridDBColumn;
    cxGrid4DBTableView1Main: TcxGridDBColumn;
    cxGrid4DBTableView1AA: TcxGridDBColumn;
    actMakeSimple: TAction;
    ToolButton13: TToolButton;
    cxDBCheckBox1: TcxDBCheckBox;
    Procedure actCloseExecute(Sender: TObject);
    Procedure actInsertExecute(Sender: TObject);
    Procedure actUpdateExecute(Sender: TObject);
    Procedure actOKExecute(Sender: TObject);
    Procedure actCancelExecute(Sender: TObject);
    Procedure FormShow(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    Procedure UpdateBrowserToolbar(Sender: TObject);
    Procedure UpdateDataToolbar(Sender: TObject);
    Procedure actDeleteExecute(Sender: TObject);
    Procedure dxDBGrid1DblClick(Sender: TObject);
    procedure actGridPrintExecute(Sender: TObject);
    // procedure BrowseFields(var LeoMenu: TMenuItem);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure FAllClick(Sender: TObject);
    procedure FNoneClick(Sender: TObject);
    procedure NLeoClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ToolButton7MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ToolButton1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure actCntEditExecute(Sender: TObject);
    procedure actCntDeleteExecute(Sender: TObject);
    procedure actCntInsertExecute(Sender: TObject);
    procedure actCntPostExecute(Sender: TObject);
    procedure actCntCancelExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EnterColor(Sender: TWinControl);
    procedure ExitColor(Sender: TWinControl);
    procedure actDispExecute(Sender: TObject);
    procedure actInActiveExecute(Sender: TObject);
    procedure actTestExecute(Sender: TObject);
    procedure actFirstExecute(Sender: TObject);
    procedure actLastExecute(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actPrevExecute(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure tstActionExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure actStatExecute(Sender: TObject);
    procedure actMaxMerchantExecute(Sender: TObject);
    procedure actMakeSimpleExecute(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure cxDBTAFMExit(Sender: TObject);
  Private
    { Private declarations }
    DM: TMerchantDM;
    FSelectSubData: TCustomAdoDataset;

    Procedure UpdateRec;
    procedure SetSelectSubData(const Value: TCustomAdoDataset);
    procedure FormCreateScr(Sender: TObject);
    procedure FormDestroyScr(Sender: TObject);
    procedure ScreenActiveControlChange(Sender: TObject);
    // !!!
    // procedure FormCreateScr(Sender: TObject);
    // procedure FormDestroyScr(Sender: TObject);
    // procedure ScreenActiveControlChange(Sender: TObject);
  Published
    // !!! Can be used with MethodAddress to Call Specific  Functions
    procedure CheckIfThere; override;
    procedure MainStateChange; override;
    procedure SubStateChange(St: String); override;
    procedure MainStateChange0(St: String); override;
  Public
    property SelectSubData: TCustomAdoDataset read FSelectSubData write SetSelectSubData;
  End;

const
  focusColor = clSkyBlue;

var
  lastFocused: TWinControl;
  originalColor: TColor;

Implementation

Uses Common, FMain;

{$R *.dfm}

procedure TfrmMerchant.FormActivate(Sender: TObject);
var
  X: Integer;
  AHeaderItem, AFooterItem: TcxGridDBTableSummaryItem;
  L1, L2: TcxDataSummary;
begin
  inherited;
  // cxGrid1DBTableView1.OptionsBehavior.BestFitMaxRecordCount := 10;
  for X := 0 to cxGrid1DBTableView1.ItemCount - 1 do
    // begin
    // cxGrid1DBTableView1.Items[x].Options := cxGrid1DBTableView1.Items[x].Options;
    // cxGrid1DBTableView1.Items[x].BestFitMaxWidth := 50;
    cxGrid1DBTableView1.Items[X].ApplyBestFit();
  // end;
  // cxGrid1DBTableView1.ApplyBestFit();
  // cxGrid1DBTableView1.DataController.Summary.FooterSummaryItems[0].SummaryItems[0].c := cxGrid1DBTableView1Id

  (*
    with cxGrid1DBTableView1.DataController.Summary.GroupSummaryItems[0] do
    begin
    AHeaderItem := Add as TcxGridDBTableSummaryItem;
    AHeaderItem.Kind := skCount;
    AHeaderItem.Column := cxGrid1DBTableView1Id;
    AHeaderITem.FieldName := 'Id';
    AHeaderItem.Position := spGroup;

    AFooterItem := Add as TcxGridDBTableSummaryItem;
    AFooterItem.Column := cxGrid1DBTableView1Id;
    afooterItem.FieldName := 'Id';
    AFooterItem.Kind := skCount;
    AFooterItem.Position := spFooter;
    end;
  *)

  /// /////////////////////////////////////////////
  with cxGrid1DBTableView1.DataController.Summary do
    begin
      BeginUpdate;
      try
        SummaryGroups.Clear;
        // The first summary group
        with SummaryGroups.Add do
          begin
            // Add proposed grouping column(s)
            TcxGridTableSummaryGroupItemLink(Links.Add).Column := cxGrid1DBTableView1MerchantId1;
            // Add summary items
            with SummaryItems.Add as TcxGridDBTableSummaryItem do
              begin
                Column := cxGrid1DBTableView1MerchantId1;
                Kind   := skCount;
                Format := 'Records: 0';
                // Position := spFooter;
                // Format := 'Count : $';
              end;
            // with SummaryItems.Add as TcxGridDBTableSummaryItem do
            // begin
            // Column := cxGrid1DBTableView1Id;
            // Kind := skCount;
            // Format := 'Records: 0';
            // end;
            /// ////////////////////////////////////////////
          end;

        with FooterSummaryItems.Add as TcxGridDBTableSummaryItem do
          begin
            Column := cxGrid1DBTableView1MerchantId1;
            Kind   := skCount;
            // Format := 'SUM = $,0.00;-$,0.00';
          end;

      finally
        EndUpdate;
      end;
    end;
end;

Procedure TfrmMerchant.FormCreate(Sender: TObject);
var
  X: Integer;
Begin
  DM     := TMerchantDM.Create(self);
  PrimDM := DM;
  SecDM  := DM;

  SetDBLookupSort;

  SelectMainData    := TCustomAdoDataset(cxGrid1DBTableView1.DataController.DataSet);
  SelectMainGrid    := cxGrid1DBTableView1;
  SelectMainActList := ActionMainList;

  MainStateChange0('Browse');
  SubStateChange('Browse');

  // !!! Color Play
  // FormCreateScr(self);
  // ScreenActiveControlChange(Self);
  // Screen.OnActiveControlChange := ScreenActiveControlChange;
  // Screen.MonitorCount;
  /// / cxGrid1DBTableView1.DataController.CreateAllItems();
  // for x := 0 to self.ComponentCount -1 do
  // if IsPublishedProp(self.Components[x],'Color') then
  // begin
  /// /        originalColor := GetOrdProp(Sender,'Color') ;
  // SetOrdProp(self.Components[x],'Color', clCream) ;
  // end;
End;

Procedure TfrmMerchant.FormShow(Sender: TObject);
Begin
  dxPageControl1.ActivePage := tabBrowser;
  // DM.qryBrowser.Open;
End;

Procedure TfrmMerchant.actCloseExecute(Sender: TObject);
Begin
  Close;
End;

procedure TfrmMerchant.actInActiveExecute(Sender: TObject);
begin
  inherited;
  If (AskUserNo('Να γίνει η εγγραφή Ανενέργη;') = true) Then
    Begin
      DM.DoInActive;
      DM.qryBrowser.Refresh;
    End;
end;

Procedure TfrmMerchant.actInsertExecute(Sender: TObject);
Begin
  DM.DoInsert;
  dxPageControl1.ActivePage := tabData;
  // AllClick(ActionList1);
End;

procedure TfrmMerchant.Action1Execute(Sender: TObject);
begin
  inherited;
  // if SelectSubData.Tag > 0 then
  // AvinKernel(SelectSubData.Tag);
  if SelectSubData.Name = 'qryMerchant_Station' then
    begin
      frmMain.actSubParamNoWrapExecute('TfrmStation', 'StationId', TMerchantDM(PrimDM).qryMerchant_StationStationid.Value);
      DM.qryStation.Active := False;
      DM.qryStation.Active := true;
    end
  else
    begin
      frmMain.actSubParamNoWrapExecute('TfrmContacts', 'Id', TMerchantDM(PrimDM).qryMerchant_ContactsContactid.Value);
      DM.qryContacts.Active := False;
      DM.qryContacts.Active := true;
    end;

end;

Procedure TfrmMerchant.actUpdateExecute(Sender: TObject);
Begin
  UpdateRec;
  // AllClick(ActionList1);
End;

Procedure TfrmMerchant.actDeleteExecute(Sender: TObject);
Begin
  If (AskUserNo('Να διαγραφεί;') = true) Then
    Begin
      DM.DoDelete;
      DM.qryBrowser.Refresh;
      { TODO -cCritical : Please Check }
      // dxDBGrid1.Refresh;
    End;
End;

procedure TfrmMerchant.actDispExecute(Sender: TObject);
begin
  if DM.qryBrowser.IsEmpty then
    Exit;

  if dxPageControl1.ActivePage = tabData then
    dxPageControl1.ActivePage := tabBrowser
  else
    dxPageControl1.ActivePage := tabData;
end;

Procedure TfrmMerchant.actOKExecute(Sender: TObject);
var
  X: Integer;
Begin
  try
    DM.qryMerchant.Post;
  except
    MessageDlg('Error in Posting', mtWarning, [mbOK], 0);

  end;

  X := DM.CardFindId;
  DM.qryBrowser.Requery();
  DM.qryMerchant.Requery();
  DM.qryBrowser.Locate('MerchantId', X, [])

  // DM.qryBrowser.Close;
  // DM.qryBrowser.Open;
  // DM.qryBrowser.Refresh;
  // dxPageControl1.ActivePage := tabBrowser;
  // AllClick(ActionList1);
  { TODO -cCritical : Please Check }
  // dxDBGrid1.Refresh;
End;

procedure TfrmMerchant.actTestExecute(Sender: TObject);
begin
  inherited;
  If (AskUserNo('Να χαρασκτηριστεί η εγγραφή Test;') = true) Then
    Begin
      DM.DoTest;
      DM.qryBrowser.Refresh;
    End;
end;

Procedure TfrmMerchant.actCancelExecute(Sender: TObject);
Begin
  DM.qryMerchant.Cancel;
  // dxPageControl1.ActivePage := tabBrowser;
  // AllClick(ActionList1);
End;

Procedure TfrmMerchant.UpdateBrowserToolbar(Sender: TObject);
Begin
  If (DM.qryMerchant.State in [dsInsert, dsEdit]) then
    (Sender As TAction).Visible := False
  else
    (Sender As TAction).Visible := true;
  // If (dxPageControl1.ActivePage = tabBrowser) Then
  // (Sender As TAction).Visible := true
  // Else
  // (Sender As TAction).Visible := false;
End;

Procedure TfrmMerchant.UpdateDataToolbar(Sender: TObject);
Begin
  If (DM.qryMerchant.State in [dsBrowse]) then
    (Sender As TAction).Visible := False
  else
    (Sender As TAction).Visible := true;
  // If (dxPageControl1.ActivePage = tabData) Then
  // (Sender As TAction).Visible := true
  // Else
  // (Sender As TAction).Visible := false;
End;

Procedure TfrmMerchant.dxDBGrid1DblClick(Sender: TObject);
Begin
  UpdateRec;
End;

Procedure TfrmMerchant.UpdateRec;
Begin
  DM.DoUpdate;
  dxPageControl1.ActivePage := tabData;
End;

procedure TfrmMerchant.actGridPrintExecute(Sender: TObject);
begin
  inherited;
  { TODO -cCritical : Please Check }
  // Leo:=TRptMemo.Create(self);
  // dxDBGrid1.SaveAllToStrings(Leo.QRMemo1.Lines);
  // leo.Preview;
  // Leo.Free;
end;

procedure TfrmMerchant.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  // BrowseFields(Pedia);
end;

procedure TfrmMerchant.cxDBTAFMExit(Sender: TObject);
begin
  inherited;
  if DM.qryMerchant.State in [dsEdit, dsInsert] then
    begin
      DM.qryFindAFM.Active                               := False;
      DM.qryFindAFM.Parameters.ParamByName('PAFM').Value := TcxDBTextEdit(Sender).Text;
      DM.qryFindAFM.Active                               := true;
      if DM.qryFindAFM.RecordCount > 0 then
        if Not(DM.qryFindAFMMerchantId.asinteger = DM.qryMerchantMerchantId.asinteger) then
          MessageDlg('Υπάρχει το ίδιο AΦΜ σε Πελάτη ' + DM.qryFindAFMName.Asstring + ' ' + DM.qryFindAFMMerchantId.Asstring, mtError, [mbOK], 0);
    end;

end;

procedure TfrmMerchant.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  actDisp.Execute;
end;

procedure TfrmMerchant.N1Click(Sender: TObject);
begin
  inherited;
  // !!! Ugly but safe.
  if PopupcxGridDBTableView = cxGrid1DBTableView1 then
    dxComponentPrinter1Link1.Preview();
  if PopupcxGridDBTableView = cxGrid2DBTableView1 then
    dxComponentPrinter1Link2.Preview();
  if PopupcxGridDBTableView = cxGrid4DBTableView1 then
    dxComponentPrinter1Link3.Preview();
end;

procedure TfrmMerchant.NLeoClick(Sender: TObject);
var
  leo: String;
  X, Y: Integer;
begin
  // Indirect Menu Addressing
  { TODO -cCritical : Please Check }
  leo   := (Sender as TMenuItem).Hint;
  for X := 0 to PopupcxGridDBTableView.ColumnCount - 1 do
    if PopupcxGridDBTableView.Columns[X].DataBinding.FieldName = leo then
      Y := X;

  If (Sender as TMenuItem).Checked then
    begin
      PopupcxGridDBTableView.Columns[Y].Visible := False;
      (Sender as TMenuItem).Checked             := False;
    end
  else
    begin
      PopupcxGridDBTableView.Columns[Y].Visible := true;
      (Sender as TMenuItem).Checked             := true;
    end
end;

procedure TfrmMerchant.PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
begin
  inherited;
  if (DM.qryMerchant_Contacts.State in [dsEdit, dsInsert]) or (DM.qryMerchant_Station.State in [dsEdit, dsInsert]) or (DM.qryMerchant.State in [dsEdit, dsInsert]) then
    begin
      MessageDlg('Ολοκληρώστε την καταχώρηση σας.', mtError, [mbOK], 0);
      AllowChange := False;
    end;
end;

procedure TfrmMerchant.SetSelectSubData(const Value: TCustomAdoDataset);
begin
  FSelectSubData := Value;
end;

procedure TfrmMerchant.ToolButton13Click(Sender: TObject);
begin
  inherited;
  CreateDraftMailStd(TMerchantDM(PrimDM).qryMerchant_ContactsLMail.Asstring, TMerchantDM(PrimDM).qryMerchant_ContactsLCont.Asstring);
end;

procedure TfrmMerchant.ToolButton1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SelectSubData := DM.qryMerchant_Contacts;
end;

procedure TfrmMerchant.ToolButton7MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SelectSubData := DM.qryMerchant_Station;
end;

procedure TfrmMerchant.tstActionExecute(Sender: TObject);
begin
  inherited;
  AllClick(ActionList1);
end;

procedure TfrmMerchant.FAllClick(Sender: TObject);
var
  i: Integer;
begin
  For i := 0 to PopupcxGridDBTableView.ColumnCount - 1 do
    begin
      PopupcxGridDBTableView.Columns[i].Visible := true;
      Pedia.Items[i + 3].Checked                := true;
    end
end;

procedure TfrmMerchant.FNoneClick(Sender: TObject);
var
  i: Integer;
begin
  For i := 0 to PopupcxGridDBTableView.ColumnCount - 1 do
    begin
      PopupcxGridDBTableView.Columns[i].Visible := False;
      Pedia.Items[i + 3].Checked                := False;
    end;
end;

procedure TfrmMerchant.actCntCancelExecute(Sender: TObject);
begin
  inherited;
  SelectSubData.Cancel;
  // DM.qryMerchant_Contacts.Cancel;
end;

procedure TfrmMerchant.actCntEditExecute(Sender: TObject);
begin
  inherited;
  // if Sender is TToolButton then
  // MessageDlg('Sender', mtWarning, [mbOK], 0);

  // MessageDlg(Sender.ClassName, mtWarning, [mbOK], 0);
  SelectSubData.Edit;

  cxGrid2DBTableView1.OptionsSelection.CellSelect := true;
  cxGrid4DBTableView1.OptionsSelection.CellSelect := true;
  cxGrid2DBTableView1.OptionsData.Editing         := true;
  cxGrid4DBTableView1.OptionsData.Editing         := true;

  // DM.qryMerchant_Contacts.Edit;
end;

procedure TfrmMerchant.actCntInsertExecute(Sender: TObject);
begin
  inherited;
  SelectSubData.Append;

  cxGrid2DBTableView1.OptionsSelection.CellSelect := true;
  cxGrid4DBTableView1.OptionsSelection.CellSelect := true;
  cxGrid2DBTableView1.OptionsData.Editing         := true;
  cxGrid4DBTableView1.OptionsData.Editing         := true;

  // DM.qryMerchant_Contacts.Append;
end;

procedure TfrmMerchant.actCntPostExecute(Sender: TObject);
begin
  inherited;
  try
    SelectSubData.Post;
  except
    MessageDlg('Πρόβλημα στην Ενημέρωση.', mtError, [mbOK], 0);
    SelectSubData.Cancel;
  end;
  // DM.qryMerchant_Contacts.Post;
  cxGrid2DBTableView1.OptionsSelection.CellSelect := False;
  cxGrid4DBTableView1.OptionsSelection.CellSelect := False;
  cxGrid2DBTableView1.OptionsData.Editing         := False;
  cxGrid4DBTableView1.OptionsData.Editing         := False;
end;

procedure TfrmMerchant.actCntDeleteExecute(Sender: TObject);
begin
  inherited;
  //
  SelectSubData.Delete
  // DM.qryMerchant_Contacts.Delete;
end;

procedure TfrmMerchant.EnterColor(Sender: TWinControl);
var
  a: TObject;
  aa: TcxEditStyle;
begin
  if Sender <> nil then
    begin
      if IsPublishedProp(Sender, 'Color') then
        begin
          originalColor := GetOrdProp(Sender, 'Color');
          SetOrdProp(Sender, 'Color', focusColor);
        end;
    end;

  if Sender <> nil then
    begin
      if IsPublishedProp(Sender, 'Style') then
        begin
          if Sender is TcxCustomEdit then
            begin
              aa            := TcxCustomEdit(Sender).Style;
              originalColor := GetOrdProp(aa, 'Color');
              SetOrdProp(aa, 'Color', focusColor);
            end;
        end;
    end;
end;

/// / uses TypInfo;
/// var s: string;
/// s := GetEnumName(TypeInfo(TProgrammerType),
/// /                  integer(tpDelphi)) ;

procedure TfrmMerchant.ExitColor(Sender: TWinControl);
var
  a: TObject;
  s: string;
  aa: TcxEditStyle;
  aaa: TTypeKind;
  bb: String;
begin
  if Sender <> nil then
    begin
      if IsPublishedProp(Sender, 'Color') then
        begin
          SetOrdProp(Sender, 'Color', originalColor);
        end;
    end;

  if Sender <> nil then
    begin
      if IsPublishedProp(Sender, 'Style') then
        begin
          if Sender is TcxCustomEdit then
            begin
              aa := TcxCustomEdit(Sender).Style;
              /// /          aaa:=PropType(Sender,'Style');
              /// /          s := GetEnumName(TypeInfo(TTypeKind),integer(aaa)) ;
              /// /          MessageDlg(s, mtWarning, [mbOK], 0);
              SetOrdProp(aa, 'Color', originalColor);
              aaa := PropType(aa, 'Color');
              /// ///Enum to String     { TODO : Usefull }
              // s := GetEnumName(TypeInfo(TTypeKind),integer(aaa)) ;
              // MessageDlg(s, mtWarning, [mbOK], 0);
              /// /          if aaa = tkInteger then
              /// /             MessageDlg('Integer', mtWarning, [mbOK], 0);
            end;
        end;
    end;
end;

procedure TfrmMerchant.FormCreateScr(Sender: TObject);
begin
  // Screen.OnActiveControlChange := ScreenActiveControlChange;
end;

procedure TfrmMerchant.FormDestroy(Sender: TObject);
begin
  inherited;
  FormDestroyScr(self);
end;

procedure TfrmMerchant.FormDestroyScr(Sender: TObject);
begin
  Screen.OnActiveControlChange := nil;
end;

procedure TfrmMerchant.ScreenActiveControlChange(Sender: TObject);
var
  doEnter, doExit: Boolean;
  previousActiveControl: TWinControl;
begin
  if Screen.ActiveControl = nil then
    begin
      lastFocused := nil;
      Exit;
    end;

  doEnter := true;
  doExit  := true;

  // CheckBox
  if Screen.ActiveControl is TButtonControl then
    doEnter := False;

  previousActiveControl := lastFocused;

  if previousActiveControl <> nil then
    begin
      // CheckBox
      if previousActiveControl is TButtonControl then
        doExit := False;
    end;

  lastFocused := Screen.ActiveControl;

  if doExit then
    ExitColor(previousActiveControl);
  if doEnter then
    EnterColor(lastFocused);
end;

procedure TfrmMerchant.actFirstExecute(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSource.DataSet.First;
end;

procedure TfrmMerchant.actPrevExecute(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Prior;
end;

procedure TfrmMerchant.actStatExecute(Sender: TObject);
begin
  inherited;
  memWS.Close;
  memWS.Open;
  memWS.Insert;
  memWS.Edit;
  memWSComponentName.Asstring      := 'memWSFrMerchantId';
  memWSComponentValueInt.asinteger := DM.qryMerchantMerchantId.asinteger;
  memWS.Post;
  memWS.Insert;
  memWS.Edit;
  memWSComponentName.Asstring      := 'memWSToMerchantId';
  memWSComponentValueInt.asinteger := DM.qryMerchantMerchantId.asinteger;
  memWS.Post;
  memWS.Insert;
  memWS.Edit;
  memWSComponentName.Asstring      := 'memWSToDate';
  memWSComponentValueInt.asinteger := Round(Now());
  memWS.Post;
  memWS.Insert;
  memWS.Edit;
  memWSComponentName.Asstring      := 'RGQuery';
  memWSComponentValueInt.asinteger := 0;
  memWS.Post;

  frmMain.GeneralFormExecuteNameWithDefs('TfrmPrnTranPrologue', memWS);
end;

procedure TfrmMerchant.actLastExecute(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Last;
end;

procedure TfrmMerchant.actMakeSimpleExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Θα γίνει δημιουργεία εγγραφών Πρατηρίου / Τερματικου για το Έμπορο.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    if MessageDlg('Nα γίνει δημιουργεία εγγραφών Πρατηρίου / Τερματικου για το Έμπορο.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      try
        DM.DoSimple;
        MessageDlg('ΟΚ', mtInformation, [mbOK], 0);
      except
        on E: Exception do
          MessageDlg('Πρόβλημα στην Ενημέρωση. ' + chr(13) + E.Message, mtInformation, [mbOK], 0);
      end;
end;

procedure TfrmMerchant.actMaxMerchantExecute(Sender: TObject);
begin
  inherited;
  DM.qryMaxMerchantCode.Active := False;
  DM.qryMaxMerchantCode.Active := true;
  MessageDlg('Μέγιστο Merchant Code καταχωρημένο ' + DM.qryMaxMerchantCodeMaxMerchantCode.Asstring + chr(13) + 'Like 09000%', mtInformation, [mbOK], 0);
  DM.qryMaxMerchantCode.Active := False;

end;

procedure TfrmMerchant.actNextExecute(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Next;
end;

procedure TfrmMerchant.CheckIfThere;
begin
  AllClick(ActionList1);
end;

procedure TfrmMerchant.MainStateChange;
begin
  AllClick(ActionList1);
end;

procedure TfrmMerchant.MainStateChange0(St: String);
begin
  //
end;

procedure TfrmMerchant.SubStateChange(St: String);
begin
  SetState(ActListContacts, St);
end;

End.
