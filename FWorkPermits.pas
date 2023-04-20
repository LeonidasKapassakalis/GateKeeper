unit FWorkPermits;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DBase, db, AdoDB,
  Menus, FSearch, ActnList, ComCtrls, dbTables, jpeg, ImgList, ToolWin, System.DateUtils,
  FDefineQOrder, FBForm, Common, System.Variants,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, GIFImg,
  Vcl.DBCtrls, cxClasses, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxCommon,
  Vcl.DBLookup, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxDBEdit,
  cxCheckBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, DWorkPermits, cxCalendar, cxSpinEdit,
  rWorkPermitReport, cxLabel, cxDBLabel, cxCalc, cxMemo;

type
  TfrmWorkPermits = class(TForm)
    panBottom: TPanel;
    popFilter: TPopupMenu;
    pmsFilter: TMenuItem;
    pmsCancelFilter: TMenuItem;
    MC1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ActionList1: TActionList;
    Insert: TAction;
    Update: TAction;
    Delete: TAction;
    Post: TAction;
    Cancel: TAction;
    Refresh: TAction;
    MainMenu1: TMainMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Post1: TMenuItem;
    Cancel1: TMenuItem;
    File1: TMenuItem;
    Action1: TMenuItem;
    Before: TAction;
    After: TAction;
    Print: TAction;
    StatusBar1: TStatusBar;
    UpdateActions: TAction;
    N9: TMenuItem;
    N10: TMenuItem;
    MC2: TMenuItem;
    MC3: TMenuItem;
    Pedia: TMenuItem;
    Indexes: TMenuItem;
    FAll: TMenuItem;
    FNone: TMenuItem;
    MC4: TMenuItem;
    Panel1: TPanel;
    ImageList1: TImageList;
    ModalOk: TAction;
    ModalCancel: TAction;
    CmdClose: TAction;
    rrrrr: TMenuItem;
    NCUnderScore: TMenuItem;
    actOutputToExcel: TMenuItem;
    N1: TMenuItem;
    NewGrVariant: TMenuItem;
    GetGrVariant: TMenuItem;
    ClearGrid: TAction;
    ClearGrid1: TMenuItem;
    UpdTableFld: TAction;
    PageControl1: TPageControl;
    tabTable: TTabSheet;
    tabDetail: TTabSheet;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid: TcxGrid;
    FormEdt001: TEdit;
    FormDts: TDataSource;
    N2XML1: TMenuItem;
    PanelDtl: TPanel;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    actReCreateAddEdit: TAction;
    Action21: TMenuItem;
    ComboBox1000: TComboBox;
    Button1000: TButton;
    Label1000: TLabel;
    actPrev: TAction;
    actNext: TAction;
    actFirst: TAction;
    actLast: TAction;
    Panel4: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Panel3: TPanel;
    ToolBar1: TToolBar;
    TBNew: TToolButton;
    TBEdit: TToolButton;
    TBDelete: TToolButton;
    TNMOK: TToolButton;
    TBMCancel: TToolButton;
    TBSave: TToolButton;
    TBCancel: TToolButton;
    actTableDetail: TAction;
    actSelection: TAction;
    Selection1: TMenuItem;
    actCancelSelection: TAction;
    CancelSelection1: TMenuItem;
    Fl0000: TMenuItem;
    actDispSelection: TAction;
    DisplaySelection1: TMenuItem;
    actTableDetail1: TMenuItem;
    actPrintGrid: TMenuItem;
    BestFit1: TMenuItem;
    actUpdateAll: TAction;
    actUpdateAll1: TMenuItem;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel5: TPanel;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    cxGridDBTableView1Id: TcxGridDBColumn;
    cxGridDBTableView1Issue_Date: TcxGridDBColumn;
    cxGridDBTableView1Department_Id: TcxGridDBColumn;
    cxGridDBTableView1Contractor_Id: TcxGridDBColumn;
    cxGridDBTableView1Start_Time: TcxGridDBColumn;
    cxGridDBTableView1End_Time: TcxGridDBColumn;
    cxGridDBTableView1LContractor: TcxGridDBColumn;
    cxGridDBTableView1LDepartment: TcxGridDBColumn;
    Label1: TLabel;
    cxdbtContactWith: TcxDBLookupComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBCheckBoxΑπαιτείται_έλεγχος_αερίων: TcxDBCheckBox;
    cxDBCheckBoxΕύφλεκετα: TcxDBCheckBox;
    cxDBCheckBoxΗ2S: TcxDBCheckBox;
    cxDBCheckBoxCO: TcxDBCheckBox;
    cxDBCheckBoxCO2: TcxDBCheckBox;
    Label2: TLabel;
    cxDBTEΧΕΙΡΙΣΤΗΣ_ΕΛΕΓΧΟY: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTEΚΩΔΙΚΟΣ_ΟΡΓΑΝΟΥ: TcxDBTextEdit;
    cxDBCheckBox13: TcxDBCheckBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBCheckBox18: TcxDBCheckBox;
    cxDBCheckBox19: TcxDBCheckBox;
    cxDBCheckBox20: TcxDBCheckBox;
    cxDBCheckBox21: TcxDBCheckBox;
    cxDBCheckBox22: TcxDBCheckBox;
    cxDBCheckBox23: TcxDBCheckBox;
    cxDBCheckBox24: TcxDBCheckBox;
    Label4: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label6: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label7: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    GroupBoxΙΚΡΙΩΜΑ: TGroupBox;
    cxDBTextEdit7: TcxDBTextEdit;
    Label11: TLabel;
    cxDBCheckBox26: TcxDBCheckBox;
    cxDBCheckBox25: TcxDBCheckBox;
    GroupBoxΕΚΣΚΑΦΗ: TGroupBox;
    cxDBCheckBox28: TcxDBCheckBox;
    cxDBCheckBox29: TcxDBCheckBox;
    cxDBCheckBox30: TcxDBCheckBox;
    cxDBCheckBox31: TcxDBCheckBox;
    Label12: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    GroupBoxΚΛΕΙΣΤΟ_ΧΩΡΟ: TGroupBox;
    cxDBCheckBox39: TcxDBCheckBox;
    cxDBCheckBox40: TcxDBCheckBox;
    cxDBCheckBox41: TcxDBCheckBox;
    cxDBCheckBox42: TcxDBCheckBox;
    cxDBCheckBox43: TcxDBCheckBox;
    cxDBCheckBox44: TcxDBCheckBox;
    cxDBCheckBox45: TcxDBCheckBox;
    cxDBCheckBox46: TcxDBCheckBox;
    cxDBCheckBox47: TcxDBCheckBox;
    cxDBCheckBox48: TcxDBCheckBox;
    cxDBCheckBox49: TcxDBCheckBox;
    Label14: TLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    Label15: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label16: TLabel;
    cxDBSpinEdit4: TcxDBSpinEdit;
    Label17: TLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    Label18: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label25: TLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    Label26: TLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBCheckBox27: TcxDBCheckBox;
    Label27: TLabel;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBCheckBox50: TcxDBCheckBox;
    Label28: TLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    Label31: TLabel;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBCheckBox51: TcxDBCheckBox;
    cxDBCheckBox52: TcxDBCheckBox;
    cxDBCheckBox53: TcxDBCheckBox;
    cxGridDBTableView1_36: TcxGridDBColumn;
    ToolButton1: TToolButton;
    TabSheet7: TTabSheet;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBCheckBox12: TcxDBCheckBox;
    cxDBSpinEdit2: TcxDBSpinEdit;
    GroupBoxΘΕΡΜΗ: TGroupBox;
    Label22: TLabel;
    cxDBCheckBox32: TcxDBCheckBox;
    cxDBTextEdit1: TcxDBTextEdit;
    GroupBoxΡΑΔΙΟΓΡΑΦΙΕΣ: TGroupBox;
    Label23: TLabel;
    cxDBCheckBox33: TcxDBCheckBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    Label9: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label24: TLabel;
    Label29: TLabel;
    GroupBox7: TGroupBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBTextEdit13: TcxDBTextEdit;
    Label10: TLabel;
    Label30: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBLabel1: TcxDBLabel;
    GroupBoxΓΕΡΑΝΟΣ: TGroupBox;
    Label35: TLabel;
    cxDBCheckBox35: TcxDBCheckBox;
    cxDBTextEdit15: TcxDBTextEdit;
    TabSheet8: TTabSheet;
    cxDBTextEdit20: TcxDBTextEdit;
    Label34: TLabel;
    cxDBTextEdit21: TcxDBTextEdit;
    Label33: TLabel;
    cxDBTextEdit23: TcxDBTextEdit;
    Label32: TLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    ToolButton4: TToolButton;
    actMainOKFF: TAction;
    cxGridDBTableView1FullFilled: TcxGridDBColumn;
    actFullFill: TAction;
    ToolButton2: TToolButton;
    actMainStoped: TAction;
    ToolButton3: TToolButton;
    Label36: TLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    Label37: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    Label38: TLabel;
    cxDBTextEdit24: TcxDBTextEdit;
    Label39: TLabel;
    cxDBCheckBox34: TcxDBCheckBox;
    cxDBLabel2: TcxDBLabel;
    cxDBCheckBox36: TcxDBCheckBox;
    TabSheet9: TTabSheet;
    cxDBCheckBox38: TcxDBCheckBox;
    cxDBCheckBox54: TcxDBCheckBox;
    cxDBCheckBox55: TcxDBCheckBox;
    cxDBCheckBox56: TcxDBCheckBox;
    GroupBox1: TGroupBox;
    cxDBCheckBox66: TcxDBCheckBox;
    cxDBCheckBox65: TcxDBCheckBox;
    cxDBCheckBox62: TcxDBCheckBox;
    cxDBCheckBox57: TcxDBCheckBox;
    cxDBCheckBox37: TcxDBCheckBox;
    cxDBCheckBox68: TcxDBCheckBox;
    cxDBCheckBox64: TcxDBCheckBox;
    cxDBCheckBox61: TcxDBCheckBox;
    cxDBCheckBox60: TcxDBCheckBox;
    cxDBCheckBox59: TcxDBCheckBox;
    cxDBCheckBox58: TcxDBCheckBox;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    cxDBCheckBox69: TcxDBCheckBox;
    cxDBTextEdit26: TcxDBTextEdit;
    cxDBTextEdit27: TcxDBTextEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    cxDBCheckBox63: TcxDBCheckBox;
    cxDBCheckBox67: TcxDBCheckBox;
    cxDBCheckBox70: TcxDBCheckBox;
    cxDBCheckBox71: TcxDBCheckBox;
    cxDBCheckBox73: TcxDBCheckBox;
    cxDBCheckBox74: TcxDBCheckBox;
    cxDBCheckBox75: TcxDBCheckBox;
    cxDBCheckBox76: TcxDBCheckBox;
    cxDBTextEdit28: TcxDBTextEdit;
    StaticText3: TStaticText;
    cxDBCheckBox77: TcxDBCheckBox;
    cxDBCheckBox78: TcxDBCheckBox;
    cxDBCheckBox79: TcxDBCheckBox;
    cxDBCheckBox80: TcxDBCheckBox;
    cxDBCheckBox81: TcxDBCheckBox;
    cxDBCheckBox82: TcxDBCheckBox;
    cxDBCheckBox83: TcxDBCheckBox;
    cxDBCheckBox84: TcxDBCheckBox;
    StaticText4: TStaticText;
    cxDBTextEdit29: TcxDBTextEdit;
    Label40: TLabel;
    cxDBMemo1: TcxDBMemo;
    cxDBTextEdit_Αριθμός_Πινακιδίων: TcxDBTextEdit;
    cxDBTextEdit_Αριθμός_Σχεδίου: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxDBCheckBoxΕύφλεκετα_Value: TcxDBTextEdit;
    cxDBCheckBoxCO_Value: TcxDBTextEdit;
    cxDBCheckBoxCO2_Value: TcxDBTextEdit;
    cxDBCheckBoxΗ2S_Value: TcxDBTextEdit;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    actCopy: TAction;
    actCopy1: TMenuItem;
    cxGridDBTableView1Exoplismow: TcxGridDBColumn;
    N7: TMenuItem;
    N8: TMenuItem;
    actLast1: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    cxGridDBTableView1Visible_Till: TcxGridDBColumn;
    cxGridDBTableView1Deleted: TcxGridDBColumn;
    Label41: TLabel;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    cxGridDBTableView1WorkStopped: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure pmsFilterClick(Sender: TObject);
    procedure pmsCancelFilterClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure InsertExecute(Sender: TObject);
    procedure UpdateExecute(Sender: TObject);
    procedure PostExecute(Sender: TObject);
    procedure CancelExecute(Sender: TObject);
    procedure RefreshExecute(Sender: TObject);
    procedure AfterExecute(Sender: TObject);
    procedure BeforeExecute(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
    procedure ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
    procedure N10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BrowseFields(var LeoMenu: TMenuItem);
    procedure NLeoClick(Sender: TObject);
    procedure FNoneClick(Sender: TObject);
    procedure GridColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
    procedure ModalOkExecute(Sender: TObject);
    procedure ModalCancelExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CmdCloseExecute(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure GridEnter(Sender: TObject);
    procedure actOutputToExcelClick(Sender: TObject);
    procedure GridTitleClick(Column: TColumn);
    procedure GridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure NewGrVariantClick(Sender: TObject);
    procedure GetGrVariantClick(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure ClearGridExecute(Sender: TObject);
    procedure UpdTableFldExecute(Sender: TObject);
    procedure Export1Click(Sender: TObject);
    procedure FormEdt001DblClick(Sender: TObject);
    procedure FormDtsStateChange(Sender: TObject);
    procedure N2XML1Click(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure actReCreateAddEditExecute(Sender: TObject);
    procedure cxGridDBTableView1ColumnHeaderClick(Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure ComboBox1000DblClick(Sender: TObject);
    procedure Button1000Click(Sender: TObject);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure popFilterPopup(Sender: TObject);
    procedure actPrevExecute(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actFirstExecute(Sender: TObject);
    procedure actLastExecute(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure actTableDetailExecute(Sender: TObject);
    procedure LeoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actSelectCriteriaExecute(Sender: TObject);
    procedure actCancelSelectionExecute(Sender: TObject);
    procedure actDispSelectionExecute(Sender: TObject);
    procedure actPrintGridClick(Sender: TObject);
    procedure BestFit1Click(Sender: TObject);
    procedure actUpdateAllExecute(Sender: TObject);
    procedure cxDBCheckBoxΕύφλεκεταPropertiesChange(Sender: TObject);
    procedure cxDBCheckBoxΗ2SPropertiesChange(Sender: TObject);
    procedure cxDBCheckBoxCOPropertiesChange(Sender: TObject);
    procedure cxDBCheckBoxCO2PropertiesChange(Sender: TObject);
    procedure actMainOKFFExecute(Sender: TObject);
    procedure actFullFillExecute(Sender: TObject);
    procedure actMainStopedExecute(Sender: TObject);
    procedure cxDBCheckBox1Exit(Sender: TObject);
    procedure EnableDisableGroupBox(GroupBox: TGroupBox; Enabled: Boolean);
    procedure cxDBCheckBox2Exit(Sender: TObject);
    procedure cxDBCheckBox3Exit(Sender: TObject);
    procedure cxDBCheckBox4Exit(Sender: TObject);
    procedure cxDBCheckBox5Exit(Sender: TObject);
    procedure cxDBCheckBox6Exit(Sender: TObject);
    procedure cxDBCheckBox20Click(Sender: TObject);
    procedure actCopyExecute(Sender: TObject);
  private
    PDM: TDMBASE;
    CurTop: Integer;
    FModal: Boolean;
    FCreated: Boolean;
    FIndexAct: Boolean;
    FGDataSet: TDataSet;
    FltGrid: TObject;
    FAddEditForm: TFormClass;
    CreatedAddEdit: Boolean;
    FormDataSetSql: string;
    FormDataSetFilter: string;
    function AskDelete: Boolean;
    procedure SetGDataSet(const Value: TDataSet);
    procedure SetAddEditForm(const Value: TFormClass);
    function CreateEdit(Owner: TPanel; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
    function CreateMemo(Owner: TPanel; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
    function CreateLCB(Owner: TPanel; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String; Field: TField): TComponent;
    function CreateCheckBx(Owner: TPanel; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;

  protected
    FDM: TDMWorkPermits;
    FilSelected: Boolean;
    FilFrom: String;
    FilTo: String;
    FilField: String;
    FilTField: String;
    PFormName: String;
    PFormID: Integer;
    PWithOutDM: Boolean;
    PDataModule: TDMBASE;
    PDataSource: String;
    function FindWorkEnd(SDateTime: TDateTime): TDateTime;
    function FindTillVisible(EDateTime: TDateTime): TDateTime;
    function CreateDataModule: TDMBASE; virtual; abstract;
    function CreateDataModuleWithOut(DModule: TFormClass): TDMBASE;
    procedure CreateAddEditForm; // virtual ; abstract ;
    procedure CheckBeforeDelete; virtual; abstract;
  public
    GifImage: TGIFImage;
    StopedState : Boolean;

    PopupDataSet: TDataSet;
    PopupDataSource: TDataSource;
    PopupcxGridDBTableView: TcxGridDBTableView;

    constructor CreateModal(aowner: TComponent);
    constructor CreateSecurity(aowner: TComponent; FormID: Integer);
    constructor CreateSecurityModal(aowner: TComponent; FormID: Integer);
    constructor CreateSecurityN(aowner: TComponent; FormID: Integer);
    constructor CreateSecurityWithOut(aowner: TComponent; FormID: Integer; FormName: String; DataModule: TDMBASE; DataSource: String; DisFormName: String);

    procedure FormSetDispNo(aowner: TComponent; FormID: Integer; FormName: String; dc: TFormClass; DataSource, DisFormName: String);
    procedure SetState(const LeoCategory: String);
    procedure PlusState(const LeoCategory: String);
    procedure SetStatusText(Text: String; Index: Integer);
    procedure ReleaseLock;
    procedure OpenSpecific(KeyId: Integer; KeyName: string; KeyDataSource: String = '');

    procedure GotoRec(id: Integer);

    property DM: TDMWorkPermits read FDM;
    property Created: Boolean read FCreated write FCreated;
    property IndexAct: Boolean read FIndexAct write FIndexAct;
    property GDataSet: TDataSet read FGDataSet write SetGDataSet;
    // property AddEditForm : TForm read FAddEditForm write SetAddEditForm;
    property AddEditForm: TFormClass read FAddEditForm write SetAddEditForm;
    property FilteredGrid: TObject read FltGrid write FltGrid;
  end;

implementation

uses FFilterEn, FFilterEn2, RSubParams, DMain, Fmain;

{$R *.DFM}

constructor TfrmWorkPermits.CreateModal(aowner: TComponent);
begin
  FModal   := True;
  Created  := False;
  IndexAct := False;
  Create(aowner);
  SetGDataSet(cxGridDBTableView1.DataController.DataSource.Dataset);
end;

constructor TfrmWorkPermits.CreateSecurity(aowner: TComponent; FormID: Integer);
begin
  PFormID  := FormID;
  Created  := False;
  IndexAct := False;
  { TODO : Clear }
  // if DMMain.FindFormName(PFormID, PFormName) then
  Create(aowner)
  { TODO : Clear }
  // else
  // exit;
  // SetGDataSet(Grid.DataSource.Dataset);
end;

constructor TfrmWorkPermits.CreateSecurityN(aowner: TComponent; FormID: Integer);
begin
  PFormID  := FormID;
  Created  := False;
  IndexAct := False;
  { TODO : Clear }
  // if DMMain.FindFormName(PFormID, PFormName) then
  Create(aowner)
  // else
  // exit;
end;

constructor TfrmWorkPermits.CreateSecurityWithOut(aowner: TComponent; FormID: Integer; FormName: String; DataModule: TDMBASE; DataSource: String; DisFormName: String);
begin
  PFormID     := FormID;
  PFormName   := FormName;
  Created     := False;
  IndexAct    := False;
  PWithOutDM  := True;
  PDataModule := DataModule;
  PDataSource := DataSource;

  { TODO : Clear }
  // if DMMain.FindFormName(PFormID, PFormName) then
  Create(aowner)
  // else
  // exit;
  // SetGDataSet(Grid.DataSource.Dataset);
  // self.Caption := DisFormName;
end;

procedure TfrmWorkPermits.GotoRec(id: Integer);
begin
  DM.qryWork_Permit.Active := False;
  DM.qryWork_Permit.Sql.Text := 'SELECT * FROM Work_Permit Where Id = :PId';
  DM.qryWork_Permit.Parameters.ParamByName('PId').Value := id;
  DM.qryWork_Permit.Active := True;
end;

procedure TfrmWorkPermits.OpenSpecific(KeyId: Integer; KeyName: String; KeyDataSource: String = '');
var
  DataSource: TDataSource;
  Ds: TCustomADODataSet;
  TempVar: Variant;
  x: Integer;
begin
  if KeyName = '' then
    Exit;

  DataSource := TDataSource(DM.FindComponent(PDataSource));
  for x      := 0 to DM.ComponentCount - 1 do
    if DM.Components[x] is TCustomADODataSet then
      if TCustomADODataSet(DM.Components[x]).Name = DataSource.Dataset.Name then
        Ds := TCustomADODataSet(DM.Components[x]);

  if Assigned(Ds) then
    begin
      TempVar := KeyId;
      try
        Ds.Locate(KeyName, TempVar, []);
        CreateAddEditForm;
        PageControl1.ActivePage := tabDetail;
      except
        // !!!
      end;
    end;
end;

procedure TfrmWorkPermits.cxDBCheckBox1Exit(Sender: TObject);
begin
EnableDisableGroupBox(GroupBoxΙΚΡΙΩΜΑ,TcxDBCheckBox(Sender).Checked);
end;

procedure TfrmWorkPermits.cxDBCheckBox20Click(Sender: TObject);
begin
cxDBTextEdit_Αριθμός_Σχεδίου.enabled := TcxDBCheckBox(Sender).Checked;
cxLabel6.enabled := TcxDBCheckBox(Sender).Checked;
cxDBTextEdit_Αριθμός_Πινακιδίων.enabled := TcxDBCheckBox(Sender).Checked;
cxLabel5.enabled := TcxDBCheckBox(Sender).Checked;
if Not TcxDBCheckBox(Sender).Checked then
   begin
        cxDBTextEdit_Αριθμός_Σχεδίου.EditValue := Null;
        cxDBTextEdit_Αριθμός_Πινακιδίων.EditValue := Null;
   end;
end;

procedure TfrmWorkPermits.cxDBCheckBox2Exit(Sender: TObject);
begin
EnableDisableGroupBox(GroupBoxΕΚΣΚΑΦΗ,TcxDBCheckBox(Sender).Checked);
end;

procedure TfrmWorkPermits.cxDBCheckBox3Exit(Sender: TObject);
begin
EnableDisableGroupBox(GroupBoxΓΕΡΑΝΟΣ,TcxDBCheckBox(Sender).Checked);
end;

procedure TfrmWorkPermits.cxDBCheckBox4Exit(Sender: TObject);
begin
EnableDisableGroupBox(GroupBoxΚΛΕΙΣΤΟ_ΧΩΡΟ,TcxDBCheckBox(Sender).Checked);
end;

procedure TfrmWorkPermits.cxDBCheckBox5Exit(Sender: TObject);
begin
EnableDisableGroupBox(GroupBoxΘΕΡΜΗ,TcxDBCheckBox(Sender).Checked);
end;

procedure TfrmWorkPermits.cxDBCheckBox6Exit(Sender: TObject);
begin
EnableDisableGroupBox(GroupBoxΡΑΔΙΟΓΡΑΦΙΕΣ,TcxDBCheckBox(Sender).Checked);
end;

procedure TfrmWorkPermits.EnableDisableGroupBox(GroupBox: TGroupBox; Enabled: Boolean);
var Index : integer;
Isenabled : Boolean;
begin
   GroupBox.Enabled := Enabled;
   Isenabled := Enabled;
   for Index := 0 to GroupBox.Controlcount-1 do
       GroupBox.controls[Index].Enabled := Isenabled;
   GroupBox.Repaint;
end;



procedure TfrmWorkPermits.cxDBCheckBoxCO2PropertiesChange(Sender: TObject);
begin
  if Created then
    if cxDBCheckBoxCO2.Checked then
      begin
        cxDBCheckBoxCO2_Value.Enabled := True;
      end
    else
      begin
        cxDBCheckBoxCO2_Value.Enabled   := False;
        cxDBCheckBoxCO2_Value.EditValue := Null;
      end;

end;

procedure TfrmWorkPermits.cxDBCheckBoxCOPropertiesChange(Sender: TObject);
begin
  if Created then
    if cxDBCheckBoxCO.Checked then
      begin
        cxDBCheckBoxCO_Value.Enabled := True;
      end
    else
      begin
        cxDBCheckBoxCO_Value.Enabled   := False;
        cxDBCheckBoxCO_Value.EditValue := Null;
      end;
end;

procedure TfrmWorkPermits.cxDBCheckBoxΕύφλεκεταPropertiesChange(Sender: TObject);
begin
  inherited;
  if Created then
    if cxDBCheckBoxΕύφλεκετα.Checked then
      begin
        cxDBCheckBoxΕύφλεκετα_Value.Enabled := True;
      end
    else
      begin
        cxDBCheckBoxΕύφλεκετα_Value.Enabled   := False;
        cxDBCheckBoxΕύφλεκετα_Value.EditValue := Null;
      end;
end;

procedure TfrmWorkPermits.cxDBCheckBoxΗ2SPropertiesChange(Sender: TObject);
begin
  if Created then
    if cxDBCheckBoxΗ2S.Checked then
      begin
        cxDBCheckBoxΗ2S_Value.Enabled := True;
      end
    else
      begin
        cxDBCheckBoxΗ2S_Value.Enabled   := False;
        cxDBCheckBoxΗ2S_Value.EditValue := Null;
      end;
end;

procedure TfrmWorkPermits.cxGridDBTableView1ColumnHeaderClick(Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  cxGridDBTableView1.OptionsBehavior.IncSearch     := True;
  cxGridDBTableView1.OptionsBehavior.IncSearchItem := AColumn;
end;

procedure TfrmWorkPermits.cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  HoldColor: TColor;
  Fld1, Fld2: TField;
  V: Variant;
  C: TcxGridDBColumn;
begin
  inherited;
  // !!!
  // C := (Sender as TcxCustomGridTableView).FindItemByName('Deleted');

  HoldColor := ACanvas.Brush.Color;
  Fld1      := cxGridDBTableView1.DataController.DataSource.Dataset.FindField('Deleted');
  Fld2      := cxGridDBTableView1.DataController.DataSource.Dataset.FindField('Inactive');

  if (Not(Fld1 = Nil) And Fld1.asBoolean) then
    begin
      ACanvas.Brush.Color := clRed;
      // Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      ACanvas.Brush.Color := HoldColor;
    end
  else if (Not(Fld2 = Nil) And Fld2.asBoolean) then
    begin
      ACanvas.Brush.Color := clGreen;
      // Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      ACanvas.Brush.Color := HoldColor;
    end
  // else
  // Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TfrmWorkPermits.cxGridDBTableView1DblClick(Sender: TObject);
begin
  if Not cxGridDBTableView1.Controller.IsFilterRowFocused then
    if cxGridDBTableView1.DataController.DataSource.Dataset.State = dsBrowse then
      UpdateExecute(Sender);

  // cxGridDBTableView1.OptionsBehavior.IncSearch := True;
  // cxGridDBTableView1.OptionsBehavior.IncSearchItem := cxGridDBTableView1.GetColumnByFieldName('Descr');

  // cxGridDBTableView1.OptionsData.Editing         := True;
  // cxGridDBTableView1.OptionsSelection.CellSelect := True;

end;

procedure TfrmWorkPermits.cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  Label1000.Caption := cxGridDBTableView1.Controller.IncSearchingText;
end;

constructor TfrmWorkPermits.CreateSecurityModal(aowner: TComponent; FormID: Integer);
begin
  FModal   := True;
  PFormID  := FormID;
  Created  := False;
  IndexAct := False;
  { TODO : Clear }
  // if DMMain.FindFormName(FormID, PFormName) then
  Create(aowner)
  // else
  // exit;
end;

procedure TfrmWorkPermits.FormSetDispNo(aowner: TComponent; FormID: Integer; FormName: String; dc: TFormClass; DataSource: String; DisFormName: String);
var
  a: TComponent;
  LLeft, LWidth, LTop, LHeight, State: Integer;
  x: Integer;
begin
  //
  PFormID    := FormID;
  PFormName  := FormName;
  Created    := False;
  IndexAct   := False;
  PWithOutDM := True;
  // PDataModule:= DataModule;
  PDataSource          := DataSource;
  panBottom.BevelOuter := bvNone;
  Self.Caption         := DisFormName;

  cxGridDBTableView1.DataController.CreateAllItems;

  frmMain.ReadIniSub(PFormName, LLeft, LTop, LWidth, LHeight, State);
  if LWidth > 0 then
    SetBounds(LLeft, LTop, LWidth, LHeight);
  cxGridDBTableView1.RestoreFromIniFile(frmMain.Ini.FileName + '.txt', False, False, [gsoUseFilter, gsoUseSummary], PFormName);
  CreatedAddEdit := False;

  for x := 0 to cxGridDBTableView1.ColumnCount - 1 do
    ComboBox1000.Items.Add(cxGridDBTableView1.Columns[x].DataBinding.FieldName)

end;

procedure TfrmWorkPermits.FormCreate(Sender: TObject);
var
  LLeft, LWidth, LTop, LHeight, State, Sb01: Integer;
  Filter, Index, DataSource, Le1, dsl: String;
  a: TObject;
  fld: TField;
  // ehc:TDBGridColumnsEh;
  Ds: TDataSet;
begin
  Created := False;

  FDM := TDMWorkPermits.Create(Self);

  inherited;
  // !!!

  // raise Exception.Create('Must Be Cleared');

  panBottom.BevelOuter := bvNone;
  { TODO : Clear }
  frmMain.ReadIniSub(PFormName, LLeft, LTop, LWidth, LHeight, State);
  // EhOut
  // frmMain.ReadGrid(PFormName,Grid,Filter,Index,DataSource);
  { TODO : Clear }
  // frmMain.SetDisplayedForm(self);
  // if LWidth > 0 then
  // SetBounds(LLeft, LTop, LWidth, LHeight);
  { TODO : Clear }
  // self.Font       := frmMain.AppFonts[5];
  // self.Color      := frmMain.AppColors[5];
  // panBottom.Color := frmMain.AppColors[5];
  // panBottom.Font  := frmMain.AppFonts[5];
  // Grid.Font       := frmMain.AppFonts[6];
  // Grid.Color      := frmMain.AppColors[6];

  Created := True;

  PageControl1.ActivePage := tabDetail;
  // cxGridDBTableView1.DataController.CreateAllItems;
  frmMain.ReadIniSub(PFormName, LLeft, LTop, LWidth, LHeight, State);
  cxGridDBTableView1.RestoreFromIniFile(frmMain.Ini.FileName + '.txt', False, False, [gsoUseFilter, gsoUseSummary], PFormName);
  CreatedAddEdit := False;

end;

function TfrmWorkPermits.AskDelete: Boolean;
begin
  Result := ((MessageDlg('Να γίνει διαγραφή;', mtConfirmation, [mbYes, mbNo], 0)) = mrYes);
end;

procedure TfrmWorkPermits.pmsFilterClick(Sender: TObject);
var
  frm: TfrmFilterEn2;
begin
  inherited;
  // !!!
  raise Exception.Create('Not for DevExpress');
end;

procedure TfrmWorkPermits.popFilterPopup(Sender: TObject);
begin
  // MessageDlg(popFilter.PopupComponent.Name , mtWarning, [mbOK], 0);
  if popFilter.PopupComponent is TcxGridSite then
    /// /TcxGridDBTableView
    begin
      // !!!!! Απίστευτο Cast για το Quantum Grid TcxGridSite
      PopupDataSet           := TcxGridDBTableView(TcxGridSite(popFilter.PopupComponent).GridView).DataController.Dataset;
      PopupDataSource        := TcxGridDBTableView(TcxGridSite(popFilter.PopupComponent).GridView).DataController.DataSource;
      PopupcxGridDBTableView := TcxGridDBTableView(TcxGridSite(popFilter.PopupComponent).GridView);
    end;
  BrowseFields(Pedia);
end;

procedure TfrmWorkPermits.pmsCancelFilterClick(Sender: TObject);
var
  i: Integer;
begin
  // !!!
  raise Exception.Create('Not for DevExpress');

  cxGridDBTableView1.DataController.DataSource.Dataset.Filtered := False;
  cxGridDBTableView1.DataController.DataSource.Dataset.Filter := '';

  // if Grid is TDBGridEh then
  // for i := 0 to Grid.Columns.Count - 1 do
  // Grid.Columns[i].STFilter.Clear;
end;

procedure TfrmWorkPermits.N2Click(Sender: TObject);
// var
// frm: TfrmSearch;
begin
  // !!!
  raise Exception.Create('Not for DevExpress');

  // frm := TfrmSearch.CreateWithParam(self,TDBGrid(popFilter.PopupComponent), DM);
  // frm.ShowModal;
  // frm.Free;
end;

procedure TfrmWorkPermits.N2XML1Click(Sender: TObject);
begin
  OutputXMLdx(cxGridDBTableView1.DataController.Dataset);
end;

procedure TfrmWorkPermits.N3Click(Sender: TObject);
begin
  // !!!
  raise Exception.Create('Not for DevExpress');
  // if popFilter.PopupComponent is TDBGrid then
  // MessageDlg('Το ενεργό Φίλτρο είναι : ' + TDBGrid(popFilter.PopupComponent).DataSource.Dataset.Filter, mtInformation, [mbOK], 0);
  // if popFilter.PopupComponent is TDBGridEh then
  // MessageDlg('Το ενεργό Φίλτρο είναι : ' + TDBGridEh(popFilter.PopupComponent).DataSource.Dataset.Filter, mtInformation, [mbOK], 0);
end;

procedure TfrmWorkPermits.FormActivate(Sender: TObject);
begin
  // TPicture.RegisterFileFormat('GIF', sGIFImageFile, TGIFImage);
  // GifImage := TGIFImage.Create();
  // // try
  // // MessageDlg(ExtractFileDir(Application.ExeName), mtWarning, [mbOK], 0);
  // GifImage.LoadFromFile(ExtractFileDir(Application.ExeName) + '\' + '0ss.gif');
  // // GifImage.AnimateLoop := glEnabled;
  // // GifImage.AnimationSpeed := 1000;
  // GifImage.Animate := True;
  // Image1.Picture.Assign(GifImage);
  // Image1.Repaint;

  SetState('Before');
  // if (Created and not(IndexAct)) then
  // begin
  BrowseFields(Pedia);
  PageControl1.ActivePage := tabTable;
  // IndexAct := True;
  // end;
end;

procedure TfrmWorkPermits.SetState(const LeoCategory: String);
var
  i: Integer;
begin
  for i := 0 to ActionList1.ActionCount - 1 do
    begin
      if ActionList1.Actions[i].Category = LeoCategory then
        begin
          TCustomAction(ActionList1.Actions[i]).Visible := True;
          TCustomAction(ActionList1.Actions[i]).Enabled := True;
        end
      else
        begin
          TCustomAction(ActionList1.Actions[i]).Visible := False;
          TCustomAction(ActionList1.Actions[i]).Enabled := False;
        end;
      { TODO : Clear }
      if ((LoginGroup <> 0) And (ActionList1.Actions[i].Tag = 9999)) then
        TCustomAction(ActionList1.Actions[i]).Visible := False;
    end;
  if (FModal and (LeoCategory = 'Before')) then
    PlusState('Modal');
end;

procedure TfrmWorkPermits.PlusState(const LeoCategory: String);
var
  i: Integer;
begin
  for i := 0 to ActionList1.ActionCount - 1 do
    if ActionList1.Actions[i].Category = LeoCategory then
      begin
        TCustomAction(ActionList1.Actions[i]).Visible := True;
        TCustomAction(ActionList1.Actions[i]).Enabled := True;
      end;
end;

procedure TfrmWorkPermits.DeleteExecute(Sender: TObject);
begin
  try
    if cxGridDBTableView1.DataController.DataSource.Dataset.FieldByName('Id').asInteger = 0 then
      begin
        MessageDlg('Δεν μπορεί να διαγραφή η εγγραφή Zero!!!.', mtError, [mbOK], 0);
        Exit;
      end;
  except
  end;
  if AskDelete then
    try
      cxGridDBTableView1.DataController.DataSource.Dataset.FindField('Deleted');
      cxGridDBTableView1.DataController.DataSource.Dataset.Edit;
      cxGridDBTableView1.DataController.DataSource.Dataset.FieldByName('Deleted').asBoolean := True;
      cxGridDBTableView1.DataController.DataSource.Dataset.FieldByName('DelUsr').asInteger := LoginId;
      cxGridDBTableView1.DataController.DataSource.Dataset.FieldByName('DelDT').AsDateTime := Now();
      cxGridDBTableView1.DataController.DataSource.Dataset.Post;
    except
      cxGridDBTableView1.DataController.DataSource.Dataset.Delete;
    end;
end;

procedure TfrmWorkPermits.FormEdt001DblClick(Sender: TObject);
begin
  FormEdt001.Text := TAdoQuery(cxGridDBTableView1.DataController.DataSource.Dataset).SQL.Text;
  cxGridDBTableView1.DataController.DataSource.Dataset.Active := True;
  FormEdt001.Text := cxGridDBTableView1.DataController.DataSource.Dataset.Filter;
end;

procedure TfrmWorkPermits.Export1Click(Sender: TObject);
begin
  // SaveDBGridEhToExportFile(TDBGridEhExportAsUnicodeText,Grid,'c:\temp\file1.txt',True);
  // SaveDBGridEhToExportFile(TDBGridEhExportAsXLS,Grid,'c:\temp\file1.xls',True);
end;

procedure TfrmWorkPermits.Image1DblClick(Sender: TObject);
begin
  TGIFImage(Image1.Picture.Graphic).Animate := Not TGIFImage(Image1.Picture.Graphic).Animate;
end;

procedure TfrmWorkPermits.InsertExecute(Sender: TObject);
var
  x, z: Integer;
  tf: TField;
begin
  DM.qryWork_Permit.Append;
  DM.qryWork_PermitIssue_Date.AsDateTime := Now();
  DM.qryWork_PermitStart_Time.AsDateTime := Now();
  DM.qryWork_PermitEnd_Time.AsDateTime   := FindWorkEnd(DM.qryWork_PermitStart_Time.AsDateTime);


  SetState('After');
  PageControl1.ActivePage := tabDetail;
  PageControl2.ActivePage := TabSheet1;

  x     := DM.qryWork_Permit.Fields.Count;
  for z := 0 to x-1 do
    begin
      tf := DM.qryWork_Permit.Fields[z];
      if tf is TBooleanField then
        tf.Value := False;
    end;
  DM.qryWork_PermitΕγκρίση_ΤΑ_Υπερ.Clear;

  Self.StopedState := False;
  EnableDisableGroupBox(GroupBoxΓΕΡΑΝΟΣ,False);
  EnableDisableGroupBox(GroupBoxΕΚΣΚΑΦΗ,False);
  EnableDisableGroupBox(GroupBoxΘΕΡΜΗ,False);
  EnableDisableGroupBox(GroupBoxΙΚΡΙΩΜΑ,False);
  EnableDisableGroupBox(GroupBoxΚΛΕΙΣΤΟ_ΧΩΡΟ,False);
  EnableDisableGroupBox(GroupBoxΡΑΔΙΟΓΡΑΦΙΕΣ,False);
end;

procedure TfrmWorkPermits.UpdateExecute(Sender: TObject);
var
  LeoT: TAdoTable;
  x: Integer;
begin
  if DM.qryWork_PermitFullFilled.asBoolean then
    begin
      MessageDlg('Έχει γίνει ολοκλήρωση.' + #13 + #10 + 'Δεν μπορεί να γίνει κάποια μεταβολή.', mtWarning, [mbOK], 0);
      PageControl1.ActivePage := tabDetail;
      PageControl2.ActivePage := TabSheet1;
    end
  else
    if DM.qryWork_PermitDeleted.asBoolean then
      begin
          MessageDlg('Έχει γίνει διαγραφή.' + #13 + #10 + 'Δεν μπορεί να γίνει κάποια μεταβολή.', mtWarning, [mbOK], 0);
          PageControl1.ActivePage := tabDetail;
                PageControl2.ActivePage := TabSheet1;
      end
  else
    begin
      DM.qryWork_Permit.Edit;
      PageControl1.ActivePage := tabDetail;
      PageControl2.ActivePage := TabSheet1;
      SetState('After');
    end;
  Self.StopedState := False;

EnableDisableGroupBox(GroupBoxΙΚΡΙΩΜΑ,cxDBCheckBox1.Checked);
EnableDisableGroupBox(GroupBoxΕΚΣΚΑΦΗ,cxDBCheckBox2.Checked);
EnableDisableGroupBox(GroupBoxΓΕΡΑΝΟΣ,cxDBCheckBox3.Checked);
EnableDisableGroupBox(GroupBoxΚΛΕΙΣΤΟ_ΧΩΡΟ,cxDBCheckBox4.Checked);
EnableDisableGroupBox(GroupBoxΘΕΡΜΗ,cxDBCheckBox5.Checked);
EnableDisableGroupBox(GroupBoxΡΑΔΙΟΓΡΑΦΙΕΣ,cxDBCheckBox6.Checked);

end;

procedure TfrmWorkPermits.UpdTableFldExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  // Must change for fields

  { TODO : Clear }
  { DMMain.QFindFormID.Active                               := False;
    DMMain.QFindFormID.Parameters.ParamByName('Name').Value := 'T' + self.Name;
    DMMain.QFindFormID.Active                               := True;
    if Not DMMain.QFindFormID.IsEmpty then
    begin
    for i := 0 to ActionList1.ActionCount - 1 do
    begin
    DMMain.QUpdateFormAction.Parameters.ParamByName('ID').Value :=
    CreateKey('FormAction');
    DMMain.QUpdateFormAction.Parameters.ParamByName('Form').Value :=
    DMMain.QFindFormIDID.asInteger;
    DMMain.QUpdateFormAction.Parameters.ParamByName('Action').Value :=
    TCustomAction(ActionList1.Actions[i]).Name;
    DMMain.QUpdateFormAction.Parameters.ParamByName('Text').Value :=
    TCustomAction(ActionList1.Actions[i]).Caption;
    DMMain.QUpdateFormAction.Parameters.ParamByName('SubParam')
    .Value := 0;
    try
    DMMain.QUpdateFormAction.ExecSql;
    except
    SetStatusText('Εχει ήδη ενημερωθεί η ενέργεια ' +
    TCustomAction(ActionList1.Actions[i]).Name, 0);
    end;
    end;
    DMMain.QUpdateFormAction.Parameters.ParamByName('ID').Value :=
    CreateKey('FormAction');
    DMMain.QUpdateFormAction.Parameters.ParamByName('Form').Value :=
    DMMain.QFindFormIDID.asInteger;
    DMMain.QUpdateFormAction.Parameters.ParamByName('Action').Value := 'All';
    DMMain.QUpdateFormAction.Parameters.ParamByName('Text').Value := 'All';
    DMMain.QUpdateFormAction.Parameters.ParamByName('SubParam').Value := 0;
    try
    DMMain.QUpdateFormAction.ExecSql;
    except
    SetStatusText('Εχει ήδη ενημερωθεί η ενέργεια ' + 'ALL', 0);
    end;
    end; }
end;

procedure TfrmWorkPermits.PostExecute(Sender: TObject);
begin
  if DM.qryWork_PermitDepartment_Id.IsNull then
  begin
     cxDBLookupComboBox1.SetFocus();
     MessageDlg('Παρακαλώ καταχωρίστε τιμή στο πεδίο '+#13+#10+'ΕΚΔΙΔΕΤΑΙ ΑΠΟ ΤΟ ΤΜΗΜΑ', mtError, [mbOK], 0);
     exit;
  end;
  if DM.qryWork_PermitContractor_Id.IsNull then
  begin
     cxdbtContactWith.SetFocus();
     MessageDlg('Παρακαλώ καταχωρίστε τιμή στο πεδίο '+#13+#10+'ΕΡΓΟΛΑΒΟΣ ΠΟΥ ΘΑ ΕΚΤΕΛΕΣΕΙ ΤΗΝ ΕΡΓΑΣΙΑ ', mtError, [mbOK], 0);
     exit;
  end;
  if ((DM.qryWork_PermitΜονάδα_Εργασίας.IsNull) or (DM.qryWork_PermitΜονάδα_Εργασίας.AsString < ' ')) then
  begin
     cxDBTextEdit5.SetFocus();
     MessageDlg('Παρακαλώ καταχωρίστε τιμή στο πεδίο'+#13+#10+' Μονάδα/Περιοχή Εργασίας.', mtError, [mbOK], 0);
     exit;
  end;


  if DM.qryWork_PermitStart_Time.IsNull then
    begin
      MessageDlg('Παρακαλώ Καταχωρήστε Ημερπμηνία ένάρξης.', mtError, [mbOK], 0);
      Exit;
    end;
  if DM.qryWork_PermitEnd_Time.IsNull then
    begin
      MessageDlg('Παρακαλώ Καταχωρήστε Ημερπμηνία λήξης.', mtError, [mbOK], 0);
      Exit;
    end;
  if DM.qryWork_PermitStart_Time.AsDateTime > DM.qryWork_PermitEnd_Time.AsDateTime then
    begin
      MessageDlg('Ημερπμηνία ένάρξης > Ημερπμηνία λήξης.', mtError, [mbOK], 0);
      Exit;
    end;
  if System.DateUtils.MinutesBetween(DM.qryWork_PermitEnd_Time.AsDateTime, DM.qryWork_PermitStart_Time.AsDateTime) > 9 * 60 then
    begin
      if MessageDlg('Απαιτείται Εγκρίση Τεχνικού Ασφαλίας για την Υπερωρία.' + #13 + #10 + 'Έχει εγκριθεί;', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
           DM.qryWork_PermitΕγκρίση_ΤΑ_Υπερ.AsBoolean := False;
        end
      else
        begin
           DM.qryWork_PermitΕγκρίση_ΤΑ_Υπερ.AsBoolean := True;
        end
    end
  else
    begin
       DM.qryWork_PermitΕγκρίση_ΤΑ_Υπερ.Clear;
    end;


  if Self.StopedState = True then
  begin
    if DM.qryWork_PermitΗ_ΕΡΓΑΣΙΑ_ΔΙΕΚΟΠΗ_ΑΠΟ_ΤΟΝ.IsNull or DM.qryWork_PermitΗ_ΕΡΓΑΣΙΑ_ΔΙΕΚΟΠΗ_ΩΡΑ.IsNull or DM.qryWork_PermitΛΟΓΟΣ_ΑΝΑΚΛΗΣΗΣ.IsNull then
    begin
      MessageDlg('Παρακαλώ καταχωρήστε ολά τα πεδία.', mtError, [mbOK], 0);
      Exit;
    end
    else
    begin
        DM.qryWork_Permit.FieldByName('FullFilled').asBoolean := True;
        DM.qryWork_Permit.FieldByName('FullFilledCancel').asBoolean := True;
        DM.qryWork_Permit.FieldByName('FullFilledDT').AsDateTime := Now;
        DM.qryWork_Permit.FieldByName('FullFilledUsr').asInteger := LoginId;
    end;
  end;

  DM.qryWork_PermitVisible_Till.AsDateTime := FindTillVisible(DM.qryWork_PermitEnd_Time.AsDateTime);

  DM.qryWork_Permit.Post;
  SetState('Before');
end;

procedure TfrmWorkPermits.CancelExecute(Sender: TObject);
begin
  DM.qryWork_Permit.Cancel;
  SetState('Before');
end;

procedure TfrmWorkPermits.ClearGridExecute(Sender: TObject);
begin
  cxGridDBTableView1.DataController.DataSource.Dataset.Active := False;
  cxGridDBTableView1.DataController.DataSource.Dataset.Active := True;
  cxGridDBTableView1.DataController.CreateAllItems;
end;

procedure TfrmWorkPermits.RefreshExecute(Sender: TObject);
begin
  cxGridDBTableView1.DataController.DataSource.Dataset.Refresh;
end;

procedure TfrmWorkPermits.AfterExecute(Sender: TObject);
begin
  //
end;

procedure TfrmWorkPermits.BeforeExecute(Sender: TObject);
begin
  //
end;

procedure TfrmWorkPermits.BestFit1Click(Sender: TObject);
var
  tmp: TObject;
begin
  if popFilter.PopupComponent is TcxGridSite then
    begin
      tmp := TcxGridDBTableView(TcxGridSite(popFilter.PopupComponent).GridView);
      TcxGridDBTableView(PopupcxGridDBTableView).OptionsBehavior.BestFitMaxRecordCount := 10;
      TcxGridDBTableView(PopupcxGridDBTableView).ApplyBestFit();
    end;
end;

procedure TfrmWorkPermits.PrintExecute(Sender: TObject);
var
  rpt: TrptWorkPermitReport;
begin
  try
    rpt                                               := TrptWorkPermitReport.Create(Self);
    rpt.AdoQuery1.Active                              := False;
    rpt.AdoQuery1.Parameters.ParamByName('PId').Value := cxGridDBTableView1.DataController.DataSource.Dataset.FieldByName('Id').asInteger;
    rpt.AdoQuery1.Active                              := True;
    rpt.Preview;
  finally
    rpt.Free;

    // dxComponentPrinter1Link1.Preview();
  end;
end;

procedure TfrmWorkPermits.actExcelExecute(Sender: TObject);
begin
  Output2XLSdx(cxGridDBTableView1);
end;

procedure TfrmWorkPermits.actReCreateAddEditExecute(Sender: TObject);
var
  x, y: Integer;
begin
  y     := PanelDtl.ComponentCount - 1;
  for x := 0 to y do
    PanelDtl.Components[0].Free;
  CreatedAddEdit := False;
  CurTop         := 0;
end;

procedure TfrmWorkPermits.actTableDetailExecute(Sender: TObject);
begin
  if PageControl1.ActivePage = tabTable then
    PageControl1.ActivePage := tabDetail
  else
    PageControl1.ActivePage := tabTable;
end;

procedure TfrmWorkPermits.actUpdateAllExecute(Sender: TObject);
begin
  cxGridDBTableView1.DataController.DataSource.OnStateChange := nil;
  cxGridDBTableView1.DataController.DataSource.Dataset.First;
  repeat
    cxGridDBTableView1.DataController.DataSource.Dataset.Edit;
    cxGridDBTableView1.DataController.DataSource.Dataset.Post;
    cxGridDBTableView1.DataController.DataSource.Dataset.Next;
  until cxGridDBTableView1.DataController.DataSource.Dataset.Eof;
  Self.CloseModal;
end;

procedure TfrmWorkPermits.actFirstExecute(Sender: TObject);
begin
  cxGridDBTableView1.DataController.DataSource.Dataset.First;
end;

procedure TfrmWorkPermits.actFullFillExecute(Sender: TObject);
begin
  if DM.qryWork_PermitFullFilled.asBoolean then
    if MessageDlg('Θα γίνει αναίρεση της ολοκλήρωσης.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        DM.qryWork_Permit.Edit;
        DM.qryWork_Permit.FieldByName('FullFilled').asBoolean := False;
        DM.qryWork_Permit.FieldByName('FullFilledCancel').asBoolean := False;
        DM.qryWork_Permit.Post;
      end;
end;

procedure TfrmWorkPermits.actMainOKFFExecute(Sender: TObject);
var
  ErrorTxt: string;
begin
  inherited;
  if DM.qryWork_PermitFullFilled.asBoolean = False or DM.qryWork_PermitFullFilled.IsNull then
    begin
      try
        DM.qryWork_Permit.FieldByName('FullFilled').asBoolean := True;
        DM.qryWork_Permit.FieldByName('FullFilledDT').AsDateTime := Now;
        DM.qryWork_Permit.FieldByName('FullFilledUsr').asInteger := LoginId;
        DM.qryWork_Permit.Post;
        MessageDlg('Καταχωρήθηκε η Ολοκλήρωση.', mtInformation, [mbOK], 0);
      except
        on E: Exception do
          MessageDlg('Πρόβλημα ' + E.Message, mtWarning, [mbOK], 0);
      end;
    end
  else
    begin
      MessageDlg(ErrorTxt, mtError, [mbOK], 0);
    end;
  SetState('Before');
  PageControl1.ActivePage := tabTable;
end;

procedure TfrmWorkPermits.actMainStopedExecute(Sender: TObject);
begin
  PageControl2.ActivePage := TabSheet8;
  Self.StopedState := True;
  DM.qryWork_PermitWorkStopped.AsBoolean := True;
  DM.qryWork_PermitWorkStoppedUsr.AsInteger := LoginId;
  DM.qryWork_PermitWorkStoppedDT.AsDateTime := Now();
end;

procedure TfrmWorkPermits.ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
begin
  { TODO : Clear }
  if TAction(Action).Tag < 10 then
    begin
      if DMMain.SearchSecurity(TAction(Action).Name, PFormID, 0) then
        SetStatusText(TAction(Action).Hint, 0)
      else
        begin
          SetStatusText('Μη Επιτρεπτή Ενέργεια! ' + TAction(Action).Name, 0);
          Handled := True;
        end;
    end;
  if cxGridDBTableView1.Controller.IsFilterRowFocused then
    Handled := True;
end;

procedure TfrmWorkPermits.SetStatusText(Text: String; Index: Integer);
begin
  StatusBar1.Panels[Index].Text := Text;
end;

procedure TfrmWorkPermits.N10Click(Sender: TObject);
var
  i, x, y: Integer;
  AL: TActionList;
begin
  inherited;
  try
    DMMain.QFindFormID.Active := False;
    DMMain.QFindFormID.Parameters.ParamByName('PName').Value := 'T' + Self.Name;
    DMMain.QFindFormID.Active := True;
  except

  end;

  for x := 0 to Self.ComponentCount - 1 do
    if Self.Components[x] is TActionList then
      y := x;
  AL    := TActionList(Self.Components[y]);
  if True then // DM.FindFormID.IsEmpty then
    begin
      for i := 0 to AL.ActionCount - 1 do
        begin
          DMMain.QUpdateFormAction.Parameters.ParamByName('PFormId').Value := FormID;
          DMMain.QUpdateFormAction.Parameters.ParamByName('PAction').Value := TCustomAction(AL.Actions[i]).Name;
          DMMain.QUpdateFormAction.Parameters.ParamByName('PText').Value := TCustomAction(AL.Actions[i]).Caption;
          if Not(TCustomAction(AL.Actions[i]).Name = 'UpdCommandAct') then
            try
              DMMain.QUpdateFormAction.ExecSql;
            except
              on E: Exception do
                MessageDlg('Error ' + E.Message, mtError, [mbOK], 0);
            end;
        end;
      DMMain.QUpdateFormAction.Parameters.ParamByName('PFormId').Value := FormID;
      DMMain.QUpdateFormAction.Parameters.ParamByName('PAction').Value := 'All';
      DMMain.QUpdateFormAction.Parameters.ParamByName('PText').Value := 'All';
      try
        DMMain.QUpdateFormAction.ExecSql;
      except
        MessageDlg('Error', mtError, [mbOK], 0);
      end;
    end;
end;



// var
// i: Integer;
// begin
// inherited;
// { TODO : Clear }
// { DMMain.QFindFormID.Active                               := False;
// DMMain.QFindFormID.Parameters.ParamByName('Name').Value := 'T' + self.Name;
// DMMain.QFindFormID.Active                               := True;
// if Not DMMain.QFindFormID.IsEmpty then
// begin
// for i := 0 to ActionList1.ActionCount - 1 do
// begin
// DMMain.QUpdateFormAction.Parameters.ParamByName('ID').Value :=
// CreateKey('FormAction');
// DMMain.QUpdateFormAction.Parameters.ParamByName('Form').Value :=
// DMMain.QFindFormIDID.asInteger;
// DMMain.QUpdateFormAction.Parameters.ParamByName('Action').Value :=
// TCustomAction(ActionList1.Actions[i]).Name;
// DMMain.QUpdateFormAction.Parameters.ParamByName('Text').Value :=
// TCustomAction(ActionList1.Actions[i]).Caption;
// DMMain.QUpdateFormAction.Parameters.ParamByName('SubParam')
// .Value := 0;
// try
// DMMain.QUpdateFormAction.ExecSql;
// except
// SetStatusText('Εχει ήδη ενημερωθεί η ενέργεια ' +
// TCustomAction(ActionList1.Actions[i]).Name, 0);
// end;
// end;
// DMMain.QUpdateFormAction.Parameters.ParamByName('ID').Value :=
// CreateKey('FormAction');
// DMMain.QUpdateFormAction.Parameters.ParamByName('Form').Value :=
// DMMain.QFindFormIDID.asInteger;
// DMMain.QUpdateFormAction.Parameters.ParamByName('Action').Value := 'All';
// DMMain.QUpdateFormAction.Parameters.ParamByName('Text').Value := 'All';
// DMMain.QUpdateFormAction.Parameters.ParamByName('SubParam').Value := 0;
// try
// DMMain.QUpdateFormAction.ExecSql;
// except
// SetStatusText('Εχει ήδη ενημερωθεί η ενέργεια ' + 'ALL', 0);
// end;
// end; }
// end;

procedure TfrmWorkPermits.FormDestroy(Sender: TObject);
begin
  cxGridDBTableView1.StoreToIniFile(frmMain.Ini.FileName + '.txt', True, [gsoUseFilter, gsoUseSummary], PFormName);
  frmMain.WriteIniSub(PFormName, Self.Left, Self.Top, Self.Width, Self.Height, 0);
  GifImage.Free;
  TPicture.UnregisterGraphicClass(TGIFImage);
end;

procedure TfrmWorkPermits.FormDtsStateChange(Sender: TObject);
var
  x: Integer;
  st: String;
begin
  if TDataSource(Sender).State in [dsEdit, dsInsert] then
    begin
      cxGridDBTableView1.OptionsData.Editing         := True;
      cxGridDBTableView1.OptionsSelection.CellSelect := True;
      SetState('After');
    end
  else
    begin
      cxGridDBTableView1.OptionsSelection.CellSelect := False;
      cxGridDBTableView1.OptionsData.Editing         := False;
      SetState('Before');
    end;
end;

procedure TfrmWorkPermits.NLeoClick(Sender: TObject);
begin
  If (Sender as TMenuItem).Checked then
    begin
      cxGridDBTableView1.Columns[((Sender as TMenuItem).Tag)].Visible := False;
      (Sender as TMenuItem).Checked := False;
    end
  else
    begin
      cxGridDBTableView1.Columns[((Sender as TMenuItem).Tag)].Visible := True;
      (Sender as TMenuItem).Checked := True;
    end
end;

procedure TfrmWorkPermits.FAllClick(Sender: TObject);
var
  i: Integer;
begin
  For i := 0 to cxGridDBTableView1.ColumnCount - 1 do
    begin
      cxGridDBTableView1.Columns[i].Visible := True;
      Pedia.Items[i + 3].Checked            := True;
    end
end;

procedure TfrmWorkPermits.FNoneClick(Sender: TObject);
var
  i: Integer;
begin
  For i := 0 to cxGridDBTableView1.ColumnCount - 1 do
    begin
      cxGridDBTableView1.Columns[i].Visible := False;
      Pedia.Items[i + 3].Checked            := False;
    end;
end;

procedure TfrmWorkPermits.FormShow(Sender: TObject);
begin
  // Created := True;
end;

procedure TfrmWorkPermits.BrowseFields(var LeoMenu: TMenuItem);
Var
  i: Integer;
  NewMenu: TMenuItem;
begin
  LeoMenu.Clear;

  NewMenu         := TMenuItem.Create(Self);
  NewMenu.Caption := 'Όλα';
  NewMenu.OnClick := FAllClick;
  LeoMenu.Add(NewMenu);

  NewMenu         := TMenuItem.Create(Self);
  NewMenu.Caption := 'Κανένα';
  NewMenu.OnClick := FNoneClick;
  LeoMenu.Add(NewMenu);

  NewMenu         := TMenuItem.Create(Self);
  NewMenu.Caption := '-';
  LeoMenu.Add(NewMenu);

  For i := 0 to (cxGridDBTableView1.ColumnCount - 1) do
    begin
      NewMenu         := TMenuItem.Create(Self);
      NewMenu.Caption := cxGridDBTableView1.Columns[i].Caption;
      NewMenu.Tag     := i;
      NewMenu.Checked := cxGridDBTableView1.Columns[i].Visible;
      NewMenu.OnClick := NLeoClick;
      LeoMenu.Add(NewMenu);
    end;
end;

procedure TfrmWorkPermits.Button1000Click(Sender: TObject);
var
  st: String;
begin
  st                                               := ComboBox1000.Items[ComboBox1000.ItemIndex];
  cxGridDBTableView1.OptionsBehavior.IncSearch     := False;
  cxGridDBTableView1.OptionsBehavior.IncSearchItem := cxGridDBTableView1.GetColumnByFieldName(st);
  cxGridDBTableView1.OptionsBehavior.IncSearch     := True;
  Button1000.Caption                               := st;
  Self.ActiveControl                               := cxGrid;
end;

procedure TfrmWorkPermits.GridColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
Var
  SLeo: String;
  NewMenu: TMenuItem;
  i: Integer;
begin
  NewMenu         := TMenuItem.Create(Self);
  NewMenu.Caption := cxGridDBTableView1.Columns[ToIndex].Caption;
  NewMenu.Tag     := ToIndex + 3;
  NewMenu.Checked := Pedia.Items[FromIndex + 3].Checked;
  NewMenu.OnClick := NLeoClick;
  Pedia.Insert(ToIndex + 3, NewMenu);
  Pedia.Delete(FromIndex + 1 + 3);
  for i                := 3 to Pedia.Count - 3 do
    Pedia.Items[i].Tag := i - 3;
end;

procedure TfrmWorkPermits.SetAddEditForm(const Value: TFormClass);
begin
  FAddEditForm := Value;
end;

procedure TfrmWorkPermits.SetGDataSet(const Value: TDataSet);
begin
  FGDataSet := Value;
end;

procedure TfrmWorkPermits.ModalOkExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmWorkPermits.ModalCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmWorkPermits.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // if Grid.DataSource.DataSet.State in [dsEdit] then
  // DMMain.ReleaseLock(LoginName,Grid.DataSource.DataSet,PFormName);
end;

procedure TfrmWorkPermits.ReleaseLock;
begin
  // if Not (Grid.DataSource = nil) then
  // DMMain.ReleaseLock(LoginName,Grid.DataSource.DataSet,PFormName);
end;

procedure TfrmWorkPermits.CmdCloseExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmWorkPermits.ComboBox1000DblClick(Sender: TObject);
var
  st: String;
begin
  st                                               := TComboBox(Sender).SelText;
  cxGridDBTableView1.OptionsBehavior.IncSearch     := True;
  cxGridDBTableView1.OptionsBehavior.IncSearchItem := cxGridDBTableView1.GetColumnByFieldName(st);
  Self.ActiveControl                               := cxGrid;
end;

procedure TfrmWorkPermits.GridDblClick(Sender: TObject);
begin
  if cxGridDBTableView1.DataController.DataSource.Dataset.State = dsBrowse then
    UpdateExecute(Sender);
end;

procedure TfrmWorkPermits.GridEnter(Sender: TObject);
begin
  Self.FilteredGrid := Self.cxGrid;
end;

procedure TfrmWorkPermits.actOutputToExcelClick(Sender: TObject);
begin
  Output2XLSdx(cxGridDBTableView1);
end;

procedure TfrmWorkPermits.actPrevExecute(Sender: TObject);
begin
  cxGridDBTableView1.DataController.DataSource.Dataset.Prior;
end;

procedure TfrmWorkPermits.actPrintGridClick(Sender: TObject);
var
  rep: TrptSubParams;
begin
  rep := TrptSubParams.CreateFromDev(Self, PopupcxGridDBTableView, Self.Caption);
  try
    rep.Preview;
  finally;
    rep.Free;
  end;
end;

procedure TfrmWorkPermits.actLastExecute(Sender: TObject);
begin
  cxGridDBTableView1.DataController.DataSource.Dataset.Last;
end;

procedure TfrmWorkPermits.actNextExecute(Sender: TObject);
begin
  cxGridDBTableView1.DataController.DataSource.Dataset.Next;
end;

procedure TfrmWorkPermits.GridTitleClick(Column: TColumn);
var
  SLeo, LeoS, TempField: String;
  LeoColumn: TColumn;
  i, x, z: Integer;
  LeoV, LeoV1: Variant;
begin
  inherited;
  TempField := Column.FieldName;
  LeoColumn := Column;
  If (TDBGrid(FilteredGrid)).DataSource.Dataset.FieldByName(TempField).Lookup then
    Exit;
  If (TDBGrid(FilteredGrid)).DataSource.Dataset.FieldByName(TempField).Calculated then
    Exit;

  { if (TDBGrid(FilteredGrid)).DataSource.DataSet is TTable then
    begin
    TTable((TDBGrid(FilteredGrid)).DataSource.DataSet).IndexFieldNames:=FindFieldsForIndex(PediaIdx);
    end; }
  if (TDBGrid(FilteredGrid)).DataSource.Dataset is TAdoTable then
    begin
      TAdoTable((TDBGrid(FilteredGrid)).DataSource.Dataset).IndexFieldNames := Column.FieldName;
    end;

  {
    if (TDBGrid(FilteredGrid)).DataSource.DataSet is TADOQuery then
    begin
    if TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).FieldByName(TempField).Tag = 0 then
    begin
    x:=TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Parameters.Count;
    if x > 0 then
    begin
    LeoV1:=VarArrayCreate([0, x],VarVariant);
    LeoV:=VarArrayCreate([0, x],VarVariant);
    SaveAdoParameters(LeoV,LeoV1,x,TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet));
    end;
    LeoS:=TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text;
    if Pos('^',Column.Title.Caption) > 0 then
    begin
    //Remove Order
    //             Column.Title.Caption:=AnsiReplaceStr(Column.Title.Caption,'^','*');
    ClearMarks;
    LeoColumn.Title.Caption:=LeoColumn.Title.Caption+'*';
    TempField :=TempField + ' Desc ';
    end
    else
    if Pos('*',Column.Title.Caption) > 0 then
    begin
    //Remove Order
    //               Column.Title.Caption:=AnsiReplaceStr(Column.Title.Caption,'*','^');
    ClearMarks;
    Column.Title.Caption:=Column.Title.Caption+'^';
    TempField :=TempField;
    end
    else
    begin
    //Remove Order
    ClearMarks;
    Column.Title.Caption:=Column.Title.Caption+'^';
    TempField :=TempField;
    end;

    if Pos('Order By ', LeoS ) = 0 then
    begin
    LeoS:=AnsiReplaceStr(LeoS,';',' ');
    LeoS:=LeoS+' Order By '+TempField;
    TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Clear;
    TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Add(LeoS);
    TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=False;
    end
    else
    begin
    LeoS:=TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text;
    i:=length(LeoS);
    z:=Pos('Order By ', LeoS );
    if z > 0 then
    System.Delete(LeoS,z,(i-z));
    LeoS:=LeoS+' Order By '+TempField;
    TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text := LeoS;
    TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=False;
    end;
    if x > 0 then
    begin
    ReturnAdoParameters(LeoV,LeoV1,x,TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet));
    end;
    TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=True;
    end;
    end; }
end;

procedure TfrmWorkPermits.GridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  HoldColor: TColor;
  Fld1, Fld2: TField;
begin
  inherited;
  // EhOut
  { HoldColor:=Grid.Canvas.Brush.Color;
    Fld1:=Grid.DataSource.DataSet.FindField('Deleted');
    Fld2:=Grid.DataSource.DataSet.FindField('Inactive');

    if (Not(Fld1=Nil) And Fld1.asBoolean) then
    begin
    Grid.Canvas.Brush.Color:=clRed;
    Grid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    Grid.Canvas.Brush.Color:=HoldColor;
    end
    else if (Not(Fld2=Nil) And Fld2.asBoolean) then
    begin
    Grid.Canvas.Brush.Color:=clGreen;
    Grid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    Grid.Canvas.Brush.Color:=HoldColor;
    end
    else
    Grid.DefaultDrawColumnCell(Rect,DataCol,Column,State); }
end;

procedure TfrmWorkPermits.NewGrVariantClick(Sender: TObject);
var
  st: TStringStream;
begin
  // PopupcxGridDBTableView
  // SelectMainGrid
  if Assigned(PopupcxGridDBTableView) then
    if PopupcxGridDBTableView is TcxGridDBTableView then
      begin
        st := TStringStream.Create;
        TcxGridDBTableView(PopupcxGridDBTableView).StoreToStream(st);
        // DMMain.NewVariantCx(Self,Self.ClassName,St);
        DMMain.NewVariantCx(Self, Self.Caption, st);
        st.Free;
      end;
end;

procedure TfrmWorkPermits.GetGrVariantClick(Sender: TObject);
var
  st: TStringStream;
begin
  if Assigned(PopupcxGridDBTableView) then
    if PopupcxGridDBTableView is TcxGridDBTableView then
      begin
        st := TStringStream.Create;
        // DMMain.GetVariantCx(Self,Self.ClassName,St);
        DMMain.GetVariantCx(Self, Self.Caption, st);
        TcxGridDBTableView(PopupcxGridDBTableView).RestoreFromStream(st);
        st.Free;
      end;
end;

function TfrmWorkPermits.FindTillVisible(EDateTime: TDateTime): TDateTime;
var Year,Month,Day,Hour,EHour,EDay,EMin,ESec:Integer;
    TillDateTime : TDateTime;
begin
  EHour := HourOf(EDateTime);
  EMin := MinuteOf(EDateTime);
  ESec := SecondOf(EDateTime);

  TillDateTime := TDateTime(EDateTime);
//  TillDateTime := IncDay(TillDateTime,7);
//  TillDateTime := IncHour(TillDateTime,-EHour);
//  TillDateTime := IncMinute(TillDateTime,-EMin);
//  TillDateTime := IncSecond(TillDateTime,-ESec);

  TillDateTime := IncHour(TillDateTime,frmMain.tillplushour);
  Result := TillDateTime;
end;


function TfrmWorkPermits.FindWorkEnd(SDateTime: TDateTime): TDateTime;
var Year,Month,Day,Hour,EHour,EDay,EMin,ESec:Integer;
    EDateTime : TDateTime;
begin
  Hour := HourOf(SDateTime);
  EMin := MinuteOf(SDateTime);
  ESec := SecondOf(SDateTime);
  Year := YearOf(SDateTime);
  Month := MonthOf(SDateTime);
  Day := DayOf(SDateTime);

  if ((Hour >= 1) and (Hour < 15))  then
     begin
     EHour := 15 - Hour;
     EDay := 0;
     end
  else
    if ((Hour >= 15) and (Hour < 22))  then
       begin
         EDay := 0;
         EHour := 23 - Hour;
       end
    else
       begin
         EDay := 1;
         EHour := 7 - Hour;
       end;

  EDateTime := TDateTime(SDateTime);
  EDateTime := IncHour(EDateTime,EHour);
  EDateTime := IncMinute(EDateTime,-EMin);
  EDateTime := IncSecond(EDateTime,-ESec);
  if EDay > 0 then
    EDateTime := IncDay(EDateTime,1);

  Result := EDateTime;
end;


function TfrmWorkPermits.CreateDataModuleWithOut(DModule: TFormClass): TDMBASE;
begin
  Result := TDMBASE(DModule.Create(Self));
end;

procedure TfrmWorkPermits.CreateAddEditForm;
var
  n, ii, LWidth, LIndex: Integer;
  NField, NNField, LName: String;
  LField: TFieldClass;
  LFieldItem: TField;
begin
  for n := 0 to cxGridDBTableView1.ColumnCount - 1 do
    begin
      if Assigned(cxGridDBTableView1.Columns[n].DataBinding.Field) then
        begin
          if Not(cxGridDBTableView1.Columns[n].DataBinding.Field.Calculated) then
            if cxGridDBTableView1.GetColumnByFieldName(cxGridDBTableView1.Columns[n].DataBinding.FieldName).Visible then
              begin
                if Not(cxGridDBTableView1.Columns[n].DataBinding.Field.Lookup) then
                  begin
                    NField := cxGridDBTableView1.Columns[n].DataBinding.FieldName;
                    LIndex := cxGridDBTableView1.DataController.DataSource.Dataset.FieldByName(NField).Index;
                    LName  := cxGridDBTableView1.DataController.DataSource.Dataset.Fields[LIndex].DisplayName;
                    // LWidth:= FGrid.DataSource.DataSet.Fields[LIndex].DisplayWidth;
                    LWidth := cxGridDBTableView1.Columns[n].Width;
                    LWidth := cxGridDBTableView1.Columns[n].Width * 2;
                    if LWidth < 10 then
                      // Size is Messured in Characters so Size * 10 = Logical Width
                      LWidth := cxGridDBTableView1.DataController.DataSource.Dataset.Fields[LIndex].Size * 10;
                    // FieldDefs Have other Index  from FieldByName.Index
                    for ii := 0 to (cxGridDBTableView1.DataController.DataSource.Dataset.FieldDefs.Count - 1) do
                      begin
                        if cxGridDBTableView1.DataController.DataSource.Dataset.FieldDefs[ii].Name = NField then
                          LField := cxGridDBTableView1.DataController.DataSource.Dataset.FieldDefs[ii].FieldClass;
                      end;
                    NNField := NField;
                    System.Delete(NField, Pos('.', NField), 1);
                    if LField = TBooleanField then
                      CreateCheckBx(PanelDtl, NField, LName, LWidth, LField, NNField)
                    else if LField = TMemoField then
                      CreateMemo(PanelDtl, NField, LName, LWidth, LField, NNField)
                    else
                      CreateEdit(PanelDtl, NField, LName, LWidth, LField, NNField);
                  end
                else
                  begin
                    NField := cxGridDBTableView1.Columns[n].DataBinding.FieldName;
                    LIndex := cxGridDBTableView1.DataController.DataSource.Dataset.FieldByName(NField).Index;
                    LName  := cxGridDBTableView1.DataController.DataSource.Dataset.Fields[LIndex].DisplayName;
                    // LWidth:= FGrid.DataSource.DataSet.Fields[LIndex].DisplayWidth;
                    LWidth := cxGridDBTableView1.Columns[n].Width;
                    if LWidth < 10 then
                      // Size is Messured in Characters so Size * 10 = Logical Width
                      LWidth := cxGridDBTableView1.DataController.DataSource.Dataset.Fields[LIndex].Size * 10;
                    // LField:= FGrid.DataSource.DataSet.FieldDefs[LIndex].FieldClass;
                    for ii := 0 to (cxGridDBTableView1.DataController.DataSource.Dataset.FieldDefs.Count - 1) do
                      begin
                        if cxGridDBTableView1.DataController.DataSource.Dataset.FieldDefs[ii].Name = NField then
                          LField := cxGridDBTableView1.DataController.DataSource.Dataset.FieldDefs[ii].FieldClass;
                      end;
                    LFieldItem := cxGridDBTableView1.DataController.DataSource.Dataset.FieldByName(NField);
                    NNField    := NField;
                    System.Delete(NField, Pos('.', NField), 1);
                    CreateLCB(PanelDtl, NField, LName, LWidth, LField, NNField, LFieldItem);
                  end;
              end;
        end;
    end;
  CreatedAddEdit := True;
end;

function TfrmWorkPermits.CreateCheckBx(Owner: TPanel; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
var
  LEdit: TDBCheckBox;
  LLabel: TLabel;
begin

  CurTop           := CurTop + 20;
  LEdit            := TDBCheckBox.Create(Owner);
  LEdit.DataSource := cxGridDBTableView1.DataController.DataSource;
  LEdit.DataField  := NNField;
  LEdit.Name       := 'EdtF' + Name;
  LEdit.Hint       := NNField;
  LEdit.Parent     := Owner;
  // LEdit.Parent := self;
  LEdit.Top     := CurTop;
  LEdit.Left    := 150;
  LEdit.Tag     := 1;
  LEdit.Caption := '';
  // LEdit.AllowGrayed := True;
  if Width > 200 then
    LEdit.Width := 190
  else
    LEdit.Width := Width;

  LEdit.Visible := True;

  LLabel        := TLabel.Create(Owner);
  LLabel.Name   := 'Lab' + Name;
  LLabel.Parent := Owner;
  // LLabel.Parent  := self;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
  // Self.Height    := CurTop + 120;
end;

function TfrmWorkPermits.CreateEdit(Owner: TPanel; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
var
  LEdit: TDBEdit;
  LLabel: TLabel;
begin
  CurTop           := CurTop + 20;
  LEdit            := TDBEdit.Create(Owner);
  LEdit.Name       := 'Edt' + Name;
  LEdit.Text       := '';
  LEdit.DataSource := cxGridDBTableView1.DataController.DataSource;
  LEdit.DataField  := NNField;
  LEdit.Hint       := NNField;
  LEdit.Parent     := Owner;
  // LEdit.Parent := self;
  LEdit.Top  := CurTop;
  LEdit.Left := 150;
  LEdit.Tag  := 1;
  if Width > 200 then
    LEdit.Width := 190
  else
    LEdit.Width := Width;
  if Width < 20 then
    LEdit.Width := 190;

  LEdit.Visible := True;

  // if LField = TDateTimeField then
  // LEdit.OnDblClick := EditDateEnter;

  LLabel        := TLabel.Create(Owner);
  LLabel.Name   := 'Lab' + Name;
  LLabel.Parent := Owner;
  // LLabel.Parent  := self;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
  // Self.Height    := CurTop + 120;
end;

function TfrmWorkPermits.CreateMemo(Owner: TPanel; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
var
  LEdit: TDBMemo;
  LLabel: TLabel;
begin
  CurTop           := CurTop + 20;
  LEdit            := TDBMemo.Create(Owner);
  LEdit.Name       := 'EdtMm' + Name;
  LEdit.Text       := '';
  LEdit.Parent     := Owner;
  LEdit.DataSource := cxGridDBTableView1.DataController.DataSource;
  LEdit.DataField  := NNField;
  LEdit.Hint       := NNField;
  // LEdit.Parent := self;
  LEdit.Top  := CurTop;
  LEdit.Left := 150;
  LEdit.Tag  := 1;
  if Width > 200 then
    LEdit.Width := 190
  else
    LEdit.Width := Width;
  if Width < 20 then
    LEdit.Width := 190;

  LEdit.Width   := 250;
  LEdit.Height  := 40;
  LEdit.Visible := True;

  // if LField = TDateTimeField then
  // LEdit.OnDblClick := EditDateEnter;

  LLabel        := TLabel.Create(Owner);
  LLabel.Name   := 'Lab' + Name;
  LLabel.Parent := Owner;
  // LLabel.Parent  := self;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
  // Self.Height    := CurTop + 120;
end;

function TfrmWorkPermits.CreateLCB(Owner: TPanel; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String; Field: TField): TComponent;
var
  LEdit: TDBLookUpComboBox;
  LLabel: TLabel;
  LBut, LBut2: TButton;
  LeoName, FldName: String;
  x: Integer;
begin
  CurTop       := CurTop + 20;
  LEdit        := TDBLookUpComboBox.Create(Owner);
  LEdit.Name   := 'LCB' + Name;
  LEdit.Parent := Owner;
  // LEdit.Parent := self;
  LEdit.Top   := CurTop;
  LEdit.Left  := 150;
  LEdit.Width := Width;
  if Width > 200 then
    LEdit.Width := 190
  else
    LEdit.Width := Width;
  LEdit.Visible := True;
  LeoName       := TStringField(Field).LookupDataSet.Name;
  System.Delete(LeoName, 1, 3);
  LeoName         := 'dts' + LeoName;
  LEdit.Hint      := TStringField(Field).KeyFields;
  LEdit.OnKeyDown := LeoKeyDown;
  for x           := 0 to DM.ComponentCount - 1 do
    begin
      if DM.Components[x].Name = LeoName then
        begin
          LEdit.ListSource := TDataSource(DM.Components[x]);
        end
    end;
  if Not(Assigned(LEdit.ListSource)) then
    begin
      LeoName    := 'ds' + TStringField(Field).LookupDataSet.Name;
      LEdit.Hint := TStringField(Field).KeyFields;
      for x      := 0 to DM.ComponentCount - 1 do
        begin
          if DM.Components[x].Name = LeoName then
            begin
              LEdit.ListSource := TDataSource(DM.Components[x]);
            end
        end;
      if Not(Assigned(LEdit.ListSource)) then
        begin
          LeoName    := 'ds' + TStringField(Field).LookupDataSet.Name;
          LEdit.Hint := TStringField(Field).KeyFields;
          for x      := 0 to DMMain.ComponentCount - 1 do
            begin
              if DMMain.Components[x].Name = LeoName then
                begin
                  LEdit.ListSource := TDataSource(DMMain.Components[x]);
                end
            end;
        end;
    end;

  LEdit.ListField  := TStringField(Field).LookupResultField;
  LEdit.KeyField   := TStringField(Field).LookupKeyFields;
  LEdit.DataSource := cxGridDBTableView1.DataController.DataSource;
  LEdit.DataField  := TStringField(Field).KeyFields;

  LLabel        := TLabel.Create(Owner);
  LLabel.Name   := 'L' + Name;
  LLabel.Parent := Owner;
  // LLabel.Parent  := self;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
  // Self.Height    := CurTop + 120;
end;

procedure TfrmWorkPermits.LeoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  PopField: String;
  PopDBLC: TDBLookUpComboBox;
begin
  inherited;
  if Key = VK_F4 then
    begin
      if Sender is TDBLookUpComboBox then
        begin
          PopDBLC := TDBLookUpComboBox(Sender);
          if PopDBLC.ListField > '' then
            begin
              PopField := PopDBLC.ListField;
              // !!! Strict reference to frmMain
              frmMain.actSubParamNoWrapPopupExecute(PopField);
              TDBLookUpComboBox(Sender).ListSource.Dataset.Active := False;
              TDBLookUpComboBox(Sender).ListSource.Dataset.Active := True;
            end;
        end;
    end;
end;

procedure TfrmWorkPermits.actSelectCriteriaExecute(Sender: TObject);
var
  frm: TfrmFilterEn;
  TmpSql: string;
begin
  inherited;
  if FormDts.Dataset is TAdoQuery then
    if FormDataSetSql = '' then
      FormDataSetSql := TAdoQuery(FormDts.Dataset).SQL.Text;

  frm := TfrmFilterEn.CreateWithParamDSet(Self, FormDts.Dataset, DM);
  if frm.ShowModal = mrOk then
    TmpSql := frm.KSleo
  else
    TmpSql := '';
  frm.Free;
  FormDts.Dataset.Active := False;
  // TAdoSql(FormDts.DataSet.DataSource).SQL.Text:= DM.BrowseSqlInit.Text;
  if TmpSql = '' then
    if MessageDlg('Προσοχή δεν έχουν οριστεί κριτήρια.Μπορεί η εκτέλεση να πάρει πολύ χρόνο', mtInformation, [mbOK, mbCancel], 0) = mrCancel then
      Exit;
  if TmpSql > '' then
    begin
      FormDataSetFilter := TmpSql;
      if FormDts.Dataset is TAdoQuery then
        begin
          if FormDataSetSql = TAdoQuery(FormDts.Dataset).SQL.Text then
            TAdoQuery(FormDts.Dataset).SQL.Add(' Where  ' + TmpSql)
          else
            TAdoQuery(FormDts.Dataset).SQL.Add(TmpSql)
        end
      else
        begin
          TAdoTable(FormDts.Dataset).Filter   := TmpSql;
          TAdoTable(FormDts.Dataset).Filtered := True;
        end;
    end;
  // Not Usefull
  // else
  // if FormDts.DataSet is TAdoQuery then
  // begin
  // //Pass
  // end
  // else
  // begin
  // TAdoTable(FormDts.DataSet).Filter := '';
  // TAdoTable(FormDts.DataSet).Filtered := False;
  // end;

  FormDts.Dataset.Active := True;
end;

procedure TfrmWorkPermits.actCancelSelectionExecute(Sender: TObject);
begin
  FormDts.Dataset.Active := False;
  FormDataSetFilter      := '';
  if FormDts.Dataset is TAdoQuery then
    begin
      TAdoQuery(FormDts.Dataset).SQL.Text := FormDataSetSql
    end
  else
    begin
      TAdoTable(FormDts.Dataset).Filter   := '';
      TAdoTable(FormDts.Dataset).Filtered := False;
    end;
  FormDts.Dataset.Active := True;
end;

procedure TfrmWorkPermits.actCopyExecute(Sender: TObject);
var x,z,VDepartment_Id,VContractor_Id,VId:Integer;
    VΜονάδα_Εργασίας,VΕξοπλισμος,VΠΕΡΙΓΡΑΦΗ_ΕΡΓΑΣΙΑΣ:String;
    tf: TField;
begin
//
  VId := DM.qryWork_PermitId.AsInteger;
  VDepartment_Id := DM.qryWork_PermitDepartment_Id.AsInteger;
  VContractor_Id := DM.qryWork_PermitContractor_Id.AsInteger;
  VΜονάδα_Εργασίας := DM.qryWork_PermitΜονάδα_Εργασίας.AsString;
  VΕξοπλισμος := DM.qryWork_PermitΕξοπλισμος.AsString;
  VΠΕΡΙΓΡΑΦΗ_ΕΡΓΑΣΙΑΣ := DM.qryWork_PermitΠΕΡΙΓΡΑΦΗ_ΕΡΓΑΣΙΑΣ.AsString;


  DM.qryWork_Permit.Append;
  DM.qryWork_PermitIssue_Date.AsDateTime := Now();
  DM.qryWork_PermitStart_Time.AsDateTime := Now();
  DM.qryWork_PermitEnd_Time.AsDateTime   := FindWorkEnd(DM.qryWork_PermitStart_Time.AsDateTime);
  DM.qryWork_PermitVisible_Till.AsDateTime := FindTillVisible(DM.qryWork_PermitEnd_Time.AsDateTime);

  DM.qryWork_PermitDepartment_Id.AsInteger := VDepartment_Id;
  DM.qryWork_PermitContractor_Id.AsInteger :=  VContractor_Id;
  DM.qryWork_PermitΜονάδα_Εργασίας.AsString := VΜονάδα_Εργασίας;
  DM.qryWork_PermitΕξοπλισμος.AsString := VΕξοπλισμος;
  DM.qryWork_PermitΠΕΡΙΓΡΑΦΗ_ΕΡΓΑΣΙΑΣ.AsString := VΠΕΡΙΓΡΑΦΗ_ΕΡΓΑΣΙΑΣ;
  DM.qryWork_PermitFrom_Id_Copy.AsInteger := VId;

  x     := DM.qryWork_Permit.Fields.Count;
  for z := 0 to x-1 do
    begin
      tf := DM.qryWork_Permit.Fields[z];
      if tf is TBooleanField then
        tf.Value := False;
    end;
  DM.qryWork_PermitΕγκρίση_ΤΑ_Υπερ.Clear;
  DM.qryWork_Permit.Post;

end;

procedure TfrmWorkPermits.actDispSelectionExecute(Sender: TObject);
begin
  if FormDataSetFilter > '' then
    MessageDlg(FormDataSetFilter, mtInformation, [mbOK], 0);
end;

end.
