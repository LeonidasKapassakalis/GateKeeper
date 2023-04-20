unit FMain;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList, inifiles, StrUtils, GIFImg, ComObj, System.IOUtils,
  dbgrids, info, Vcl.AppEvnts, Vcl.OleCtrls, ExportNew, ExportNewTerminal,
  dbTables, uAutoComplete, Winapi.ActiveX, ApplicationInfo,
  mgModalWaitDlg, Vcl.XPStyleActnCtrls, Vcl.ActnMan, Data.DB, Data.Win.ADODB,
  JvComponentBase, JvLogFile, SHDocVw, JvExControls, JvScrollText,
  ACard, ACardD, DTransAll, ExportBlackList, dxmdaset, ImportStd, ImportStdTrCall,
  Clipbrd, RLastCallDate, FInsApproval, Globals,
  DispCardData, DispStatData, DispCompData, DCheckTools,
  FPrnCustomer, DSelCust, FPrnACard, DSelACard, Printers,
  FSubParamsNo, FSubParamsNoEh, FSubParamsNoDev, FGenMaintDev,
  Variants, RBaseAdo, Tran, System.Generics.Collections,
  qrxlsxfilt, fGMapMain, FMainScreen,
  QRPrntr, QRCtrls, QRExport, QRPDFFilt, DateUtils, Common,
  FPrnTranPro, FPrnTranEmpPro, FEnhmTranPro, FFilterEn, FEnhmTransComPro,
  FPrnStationCalendarPro,
  FSelectVariant, FCheckLib, Vcl.ActnCtrls, Vcl.ActnMenus,
  JvGIF, SPGetSid, SAPLogonCtrl_TLB, Vcl.OleServer, FBaseDev0, FBaseDev1,

  FPersonDet, FOurCarsDet, FOtherCarsDet, FSelectLib, FBaseRep,

  FChangePass, Datasnap.DBClient, FAddWorkersBatch, FWorkPermits,

  FBRPersons, FBROther, FBROur, FBRWorkers, FBRWorkPermits, FBrLibro, FBrLibro0,
  FSelectPersons, FSelectOther, FSelectOur, FSelectWorkers,
  FDailyReport,

  cxADOAdapters,

  uRwMapiSession, uRwMapiInterfaces, uRwSysUtils, uRwEasyMAPI,

  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTreeView, cxStyles, cxClasses,

//  IdComponent,
//  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
//  IdSMTPBase, IdSMTP, IdBaseComponent, IdMessage;

  IdBaseComponent, IdComponent, IdTCPConnection, IdAttachmentFile,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP, IdMessage, IdEMailAddress;


// Vcl.DBCtrls, Vcl.DBLookup, Data.DB, Data.Win.ADODB, JvComponentBase, JvLogFile,
// Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.PlatformDefaultStyleActnCtrls,
// FMembersSel1, FMemDev,
// FSapOmnisProd, FRelEquipmentDet, FCheckRefIntegrity, FKategory,
// RMembers1, RMembers2, RMembers3, RMembers4,
// RLastReport,  FCustomers,
// FMembers, FMembersSel, FDispUpd,
// Vcl.ActnCtrls, Vcl.ActnMenus, SAPLogonCtrl_TLB;
// Vcl.XPStyleActnCtrls, System.Generics.Collections, SHDocVw, JvExControls,
// JvScrollText, mgModalWaitDlg, Vcl.ActnCtrls, Vcl.ActnMenus;

const
  PWM_STORE_WIN_POS = WM_USER + 10; { Private unit message }
  sGIFImageFile = 'GIF Image';

  // type TFrmBaseDev0Class = class of TfrmBaseDev0;

