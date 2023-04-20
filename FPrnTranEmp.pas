unit FPrnTranEmp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, DB,
  ADODB, ActnList, QRExport, QRPDFFilt, ComCtrls, Winapi.ShellAPI,
  RKinhs32, // RKinhs32In,
  rKinhsKK3, // rKinhs7,
  rKinhsKK8, rKinhsKK88, rKinhsKK9, rKinhsKK22,
  fKinhsKK88a, Tran, TranD,
  ExtCtrls, QRCtrls, Grids, QRPrntr,
  DBGrids, OleServer, Outlook2000, StdCtrls, StrUtils, FPrnBase, Menus,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  cxNavigator, RBaseAvinCard, Vcl.ActnMenus,
  uRwMapiSession, uRwMapiInterfaces, uRwSysUtils, uRwEasyMAPI, cxClasses,
  JvBaseDlg, JvSelectDirectory, dxPScxCommon, dxSkinsCore, dxSkinBlack,
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

type
  TfrmPrnTranEmp = class(TFrmPrnBase)
    dxBarManager1: TActionManager;
    ActionList1: TActionList;
    actClose: TAction;
    actPreview: TAction;
    qryTran: TADOQuery;
    dtsTran: TDataSource;
    dxComponentPrinter1: TdxComponentPrinter;
    actPrint32: TAction;
    actMailCreate: TAction;
    qryEmployees: TADOQuery;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    PageControl1: TPageControl;
    TsGrid: TTabSheet;
    TsEmployees: TTabSheet;
    dsEmployees: TDataSource;
    StatusBar1: TStatusBar;
    actMailSend: TAction;
    actPrintOnlyPrint: TAction;
    Panel2: TPanel;
    Memo1: TMemo;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    SaveDialog1: TSaveDialog;
    ActionMainMenuBar1: TActionMainMenuBar;
    RwMapiSession1: TRwMAPISession;
    TsMemo: TTabSheet;
    MemoSql: TMemo;
    qryTranMerchantMerchantId: TIntegerField;
    qryTranMerchantName: TWideStringField;
    qryTranMerchantStreet: TWideStringField;
    qryTranMerchantZip: TWideStringField;
    qryTranMerchantCity: TWideStringField;
    qryTranMerchantAFM: TWideStringField;
    qryTranMerchantDOY: TWideStringField;
    qryTranMerchantIsTest: TBooleanField;
    qryTranMerchantAreaId: TIntegerField;
    qryTranMerchantSAPCode: TWideStringField;
    qryTranMerchantMerchantCode: TWideStringField;
    qryTranMerchantSalesMenId: TIntegerField;
    qryTranMerchantDeleted: TBooleanField;
    qryTranMerchantInActive: TBooleanField;
    qryTranMerchantStopSales: TBooleanField;
    qryTranStationStationId: TIntegerField;
    qryTranStationName: TWideStringField;
    qryTranStationStreet: TWideStringField;
    qryTranStationZIP: TWideStringField;
    qryTranStationCity: TWideStringField;
    qryTranStationAreaId: TIntegerField;
    qryTranStationSalesMenId: TIntegerField;
    qryTranStationDeleted: TBooleanField;
    qryTranStationInActive: TBooleanField;
    qryTranStationStopSales: TBooleanField;
    qryTranTerminalTerminalCode: TWideStringField;
    qryTranTerminalTerminalId: TIntegerField;
    qryTranTerminalSerialNo: TWideStringField;
    qryTranCUSTOMERCUSTOMERId: TIntegerField;
    qryTranCUSTOMERName: TWideStringField;
    qryTranCUSTOMERZip: TWideStringField;
    qryTranCUSTOMERStreet: TWideStringField;
    qryTranCUSTOMERCity: TWideStringField;
    qryTranCUSTOMERAFM: TWideStringField;
    qryTranCUSTOMERDOY: TWideStringField;
    qryTranCUSTOMERAreaId: TIntegerField;
    qryTranCUSTOMERCGroupId: TIntegerField;
    qryTranCUSTOMERCClassId: TIntegerField;
    qryTranCUSTOMERBranchId: TIntegerField;
    qryTranCUSTOMERSAPCode: TWideStringField;
    qryTranCUSTOMERIsActive: TBooleanField;
    qryTranCUSTOMERSalesMenId: TIntegerField;
    qryTranCUSTOMERIsTest: TBooleanField;
    qryTranCUSTOMERAreaBId: TIntegerField;
    qryTranCUSTOMERHASDETAILEMP: TBooleanField;
    qryTranCUSTOMERCUSTOMEROFF: TBooleanField;
    qryTranTRANTRANDATE: TDateTimeField;
    qryTranTRANACARDID: TIntegerField;
    qryTranTRANMerchantId: TIntegerField;
    qryTranTRANStationId: TIntegerField;
    qryTranTRANTerminalId: TIntegerField;
    qryTranTRANAmount: TFloatField;
    qryTranTRANSitemId: TIntegerField;
    qryTranTRANQuantity: TFloatField;
    qryTranTRANIsAuto: TBooleanField;
    qryTranTRANStationUPD: TBooleanField;
    qryTranTRANACARDUPD: TBooleanField;
    qryTranTRANIsVoid: TBooleanField;
    qryTranTRANBatchNo: TIntegerField;
    qryTranTRANCommissionUpd: TBooleanField;
    qryTranTRANStationUPDBT: TIntegerField;
    qryTranTRANAcardUPDBT: TIntegerField;
    qryTranTRANCommissionUPDBT: TIntegerField;
    qryTranTRANTranTime: TDateTimeField;
    qryTranTRANIsTyped: TBooleanField;
    qryTranTRANDiscountUPD: TBooleanField;
    qryTranTRANDiscountUPDBT: TIntegerField;
    qryTranTRANDisQuantity: TFloatField;
    qryTranTRANDisAmount: TFloatField;
    qryTranTRANPelaDailyUPD: TBooleanField;
    qryTranTRANPelaDailyUPDBT: TIntegerField;
    qryTranACARDACARDID: TIntegerField;
    qryTranACARDACARDCODE: TWideStringField;
    qryTranACARDCustimerId: TIntegerField;
    qryTranACARDVTypeId: TIntegerField;
    qryTranACARDREGNO: TWideStringField;
    qryTranACARDACARDHOLDER: TWideStringField;
    qryTranACARDIsActive: TBooleanField;
    qryTranACARDEMPLOYEESID: TIntegerField;
    qryTranACARDCostCenterId: TIntegerField;
    qryTranVTYPEVTYPEID: TIntegerField;
    qryTranVTYPEDescr: TWideStringField;
    qryTranREGNOSEQREGNOSEQID: TIntegerField;
    qryTranREGNOSEQREGNO: TWideStringField;
    qryTranTRANTRANID: TIntegerField;
    qryTranTRANKMBEFORE: TIntegerField;
    qryTranTRANKMAFTER: TIntegerField;
    qryTranTRANREFSTR: TWideStringField;
    qryTranTRANUNITPRICE: TFloatField;
    qryTranSITEMCODEINTERMINAL: TIntegerField;
    qryTranSITEMDESCR: TWideStringField;
    qryTranSITEMIGROUPID: TIntegerField;
    qryTranIGROUPNAME: TWideStringField;
    qryTranEMPLOYEESNAME: TWideStringField;
    qryTranEMPLOYEESMhtrId: TIntegerField;
    qryTranEMPLOYEESSurName: TWideStringField;
    qryTranEMPLOYEESAddress: TWideStringField;
    qryTranEMPLOYEESTK: TWideStringField;
    qryTranEMPLOYEESTOWN: TWideStringField;
    qryTranEMPLOYEESAFM: TWideStringField;
    qryTranEMPLOYEESDOY: TWideStringField;
    qryTranCostCenterCCName: TWideStringField;
    qryTranCostCenterCCNameFull: TWideStringField;
    qryEmployeesAcardEmployeesId: TIntegerField;
    qryEmployeesEMPLOYEESNAME: TWideStringField;
    qryEmployeesEMPLOYEESMhtrId: TIntegerField;
    qryEmployeesEMPLOYEESSurName: TWideStringField;
    qryEmployeesEMPLOYEESAddress: TWideStringField;
    qryEmployeesEMPLOYEESTK: TWideStringField;
    qryEmployeesEMPLOYEESTOWN: TWideStringField;
    qryEmployeesEMPLOYEESAFM: TWideStringField;
    qryEmployeesEMPLOYEESDOY: TWideStringField;
    qryEmployeesEMPLOYEESSendMail: TBooleanField;
    qryEmployeesEMPLOYEESMailAddr: TWideStringField;
    qryTranAcardAcardCodeFull: TWideStringField;
    qryTranEMPLOYEESSendPrint: TBooleanField;
    qryTranEMPLOYEESSendMail: TBooleanField;
    qryTranEMPLOYEESMailAddr: TWideStringField;
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
    cxGrid1DBTableView1EMPLOYEESNAME: TcxGridDBColumn;
    cxGrid1DBTableView1EMPLOYEESMhtrId: TcxGridDBColumn;
    cxGrid1DBTableView1EMPLOYEESSurName: TcxGridDBColumn;
    cxGrid1DBTableView1EMPLOYEESAddress: TcxGridDBColumn;
    cxGrid1DBTableView1EMPLOYEESTK: TcxGridDBColumn;
    cxGrid1DBTableView1EMPLOYEESTOWN: TcxGridDBColumn;
    cxGrid1DBTableView1EMPLOYEESAFM: TcxGridDBColumn;
    cxGrid1DBTableView1EMPLOYEESDOY: TcxGridDBColumn;
    cxGrid1DBTableView1CostCenterCCName: TcxGridDBColumn;
    cxGrid1DBTableView1CostCenterCCNameFull: TcxGridDBColumn;
    cxGrid1DBTableView1AcardAcardCodeFull: TcxGridDBColumn;
    cxGrid1DBTableView1EMPLOYEESSendPrint: TcxGridDBColumn;
    cxGrid1DBTableView1EMPLOYEESSendMail: TcxGridDBColumn;
    cxGrid1DBTableView1EMPLOYEESMailAddr: TcxGridDBColumn;
    qryEmployeesEMPLOYEESSendPrint: TBooleanField;
    actOutFolder: TAction;
    actCreateFolder: TAction;
    SaveDialog10: TJvSelectDirectory;
    dxComponentPrinter1Link1: TdxGridReportLink;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Memo3: TMemo;
    Memo2: TMemo;
    ProgressBar2: TProgressBar;
    actQrDesign: TAction;
    Button1: TButton;
    actToExcel: TAction;
    procedure FormShow(Sender: TObject);
    procedure actPrint32Execute(Sender: TObject);
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure actCloseExecute(Sender: TObject);
    procedure actPreviewExecute(Sender: TObject);
    procedure actMailCreateExecute(Sender: TObject);
    procedure SetStatusText(Text: String; Index: Integer);
    // procedure SendEmail(EmailAd, PelaName, SubjectStr, AttachmentFile: String);
    procedure actMailSendExecute(Sender: TObject);
    procedure actPrintOnlyPrintExecute(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1Customization(Sender: TObject);
    procedure actExcell88aExecute(Sender: TObject);
    procedure actPrint002Execute(Sender: TObject);
    procedure actPrint007Execute(Sender: TObject);
    procedure actPrint008Execute(Sender: TObject);
    procedure actPrint022Execute(Sender: TObject);
    procedure actPrint088Execute(Sender: TObject);
    procedure PrintOrPdf(Report: TrptBaseAvinCard);
    procedure ToPdf(Report: TrptBaseAvinCard);
    procedure ToPdf2(Report: TrptBaseAvinCard; FileName: String);
    procedure LoadImage(Form: TrptBaseAvinCard);

    procedure SendFaxGen(FaxNo, PelaName, SubjectStr: string; slx: TStringList);
    procedure SendPrintGen(FaxNo, PelaName, SubjectStr: string; slx: TStringList);
    procedure SendEmailGen(EmailAd, PelaName, SubjectStr: string; slx: TStringList);

    procedure ExpandRepList(InitList: TStringList; ExpandedLiteral: string; var OutList: TStringList);
    procedure ExpandRepStr(InitStr: String; ExpandedLiteral: string; var OutString: String);

    procedure PrintSplitReport(Report: TrptBaseAvinCard; VarDataSet: TDataSet; RepSqlName: string; FieldName: string; FilePath: string; PreFileName: string; PostFileName: string;
      PreSql: string; PostSql: string; ChPBar: TProgressBar);

    procedure PrnFaxSendGen(VarDataSet: TDataSet; Subject: String; FldCode: String; FldMail: String; FldFax: String; ChkMail: String; ChkFax: String; ChkPrint: String;
      FilePath: string; ChPBar: TProgressBar; TabAct: TTabSheet; TabCont: TPageControl; MemoFld0: TMemo; MemoFld1: TMemo; MustExistReport: String; RepList: TStringList);

    procedure actPrint8PDFExecute(Sender: TObject);
    procedure actOutFolderExecute(Sender: TObject);
    procedure actCreateFolderExecute(Sender: TObject);
    procedure actQrDesignExecute(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
      var AHandled: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure actToExcelExecute(Sender: TObject);
  private
    FxPath: TFileName;
    FOnlyPrintPdf: Boolean;
    FOnlyEmailPdf: Boolean;
    FOnlyFaxPdf: Boolean;
    FGlobalFileName: String;
    FGlobalPdf: Boolean;
    procedure OldSendEmail(EmailAd, PelaName, SubjectStr, AttachmentFile: String);
    procedure SetxPath(const Value: TFileName);
    procedure SetOnlyEmailPdf(const Value: Boolean);
    procedure SetOnlyFaxPdf(const Value: Boolean);
    procedure SetOnlyPrintPdf(const Value: Boolean);
    procedure SetGlobalFileName(const Value: String);
    procedure SetGlobalPdf(const Value: Boolean);
    { Private declarations }
  public
    FrDateSt: TDateTime;
    ToDateSt: TDateTime;
    FrDate: TDateTime;
    ToDate: TDateTime;

    SqlText: String;
    ExecQuery: Integer;

    a, aa, b, bCor: AnsiString;
    CustStr, TranStr, TranStrPlusCust, LocalPath: AnsiString;

    property GlobalPdf: Boolean read FGlobalPdf write SetGlobalPdf;
    property GlobalFileName: String read FGlobalFileName write SetGlobalFileName;

    property xPath: TFileName read FxPath write SetxPath;
    property OnlyPrintPdf: Boolean read FOnlyPrintPdf write SetOnlyPrintPdf;
    property OnlyEmailPdf: Boolean read FOnlyEmailPdf write SetOnlyEmailPdf;
    property OnlyFaxPdf: Boolean read FOnlyFaxPdf write SetOnlyFaxPdf;
  end;

implementation

uses Common, FMain;

{$R *.dfm}

procedure TfrmPrnTranEmp.FormShow(Sender: TObject);
Var
  a: AnsiString;
  ac: TCursor;
Begin
  Try
    LocalPath := ExtractFilePath(Application.ExeName) + 'Temp\';

    DoCursorPush(crSQLWait);

    MemoSql.Lines.Add('Trans');
    MemoSql.Lines.Add(qryTran.SQL.Text);
    MemoSql.Lines.Add(' ');
    MemoSql.Lines.Add('Employees');
    MemoSql.Lines.Add(qryEmployees.SQL.Text);
    MemoSql.Lines.Add(' ');

    // qry1Station.Active := True;
    // qry1Merchant.Active := True;
    // qry1Customer.Active := True;

    if ExecQuery = 0 then
      begin
        PageControl1.ActivePage := TsGrid;
        qryTran.Active          := True;
        qryEmployees.Active     := True;
        Self.Caption            := Self.Caption + ' (' + IntToStr(qryTran.RecordCount) + ' ' + ' E:' + IntToStr(qryEmployees.RecordCount) + ')';
      end
    else
      begin
        PageControl1.ActivePage := TsMemo;
        qryEmployees.Active     := True;
      end;
  Finally
    DoCursorPop;
  End;
end;

procedure TfrmPrnTranEmp.qryTranCalcFields(DataSet: TDataSet);
begin
  // qryTranFullCardNo.AsString:=ReturnFullIdNo(qryTranAcardCode.AsInteger);
end;

procedure TfrmPrnTranEmp.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrnTranEmp.actPreviewExecute(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfrmPrnTranEmp.SetGlobalFileName(const Value: String);
begin
  FGlobalFileName := Value;
end;

procedure TfrmPrnTranEmp.SetGlobalPdf(const Value: Boolean);
begin
  FGlobalPdf := Value;
end;

procedure TfrmPrnTranEmp.SetOnlyEmailPdf(const Value: Boolean);
begin
  FOnlyEmailPdf := Value;
end;

procedure TfrmPrnTranEmp.SetOnlyFaxPdf(const Value: Boolean);
begin
  FOnlyFaxPdf := Value;
end;

procedure TfrmPrnTranEmp.SetOnlyPrintPdf(const Value: Boolean);
begin
  FOnlyPrintPdf := Value;
end;

procedure TfrmPrnTranEmp.SetStatusText(Text: String; Index: Integer);
begin
  StatusBar1.Panels[Index].Text := Text;
end;

procedure TfrmPrnTranEmp.SetxPath(const Value: TFileName);
begin
  FxPath := Value;
end;

{$REGION 'Old OutDated'}
{ procedure TfrmPrnTranEmp.actMailSendExecute(Sender: TObject);
  var FaxAd:String;
  NmSpace:NameSpace;
  MI:MailItem;
  SL:TStringList;
  x:Integer;
  begin
  inherited;
  { TODO -cCritical : Critical }
{ PageControl1.ActivePage := TabSheet2;

  qryEmployees.DisableControls;

  //New Mail Library
  MapiSession.LogonInfo.UseExtendedMapi := MapiSession.MapiInfo.ExtendedMAPI;
  MapiSession.LogonInfo.UseExtendedMapi := MapiSession.MapiInfo.ExtendedMAPI;
  MapiSession.Logon;

  qryEmployees.First;

  SL:=TStringList.Create;

  ProgressBar1.Visible:=True;
  ProgressBar1.Max:=qryEmployees.RecordCount;
  ProgressBar1.Position:=0;

  //    NmSpace:=OutlookApplication1.GetNamespace('MAPI');
  //    NmSpace.Logon('','',True,False);
  //
  //    SetStatusText('Αποστολή Fax',1);
  //      repeat
  //        SetStatusText('Πελάτης ' + qryEmployeesid.AsString,2);
  //
  //        ProgressBar1.Position:=qryEmployees.RecNo;
  //
  //        if qryEmployeesSendMail.AsBoolean = True then
  //           begin
  //              SL.Clear;
  //              FindWords(qryEmployeesMailAddr.AsString,Sl);
  //              for x:=0 to SL.Count -1 do
  //                 try
  //                   SendEmail(SL[x],
  //                           qryEmployeesName.AsString+qryEmployeesSurName.AsString,
  //                          'AvinCard',
  //                           LocalPath+qryEmployeesId.AsString+'.pdf');
  //                 except
  //                   MessageDlg('Error Sending Mail/Fax '+qryEmployeesId.AsString, mtError, [mbOK], 0);
  //                 end;
  //           end;
  //        qryEmployees.Next;
  //      until qryEmployees.Eof;
  //      SetStatusText(' ',1);
  //      SetStatusText(' ',2);

  //New Mail Library
  MapiSession.Logoff;

  qryEmployees.EnableControls;
  SL.Free;
  ProgressBar1.Visible:=False;
  end;
  {$ENDREGION }

procedure TfrmPrnTranEmp.actOutFolderExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmPrnTranEmp.actPrintOnlyPrintExecute(Sender: TObject);
var
  rpt: TrptKinhs32;
begin
  try
    rpt := TrptKinhs32.Create(Self);
    LoadImage(rpt);
    rpt.qryTran.Active := false;
    rpt.qryTran.SQL.Add(bCor);
    if SqlText > '' then
      rpt.qryTran.SQL.Add('Where' + SqlText + ' And [Employees.SendPrint] = 1')
    else
      rpt.qryTran.SQL.Add('Where [Employees.SendPrint] = 1');
    rpt.qryTran.SQL.Add('Order BY [Customer.CustomerId], [Acard.ACardCode], [Tran.TranDate], [Tran.TranTime], [Tran.RefStr], [Tran.SitemId]');
    rpt.qryTran.Active := True;
    rpt.PreviewModal;
  finally
    rpt.Free;
  end;
end;

procedure TfrmPrnTranEmp.actQrDesignExecute(Sender: TObject);
begin
  inherited;
//  ReportDesignerDialog1.NewReport('Leo.qr2', True);
end;

procedure TfrmPrnTranEmp.actToExcelExecute(Sender: TObject);
begin
  inherited;
  // ExcelPopBtnClick(Self);
  if Assigned(DXMasterView) then
    Output2XLSFiledx(DXMasterView, GlobalFileName);
end;

procedure TfrmPrnTranEmp.Button1Click(Sender: TObject);
begin
  inherited;
  qryTran.Active := True;
end;

procedure TfrmPrnTranEmp.cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
var
  frm: TfrmTran;
  I, id: Integer;
begin
  inherited;

  Caption := ACellViewInfo.Item.Caption;
  I       := ACellViewInfo.Item.Index;
  // MessageDlg(ACellViewInfo.Item.Caption, mtCustom, [mbOK], 0);
  I  := cxGrid1DBTableView1.FindItemByName('cxGrid1DBTableView1TRANTRANID').Index;
  id := ACellViewInfo.GridRecord.Values[I];
  // MessageDlg(ACellViewInfo.GridRecord.Values[i], mtCustom, [mbOK], 0);

  try
    try
      frm := TfrmTran.Create(Application);
      TfrmTran(frm).OpenSpecific(id, 'TranId', 'qryBrowser');
      TfrmTran(frm).SelectionDone                 := True;
      TTranDM(TfrmTran(frm).DM).qryBrowser.Active := false;
      TTranDM(TfrmTran(frm).DM).qryBrowser.SQL.Add(' Where TranId = ' + IntToStr(id));
      TTranDM(TfrmTran(frm).DM).qryBrowser.Active := True;
      // TfrmTran(frm).actMainDispExecute(Self);
      frm.ShowModal;
    except
      MsgDlg('Error create form' + 'FormClass.ClassName');
    end;
  finally
    frm.Free;
  end;
end;

procedure TfrmPrnTranEmp.cxGrid1DBTableView1Customization(Sender: TObject);
begin
  inherited;
  MessageDlg('123', mtWarning, [mbOK], 0);
end;

procedure TfrmPrnTranEmp.Excel1Click(Sender: TObject);
begin
  inherited;
  // GeneralDM.OutputFileMastView(cxGrid1DBTableView1);
end;

procedure TfrmPrnTranEmp.FormCreate(Sender: TObject);
begin
  inherited;
  DXMasterView := cxGrid1DBTableView1;
  GridPivotId  := 100;

  GlobalPdf      := false;
  GlobalFileName := '';
end;

procedure TfrmPrnTranEmp.actPrint002Execute(Sender: TObject);
var
  frm: TrptKinhsKK3;
begin
  try
    frm := TrptKinhsKK3.Create(Self);
    LoadImage(frm);
    frm.qryTran.Active := false;
    if SqlText > '' then
      frm.qryTran.SQL.Add('Where' + SqlText);
    frm.qryTran.SQL.Add('Order BY [Station.StationId], [Tran.TranDate], [Tran.TranTime], [Acard.ACardCode], [Tran.SitemId] ');
    frm.qryTran.Active := True;
    PrintOrPdf(frm);
  finally
    frm.Free;
  end;
end;

procedure TfrmPrnTranEmp.actPrint007Execute(Sender: TObject);
var
  frm: TrptKinhsKK8;
begin
  try
    frm := TrptKinhsKK8.Create(Self);
    LoadImage(frm);
    if SqlText > '' then
      frm.qryTran.SQL.Add('Where' + SqlText);
    frm.qryTran.SQL.Add('GROUP BY [Customer.CustomerId], [ACARD.EMPLOYEESID],[Tran.SitemId] , [ACard.ACardCode],[Acard.AcardCodeFull]');
    frm.qryTran.SQL.Add('ORDER BY [Customer.CustomerId], [ACARD.EMPLOYEESID],[Tran.SitemId] , [ACard.ACardCode],[Acard.AcardCodeFull]');
    frm.qryTran.Active := True;
    PrintOrPdf(frm);
  finally;
    frm.Free;
  end;
end;

procedure TfrmPrnTranEmp.actPrint008Execute(Sender: TObject);
var
  frm: TrptKinhsKK9;
begin
  try
    frm := TrptKinhsKK9.Create(Self);
    LoadImage(frm);
    if SqlText > '' then
      frm.qryTran.SQL.Add('Where' + SqlText);
    frm.qryTran.SQL.Add('ORDER BY [Customer.CustomerId], [ACARD.EMPLOYEESID],[Tran.TranDate],[Tran.TranTime],[ACard.ACardCode],[Tran.SitemId]');
    frm.qryTran.Active := True;
    PrintOrPdf(frm);
  finally;
    frm.Free;
  end;
end;

procedure TfrmPrnTranEmp.actPrint022Execute(Sender: TObject);
var
  frm: TrptKinhsKK22;
begin
  frm := TrptKinhsKK22.Create(Self);
  LoadImage(frm);
  frm.qryTran.Active := false;
  if SqlText > '' then
    frm.qryTran.SQL.Add('Where' + SqlText);
  frm.qryTran.SQL.Add('ORDER BY [Customer.CustomerId],[ACard.ACardCode],[Tran.TranDate],[Tran.TranTime],[Tran.RefStr],[Tran.SitemId]');
  frm.qryTran.Active := True;
  PrintOrPdf(frm);
  frm.Free;
end;

procedure TfrmPrnTranEmp.actPrint088Execute(Sender: TObject);
var
  frm: TrptKinhsKK88;
begin
  try
    frm := TrptKinhsKK88.Create(Self);
    LoadImage(frm);
    if SqlText > '' then
      frm.qryTran.SQL.Add('Where' + SqlText);

    frm.qryTran.SQL.Add('Group By  [Customer.CustomerId], [Acard.Employeesid],[ACARD.VTYPEID],[Tran.SitemId], [Acard.ACardId], [Acard.AcardCodeFull], [ACARD.REGNO]');
    frm.qryTran.SQL.Add('Order By  [Customer.CustomerId], [Acard.Employeesid],[ACARD.VTYPEID],[Tran.SitemId], [Acard.ACardId], [Acard.AcardCodeFull], [ACARD.REGNO]');

    frm.StartSt;
    frm.InitCons;
    frm.InitCons;
    frm.qryTran.Active := True;
    PrintOrPdf(frm);
    // frm.PreviewModal;
  finally;
    frm.Free;
  end;
end;

procedure TfrmPrnTranEmp.actCreateFolderExecute(Sender: TObject);
begin
  inherited;
  SaveDialog10.InitialDir := GetIniPath('EXPORT_TRAN_MONTH');
  if SaveDialog10.Execute then
    begin
      xPath                := SaveDialog10.Directory;
      actOutFolder.Caption := 'Out Folder = ' + xPath;
      MessageDlg(xPath, mtWarning, [mbOK], 0);
    end;

end;

procedure TfrmPrnTranEmp.actExcell88aExecute(Sender: TObject);
var
  frm: TfrmKinhsKK88a;
begin
  try
    // frm:= TfrmKinhsKK88a.Create(self);
    frm := TfrmKinhsKK88a.CreateSecurity(Self, 110);
    if SqlText > '' then
      frm.qryTran.SQL.Add('Where' + SqlText);
    frm.qryTran.SQL.Add('Group By  [Customer.CustomerId], [Acard.Employeesid],[ACARD.VTYPEID],[Tran.SitemId], [Acard.ACardId], [Acard.AcardCodeFull], [ACARD.REGNO]');
    frm.qryTran.SQL.Add('Order By  [Customer.CustomerId], [Acard.Employeesid],[ACARD.VTYPEID],[Tran.SitemId], [Acard.ACardId], [Acard.AcardCodeFull], [ACARD.REGNO]');
    frm.StartSt;
    frm.InitCons;
    frm.InitCons;
    frm.qryTran.Active := True;
    frm.PnlTop.Visible := false;
    frm.ShowModal;
  finally;
    frm.Free;
  end;
end;

{$REGION 'OldImplementation'}
(* procedure TfrmPrnTranEmp.PrintOrPdf(Report: TrptBaseAvinCard);
  begin
  if (MessageDlg('Εκτύπωση (Yes) ή PDF (No);', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
  ToPdf(Report)
  else
  Report.PreviewModal;
  end; *)
{$ENDREGION}
{$REGION 'Not Used'}
// procedure TfrmPrnTranEmp.PrintOrPdf(Report: TrptBaseAvinCard);
// begin
// Report.QRBPF.Enabled := True;
// if (MessageDlg('Εκτύπωση (Yes) ή PDF (No);', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
// begin
// DoCursorPush(crSQLWait);
// ToPdf(Report);
// end
// else
// begin
// DoCursorPush(crSQLWait);
// Report.PreviewModal;
// end;
// DoCursorPop;
// end;

{$ENDREGION}

procedure TfrmPrnTranEmp.PrintOrPdf(Report: TrptBaseAvinCard);
begin
  Report.QRBPF.Enabled := True;
  if GlobalPdf then
    begin
      DoCursorPush(crSQLWait);
      ToPdf2(Report, GlobalFileName)
    end
  else if (MessageDlg('Εκτύπωση (Yes) ή PDF (No);', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
    begin
      DoCursorPush(crSQLWait);
      ToPdf(Report);
    end
  else
    begin
      DoCursorPush(crSQLWait);
      Report.PreviewModal;
    end;
  DoCursorPop;
end;

procedure TfrmPrnTranEmp.ToPdf2(Report: TrptBaseAvinCard; FileName: String);
var
  aPDFFilt: TQRPDFDocumentFilter;
  x: Integer;
begin
  if GlobalFileName > '' then
    begin
      aPDFFilt               := TQRPDFDocumentFilter.Create(GlobalFileName);
      aPDFFilt.CompressionOn := True;
      aPDFFilt.Codepage      := '1253';
      aPDFFilt.TextEncoding  := UnicodeEncoding;
      aPDFFilt.AddTTFont('Courier New');

      for x := 0 to Report.ComponentCount - 1 do
        begin
          if Report.Components[x] is TQRLabel then
            TQRLabel(Report.Components[x]).Font.Charset := GREEK_CHARSET;
          if Report.Components[x] is TQRDbText then
            TQRDbText(Report.Components[x]).Font.Charset := GREEK_CHARSET;
          if Report.Components[x] is TQRSysData then
            TQRSysData(Report.Components[x]).Font.Charset := GREEK_CHARSET;
        end;

      Report.ShowProgress := false;
      Report.ExportToFilter(aPDFFilt);
      aPDFFilt.Free;
    end;
end;

procedure TfrmPrnTranEmp.ToPdf(Report: TrptBaseAvinCard);
var
  aPDFFilt: TQRPDFDocumentFilter;
  x: Integer;
begin
  SaveDialog1.InitialDir := GetIniPath('EXPORT_TRAN_MONTH_EMP');
  if SaveDialog1.Execute then
    begin
      aPDFFilt := TQRPDFDocumentFilter.Create(SaveDialog1.FileName + '.pdf');
      for x    := 0 to Report.ComponentCount - 1 do
        begin
          if Report.Components[x] is TQRLabel then
            begin
              TQRLabel(Report.Components[x]).Font.Name    := 'Courier New';
              TQRLabel(Report.Components[x]).Font.Charset := 161;
              if TQRLabel(Report.Components[x]).Font.Size = 11 then
                TQRLabel(Report.Components[x]).Font.Size := 10;
            end;
          if Report.Components[x] is TQRDbText then
            begin
              TQRDbText(Report.Components[x]).Font.Name    := 'Courier New';
              TQRDbText(Report.Components[x]).Font.Charset := 161;
              if TQRDbText(Report.Components[x]).Font.Size = 11 then
                TQRDbText(Report.Components[x]).Font.Size := 10;
            end;
          if Report.Components[x] is TQRSysData then
            begin
              TQRSysData(Report.Components[x]).Font.Name := 'Courier New';
              TQRSysData(Report.Components[x]).Font.Charset := 161;
              if TQRSysData(Report.Components[x]).Font.Size = 11 then
                TQRSysData(Report.Components[x]).Font.Size := 10;
            end;
        end;
      Report.ExportToFilter(aPDFFilt);
    end;
end;

/// /New Mail Procedure
///

procedure TfrmPrnTranEmp.OldSendEmail(EmailAd, PelaName, SubjectStr, AttachmentFile: String);
var
  MI: MailItem;
  FaxAd: String;
begin
  { TODO -cCritical : Critical }
  // SetStatusText('Αποστολή Email ',1);
  // MI:=OutlookApplication1.CreateItem(olMailItem) as MailItem;
  // MI.Recipients.Add(EmailAd);
  // MI.Subject := SubjectStr;
  // MI.Attachments.Add(AttachmentFile,EmptyParam,EmptyParam,EmptyParam);
  // try
  // MI.Send;
  // except
  // MessageDlg('Πρόβλημα στην αποστολή Email σε Πελάτη '+ PelaName, mtError, [mbOK], 0);
  // end;
  // SetStatusText(' ',1);
end;


// procedure TfrmPrnTranEmp.SendEmail(EmailAd, PelaName, SubjectStr, AttachmentFile: String);
// var
// Sleo: TStringList;
// x: Integer;
// TempStream: TFileStream;
// NewMessage: IRwMapiMailMessage;
// begin
//
// SetStatusText('Αποστολή Email ', 1);
//
// try
// NewMessage := MapiSession.CreateMessage(ftDraft) as IRwMapiMailMessage;
// NewMessage.RecipTo := EmailAd;
// NewMessage.Subject := SubjectStr;
// NewMessage.Body    := SubjectStr;
// NewMessage.AddFileAttachment(AttachmentFile);
// NewMessage.SubmitMessage(astMoveToSentItems);
// finally
// // Can make connection active before send
// // MapiSession.Logoff;
// end;
// end;

// procedure TfrmPrnTranEmp.actMailCreateExecute(Sender: TObject);
// var rpt:TrptKinhs32In;
// StSql:String;
// aPDFFilt : TQRPDFDocumentFilter;
// Ts,Te:TDateTime;
// begin
// inherited;
// PageControl1.ActivePage := TabSheet2;
//
// ts:=now();
// rpt:=TrptKinhs32In.Create(self);
//
// LoadImage(rpt);
//
// StSql:=rpt.qryTran.SQL.Text;          //Save SQL in initial State
//
// qryEmployees.First;
//
// ProgressBar1.Visible:=True;
// ProgressBar1.Max:=qryEmployees.RecordCount;
// ProgressBar1.Position:=0;
//
// SetStatusText('Δημιουργεία PDF',1);
// repeat
// SetStatusText('Πελάτης ' + qryEmployeesid.AsString,2);
//
// ProgressBar1.Position:=qryEmployees.RecNo;
//
// rpt.qryTran.Active:=False;
//
// if TranStr > '' then
// begin
// rpt.qryTran.SQL.Clear;
// rpt.qryTran.SQL.Add(StSql);
// rpt.qryTran.SQL.Add('Where '+ TranStr);
// rpt.qryTran.SQL.Add(' And Acard.EmployeesId = '+ inttostr(qryEmployeesId.AsInteger));
// rpt.qryTran.SQL.Add('Order BY ACard.CustomerId, ACardCode, TranDate, TranTime, RefStr, SitemId ');
// end
// else
// begin
// rpt.qryTran.SQL.Clear;
// rpt.qryTran.SQL.Add(StSql);
// rpt.qryTran.SQL.Add('Where Acard.EmployeesId = '+ inttostr(qryEmployeesId.AsInteger));
// rpt.qryTran.SQL.Add('Order BY ACard.CustomerId, ACardCode, TranDate, TranTime, RefStr, SitemId ');
// end;
// rpt.qryTran.Active:=True;
//
// if qryEmployeesSendMail.AsBoolean = True then
// begin
// if Not rpt.qryTran.IsEmpty then
// begin
// try
// try
// aPDFFilt:=TQRPDFDocumentFilter.Create(LocalPath+qryEmployeesId.AsString+'.pdf');
// rpt.ExportToFilter( aPDFFilt );
// except
// MessageDlg('Πρόβλημα στη δημιουργεία PDF', mtError, [mbOK], 0);
// end;
// finally
// aPDFFilt.free;
// end;
// SetStatusText(' ',2);
// end;
// end;
// qryEmployees.Next;
// until qryEmployees.Eof;
//
// ProgressBar1.Visible:=False;
//
// rpt.Free;
// te:=now();
//
// MessageDlg('Χρονος δημιουργείας αρχείου ' + floattostr(te-ts), mtInformation, [mbOK], 0);
// end;

{ TODO -cObjective : To Parent General Form }
procedure TfrmPrnTranEmp.PrintSplitReport(Report: TrptBaseAvinCard; VarDataSet: TDataSet; RepSqlName: string; FieldName: string; FilePath: string; PreFileName: string;
  PostFileName: string; PreSql: string; PostSql: string; ChPBar: TProgressBar);
var
  aPDFFilt: TQRPDFDocumentFilter;
  x1: String;
  vi: Integer;
  Fs: TFormatSettings;
  RepQuery: TADOQuery;
begin
  try
    DoCursorPush;
    for vi := 0 to Report.ComponentCount - 1 do
      if Report.Components[vi].Name = RepSqlName then
        RepQuery := TADOQuery(Report.Components[vi]);

    if Assigned(ChPBar) then
      begin
        ChPBar.Position := 0;
        ChPBar.Visible  := True;
        ChPBar.Max      := VarDataSet.RecordCount;

      end;

    VarDataSet.First;
    repeat
      if Assigned(ChPBar) then
        ChPBar.Position := ChPBar.Position + 1;
      GetLocaleFormatSettings(0, Fs);
      Fs.DateSeparator := '-';
      RepQuery.SQL.Clear;
      RepQuery.SQL.Add(PreSql);
      x1 := VarDataSet.FieldByName(FieldName).AsString;
      RepQuery.SQL.Add(x1);
      RepQuery.SQL.Add(PostSql);
      RepQuery.Active       := True;
      aPDFFilt              := TQRPDFDocumentFilter.Create(FilePath + PreFileName + x1 + PostFileName);
      aPDFFilt.Codepage     := '1253';
      aPDFFilt.TextEncoding := UnicodeEncoding;
      aPDFFilt.AddTTFont('Courier New');
      Report.ShowProgress := false;
      Report.ExportToFilter(aPDFFilt);
      aPDFFilt.Free;
      VarDataSet.Next;
    until VarDataSet.Eof;
    MessageDlg('Ολοκλήρωση Δημιουργίας', mtWarning, [mbOK], 0);
  finally
    if Assigned(ChPBar) then
      ChPBar.Visible := false;
    DoCursorPop;
  end;
end;

procedure TfrmPrnTranEmp.actPrint8PDFExecute(Sender: TObject);
var
  // frm: TrptKinhs9;
  PreSql, PostSql: string;
begin
  // PageControl1.ActivePage := TsSendCustomer;
  try
    // frm := TrptKinhs9.Create(self);
    // LoadImageNoDlg(frm);

    // PreSql:=frm.qryTran.SQL.Text;

    if SqlText > '' then
      PreSql := PreSql + ' Where ' + SqlText + ' And [Customer.CustomerId] = '
    else
      PreSql := PreSql + ' Where [Customer.CustomerId] = ';

    PostSql := 'ORDER BY [Customer.CustomerId],[Tran.TranDate],[Tran.TranTime],[Acard.AcardId],[Tran.SitemId]';

    // PrintSplitReport(frm,qry1Customer,'qryTran','CUSTOMER.CUSTOMERID',xPath,'\Rpt009-Cus-','.pdf',PreSql,PostSql,ProgressBar1);

  finally
    // frm.Free;
  end;
end;

procedure TfrmPrnTranEmp.actPrint32Execute(Sender: TObject);
var
  frm: TrptKinhs32;
  PreSql, PostSql: string;
begin
  try
    frm := TrptKinhs32.Create(Self);
    LoadImage(frm);
    frm.qryTran.Active := false;
    if SqlText > '' then
      frm.qryTran.SQL.Add(' Where ' + SqlText);
    frm.qryTran.SQL.Add('Order BY [Customer.CustomerId], [Acard.ACardCode], [Tran.TranDate], [Tran.TranTime], [Tran.RefStr], [Tran.SitemId]');
    frm.qryTran.Active := True;
    frm.PreviewModal;
  finally
    frm.Free;
  end;

  // frm:= TrptKinhs32.Create(self);
  // LoadImage(frm);
  // frm.qryTran.Active:=false;
  // frm.qryTran.SQL.Add(bCor);
  // frm.qryTran.SQL.Add('Order BY Acard.CustomerId, ACardCode, TranDate, TranTime, RefStr, SitemId ');
  // frm.qryTran.Active:=True;
  // frm.PreviewModal;
  // frm.Free;
end;

procedure TfrmPrnTranEmp.actMailCreateExecute(Sender: TObject);
var
  frm: TrptKinhs32; // TrptKinhs32In;
  PreSql, PostSql: string;
begin
  try
    frm := TrptKinhs32.Create(Self);
    LoadImageNoDlg(frm);
    PreSql := frm.qryTran.SQL.Text;

    if SqlText > '' then
      PreSql := PreSql + ' Where ' + SqlText + ' And [ACARD.EMPLOYEESID] = '
    else
      PreSql := PreSql + ' Where [ACARD.EMPLOYEESID] = ';

    PostSql := 'Order BY [Customer.CustomerId], [Acard.ACardCode], [Tran.TranDate], [Tran.TranTime], [Tran.RefStr], [Tran.SitemId]';
    PrintSplitReport(frm, qryEmployees, 'qryTran', 'Acard.EmployeesId', xPath, '\Rpt032-Emp-', '.pdf', PreSql, PostSql, Nil); // ProgressBar1);

  finally
    frm.Free;
  end;
end;

procedure TfrmPrnTranEmp.actMailSendExecute(Sender: TObject);
var
  EmpReportList: TStringList;
begin
  OnlyPrintPdf := false;
  OnlyEmailPdf := True;
  OnlyFaxPdf   := false;

  EmpReportList := TStringList.Create;
  EmpReportList.Add('Rpt032-Emp-$$$.pdf');

  PrnFaxSendGen(qryEmployees, 'Avin Card ', 'Acard.EmployeesId', 'EMPLOYEES.MailAddr', 'EMPLOYEES.MailAddr', // Just to find a field
    'EMPLOYEES.SendMail', 'EMPLOYEES.SendMail', // Just to find a field
    'EMPLOYEES.SendPrint', '', ProgressBar2, TsEmployees, PageControl1, Memo2, Memo3, '', EmpReportList);

  EmpReportList.Clear;

end;

/// //////////////
procedure TfrmPrnTranEmp.PrnFaxSendGen(VarDataSet: TDataSet; Subject: String; FldCode: String; FldMail: String; FldFax: String; ChkMail: String; ChkFax: String; ChkPrint: String;
  FilePath: string; ChPBar: TProgressBar; TabAct: TTabSheet; TabCont: TPageControl; MemoFld0: TMemo; MemoFld1: TMemo; MustExistReport: String; RepList: TStringList);
var
  StSql, FaxAd: String;
  Sl: TStringList;
  StrSubject, StrAttachment: String;
  x, x1: String;
  x2, x10: Integer;
  Fs: TFormatSettings;
  MustExistExists: Boolean;
  nMustExistReport: String;
begin
  inherited;
  if Assigned(TabCont) then
    TabCont.ActivePage := TabAct;

  ChPBar.Position := 0;
  ChPBar.Visible  := True;
  ChPBar.Max      := VarDataSet.RecordCount;

  Sl                                       := TStringList.Create;
  RwMapiSession1.LogonInfo.UseExtendedMapi := RwMapiSession1.MapiInfo.ExtendedMAPI;

  try
    RwMapiSession1.LogonInfo.UseExtendedMapi := RwMapiSession1.MapiInfo.ExtendedMAPI;
    try
      RwMapiSession1.Logon;
      SetStatusText('Αποστολή Fax', 1);

      VarDataSet.First;
      repeat
        ChPBar.Position := ChPBar.Position + 1;

        GetLocaleFormatSettings(0, Fs);
        x1 := VarDataSet.FieldByName(FldCode).AsString;
        ExpandRepStr(MustExistReport, x1, nMustExistReport);

        if MustExistReport > '' then
          if SysUtils.FileExists(xPath + '\\' + nMustExistReport) then
            MustExistExists := True
          else
            MustExistExists := false
        else
          MustExistExists := True;

        if MustExistExists then
          begin
            if VarDataSet.FieldByName(ChkMail).AsBoolean And OnlyEmailPdf then
              begin
                try
                  RwMapiSession1.LogonInfo.UseExtendedMapi := RwMapiSession1.MapiInfo.ExtendedMAPI;
                  RwMapiSession1.Logon;
                  SetStatusText('Αποστολή Email', 1);
                  Sl.Clear;
                  FindWords(VarDataSet.FieldByName(FldMail).AsString, Sl);
                  for x2 := 0 to Sl.Count - 1 do
                    try
                      SendEmailGen(Sl[x2], x1, 'Avin Card ', RepList);
                    except
                      on E: ERwException do
                        begin
                          MemoFld0.Lines.Add('Exception class name = ' + E.ClassName);
                          MemoFld0.Lines.Add('Exception message = ' + E.Message);
                          MemoFld0.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
                          MemoFld1.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
                        end;
                    end;
                except
                  on E: ERwException do
                    begin
                      MemoFld0.Lines.Add('Exception class name = ' + E.ClassName);
                      MemoFld0.Lines.Add('Exception message = ' + E.Message);
                      MemoFld0.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
                      MemoFld1.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
                    end;
                end;
              end;

            if VarDataSet.FieldByName(ChkFax).AsBoolean And OnlyFaxPdf then
              begin
                try
                  RwMapiSession1.LogonInfo.UseExtendedMapi := RwMapiSession1.MapiInfo.ExtendedMAPI;
                  RwMapiSession1.Logon;
                  SetStatusText('Αποστολή Fax', 1);
                  Sl.Clear;
                  FindWords(VarDataSet.FieldByName(FldFax).AsString, Sl);
                  for x2 := 0 to Sl.Count - 1 do
                    try
                      SendFaxGen(Sl[x2], x1, 'Avin Card ', RepList);
                    except
                      on E: ERwException do
                        begin
                          MemoFld0.Lines.Add('Exception class name = ' + E.ClassName);
                          MemoFld0.Lines.Add('Exception message = ' + E.Message);
                          MemoFld0.Lines.Add('+++ Id ' + x1 + ' Fax ' + Sl[x2]);
                          MemoFld1.Lines.Add('+++ Id ' + x1 + ' Fax ' + Sl[x2]);
                        end;
                    end;
                except
                  on E: ERwException do
                    begin
                      MemoFld0.Lines.Add('Exception class name = ' + E.ClassName);
                      MemoFld0.Lines.Add('Exception message = ' + E.Message);
                      MemoFld0.Lines.Add('+++ Id ' + x1 + ' Fax ' + Sl[x2]);
                      MemoFld1.Lines.Add('+++ Id ' + x1 + ' Fax ' + Sl[x2]);
                    end;
                end;
              end;

            if VarDataSet.FieldByName(ChkPrint).AsBoolean And OnlyPrintPdf then
              begin
                try
                  SetStatusText('Εκτύπωση ', 1);
                  SendPrintGen('Print', x1, 'Avin Card ', RepList);
                except
                  on E: ERwException do
                    begin
                      MemoFld0.Lines.Add('Exception class name = ' + E.ClassName);
                      MemoFld0.Lines.Add('Exception message = ' + E.Message);
                      MemoFld0.Lines.Add('+++ Id ' + x1 + ' Print ' + Sl[x2]);
                      MemoFld1.Lines.Add('+++ Id ' + x1 + ' Print ' + Sl[x2]);
                    end;
                end;
              end;
          end;
        { TODO -oLeonidas : Must Be Parametrized }
        if ChPBar.Position mod 5 = 0 then
          MessageDlg('Please check your mailbox SIZE !!!!!!!', mtInformation, [mbOK], 0);
        VarDataSet.Next;
      until VarDataSet.Eof;

    except
      on E: ERwException do
        begin
          MemoFld0.Lines.Add('Exception class name = ' + E.ClassName);
          MemoFld0.Lines.Add('Exception message = ' + E.Message);
        end;
    end;
  finally
    RwMapiSession1.Logoff;
  end;

  MessageDlg('Ολοκλήρωση Δημιουργίας', mtWarning, [mbOK], 0);
  ChPBar.Visible := True;
end;

{ TODO -cObjective : To Parent General Form }
procedure TfrmPrnTranEmp.SendPrintGen(FaxNo, PelaName, SubjectStr: string; slx: TStringList);
var
  xx: Integer;
  nslx: TStringList;
begin
  SetStatusText('Εκτύπωση ', 1);
  nslx := TStringList.Create;
  ExpandRepList(slx, PelaName, nslx);
  for xx := 0 to nslx.Count - 1 do
    begin
      if SysUtils.FileExists(xPath + '\\' + nslx[xx]) then
        ShellExecute(Handle, 'print', PChar(xPath + '\\' + nslx[xx]), nil, nil, SW_HIDE);
    end;
end;

{ TODO -cObjective : To Parent General Form }
procedure TfrmPrnTranEmp.SendEmailGen(EmailAd, PelaName, SubjectStr: string; slx: TStringList);
var
  Sleo: TStringList;
  x, xx: Integer;
  TempStream: TFileStream;
  NewMessage: IRwMapiMailMessage;
  nslx: TStringList;
begin
  SetStatusText('Αποστολή Email ', 1);
  nslx := TStringList.Create;
  ExpandRepList(slx, PelaName, nslx);
  try
    NewMessage         := RwMapiSession1.CreateMessage(ftDraft) as IRwMapiMailMessage;
    NewMessage.RecipTo := EmailAd;
    NewMessage.Subject := SubjectStr;
    NewMessage.Body    := SubjectStr;

    for xx := 0 to nslx.Count - 1 do
      begin
        if SysUtils.FileExists(xPath + '\\' + nslx[xx]) then
          NewMessage.AddFileAttachment(xPath + '\\' + nslx[xx]);
      end;
    NewMessage.SubmitMessage(astMoveToSentItems);
  finally
    nslx.Free;
  end;
  SetStatusText(' ', 1);
end;

{ TODO -cObjective : To Parent General Form }
procedure TfrmPrnTranEmp.SendFaxGen(FaxNo, PelaName, SubjectStr: string; slx: TStringList);
var
  Sleo: TStringList;
  x, xx: Integer;
  FaxAd: String;
  FaxAdList: TStringList;
  TempStream: TFileStream;
  NewMessage: IRwMapiMailMessage;
  nslx: TStringList;
begin
  nslx := TStringList.Create;
  ExpandRepList(slx, PelaName, nslx);

  SetStatusText('Αποστολή Email ', 1);
  try
    NewMessage         := RwMapiSession1.CreateMessage(ftDraft) as IRwMapiMailMessage;
    FaxAd              := '[fax:' + Trim(PelaName) + '@' + Trim(FaxNo) + ']';
    NewMessage.RecipTo := FaxAd;
    NewMessage.Subject := SubjectStr;
    NewMessage.Body    := SubjectStr;

    for xx := 0 to nslx.Count - 1 do
      begin
        if SysUtils.FileExists(xPath + '\\' + nslx[xx]) then
          NewMessage.AddFileAttachment(xPath + '\\' + nslx[xx]);
      end;
    NewMessage.SubmitMessage(astMoveToSentItems);
  finally
    nslx.Free;
  end;
  SetStatusText(' ', 1);
end;

procedure TfrmPrnTranEmp.ExpandRepList(InitList: TStringList; ExpandedLiteral: string; var OutList: TStringList);
var
  xx: Integer;
  OutString, InitStr: string;
begin
  for xx := 0 to InitList.Count - 1 do
    begin
      InitStr   := InitList[xx];
      OutString := '';
      // OutString := InitList[xx];
      OutString := StringReplace(InitStr, '$$$', ExpandedLiteral, []);
      OutList.Add(OutString);
    end;
end;

procedure TfrmPrnTranEmp.ExpandRepStr(InitStr, ExpandedLiteral: string; var OutString: String);
begin
  OutString := StringReplace(InitStr, '$$$', ExpandedLiteral, []);
end;

procedure TfrmPrnTranEmp.LoadImage(Form: TrptBaseAvinCard);
begin
  if GlobalPdf then
    Common.LoadImageNoDlg(Form)
  else
    Common.LoadImage(Form);
end;

end.
