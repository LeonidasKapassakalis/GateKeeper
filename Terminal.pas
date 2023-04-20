Unit Terminal;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, TerminalD, StdCtrls, DBCtrls, FBaseDev0, dxPSGlbl, dxPSUtl, dxPSEngn,
  Menus, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Data.Win.ADODB,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.PlatformDefaultStyleActnCtrls,
  cxGridLevel, cxGridCustomView, cxGrid, cxCurrencyEdit, cxDBEdit,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxPC, cxNavigator, cxLabel, cxDBLabel,
  cxSpinEdit, cxClasses, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPSCore, dxPScxCommon, dxmdaset, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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

Type
  TfrmTerminal = Class(TfrmBaseDev0)
    ActionList1: TActionList;
    actClose: TAction;
    actInsert: TAction;
    actUpdate: TAction;
    actDelete: TAction;
    actOK: TAction;
    actCancel: TAction;
    actNext: TAction;
    actPrev: TAction;
    actFirst: TAction;
    actLast: TAction;
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
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBLabel1: TcxDBLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    actDisplay: TAction;
    cxGrid1DBTableView1Terminalid1: TcxGridDBColumn;
    cxGrid1DBTableView1TerminalCode1: TcxGridDBColumn;
    cxGrid1DBTableView1TerminalSerialNo1: TcxGridDBColumn;
    cxGrid1DBTableView1TerminalType1: TcxGridDBColumn;
    cxGrid1DBTableView1LTerminalType1: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
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
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView2StationTerminalId1: TcxGridDBColumn;
    cxGridDBTableView2StationId1: TcxGridDBColumn;
    cxGridDBTableView2Terminalid1: TcxGridDBColumn;
    cxGridDBTableView2StartDate1: TcxGridDBColumn;
    Label1: TLabel;
    cxGridDBTableView2LStation1: TcxGridDBColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    actStat: TAction;
    memWS: TdxMemData;
    memWSComponentName: TStringField;
    memWSComponentValueInt: TIntegerField;
    memWSComponentValueDT: TDateTimeField;
    cxDBCBDeleted: TcxDBCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    actMaxTerminal: TAction;
    Procedure actCloseExecute(Sender: TObject);
    Procedure actInsertExecute(Sender: TObject);
    Procedure actOKExecute(Sender: TObject);
    Procedure actCancelExecute(Sender: TObject);
    Procedure FormShow(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    Procedure actDeleteExecute(Sender: TObject);
    procedure BrowseFields(var LeoMenu: TMenuItem);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure actDisplayExecute(Sender: TObject);
    procedure actFirstExecute(Sender: TObject);
    procedure actLastExecute(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actPrevExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure actUpdateExecute(Sender: TObject);
    procedure actStatExecute(Sender: TObject);
    procedure actMaxTerminalExecute(Sender: TObject);

  Private
    { Private declarations }
    DM: TTerminalDM;
  Published
    procedure CheckIfThere; override;
    procedure MainStateChange; override;
    procedure MainStateChange0(St: String); override;
    procedure SubStateChange(St: String); override;
  Public
    { Public declarations }
  End;

Implementation

Uses
  Common, DMain, FMain;

{$R *.dfm}

Procedure TfrmTerminal.FormCreate(Sender: TObject);
Begin
  DM     := TTerminalDM.Create(self);
  PrimDM := DM;
  SecDM  := DM;

  SelectMainData    := TCustomAdoDataSet(cxGrid1DBTableView1.DataController.DataSet);
  SelectMainGrid    := cxGrid1DBTableView1;
  SelectMainActList := ActionMainList;

  MainStateChange0('Browse');
  SubStateChange('Browse');

End;

Procedure TfrmTerminal.FormShow(Sender: TObject);
Begin
  dxPageControl1.ActivePage := tabBrowser;
  SetState(ActionList1, 'Browse');
End;

procedure TfrmTerminal.N1Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link1.Preview();
end;

Procedure TfrmTerminal.actCloseExecute(Sender: TObject);
Begin
  Close;
End;

Procedure TfrmTerminal.actInsertExecute(Sender: TObject);
Begin
  DM.DoInsert;
  dxPageControl1.ActivePage := tabData;
End;

Procedure TfrmTerminal.actDeleteExecute(Sender: TObject);
Begin
  If (AskUserNo('Να διαγραφεί;') = true) Then
    Begin
      DM.DoDelete;
    End;
End;

procedure TfrmTerminal.actDisplayExecute(Sender: TObject);
begin
  inherited;
  if dxPageControl1.ActivePage = tabData then
    dxPageControl1.ActivePage := tabBrowser
  else
    dxPageControl1.ActivePage := tabData;
end;

Procedure TfrmTerminal.actOKExecute(Sender: TObject);
var
  x: Integer;
begin
  // cxGrid1DBTableView1.DataController.DataSet.Active:=False;
  DM.qryTerminal.Post;
  dxPageControl1.ActivePage := tabBrowser;
  AllClick(ActionList1);
  // cxGrid1DBTableView1.DataController.DataSet.Active:=True;

  x := DM.CardFindId;
  DM.qryBrowser.Requery();
  DM.qryTerminal.Requery();
  DM.qryBrowser.Locate('TerminalId', x, [])

end;

Procedure TfrmTerminal.actCancelExecute(Sender: TObject);
Begin
  DM.qryTerminal.Cancel;
End;

procedure TfrmTerminal.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  BrowseFields(Pedia);
end;

procedure TfrmTerminal.BrowseFields(var LeoMenu: TMenuItem);
Var
  i, x: Integer;
  NewMenu: TMenuItem;
begin
  x     := LeoMenu.Count - 3;
  For i := 1 to x do
    begin
      LeoMenu.Delete(3);
    end;
end;

procedure TfrmTerminal.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  actDisplay.Execute()
end;

procedure TfrmTerminal.actFirstExecute(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSource.DataSet.First;
end;

procedure TfrmTerminal.actPrevExecute(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Prior;
end;

procedure TfrmTerminal.actStatExecute(Sender: TObject);
begin
  inherited;
  memWS.Close;
  memWS.Open;
  memWS.Insert;
  memWS.Edit;
  memWSComponentName.AsString      := 'memWSFrTerminalId';
  memWSComponentValueInt.AsInteger := DM.qryTERMINALTerminalid.AsInteger;
  memWS.Post;
  memWS.Insert;
  memWS.Edit;
  memWSComponentName.AsString      := 'memWSToTerminalId';
  memWSComponentValueInt.AsInteger := DM.qryTERMINALTerminalid.AsInteger;
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

  frmMain.GeneralFormExecuteNameWithDefs('TfrmPrnTranPrologue', memWS);
end;

procedure TfrmTerminal.actUpdateExecute(Sender: TObject);
begin
  DM.DoUpdate;
  dxPageControl1.ActivePage := tabData;
end;

procedure TfrmTerminal.actLastExecute(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Last;
end;

procedure TfrmTerminal.actMaxTerminalExecute(Sender: TObject);
begin
  inherited;
  DM.qryMaxTerminalCode.Active := False;
  DM.qryMaxTerminalCode.Active := true;
  MessageDlg('Μέγιστο Terminal Code καταχωρημένο ' + DM.qryMaxTerminalCodeMaxTerminalCode.AsString + Chr(13) + 'Like 09000%', mtInformation, [mbOK], 0);
  DM.qryMaxTerminalCode.Active := False;
end;

procedure TfrmTerminal.actNextExecute(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Next;
end;

procedure TfrmTerminal.CheckIfThere;
begin
  // AllClick(ActionList1);
end;

procedure TfrmTerminal.MainStateChange;
begin
  // Published
  // To be called from DataModule
end;

procedure TfrmTerminal.MainStateChange0(St: String);
begin
  SetState(ActionList1, St);
end;

procedure TfrmTerminal.SubStateChange(St: String);
begin
  // Published
  // To be called from DataModule with State Parameter//
  // SetState(ActListContacts,st);
  // Append More for Activate/Deactivate Edit Ctrls//
end;

end.