type
  TfrmMain = class(TForm)
{$REGION 'Form Comp'}
    MainMenu1: TMainMenu;
    Help1: TMenuItem;
    HelpAboutItem: TMenuItem;
    ActionList1: TActionList;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowArrangeAll1: TWindowArrange;
    WindowMinimizeAll1: TWindowMinimizeAll;
    HelpAbout1: TAction;
    WindowTileVertical1: TWindowTileVertical;
    ToolBar2: TToolBar;
    ImageList1: TImageList;
    N4: TMenuItem;
    sbInfo: TStatusBar;
    N2: TMenuItem;
    N3: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    ParametersSF: TAction;
    GParams: TAction;
    GParams1: TMenuItem;
    Kinhseis: TAction;
    SFormAction: TAction;
    SForm: TAction;
    FormAction: TAction;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Locking: TAction;
    actPrnKinhseis: TAction;
    actPrintKinhseis1: TAction;
    N21: TMenuItem;
    actPrint: TAction;
    actPrint1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    TrayIcon1: TTrayIcon;
    actCars: TAction;
    actDrivers: TAction;
    actCompany: TAction;
    actProducts: TAction;
    actArea001: TMenuItem;
    actArea011: TMenuItem;
    actArea021: TMenuItem;
    actArea031: TMenuItem;
    actDummy: TAction;
    actCClass: TAction;
    actCGroup: TAction;
    actIGroup: TAction;
    actIClass: TAction;
    actCClass1: TMenuItem;
    actCGroup1: TMenuItem;
    actIClass1: TMenuItem;
    actIGroup1: TMenuItem;
    TableFields: TAction;
    ableFields1: TMenuItem;
    Label1: TLabel;
    N5455454541: TMenuItem;
    actContacts: TAction;
    actContacts1: TMenuItem;
    actaddTableDef: TAction;
    actaddTableDef1: TMenuItem;
    actMerchant_Contacts: TAction;
    actMerchantContacts1: TMenuItem;
    actCust: TAction;
    ActCust1: TMenuItem;
    JvLogFile1: TJvLogFile;
    JvLogFile2: TJvLogFile;
    JvLogFile3: TJvLogFile;
    JvLogFile4: TJvLogFile;
    Action1: TAction;
    actArea012: TMenuItem;
    actCostCenter: TAction;
    actCompanyType: TAction;
    actDiak: TAction;
    actDocumentType: TAction;
    actEmployees: TAction;
    actENHMCOCALL: TAction;
    actENHMDISCALL: TAction;
    actENHMDLCALL: TAction;
    actENHMEMCALL: TAction;
    actENHMLOCALL: TAction;
    actENHMPECALL: TAction;
    actENHMSTCALL: TAction;
    actSitem: TAction;
    actSitemDiscount: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    actStation: TAction;
    actMerchant: TAction;
    actTerminal: TAction;
    Action2: TAction;
    actACard: TAction;
    actTrans: TAction;
    actTrans1: TMenuItem;
    btn5: TToolButton;
    act1: TAction;
    actTestGenMaint: TAction;
    actTranD: TAction;
    actTranDL: TAction;
    actFiller: TAction;
    actTranP: TAction;
    actExportBlackList: TAction;
    actExportNew: TAction;
    actPrnTranPrologue: TAction;
    actImportStd: TAction;
    act2: TAction;
    actEnhmTranPrologue: TAction;
    actEnhmMisthodosia: TAction;
    actPrintCustomer: TAction;
    actPrintACard: TAction;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQuery1Id: TIntegerField;
    ADOQuery1TableName: TWideStringField;
    ADOQuery1Filler: TWideStringField;
    ADOQuery2Id: TIntegerField;
    ADOQuery2TableName: TWideStringField;
    ADOQuery2Filler: TWideStringField;
    act2Contacts: TAction;
    actLastCallDate: TAction;
    actPtrStatCallPro: TAction;
    actInsApproval: TAction;
    actDispCardData: TAction;
    actDispStatData: TAction;
    actDispCustData: TAction;
    ActionManager1: TActionManager;
    actSendNewTerminal: TAction;
    actPrnTranEmpPrologue: TAction;
    actTermNotConnected: TAction;
    actStationNotConnected2T: TAction;
    actMerchantNotConnected: TAction;
    actStationNotConnected2M: TAction;
    actDispVersionChange: TAction;
    PageControl1: TPageControl;
    Ts1: TTabSheet;
    Ts2: TTabSheet;
    Ts3: TTabSheet;
    Ts4: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    JvScrollText1: TJvScrollText;
    Memo1: TMemo;
    Image2: TImage;
    Image3: TImage;
    ComboBox1: TComboBox;
    Edit3: TEdit;
    WebBrowser1: TWebBrowser;
    actShowHidePanel: TAction;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    actTrCallDate: TAction;
    actACardGroupDetail: TAction;
    actACardGroupMain: TAction;
    actExcelStations: TAction;
    Button6: TButton;
    Button7: TButton;
    act2Contacts2: TAction;
    actMerchantContactsExists: TAction;
    actStationContactsExists: TAction;
    actCustomerContactsExists: TAction;
    actImportStdTrCall: TAction;
    Button8: TButton;
    Button100: TButton;
    Button9: TButton;
    Button10: TButton;
    TfrmVariantsMemWsDetail: TAction;
    TfrmVariantsMemWsMain: TAction;
    Button11: TButton;
    Button12: TButton;
    Label4: TLabel;
    mgModalWaitDlg1: TmgModalWaitDlg;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button13: TButton;
    act2Contacts22: TAction;
    Button14: TButton;
    EPInfoExe1: TEPInfoExe;
    Button15: TButton;
    actMainScreen: TAction;
    actPersonDet: TAction;
    actOurCarsDet: TAction;
    actOtherCarsDet: TAction;
    actLibro: TAction;
    actBasePrn: TAction;
    Edit5: TEdit;
    Edit6: TEdit;
    Button16: TButton;

    actDriversOther: TAction;
    actCarsOther: TAction;
    actSpecTank: TAction;
    chkDontShowMsg: TCheckBox;
    chkNotLog1: TCheckBox;
    chkNotLog2: TCheckBox;
    chkNotLog3: TCheckBox;
    chkNotLog4: TCheckBox;
    chkAutoClose: TCheckBox;
    chkAutoCloseRoot: TCheckBox;
    chkAutoCloseInsert: TCheckBox;
    chkAutoCloseEdit: TCheckBox;
    chkAutoCloseFullFill: TCheckBox;
    chkEnhmGridTables: TCheckBox;
    chkEnhmGridFromTables: TCheckBox;
    chkLibAA: TCheckBox;
    chkLibDT: TCheckBox;
    actTableNames: TAction;
    actFieldNames: TAction;
    actTblChange: TAction;
    ableNames1: TMenuItem;
    FieldNames1: TMenuItem;
    blChange1: TMenuItem;

    actReport1: TAction;
    actReport2: TAction;
    actReport3: TAction;
    actReport11: TAction;
    actReport21: TAction;
    actReport31: TAction;
    actReport22: TAction;
    actReport13: TAction;
    actReport4: TAction;
    actReport41: TAction;
    actReport42: TAction;
    actReport43: TAction;
    actReport44: TAction;
    actReport45: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    actChangePass: TAction;
    Button17: TButton;
    actReport24: TAction;
    actReport25: TAction;
    actLogonMonitor: TAction;
    actReport34: TAction;
    actReport35: TAction;
    actRepLib0: TAction;
    actRepLib1: TAction;
    actRepLib2: TAction;
    actReport12: TAction;
    actReport13a: TAction;
    actCheckCleanLib: TAction;
    TRawLibInsert: TADOQuery;
    TRawLibInsertGId: TGuidField;
    TRawLibInsertLibId: TIntegerField;
    TRawLibInsertLibDateTime: TDateTimeField;
    TRawLibInsertLibRegNo: TWideStringField;
    TRawLibInsertLibWeight: TIntegerField;
    TRawLibInsertLibWeight1: TIntegerField;
    TRawLibInsertLibWeight2: TIntegerField;
    TRawLibInsertLibWeight0: TIntegerField;
    TRawLibInsertArThes: TIntegerField;
    TRawLibInsertError: TBooleanField;
    TRawLibInsertUsed: TBooleanField;
    chkUseInternalLibro: TCheckBox;
    SourceDir: TEdit;
    DestinationDir: TEdit;
    Delimiter: TEdit;
    altDelimiter: TEdit;
    chkSmallOther: TCheckBox;
    chkSmallPerson: TCheckBox;
    chkSmallOur: TCheckBox;
    chkDetailTabs: TCheckBox;
    chkMoveDetailTabs: TCheckBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Button18: TButton;
    FontDialog1: TFontDialog;
    Button19: TButton;
    RwMAPISession1: TRwMAPISession;
    IdMessage1: TIdMessage;
    IdSMTP1: TIdSMTP;
    actContractors: TAction;
    actContractors_Workers: TAction;
    actReport51: TAction;
    actContractors_Reason: TAction;
    actContractors_Contact: TAction;
    actDailyReport: TAction;
    RichEdit1: TRichEdit;
    actWorkersBatchUpdate: TAction;
    actDepartments: TAction;
    actWorkPermits: TAction;
    actForemen: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    actDepartment_Foremen: TAction;
    actReport52: TAction;
    actReport61: TAction;
    actReport62: TAction;
    actReport63: TAction;
    actReport64: TAction;
    actReport65: TAction;

    procedure FileNew1Execute(Sender: TObject);
{$ENDREGION}
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure AithshExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ReadColors(Sender: TObject);
    procedure FPassExecute(Sender: TObject);
    procedure GParamsExecute(Sender: TObject);
    procedure KinhseisExecute(Sender: TObject);
    procedure actPrnKinhseisExecute(Sender: TObject);
    procedure SAPLogonControl1Logon(Sender: TObject; const Connection: IDispatch);
    procedure actReportPdfExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure GeneralFormExecuteId(Sender: TObject; MenuId: Integer);
    procedure GeneralFormExecuteNameWithDefs(FormName: String; memParam: TdxMemData);
    procedure GeneralFormExecuteName(FormName: String; FormSubName: String = ''; FrmCaption: String = ''; DataS: String = ''; DMName: String = ''; KeyField: string = ''; KeyValue: Integer = 0);
    procedure actSubParamNoExecute(Sender: TObject);
    // procedure actSubParamNoWrapExecute(FormName:String;KeyField:string='';KeyValue:Integer=0);
    procedure actSubParamNoWrapPopupExecute(PopupFieldName: String; KeyField: string = ''; DataSName: String = ''; KeyValue: Integer = 0);
    procedure actDummyExecute(Sender: TObject);
    procedure actUtilsExecute(Sender: TObject);
    procedure Edit1DblClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure N5455454541Click(Sender: TObject);
    procedure actaddTableDefExecute(Sender: TObject);
    procedure Edit2DblClick(Sender: TObject);
    procedure actCustExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure actStationExecute(Sender: TObject);
    procedure actMerchantExecute(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure actACardExecute(Sender: TObject);
    procedure actTransExecute(Sender: TObject);
    procedure act1Execute(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure actFillerExecute(Sender: TObject);
    procedure Button1000Click(Sender: TObject);
    procedure act2Execute(Sender: TObject);
    procedure actEnhmMisthodosiaExecute(Sender: TObject);
    procedure actPrintCustomerExecute(Sender: TObject);
    procedure actPrintACardExecute(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure actLastCallDateExecute(Sender: TObject);
    procedure LastCallDateExecute(Sender: TObject; SqlText: string = '');
    procedure actInsApprovalExecute(Sender: TObject);
    procedure actDispCardDataExecute(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
    procedure actDispStatDataExecute(Sender: TObject);
    procedure actDispCustDataExecute(Sender: TObject);
    procedure ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure actDispVersionChangeExecute(Sender: TObject);
    procedure JvScrollText1Click(Sender: TObject);
    procedure actShowHidePanelExecute(Sender: TObject);
    procedure ApplicationEvents1Restore(Sender: TObject);
    procedure Edit4DblClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button100Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure actMainScreenExecute(Sender: TObject);
    procedure actPersonDetExecute(Sender: TObject);
    procedure actOurCarsDetExecute(Sender: TObject);
    procedure actOtherCarsDetExecute(Sender: TObject);
    procedure actBasePrnExecute(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure actReport011Execute(Sender: TObject);
    procedure actReport13Execute(Sender: TObject);
    procedure actReport1Execute(Sender: TObject);
    procedure actReport21Execute(Sender: TObject);
    procedure actReport22Execute(Sender: TObject);
    procedure actReport23Execute(Sender: TObject);
    procedure actReport2Execute(Sender: TObject);
    procedure actReport31Execute(Sender: TObject);
    procedure actReport32Execute(Sender: TObject);
    procedure actReport33Execute(Sender: TObject);
    procedure actReport3Execute(Sender: TObject);
    procedure actChangePassExecute(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure actReport24Execute(Sender: TObject);
    procedure actReport25Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actReport34Execute(Sender: TObject);
    procedure actReport35Execute(Sender: TObject);

    procedure actRepLib0Execute(Sender: TObject);
    procedure actRepLib1Execute(Sender: TObject);
    procedure actRepLib2Execute(Sender: TObject);
    procedure actReport12Execute(Sender: TObject);
    procedure actReport13aExecute(Sender: TObject);
    procedure actCheckCleanLibExecute(Sender: TObject);

    procedure ReadLibroFile(FileName: String; DestFileName: String);
    procedure Split(Delimiter: Char; Str: string; ListOfStrings: TStrings);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);

    procedure actReport51Execute(Sender: TObject);
    procedure actReport52Execute(Sender: TObject);

    procedure actReport61Execute(Sender: TObject);

    procedure actWorkersBatchUpdateExecute(Sender: TObject);
    procedure actWorkPermitsExecute(Sender: TObject);
    procedure actReport62Execute(Sender: TObject);
    procedure actReport63Execute(Sender: TObject);

  private
{$REGION 'Private'}
    FIni: TIniFile;
    PLoginCommited: Boolean;
    PFormID: Integer;
    wLeft, wTop, wWidth, wHeight: Integer;
    wWindowState: TWindowState;
    FDrawStyle: Integer;
    FDisplayedForm: TForm;
    FGenFormId: Integer;
    FbDontShowMsg: Boolean;
    FVarSExcel: Variant;
    FbAutoCloseRoot: Boolean;
    FbAutoClose: Boolean;
    FEnhmGridTables: Boolean;
    FGridFont: String;
    FGridCharSet: Integer;
    Ftillplushour: Integer;
    procedure CreateMDIChild(const Name: string);
    procedure SetInfoDate(value: TDateTime);
    procedure SetInfoUser(const value: string);
    procedure SetInfoHint(const value: string);
    procedure WriteIni;
    procedure ReadIni;
    procedure AppEventsHint2(Sender: TObject);
    procedure SetGenFormId(const value: Integer);
    procedure WBLoadHTML(WebBrowser: TWebBrowser; HTMLCode: string);
    procedure SetbDontShowMsg(const value: Boolean);
    function GetbDontShowMsg(): Boolean;
    function GetCurrentUserName: string;
    function GetCurrentUserName0(var CurrentUserName: string): Boolean;
    function LoggedOnUserNameEx(fFormat: DWORD): string;
    procedure SetVarSExcel(const value: Variant);
    procedure SetbAutoClose(const value: Boolean);
    procedure SetbAutoCloseRoot(const value: Boolean);
    function GetbAutoClose: Boolean;
    function GetbAutoCloseRoot: Boolean;
    function ReadEnhmGridTables(): Boolean;
    function ReadEnhmGridFromTables(): Boolean;
    function ReadLibAA(): Boolean;
    function ReadLibDT(): Boolean;
    procedure ReadIniGBool(Name: String; var value: Boolean);
    procedure WriteIniGBool(Name: String; value: Boolean);
    function GetbSmallOther: Boolean;
    function GetbSmallOur: Boolean;
    function GetbSmallPerson: Boolean;
    procedure SetbSmallOther(const value: Boolean);
    procedure SetbSmallOur(const value: Boolean);
    procedure SetbSmallPerson(const value: Boolean);

    function GetbDetailTabs: Boolean;
    function GetbMoveDetailTabs: Boolean;
    procedure SetbDetailTabs(const value: Boolean);
    procedure SetbMoveDetailTabs(const value: Boolean);
    procedure SetGridFont(const value: String);
    procedure SetGridCharSet(const value: Integer);

    procedure SendMailTTT(mailto: string; FileName: String);
    procedure SendMailSMTP(mailto: string; FileName: String);
    procedure Settillplushour(const Value: Integer);


{$ENDREGION}
  public
    // DMMain :TDMMain;
    ExeVer: String;
    MainLoginId: Integer;
    VersionChecked: Boolean;
    gpCarOwner, gpCompany, gpProducts: String;
    gpDelimiter, gpaltDelimiter, gpSourceDir, gpDestinationDir, gpDefaultDetailTab: String;
    gpGridImage1, gpGridImage2, gpGridImage3, gpGridImage4, gpGridImage5, gpGridImage6: string;
    ApplCursorList: TList;
    SapConStr: OleVariant;
    TFrom: TDateTime;
    TTo: TDateTime;
    TRFrom: TDateTime;
    TRTo: TDateTime;
    ConnSap: Boolean;
    InBatchAction: Boolean;
    GifImage: TGIFImage;
    AppColors: Array [1 .. 8] of TColor;
    AppFonts: Array [1 .. 8] of TFont;

    RunEmail: Boolean;

    function Char2Pho(Key: WideChar): WideChar;
    function String2Pho(Name: String): String;

    function ConvertRTFToAsciiText(aString: string): string;

    procedure ReadLibro;

    procedure actSubParamNoWrapExecute(FormName: String; KeyField: string = ''; KeyValue: Integer = 0);

    procedure WriteIniSub(Form: String; Left, Width, Top, Height, State: Integer);
    procedure ReadIniSub(Form: String; var Left, Width, Top, Height, State: Integer);
    procedure ReadIniG(Name: String; var value: String);
    procedure WriteIniG(Name: String; value: String);
    Function IniReadString(Section: String; Name: String; value: String): String;
    procedure IniWriteString(Section: String; Name: String; value: String);
    procedure WriteGrid(Form: String; Grid: TDBGrid);

    procedure ReadGrid(Form: String; Grid: TDBGrid; var Filter: String; Var Index: String; Var DataSource: String);
    procedure WriteCombo(Form: String; Combo: TComboBox);
    procedure ReadCombo(Form: String; Combo: TComboBox);
    procedure SetDisplayedForm(const value: TForm);

    // procedure actReport13aBatch;
    procedure actReport13aBatch(mailto: string; DaysBefore: Integer = 1);

    property EnhmGridTables: Boolean read ReadEnhmGridTables;
    property EnhmGridFromTables: Boolean read ReadEnhmGridFromTables;

    property ValidLibAA: Boolean read ReadLibAA;
    property ValidLibDT: Boolean read ReadLibDT;

    property VarSExcel: Variant read FVarSExcel write SetVarSExcel;
    property Ini: TIniFile read FIni;
    property LoginCommited: Boolean read PLoginCommited write PLoginCommited default False;
    property DisplayedForm: TForm read FDisplayedForm write SetDisplayedForm;
    property GenFormId: Integer read FGenFormId write SetGenFormId;

    property bDontShowMsg: Boolean read GetbDontShowMsg write SetbDontShowMsg;

    property bAutoClose: Boolean read GetbAutoClose write SetbAutoClose;
    property bAutoCloseRoot: Boolean read GetbAutoCloseRoot write SetbAutoCloseRoot;

    property bSmallPerson: Boolean read GetbSmallPerson write SetbSmallPerson;
    property bSmallOther: Boolean read GetbSmallOther write SetbSmallOther;
    property bSmallOur: Boolean read GetbSmallOur write SetbSmallOur;

    property bchkDetailTabs: Boolean read GetbDetailTabs write SetbDetailTabs;
    property bchkMoveDetailTabs: Boolean read GetbMoveDetailTabs write SetbMoveDetailTabs;

    property tillplushour: Integer read Ftillplushour write Settillplushour;


    property GridFont: String read FGridFont write SetGridFont;
    property GridCharSet: Integer read FGridCharSet write SetGridCharSet;

    procedure DispPrintExp(E: Exception; Form, Text: String);
    procedure DispPrintExpPass(E: Exception; Form, Text: String);

    function GetLibId(RegNo: String): String;

    function GetHelpPerson(var Name: String; var Company: string; var Identity: String; var Contact: String): Boolean;
    function GetHelpOther(var Name: String; var Company: string; var RegNo: String): Boolean;
    function GetHelpOur(var Name, Company, RegNo: String; var NameId, CompanyId, RegNoId: Integer): Boolean;
    function GetHelpWorker(var Name: String; var Surname: String; var Company: string; var Identity: String; var Contact: String; var Contractor_Id: Integer; var Worker_Id: Integer): Boolean;

    function InsertApproval(): TModalResult;
    function InsertApprovalSpec(PratCode: Integer; CardCode: Integer): TModalResult;
    function MessageDlg(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; HelpCtx: Integer): Integer;

    // property FormID        : Integer  read PFormID        write PFormID ;
  end;

var
  frmMain: TfrmMain;
  frmGMapMain: TfrmGMapMain;
  FormID: Integer;
  ALeo: Integer;
  Stack: TStack<String>;

implementation

{$R *.DFM}

uses ChildWin, About,
  FPasswordDlg, FTableIds, DMain, FGParams,
  DBase, FSearch2, DMerStaCustSubs,
  DSubParams, DSubParams00, DSubParams11, DSubParams22, DSubParams33, DSysSubParams, DStationSubs, Customer,
  Merchant, Station, Terminal, StationD, TerminalD, MerchantD, CustomerD,
  FBForm, FSubParams;

procedure TfrmMain.ComboBox1Exit(Sender: TObject);
begin
  if Sender is TComboBox then
    begin
      TComboBox(Sender).Items.Add(TComboBox(Sender).Text);
    end;

end;

procedure TfrmMain.CreateMDIChild(const Name: string);
var
  Child: TMDIChild;
begin
  { create a new MDI child window }
  Child         := TMDIChild.Create(Application);
  Child.Caption := Name;
  if FileExists(Name) then
    Child.Memo1.Lines.LoadFromFile(Name);
end;

procedure TfrmMain.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F4 then
    Edit1DblClick(Self);
end;

procedure TfrmMain.Edit2DblClick(Sender: TObject);
var
  frm: TfrmSearch2;
  a: Integer;
  aa: String;
begin
  frm            := TfrmSearch2.CreateWithParamVal(Self); // ,'CGroup','Descr',Edit1.Text);
  aa             := Edit1.Text;
  a              := frm.AutoSearch('Customer', 'Name', aa, 'CustomerId');
  Label1.Caption := inttostr(a);
  Edit1.Text     := aa;
  frm.Free;
end;

procedure TfrmMain.Edit4DblClick(Sender: TObject);
begin
  actSubParamNoWrapExecute(Edit4.Text);
end;

procedure TfrmMain.Edit1DblClick(Sender: TObject);
var
  frm: TfrmSearch2;
  a: Integer;
  aa: String;
begin
  frm            := TfrmSearch2.CreateWithParamVal(Self); // ,'CGroup','Descr',Edit1.Text);
  aa             := Edit1.Text;
  a              := frm.AutoSearch('Customer', 'Name', aa, 'CustomerId');
  Label1.Caption := inttostr(a);
  Edit1.Text     := aa;
  frm.Free;
end;

procedure TfrmMain.FileNew1Execute(Sender: TObject);
begin
  CreateMDIChild('NONAME' + inttostr(MDIChildCount + 1));
end;

procedure TfrmMain.HelpAbout1Execute(Sender: TObject);
Var
  frm: TForm;
begin
  frm := TAboutBox.Create(Self);
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmMain.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.AithshExecute(Sender: TObject);
begin
  { if DMMain.FindSecurity('TfrmOrder', LoginGroup , FormID) then
    TfrmOrder.CreateSecurity( Self , True,true,true,true,true,FormID )
    else
    MessageDlg('Δεν έχετε δικαίωμα ',mtError,[mbOK],0); }
end;

procedure TfrmMain.FormActivate(Sender: TObject);
var
  frm: TfrmPasswordDlg;
  MustExit: Boolean;
  DBVer: String;
  DBVerC, ExeVerC: Char;
  ExeShort, mailto: String;
  AcClient: TActionClientItem;

  x, Days: Integer;
  // fc : TFormClass;
begin
  if System.ParamCount > 0 then
    begin
      if RunEmail = False then
        begin
          mailto := System.ParamStr(1);
          try
            if System.ParamCount > 1 then
              Days := strtoint(System.ParamStr(2))
            else
              Days := 1;
          except
            Days := 1;
          end;
          actReport13aBatch(mailto, Days);
        end;
      RunEmail := True;
      Application.Terminate;
      exit;
    end;

  Label3.Caption := TAppInfo.AppInfoCopyright;
  Label5.Caption := TAppInfo.AppInfoPathData;
  Label6.Caption := TAppInfo.AppInfoPathLocal;

  EPInfoExe1.LangId  := '040904E4';
  EPInfoExe1.ExeName := Application.ExeName;
  EPInfoExe1.Execute;
  ExeVer := EPInfoExe1.FileVersion;

  // fc  := TFormClass(FindClass('TFrmMerchant'));

  if (Not(LoginCommited)) then
    if ((Assigned(DMMain) = True)) then
      begin
        frm := TfrmPasswordDlg.Create(Self);
        try
          if frm.ShowModal = mrCancel then
            MustExit := True;
        finally
          frm.Free;
          LoginCommited := True;
          MainLoginId   := DMMain.UpdateUser(LoginId, True);
        end;

        if MustExit then
          Application.Terminate;
      end;

  EPInfoExe1.LangId  := '040904E4';
  EPInfoExe1.ExeName := Application.ExeName;
  EPInfoExe1.Execute;

  ExeVer := EPInfoExe1.FileVersion;
  DBVer  := DMMain.GetSoftVersion();

  ExeShort := AnsiReplaceStr(ExeVer, '.', '');

  if ExeVer > '' then
    ExeVerC := ExeShort[1]
  else
    ExeVerC := '1';

  if DBVer > '' then
    DBVerC := DBVer[1]
  else
    DBVerC := '1';

  if VersionChecked = False then
    begin
      if Not(ExeVerC = DBVerC) then
        begin
          MessageDlg('Προσοχή υπάρχει νέα Release.' + chr(13) + 'Release Εγκατεστημένου Προγράμματος :' + ExeVerC + chr(13) + 'Συνέχεια ;(No).', mtError, [mbNo], 0);
          Application.Terminate;
        end;
      if Not(ExeShort = DBVer) then
        begin
          if MessageDlg('Προσοχή υπάρχει νέα Version.' + chr(13) + 'Version Εγκατεστημένου Προγράμματος :' + ExeVer + chr(13) + 'Συνέχεια ;(Yes/No).', mtError, [mbYes, mbNo], 0) = mrNo then
            Application.Terminate;
        end;
      VersionChecked := True;
    end;

  Globals.gUGroupID   := LoginGroup;
  Globals.gUUserDESCR := LoginName;
  Globals.gUUserID    := LoginId;

  if ConnSap then
    Application.Minimize;

  // 31012016
  if LoginGroup <> 0 then
    begin
      for x := 0 to ActionList1.ActionCount - 1 do
        if ActionList1.Actions[x].Category = 'SysParam' then
          begin
            TCustomAction(ActionList1.Actions[x]).Enabled := False;
            TCustomAction(ActionList1.Actions[x]).Visible := False;
          end;
    end;

{$REGION 'Animated Image'}
  GifImage := TGIFImage.Create();
  // try
  // ..      GifImage.LoadFromFile('0ss.gif');
  // GifImage.AnimateLoop := glEnabled;
  // GifImage.AnimationSpeed := 1000;
  GifImage.Animate := True;
  // Image1.Picture.Assign(GifImage);
  // Image1.Repaint;

  // finally
  // FreeAndNil(GifImage);


  // Image1.Picture.LoadFromFile('ss.gif');
  // TGIFImage(Image1.Picture.Graphic).Animate := True;
  // TGIFImage(Image1.Picture.Graphic).AnimationSpeed := 1;
  // TGIFImage(Image1.Picture.Graphic).AnimateLoop := glEnabled;
  // TGIFImage(Image1.Picture.Graphic).Animate := True;
{$ENDREGION}
{$REGION 'Custom Menu Buils'}
  { ///!!! Custom Menu Buils
    TActionClientItem (Add)
    ContextItems - TActionClients
    ActionBars
    ActionManager
    ActionManager1.ActionBars[1].Items[0].ActionClients[7].ActionClients.Add;
    ActionManager1.ActionBars[1].Items[0].ActionClients[7].ActionClients[1].Action := act1;
    ActionManager1.ActionBars[1].Items[0].ActionClients[7].ActionClients[1].Caption:='12345678';
    ActionManager1.ActionBars[1].Items[0].ActionClients[7].ActionClients[1].Visible:=True;

    AcClient:=ActionManager1.ActionBars[1].Items[0].Items[3].ActionClients.Add;
    AcClient.Action := act1;
    AcClient.Caption:='333333';
    AcClient.Visible:=True;

    ActionManager1.ActionBars[1].Items[0].Items[3].ActionClients[4].Action := act1;
    ActionManager1.ActionBars[1].Items[0].Items[3].ActionClients[4].Caption:='23456789';
    ActionManager1.ActionBars[1].Items[0].Items[3].ActionClients[4].Visible:=True;

    ActionManager1.ActionBars[1].Items[0].Items[3].ActionClients.Add;
    ActionManager1.ActionBars[1].Items[0].Items[3].ActionClients[5].Action := act1;
    ActionManager1.ActionBars[1].Items[0].Items[3].ActionClients[5].Caption:='34567890';
    ActionManager1.ActionBars[1].Items[0].Items[3].ActionClients[5].Visible:=True;
  }
{$ENDREGION}
  if System.ParamCount > 0 then
    for x := 0 to ActionList1.ActionCount - 1 do
      begin
        MessageDlg(ActionList1.Actions[x].Name, mtCustom, [mbOK], 0);
        try
          ActionList1.Actions[x].Execute;
        except

        end;
      end;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DMMain.UpdateUser(MainLoginId, False);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  s: String;
  dt1, dt2, dt3: TDateTime;
  ttc: TfrmSubParamsNoDev;
  I, x: Integer;
  Tac: TACEdit;
  acsList: TacSource;
  XLApp: Variant;
begin
  { ALeo:=GlobalFindAtom(pchar(Application.ExeName));
    if ALeo = 0 then
    GlobalAddAtom(pchar(Application.ExeName))
    else
    begin
    MessageDlg('Only One Instance Allowed.', mtError,[mbOk], 0);
    Perform(WM_CLOSE,0,0);
    exit;
    end; }

  FDrawStyle := 1;
  FIni       := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));
  ReadIni;
  // SetBounds(wLeft, wTop, wWidth, wHeight);

  TPicture.RegisterFileFormat('GIF', sGIFImageFile, TGIFImage);

  // WindowState := wWindowState;
  // WindowState := wsNormal;

  Stack := TStack<String>.Create;

  { try
    DMMain := TDMMain.Create(Self);
    except
    on E:Exception do begin
    Application.HandleException( E );
    PostMessage( Handle, WM_CLOSE, 0, 0 );
    end;
    end; }

  // if Login then begin
  SetInfoDate(Date);
  // SetInfoUser( UserName );
  // end else
  // PostMessage( Handle, WM_CLOSE, 0, 0 );
  Application.OnHint := AppEventsHint2;
  ReadColors(Self);
  ConnSap := False;

  TRFrom := strtotime('08:00:00');
  TRTo   := strtotime('08:45:00');

  // RegisterClass(TfrmDatefile);

  RegisterClass(TfrmSubParamsNo);
  RegisterClass(TfrmSubParamsNoEh);
  RegisterClass(TfrmSubParamsNoDev);
  RegisterClass(TDMSubParams);
  RegisterClass(TDMSubParams00);
  RegisterClass(TDMSubParams11);
  RegisterClass(TDMSubParams22);
  RegisterClass(TDMSubParams33);
  RegisterClass(TDMSysSubParams);
    RegisterClass(TFrmDailyReport);
  // RegisterClass(TMerchantDM);
  // RegisterClass(TfrmMerchant);
  // RegisterClass(TfrmCustomer);
  // RegisterClass(TCustomerDM);
  // RegisterClass(TfrmStation);
  // RegisterClass(TStationDM);
  // RegisterClass(TfrmTerminal);
  // RegisterClass(TTerminalDM);
  // RegisterClass(TfrmAcard);
  // RegisterClass(TfrmGenMaintDev);
  // RegisterClass(TAcardDM);
  // RegisterClass(TDMStationSubs);
  // RegisterClass(TDMMerStaCust);
  // RegisterClass(TDMTransAll);
  // RegisterClass(TDMCheckTools);
  // RegisterClass(TfrmExportBlackList);
  // RegisterClass(TfrmExportNew);
  // RegisterClass(TfrmExportNewTerminal);
  // RegisterClass(TfrmPrnTranPrologue);
  // RegisterClass(TfrmPrnTranEmpPrologue);
  // RegisterClass(TfrmPrnStationCallendarPro);
  // RegisterClass(TfrmEnhmTranPrologue);
  // RegisterClass(TfrmImportStd);
  // RegisterClass(TfrmImportStdTrCall);

  // RegisterClass(TDMSysSubParams);

  if not chkNotLog1.Checked then
    begin
      JvLogFile1.Active   := False;
      JvLogFile1.FileName := ExtractFilePath(Application.ExeName) + '\AppLog\Log_Execptions_' + DateToStrNum(now) + '.out';
      JvLogFile1.Active   := True;
    end;

  if not chkNotLog2.Checked then
    begin
      JvLogFile2.Active   := False;
      JvLogFile2.FileName := ExtractFilePath(Application.ExeName) + '\AppLog\Log_SQL_' + DateToStrNum(now) + '.out';
      JvLogFile2.Active   := True;
    end;

  if not chkNotLog3.Checked then
    begin
      JvLogFile3.Active   := False;
      JvLogFile3.FileName := ExtractFilePath(Application.ExeName) + '\AppLog\Log3-' + DateToStrNum(now) + '.out';
      JvLogFile3.Active   := True;
    end;

  if not chkNotLog4.Checked then
    begin
      JvLogFile4.Active   := False;
      JvLogFile4.FileName := ExtractFilePath(Application.ExeName) + '\AppLog\Log4-' + DateToStrNum(now) + '.out';
      JvLogFile4.Active   := True;
    end;

  ApplCursorList := TList.Create;

  // ApplCursorList: TList;

  // for i:=0 to ActionList1.ActionCount -1 do
  // if TAction(ActionList1.Actions[i]).Hint = '' then
  // TAction(ActionList1.Actions[i]).Hint := TAction(ActionList1.Actions[
  // i]).Caption;


  // Application.OnHint:=DisplayHint;

  s            := Application.ExeName;
  s            := GetFileVersion0(Application.ExeName, '%d.%d.%d.%d');
  Self.Caption := Self.Caption + ' Ver.' + s + ' Compiled @ ' + DateTimeToStr(FileDateToDateTime(FileAge(ParamStr(0))));;

  TrayIcon1.BalloonHint := TrayIcon1.BalloonHint + ' Ver.' + s;

{$REGION 'MyRegion'}
  { * self.Caption :=  self.Caption +
    '    ' + inttostr(StVersionInfo1.FileVerMajor) +
    '.' + inttostr(StVersionInfo1.FileVerMinor) +
    '.' + inttostr(StVersionInfo1.FileVerRelease)+
    ' ' + inttostr(StVersionInfo1.FileVerBuild);* }



  // !!!
  // DMMain.UpdateActionsExecute(0,ActionList1);
  // DMMain.UpdateMenuExecute(0,MainMenu1);
{$ENDREGION}
  dt1 := DMMain.GNow;
  dt2 := now();
  dt3 := Abs(dt1 - dt2);

  if (dt3 > 1.9999) then
    MessageDlg('Πρόβλημα με την Ώρα' + DateTimeToStr(dt1) + DateTimeToStr(dt2), mtError, [mbOK], 0);

{$REGION 'Coomected Out 10/2013'}
  // ttc:=TfrmSubParamsNoDev.Create(self);
  // for I := ttc.ComponentCount - 1 downto 0 do
  // Components[I].Free;
  // ReadComponentResFile('leo.leo',ttc);
  // MessageDlg(ttc.className, mtWarning, [mbOK], 0);
  // ttc.ShowModal;
{$ENDREGION}
  // Image2.Picture.LoadFromFile('.\Images\AvinCardSmall.bmp');
  // Image3.Picture.LoadFromFile('.\Images\AvinCardSmallBw.bmp');


  // Tac:=TACEdit.Create(Self);
  // Tac.Parent:=Self;
  // Tac.SetSelText('asd');
  // Tac.ACSource := acsList;
  // Tac.ACStrings.Add('Kapa');
  // Tac.ACStrings.Add('Kapa1');
  // Tac.ACStrings.Add('Kapa2');
  // Tac.ACStrings.Add('Alpha');
  // Tac.ACStrings.Add('Alpha1');
  // Tac.ACStrings.Add('Alpha2');
  // Tac.ACStrings.Add('Delta');
  // Tac.ACStrings.Add('Delta1');
  // Tac.ACStrings.Add('Delta2');
  // Tac.Top := 100;
  // Tac.Visible := True;

  WebBrowser1.Visible := False;
  WebBrowser1.Enabled := False;

  XLApp          := CreateOleObject('Excel.Application');
  VarSExcel      := XLApp.Application.Version;
  Label4.Caption := Label4.Caption + VarSExcel;
  // MessageDlg(VarSExcel, mtCustom, [mbOK], 0);
  XLApp.quit;

  VersionChecked := False;

end;

procedure TfrmMain.SetInfoDate(value: TDateTime);
begin
  sbInfo.Panels[0].Text := DateToStr(value);
end;

procedure TfrmMain.SetInfoUser(const value: string);
begin
  sbInfo.Panels[1].Text := value;
end;

procedure TfrmMain.Settillplushour(const Value: Integer);
begin
  Ftillplushour := Value;
end;

procedure TfrmMain.SetVarSExcel(const value: Variant);
begin
  FVarSExcel := value;
end;

procedure TfrmMain.TrayIcon1DblClick(Sender: TObject);
begin
  { Hide the tray icon and show the window,
    setting its state property to wsNormal. }
  // TrayIcon1.Visible := False;
  // Show();
  // WindowState := wsNormal;
  // Application.BringToFront();
end;

procedure TfrmMain.SetInfoHint(const value: string);
begin
  sbInfo.Panels[2].Text := value;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
var
  I: Integer;
begin
  // GlobalDeleteAtom(ALeo);
  WriteIni;
  // DMMain.Free;
  GifImage.Free;
  for I := 1 to 8 do
    begin
      AppFonts[I].Free;
    end;
  ApplCursorList.Free;
  FIni.Free;
  Stack.Free;
end;

procedure TfrmMain.FormResize(Sender: TObject);
begin
  // PostMessage(Handle, PWM_STORE_WIN_POS, 0, 0);
  // InvalidateRect(ClientHandle, nil, True);
end;

procedure TfrmMain.WriteIni;
var
  Section: string;
begin
  Section := Name;
  with Ini do
    begin
      WriteInteger(Section, 'Top', wTop);
      WriteInteger(Section, 'Left', wLeft);
      WriteInteger(Section, 'Width', wWidth);
      WriteInteger(Section, 'Height', wHeight);
      WriteInteger(Section, 'WindowState', Integer(wWindowState));
    end;

  WriteIniG('GridImage1', gpGridImage1);
  WriteIniG('GridImage2', gpGridImage2);
  WriteIniG('GridImage3', gpGridImage3);
  WriteIniG('GridImage4', gpGridImage4);
  WriteIniG('GridImage5', gpGridImage5);
  WriteIniG('GridImage6', gpGridImage6);

  // 21062017
  WriteIniG('GridFont', GridFont);
  WriteIniG('GridCharSet', inttostr(GridCharSet));

end;

procedure TfrmMain.ReadIni;
var
  Section: string;
begin
  Section := Name;
  with Ini do
    begin
      wLeft        := ReadInteger(Section, 'Left', Left);
      wTop         := ReadInteger(Section, 'Top', Top);
      wWidth       := ReadInteger(Section, 'Width', Width);
      wHeight      := ReadInteger(Section, 'Height', Height);
      wWindowState := TWindowState(ReadInteger(Section, 'WindowState', Integer(WindowState)));
    end;
end;

{ procedure TMainForm.StoreWinPos;
  begin
  if WindowState = wsNormal then begin
  wLeft := Left;
  wTop := Top;
  wWidth := Width;
  wHeight := Height;
  end;
  wWindowState := WindowState;
  end; }

procedure TfrmMain.AppEventsHint2(Sender: TObject);
begin
  { SetInfoHint( Application.Hint );
    if Not (DisplayedForm = Nil) then
    if DisplayedForm is TFrmBForm then
    TFrmBForm(DisplayedForm).SetStatusText(Application.Hint,1);
    if DisplayedForm is TFrmSubParams then
    TFrmSubParams(DisplayedForm).SetStatusText(Application.Hint,1); }
end;

procedure TfrmMain.WriteIniG(Name: String; value: String);
var
  Section: string;
begin
  Section := 'General';
  with Ini do
    begin
      WriteString(Section, Name, value);
    end;
end;

procedure TfrmMain.ReadIniG(Name: String; var value: String);
var
  Section: string;
begin

  Section := 'General';
  with Ini do
    begin
      value := ReadString(Section, Name, '');
    end;
end;

procedure TfrmMain.WriteIniGBool(Name: String; value: Boolean);
var
  Section: string;
begin
  Section := 'General';
  with Ini do
    begin
      WriteString(Section, Name, BoolToStr(value));
    end;
end;

procedure TfrmMain.ReadIniGBool(Name: String; var value: Boolean);
var
  Section: string;
begin
  Section := 'General';
  with Ini do
    begin
      value := StrToBool(ReadString(Section, Name, 'True'));
    end;
end;

procedure TfrmMain.WriteIniSub(Form: String; Left, Width, Top, Height, State: Integer);
var
  Section: string;
begin
  Section := Form;
  with Ini do
    begin
      WriteInteger(Section, 'Top', Top);
      WriteInteger(Section, 'Left', Left);
      WriteInteger(Section, 'Width', Width);
      WriteInteger(Section, 'Height', Height);
      WriteInteger(Section, 'WindowState', Integer(State));
    end;
end;

procedure TfrmMain.ReadIniSub(Form: String; var Left, Width, Top, Height, State: Integer);
var
  Section: string;
begin

  Section := Form;
  if Form > ' ' then
    begin
      with Ini do
        begin
          Left   := ReadInteger(Section, 'Left', 0);
          Top    := ReadInteger(Section, 'Top', 0);
          Width  := ReadInteger(Section, 'Width', 0);
          Height := ReadInteger(Section, 'Height', 0);
          State  := ReadInteger(Section, 'WindowState', State);
        end;
    end;
end;

procedure TfrmMain.ReadColors(Sender: TObject);
var
  c, Ccolor: String;
  I, iColor: Integer;
  TmpBool: Boolean;
  TmpString: String;
  AppFont: TFont;
begin
  frmMain.ReadIniG('CarOwner', gpCarOwner);
  frmMain.ReadIniG('Company', gpCompany);
  frmMain.ReadIniG('Products', gpProducts);

  frmMain.ReadIniGBool('chkDontShowMsg', TmpBool);
  chkDontShowMsg.Checked := TmpBool;
  frmMain.ReadIniGBool('chkNotLog1', TmpBool);
  chkNotLog1.Checked := TmpBool;
  frmMain.ReadIniGBool('chkNotLog2', TmpBool);
  chkNotLog2.Checked := TmpBool;
  frmMain.ReadIniGBool('chkNotLog3', TmpBool);
  chkNotLog3.Checked := TmpBool;
  frmMain.ReadIniGBool('chkNotLog4', TmpBool);
  chkNotLog4.Checked := TmpBool;
  frmMain.ReadIniGBool('chkAutoClose', TmpBool);
  chkAutoClose.Checked := TmpBool;
  frmMain.ReadIniGBool('chkAutoCloseRoot', TmpBool);
  chkAutoCloseRoot.Checked := TmpBool;
  frmMain.ReadIniGBool('chkAutoCloseInsert', TmpBool);
  chkAutoCloseInsert.Checked := TmpBool;
  frmMain.ReadIniGBool('chkAutoCloseEdit', TmpBool);
  chkAutoCloseEdit.Checked := TmpBool;
  frmMain.ReadIniGBool('chkAutoCloseFullFill', TmpBool);
  chkAutoCloseFullFill.Checked := TmpBool;
  frmMain.ReadIniGBool('chkEnhmGridTables', TmpBool);
  chkEnhmGridTables.Checked := TmpBool;
  frmMain.ReadIniGBool('chkEnhmGridFromTables', TmpBool);
  chkEnhmGridFromTables.Checked := TmpBool;
  frmMain.ReadIniGBool('chkLibAA', TmpBool);
  chkLibAA.Checked := TmpBool;
  frmMain.ReadIniGBool('chkLibDT', TmpBool);
  chkLibDT.Checked := TmpBool;

  // 21062017
  frmMain.ReadIniG('GridFont', TmpString);
  FGridFont := TmpString;
  frmMain.ReadIniG('GridCharset', TmpString);
  FGridCharSet := strtoint(TmpString);

  frmMain.ReadIniGBool('chkSmallPerson', TmpBool);
  chkSmallPerson.Checked := TmpBool;
  frmMain.ReadIniGBool('chkSmallOther', TmpBool);
  chkSmallOther.Checked := TmpBool;
  frmMain.ReadIniGBool('chkSmallOur', TmpBool);
  chkSmallOur.Checked := TmpBool;

  frmMain.ReadIniG('tillplushour', TmpString);
  try
    tillplushour := strtoint(TmpString);
  except
    tillplushour := 3
  end;


  frmMain.ReadIniGBool('chkDetailTabs', TmpBool);
  chkDetailTabs.Checked := TmpBool;
  frmMain.ReadIniGBool('chkMoveDetailTabs', TmpBool);
  chkMoveDetailTabs.Checked := TmpBool;
  frmMain.ReadIniG('DefaultDetailTab', gpDefaultDetailTab);

  frmMain.ReadIniG('GridImage1', gpGridImage1);
  frmMain.ReadIniG('GridImage2', gpGridImage2);
  frmMain.ReadIniG('GridImage3', gpGridImage3);
  frmMain.ReadIniG('GridImage4', gpGridImage4);
  frmMain.ReadIniG('GridImage5', gpGridImage5);
  frmMain.ReadIniG('GridImage6', gpGridImage6);

  frmMain.ReadIniGBool('chkUseInternalLibro', TmpBool);
  chkUseInternalLibro.Checked := TmpBool;

  frmMain.ReadIniG('SourceDir', gpSourceDir);
  frmMain.ReadIniG('DestinationDir', gpDestinationDir);
  frmMain.ReadIniG('Delimiter', gpDelimiter);
  frmMain.ReadIniG('altDelimiter', gpaltDelimiter);

  SourceDir.Text      := gpSourceDir;
  DestinationDir.Text := gpDestinationDir;
  Delimiter.Text      := gpDelimiter;
  altDelimiter.Text   := gpaltDelimiter;

  for I := 1 to 8 do
    begin
      AppFont := TFont.Create();
      c       := inttostr(I);
      frmMain.ReadIniG('Color' + c, Ccolor);
      if Ccolor > '' then
        AppColors[I] := strtoint(Ccolor);
      frmMain.ReadIniG('ColorF' + c, Ccolor);
      if Ccolor > '' then
        AppFont.Color := strtoint(Ccolor);
      frmMain.ReadIniG('FontCrSet' + c, Ccolor);
      if Ccolor > '' then
        AppFont.Charset := strtoint(Ccolor);
      frmMain.ReadIniG('FontCrSetFontName' + c, Ccolor);
      if Ccolor > '' then
        AppFont.Name := Ccolor;
      frmMain.ReadIniG('FontCrSetFontSize' + c, Ccolor);
      if Ccolor > '' then
        AppFont.Size := strtoint(Ccolor);
      frmMain.ReadIniG('FontCrSetFontHeight' + c, Ccolor);
      if Ccolor > '' then
        AppFont.Height := strtoint(Ccolor);
      frmMain.ReadIniG('FontCrSetFontPixelPerInch' + c, Ccolor);
      if Ccolor > '' then
        AppFont.PixelsPerInch := strtoint(Ccolor);
      frmMain.ReadIniG('FontCrSetFontStyle' + c, Ccolor);
      if Ccolor > '0' then
        begin
          // Added 13052002
          if Length(Ccolor) < 4 then
            begin
              if Length(Ccolor) = 3 then
                Ccolor := Concat('0', Ccolor);
              if Length(Ccolor) = 2 then
                Ccolor := Concat('00', Ccolor);
              if Length(Ccolor) = 1 then
                Ccolor := Concat('000', Ccolor);
              if Length(Ccolor) = 0 then
                Ccolor := Concat('0000', Ccolor);
            end;
          // Added 13052002
          if Ccolor[4] = '1' then
            AppFont.Style := Font.Style + [fsBold]
          else
            AppFont.Style := Font.Style - [fsBold];
          if Ccolor[3] = '1' then
            AppFont.Style := Font.Style + [fsItalic]
          else
            AppFont.Style := Font.Style - [fsItalic];
          if Ccolor[2] = '1' then
            AppFont.Style := Font.Style + [fsUnderline]
          else
            AppFont.Style := Font.Style - [fsUnderline];
          if Ccolor[1] = '1' then
            AppFont.Style := Font.Style + [fsStrikeOut]
          else
            AppFont.Style := Font.Style + [fsStrikeOut];
        end;
      AppFonts[I] := AppFont;
    end;
end;

procedure TfrmMain.WriteGrid(Form: String; Grid: TDBGrid);
var
  Section: string;
  I: Integer;
begin
  Section := 'G' + '_' + Trim(Form) + '_' + Trim(Grid.Name);
  begin
    if Grid.DataSource = nil then
      exit;
    Ini.WriteInteger(Section, 'Columns', Grid.Columns.Count);
    Ini.WriteString(Section, 'Filter', Grid.DataSource.DataSet.Filter);
    Ini.WriteString(Section, 'DataSource', Grid.DataSource.Name);
    if Grid.DataSource.DataSet is TTable then
      Ini.WriteString(Section, 'Index', TTable(Grid.DataSource.DataSet).IndexName);
    for I := 0 to Grid.Columns.Count - 1 do
      with Ini do
        begin
          WriteString(Section, 'Field' + inttostr(I), Grid.Columns[I].FieldName);
          WriteBool(Section, 'Check' + inttostr(I), Grid.Columns[I].Visible);
          WriteInteger(Section, 'Width' + inttostr(I), Grid.Columns[I].Width);
        end
  end
end;

procedure TfrmMain.ReadGrid(Form: String; Grid: TDBGrid; var Filter: String; Var Index: String; Var DataSource: String);
var
  Section, s: string;
  I, x: Integer;
begin
  Section := 'G' + '_' + Trim(Form) + '_' + Trim(Grid.Name);
  begin
    x          := Ini.ReadInteger(Section, 'Columns', 0);
    Filter     := Ini.ReadString(Section, 'Filter', '');
    Index      := Ini.ReadString(Section, 'Index', '');
    DataSource := Ini.ReadString(Section, 'DataSource', '');
    for I      := 0 to x - 1 do
      with Ini do
        begin
          if Not(Grid.Columns.Count > x - 1) then
            Grid.Columns.Add;
          Grid.Columns[I].FieldName := ReadString(Section, 'Field' + inttostr(I), ' ');
          Grid.Columns[I].Visible   := ReadBool(Section, 'Check' + inttostr(I), True);
          Grid.Columns[I].Width     := ReadInteger(Section, 'Width' + inttostr(I), 5);
        end;
  end
end;

procedure TfrmMain.FPassExecute(Sender: TObject);
var
  frm: TForm;
  fc: TFormClass;
  aaa: Pointer;
begin
  { if DMMain.FindSecurity('TfrmFPass', LoginGroup, FormID) then
    begin
    fc  := TFormClass(TfrmFPass);
    frm := fc.Create(self);
    if frm is TfrmSubParams then
    TfrmFPass(frm).FormSetDisp(self, FormID)
    else
    MessageDlg('No Self', mtInformation, [mbOK], 0);
    try
    frm.ShowModal;
    finally
    frm.Free;
    DMMain.UpdSecurity('TfrmFPass');
    end;
    end
    else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0) }
end;

procedure TfrmMain.GParamsExecute(Sender: TObject);
var
  frm: TfrmGParams;
begin
  if DMMain.FindSecurity('TfrmGParams', LoginGroup, FormID) then
    begin
      frm := TfrmGParams.Create(Self);
      try
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmGParams');
        ReadColors(Self);
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.KinhseisExecute(Sender: TObject);
/// var
// !!!  frm: TForm2;
begin
  { !!!  frm:=TForm2.Create(self);
    frm.ShowModal;
    frm.Free; }

  // if DMMain.FindSecurity('TfrmMembers', LoginGroup, FormID) then
  // TfrmMembers.CreateSecurity(self, FormID)
  // else
  // MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0);
end;

procedure TfrmMain.N5455454541Click(Sender: TObject);
begin
  // !!!
  { if DMMain.FindSecurity('TfrmMemDev', LoginGroup, FormID) then
    TfrmMemDev.CreateSecurity(self, FormID)
    else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0); }
end;

procedure TfrmMain.WriteCombo(Form: String; Combo: TComboBox);
var
  Section: string;
  I, x, y: Integer;
begin
  Section := 'G' + '_' + Form + '_' + Combo.Name;
  begin
    Ini.WriteInteger(Section, 'Columns', Combo.Items.Count);
    if Combo.Items.Count > 10 then
      begin
        y := Combo.Items.Count - 10;
        x := Combo.Items.Count;
      end
    else
      begin
        y := 0;
        x := Combo.Items.Count - 1;
      end;
    for I := y to x do
      with Ini do
        begin
          WriteString(Section, 'Field' + inttostr(I), Combo.Items.Strings[I]);
        end
  end
end;

procedure TfrmMain.ReadCombo(Form: String; Combo: TComboBox);
var
  Section, s: string;
  I, x: Integer;
begin
  Section := 'G' + '_' + Form + '_' + Combo.Name;
  begin
    x     := Ini.ReadInteger(Section, 'Columns', 0);
    for I := 0 to x - 1 do
      with Ini do
        begin
          Combo.Items.Add(ReadString(Section, 'Field' + inttostr(I), ' '));
        end;
  end
end;

function TfrmMain.ReadLibAA: Boolean;
begin
  Result := chkLibAA.Checked;;
end;

function TfrmMain.ReadLibDT: Boolean;
begin
  Result := chkLibDT.Checked;;
end;

function TfrmMain.ReadEnhmGridTables: Boolean;
begin
  Result := chkEnhmGridTables.Checked;;
end;

function TfrmMain.ReadEnhmGridFromTables: Boolean;
begin
  Result := chkEnhmGridFromTables.Checked;;
end;

procedure TfrmMain.SetbAutoClose(const value: Boolean);
begin
  chkAutoClose.Checked := value;
end;

procedure TfrmMain.SetbAutoCloseRoot(const value: Boolean);
begin
  chkAutoCloseRoot.Checked := value;
end;

function TfrmMain.GetbAutoCloseRoot(): Boolean;
begin
  GetbAutoCloseRoot := chkAutoCloseRoot.Checked;
end;

function TfrmMain.GetbAutoClose(): Boolean;
begin
  GetbAutoClose := chkAutoClose.Checked;
end;

function TfrmMain.GetbSmallPerson(): Boolean;
begin
  GetbSmallPerson := chkSmallPerson.Checked;
end;

function TfrmMain.GetbSmallOther(): Boolean;
begin
  GetbSmallOther := chkSmallOther.Checked;
end;

function TfrmMain.GetbSmallOur(): Boolean;
begin
  GetbSmallOur := chkSmallOur.Checked;
end;

procedure TfrmMain.SetbSmallPerson(const value: Boolean);
begin
  chkSmallPerson.Checked := value;
end;

procedure TfrmMain.SetbSmallOther(const value: Boolean);
begin
  chkSmallOther.Checked := value;
end;

procedure TfrmMain.SetbSmallOur(const value: Boolean);
begin
  chkSmallOur.Checked := value;
end;

procedure TfrmMain.SetbDetailTabs(const value: Boolean);
begin
  chkDetailTabs.Checked := value;
end;

procedure TfrmMain.SetbDontShowMsg(const value: Boolean);
begin
  chkDontShowMsg.Checked := value
end;

function TfrmMain.GetbDetailTabs: Boolean;
begin
  GetbDetailTabs := chkDetailTabs.Checked;
end;

procedure TfrmMain.SetbMoveDetailTabs(const value: Boolean);
begin
  chkMoveDetailTabs.Checked := value;
end;

function TfrmMain.GetbDontShowMsg(): Boolean;
begin
  GetbDontShowMsg := chkDontShowMsg.Checked;
end;

function TfrmMain.GetbMoveDetailTabs: Boolean;
begin
  GetbMoveDetailTabs := chkMoveDetailTabs.Checked;
end;

procedure TfrmMain.SetDisplayedForm(const value: TForm);
begin
  FDisplayedForm := value;
end;

procedure TfrmMain.SetGenFormId(const value: Integer);
begin
  FGenFormId := value;
end;

procedure TfrmMain.SetGridCharSet(const value: Integer);
begin
  FGridCharSet := value;
end;

procedure TfrmMain.SetGridFont(const value: String);
begin
  FGridFont := value;
end;

procedure TfrmMain.actPrnKinhseisExecute(Sender: TObject);
// !!!
{ var
  frm: TfrmMembersSel;
  frm1: TForm;
  rpt: TrptBaseAdo;
  Sleo, Stemp: String;
  i, ii: Integer;
  OldCursor: TCursor; }
begin
  { if DMMain.FindSecurity('TfrmMembersSel', LoginGroup, FormID) then
    begin
    try
    frm := TfrmMembersSel.CreateSecurity(self, FormID);
    frm.ShowModal;
    { if frm.ModalResult = mrOK then
    begin
    OldCursor:=Screen.Cursor;
    Screen.Cursor:=crHourGlass;
    Sleo:=TfrmMembersSel(frm).Sleo;
    case frm.RadioGroup1.ItemIndex of
    0:rpt:=TrptMembers1.Create(self);
    1:rpt:=TrptMembers2.Create(self);
    2:rpt:=TrptMembers3.Create(self);
    3:rpt:=TrptMembers4.Create(self);
    end;
    rpt.ADOQuery1.Active:=False;
    if Sleo > ' ' then
    rpt.ADOQuery1.SQL.Add('Where EquipmentLocation.Quantity > 0 And '  + SLeo);
    if frm.RadioGroup1.ItemIndex = 0 then
    rpt.ADOQuery1.SQL.Add('Order By Id1,id2,id3,id4,Type.Id,Model.id');
    {            if frm.RadioGroup1.ItemIndex = 3 then
    rpt.ADOQuery1.SQL.Add('Order By SortChar'); }
  { try
    rpt.ADOQuery1.Active:=True;
    Screen.Cursor:=OldCursor;
    rpt.Preview;
    finally
    rpt.Free;
    end
    end }
  { finally
    frm.Free;
    // Screen.Cursor:=OldCursor;
    DMMain.UpdSecurity('TfrmMembersSel');
    end;
    end
    else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0) }
end;

procedure TfrmMain.Image1DblClick(Sender: TObject);
begin
  // TGIFImage(Image1.Picture.Graphic).Animate := Not TGIFImage(Image1.Picture.Graphic).Animate;
end;

procedure TfrmMain.Image2Click(Sender: TObject);
begin
  GetLabelPrinterIndex('xxx')
end;

Function TfrmMain.IniReadString(Section, Name: String; value: String): String;
begin
  Result := Ini.ReadString(Section, Name, value);
end;

procedure TfrmMain.IniWriteString(Section, Name, value: String);
begin
  Ini.WriteString(Section, Name, value);
end;

procedure TfrmMain.SAPLogonControl1Logon(Sender: TObject; const Connection: IDispatch);
begin
  MessageDlg('Sap Logon Commited', mtWarning, [mbOK], 0);
  ConnSap := True;
end;

{
  uses qrxlsxfilt;
  ..
  ..
  procedure TForm1.SpeedButton4Click(Sender: TObject);
  var
  XLSXFilt : TQRXMLSSDocumentFilter;
  begin
  XLSXFilt := TQRXMLSSDocumentFilter.Create('biorep.xml');
  XLSXFilt.Creator := 'QBS Software';
  XLSXFilt.Company := 'QBS Software';
  XLSXFilt.Author := 'A. B Smithie';
  XLSXFilt.WorkSheetname := 'Test sheet 1';
  XLSXFilt.OpenWidth := 750; // width in pixels of the table when opened in Excel
  XLSXFilt.OpenHeight := 800; // height in pixels of the table
  biorep.QuickRep1.ExportToFilter(XLSXFilt);
  XLSXFilt.Free;
  end;
}

{ PDF UNICODE Full 2012
  procedure TfrmMain.actReportPdf9Execute(Sender: TObject);
  var
  frm: TrptLastReport;
  aPDFFilt: TQRPDFDocumentFilter;
  x: String;
  Fs: TFormatSettings;
  begin
  frm := TrptLastReport.Create(self);
  frm.AdoQuery1.SQL.Add('Where sta_code >' + chr(39) + '900000' + chr(39));
  frm.AdoQuery1.Active := True;
  GetLocaleFormatSettings(0, Fs);
  Fs.DateSeparator := '-';
  try
  try
  x        := DateToStr(Date(), Fs);
  aPDFFilt := TQRPDFDocumentFilter.Create('.\Mak-Stath-' + x + '.pdf');
  aPDFFilt.Codepage := '1253';
  aPDFFilt.TextEncoding := UnicodeEncoding;
  aPDFFilt.AddTTFont('Courier New');
  frm.ExportToFilter(aPDFFilt);
  except
  MessageDlg('Πρόβλημα στη Δημιουργεία αρχείου PDF', mtError, [mbOK], 0);
  end;
  finally
  aPDFFilt.Free;
  end;
  frm.Free;
  end; }

procedure TfrmMain.actReportPdfExecute(Sender: TObject);
// !!!
{ var
  frm: TrptLastReport;
  aPDFFilt: TQRPDFDocumentFilter;
  x: String;
  Fs: TFormatSettings; }
begin
  // !!!
  { frm                  := TrptLastReport.Create(self);
    frm.AdoQuery1.Active := True;
    GetLocaleFormatSettings(0, Fs);
    Fs.DateSeparator := '-';
    try
    try
    x        := DateToStr(Date(), Fs);
    aPDFFilt := TQRPDFDocumentFilter.Create('.\Stath-' + x + '.pdf');
    aPDFFilt.Codepage := '1253';
    aPDFFilt.TextEncoding := UnicodeEncoding;
    aPDFFilt.AddTTFont('Courier New');
    frm.ExportToFilter(aPDFFilt);
    except
    MessageDlg('Πρόβλημα στη Δημιουργεία αρχείου PDF', mtError, [mbOK], 0);
    end;
    finally
    aPDFFilt.Free;
    end;
    frm.Free; }
end;

{ procedure TfrmMain.actReportXMLExecute(Sender: TObject);
  var
  frm: TrptLastReport;
  XLSXFilt: TQRXMLSSDocumentFilter;
  x: String;
  Fs: TFormatSettings;
  begin
  frm                  := TrptLastReport.Create(self);
  frm.AdoQuery1.Active := True;
  GetLocaleFormatSettings(0, Fs);
  Fs.DateSeparator := '-';
  try
  try
  x                      := DateToStr(Date(), Fs);
  frm.QRSysData1.Enabled := False;
  frm.QRSysData4.Enabled := False;
  frm.QRSysData5.Enabled := False;
  XLSXFilt := TQRXMLSSDocumentFilter.Create('.\Stath-' + x + '.Xml');
  frm.ExportToFilter(XLSXFilt);
  except
  MessageDlg('Πρόβλημα στη Δημιουργεία αρχείου XML', mtError, [mbOK], 0);
  end;
  finally
  XLSXFilt.Free;
  end;
  frm.Free;
  end; }

procedure TfrmMain.act1Execute(Sender: TObject);
begin
  // !!!
  MessageDlg('Add By Code', mtWarning, [mbOK], 0);
end;

procedure TfrmMain.act2Execute(Sender: TObject);
var
  frm: TfrmFilterEn;
  frm1: TfrmPrnCustomer;
  TmpSql: string;
  TDM: TDMSelCust;
begin
  inherited;
  TDM := TDMSelCust.Create(Self);
  frm := TfrmFilterEn.CreateWithParamDSet(Self, TDM.qryCustomer, TDataModule(TDM));
  frm.ShowModal;
  MessageDlg(frm.KSleo, mtWarning, [mbOK], 0);
  Clipboard.AsText := frm.KSleo;
  // adqry2.Active := False;
  // adqry2.SQL.Add(' Where '+frm.KSleo);
  // adqry2.Active := True;
  TmpSql := frm.KSleo;
  frm.Free;
  frm1 := TfrmPrnCustomer.Create(Self);
  frm1.qryCustomer.SQL.Add(' Where ' + TmpSql);
  frm1.ShowModal;
  frm1.Free;

end;

procedure TfrmMain.actACardExecute(Sender: TObject);
Var
  Form: TForm;
Begin
  try
    try
      Form := TFrmACard.Create(Application);
      // TfrmACard(form).OpenSpecific(19,'MerchantId','qryBrowser');
      Form.ShowModal;
    except
      MsgDlg('Error create form' + 'FormClass.ClassName');
    end;
  finally
    Form.Free;
  end;

end;

procedure TfrmMain.actaddTableDefExecute(Sender: TObject);
var
  DataS: TADOQuery;
begin
  DataS            := TADOQuery.Create(Self);
  DataS.Connection := DMMain.ADOConnection;
  DataS.Name       := Edit1.Text;
  DataS.Active     := False;
  DataS.SQL.Text   := 'Select * from ' + Edit1.Text;
  try
    DataS.Active := True;
    DMMain.UpdToTableFields(TDataSet(DataS));
  finally
    DataS.Free;
  end;
end;

procedure TfrmMain.actBasePrnExecute(Sender: TObject);
var
  frm: TfrmBaseRep;
begin
  frm := TfrmBaseRep.Create(Self);
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmMain.actChangePassExecute(Sender: TObject);
var
  frm: TfrmChangePass;
begin
  frm := TfrmChangePass.Create(Self);
  frm.ShowModal;
  frm.Free;
  Application.Terminate;

end;

procedure TfrmMain.actCheckCleanLibExecute(Sender: TObject);
var
  frm: TfrmCheckLib;
begin
  if DMMain.FindSecurity('TfrmCheckLib', LoginGroup, FormID) then
    begin
      try
        frm := TfrmCheckLib.CreateSecurity(Self, FormID);
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmCheckLib');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0);
end;

procedure TfrmMain.actCustExecute(Sender: TObject);
Var
  Form: TForm;
  ap: Pointer;
Begin
  // GeneralDM.tblDForm.Insert;
  // GeneralDM.tblDFormName.AsString:=FormClass.ClassName;
  // GeneralDM.tblDFormPerig.AsString:=FormClass.ClassName;
  // try
  // GeneralDM.tblDForm.Post;
  // except
  // GeneralDM.tblDForm.Cancel;
  // end;

  // if FindSecuritySub(FormClass.ClassName,gUGroupID) then
  // begin
  try
    try
      Form := TFrmCustomer.Create(Application);
      Form.ShowModal;
    except
      MsgDlg('Error create form' + 'FormClass.ClassName');
    end;
  finally
    Form.Free;
  end;
  // end
  // else
  // MessageDlg('Δεν έχετε το Δικαίωμα '+FormClass.ClassName, mtError, [mbOK], 0);
  // End;

  // !!!
  { if DMMain.FindSecurity('TfrmCustomers', LoginGroup, FormID) then
    TfrmCustomers.CreateSecurity(self, FormID)
    else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0); }
end;

procedure TfrmMain.actDispCardDataExecute(Sender: TObject);
var
  frm: TfrmDispCardData;
begin
  frm := TfrmDispCardData.Create(Self);
  // frm.ViewSpecific(1015);
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmMain.actDispCustDataExecute(Sender: TObject);
var
  frm: TfrmDispCompData;
begin
  frm := TfrmDispCompData.Create(Self);
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmMain.actDispStatDataExecute(Sender: TObject);
var
  frm: TfrmDispStatData;
begin
  frm := TfrmDispStatData.Create(Self);
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmMain.actDispVersionChangeExecute(Sender: TObject);
var
  frm: TForm;
  ScrTxt: TJvScrollText;
  Lf: file;
begin
  frm            := TForm.Create(Self);
  frm.Position   := poScreenCenter;
  frm.Width      := 600;
  frm.Caption    := 'Αλλαγές !!!';
  ScrTxt         := TJvScrollText.Create(frm);
  ScrTxt.Parent  := frm;
  ScrTxt.OnClick := JvScrollText1Click;
  ScrTxt.Align   := alClient;
  try
    ScrTxt.Items.LoadFromFile('Changes.txt');
    ScrTxt.ScrollPixels := 1;
    ScrTxt.Active       := True;
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmMain.actDummyExecute(Sender: TObject);
begin
  //
end;

procedure TfrmMain.actEnhmMisthodosiaExecute(Sender: TObject);
var
  frm: TfrmEnhmTransComPrologue;
begin
  frm := TfrmEnhmTransComPrologue.Create(Self);
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmMain.actFillerExecute(Sender: TObject);
begin
  //
end;

procedure TfrmMain.actInsApprovalExecute(Sender: TObject);
begin
  InsertApproval;
end;

procedure TfrmMain.Action1Execute(Sender: TObject);
Var
  Form: TForm;
  ap: Pointer;
Begin
  // GeneralDM.tblDForm.Insert;
  // GeneralDM.tblDFormName.AsString:=FormClass.ClassName;
  // GeneralDM.tblDFormPerig.AsString:=FormClass.ClassName;
  // try
  // GeneralDM.tblDForm.Post;
  // except
  // GeneralDM.tblDForm.Cancel;
  // end;

  // if FindSecuritySub(FormClass.ClassName,gUGroupID) then
  // begin
  try
    try
      Form := TFrmMerchant.Create(Application);
      ap   := Form.MethodAddress('LeoPub');
      if ap = nil then
        MsgDlg(inttostr(1000));
      ap := Form.MethodAddress('CheckIfThere');
      if ap = nil then
        MsgDlg(inttostr(1000))
      else
        MsgDlg('CheckIfThere Found');
      Form.ShowModal;
    except
      MsgDlg('Error create form' + 'FormClass.ClassName');
    end;
  finally
    Form.Free;
  end;
  // end
  // else
  // MessageDlg('Δεν έχετε το Δικαίωμα '+FormClass.ClassName, mtError, [mbOK], 0);
  // End;
end;

procedure TfrmMain.actWorkersBatchUpdateExecute(Sender: TObject);
var
  frm: TfrmAddWorkersBatch;
begin
  if DMMain.FindSecurity('TfrmWorkersBatchUpdate', LoginGroup, FormID) then
    begin
      try
        frm  := TfrmAddWorkersBatch.CreateSecurity(Self, FormID);
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmWorkersBatchUpdate');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0);
end;

procedure TfrmMain.actWorkPermitsExecute(Sender: TObject);
var
  frm: TfrmWorkPermits;
begin
  if DMMain.FindSecurity('TfrmWorkPermits', LoginGroup, FormID) then
    begin
      frm := TfrmWorkPermits.CreateSecurity(self, FormID);
      try
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmWorkPermits');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
begin
  Stack.Push(TAction(Action).Name);
end;

procedure TfrmMain.actPrintACardExecute(Sender: TObject);
var
  frm: TfrmFilterEn;
  frm1: TfrmPrnACard;
  TmpSql: string;
  TDM: TDMSelACard;
begin
  inherited;
  // Fix Security
  TDM := TDMSelACard.Create(Self);
  frm := TfrmFilterEn.CreateWithParamDSet(Self, TDM.qryACard_Empty, TDataModule(TDM));
  frm.ShowModal;
  if frm.ModalResult = mrOk then
    begin
      MsgDlg(frm.KSleo);
      Clipboard.AsText := frm.KSleo;
      if frm.KSleo > '' then
        begin
          TmpSql := frm.KSleo;
        end;
      frm1 := TfrmPrnACard.Create(Self);
      if TmpSql > '' then
        frm1.qryACard.SQL.Add(' Where ' + TmpSql);
      frm1.SqlStr          := ' Where ' + TmpSql;
      frm1.qryACard.Active := True;
      frm1.ShowModal;
      frm1.Free;
    end;
  frm.Free;
end;

procedure TfrmMain.actPrintCustomerExecute(Sender: TObject);
var
  frm: TfrmFilterEn;
  frm1: TfrmPrnCustomer;
  TmpSql: string;
  TDM: TDMSelCust;
begin
  inherited;
  // Fix Security
  TDM := TDMSelCust.Create(Self);
  frm := TfrmFilterEn.CreateWithParamDSet(Self, TDM.qryCustomer, TDataModule(TDM));
  frm.ShowModal;
  if frm.ModalResult = mrOk then
    begin
      MsgDlg(frm.KSleo);
      if frm.KSleo > '' then
        begin
          TmpSql := frm.KSleo;
        end;
      frm1 := TfrmPrnCustomer.Create(Self);
      if TmpSql > '' then
        frm1.qryCustomer.SQL.Add(' Where ' + TmpSql);
      frm1.ShowModal;
      frm1.Free;
    end;
  frm.Free;
end;

procedure TfrmMain.actPrintExecute(Sender: TObject);
// !!!
{ var
  frm: TfrmMembersSel0;
  frm1: TForm;
  rpt: TrptBaseAdo;
  Sleo, Stemp: String;
  i, ii: Integer;
  OldCursor: TCursor; }
begin
  // !!!
  { if DMMain.FindSecurity('TfrmMembersSel0', LoginGroup, FormID) then
    begin
    try
    frm := TfrmMembersSel0.CreateSecurity(self, FormID);
    frm.ShowModal;
    if frm.ModalResult = mrOK then
    begin
    OldCursor     := Screen.Cursor;
    Screen.Cursor := crHourGlass;
    Sleo          := TfrmMembersSel0(frm).Sleo;
    case frm.RadioGroup1.ItemIndex of
    0:rpt := TrptTotalizers.Create(self);
    1:rpt := TrptMembers2.Create(self);
    2:rpt := TrptMembers3.Create(self);
    3:rpt := TrptMembers4.Create(self);
    end;
    rpt.AdoQuery1.Active := False;
    if Sleo > ' ' then
    rpt.AdoQuery1.SQL.Add('Where ' + Sleo +
    ' Order by sta_id , sta_start_dateime ');
    try
    rpt.AdoQuery1.Active := True;
    Screen.Cursor        := OldCursor;
    rpt.Preview;
    finally
    rpt.Free;
    end
    end;
    finally
    frm.Free;
    Screen.Cursor := OldCursor;
    DMMain.UpdSecurity('TfrmMembersSel0');
    end;
    end
    else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0) }
