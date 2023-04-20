Unit Station;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, DBCtrls, FBaseDev0, StationD,
  dxPSGlbl, dxPSUtl, dxPSEngn, AdoDb, CommonOut2000,
  Menus, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.PlatformDefaultStyleActnCtrls,
  cxGridLevel, cxGridCustomView, cxGrid, cxCurrencyEdit, cxDBEdit,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxPC, cxNavigator, cxLabel, cxDBLabel,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ImgList, Vcl.ExtCtrls, cxClasses,
  cxGridCardView, cxGridDBCardView, cxGridCustomLayoutView, dxLayoutContainer,
  cxGridLayoutView, cxGridDBLayoutView, dxmdaset, dxSkinsCore, dxSkinBlack,
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
  TfrmStation = Class(TfrmBaseDev0)
    ActionList1: TActionList;
    actClose: TAction;
    actInsert: TAction;
    actUpdate: TAction;
    actDelete: TAction;
    actOK: TAction;
    actCancel: TAction;
    actDisp: TAction;
    actInActive: TAction;
    actTest: TAction;
    actNext: TAction;
    actPrev: TAction;
    actFirst: TAction;
    actLast: TAction;
    dxPageControl1: TcxPageControl;
    tabBrowser: TcxTabSheet;
    tabData: TcxTabSheet;
    UpdCommandAct: TAction;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ActionManager1: TActionManager;
    ActionToolBar1: TActionToolBar;
    pnlBottom: TPanel;
    PageControl1: TPageControl;
    tabServices: TTabSheet;
    tabCommision: TTabSheet;
    tabMerchant: TTabSheet;
    GroupBox2: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    GroupBox1: TGroupBox;
    LabelProm1: TLabel;
    LabelProm2: TLabel;
    LabelProm3: TLabel;
    LabelProm4: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    LabelProm5: TLabel;
    Label32: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
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
    PnlTop: TPanel;
    Label1: TLabel;
    dxDBEdit1: TcxDBTextEdit;
    dxDBEdit2: TcxDBTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    dxDBEdit3: TcxDBTextEdit;
    dxDBEdit4: TcxDBTextEdit;
    Label4: TLabel;
    Label34: TLabel;
    Splitter1: TSplitter;
    Label15: TLabel;
    ImageList1: TImageList;
    ActListContacts: TActionList;
    actCntEdit: TAction;
    actCntDelete: TAction;
    actCntInsert: TAction;
    actCntPost: TAction;
    actCntCancel: TAction;
    Action1: TAction;
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
    tabTerminal: TTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
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
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    cxGrid2DBTableView1MerchantId: TcxGridDBColumn;
    cxGrid2DBTableView1Stationid: TcxGridDBColumn;
    cxGrid2DBTableView1LMerchant: TcxGridDBColumn;
    cxDBCBDeleted: TcxDBCheckBox;
    cxDBCBInActive: TcxDBCheckBox;
    cxGridDBTableView3StartDate1: TcxGridDBColumn;
    cxGridDBTableView3LTerminal1: TcxGridDBColumn;
    cxGridDBTableView3StationId1: TcxGridDBColumn;
    cxGridDBTableView3Terminalid1: TcxGridDBColumn;
    cxGridDBTableView3StationTerminalId1: TcxGridDBColumn;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    ts1: TTabSheet;
    tlb1: TToolBar;
    btnCntInsert: TToolButton;
    btnCntEdit: TToolButton;
    btnCntDelete: TToolButton;
    btnCntPost: TToolButton;
    btnCntCancel: TToolButton;
    btnAction1: TToolButton;
    actStat: TAction;
    memWS: TdxMemData;
    memWSComponentName: TStringField;
    memWSComponentValueInt: TIntegerField;
    memWSComponentValueDT: TDateTimeField;
    actLastCallDate: TAction;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    actMaxTerminal: TAction;
    cxGrid1DBTableView1Stationid: TcxGridDBColumn;
    cxGrid1DBTableView1Name: TcxGridDBColumn;
    cxGrid1DBTableView1STREET: TcxGridDBColumn;
    cxGrid1DBTableView1ZIP: TcxGridDBColumn;
    cxGrid1DBTableView1CITY: TcxGridDBColumn;
    cxGrid1DBTableView1IGroupId1: TcxGridDBColumn;
    cxGrid1DBTableView1Pososto1: TcxGridDBColumn;
    cxGrid1DBTableView1HaveGroup1: TcxGridDBColumn;
    cxGrid1DBTableView1IGroupId2: TcxGridDBColumn;
    cxGrid1DBTableView1Pososto2: TcxGridDBColumn;
    cxGrid1DBTableView1HaveGroup2: TcxGridDBColumn;
    cxGrid1DBTableView1IGroupId3: TcxGridDBColumn;
    cxGrid1DBTableView1Pososto3: TcxGridDBColumn;
    cxGrid1DBTableView1HaveGroup3: TcxGridDBColumn;
    cxGrid1DBTableView1IGroupId4: TcxGridDBColumn;
    cxGrid1DBTableView1Pososto4: TcxGridDBColumn;
    cxGrid1DBTableView1HaveGroup4: TcxGridDBColumn;
    cxGrid1DBTableView1IGroupId5: TcxGridDBColumn;
    cxGrid1DBTableView1Pososto5: TcxGridDBColumn;
    cxGrid1DBTableView1HaveGroup5: TcxGridDBColumn;
    cxGrid1DBTableView1IGroupId6: TcxGridDBColumn;
    cxGrid1DBTableView1Pososto6: TcxGridDBColumn;
    cxGrid1DBTableView1HaveGroup6: TcxGridDBColumn;
    cxGrid1DBTableView1IGroupId7: TcxGridDBColumn;
    cxGrid1DBTableView1Pososto7: TcxGridDBColumn;
    cxGrid1DBTableView1HaveGroup7: TcxGridDBColumn;
    cxGrid1DBTableView1IGroupId8: TcxGridDBColumn;
    cxGrid1DBTableView1Pososto8: TcxGridDBColumn;
    cxGrid1DBTableView1HaveGroup8: TcxGridDBColumn;
    cxGrid1DBTableView1IGroupId9: TcxGridDBColumn;
    cxGrid1DBTableView1Pososto9: TcxGridDBColumn;
    cxGrid1DBTableView1HaveGroup9: TcxGridDBColumn;
    cxGrid1DBTableView1IGroupId10: TcxGridDBColumn;
    cxGrid1DBTableView1Pososto10: TcxGridDBColumn;
    cxGrid1DBTableView1HaveGroup10: TcxGridDBColumn;
    cxGrid1DBTableView1AreaId: TcxGridDBColumn;
    cxGrid1DBTableView1SalesMenId: TcxGridDBColumn;
    cxGrid1DBTableView1Deleted: TcxGridDBColumn;
    cxGrid1DBTableView1DelUsr: TcxGridDBColumn;
    cxGrid1DBTableView1DelDT: TcxGridDBColumn;
    cxGrid1DBTableView1InActive: TcxGridDBColumn;
    cxGrid1DBTableView1InActiveUsr: TcxGridDBColumn;
    cxGrid1DBTableView1InActiveDt: TcxGridDBColumn;
    cxGrid1DBTableView1StopSales: TcxGridDBColumn;
    cxGrid1DBTableView1StopSalesUsr: TcxGridDBColumn;
    cxGrid1DBTableView1StopSalesDt: TcxGridDBColumn;
    cxGridDBTableView5LCont: TcxGridDBColumn;
    cxGridDBTableView5LResr: TcxGridDBColumn;
    cxGridDBTableView5LContactTypeId: TcxGridDBColumn;
    cxGridDBTableView5StationContactId: TcxGridDBColumn;
    cxGridDBTableView5StationId: TcxGridDBColumn;
    cxGridDBTableView5ContactId: TcxGridDBColumn;
    cxGridDBTableView5ContactTypeId: TcxGridDBColumn;
    cxGridDBTableView5Main: TcxGridDBColumn;
    cxGridDBTableView5AA: TcxGridDBColumn;
    ToolButton13: TToolButton;
    cxDBCheckBox1: TcxDBCheckBox;
    Procedure actCloseExecute(Sender: TObject);
    Procedure actInsertExecute(Sender: TObject);
    Procedure actUpdateExecute(Sender: TObject);
    Procedure actOKExecute(Sender: TObject);
    Procedure actCancelExecute(Sender: TObject);
    procedure actInActiveExecute(Sender: TObject);
    procedure actFirstExecute(Sender: TObject);
    procedure actLastExecute(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actPrevExecute(Sender: TObject);
    procedure actDispExecute(Sender: TObject);
    procedure actTestExecute(Sender: TObject);
    Procedure FormShow(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    Procedure UpdateBrowserToolbar(Sender: TObject);
    Procedure UpdateDataToolbar(Sender: TObject);
    Procedure actDeleteExecute(Sender: TObject);
    Procedure dxDBGrid1DblClick(Sender: TObject);
    procedure actGridPrintExecute(Sender: TObject);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure actCntEditExecute(Sender: TObject);
    procedure actCntDeleteExecute(Sender: TObject);
    procedure actCntInsertExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure actCntPostExecute(Sender: TObject);
    procedure actCntCancelExecute(Sender: TObject);
    procedure ToolButton7MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ToolButton1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PageControl1Change(Sender: TObject);
    procedure cxGrid2DBTableView1Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxGridDBTableView3CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
      var AHandled: Boolean);
    procedure tlb1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure actStatExecute(Sender: TObject);
    procedure actLastCallDateExecute(Sender: TObject);
    procedure actMaxTerminalExecute(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
  Private
    { Private declarations }
    DM: TStationDM;

    Procedure UpdateRec;
  Published
    procedure CheckIfThere; override;
    procedure MainStateChange0(St: String); override;
    procedure SubStateChange(St: String); override;
  Public
    { Public declarations }
  End;

Implementation

Uses
  Common, DMain, CustomerD, FMain;

{$R *.dfm}

Procedure TfrmStation.FormCreate(Sender: TObject);
var
  X: Integer;
Begin
  DM     := TStationDM.Create(self);
  PrimDM := DM;
  SecDM  := DM;

  for X := 1 to 9 do
    TDBCheckBox(self.FindComponent('DBCheckBox' + IntToStr(X))).Visible := False;

  DM.qryIGroup.Active := True;
  DM.qryIGroup.First;
  repeat
    // MessageDlg(DM.ADOQuery1Name.AsString, mtWarning, [mbOK], 0);
    try
      TDBCheckBox(self.FindComponent('DBCheckBox' + DM.qryIGroupBITNO.AsString)).Caption := Trim(DM.qryIGroupName.AsString);
      TDBCheckBox(self.FindComponent('DBCheckBox' + DM.qryIGroupBITNO.AsString)).Visible := True;
    except
      MessageDlg('Πρόβλημα στο IGROUP!!!', mtError, [mbOK], 0);
    end;
    DM.qryIGroup.Next;
  until DM.qryIGroup.Eof;
  // DM.qryIGroup.Active := False;

  SetDBLookupSort;

  // Must be there to initialize the Grid Buttons

  SelectMainData    := TCustomAdoDataSet(cxGrid1DBTableView1.DataController.DataSet);
  SelectMainGrid    := cxGrid1DBTableView1;
  SelectMainActList := ActionMainList;

  MainStateChange0('Browse');
  SubStateChange('Browse');
End;

Procedure TfrmStation.FormShow(Sender: TObject);
Begin
  dxPageControl1.ActivePage := tabBrowser;
  DM.qryBrowser.Open;
End;

Procedure TfrmStation.actCloseExecute(Sender: TObject);
Begin
  Close;
End;

Procedure TfrmStation.actInsertExecute(Sender: TObject);
Begin
  DM.DoInsert;
  dxPageControl1.ActivePage := tabData;
  AllClick(ActionList1);
End;

Procedure TfrmStation.actUpdateExecute(Sender: TObject);
Begin
  UpdateRec;
  AllClick(ActionList1);
  // AllClick(ActionList1);
End;

Procedure TfrmStation.actDeleteExecute(Sender: TObject);
Begin
  If (AskUserNo('Να διαγραφεί;') = True) Then
    Begin
      DM.DoDelete;
      // DM.qryBrowser.Close;
      // DM.qryBrowser.Open;
      { TODO -cCritical : Please Check }
      // dxDBGrid1.Refresh;
    End;
End;

Procedure TfrmStation.actOKExecute(Sender: TObject);
var
  X: Integer;
Begin
  DM.qryStation.Post;
  dxPageControl1.ActivePage := tabBrowser;
  AllClick(ActionList1);

  X := DM.CardFindId;
  DM.qryBrowser.Requery();
  DM.qryStation.Requery();
  DM.qryBrowser.Locate('StationId', X, [])

  { TODO -cCritical : Please Check }
  // dxDBGrid1.Refresh;
End;

Procedure TfrmStation.actCancelExecute(Sender: TObject);
Begin
  DM.qryStation.Cancel;
  dxPageControl1.ActivePage := tabBrowser;
  AllClick(ActionList1);
End;

Procedure TfrmStation.UpdateBrowserToolbar(Sender: TObject);
Begin
  If (DM.qryStation.State in [dsInsert, dsEdit]) then
    (Sender As TAction).Visible := False
  else
    (Sender As TAction).Visible := True;
End;

Procedure TfrmStation.UpdateDataToolbar(Sender: TObject);
Begin
  If (DM.qryStation.State in [dsBrowse]) then
    (Sender As TAction).Visible := False
  else
    (Sender As TAction).Visible := True;
End;

Procedure TfrmStation.dxDBGrid1DblClick(Sender: TObject);
Begin
  UpdateRec;
End;

Procedure TfrmStation.UpdateRec;
Begin
  DM.DoUpdate;
  dxPageControl1.ActivePage := tabData;
End;

procedure TfrmStation.actGridPrintExecute(Sender: TObject);
// var leo:TrptMemo;
begin
  inherited;
  { TODO -cCritical : Please Check }
  // Leo:=TRptMemo.Create(self);
  // dxDBGrid1.SaveAllToStrings(Leo.QRMemo1.Lines);
  // leo.Preview;
  // Leo.Free;
end;

procedure TfrmStation.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  BrowseFields(Pedia);
end;

procedure TfrmStation.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  actDisp.Execute();
end;

procedure TfrmStation.cxGrid2DBTableView1Editing(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  inherited;
  // AAllow := False;
  // MessageDlg('123456789', mtWarning, [mbOK], 0);
end;

procedure TfrmStation.cxGridDBTableView3CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
var
  PopField: String;
  PopDBLC: TcxGridDBColumn;
begin
  if AShift = [ssShift] then
    if Sender is TcxCustomGridTableView then
      begin

        // MessageDlg(ACellViewInfo.Item.Name, mtWarning, [mbOK], 0);

        PopDBLC := TcxGridDBColumn(TcxCustomGridTableView(Sender).FindItemByName(ACellViewInfo.Item.Name));
        if Assigned(PopDBLC.DataBinding.Field) then
          begin
            PopField := PopDBLC.DataBinding.Field.LookupResultField;
            // MessageDlg(PopDBLC.DataBinding.DataController.DataSet.FieldByName(PopDBLC.DataBinding.Field.LookupKeyFields).Value, mtWarning, [mbOK], 0);
            // !!! Strict reference to frmMain
            FrmMain.actSubParamNoWrapPopupExecute(PopField);
            // TcxDBLookupComboBox(Sender).Properties.ListSource.DataSet.Active := False;
            // TcxDBLookupComboBox(Sender).Properties.ListSource.DataSet.Active := True;
            PopDBLC.DataBinding.Field.LookupDataSet.Active := False;
            PopDBLC.DataBinding.Field.LookupDataSet.Active := True;
          end;
      end;
end;

procedure TfrmStation.PageControl1Change(Sender: TObject);
begin
  inherited;
  if Assigned(SelectSubData) then
    if SelectSubData.State in [dsEdit, dsInsert] then
      SelectSubData.Cancel;
end;

procedure TfrmStation.ToolButton13Click(Sender: TObject);
begin
  inherited;
  CreateDraftMailStd(TStationDM(PrimDM).qryStation_ContactsLMail.AsString, TStationDM(PrimDM).qryStation_ContactsLCont.AsString);

end;

procedure TfrmStation.ToolButton1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SelectSubData := DM.qryStation_Terminal;
end;

procedure TfrmStation.ToolButton7MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SelectSubData := DM.qryMerchant_Station;
end;

procedure TfrmStation.actCntCancelExecute(Sender: TObject);
begin
  inherited;
  SelectSubData.Cancel;
  cxGrid1DBTableView1.OptionsSelection.CellSelect := False;
  cxGridDBTableView3.OptionsSelection.CellSelect  := False;
  cxGridDBTableView5.OptionsSelection.CellSelect  := False;

  cxGrid1DBTableView1.OptionsData.Editing := False;
  cxGridDBTableView3.OptionsData.Editing  := False;
  cxGridDBTableView5.OptionsData.Editing  := False;
end;

procedure TfrmStation.actCntDeleteExecute(Sender: TObject);
begin
  inherited;
  SelectSubData.Delete;
end;

procedure TfrmStation.actCntEditExecute(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.OptionsSelection.CellSelect := True;
  cxGridDBTableView3.OptionsSelection.CellSelect  := True;
  cxGridDBTableView5.OptionsSelection.CellSelect  := True;
  cxGrid1DBTableView1.OptionsData.Editing         := True;
  cxGridDBTableView3.OptionsData.Editing          := True;
  cxGridDBTableView5.OptionsData.Editing          := True;
  // cxGridDBTableView3.OptionsData.Editing := True;
  // cxGridDBTableView1.OptionsData.Editing := True;
  SelectSubData.Edit;
end;

procedure TfrmStation.actCntInsertExecute(Sender: TObject);
begin
  inherited;
  SelectSubData.Append;
  cxGrid1DBTableView1.OptionsSelection.CellSelect := True;
  cxGridDBTableView3.OptionsSelection.CellSelect  := True;
  cxGridDBTableView5.OptionsSelection.CellSelect  := True;
  cxGrid1DBTableView1.OptionsData.Editing         := True;
  cxGridDBTableView3.OptionsData.Editing          := True;
  cxGridDBTableView5.OptionsData.Editing          := True;
end;

procedure TfrmStation.actCntPostExecute(Sender: TObject);
begin
  inherited;
  try
    SelectSubData.Post;
  except
    MessageDlg('Πρόβλημα στην Ενημέρωση.', mtError, [mbOK], 0);
    SelectSubData.Cancel;
  end;
  cxGrid1DBTableView1.OptionsSelection.CellSelect := False;
  cxGridDBTableView3.OptionsSelection.CellSelect  := False;
  cxGridDBTableView5.OptionsSelection.CellSelect  := False;
  cxGrid1DBTableView1.OptionsData.Editing         := False;
  cxGridDBTableView3.OptionsData.Editing          := False;
  cxGridDBTableView5.OptionsData.Editing          := False;
end;

procedure TfrmStation.Action1Execute(Sender: TObject);
begin
  inherited;
  // !!!
  // if SelectSubData.Tag > 0  then
  // AvinKernel(SelectSubData.Tag);
  if SelectSubData.Name = 'qryMerchant_Station' then
    begin
      FrmMain.actSubParamNoWrapExecute('TFrmMerchant', 'Merchantid', SelectSubData.FieldByName('MerchantId').AsInteger);
      DM.qryMerchant.Requery();
    end;
  if SelectSubData.Name = 'qryStation_Terminal' then
    begin
      FrmMain.actSubParamNoWrapExecute('TFrmTerminal', 'Terminalid', SelectSubData.FieldByName('TerminalId').AsInteger);
      DM.qryTerminal.Requery();
    end;
  if SelectSubData.Name = 'qryStation_Contacts' then
    begin
      FrmMain.actSubParamNoWrapExecute('TfrmContacts', 'id', SelectSubData.FieldByName('ContactId').AsInteger);
      DM.qryContacts.Requery();
    end;
end;

procedure TfrmStation.actFirstExecute(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSource.DataSet.First;
end;

procedure TfrmStation.actPrevExecute(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Prior;
end;

procedure TfrmStation.actStatExecute(Sender: TObject);
begin
  inherited;
  memWS.Close;
  memWS.Open;
  memWS.Insert;
  memWS.Edit;
  memWSComponentName.AsString      := 'memWSFrStationId';
  memWSComponentValueInt.AsInteger := DM.qryStationStationid.AsInteger;
  memWS.Post;
  memWS.Insert;
  memWS.Edit;
  memWSComponentName.AsString      := 'memWSToStationId';
  memWSComponentValueInt.AsInteger := DM.qryStationStationid.AsInteger;
  memWS.Post;
  memWS.Insert;
  memWS.Edit;
  memWSComponentName.AsString      := 'memWSToDate';
  memWSComponentValueInt.AsInteger := Round(Now());
  memWS.Post;
  memWS.Insert;
  memWS.Edit;
  memWSComponentName.AsString      := 'RGQuery';
  memWSComponentValueInt.AsInteger := 0;
  memWS.Post;

  FrmMain.GeneralFormExecuteNameWithDefs('TfrmPrnTranPrologue', memWS);
end;

procedure TfrmStation.actLastCallDateExecute(Sender: TObject);
begin
  inherited;
  FrmMain.LastCallDateExecute(self, 'Where [V_TRCALLDSTATIONID] = ' + DM.qryStationStationid.AsString);
end;

procedure TfrmStation.actLastExecute(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Last;
end;

procedure TfrmStation.actMaxTerminalExecute(Sender: TObject);
begin
  inherited;
  DM.qryMaxTerminalCode.Active := False;
  DM.qryMaxTerminalCode.Active := True;
  MessageDlg('Μέγιστο Terminal Code καταχωρημένο ' + DM.qryMaxTerminalCodeMaxTerminalCode.AsString + Chr(13) + 'Like 09000%', mtInformation, [mbOK], 0);
  DM.qryMaxTerminalCode.Active := False;
end;

procedure TfrmStation.actNextExecute(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Next;
end;

procedure TfrmStation.actDispExecute(Sender: TObject);
begin
  if DM.qryBrowser.IsEmpty then
    Exit;

  if dxPageControl1.ActivePage = tabData then
    dxPageControl1.ActivePage := tabBrowser
  else
    dxPageControl1.ActivePage := tabData;
end;

procedure TfrmStation.actInActiveExecute(Sender: TObject);
begin
  If (AskUserNo('Να χαρασκτηριστεί η εγγραφή Ανενεργή;') = True) Then
    Begin
      DM.DoInactive;
      DM.qryBrowser.Refresh;
    End;
end;

procedure TfrmStation.actTestExecute(Sender: TObject);
begin
  inherited;
  If (AskUserNo('Να χαρασκτηριστεί η εγγραφή Test;') = True) Then
    Begin
      DM.DoTest;
      DM.qryBrowser.Refresh;
    End;
end;

procedure TfrmStation.CheckIfThere;
begin
  // AllClick(ActionList1);
  AllClick(ActionList1);
end;

procedure TfrmStation.MainStateChange0(St: String);
begin
  // Published
  // To be called from DataModule
  SetState(ActionList1, St);
end;

procedure TfrmStation.SubStateChange(St: String);
begin
  // Published
  // To be called from DataModule with State Parameter//
  SetState(ActListContacts, St);
  // Append More for Activate/Deactivate Edit Ctrls//
end;

procedure TfrmStation.tlb1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SelectSubData := DM.qryStation_Contacts;
end;

End.
