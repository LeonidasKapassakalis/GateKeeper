Unit Customer;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, CustomerD, StdCtrls, ExtCtrls, DBCtrls, Common, Globals, Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, Data.DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxADOAdapters, ADODB, Strutils, JPeg, FViewPdf, CommonOut2000,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, Vcl.PlatformDefaultStyleActnCtrls, cxCurrencyEdit, cxDBEdit,
  cxCheckBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxMaskEdit, cxCalendar, cxTextEdit, cxPC, cxNavigator, Vcl.ComCtrls, ExtPage,
  cxDBExtLookupComboBox, cxDBEditRepository,
  FPopUp,
  Vcl.ImgList, Vcl.Buttons, FBaseDev0, dxmdaset, cxMemo, dxSkinsCore,
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
  TfrmCustomer = Class(TfrmBaseDev0)
    ActionList1: TActionList;
    actClose: TAction;
    actInsert: TAction;
    actUpdate: TAction;
    actDelete: TAction;
    actOK: TAction;
    actCancel: TAction;
    dxPageControl1: TcxPageControl;
    tabBrowser: TcxTabSheet;
    UpdCommandAct: TAction;
    actLogicalDelete: TAction;
    actGridPrint: TAction;
    actBlackList: TAction;
    actInActive: TAction;
    actActive: TAction;
    ActionToolBar1: TActionToolBar;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tabData: TcxTabSheet;
    BottomPanel: TPanel;
    PageControl1: TPageControl;
    GeneralDataTab: TTabSheet;
    CostCenterTab: TTabSheet;
    TopPanel: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label16: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txtName: TcxDBTextEdit;
    txtStreet: TcxDBTextEdit;
    txtZip: TcxDBTextEdit;
    txtCity: TcxDBTextEdit;
    txtProfession: TcxDBTextEdit;
    txtAFM: TcxDBTextEdit;
    txtDOY: TcxDBTextEdit;
    cbxMeterBoolean: TcxDBCheckBox;
    dbxActive: TcxDBCheckBox;
    cbxCons: TcxDBCheckBox;
    cbxCardHolder: TcxDBCheckBox;
    cbxTest: TcxDBCheckBox;
    cbxPinBoolean: TcxDBCheckBox;
    txtDetEmp: TcxDBCheckBox;
    Label28: TLabel;
    txtSAP: TcxDBTextEdit;
    cmbBranch: TcxDBLookupComboBox;
    Label27: TLabel;
    txtQArea: TcxDBLookupComboBox;
    Label33: TLabel;
    ContactsTab: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
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
    cxGridDBTableView2Id: TcxGridDBColumn;
    cxGridDBTableView2CustomerId: TcxGridDBColumn;
    cxGridDBTableView2CustomerAA: TcxGridDBColumn;
    cxGridDBTableView2CCName: TcxGridDBColumn;
    cxGridDBTableView2CCNameFull: TcxGridDBColumn;
    cxGridDBTableView2InsUsr: TcxGridDBColumn;
    cxGridDBTableView2InsDT: TcxGridDBColumn;
    cxGridDBTableView2UpdUsr: TcxGridDBColumn;
    cxGridDBTableView2UpdDT: TcxGridDBColumn;
    cxGridDBTableView2Deleted: TcxGridDBColumn;
    cxGridDBTableView2DelUsr: TcxGridDBColumn;
    cxGridDBTableView2DelDT: TcxGridDBColumn;
    cxGridDBTableView2InActive: TcxGridDBColumn;
    cxGridDBTableView2InActiveUsr: TcxGridDBColumn;
    cxGridDBTableView2InActiveDt: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1Id: TcxGridDBColumn;
    cxGrid2DBTableView1CustomerId: TcxGridDBColumn;
    cxGrid2DBTableView1CustomerAA: TcxGridDBColumn;
    cxGrid2DBTableView1CCName: TcxGridDBColumn;
    cxGrid2DBTableView1CCNameFull: TcxGridDBColumn;
    cxGrid2DBTableView1InsUsr: TcxGridDBColumn;
    cxGrid2DBTableView1InsDT: TcxGridDBColumn;
    cxGrid2DBTableView1UpdUsr: TcxGridDBColumn;
    cxGrid2DBTableView1UpdDT: TcxGridDBColumn;
    cxGrid2DBTableView1Deleted: TcxGridDBColumn;
    cxGrid2DBTableView1DelUsr: TcxGridDBColumn;
    cxGrid2DBTableView1DelDT: TcxGridDBColumn;
    cxGrid2DBTableView1InActive: TcxGridDBColumn;
    cxGrid2DBTableView1InActiveUsr: TcxGridDBColumn;
    cxGrid2DBTableView1InActiveDt: TcxGridDBColumn;
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
    cxGridLevel1: TcxGridLevel;
    cxGrid4DBTableView1: TcxGridDBTableView;
    MainMenu1: TMainMenu;
    ActManMain: TActionManager;
    ActListContacts: TActionList;
    actCntEdit: TAction;
    actCntDelete: TAction;
    actCntInsert: TAction;
    actCntPost: TAction;
    actCntCancel: TAction;
    Action1: TAction;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    Panel2: TPanel;
    ToolBar2: TToolBar;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    txtCreditAmount: TcxDBTextEdit;
    Label7: TLabel;
    Label8: TLabel;
    txtSaleMan: TcxDBLookupComboBox;
    Label9: TLabel;
    txtDaik: TcxDBLookupComboBox;
    Label10: TLabel;
    txtStartDate: TcxDBDateEdit;
    txtLogical: TcxDBDateEdit;
    Label11: TLabel;
    AvinCards: TTabSheet;
    cxGrid5: TcxGrid;
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
    Panel3: TPanel;
    ToolBar3: TToolBar;
    ToolButton18: TToolButton;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5DBTableView1: TcxGridDBTableView;
    actDisp: TAction;
    actNext: TAction;
    actPrev: TAction;
    actFirst: TAction;
    actLast: TAction;
    cxGrid5DBTableView1ACARDID: TcxGridDBColumn;
    cxGrid5DBTableView1ACARDCODE: TcxGridDBColumn;
    cxGrid5DBTableView1AcardCodeFull: TcxGridDBColumn;
    cxGrid5DBTableView1CUSTOMERID: TcxGridDBColumn;
    cxGrid5DBTableView1ISSUEDATE: TcxGridDBColumn;
    cxGrid5DBTableView1EXPIREDATE: TcxGridDBColumn;
    cxGrid5DBTableView1BLACKLISTBOOLEAN: TcxGridDBColumn;
    cxGrid5DBTableView1DAYAMOUNT: TcxGridDBColumn;
    cxGrid5DBTableView1MONTHAMOUNT: TcxGridDBColumn;
    cxGrid5DBTableView1REGNO: TcxGridDBColumn;
    cxGrid5DBTableView1ISACTIVE: TcxGridDBColumn;
    cxGrid5DBTableView1EXPIRELODATE: TcxGridDBColumn;
    pm1: TPopupMenu;
    Ar1: TMenuItem;
    N2: TMenuItem;
    memWS: TdxMemData;
    memWSComponentName: TStringField;
    memWSComponentValueInt: TIntegerField;
    memWSComponentValueDT: TDateTimeField;
    actStat: TAction;
    Label12: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    Comments: TTabSheet;
    cxDBMemo1: TcxDBMemo;
    Label13: TLabel;
    Label14: TLabel;
    PDF: TTabSheet;
    ToolBar4: TToolBar;
    ToolButton13: TToolButton;
    cxGrid6: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView6Id: TcxGridDBColumn;
    cxGridDBTableView6CustomerId: TcxGridDBColumn;
    cxGridDBTableView6PdfText: TcxGridDBColumn;
    cxGridDBTableView6InsDt: TcxGridDBColumn;
    ActionList2: TActionList;
    actInsertPDF: TAction;
    OpenDialog1: TOpenDialog;
    ToolButton14: TToolButton;
    actDeletePDF: TAction;
    actViewPdf: TAction;
    ToolButton15: TToolButton;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxGrid4DBTableView1LCont: TcxGridDBColumn;
    cxGrid4DBTableView1LResr: TcxGridDBColumn;
    cxGrid4DBTableView1LContactTypeId: TcxGridDBColumn;
    cxGrid4DBTableView1CustomerContactId: TcxGridDBColumn;
    cxGrid4DBTableView1Customerid: TcxGridDBColumn;
    cxGrid4DBTableView1Contactid: TcxGridDBColumn;
    cxGrid4DBTableView1ContactTypeId: TcxGridDBColumn;
    cxGrid4DBTableView1Main: TcxGridDBColumn;
    cxGrid4DBTableView1AA: TcxGridDBColumn;
    ToolButton16: TToolButton;
    actFromBlackList: TAction;
    cxGrid1DBTableView1CUSTOMERID: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1STREET: TcxGridDBColumn;
    cxGrid1DBTableView1ZIP: TcxGridDBColumn;
    cxGrid1DBTableView1CITY: TcxGridDBColumn;
    cxGrid1DBTableView1AFM: TcxGridDBColumn;
    cxGrid1DBTableView1DOY: TcxGridDBColumn;
    cxGrid1DBTableView1STARTDATE: TcxGridDBColumn;
    cxGrid1DBTableView1AREAID: TcxGridDBColumn;
    cxGrid1DBTableView1LOCATIONID: TcxGridDBColumn;
    cxGrid1DBTableView1CGROUPID: TcxGridDBColumn;
    cxGrid1DBTableView1CCLASSID: TcxGridDBColumn;
    cxGrid1DBTableView1CREDITAMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1INSDT: TcxGridDBColumn;
    cxGrid1DBTableView1UPDDT: TcxGridDBColumn;
    cxGrid1DBTableView1INSUSR: TcxGridDBColumn;
    cxGrid1DBTableView1UPDUSR: TcxGridDBColumn;
    cxGrid1DBTableView1PROFESSION: TcxGridDBColumn;
    cxGrid1DBTableView1BRANCHID: TcxGridDBColumn;
    cxGrid1DBTableView1SAPCODE: TcxGridDBColumn;
    cxGrid1DBTableView1ISACTIVE: TcxGridDBColumn;
    cxGrid1DBTableView1SALESMENID: TcxGridDBColumn;
    cxGrid1DBTableView1DIAKID: TcxGridDBColumn;
    cxGrid1DBTableView1ISTEST: TcxGridDBColumn;
    cxGrid1DBTableView1ISCONS: TcxGridDBColumn;
    cxGrid1DBTableView1AREABID: TcxGridDBColumn;
    cxGrid1DBTableView1DATEPHEND: TcxGridDBColumn;
    cxGrid1DBTableView1DATELOEND: TcxGridDBColumn;
    cxGrid1DBTableView1HASDETAILEMP: TcxGridDBColumn;
    cxGrid1DBTableView1ALLCARDSTOBL: TcxGridDBColumn;
    cxGrid1DBTableView1ALLCARDSTOBLDATE: TcxGridDBColumn;
    cxGrid1DBTableView1ALLCARDSTOBLSYSDATE: TcxGridDBColumn;
    cxGrid1DBTableView1ALLCARDSTOBLUSR: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMEROFF: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMEROFFDATE: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMEROFFSYSDATE: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMEROFFUSR: TcxGridDBColumn;
    cxGrid1DBTableView1CARDHASEMPNAME: TcxGridDBColumn;
    cxGrid1DBTableView1DATEEND: TcxGridDBColumn;
    cxGrid1DBTableView1CompanyTypeId: TcxGridDBColumn;
    cxGrid1DBTableView1GarantieId: TcxGridDBColumn;
    cxGrid1DBTableView1GarantieAmount: TcxGridDBColumn;
    cxGrid1DBTableView1Comments: TcxGridDBColumn;
    DBText1: TDBText;
    Procedure actCloseExecute(Sender: TObject);
    Procedure actInsertExecute(Sender: TObject);
    Procedure actUpdateExecute(Sender: TObject);
    Procedure actOKExecute(Sender: TObject);
    Procedure actCancelExecute(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    Procedure FormShow(Sender: TObject);
    Procedure actUpdateBrowseToolbar(Sender: TObject);
    Procedure actUpdateDataToolbar(Sender: TObject);
    Procedure actDeleteExecute(Sender: TObject);
    Procedure dxDBGrid1DblClick(Sender: TObject);
    procedure actLogicalDeleteExecute(Sender: TObject);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure actBlackListExecute(Sender: TObject);
    procedure actInActiveExecute(Sender: TObject);
    procedure actActiveExecute(Sender: TObject);
    procedure cxGrid4DBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actContEditExecute(Sender: TObject);
    procedure actContactDeleteExecute(Sender: TObject);
    procedure actContactInsertExecute(Sender: TObject);
    procedure actCntEditExecute(Sender: TObject);
    procedure actCntDeleteExecute(Sender: TObject);
    procedure actCntInsertExecute(Sender: TObject);
    procedure actCntPostExecute(Sender: TObject);
    procedure actCntCancelExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure ToolBar1Enter(Sender: TObject);
    procedure ToolBar1Click(Sender: TObject);
    procedure ToolBar2ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure ToolButton1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ToolButton12MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PageControl1Change(Sender: TObject);
    procedure popFilterPopup(Sender: TObject);
    procedure cmbBranchDblClick(Sender: TObject);
    procedure txtQAreaDblClick(Sender: TObject);
    procedure ToolButton18MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure actDispExecute(Sender: TObject);
    procedure actFirstExecute(Sender: TObject);
    procedure actLastExecute(Sender: TObject);
    procedure actPrevExecute(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure Ar1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure actStatExecute(Sender: TObject);
    procedure actInsertPDFExecute(Sender: TObject);
    procedure actDeletePDFExecute(Sender: TObject);
    procedure actViewPdfExecute(Sender: TObject);
    procedure ActListContactsExecute(Action: TBasicAction; var Handled: Boolean);
    procedure ToolButton16Click(Sender: TObject);
    procedure txtAFMExit(Sender: TObject);
    procedure actFromBlackListExecute(Sender: TObject);
  Private
    { Private declarations }
    DM: TCustomerDM;
    FSelectSubData: TCustomAdoDataset;

    PopupDataSet: TDataSet;
    PopupDataSource: TDataSource;
    PopupcxGridDBTableView: TcxGridDBTableView;

    Procedure UpdateRec;
    procedure SetSelectSubData(const Value: TCustomAdoDataset);
    procedure LoadPdfImage(DBImage: TBlobField);
    procedure ShowPdfImage(DBImage: TBlobField);
  Published
    procedure CheckIfThere; override;
    procedure MainStateChange; override;
    procedure SubStateChange(St: String); override;
    procedure MainStateChange0(St: String); override;
  Public
    St: TStringStream;
    property SelectSubData: TCustomAdoDataset read FSelectSubData write SetSelectSubData;
    { Public declarations }
  End;

Implementation

Uses DMain, FMain;

{$R *.dfm}

Procedure TfrmCustomer.FormCreate(Sender: TObject);
Begin
  DM     := TCustomerDM.Create(self);
  PrimDM := DM;
  SecDM  := DM;

  SetDBLookupSort;

  SelectMainData    := TCustomAdoDataset(cxGrid1DBTableView1.DataController.DataSet);
  SelectMainGrid    := cxGrid1DBTableView1;
  SelectMainActList := ActionMainList;

  MainStateChange0('Browse');
  SubStateChange('Browse');

  St := TStringStream.Create;

End;

Procedure TfrmCustomer.FormShow(Sender: TObject);
Begin
  dxPageControl1.ActivePage := tabBrowser;
  // DM.qryBrowser.Open;
End;

Procedure TfrmCustomer.actCloseExecute(Sender: TObject);
Begin
  Close;
End;

procedure TfrmCustomer.actCntCancelExecute(Sender: TObject);
begin
  inherited;
  SelectSubData.Cancel;

  cxGrid2DBTableView1.OptionsSelection.CellSelect := False;
  cxGrid4DBTableView1.OptionsSelection.CellSelect := False;
  cxGrid5DBTableView1.OptionsSelection.CellSelect := False;
  cxGrid2DBTableView1.OptionsData.Editing         := False;
  cxGrid4DBTableView1.OptionsData.Editing         := False;
  cxGrid5DBTableView1.OptionsData.Editing         := False;

  // DM.qryCustomer_Contacts.Cancel;
end;

procedure TfrmCustomer.actCntDeleteExecute(Sender: TObject);
begin
  inherited;
  SelectSubData.Delete;
  // DM.qryCustomer_Contacts.Delete;
end;

procedure TfrmCustomer.actCntEditExecute(Sender: TObject);
begin
  inherited;
  // if Sender is TToolButton then
  // MessageDlg('Sender', mtWarning, [mbOK], 0);

  // MessageDlg(Sender.ClassName, mtWarning, [mbOK], 0);
  SelectSubData.Edit;

  cxGrid2DBTableView1.OptionsSelection.CellSelect := True;
  cxGrid4DBTableView1.OptionsSelection.CellSelect := True;
  cxGrid5DBTableView1.OptionsSelection.CellSelect := True;
  cxGrid2DBTableView1.OptionsData.Editing         := True;
  cxGrid4DBTableView1.OptionsData.Editing         := True;
  cxGrid5DBTableView1.OptionsData.Editing         := True;

  // DM.qryCustomer_Contacts.Edit;
end;

procedure TfrmCustomer.actCntInsertExecute(Sender: TObject);
begin
  inherited;
  SelectSubData.Append;

  cxGrid2DBTableView1.OptionsSelection.CellSelect := True;
  cxGrid4DBTableView1.OptionsSelection.CellSelect := True;
  cxGrid5DBTableView1.OptionsSelection.CellSelect := True;
  cxGrid2DBTableView1.OptionsData.Editing         := True;
  cxGrid4DBTableView1.OptionsData.Editing         := True;
  cxGrid5DBTableView1.OptionsData.Editing         := True;

  // DM.qryCustomer_Contacts.Append;
end;

procedure TfrmCustomer.actCntPostExecute(Sender: TObject);
begin
  inherited;
  try
    SelectSubData.Post;
  except
    MessageDlg('Πρόβλημα στην Ενημέρωση.', mtError, [mbOK], 0);
    SelectSubData.Cancel;
  end;
  // DM.qryCustomer_Contacts.Post;

  cxGrid2DBTableView1.OptionsSelection.CellSelect := False;
  cxGrid4DBTableView1.OptionsSelection.CellSelect := False;
  cxGrid5DBTableView1.OptionsSelection.CellSelect := False;
  cxGrid2DBTableView1.OptionsData.Editing         := False;
  cxGrid4DBTableView1.OptionsData.Editing         := False;
  cxGrid5DBTableView1.OptionsData.Editing         := False;

end;

procedure TfrmCustomer.actContactDeleteExecute(Sender: TObject);
begin
  inherited;
  //
  SelectSubData.Delete
  // DM.qryCustomer_Contacts.Delete;
end;

procedure TfrmCustomer.actContactInsertExecute(Sender: TObject);
begin
  inherited;
  //
  SelectSubData.Append;
  // DM.qryCustomer_Contacts.Append;
end;

procedure TfrmCustomer.actContEditExecute(Sender: TObject);
begin
  inherited;
  //
  SelectSubData.Edit;
  // DM.qryCustomer_Contacts.Edit;
end;

Procedure TfrmCustomer.actInsertExecute(Sender: TObject);
Begin
  dxPageControl1.ActivePage := tabData;
  DM.DoInsert;
  // AllClick(ActionList1);
End;

procedure TfrmCustomer.Action1Execute(Sender: TObject);
begin
  inherited;
  // if SelectSubData.Tag > 0  then
  // AvinKernel(SelectSubData.Tag);
  // if SelectSubData.Tag > 0 then
  // AvinKernel(SelectSubData.Tag);
  if SelectSubData.Name = 'qryCustomer_Contacts' then
    begin
      DM.qryContacts.Active := False;
      frmMain.actSubParamNoWrapExecute('TfrmContacts', 'Id', TCustomerDM(PrimDM).qryCustomer_ContactsContactid.Value);
      DM.qryContacts.Active := True;
    end;
  if SelectSubData.Name = 'qryACard' then
    begin
      frmMain.actSubParamNoWrapExecute('TfrmAcard', 'Acard.AcardId', TCustomerDM(PrimDM).qryACardACARDID.Value);
      DM.qryACard.Active := False;
      DM.qryACard.Active := True;
    end;
end;

Procedure TfrmCustomer.actUpdateExecute(Sender: TObject);
Begin
  if DM.qryBrowserCUSTOMEROFF.AsBoolean = False then
    UpdateRec
  else
    MessageDlg('Εχεί διαγραφεί', mtError, [mbOK], 0);
  AllClick(ActionList1);
End;

procedure TfrmCustomer.Ar1Click(Sender: TObject);
begin
  inherited;
  frmMain.actSubParamNoWrapExecute('TfrmAcard', 'AcardId', TCustomerDM(PrimDM).qryACardACARDID.Value);
end;

Procedure TfrmCustomer.actDeleteExecute(Sender: TObject);
Begin
  If (AskUserNo('Να διαγραφεί;') = True) Then
    Begin
      DM.DoDelete;
      DM.qryBrowser.Close;
      DM.qryBrowser.Open;
      cxGrid1DBTableView1.DataController.DataSet.Refresh;
      AllClick(ActionList1);
    End;
End;

procedure TfrmCustomer.actDispExecute(Sender: TObject);
begin
  inherited;
  if DM.qryBrowser.IsEmpty then
    Exit;

  if dxPageControl1.ActivePage = tabData then
    dxPageControl1.ActivePage := tabBrowser
  else
    dxPageControl1.ActivePage := tabData;
end;

Procedure TfrmCustomer.actOKExecute(Sender: TObject);
var
  X: Integer;
begin
  DM.qryCustomer.Post;

  // DM.qryCustomer.Close;
  // DM.qryCustomer.Open;

  dxPageControl1.ActivePage := tabBrowser;
  AllClick(ActionList1);

  // cxGrid1DBTableView1.DataController.DataSet.Refresh;

  X := DM.CardFindId;
  DM.qryBrowser.Requery();
  DM.qryCustomer.Requery();
  DM.qryBrowser.Locate('CustomerId', X, [])
End;

Procedure TfrmCustomer.actCancelExecute(Sender: TObject);
Begin
  DM.qryCustomer.Cancel;
  dxPageControl1.ActivePage := tabBrowser;
  AllClick(ActionList1);
End;

Procedure TfrmCustomer.actUpdateBrowseToolbar(Sender: TObject);
Begin
  // If (dxPageControl1.ActivePage = tabBrowser) Then (Sender As TAction).Visible := true
  // Else (Sender As TAction).Visible := false;
  If (DM.qryCustomer.State in [dsInsert, dsEdit]) then
    (Sender As TAction).Visible := False
  else
    (Sender As TAction).Visible := True;
End;

Procedure TfrmCustomer.actUpdateDataToolbar(Sender: TObject);
Begin
  // If (dxPageControl1.ActivePage = tabData) Then (Sender As TAction).Visible := true
  // Else (Sender As TAction).Visible := false;
  If (DM.qryCustomer.State in [dsBrowse]) then
    (Sender As TAction).Visible := False
  else
    (Sender As TAction).Visible := True;
End;

Procedure TfrmCustomer.dxDBGrid1DblClick(Sender: TObject);
Begin
  UpdateRec;
End;

Procedure TfrmCustomer.UpdateRec;
Begin
  DM.DoUpdate;
  dxPageControl1.ActivePage := tabData;
End;

procedure TfrmCustomer.actLogicalDeleteExecute(Sender: TObject);
begin
  inherited;
  If (AskUserNo('Να διαγραφεί;') = True) Then
    Begin
      DM.qryCustomer.Edit;
      DM.qryCustomerCUSTOMEROFF.AsBoolean         := True;
      DM.qryCustomerCUSTOMEROFFDATE.AsDateTime    := Now;
      DM.qryCustomerCUSTOMEROFFSYSDATE.AsDateTime := Now;
      DM.qryCustomerCUSTOMEROFFUSR.AsInteger      := gUUserID;
      DM.qryCustomer.Post;

      DM.qryBrowser.Close;
      DM.qryBrowser.Open;
      cxGrid1DBTableView1.DataController.DataSet.Refresh;
    End;
end;

procedure TfrmCustomer.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  BrowseFields(Pedia);
end;

procedure TfrmCustomer.cmbBranchDblClick(Sender: TObject);
begin
  inherited;
  frmMain.actSubParamNoWrapExecute('TfrmBranch')
end;

procedure TfrmCustomer.cxGrid4DBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F1 then
    MessageDlg(cxGridDBTableView1.Controller.FocusedItem.Caption, mtInformation, [mbOK], 0);

  // cxGridDBTableView1.Controller.FocusedItem.Name

end;

procedure TfrmCustomer.PageControl1Change(Sender: TObject);
begin
  inherited;
  if Assigned(SelectSubData) then
    if SelectSubData.State in [dsEdit, dsInsert] then
      SelectSubData.Cancel;
end;

procedure TfrmCustomer.popFilterPopup(Sender: TObject);
begin
  inherited;
  // MessageDlg(popFilter.PopupComponent.Name , mtWarning, [mbOK], 0);
  if popFilter.PopupComponent is TcxGridSite then
    /// /TcxGridDBTableView
    begin
      // !!!!! Απίστευτο Cast για το Quantum Grid TcxGridSite
      PopupDataSet           := TcxGridDBTableView(TcxGridSite(popFilter.PopupComponent).GridView).DataController.DataSet;
      PopupDataSource        := TcxGridDBTableView(TcxGridSite(popFilter.PopupComponent).GridView).DataController.DataSource;
      PopupcxGridDBTableView := TcxGridDBTableView(TcxGridSite(popFilter.PopupComponent).GridView);
    end;
  BrowseFields(Pedia);
end;

procedure TfrmCustomer.SetSelectSubData(const Value: TCustomAdoDataset);
begin
  FSelectSubData := Value;
end;

procedure TfrmCustomer.ToolBar1Click(Sender: TObject);
begin
  inherited;
  MessageDlg('Enter ToolBar ', mtWarning, [mbOK], 0);
end;

procedure TfrmCustomer.ToolBar1Enter(Sender: TObject);
begin
  inherited;
  MessageDlg('Enter ToolBar ', mtWarning, [mbOK], 0);
end;

procedure TfrmCustomer.ToolBar2ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  MessageDlg('Cont PopUp', mtWarning, [mbOK], 0);
end;

procedure TfrmCustomer.ToolButton12MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SelectSubData := DM.qryCostCenter;
end;

procedure TfrmCustomer.ToolButton16Click(Sender: TObject);
begin
  inherited;
  CreateDraftMailStd(TCustomerDM(PrimDM).qryCustomer_ContactsLMial.AsString, TCustomerDM(PrimDM).qryCustomer_ContactsLCont.AsString);
end;

procedure TfrmCustomer.ToolButton18MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SelectSubData := DM.qryACard;
end;

procedure TfrmCustomer.ToolButton1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  SelectSubData := DM.qryCustomer_Contacts;
end;

procedure TfrmCustomer.txtAFMExit(Sender: TObject);
begin
  inherited;
  if DM.qryCustomer.State in [dsEdit, dsInsert] then
    begin
      DM.qryFindAFM.Active                               := False;
      DM.qryFindAFM.Parameters.ParamByName('PAFM').Value := TcxDBTextEdit(Sender).Text;
      DM.qryFindAFM.Active                               := True;
      if DM.qryFindAFM.RecordCount > 0 then
        if Not(DM.qryFindAFMcustomerid.AsInteger = DM.qryCustomerCustomerid.AsInteger) then
          MessageDlg('Υπάρχει το ίδιο AΦΜ σε Πελάτη ' + DM.qryFindAFMName.AsString + ' ' + DM.qryFindAFMcustomerid.AsString, mtError, [mbOK], 0);
    end;
end;

procedure TfrmCustomer.txtQAreaDblClick(Sender: TObject);
var
  PopField: String;
  PopDBLC: TcxDBLookupComboBox;
begin
  inherited;
  if Sender is TcxDBLookupComboBox then
    begin
      PopDBLC := TcxDBLookupComboBox(Sender);
      if Assigned(PopDBLC.Properties.ListField) then
        begin
          PopField := PopDBLC.Properties.ListField.Name;
          frmMain.actSubParamNoWrapPopupExecute(PopField);
          TcxDBLookupComboBox(Sender).Properties.ListSource.DataSet.Refresh;
        end;
    end;
end;

procedure TfrmCustomer.actBlackListExecute(Sender: TObject);
begin
  inherited;
  DM.DoBlackList(DM.qryBrowserCUSTOMERID.AsInteger);
end;

procedure TfrmCustomer.actInActiveExecute(Sender: TObject);
begin
  inherited;
  DM.DoInActive(DM.qryBrowserCUSTOMERID.AsInteger);
end;

procedure TfrmCustomer.actActiveExecute(Sender: TObject);
begin
  inherited;
  DM.DoActive(DM.qryBrowserCUSTOMERID.AsInteger);
end;

procedure TfrmCustomer.CheckIfThere;
begin
  // AllClick(ActionList1);
  AllClick(ActionList1);
end;

procedure TfrmCustomer.MainStateChange;
begin
  // Published
  // To be called from DataModule
  AllClick(ActionList1);
end;

procedure TfrmCustomer.N2Click(Sender: TObject);
begin
  inherited;
  memWS.Close;
  memWS.Open;
  memWS.Insert;
  memWS.Edit;
  memWSComponentName.AsString      := 'memWSFrACardCode';
  memWSComponentValueInt.AsInteger := DM.qryACardACARDID.AsInteger;
  memWS.Post;
  memWS.Insert;
  memWS.Edit;
  memWSComponentName.AsString      := 'memWSToACardCode';
  memWSComponentValueInt.AsInteger := DM.qryACardACARDID.AsInteger;
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

procedure TfrmCustomer.SubStateChange(St: String);
begin
  // Published
  // To be called from DataModule with State Parameter//
  SetState(ActListContacts, St);
  // Append More for Activate/Deactivate Edit Ctrls//
end;

procedure TfrmCustomer.actFirstExecute(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSource.DataSet.First;
end;

procedure TfrmCustomer.actPrevExecute(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Prior;
end;

procedure TfrmCustomer.actStatExecute(Sender: TObject);
begin
  inherited;
  memWS.Close;
  memWS.Open;
  memWS.Insert;
  memWS.Edit;
  memWSComponentName.AsString      := 'memWSFrCustomerId';
  memWSComponentName.AsString      := 'memWSFrCustomerCode';
  memWSComponentValueInt.AsInteger := DM.qryCustomerCustomerid.AsInteger;
  memWS.Post;
  memWS.Insert;
  memWS.Edit;
  memWSComponentName.AsString      := 'memWSToCustomerId';
  memWSComponentName.AsString      := 'memWSToCustomerCode';
  memWSComponentValueInt.AsInteger := DM.qryCustomerCustomerid.AsInteger;
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

procedure TfrmCustomer.actLastExecute(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Last;
end;

procedure TfrmCustomer.ActListContactsExecute(Action: TBasicAction; var Handled: Boolean);
begin
  if DM.qryCustomer.State in [dsEdit, dsInsert] then
    begin
      MessageDlg('Παρακαλώ ολοκληρώστε την καταχώρηση σας.', mtWarning, [mbOK], 0);
      Handled := True;
    end
  else
    inherited;
end;

procedure TfrmCustomer.actNextExecute(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Next;
end;

procedure TfrmCustomer.MainStateChange0(St: String);
begin
  SetState(ActionList1, St);
end;


// procedure TfrmMembers.EnhmForPdf();
// begin
// if DM.AdoQuery1.isEmpty then
// begin
// LblPdf.Caption := 'Δεν υπάρχει καταχωρημένο PDF.';
// end
// else
// begin
// LblPdf.Caption := 'Yπάρχει PDF.'
// end;
// end;
//

//
// procedure TfrmMembers.NextExecute(Sender: TObject);
// begin
// inherited;
// EnhmForPdf();
// end;
//
//
// procedure TfrmMembers.TabSheet1Enter(Sender: TObject);
// var LocalPath:String;
// begin
// inherited;
// if DM.AdoQuery1.isEmpty then
// begin
// LblPdf.Caption := 'Δεν υπάρχει καταχωρημένο PDF.';
/// /      LocalPath := ExtractFilePath(Application.ExeName) + 'Temp\Null.pdf';
/// /      AcroPDF1.LoadFile(LocalPath);
// end
// else
// begin
// LblPdf.Caption := 'Yπάρχει PDF.'
/// /    ShowPdfImage(DM.AdoQuery1PdfCont);
// end;
// LblPdf.Refresh;
// end;
//
// procedure TfrmMembers.TabSheet1Exit(Sender: TObject);
// var LocalPath:String;
// begin
// inherited;
//
// LocalPath := ExtractFilePath(Application.ExeName) + 'Temp\Null.pdf';
// AcroPDF1.LoadFile(LocalPath);
//
// end;
//
// procedure TfrmMembers.PDFExecute(Sender: TObject);
// begin
// inherited;
// if DM.AdoQuery1.isEmpty then
// LoadPdfImage(DM.AdoQuery1PdfCont)
// else
// ShowPdfImage(DM.AdoQuery1PdfCont);
/// /      ShowPdfImage(DM.QRelPdfCustPdfCont);
// end;
//

procedure TfrmCustomer.LoadPdfImage(DBImage: TBlobField);
var
  FName: String;
  a, b: Integer;
begin
  If OpenDialog1.Execute then
    begin
      try
        DM.qryPdf.Append;
        // AcroPdf1.LoadFile(OpenDialog1.FileName);
        TBlobField(DBImage).LoadFromFile(OpenDialog1.FileName);
        a                         := LastDelimiter('\', OpenDialog1.FileName);
        b                         := Length(OpenDialog1.FileName);
        FName                     := RightStr(OpenDialog1.FileName, b - a);
        DM.qryPDFPdfText.AsString := FName;
      finally
        DM.qryPdf.Post;
      end;
    end;
end;

procedure TfrmCustomer.actInsertPDFExecute(Sender: TObject);
begin
  inherited;
  LoadPdfImage(DM.qryPdfPdfCont);
end;

procedure TfrmCustomer.actDeletePDFExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Να γίνει διαγραφή της εγγραφής ;', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    DM.qryPdf.Delete;
end;

procedure TfrmCustomer.actViewPdfExecute(Sender: TObject);
begin
  inherited;
  ShowPdfImage(DM.qryPdfPdfCont);
end;

procedure TfrmCustomer.ShowPdfImage(DBImage: TBlobField);
var
  LJpg: TJpegImage;
  AFormat: Word;
  AData: Cardinal;
  APalette: HPALETTE;
  LocalPath: String;
  fvp: TfrmViewPDF;
begin
  LocalPath := ExtractFilePath(Application.ExeName) + 'TempPdf\123.pdf';

  TBlobField(DBImage).SaveToFile(LocalPath);

  fvp := TfrmViewPDF.Create(self);
  fvp.AcroPDF1.LoadFile(LocalPath);
  fvp.ShowModal;
  fvp.Free;

  // AcroPDF1.LoadFile(LocalPath);
end;

procedure TfrmCustomer.actFromBlackListExecute(Sender: TObject);
var
  frm: TfrmPopup;
  X: Integer;
begin
  inherited;
  frm                     := TfrmPopup.Create(self);
  frm.DataSource1.DataSet := DM.dtsBatchBlEnhm.DataSet;

  frm.ShowModal;
  X := frm.ReturnKey;
  frm.Free;

  if X > 0 then
    DM.DoBlackListReverse(DM.qryBrowserCUSTOMERID.AsInteger, X);
  // MessageDlg(IntToStr(x), mtCustom, [mbOK], 0);

  // DM.BatchRevokeBL
end;

end.