end;

procedure TfrmMain.ApplicationEvents1Exception(Sender: TObject; E: Exception);
begin
  if not bDontShowMsg then
    begin
      MessageDlg('General Exception Trap', mtError, [mbOK], 0);
      ShowException(E, ExceptAddr);
    end;

  if not chkNotLog1.Checked then
    JvLogFile1.Add(E.ToString, E.ClassName);

  if E is EDatabaseError then
    MessageDlg(E.ToString, mtError, [mbOK], 0);

end;

procedure TfrmMain.ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
var
  I: SmallInt;
begin
  // !!!
  { if Msg.message = WM_MOUSEWHEEL then
    begin
    Msg.message := WM_KEYDOWN;
    Msg.lParam  := 0;
    i           := HiWord(Msg.wParam);
    if i > 0 then
    Msg.wParam := VK_UP
    else
    Msg.wParam := VK_DOWN;

    Handled := False;
    end; }
end;

procedure TfrmMain.ApplicationEvents1Minimize(Sender: TObject);
begin
  // Hide();
  // WindowState := wsMinimized;

  // { Show the animated tray icon and also a hint balloon. }
  // TrayIcon1.Visible := True;
  // TrayIcon1.Animate := True;
  // TrayIcon1.ShowBalloonHint;
end;

procedure TfrmMain.ApplicationEvents1Restore(Sender: TObject);
begin
  Show();
  // WindowState := wsMaximized;
end;

procedure TfrmMain.btn5Click(Sender: TObject);
begin
  MessageDlg(GetCurrentUserSid, mtWarning, [mbOK], 0);
end;

procedure TfrmMain.actSubParamNoExecute(Sender: TObject);
begin
  actSubParamNoWrapExecute(TAction(Sender).HelpKeyword);
end;

procedure TfrmMain.actSubParamNoWrapPopupExecute(PopupFieldName: String; KeyField: string = ''; DataSName: String = ''; KeyValue: Integer = 0);
var
  Leo, Leo01: String;
  LeoDM: TDataModule;
begin
  Leo                                := PopupFieldName;
  DMMain.SPstRetPopupFormName.Active := False;
  DMMain.SPstRetPopupFormName.Parameters.ParamByName('@PopupFormName').value := Leo;
  DMMain.SPstRetPopupFormName.Active := True;
  if DMMain.SPstRetPopupFormName.IsEmpty then
    begin
      DMMain.stPopupForm.Insert;
      DMMain.stPopupFormPopupFormName.AsString := PopupFieldName;
      DMMain.stPopupFormFormName.AsString      := '-';
      DMMain.stPopupForm.Post;
      exit;
    end
  else
    begin
      actSubParamNoWrapExecute(DMMain.SPstRetPopupFormNameFormName.AsString, KeyField, KeyValue);
    end;
end;

procedure TfrmMain.actSubParamNoWrapExecute(FormName: String; KeyField: string = ''; KeyValue: Integer = 0);
var
  Leo, Leo01: String;
  LeoDM: TDataModule;
begin
  // !!!
  // MsgDlg(KeyField, mtWarning, [mbOK], 0);
  Leo                         := FormName;
  DMMain.SPstRetFormId.Active := False;
  DMMain.SPstRetFormId.Parameters.ParamByName('@FormName').value := Leo;
  DMMain.SPstRetFormId.Active := True;
  if DMMain.SPstRetFormId.IsEmpty then
    begin
      DMMain.FindSecurity(Leo, 0, FormID)
    end
  else
    begin
      if DMMain.SPstRetFormIdDataModule.AsString = 'TDMSubParams' then
        LeoDM := TDataModule(TDMSubParams);

      if DMMain.SPstRetFormIdDataModule.AsString = 'TDMSubParams00' then
        LeoDM := TDataModule(TDMSubParams00);
      if DMMain.SPstRetFormIdDataModule.AsString = 'TDMSubParams11' then
        LeoDM := TDataModule(TDMSubParams11);
      if DMMain.SPstRetFormIdDataModule.AsString = 'TDMSubParams22' then
        LeoDM := TDataModule(TDMSubParams22);
      if DMMain.SPstRetFormIdDataModule.AsString = 'TDMSubParams33' then
        LeoDM := TDataModule(TDMSubParams33);


      if DMMain.SPstRetFormIdDataModule.AsString = 'TDMSysSubParams' then
        LeoDM := TDataModule(TDMSysSubParams);
      if DMMain.SPstRetFormIdDataModule.AsString = 'TMerchantDM' then
        LeoDM := TDataModule(TCustomerDM);
      if DMMain.SPstRetFormIdDataModule.AsString = 'TDMTransAll' then
        LeoDM := TDataModule(TDMTransAll);

      if LeoDM = Nil then
        LeoDM := TDataModule(TDMSubParams);

      GeneralFormExecuteName(DMMain.SPstRetFormIdAncestorForm.AsString, DMMain.SPstRetFormIdName.AsString, DMMain.SPstRetFormIdPerig.AsString, DMMain.SPstRetFormIdDataSourceName.AsString,
        DMMain.SPstRetFormIdDataModule.AsString, KeyField, KeyValue);
    end;
end;

procedure TfrmMain.actLastCallDateExecute(Sender: TObject);
begin
  LastCallDateExecute(Sender);
end;

procedure TfrmMain.LastCallDateExecute(Sender: TObject; SqlText: string = '');
var
  rpt: TrptLastCallDate;
begin
  try
    rpt := TrptLastCallDate.Create(Self);
    rpt.InitSql(SqlText);
    rpt.Preview;
  finally
    rpt.Free;
  end;
end;

procedure TfrmMain.actMainScreenExecute(Sender: TObject);
var
  frm: TfrmMainScreen;
begin
  if DMMain.FindSecurity('TfrmMainScreen', LoginGroup, FormID) then
    begin
      try
        frm := TfrmMainScreen.CreateSecurity(Self, FormID);
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmMainScreen');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0);
end;

procedure TfrmMain.actMerchantExecute(Sender: TObject);
Var
  Form: TForm;
Begin
  // GeneralDM.tblDForm.Insert;
  // GeneralDM.tblDFormName.AsString:=FormClass.ClassName;
  // GeneralDM.tblDFormPerig.AsString:=FormClass.ClassName;
  // try
  // GeneralDM.tblDForm.Post;
  // except
  // GeneralDM.tblDForm.Cancel;
  // end;

  // if FindSecuritySub(FormClass.ClassName,gUGroupID) then
  // begin
  try
    try
      Form := TFrmMerchant.Create(Application);
      TFrmMerchant(Form).OpenSpecific(19, 'MerchantId', 'qryBrowser');
      Form.ShowModal;
    except
      MsgDlg('Error create form' + 'FormClass.ClassName');
    end;
  finally
    Form.Free;
  end;
  // end
  // else
  // MessageDlg('Δεν έχετε το Δικαίωμα '+FormClass.ClassName, mtError, [mbOK], 0);
  // End;
end;

procedure TfrmMain.actShowHidePanelExecute(Sender: TObject);
begin
  PageControl1.Visible := Not PageControl1.Visible;
end;

procedure TfrmMain.actStationExecute(Sender: TObject);
Var
  Form: TForm;
  ap: Pointer;
Begin
  // GeneralDM.tblDForm.Insert;
  // GeneralDM.tblDFormName.AsString:=FormClass.ClassName;
  // GeneralDM.tblDFormPerig.AsString:=FormClass.ClassName;
  // try
  // GeneralDM.tblDForm.Post;
  // except
  // GeneralDM.tblDForm.Cancel;
  // end;

  // if FindSecuritySub(FormClass.ClassName,gUGroupID) then
  // begin
  try
    try
      Form := TFrmStation.Create(Application);
      // TFrmBaseDev0(form).OpenSpecific(19,'StationId','qryBrowser');
      TFrmBaseDev0(Form).EditSpecific(19, 'StationId', 'qryBrowser');
      Form.ShowModal;
    except
      MsgDlg('Error create form' + 'FormClass.ClassName');
    end;
  finally
    Form.Free;
  end;
  // end
  // else
  // MessageDlg('Δεν έχετε το Δικαίωμα '+FormClass.ClassName, mtError, [mbOK], 0);
  // End;
end;

procedure TfrmMain.actTransExecute(Sender: TObject);
Var
  Form: TForm;
begin
  // MessageDlg(IntToStr(CheckDigitVisa('1234567890123456')), mtWarning, [mbOK], 0);
  try
    Form := TFrmTran.Create(Application);
    TFrmTran(Form).FormShow(Self);
    Form.ShowModal;
  finally
    Form.Free;
  end;
end;

procedure TfrmMain.actUtilsExecute(Sender: TObject);
begin
  //
end;

/// //////////////////////////////////////////////////////////////////
procedure TfrmMain.GeneralFormExecuteId(Sender: TObject; MenuId: Integer);
var
  frm: TForm;
begin
  if DMMain.FindSecurity('TfrmTableIds', LoginGroup, FormID) then
    begin
      frm := TfrmTableIds.CreateSecurity(Self, FormID);
      try
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmTableIds');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.GeneralFormExecuteName(FormName: String; FormSubName: String = ''; FrmCaption: String = ''; DataS: String = ''; DMName: String = ''; KeyField: string = ''; KeyValue: Integer = 0);
var
  frm: TForm;
  // frm1: TfrmBaseDev0;
  // fc1: TFrmBaseDev0Class;
  fc: TFormClass;
  dc: TFormClass;
begin
  if FormName = '' then
    begin
      MessageDlg('Please give PopUp Form ' + FormSubName, mtError, [mbOK], 0);
      exit;
    end;
  if DMMain.FindSecurity(FormSubName, LoginGroup, FormID) then
    begin
      try
        try
          fc := TFormClass(FindClass(FormName));
        except
          DMMain.UpdSecurity(FormSubName);
          MessageDlg('Class Not found ' + FormSubName, mtError, [mbOK], 0);
          exit;
        end;
        if DMName > '' then
          dc := TFormClass(FindClass(DMName));
        frm  := fc.Create(Self);

        // Variable that shows the id Number of the Current form
        GenFormId := FormID;

        // Implemet other base class other than TForm
        // type TFrmBaseDev0Class = class of TfrmBaseDev0;
        // fc1 := TFrmBaseDev0Class(FindClass(FormName));
        // frm1:= fc1.CreateSecurity(self,FormId);

        // WriteComponentResFile('leo.leo',frm);
        if frm is TFrmBaseDev0 then
          /// !!!
          if KeyField > '' then
            TFrmBaseDev0(frm).OpenSpecific(KeyValue, KeyField, 'qryBrowser');
        if frm is TfrmSubParams then
          TfrmSubParams(frm).FormSetDisp(Self, FormID);
        if frm is TfrmSubParamsNo then
          TfrmSubParamsNo(frm).FormSetDispNo(Self, FormID, FormSubName, dc, DataS, FrmCaption);
        if frm is TfrmSubParamsNoDev then
          begin
            TfrmSubParamsNoDev(frm).FormSetDispNo(Self, FormID, FormSubName, dc, DataS, FrmCaption);
            if KeyField > '' then
              TfrmSubParamsNoDev(frm).OpenSpecific(KeyValue, KeyField);
          end;
        if frm is TfrmGenMaintDev then
          begin
            TfrmGenMaintDev(frm).FormSetDispNo(Self, FormID, FormSubName, dc, DataS, FrmCaption);
            if KeyField > '' then
              TfrmGenMaintDev(frm).OpenSpecific(KeyValue, KeyField);
          end;
        // frm.Show;//Modal;
        frm.ShowModal;

        // MessageDlg(inttostr(frm.GetHashCode()), mtWarning, [mbOK], 0);
        // frm.Show;
      finally
        frm.Free;
        DMMain.UpdSecurity(FormSubName);
      end;
    end
  else
    begin
      MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0);
      // DMMain.UpdSecurity(FormSubName);
    end;
end;

procedure TfrmMain.DispPrintExp(E: Exception; Form: String; Text: String);
begin
  // MessageDlg('General Exception Trap', mtError, [mbOK], 0);
  // ShowException(E, ExceptAddr);
  Self.JvLogFile1.Add(E.ToString, Form + ' ' + Text);
end;

procedure TfrmMain.DispPrintExpPass(E: Exception; Form: String; Text: String);
begin
  // MessageDlg('General Exception Trap', mtError, [mbOK], 0);
  // ShowException(E, ExceptAddr);
  Self.JvLogFile3.Add(E.ToString, Form + ' ' + Text);
end;

procedure TfrmMain.GeneralFormExecuteNameWithDefs(FormName: String; memParam: TdxMemData);
var
  frm: TForm;
  fc: TFormClass;
  dc: TFormClass;
  t: Integer;
  VarV: Variant;
begin
  if DMMain.FindSecurity(FormName, LoginGroup, FormID) then
    begin
      try
        fc    := TFormClass(FindClass(FormName));
        frm   := fc.Create(Self);
        for t := 0 to frm.ComponentCount - 1 do
          begin
            VarV := frm.Components[t].Name;
            if memParam.Locate('ComponentName', VarV, []) then
              try
                TField(frm.Components[t]).value := memParam.FieldByName('ComponentValueInt').value;
              except
                TRadioGroup(frm.Components[t]).ItemIndex := memParam.FieldByName('ComponentValueInt').value;
              end;
          end;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity(FormName);
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

/// /////////////////////////////////////

procedure TfrmMain.Button1000Click(Sender: TObject);
var
  WordApp: OleVariant;
  x: Integer;
begin
  Screen.Cursor := crHourglass;
  try
    // Create Word Instance
    WordApp := CreateOleObject('Word.Application');
  except
    ShowMessage('Cannot start MS Word.');
    Screen.Cursor := crDefault;
    exit;
  end;

  try
    // Open a Word Document
    WordApp.Documents.Add(Template := ExtractFilePath(Application.ExeName) + '\' + '12.doc');

    // Show Word
    WordApp.Visible := True;

    // Check if FormField exists and asign your text
    // .
    // if WordApp.ActiveDocument.Bookmarks.Exists("field44") then
    // WordApp.ActiveDocument.FormFields.Item("field44").Result := 'Your Text';

    // for x := 1 to WordApp.ActiveDocument.Fields.Count do
    // begin
    // WordApp.ActiveDocument.Fields[x].Select;
    // WordApp.ActiveDocument.Fields[x].Update;
    // end;

    For x                                               := 1 To WordApp.ActiveDocument.Fields.Count do
      WordApp.ActiveDocument.Fields.Item(x).Result.Text := 'Mlkas ' + inttostr(x);

    WordApp.ActivePrinter := 'PDFCreator';
    WordApp.printOut;

    WordApp.ActiveWindow.Close;
    WordApp.ActiveDocument.Close;
    WordApp.quit;

  finally
    WordApp       := Unassigned;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  // ADOQuery1.Active := True;
  // if ADOQuery1.State in [dsEdit] then
  // begin
  // ADOQuery1.Post;
  // end
  // else
  // begin
  // ADOQuery1.Edit;
  // ADOQuery1Filler.AsString := TButton(Sender).Name;
  //
  // end;
end;

procedure TfrmMain.Button2Click(Sender: TObject);
begin
  // ADOQuery2.Active := True;
  // if ADOQuery2.State in [dsEdit] then
  // begin
  // ADOQuery2.Post;
  // end
  // else
  // begin
  // ADOQuery2.Edit;
  // ADOQuery2Filler.AsString := TButton(Sender).Name;
  // end;

end;

procedure TfrmMain.Button3Click(Sender: TObject);
var
  FStream: TFileStream;
  I, J: Integer;
begin
  FStream := TFileStream.Create('e.xls', fmCreate);
  try
    XlsBeginStream(FStream, 0);
    for I   := 0 to 99 do
      for J := 0 to 99 do
        begin
          XlsWriteCellNumber(FStream, I, J, 34.34);
          // XlsWriteCellRk(FStream, I, J, 3434);
          // XlsWriteCellLabel(FStream, I, J, Format('Cell: %d,%d', [I, J]));
        end;
    XlsEndStream(FStream);
  finally
    FStream.Free;
  end;
end;

procedure TfrmMain.Button4Click(Sender: TObject);
var
  frm: TfrmBForm;
  icc: IFormNameInterface;
  frm0: TfrmSelectVariant;
  frm1: TfrmPasswordDlg;
begin
  frm := TfrmBForm.Create(Self);
  if Supports(frm, IFormNameInterface, icc) then
    MessageDlg(icc.FirstName, mtCustom, [mbOK], 0);
  // Must be freed to be released
  icc := nil;
  frm.Free;

  frm0 := TfrmSelectVariant.Create(Self);
  if Supports(frm0, IFormNameInterface, icc) then
    MessageDlg(icc.FirstName, mtCustom, [mbOK], 0);
  // Must be freed to be released
  icc := nil;
  frm0.Free;

  frm1 := TfrmPasswordDlg.Create(Self);
  if Supports(frm1, IFormNameInterface, icc) then
    MessageDlg(icc.FirstName, mtCustom, [mbOK], 0)
  else
    MessageDlg('Interface not Supported ' + frm1.ClassName, mtCustom, [mbOK], 0);
  // Must be freed to be released
  icc := nil;
  frm1.Free;

end;

procedure TfrmMain.Button5Click(Sender: TObject);
var
  s: String;
begin
  s := '<script language="javascript" src="http://www.eortologio.gr/export_code/eortologio.php?fnt_clr=DarkRed&tbl_wdth=125&tbl_brdrclr=green&tbl_brd=2&td_bgclr=Fuchsia&tbl_cellpading=3&tbl_cellspacing=0></script>';
  // s:='<script language="javascript" src="http://www.eortologio.gr/export_code/eortologio.php?fnt_clr=DarkRed&tbl_wdth=125&tbl_brdrclr=green&tbl_brd=2&td_bgclr=Fuchsia&tbl_cellpading=3&tbl_cellspacing=0&tbl_font=Verdana&tbl_font_size=11&tbl_title_font_size=12&tbl_title_bgcolor=Indigo&tbl_title_font_color=Ivory&&morfi=1&what_day=123&ttl=0&fr1=0&fr2=0&tbl_title=Γιορτάζουν"></script>';
  WBLoadHTML(WebBrowser1, s);
  WebBrowser1.Visible := True;
  WebBrowser1.Enabled := True;
end;

procedure TfrmMain.Button6Click(Sender: TObject);
begin
  JvLogFile2.ShowLog('Leo.sql.out');
end;

procedure TfrmMain.Button7Click(Sender: TObject);
begin
  JvLogFile1.ShowLog('Leo.out');
end;

procedure TfrmMain.Button9Click(Sender: TObject);
begin
  MessageDlg(GetCurrentUserName, mtCustom, [mbOK], 0);
end;

procedure TfrmMain.WBLoadHTML(WebBrowser: TWebBrowser; HTMLCode: string);
var
  sl: TStringList;
  ms: TMemoryStream;
  mf: TFileStream;
begin
  WebBrowser.Navigate('about:blank');
  while WebBrowser.ReadyState < READYSTATE_INTERACTIVE do
    Application.ProcessMessages;

  if Assigned(WebBrowser.Document) then
    begin
      sl := TStringList.Create;
      try
        ms := TMemoryStream.Create;
        try
          sl.Text := HTMLCode;
          sl.SaveToStream(ms);
          ms.Seek(0, 0);
          mf := TFileStream.Create('NTD.html', fmOpenRead);
          // (WebBrowser.Document as IPersistStreamInit).Load(TStreamAdapter.Create(ms)) ;
          (WebBrowser.Document as IPersistStreamInit).Load(TStreamAdapter.Create(mf));
        finally
          ms.Free;
          mf.Free;
        end;
      finally
        sl.Free;
      end;
    end;
end;

/// /////////////////////////////////////
function TfrmMain.InsertApproval(): TModalResult;
var
  frm: TfrmInsApproval;
begin
  frm    := TfrmInsApproval.Create(Self);
  Result := frm.ShowModal;
  frm.Free;
end;

function TfrmMain.InsertApprovalSpec(PratCode: Integer; CardCode: Integer): TModalResult;
var
  frm: TfrmInsApproval;
begin
  frm    := TfrmInsApproval.CreateNewParam(Self, PratCode, CardCode);
  Result := frm.ShowModal;
  frm.Free;
end;

procedure TfrmMain.JvScrollText1Click(Sender: TObject);
begin
  TJvScrollText(Sender).Active := not TJvScrollText(Sender).Active;
end;

function TfrmMain.GetCurrentUserName: string;
const
  cnMaxUserNameLen = 254;
var
  sUserName: string;
  dwUserNameLen: DWORD;
begin
  dwUserNameLen := cnMaxUserNameLen - 1;
  SetLength(sUserName, cnMaxUserNameLen);
  GetUserName(PChar(sUserName), dwUserNameLen);
  SetLength(sUserName, dwUserNameLen);
  Result := sUserName;
end;

function TfrmMain.GetCurrentUserName0(var CurrentUserName: string): Boolean;
var
  BufferSize: DWORD;
  pUser: PChar;
begin
  BufferSize := 0;
  GetUserName(nil, BufferSize);
  pUser := StrAlloc(BufferSize);
  try
    Result          := GetUserName(pUser, BufferSize);
    CurrentUserName := StrPas(pUser);
  finally
    StrDispose(pUser);
  end;
end;

function TfrmMain.GetHelpOther(var Name, Company, RegNo: String): Boolean;
var
  frm: TfrmSelectOther;
  Tmp: Boolean;
begin
  inherited;
  frm := TfrmSelectOther.Create(Self);
  frm.fnHelpOther.Parameters.ParamByName('@PName').value := Name + '%';
  frm.fnHelpOther.Parameters.ParamByName('@PCompany').value := Company + '%';
  frm.fnHelpOther.Parameters.ParamByName('@PRegNo').value := RegNo + '%';

  frm.fnHelpOther.Active := True;
  if frm.fnHelpOther.IsEmpty then
    Tmp := False
  else if frm.fnHelpOther.RecordCount = 1 then
    begin
      Tmp     := True;
      Name    := frm.fnHelpOtherDrvName.AsString;
      Company := frm.fnHelpOtherCompany.AsString;
      RegNo   := frm.fnHelpOtherRegNo.AsString;
    end
  else
    begin
      frm.ShowModal;
      if frm.ModalResult = mrOk then
        begin
          Tmp     := True;
          Name    := frm.fnHelpOtherDrvName.AsString;
          Company := frm.fnHelpOtherCompany.AsString;
          RegNo   := frm.fnHelpOtherRegNo.AsString;
        end
      else
        Tmp := False;
    end;
  frm.Free;
  Result := Tmp;
end;

function TfrmMain.GetHelpOur(var Name, Company, RegNo: String; var NameId, CompanyId, RegNoId: Integer): Boolean;
var
  frm: TfrmSelectOur;
  Tmp: Boolean;
begin
  inherited;
  frm                                                     := TfrmSelectOur.Create(Self);
  frm.fnHelpOur.Parameters.ParamByName('@PName').value    := Name + '%';
  frm.fnHelpOur.Parameters.ParamByName('@PCompany').value := Company + '%';
  frm.fnHelpOur.Parameters.ParamByName('@PRegNo').value   := RegNo + '%';

  frm.fnHelpOur.Active := True;
  if frm.fnHelpOur.IsEmpty then
    Tmp := False
  else if frm.fnHelpOur.RecordCount = 1 then
    begin
      Tmp       := True;
      Name      := frm.fnHelpOurDriversName.AsString;
      Company   := frm.fnHelpOurCompanyName.AsString;
      RegNo     := frm.fnHelpOurRegNo.AsString;
      NameId    := frm.fnHelpOurDrvNameId.AsInteger;
      CompanyId := frm.fnHelpOurCompanyId.AsInteger;
      RegNoId   := frm.fnHelpOurRegNoId.AsInteger;
    end
  else
    begin
      frm.ShowModal;
      if frm.ModalResult = mrOk then
        begin
          Tmp       := True;
          Name      := frm.fnHelpOurDriversName.AsString;
          Company   := frm.fnHelpOurCompanyName.AsString;
          RegNo     := frm.fnHelpOurRegNo.AsString;
          NameId    := frm.fnHelpOurDrvNameId.AsInteger;
          CompanyId := frm.fnHelpOurCompanyId.AsInteger;
          RegNoId   := frm.fnHelpOurRegNoId.AsInteger;
        end
      else
        Tmp := False;
    end;
  frm.Free;
  Result := Tmp;
end;

function TfrmMain.GetHelpPerson(var Name, Company, Identity, Contact: String): Boolean;
var
  frm: TfrmSelectPersons;
  Tmp: Boolean;
begin
  inherited;
  frm                                                     := TfrmSelectPersons.Create(Self);
  frm.fnHelpPerson.Parameters.ParamByName('@PName').value := Name + '%';
  frm.fnHelpPerson.Parameters.ParamByName('@PCompany').value := Company + '%';
  frm.fnHelpPerson.Parameters.ParamByName('@PIdentity').value := Identity + '%';

  frm.fnHelpPerson.Active := True;
  if frm.fnHelpPerson.IsEmpty then
    Tmp := False
  else if frm.fnHelpPerson.RecordCount = 1 then
    begin
      Tmp      := True;
      Name     := frm.fnHelpPersonName.AsString;
      Company  := frm.fnHelpPersonCompany.AsString;
      Identity := frm.fnHelpPersonIdentityNo.AsString;
      Contact  := frm.fnHelpPersonContactWith.AsString;
    end
  else
    begin
      frm.ShowModal;
      if frm.ModalResult = mrOk then
        begin
          Tmp      := True;
          Name     := frm.fnHelpPersonName.AsString;
          Company  := frm.fnHelpPersonCompany.AsString;
          Identity := frm.fnHelpPersonIdentityNo.AsString;
          Contact  := frm.fnHelpPersonContactWith.AsString;
        end
      else
        Tmp := False;
    end;
  frm.Free;
  Result := Tmp;

end;


function TfrmMain.GetHelpWorker(var Name: String; var Surname: String; var Company: string; var Identity: String; var Contact: String; var Contractor_Id: Integer; var Worker_Id: Integer): Boolean;
var
  frm: TfrmSelectWorkers;
  Tmp: Boolean;
begin
  inherited;
  frm := TfrmSelectWorkers.Create(Self);
  frm.fnHelpPerson.Parameters.ParamByName('@PName').value := Name + '%';
  frm.fnHelpPerson.Parameters.ParamByName('@PSurname').value := Surname + '%';
  frm.fnHelpPerson.Parameters.ParamByName('@PCompany').value := Company + '%';
  frm.fnHelpPerson.Parameters.ParamByName('@PIdentity').value := Identity + '%';

  frm.fnHelpPerson.Active := True;
  if frm.fnHelpPerson.IsEmpty then
    Tmp := False
  else if frm.fnHelpPerson.RecordCount = 1 then
    begin
      Tmp      := True;
      Name     := frm.fnHelpPersonName.AsString;
      Surname  := frm.fnHelpPersonSurName.AsString;
      Company  := frm.fnHelpPersonCompany.AsString;
      Identity := frm.fnHelpPersonADT.AsString;
      Contractor_Id := frm.fnHelpPersonContractor_Id.AsInteger;
      Worker_Id := frm.fnHelpPersonWorker_Id.AsInteger;
    end
  else
    begin
      frm.ShowModal;
      if frm.ModalResult = mrOk then
        begin
          Tmp      := True;
          Name     := frm.fnHelpPersonName.AsString;
          Surname  := frm.fnHelpPersonSurName.AsString;
          Company  := frm.fnHelpPersonCompany.AsString;
          Identity := frm.fnHelpPersonADT.AsString;
          Contractor_Id := frm.fnHelpPersonContractor_Id.AsInteger;
          Worker_Id := frm.fnHelpPersonWorker_Id.AsInteger;
        end
      else
        Tmp := False;
    end;
  frm.Free;
  Result := Tmp;

end;



function TfrmMain.GetLibId(RegNo: String): String;
var
  frm: TfrmSelectLib;
  Tmp: string; // TGUID;
begin
  inherited;
  frm                                                := TfrmSelectLib.Create(Self);
  frm.ADOQuery1.Parameters.ParamByName('PReg').value := RegNo + '%';
  // frm.ADOQuery1.Parameters.ParamByName('PReg').Value := '%';
  frm.ADOQuery1.Active := True;
  if frm.ADOQuery1.IsEmpty then
    Tmp := ''
  else if ((frm.ADOQuery1.RecordCount = 1) and (DaysBetween(frm.ADOQuery1LibDateTime.AsDateTime, Date()) < 2)) then
    Tmp := frm.ADOQuery1GId.AsString
  else
    begin
      frm.ShowModal;
      if frm.ModalResult = mrOk then
        Tmp := frm.ADOQuery1GId.AsString
      else
        Tmp := '';
    end;
  frm.Free;
  Result := Tmp;
end;

{ ********************************************* }

{
  Windows NT/2000/XP:

  The GetUserNameEx function retrieves the name of the user or other
  security principal associated with the calling thread.
  You can specify the format of the returned name.
  If the thread is impersonating a client, GetUserNameEx
  returns the name of the client.
}

{ const
  NameUnknown = 0; // Unknown name type.
  NameFullyQualifiedDN = 1;  // Fully qualified distinguished name
  NameSamCompatible = 2; // Windows NT® 4.0 account name
  NameDisplay = 3;  // A "friendly" display name
  NameUniqueId = 6; // GUID string that the IIDFromString function returns
  NameCanonical = 7;  // Complete canonical name
  NameUserPrincipal = 8; // User principal name
  NameCanonicalEx = 9;
  NameServicePrincipal = 10;  // Generalized service principal name
  DNSDomainName = 11;  // DNS domain name, plus the user name }

function TfrmMain.LoggedOnUserNameEx(fFormat: DWORD): string;
var
  UserName: array [0 .. 250] of Char;
  Size: DWORD;
begin
  Size := 250;
  GetUserNameEx(fFormat, @UserName, @Size);
  Result := UserName;
end;

procedure TfrmMain.Button100Click(Sender: TObject);
var
  WA: Word;
begin
  WA     := 3;
  for WA := 0 to 11 do
    MessageDlg(LoggedOnUserNameEx(WA) + ' ' + inttostr(WA), mtError, [mbOK], 0);
end;

procedure TfrmMain.Button10Click(Sender: TObject);
var
  x: string;
begin
  GetCurrentUserName0(x);
  MessageDlg(x, mtCustom, [mbOK], 0);
  ReadLibro;
end;

procedure TfrmMain.Button13Click(Sender: TObject);
begin
  TAppInfo.CleanUpAfterInit;
  Label7.Caption := TAppInfo.GetAppMForm;
end;

procedure TfrmMain.Button14Click(Sender: TObject);
begin
  frmGMapMain.WebBrowser1.Enabled := True;
  frmGMapMain.Show;
end;

procedure TfrmMain.Button15Click(Sender: TObject);
var
  frm: TfrmMainScreen;
begin
  frm := TfrmMainScreen.Create(Self);
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmMain.Button16Click(Sender: TObject);
begin
  Edit6.Text := String2Pho(Edit5.Text);
end;

procedure TfrmMain.Button17Click(Sender: TObject);
begin
  DMMain.cdsVTableFieldsNames.SaveToFile('Leo.xml', dfXMLUTF8);
end;

procedure TfrmMain.Button18Click(Sender: TObject);
begin
  FontDialog1.Font.Name    := GridFont;
  FontDialog1.Font.Charset := GridCharSet;

  if FontDialog1.Execute then
    begin
      GridFont    := FontDialog1.Font.Name;
      GridCharSet := FontDialog1.Font.Charset;
    end;
end;

function TfrmMain.String2Pho(Name: String): String;
var
  x: Integer;
  PhoName: string;
begin
  PhoName   := '';
  for x     := 1 to Length(Name) do
    PhoName := PhoName + Char2Pho(Name[x]);
  Result    := PhoName;
end;

function TfrmMain.Char2Pho(Key: WideChar): WideChar;
var
  I, PosA: Integer;
  kk: AnsiChar;
  KU: string;
begin
  Result := chr(0);
  KU     := Key;
  KU     := WideUpperCase(Key);
  PosA   := Pos(KU, gRegNoGreek);
  if not(PosA = 0) then
    begin
      Result := WideChar(gRegNoLatinFull[PosA]);
    end
  else
    begin
      Result := chr(32);
    end
end;

procedure TfrmMain.actOtherCarsDetExecute(Sender: TObject);
var
  frm: TfrmOtherCarsDet;
begin
  if DMMain.FindSecurity('TfrmOtherCarsDet', LoginGroup, FormID) then
    begin
      try
        frm := TfrmOtherCarsDet.CreateSecurity(Self, FormID);
        frm.AddRec;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmOtherCarsDet');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0);
end;

procedure TfrmMain.actOurCarsDetExecute(Sender: TObject);
var
  frm: TfrmOurCarsDet;
begin
  if DMMain.FindSecurity('TfrmOurCarsDet', LoginGroup, FormID) then
    begin
      try
        frm := TfrmOurCarsDet.CreateSecurity(Self, FormID);
        frm.AddRec;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmOurCarsDet');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0);
end;

procedure TfrmMain.actPersonDetExecute(Sender: TObject);
var
  frm: TfrmPersonDet;
begin
  if DMMain.FindSecurity('TfrmPersonDet', LoginGroup, FormID) then
    begin
      try
        frm := TfrmPersonDet.CreateSecurity(Self, FormID);
        frm.AddRec;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmPersonDet');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0);
end;

function TfrmMain.MessageDlg(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; HelpCtx: Integer): Integer;
begin
  Result := Dialogs.MessageDlg(Msg, DlgType, Buttons, HelpCtx);
  // Dialogs.MessageDlg('My Mess', DlgType, Buttons, HelpCtx);
end;

/// /////////////////////////////////////////

procedure TfrmMain.actReport12Execute(Sender: TObject);
var
  frm: TfrmBRPersons;
begin
  if DMMain.FindSecurity('TfrmBRPersons', LoginGroup, FormID) then
    begin
      frm := TfrmBRPersons.CreateSecurity(Self, FormID);
      try
        frm.cxGrid1Level1.Visible := False;
        frm.cxgrid1Level2.Visible := True;
        frm.cxgrid1Level3.Visible := False;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBRPersons');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.actReport13aExecute(Sender: TObject);
var
  frm: TfrmBRPersons;
begin
  if DMMain.FindSecurity('TfrmBRPersons', LoginGroup, FormID) then
    begin
      frm := TfrmBRPersons.CreateSecurity(Self, FormID);
      try
        frm.cxGrid1Level1.Visible := False;
        frm.cxgrid1Level2.Visible := False;
        frm.cxgrid1Level3.Visible := True;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBRPersons');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.actReport13Execute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmMain.actReport1Execute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmMain.actRepLib0Execute(Sender: TObject);
var
  frm: TfrmBRLibro;
begin
  if DMMain.FindSecurity('TfrmBRLibro', LoginGroup, FormID) then
    begin
      frm := TfrmBRLibro.CreateSecurity(Self, FormID);
      try
        // frm.qryMain.Active        := True;
        frm.cxGrid1Level1.Visible := True;
        // frm.cxgrid1Level2.Visible := False;
        // frm.cxgrid1Level3.Visible := False;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBRLibro');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.actRepLib1Execute(Sender: TObject);
var
  frm: TfrmBRLibro0;
begin
  if DMMain.FindSecurity('TfrmBRLibro0', LoginGroup, FormID) then
    begin
      frm := TfrmBRLibro0.CreateSecurity(Self, FormID);
      try
        // frm.qryMain.Active        := True;
        frm.cxGrid1Level1.Visible := True;
        // frm.cxgrid1Level2.Visible := False;
        // frm.cxgrid1Level3.Visible := False;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBRLibro0');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.actRepLib2Execute(Sender: TObject);
var
  frm: TfrmBRLibro;
begin
  if DMMain.FindSecurity('TfrmBRLibro', LoginGroup, FormID) then
    begin
      frm := TfrmBRLibro.CreateSecurity(Self, FormID);
      try
        // frm.qryMain.Active        := True;
        frm.cxGrid1Level1.Visible := True;
        // frm.cxgrid1Level2.Visible := False;
        // frm.cxgrid1Level3.Visible := False;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBRLibro');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.actReport011Execute(Sender: TObject);
var
  frm: TfrmBRPersons;
begin
  if DMMain.FindSecurity('TfrmBRPersons', LoginGroup, FormID) then
    begin
      frm := TfrmBRPersons.CreateSecurity(Self, FormID);
      try
        // frm.qryMain.Active := True;
        frm.cxGrid1Level1.Visible := True;
        frm.cxgrid1Level2.Visible := False;
        frm.cxgrid1Level3.Visible := False;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBRPersons');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.actReport2Execute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmMain.actReport21Execute(Sender: TObject);
var
  frm: TfrmBROther;
begin
  if DMMain.FindSecurity('TfrmBROther', LoginGroup, FormID) then
    begin
      frm := TfrmBROther.CreateSecurity(Self, FormID);
      try
        // frm.qryMain.Active        := True;
        frm.cxGrid1Level1.Visible := True;
        frm.cxgrid1Level2.Visible := False;
        frm.cxgrid1Level3.Visible := False;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBROther');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.actReport61Execute(Sender: TObject);
var
  frm: TfrmBRWorkPermits;
begin
  if DMMain.FindSecurity('TfrmBRWorkPermits', LoginGroup, FormID) then
    begin
      frm := TfrmBRWorkPermits.CreateSecurity(Self, FormID);
      try
        frm.qryMain.Active        := True;
        frm.cxGrid1Level1.Visible := False;
        frm.cxgrid1Level2.Visible := False;
        frm.cxgrid1Level3.Visible := False;
        frm.cxgrid1Level4.Visible := False;
        frm.cxgrid1Level5.Visible := True;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBRWorkPermits');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;




procedure TfrmMain.actReport62Execute(Sender: TObject);
var
  frm: TfrmBRWorkPermits;
begin
  if DMMain.FindSecurity('TfrmBRWorkPermits', LoginGroup, FormID) then
    begin
      frm := TfrmBRWorkPermits.CreateSecurity(Self, FormID);
      try
        frm.qryMain.Active        := True;
        frm.cxGrid1Level1.Visible := False;
        frm.cxgrid1Level2.Visible := True;
        frm.cxgrid1Level3.Visible := False;
        frm.cxgrid1Level4.Visible := False;
        frm.cxgrid1Level5.Visible := False;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBRWorkPermits');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.actReport63Execute(Sender: TObject);
var
  frm: TfrmBRWorkPermits;
begin
  if DMMain.FindSecurity('TfrmBRWorkPermits', LoginGroup, FormID) then
    begin
      frm := TfrmBRWorkPermits.CreateSecurity(Self, FormID);
      try
//        frm.qryMain.Active        := True;
        frm.cxGrid1Level1.Visible := False;
        frm.cxgrid1Level2.Visible := False;
        frm.cxgrid1Level3.Visible := True;
        frm.cxgrid1Level4.Visible := False;
        frm.cxgrid1Level5.Visible := False;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBRWorkPermits');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.actReport22Execute(Sender: TObject);
var
  frm: TfrmBROther;
begin
  if DMMain.FindSecurity('TfrmBROther', LoginGroup, FormID) then
    begin
      frm := TfrmBROther.CreateSecurity(Self, FormID);
      try
        // frm.qryMain.Active        := True;
        frm.cxGrid1Level1.Visible := False;
        frm.cxgrid1Level2.Visible := True;
        frm.cxgrid1Level3.Visible := False;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBROther');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.actReport23Execute(Sender: TObject);
var
  frm: TfrmBROther;
begin
  if DMMain.FindSecurity('TfrmBROther', LoginGroup, FormID) then
    begin
      frm := TfrmBROther.CreateSecurity(Self, FormID);
      try
        // frm.qryMain.Active        := True;
        frm.cxGrid1Level1.Visible := False;
        frm.cxgrid1Level2.Visible := False;
        frm.cxgrid1Level3.Visible := True;
        frm.cxgrid1Level4.Visible := False;
        frm.cxgrid1Level5.Visible := False;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBROther');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.actReport24Execute(Sender: TObject);
var
  frm: TfrmBROther;
begin
  if DMMain.FindSecurity('TfrmBROther', LoginGroup, FormID) then
    begin
      frm := TfrmBROther.CreateSecurity(Self, FormID);
      try
        // frm.qryMain.Active        := True;
        frm.cxGrid1Level1.Visible := False;
        frm.cxgrid1Level2.Visible := False;
        frm.cxgrid1Level3.Visible := False;
        frm.cxgrid1Level4.Visible := True;
        frm.cxgrid1Level5.Visible := False;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBROther');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.actReport25Execute(Sender: TObject);
var
  frm: TfrmBROther;
begin
  if DMMain.FindSecurity('TfrmBROther', LoginGroup, FormID) then
    begin
      frm := TfrmBROther.CreateSecurity(Self, FormID);
      try
        // frm.qryMain.Active        := True;
        frm.cxGrid1Level1.Visible := False;
        frm.cxgrid1Level2.Visible := False;
        frm.cxgrid1Level3.Visible := False;
        frm.cxgrid1Level4.Visible := False;
        frm.cxgrid1Level5.Visible := True;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBROther');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.actReport3Execute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmMain.actReport51Execute(Sender: TObject);
var
  frm: TfrmBRWorkers;
begin
  if DMMain.FindSecurity('TfrmBRWorker', LoginGroup, FormID) then
    begin
      frm := TfrmBRWorkers.CreateSecurity(Self, FormID);
      try
        // frm.qryMain.Active        := True;
        frm.cxGrid1Level1.Visible := True;
        frm.cxgrid1Level2.Visible := False;
        frm.cxgrid1Level3.Visible := False;
//        frm.cxgrid1Level4.Visible := False;
//        frm.cxgrid1Level5.Visible := True;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBRWorker');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;


procedure TfrmMain.actReport52Execute(Sender: TObject);
var
  frm: TfrmBRWorkers;
begin
  if DMMain.FindSecurity('TfrmBRWorker', LoginGroup, FormID) then
    begin
      frm := TfrmBRWorkers.CreateSecurity(Self, FormID);
      try
        // frm.qryMain.Active        := True;
        frm.cxGrid1Level1.Visible := False;
        frm.cxgrid1Level2.Visible := True;
        frm.cxgrid1Level3.Visible := False;
//        frm.cxgrid1Level4.Visible := False;
//        frm.cxgrid1Level5.Visible := True;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBRWorker');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.actReport31Execute(Sender: TObject);
var
  frm: TfrmBROur;
begin
  if DMMain.FindSecurity('TfrmBROur', LoginGroup, FormID) then
    begin
      frm := TfrmBROur.CreateSecurity(Self, FormID);
      try
        frm.cxGrid1Level1.Visible := True;
        frm.cxgrid1Level2.Visible := False;
        frm.cxgrid1Level3.Visible := False;
        frm.cxgrid1Level4.Visible := False;
        frm.cxgrid1Level5.Visible := False;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBROur');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.actReport32Execute(Sender: TObject);
var
  frm: TfrmBROur;
begin
  if DMMain.FindSecurity('TfrmBROur', LoginGroup, FormID) then
    begin
      frm := TfrmBROur.CreateSecurity(Self, FormID);
      try
        frm.cxGrid1Level1.Visible := False;
        frm.cxgrid1Level2.Visible := True;
        frm.cxgrid1Level3.Visible := False;
        frm.cxgrid1Level4.Visible := False;
        frm.cxgrid1Level5.Visible := False;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBROur');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.actReport33Execute(Sender: TObject);
var
  frm: TfrmBROur;
begin
  if DMMain.FindSecurity('TfrmBROur', LoginGroup, FormID) then
    begin
      frm := TfrmBROur.CreateSecurity(Self, FormID);
      try
        // frm.qryMain.Active        := True;
        frm.cxGrid1Level1.Visible := False;
        frm.cxgrid1Level2.Visible := False;
        frm.cxgrid1Level3.Visible := True;
        frm.cxgrid1Level4.Visible := False;
        frm.cxgrid1Level5.Visible := False;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBROur');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.actReport34Execute(Sender: TObject);
var
  frm: TfrmBROur;
begin
  if DMMain.FindSecurity('TfrmBROur', LoginGroup, FormID) then
    begin
      frm := TfrmBROur.CreateSecurity(Self, FormID);
      try
        // frm.qryMain.Active        := True;
        frm.cxGrid1Level1.Visible := False;
        frm.cxgrid1Level2.Visible := False;
        frm.cxgrid1Level3.Visible := False;
        frm.cxgrid1Level4.Visible := True;
        frm.cxgrid1Level5.Visible := False;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBROur');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.actReport35Execute(Sender: TObject);
var
  frm: TfrmBROur;
begin
  if DMMain.FindSecurity('TfrmBROur', LoginGroup, FormID) then
    begin
      frm := TfrmBROur.CreateSecurity(Self, FormID);
      try
        // frm.qryMain.Active        := True;
        frm.cxGrid1Level1.Visible := False;
        frm.cxgrid1Level2.Visible := False;
        frm.cxgrid1Level3.Visible := False;
        frm.cxgrid1Level4.Visible := False;
        frm.cxgrid1Level5.Visible := True;
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBROur');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.ReadLibro;
Var
  Path, PathDone, fn: String;
  SR: TSearchRec;
  DirList: TStrings;
begin
  Path     := gpSourceDir; // 'C:\CyclonData\'; //Get the path of the selected file
  PathDone := gpDestinationDir; // 'C:\Done\'; //Get the path of the selected file
  DirList  := TStringList.Create;
  try
    if FindFirst(Path + '*.txt', faArchive, SR) = 0 then
      begin
        repeat
          DirList.Add(SR.Name); // Fill the list
        until FindNext(SR) <> 0;
        FindClose(SR);
      end;
    // do your stuff
    for fn in DirList do
      ReadLibroFile(Path + fn, PathDone + fn);
  finally
    DirList.Free;
  end;
end;

procedure TfrmMain.ReadLibroFile(FileName: String; DestFileName: String);
var
  myFile: TextFile;
  Text: string;
  sl: TStringList;
  DtTmp: TDateTime;
begin
  // Try to open the Test.txt file for writing to
  AssignFile(myFile, FileName);
  Reset(myFile);
  // Display the file contents
  while not Eof(myFile) do
    begin
      ReadLn(myFile, Text);
      sl := TStringList.Create;
      Split(gpDelimiter[1], Text, sl);

      TRawLibInsert.Parameters.ParamByName('PLibId').value := strtoint(sl[0]);
      TRawLibInsert.Parameters.ParamByName('PLibRegNo').value := sl[3];
      TRawLibInsert.Parameters.ParamByName('PLibWeight').value := strtoint(Trim(sl[16]));
      try
        TRawLibInsert.Parameters.ParamByName('PLibWeight1').value := strtoint(Trim(sl[14]))
      except
        TRawLibInsert.Parameters.ParamByName('PLibWeight1').value := 0
      end;
      try
        TRawLibInsert.Parameters.ParamByName('PLibWeight2').value := strtoint(Trim(sl[15]));
      except
        TRawLibInsert.Parameters.ParamByName('PLibWeight2').value := 0;
      end;
      TRawLibInsert.Parameters.ParamByName('PLibWeight0').value := 0;
      TRawLibInsert.Parameters.ParamByName('PArThes').value := strtoint(Trim(sl[1]));

      if sl[1] = '2' then
        try
          DtTmp := StrToDateTime(sl[12] + ' ' + sl[13])
        except
          DtTmp := StrToDate(sl[12])
        end
      else
        try
          DtTmp := StrToDateTime(sl[10] + ' ' + sl[11]);
        except
          DtTmp := StrToDate(sl[10]);
        end;
    end;

  // Close the file for the last time
  TRawLibInsert.Parameters.ParamByName('PLibDateTime').value := DtTmp;

  TRawLibInsert.ExecSQL;
  CloseFile(myFile);

  try
    TFile.Move(FileName, DestFileName);
  except
    try
      TFile.Move(FileName, DestFileName + '.000');
    except
      TFile.Delete(FileName);
    end;
  end;

end;

procedure TfrmMain.Split(Delimiter: Char; Str: string; ListOfStrings: TStrings);
begin
  ListOfStrings.Clear;
  ListOfStrings.Delimiter       := Delimiter;
  ListOfStrings.StrictDelimiter := True; // Requires D2006 or newer.
  ListOfStrings.DelimitedText   := Str;
end;

//procedure TfrmMain.actReport61Execute(Sender: TObject);
//var
//  frm: TfrmBROur;
//begin
//  if DMMain.FindSecurity('TfrmBROur', LoginGroup, FormID) then
//    begin
//      frm := TfrmBROur.CreateSecurity(Self, FormID);
//      try
//        // frm.qryMain.Active        := True;
//        frm.cxGrid1Level1.Visible := False;
//        frm.cxgrid1Level2.Visible := False;
//        frm.cxgrid1Level3.Visible := False;
//        frm.cxgrid1Level4.Visible := False;
//        frm.cxgrid1Level5.Visible := True;
//        frm.ShowModal;
//      finally
//        frm.Free;
//        DMMain.UpdSecurity('TfrmBROur');
//      end;
//    end
//  else
//    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
//end;

procedure TfrmMain.Button19Click(Sender: TObject);
begin
  actReport13aBatch('kapassle@moh.gr', 1);
end;

procedure TfrmMain.actReport13aBatch(mailto: string; DaysBefore: Integer = 1);
var
  frm: TfrmBRPersons;
  tmpName: String;
  tmpDateF, tmpDateT: String;
  Dt: TDateTime;
  DateF: Double;
begin
  if DMMain.FindSecurity('TfrmBRPersons', 0, FormID) then
    begin
      frm := TfrmBRPersons.CreateSecurity(Self, FormID);
      try
        frm.cxGrid1Level1.Visible := False;
        frm.cxgrid1Level2.Visible := False;
        frm.cxgrid1Level3.Visible := True;
        tmpName                   := 'AirLift-' + DateToStrNum(now) + '.xls';
        DateF                     := Double(now);
        DateF                     := Trunc(DateF);
        // tmpDateF,tmpDateT
        tmpDateF := FloattoStrF((DateF - (2 + DaysBefore)), ffFixed, 5, 0);
        tmpDateT := FloattoStrF((DateF - 2), ffFixed, 5, 0);
        frm.FormRemoteActivate('[DateTimeIn] >= ' + tmpDateF + 'AND [DateTimeIn] <= ' + tmpDateT, tmpName);
        // frm.FormRemoteActivate('[DateTimeIn] >= 43670 AND [DateTimeIn] <= 43676',tmpName);
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmBRPersons');
        SendMailSMTP(mailto, tmpName);
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMain.SendMailTTT(mailto: string; FileName: String);
var
  StSql, FaxAd: String;
  sl: TStringList;
  StrSubject, StrAttachment: String;
  x, x1: String;
  x2, x10: Integer;
  Fs: TFormatSettings;
  MustExistExists: Boolean;
  nMustExistReport: String;
  NewMessage: IRwMapiMailMessage;
  Atc: IRwMAPIAttachment;
  AttInt: IRwMAPIProperty;
  AttID: TRwMAPIEntryID;
begin
  inherited;
  try
    try
      RwMAPISession1.LogonInfo.UseExtendedMapi := RwMAPISession1.MapiInfo.ExtendedMAPI;
      RwMAPISession1.Logon;

      NewMessage         := RwMAPISession1.CreateMessage(ftDraft) as IRwMapiMailMessage;
      NewMessage.RecipTo := mailto;
      NewMessage.Subject := 'AirLift';
      NewMessage.Body    := 'AirLift';
      NewMessage.AddFileAttachment('.\' + FileName);
      NewMessage.SubmitMessage(astMoveToSentItems);
    except
      on E: ERwException do
        begin
          // MemoFld0.Lines.Add('Exception class name = ' + E.ClassName);
          // MemoFld0.Lines.Add('Exception message = ' + E.Message);
        end;
    end;
  finally
    RwMAPISession1.Logoff;
  end;
end;


procedure TfrmMain.SendMailSMTP(mailto: string; FileName: String);
var TempMess:TIdMessage;
    TempMailList:TIdEMailAddressList;
    TempMailItem:TIdEMailAddressItem;
    a:TEncoding;
    I: Integer;
    Att : TIdAttachmentFile;
begin
    IdSMTP1.Username := 'kapassle@moh.gr';
    IdSMTP1.Password := '6912043';

    IdSMTP1.Host:='172.24.1.212';
    if IdSMTP1.Connected = False then
       try
         IdSMTP1.Connect;
       except on E: Exception do
       begin
          exit;
       end;
       end;

    TempMess := TIdMessage.Create(self);
    TempMess.From.Address     := 'kapassle@moh.gr';
    TempMess.From.Name        := 'GateKeeper';
    TempMess.Recipients.EMailAddresses := mailto;

//    if edtFromAddr.Text > '' then
//       TempMess.From.Address     := edtFromAddr.Text;
//    if edtFromName.Text > '' then
//       TempMess.From.DisplayName := edtFromName.Text;
//    if edtEncodeing.Text > '' then
//       TempMess.CharSet := edtEncodeing.Text;




    Att := TIdAttachmentFile.Create(TempMess.MessageParts, FileName) ;

    TempMess.CharSet    :='windows-1253';

    TempMess.Subject          := 'AirLift';

//    TempMess.ContentType := 'text/plain';
    TempMess.ContentType := 'multipart/mixed';
    TempMess.CharSet := 'utf-8';
    TempMess.ContentTransferEncoding := 'quoted-printable';

    try
      IdSMTP1.Send(TempMess);
    except on E: Exception do
    end;
    IdSMTP1.Disconnect;

end;

function TfrmMain.ConvertRTFToAsciiText(aString:string):string;
var ss:tstringstream;
begin
ss:= TStringstream.Create( aString );
try
Richedit1.PlainText := FALSE;
Richedit1.Lines.LoadFromStream( ss );
finally
ss.free
end;
Result := RichEdit1.Text;
end;

//var varString:string;
//begin
//     RichEdit1.Text:='';
//     Richedit1.PlainText := FALSE;
//     RichEdit1.Text := aString;
//     Richedit1.PlainText := TRUE;
//     varString:=RichEdit1.Text;
//     Result := String(varString);
//end;



initialization

begin
  //
end;

finalization

begin
  // DMMain.Free;
  TPicture.UnregisterGraphicClass(TGIFImage);
end;

{
  TActionClientItem (Add)
  ContextItems - TActionClients
  ActionBars
  ActionManager
}


// mgModalWaitDlg1.Show;
// I := 0;
// while I < 10000 do
// begin
// mgModalWaitDlg1.DialogMessage := 'Please, wait while count is in progress...: '+IntToStr(I);
// I := i+1;
// Application.ProcessMessages;
// end;
// if I = 10000 then
// mgModalWaitDlg1.Hide;

end.
