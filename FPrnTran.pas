Unit FPrnTran;

// 1.3.4.8.9.12.14.15.16.17
Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  // Dialogs, Vcl.Dialogs
  ActnList, DB, ADODB, dxPSGlbl, dxPSUtl, StrUtils,
  qrxlsxfilt, QRPrntr, QRCtrls, QRExport, QRPDFFilt, Vcl.ComCtrls,
  uRwMapiSession, uRwMapiInterfaces, uRwSysUtils, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.OleCtrls, AcroPDFLib_TLB,
  Winapi.ShellAPI, cxNavigator, JvBaseDlg, JvSelectDirectory, FPrnBase,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxPSCore, dxPScxCommon,
  Vcl.ToolWin, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  FFilterEn, Tran, TranD,
  rKinhs1, rKinhs3, rKinhs4, rKinhs5, rKinhs6, rKinhs8, rKinhs9, rKinhs22,
  rKinhs12, rKinhs16, rKinhs11, rKinhs15, rKinhs3Mer, rKinhs43,
  // rKinhs13,
  // rKinhs2, rKinhs5, QuickRpt,
  // rKinhs7, rKinhs10, rKinhs12, rKinhs13,
  // rKinhs14, rKinhs15, rKinhs16, rKinhs17, rKinhs32,
  // rKinhs40, rKinhs41, rKinhs42,

  RBaseAvinCard, ADOConEd, ComObj,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, Vcl.Menus,
  cxGridChartView, cxGridDBChartView, uRwEasyMAPI, Vcl.Dialogs,
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

Type
  TfrmPrnTran = Class(TFrmPrnBase)
    ActionList1: TActionList;
    actClose: TAction;
    qryTran: TADOQuery;
    dtsTran: TDataSource;
    actPreview: TAction;
    actPrint: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    actPrint1: TAction;
    actPrint2: TAction;
    actPrint3: TAction;
    actPrint4: TAction;
    actPrint5: TAction;
    actPrint6: TAction;
    actPrint7: TAction;
    actPrint8: TAction;
    actPrint9: TAction;
    actPrint10: TAction;
    actPrint12: TAction;
    actPrint14: TAction;
    actPrint22: TAction;
    actPrint15: TAction;
    actPrint16: TAction;
    actPrint17: TAction;
    actPrint18: TAction;
    actPrint32: TAction;
    actPrint40: TAction;
    actPrint41: TAction;
    actPrint42: TAction;
    Panel1: TPanel;
    SaveDialog1: TSaveDialog;
    actPrint42a: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    qry1Customer: TADOQuery;
    actPrint7PDF: TAction;
    actPrint22PDF: TAction;
    actPrint4Pdf: TAction;
    actCreateFolder: TAction;
    actPrnSend: TAction;
    StatusBar1: TStatusBar;
    actPrint8PDF: TAction;
    PageControl1: TPageControl;
    TsGrid: TTabSheet;
    TsMemo: TTabSheet;
    TsSendCustomer: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Memo1: TMemo;
    DataSource1: TDataSource;
    PanRestSend: TPanel;
    PanGridSend: TPanel;
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    dbtxtCUSTOMERCUSTOMERID: TDBText;
    Memo2: TMemo;
    Memo3: TMemo;
    dxComponentPrinter1Link2: TdxGridReportLink;
    ProgressBar1: TProgressBar;
    actPrintPDF: TAction;
    ActSendMail: TAction;
    ActSendFax: TAction;
    actPrnSend0: TAction;
    actPrnSend0St: TAction;
    SaveDialog10: TJvSelectDirectory;
    actMailSpecific: TAction;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    tsSendStation: TTabSheet;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Memo2St: TMemo;
    Memo3St: TMemo;
    Panel3: TPanel;
    dbtxtStationStationId1: TDBText;
    dbtxtStationStationId: TDBText;
    DBText6: TDBText;
    ProgressBar1St: TProgressBar;
    Edit1St: TEdit;
    Edit2St: TEdit;
    Edit3St: TEdit;
    qry1Station: TADOQuery;
    DataSource1St: TDataSource;
    actPrint2PDF: TAction;
    act1: TAction;
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
    qry1Merchant: TADOQuery;
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
    qryTranTRANTRANID: TIntegerField;
    TsSendMerchant: TTabSheet;
    Panel4: TPanel;
    DBGrid3: TDBGrid;
    Memo4: TMemo;
    Memo5: TMemo;
    Panel5: TPanel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    ProgressBar1Merchant: TProgressBar;
    Edit1Me: TEdit;
    Edit2Me: TEdit;
    Edit3Me: TEdit;
    DataSource1Merchant: TDataSource;
    Action1: TAction;
    qryTranTRANKMBEFORE: TIntegerField;
    qryTranTRANKMAFTER: TIntegerField;
    qryTranTRANREFSTR: TWideStringField;
    qryTranTRANUNITPRICE: TFloatField;
    qryTranSITEMCODEINTERMINAL: TIntegerField;
    qryTranSITEMDESCR: TWideStringField;
    qryTranSITEMIGROUPID: TIntegerField;
    qryTranIGROUPNAME: TWideStringField;
    cxGrid1DBTableView1TRANTRANID: TcxGridDBColumn;
    cxGrid1DBTableView1TRANKMBEFORE: TcxGridDBColumn;
    cxGrid1DBTableView1TRANKMAFTER: TcxGridDBColumn;
    cxGrid1DBTableView1TRANREFSTR: TcxGridDBColumn;
    cxGrid1DBTableView1TRANUNITPRICE: TcxGridDBColumn;
    cxGrid1DBTableView1SITEMCODEINTERMINAL: TcxGridDBColumn;
    cxGrid1DBTableView1SITEMDESCR: TcxGridDBColumn;
    cxGrid1DBTableView1SITEMIGROUPID: TcxGridDBColumn;
    cxGrid1DBTableView1IGROUPNAME: TcxGridDBColumn;
    qryTranCostCenterCCName: TWideStringField;
    qryTranCostCenterCCNameFull: TWideStringField;
    cxGrid1DBTableView1CostCenterCCName: TcxGridDBColumn;
    cxGrid1DBTableView1CostCenterCCNameFull: TcxGridDBColumn;
    // MAPISession: TRwMAPISession;
    RwMAPISession1: TRwMAPISession;
    actOutFolder: TAction;
    qry1CustomerCUSTOMERID: TIntegerField;
    qry1CustomerContactsSurname: TWideStringField;
    qry1CustomerContactsName: TWideStringField;
    qry1Customeremail: TWideStringField;
    qry1CustomerPhone: TWideStringField;
    qry1CustomerFax: TWideStringField;
    qry1CustomerMobile: TWideStringField;
    qry1CustomerMailORFax: TIntegerField;
    qry1CustomerMain: TBooleanField;
    qry1CustomerAA: TIntegerField;
    qry1CustomerContactType_Procedure: TWideStringField;
    qry1CustomerSendMail: TBooleanField;
    qry1CustomerSendFax: TBooleanField;
    qry1CustomerSendPrint: TBooleanField;
    qry1CustomerContactTypeId: TIntegerField;
    qry1CustomerCustomerName: TWideStringField;
    qry1StationContactType_Procedure: TWideStringField;
    qry1StationContactsName: TWideStringField;
    qry1StationContactsSurname: TWideStringField;
    qry1Stationemail: TWideStringField;
    qry1StationPhone: TWideStringField;
    qry1StationFax: TWideStringField;
    qry1StationMobile: TWideStringField;
    qry1StationSendMail: TBooleanField;
    qry1StationSendFax: TBooleanField;
    qry1StationSendPrint: TBooleanField;
    qry1StationMain: TBooleanField;
    qry1StationAA: TIntegerField;
    qry1StationStationid: TIntegerField;
    qry1MerchantContactType_Procedure: TWideStringField;
    qry1MerchantMerchantId: TIntegerField;
    qry1MerchantMain: TBooleanField;
    qry1MerchantAA: TIntegerField;
    qry1MerchantContactsName: TWideStringField;
    qry1MerchantContactsSurname: TWideStringField;
    qry1Merchantemail: TWideStringField;
    qry1MerchantPhone: TWideStringField;
    qry1MerchantFax: TWideStringField;
    qry1MerchantMobile: TWideStringField;
    qry1MerchantSendMail: TBooleanField;
    qry1MerchantSendFax: TBooleanField;
    qry1MerchantSendPrint: TBooleanField;
    qry1MerchantMerchantName: TWideStringField;
    qry1StationStationName: TWideStringField;
    dxBarManager1: TActionManager;
    actCreateFolderMer: TAction;
    OpenDialog1: TOpenDialog;
    qry1CustomerCustomerCustomerId: TIntegerField;
    qry1StationStationStationId: TIntegerField;
    qry1MerchantMerchantMerchantId: TIntegerField;
    actMailSpecificMe: TAction;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGrid1DBChartView1DataGroup1: TcxGridDBChartDataGroup;
    cxGrid1DBChartView1Series2: TcxGridDBChartSeries;
    cxGrid1DBChartView1DataGroup2: TcxGridDBChartDataGroup;
    cxGrid1DBChartView1DataGroup3: TcxGridDBChartDataGroup;
    cxGrid1DBChartView1DataGroup4: TcxGridDBChartDataGroup;
    cxGrid1DBChartView1DataGroup5: TcxGridDBChartDataGroup;
    cxGrid1DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series3: TcxGridDBChartSeries;
    actQrDesign: TAction;
    qCustSapId: TADOQuery;
    qCustSapIdCustomerId: TAutoIncField;
    qCustSapIdSapCode: TWideStringField;
    qry1CustomerLCustSAPId: TStringField;
    Button1: TButton;
    actPrint2merPdf: TAction;
    qry101Customer: TADOQuery;
    qry101Station: TADOQuery;
    qry101Merchant: TADOQuery;
    qry101StationStationId: TIntegerField;
    qry101MerchantMerchantId: TIntegerField;
    qry101CustomerCustomerId: TIntegerField;
    DataSource2: TDataSource;
    DataSource2St: TDataSource;
    DataSource2Merchant: TDataSource;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    actMerSendFax: TAction;
    actMerSendMail: TAction;
    actMerPrnSend: TAction;
    actMerPrintPDF: TAction;
    qry101CustomerLCustContExist: TBooleanField;
    TabSheet1: TTabSheet;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    qry101StationLStaContExist: TBooleanField;
    qry101MerchantLMerContExist: TBooleanField;
    qryCust: TADOQuery;
    qryCustCUSTOMERID: TAutoIncField;
    qryCustNAME: TWideStringField;
    qryCustSTREET: TWideStringField;
    qryCustZIP: TWideStringField;
    qryCustCITY: TWideStringField;
    qryCustAFM: TWideStringField;
    qryCustDOY: TWideStringField;
    qryCustSTARTDATE: TDateTimeField;
    qryCustAREAID: TIntegerField;
    qryCustLOCATIONID: TIntegerField;
    qryCustCGROUPID: TIntegerField;
    qryCustCCLASSID: TIntegerField;
    qryCustCREDITAMOUNT: TFloatField;
    qryCustINSDT: TDateTimeField;
    qryCustUPDDT: TDateTimeField;
    qryCustINSUSR: TIntegerField;
    qryCustUPDUSR: TIntegerField;
    qryCustPROFESSION: TWideStringField;
    qryCustBRANCHID: TIntegerField;
    qryCustSAPCODE: TWideStringField;
    qryCustISACTIVE: TBooleanField;
    qryCustSALESMENID: TIntegerField;
    qryCustDIAKID: TIntegerField;
    qryCustISTEST: TBooleanField;
    qryCustISCONS: TBooleanField;
    qryCustAREABID: TIntegerField;
    qryCustDATEPHEND: TDateTimeField;
    qryCustDATELOEND: TDateTimeField;
    qryCustHASDETAILEMP: TBooleanField;
    qryCustALLCARDSTOBL: TBooleanField;
    qryCustALLCARDSTOBLDATE: TDateTimeField;
    qryCustALLCARDSTOBLSYSDATE: TDateTimeField;
    qryCustALLCARDSTOBLUSR: TIntegerField;
    qryCustCUSTOMEROFF: TBooleanField;
    qryCustCUSTOMEROFFDATE: TDateTimeField;
    qryCustCUSTOMEROFFSYSDATE: TDateTimeField;
    qryCustCUSTOMEROFFUSR: TIntegerField;
    qryCustCARDHASEMPNAME: TBooleanField;
    qryCustDATEEND: TDateTimeField;
    qryCustCompanyTypeId: TIntegerField;
    qryCustGarantieId: TIntegerField;
    qryCustGarantieAmount: TFloatField;
    qryCustComments: TMemoField;
    qryStat: TADOQuery;
    qryMerc: TADOQuery;
    qryMercMerchantId: TAutoIncField;
    qryMercName: TWideStringField;
    qryMercStreet: TWideStringField;
    qryMercZIP: TWideStringField;
    qryMercCity: TWideStringField;
    qryMercAFM: TWideStringField;
    qryMercDOY: TWideStringField;
    qryMercISTEST: TBooleanField;
    qryMercAreaId: TIntegerField;
    qryMercSAPCode: TWideStringField;
    qryMercMerchantCode: TWideStringField;
    qryMercSalesMenId: TIntegerField;
    qryMercInsUsr: TIntegerField;
    qryMercInsDT: TDateTimeField;
    qryMercUpdUsr: TIntegerField;
    qryMercUpdDT: TDateTimeField;
    qryMercDeleted: TBooleanField;
    qryMercDelUsr: TIntegerField;
    qryMercDelDT: TDateTimeField;
    qryMercInActive: TBooleanField;
    qryMercInActiveUsr: TIntegerField;
    qryMercInActiveDt: TDateTimeField;
    qryMercStopSales: TBooleanField;
    qryMercStopSalesUsr: TIntegerField;
    qryMercStopSalesDt: TDateTimeField;
    qryMercBranchId: TIntegerField;
    qryMercIGroupId1: TIntegerField;
    qryMercPososto1: TFloatField;
    qryMercIGroupId2: TIntegerField;
    qryMercPososto2: TFloatField;
    qryMercIGroupId3: TIntegerField;
    qryMercPososto3: TFloatField;
    qryMercIGroupId4: TIntegerField;
    qryMercPososto4: TFloatField;
    qryMercIGroupId5: TIntegerField;
    qryMercPososto5: TFloatField;
    qryMercIGroupId6: TIntegerField;
    qryMercPososto6: TFloatField;
    qryMercIGroupId7: TIntegerField;
    qryMercPososto7: TFloatField;
    qryMercIGroupId8: TIntegerField;
    qryMercPososto8: TFloatField;
    qryMercIGroupId9: TIntegerField;
    qryMercPososto9: TFloatField;
    qryMercIGroupId10: TIntegerField;
    qryMercPososto10: TFloatField;
    qryStatStationid: TAutoIncField;
    qryStatName: TWideStringField;
    qryStatSTREET: TWideStringField;
    qryStatZIP: TWideStringField;
    qryStatCITY: TWideStringField;
    qryStatAreaId: TIntegerField;
    qryStatSalesMenId: TIntegerField;
    qryStatIGroupId1: TIntegerField;
    qryStatPososto1: TFloatField;
    qryStatHaveGroup1: TBooleanField;
    qryStatIGroupId2: TIntegerField;
    qryStatPososto2: TFloatField;
    qryStatHaveGroup2: TBooleanField;
    qryStatIGroupId3: TIntegerField;
    qryStatPososto3: TFloatField;
    qryStatHaveGroup3: TBooleanField;
    qryStatIGroupId4: TIntegerField;
    qryStatPososto4: TFloatField;
    qryStatHaveGroup4: TBooleanField;
    qryStatIGroupId5: TIntegerField;
    qryStatPososto5: TFloatField;
    qryStatHaveGroup5: TBooleanField;
    qryStatIGroupId6: TIntegerField;
    qryStatPososto6: TFloatField;
    qryStatHaveGroup6: TBooleanField;
    qryStatIGroupId7: TIntegerField;
    qryStatPososto7: TFloatField;
    qryStatHaveGroup7: TBooleanField;
    qryStatIGroupId8: TIntegerField;
    qryStatPososto8: TFloatField;
    qryStatHaveGroup8: TBooleanField;
    qryStatIGroupId9: TIntegerField;
    qryStatPososto9: TFloatField;
    qryStatHaveGroup9: TBooleanField;
    qryStatIGroupId10: TIntegerField;
    qryStatPososto10: TFloatField;
    qryStatHaveGroup10: TBooleanField;
    qryStatDeleted: TBooleanField;
    qryStatDelUsr: TIntegerField;
    qryStatDelDT: TDateTimeField;
    qryStatInActive: TBooleanField;
    qryStatInActiveUsr: TIntegerField;
    qryStatInActiveDt: TDateTimeField;
    qryStatStopSales: TBooleanField;
    qryStatStopSalesUsr: TIntegerField;
    qryStatStopSalesDt: TDateTimeField;
    qryStatIsTest: TBooleanField;
    qryStatIsTestUsr: TIntegerField;
    qryStatIsTestDt: TDateTimeField;
    qryStatEndPending: TBooleanField;
    qryStatEndPendingDT: TDateTimeField;
    qryStatEndPendingUsr: TIntegerField;
    qry101CustomerLCustomerName: TStringField;
    qry101StationLSrationName: TStringField;
    qry101MerchantLMerchantName: TStringField;
    Button2: TButton;
    qry1MerchantNoAction: TBooleanField;
    qry1StationNoAction: TBooleanField;
    qry1CustomerNoAction: TBooleanField;
    qry101CustomerLNoAction: TBooleanField;
    qry101StationLNoAction: TBooleanField;
    qry101MerchantLNoAction: TBooleanField;
    Label1: TLabel;
    Label2: TLabel;
    actPrint43: TAction;
    actToExcel: TAction;
    Temp: TMenuItem;
    ActionList2: TActionList;
    qryTranAcardAcardCodeFull: TWideStringField;
    cxGrid1DBTableView1AcardAcardCodeFull: TcxGridDBColumn;
    UpDown1: TUpDown;
    Edit4: TEdit;
    Procedure actCloseExecute(Sender: TObject);
    Procedure FormShow(Sender: TObject);
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure actPreviewExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actPrint1Execute(Sender: TObject);
    procedure actPrint2Execute(Sender: TObject);
    procedure actPrint3Execute(Sender: TObject);
    procedure actPrint4Execute(Sender: TObject);
    procedure actPrint5Execute(Sender: TObject);
    procedure actPrint6Execute(Sender: TObject);
    procedure actPrint7Execute(Sender: TObject);
    procedure actPrintSplit7Execute(Sender: TObject);
    procedure actPrint8Execute(Sender: TObject);
    procedure actPrint9Execute(Sender: TObject);
    procedure actPrint10Execute(Sender: TObject);
    procedure actPrint12Execute(Sender: TObject);
    procedure actPrint14Execute(Sender: TObject);
    procedure actPrint22Execute(Sender: TObject);
    procedure actPrint15Execute(Sender: TObject);
    procedure actPrint16Execute(Sender: TObject);
    procedure actPrint17Execute(Sender: TObject);
    procedure actPrint18Execute(Sender: TObject);
    procedure actPrint32Execute(Sender: TObject);
    procedure actPrint40Execute(Sender: TObject);
    procedure actPrint41Execute(Sender: TObject);
    procedure actPrint42Execute(Sender: TObject);
    procedure ToPdf(Report: TrptBaseAvinCard);
    procedure ToPdf2(Report: TrptBaseAvinCard; FileName: string = '');
    procedure PrintOrPdf(Report: TrptBaseAvinCard);
    procedure Excel1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actPrint42aExecute(Sender: TObject);
    procedure actPrint2PDFExecute(Sender: TObject);
    procedure actCreateFolderExecute(Sender: TObject);
    procedure actPrint4PdfExecute(Sender: TObject);
    procedure actPrint22PDFExecute(Sender: TObject);
    procedure SetStatusText(Text: String; PanelNo: Integer);
    procedure actPrnSendExecute(Sender: TObject);
    procedure actPrint8PDFExecute(Sender: TObject);
    procedure actPrintPDFExecute(Sender: TObject);
    procedure ActSendMailExecute(Sender: TObject);
    procedure ActSendFaxExecute(Sender: TObject);

    procedure actMailSpecificExecute(Sender: TObject);
    procedure actPrint7PDFStExecute(Sender: TObject);
    procedure actPrint22PDFStExecute(Sender: TObject);
    procedure actPrint4PdfStExecute(Sender: TObject);
    procedure actPrnSendStExecute(Sender: TObject);
    procedure actPrint8PDFStExecute(Sender: TObject);
    procedure actPrintPDFStExecute(Sender: TObject);
    procedure ActSendMailStExecute(Sender: TObject);
    procedure ActSendFaxStExecute(Sender: TObject);
    procedure actMerPrnSendExecute(Sender: TObject);
    procedure ActMerSendFaxExecute(Sender: TObject);
    procedure ActMerSendMailExecute(Sender: TObject);
    procedure actMerPrintPDFExecute(Sender: TObject);
    procedure act1Execute(Sender: TObject);
    procedure cxGrid1Enter(Sender: TObject);
    procedure N1231Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure actOutFolderExecute(Sender: TObject);
    procedure EditFileDblClick(Sender: TObject);
    procedure qry1CustomerCalcFields(DataSet: TDataSet);
    procedure qry1StationCalcFields(DataSet: TDataSet);
    procedure qry1MerchantCalcFields(DataSet: TDataSet);
    procedure actMailSpecificStExecute(Sender: TObject);
    procedure actMailSpecificMeExecute(Sender: TObject);
    procedure actQrDesignExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure popFilterPopup(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
      var AHandled: Boolean);
    procedure actPrint2merPdfExecute(Sender: TObject);
    procedure DBGrid6DblClick(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actPrint43Execute(Sender: TObject);
    procedure actToExcelExecute(Sender: TObject);
    procedure TempClick(Sender: TObject);
    procedure LoadImage(Form: TrptBaseAvinCard);
    procedure ActionList2Execute(Action: TBasicAction; var Handled: Boolean);
  Private
    FMsgStore: IRwMAPIMsgStore;

    FxPath: TFileName;
    FOnlyPrintPdf: Boolean;
    FOnlyEmailPdf: Boolean;
    FOnlyFaxPdf: Boolean;
    FNoContactMerchant: Boolean;
    FNoActionStation: Boolean;
    FNoContactStation: Boolean;
    FNoActionCustomer: Boolean;
    FNoContactCustomer: Boolean;
    FNoActionMerchant: Boolean;
    FGlobalPdf: Boolean;
    FGlobalFileName: string;
    procedure SetxPath(const Value: TFileName);

    // procedure SendEmail(EmailAd, PelaName, SubjectStr, x1: String);
    // procedure SendFax(FaxNo, PelaName, SubjectStr, x1: String);
    // procedure SendFaxSt(FaxNo, PelaName, SubjectStr, x1: String);
    // procedure SendEmailSt(EmailAd, PelaName, SubjectStr, x1: String);
    // procedure actPrnSend0Execute(Sender: TObject);
    // procedure actPrnSend0StExecute(Sender: TObject);
    // procedure SendEmailSpec(EmailAd, PelaName, SubjectStr, File1,File2: String);
    // procedure SendEmailSpecSt(EmailAd, PelaName, SubjectStr, File1,File2: String);
    // procedure SendFaxSpecSt(FaxNo, PelaName, SubjectStr,File1,File2: String);

    procedure SetOnlyPrintPdf(const Value: Boolean);
    procedure SetOnlyEmailPdf(const Value: Boolean);
    procedure SetOnlyFaxPdf(const Value: Boolean);

    procedure SendFaxGen(FaxNo, PelaName, PelaNameSap, SubjectStr: string; slx: TStringList);
    procedure SendPrintGen(FaxNo, PelaName, PelaNameSap, SubjectStr: string; slx: TStringList);
    procedure SendEmailGen(EmailAd, PelaName, PelaNameSap, SubjectStr: string; slx: TStringList);

    procedure ExpandRepList(InitList: TStringList; ExpandedLiteral: string; ExpandedLiteralSap: string; var OutList: TStringList);
    procedure ExpandRepStr(InitStr: String; ExpandedLiteral: string; var OutString: String);

    procedure PrintSplitReport(Report: TrptBaseAvinCard; VarDataSet: TDataSet; RepSqlName: string; FieldName: string; FilePath: string; PreFileName: string; PostFileName: string;
      PreSql: string; PostSql: string; ChPBar: TProgressBar);

    procedure PrnFaxSendGen(VarDataSet: TDataSet; Subject: String; FldCode: String; FldMail: String; FldFax: String; ChkMail: String; ChkFax: String; ChkPrint: String;
      FilePath: string; ChPBar: TProgressBar; TabAct: TTabSheet; TabCont: TPageControl; MemoFld0: TMemo; MemoFld1: TMemo; MustExistReport: String; RepList: TStringList;
      FldSap: String = '');

    procedure ActSendStation;
    procedure ActSendMerchant;
    procedure ActSendCustomer;
    procedure SetNoActionCustomer(const Value: Boolean);
    procedure SetNoActionMerchant(const Value: Boolean);
    procedure SetNoActionStation(const Value: Boolean);
    procedure SetNoContactCustomer(const Value: Boolean);
    procedure SetNoContactMerchant(const Value: Boolean);
    procedure SetNoContactStation(const Value: Boolean);
    procedure SetGlobalPdf(const Value: Boolean);
    procedure SetGlobalFileName(const Value: string);

  Public
    FrDateSt: TDateTime;
    ToDateSt: TDateTime;
    FrDate: TDateTime;
    ToDate: TDateTime;
    ExecQuery: Integer;
    SqlText: string;

    b, bCor: AnsiString;
    CustStr, CustStrSh, TranStr: AnsiString;

    procedure CheckAllMFP;

    property GlobalPdf: Boolean read FGlobalPdf write SetGlobalPdf;
    property GlobalFileName: string read FGlobalFileName write SetGlobalFileName;

    property xPath: TFileName read FxPath write SetxPath;

    property OnlyPrintPdf: Boolean read FOnlyPrintPdf write SetOnlyPrintPdf;
    property OnlyEmailPdf: Boolean read FOnlyEmailPdf write SetOnlyEmailPdf;
    property OnlyFaxPdf: Boolean read FOnlyFaxPdf write SetOnlyFaxPdf;

    property NoContactStation: Boolean read FNoContactStation write SetNoContactStation;
    property NoContactMerchant: Boolean read FNoContactMerchant write SetNoContactMerchant;
    property NoContactCustomer: Boolean read FNoContactCustomer write SetNoContactCustomer;

    property NoActionStation: Boolean read FNoActionStation write SetNoActionStation;
    property NoActionMerchant: Boolean read FNoActionMerchant write SetNoActionMerchant;
    property NoActionCustomer: Boolean read FNoActionCustomer write SetNoActionCustomer;

  End;

Implementation

Uses FMain, Common, FBForm, DMain, DBase, uRwMAPIProps;

{$R *.dfm}

Procedure TfrmPrnTran.FormShow(Sender: TObject);
Var
  a: AnsiString;
  ac: TCursor;
Begin
  Try
    if ExecQuery = 0 then
      begin
        PageControl1.ActivePage := TsGrid;
        // cxGrid1.Visible := True;
        // Panel1.Visible        := False;
      end
    else
      begin
        PageControl1.ActivePage := TsMemo;
        // cxGrid1.Visible := False;
        // Panel1.Visible        := True;
      end;

    DoCursorPush(crSQLWait);
    qryTran.Close;
{$REGION 'Old Implementation'}
    // qryTran.SQL.Clear;

    // qryTran.SQL.Add('SELECT *');
    // qryTran.SQL.Add('FROM V_TRA_STA_ACA_CUS');

    { a := WhereApoDateOnly(FrDate, 'TRANDATE', True);
      a := a + WhereEosDateOnly(ToDate, 'TRANDATE', Not(length(Trim(a)) > 1));
      a := a + WhereApoDateOnly(FrDateIns, '[TRAN.INSDT]',
      Not(length(Trim(a)) > 1));
      a := a + WhereEosDateOnly(ToDateIns, '[TRAN.INSDT]',
      Not(length(Trim(a)) > 1));
      a := a + WhereApoNumber(FrACardCode, 'ACARDCODENUM',
      Not(length(Trim(a)) > 1));
      a := a + WhereEosNumber(ToACardCode, 'ACARDCODENUM',
      Not(length(Trim(a)) > 1));
      a := a + WhereApoString(FrStation, '[STATION.NAME]',
      Not(length(Trim(a)) > 1));
      a := a + WhereEosString(ToStation, '[STATION.NAME]',
      Not(length(Trim(a)) > 1));
      a := a + WhereApoString(FrMerchandId, 'MerchantCode',
      Not(length(Trim(a)) > 1));
      a := a + WhereEosString(ToMerchandId, 'MerchantCode',
      Not(length(Trim(a)) > 1));
      a := a + WhereApoString(FrTerminalId, 'TerminalCode',
      Not(length(Trim(a)) > 1));
      a := a + WhereEosString(ToTerminalId, 'TerminalCode',
      Not(length(Trim(a)) > 1));

      case VoidMode of
      0:
      a := a + WhereEosBoolean(True, 'ISAUTO', Not(length(Trim(a)) > 1));
      1:
      a := a + WhereEosBoolean(False, 'ISAUTO', Not(length(Trim(a)) > 1));
      end;
      case EnhmSt of
      0:
      a := a + WhereEosBoolean(True, 'StationUpd', Not(length(Trim(a)) > 1));
      1:
      a := a + WhereEosBoolean(False, 'StationUpd', Not(length(Trim(a)) > 1));
      end;
      case EnhmCust of
      0:
      a := a + WhereEosBoolean(True, 'ACardUpd', Not(length(Trim(a)) > 1));
      1:
      a := a + WhereEosBoolean(False, 'ACardUpd', Not(length(Trim(a)) > 1));
      end;
      case EnhmDis of
      0: a := a + WhereEosBoolean(True, 'DISCOUNTUPD', Not(length(Trim(a)) > 1));
      1: a := a + WhereEosBoolean(False, 'DISCOUNTUPD',Not(length(Trim(a)) > 1));
      end;
      case Typed of
      0:
      a := a + WhereEosBoolean(True, 'IsTyped', Not(length(Trim(a)) > 1));
      1:
      a := a + WhereEosBoolean(False, 'IsTyped', Not(length(Trim(a)) > 1));
      end;
      case StatTest of
      0:
      a := a + WhereEosBoolean(True, '[Station.ISTEST]',
      Not(length(Trim(a)) > 1));
      1:
      a := a + WhereEosBoolean(False, '[Station.ISTEST]',
      Not(length(Trim(a)) > 1));
      end;
      case EnhmParak of
      0:
      a := a + WhereEosBoolean(True, 'CommissionUpd',
      Not(length(Trim(a)) > 1));
      1:
      a := a + WhereEosBoolean(False, 'CommissionUpd',
      Not(length(Trim(a)) > 1));
      end;
      case EnhmDaily of
      0:
      a := a + WhereEosBoolean(True, 'PELADAILYUPD',
      Not(length(Trim(a)) > 1));
      1:
      a := a + WhereEosBoolean(False, 'PELADAILYUPD',
      Not(length(Trim(a)) > 1));
      end;
      case CardActive of
      0:
      a := a + WhereEosBoolean(True, '[ACard.ISActive]',
      Not(length(Trim(a)) > 1));
      1:
      a := a + WhereEosBoolean(False, '[ACard.ISActive]',
      Not(length(Trim(a)) > 1));
      end;

      case DetailEmp of
      0:
      a := a + WhereEosBoolean(True, '[Customer.HasDetailEmp]',
      Not(length(Trim(a)) > 1));
      1:
      a := a + WhereEosBoolean(False, '[Customer.HasDetailEmp]',
      Not(length(Trim(a)) > 1));
      end;

      if Not(EnhmStBtF = 0) then
      a := a + WhereApoNumber(inttostr(EnhmStBtF), 'StationUPDBT',
      Not(length(Trim(a)) > 1));
      if Not(EnhmStBtT = 0) then
      a := a + WhereEosNumber(inttostr(EnhmStBtT), 'StationUPDBT',
      Not(length(Trim(a)) > 1));
      if Not(EnhmCustBtF = 0) then
      a := a + WhereApoNumber(inttostr(EnhmCustBtF), 'AcardUPDBT',
      Not(length(Trim(a)) > 1));
      if Not(EnhmCustBtT = 0) then
      a := a + WhereEosNumber(inttostr(EnhmCustBtT), 'AcardUPDBT',
      Not(length(Trim(a)) > 1));
      if Not(EnhmDisBtF = 0) then
      a := a + WhereApoNumber(inttostr(EnhmDisBtF), 'DISCOUNTUPDBT',
      Not(length(Trim(a)) > 1));
      if Not(EnhmDisBtT = 0) then
      a := a + WhereEosNumber(inttostr(EnhmDisBtT), 'DISCOUNTUPDBT',
      Not(length(Trim(a)) > 1));
      if Not(InportBtF = 0) then
      a := a + WhereApoNumber(inttostr(InportBtF), 'BatchNO',
      Not(length(Trim(a)) > 1));
      if Not(InportBtT = 0) then
      a := a + WhereEosNumber(inttostr(InportBtT), 'BatchNO',
      Not(length(Trim(a)) > 1));
      if Not(EnhmCoBtF = 0) then
      a := a + WhereApoNumber(inttostr(EnhmCoBtF), 'CommissionUPDBT',
      Not(length(Trim(a)) > 1));
      if Not(EnhmCoBtT = 0) then
      a := a + WhereEosNumber(inttostr(EnhmCoBtT), 'CommissionUPDBT',
      Not(length(Trim(a)) > 1));
      if Not(EnhmDeF = 0) then
      a := a + WhereApoNumber(inttostr(EnhmDeF), 'PELADAILYUPDBT',
      Not(length(Trim(a)) > 1));
      if Not(EnhmDeT = 0) then
      a := a + WhereEosNumber(inttostr(EnhmDeT), 'PELADAILYUPDBT',
      Not(length(Trim(a)) > 1));

      TranStr := a;

      /// Split the Where Clause in two Statements///

      a := a + WhereApoString(FrCustomer, '[CUSTOMER.NAME]',
      Not(length(Trim(a)) > 1));
      a := a + WhereEosString(ToCustomer, '[CUSTOMER.NAME]',
      Not(length(Trim(a)) > 1));
      CustStr := CustStr + WhereApoString(FrCustomer, 'NAME',
      Not(length(Trim(CustStr)) > 1));
      CustStr := CustStr + WhereEosString(ToCustomer, 'NAME',
      Not(length(Trim(CustStr)) > 1));
      CustStrSh := CustStrSh + WhereApoString(FrCustomer, 'NAME',
      Not(length(Trim(CustStrSh)) > 1));
      CustStrSh := CustStrSh + WhereEosString(ToCustomer, 'NAME',
      Not(length(Trim(CustStrSh)) > 1));

      if FrCustomerCode > 0 then
      begin
      a := a + WhereApoNumber(inttostr(FrCustomerCode),
      '[CUSTOMER.CustomerId]', Not(length(Trim(a)) > 1));
      CustStr := CustStr + WhereApoNumber(inttostr(FrCustomerCode),
      '[CUSTOMER.CustomerId]', Not(length(Trim(CustStr)) > 1));
      CustStrSh := CustStrSh + WhereApoNumber(inttostr(FrCustomerCode),
      '[CustomerId]', Not(length(Trim(CustStrSh)) > 1));
      end;

      if ToCustomerCode > 0 then
      begin
      a := a + WhereEosNumber(inttostr(ToCustomerCode),
      '[CUSTOMER.CustomerId]', Not(length(Trim(a)) > 1));
      CustStr := CustStr + WhereEosNumber(inttostr(ToCustomerCode),
      '[CUSTOMER.CustomerId]', Not(length(Trim(CustStr)) > 1));
      CustStrSh := CustStrSh + WhereEosNumber(inttostr(ToCustomerCode),
      '[CustomerId]', Not(length(Trim(CustStrSh)) > 1));
      end;

      case CustActive of
      0:
      a := a + WhereEosBoolean(True, '[Customer.ISActive]',
      Not(length(Trim(a)) > 1));
      1:
      a := a + WhereEosBoolean(False, '[Customer.ISActive]',
      Not(length(Trim(a)) > 1));
      end;
      case CustActive of
      0:
      CustStr := CustStr + WhereEosBoolean(True, 'ISActive',
      Not(length(Trim(CustStr)) > 1));
      1:
      CustStr := CustStr + WhereEosBoolean(False, 'ISActive',
      Not(length(Trim(CustStr)) > 1));
      end;
      case CustActive of
      0:
      CustStrSh := CustStrSh + WhereEosBoolean(True, 'ISActive',
      Not(length(Trim(CustStrSh)) > 1));
      1:
      CustStrSh := CustStrSh + WhereEosBoolean(False, 'ISActive',
      Not(length(Trim(CustStrSh)) > 1));
      end;

      case CustTest of
      0:
      a := a + WhereEosBoolean(True, '[Customer.ISTEST]',
      Not(length(Trim(a)) > 1));
      1:
      a := a + WhereEosBoolean(False, '[Customer.ISTEST]',
      Not(length(Trim(a)) > 1));
      end;
      case CustTest of
      0:
      CustStr := CustStr + WhereEosBoolean(True, 'ISTEST',
      Not(length(Trim(CustStr)) > 1));
      1:
      CustStr := CustStr + WhereEosBoolean(False, 'ISTEST',
      Not(length(Trim(CustStr)) > 1));
      end;
      case CustTest of
      0:
      CustStrSh := CustStrSh + WhereEosBoolean(True, 'ISTEST',
      Not(length(Trim(CustStrSh)) > 1));
      1:
      CustStrSh := CustStrSh + WhereEosBoolean(False, 'ISTEST',
      Not(length(Trim(CustStrSh)) > 1));
      end;

      If (length(CustStr) <> 0) Then
      CustStr := 'Where ' + CustStr;
      If (length(CustStrSh) <> 0) Then
      CustStrSh := 'Where ' + CustStrSh;

      /// Split the Where Clause in two Statements///

      If (length(a) <> 0) Then
      qryTran.SQL.Add(' WHERE ' + a);
      If (length(a) <> 0) Then
      b := 'Where ' + a;
      qryTran.SQL.Add
      ('ORDER BY TRANDATE, [CUSTOMER.NAME], ACARDCODE, [STATION.NAME]');

      If (length(a) <> 0) Then
      begin
      ADOQuery1.SQL.Add(' WHERE ' + a);
      ADOQuery1St.SQL.Add(' WHERE ' + a);
      end;
      ADOQuery1.Open;
      ADOQuery2.Open;
      ADOQuery1St.Open;
      ADOQuery2St.Open;
    }

{$ENDREGION}
    Memo1.Lines.Add('Trans');
    Memo1.Lines.Add(qryTran.SQL.Text);
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('Customer');
    Memo1.Lines.Add(qry1Customer.SQL.Text);
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('Merchant');
    Memo1.Lines.Add(qry1Merchant.SQL.Text);
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('Station');
    Memo1.Lines.Add(qry1Station.SQL.Text);

    qry1Station.Active    := True;
    qry1Merchant.Active   := True;
    qry1Customer.Active   := True;
    qry101Station.Active  := True;
    qry101Merchant.Active := True;
    qry101Customer.Active := True;

    if ExecQuery = 0 then
      begin
        qryTran.Open;
        Self.Caption := Self.Caption + ' (' + IntToStr(qryTran.RecordCount) + ' ' + ' C:' + IntToStr(qry1Customer.RecordCount) + ' ' + ':' + IntToStr(qry101Customer.RecordCount) +
          ' ' + ' M:' + IntToStr(qry1Merchant.RecordCount) + ' ' + ':' + IntToStr(qry101Merchant.RecordCount) + ' ' + ' S:' + IntToStr(qry1Station.RecordCount) + ' ' + ':' +
          IntToStr(qry101Station.RecordCount) + ')';
      end
    else
      begin

      end;


    // Fix Delete
    // bCor := AnsiReplaceStr(a, '[', '');
    // bCor := AnsiReplaceStr(bCor, ']', '');
    // bCor := AnsiReplaceText(bCor, 'TRAN.INSDT', '[TRAN].INSDT');
    // bCor := 'Where ' + bCor;

  Finally
    DoCursorPop;
  End;
End;

procedure TfrmPrnTran.LoadImage(Form: TrptBaseAvinCard);
begin
  if GlobalPdf then
    Common.LoadImageNoDlg(Form)
  else
    Common.LoadImage(Form);
end;

procedure TfrmPrnTran.N1231Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.OptionsBehavior.BestFitMaxRecordCount := 10;
  cxGrid1DBTableView1.ApplyBestFit();
  // OptionsView.ColumnAutoWidth := True;
end;

procedure TfrmPrnTran.popFilterPopup(Sender: TObject);
begin
  inherited;

end;

{$REGION 'Testing'}

procedure TfrmPrnTran.act1Execute(Sender: TObject);
var
  frm: TfrmFilterEn;
  TmpSql: string;
begin
  inherited;
  frm := TfrmFilterEn.CreateWithParamDSet(Self, qryTran, TDMBase(Self));
  if frm.ShowModal = mrOk then
    TmpSql := frm.KSleo
  else
    TmpSql := '';
  frm.Free;

  qryTran.Active := false;
  // MessageDlg(qryTran.SQL.Text, mtWarning, [mbOK], 0);
  qryTran.SQL.Clear;
  qryTran.SQL.Add('Select * From V_TRA_STA_ACA_CUS ');
  qryTran.SQL.Add(' Where ');
  qryTran.SQL.Add(TmpSql);
  qryTran.Active := True;
end;

{$ENDREGION}

Procedure TfrmPrnTran.actCloseExecute(Sender: TObject);
Begin
  Close;
End;

procedure TfrmPrnTran.qry1CustomerCalcFields(DataSet: TDataSet);
begin
  inherited;
  qry1CustomerCustomerCustomerId.Value := qry1CustomerCUSTOMERID.Value;
  if ((qry1CustomerSendFax.AsBoolean = false) and (qry1CustomerSendMail.AsBoolean = false) and (qry1CustomerSendPrint.AsBoolean = false)) then
    begin
      qry1CustomerNoAction.AsBoolean := True;
      NoActionCustomer               := True;
    end
  else
    qry1CustomerNoAction.AsBoolean := false;
end;

procedure TfrmPrnTran.qry1MerchantCalcFields(DataSet: TDataSet);
begin
  inherited;
  qry1MerchantMerchantMerchantId.Value := qry1MerchantMerchantId.Value;
  if ((qry1MerchantSendFax.AsBoolean = false) and (qry1MerchantSendMail.AsBoolean = false) and (qry1MerchantSendPrint.AsBoolean = false)) then
    begin
      qry1MerchantNoAction.AsBoolean := True;
      NoActionMerchant               := True;
    end
  else
    qry1MerchantNoAction.AsBoolean := false;
end;

procedure TfrmPrnTran.qry1StationCalcFields(DataSet: TDataSet);
begin
  inherited;
  qry1StationStationStationId.Value := qry1StationStationid.Value;
  if ((qry1StationSendFax.AsBoolean = false) and (qry1StationSendMail.AsBoolean = false) and (qry1StationSendPrint.AsBoolean = false)) then
    begin
      qry1StationNoAction.AsBoolean := True;
      NoActionStation               := True;
    end
  else
    qry1StationNoAction.AsBoolean := false;
end;

procedure TfrmPrnTran.qryTranCalcFields(DataSet: TDataSet);
begin
  // !!
  // qryTranFullCardNo.AsString := ReturnFullIdNo(qryTranACARDCODE.AsInteger);
end;

procedure TfrmPrnTran.SetxPath(const Value: TFileName);
begin
  FxPath := Value;
end;

procedure TfrmPrnTran.actCreateFolderExecute(Sender: TObject);
begin
  inherited;
  SaveDialog10.InitialDir := GetIniPath('EXPORT_TRAN_MONTH');
  if SaveDialog10.Execute then
    begin
      xPath := SaveDialog10.Directory;
      // ExtractFileDir(SaveDialog1.FileName);
      actOutFolder.Caption := 'Out Folder = ' + xPath;
      MessageDlg(xPath, mtWarning, [mbOK], 0);
    end;

end;

procedure TfrmPrnTran.actPreviewExecute(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link2);
end;

procedure TfrmPrnTran.actPrintExecute(Sender: TObject);
var
  frm: TrptKinhs1;
begin
  try
    frm := TrptKinhs1.Create(Self);
    LoadImage(frm);
    frm.qryTran.Active := false;
    if SqlText > '' then
      frm.qryTran.SQL.Add('Where ' + SqlText);
    frm.qryTran.SQL.Add('Order BY  [Station.StationId], [Station.Name] , [Tran.TranDate], [Tran.SitemId] , [Acard.AcardCode] ');
    frm.qryTran.Active := True;
    PrintOrPdf(frm);
  finally
    frm.Free;
  end;
end;

procedure TfrmPrnTran.actPrint1Execute(Sender: TObject);
// var
// frm: TrptKinhs2;
begin
  { frm := TrptKinhs2.Create(self);
    LoadImage(frm);
    frm.qryTran.Active := False;
    frm.qryTran.SQL.Add(b);
    frm.qryTran.SQL.Add
    ('Order BY [Customer.CustomerId], ACardCode, TranDate, TranTime, RefStr, SitemId ');
    frm.qryTran.Active := True;
    PrintOrPdf(frm);
    // frm.PreviewModal;
    frm.Free; }
end;

procedure TfrmPrnTran.actPrint2Execute(Sender: TObject);
var
  frm: TrptKinhs3;
begin
  try
    frm := TrptKinhs3.Create(Self);
    LoadImage(frm);
    frm.qryTran.Active := false;
    if SqlText > '' then
      frm.qryTran.SQL.Add('Where ' + SqlText);
    frm.qryTran.SQL.Add('Order BY  [Station.StationId], [Tran.TranDate], [Acard.AcardCode], [Tran.SitemId]');
    frm.qryTran.Active := True;
    PrintOrPdf(frm);
  finally
    frm.Free;
  end;
end;

procedure TfrmPrnTran.actPrint3Execute(Sender: TObject);
var
  frm: TrptKinhs4;
begin
  try
    frm := TrptKinhs4.Create(Self);
    LoadImage(frm);
    frm.qryTran.Active := false;
    if SqlText > '' then
      frm.qryTran.SQL.Add('Where ' + SqlText);
    frm.qryTran.SQL.Add('Order BY [Station.StationId], [Tran.SitemId], [Tran.TranDate], [Tran.TranTime], [Acard.AcardCode]');
    frm.qryTran.Active := True;
    PrintOrPdf(frm);
    // frm.PreviewModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmPrnTran.actPrint4Execute(Sender: TObject);
var
  frm: TrptKinhs5;
begin
  try
    frm := TrptKinhs5.Create(Self);
    LoadImage(frm);
    frm.qryTran.Active := false;
    if SqlText > '' then
      frm.qryTran.SQL.Add('Where ' + SqlText);
    frm.qryTran.SQL.Add('Order BY [Customer.CustomerId], [Tran.TranDate], [Tran.TranTime], [Acard.ACardCode], [Tran.RefStr] ');
    frm.qryTran.Active := True;
    PrintOrPdf(frm);
    // frm.PreviewModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmPrnTran.actPrint5Execute(Sender: TObject);
var
  frm: TrptKinhs6;
begin
  try
    frm := TrptKinhs6.Create(Self);
    LoadImage(frm);
    frm.qryTran.Active := false;
    if MessageDlg('Να εκτυπωθούν αναλυτικές Γραμμές', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      frm.SetPrintDetail(True)
    else
      frm.SetPrintDetail(false);
    if SqlText > '' then
      frm.qryTran.SQL.Add('Where ' + SqlText);
    frm.qryTran.SQL.Add('Order BY [Station.StationId], [Customer.CustomerId], [Tran.TranDate], [Tran.TranTime], [Acard.ACardCode], [Tran.RefStr]');
    frm.qryTran.Active := True;
    PrintOrPdf(frm);
  finally
    frm.Free;

  end;
end;

procedure TfrmPrnTran.actPrint6Execute(Sender: TObject);
// var
// frm: TrptKinhs7;
// bConv: String;
begin
  { frm := TrptKinhs7.Create(self);
    LoadImage(frm);
    frm.qryTran.Active := False;

    bConv := AnsiReplaceStr(b, '[', '');
    bConv := AnsiReplaceStr(bConv, ']', '');
    bConv := AnsiReplaceText(bConv, 'TRAN.INSDT', '[TRAN].INSDT');

    frm.qryTran.SQL.Add(bConv);
    // Access Code
    // frm.qryTran.SQL.Add('GROUP BY [Customer.CustomerId],[ACard.AcardId],[Acard.ACardCode],[Tran.SitemId]');
    // frm.qryTran.SQL.Add('ORDER BY  [Customer.CustomerId],[ACard.AcardId],[Acard.ACardCode],[Tran.SitemId]');
    // Access Code

    // SQL Code
    frm.qryTran.SQL.Add
    ('GROUP BY Acard.CustomerId ,Acard.AcardId,ACardCode,[Tran].SitemId');
    frm.qryTran.SQL.Add
    ('ORDER BY Acard.CustomerId ,Acard.AcardId,ACardCode,[Tran].SitemId');
    // SQL Code

    frm.qryTran.Active := True;
    PrintOrPdf(frm);
    // frm.PreviewModal;
    frm.Free; }
end;

procedure TfrmPrnTran.actPrint7Execute(Sender: TObject);
var
  frm: TrptKinhs8;
  bConv: String;
begin
  try
    DoCursorPush(crSQLWait);
    frm := TrptKinhs8.Create(Self);
    LoadImage(frm);

    if SqlText > '' then
      frm.qryTran.SQL.Add('Where ' + SqlText);

    frm.qryTran.SQL.Add('Group By  [CUSTOMER.CUSTOMERId], [Tran.SitemId] , [ACard.ACardCode]');
    frm.qryTran.SQL.Add('Order By  [CUSTOMER.CUSTOMERId], [Tran.SitemId] , [ACard.ACardCode]');
    frm.qryTran.Active := True;

    PrintOrPdf(frm);
  finally;
    frm.Free;
    DoCursorPop;
  end;
end;

procedure TfrmPrnTran.actPrint8Execute(Sender: TObject);
var
  frm: TrptKinhs9;
begin
  try
    frm := TrptKinhs9.Create(Self);
    LoadImage(frm);
    if SqlText > '' then
      frm.qryTran.SQL.Add('Where ' + SqlText);
    frm.qryTran.SQL.Add('ORDER BY [Customer.CustomerId],[Tran.TranDate],[Tran.TranTime],[Acard.AcardId],[Tran.SitemId]');
    frm.qryTran.Active := True;
    PrintOrPdf(frm);
  finally;
    frm.Free;
  end;
end;

procedure TfrmPrnTran.actPrint9Execute(Sender: TObject);
// var frm: TrptKinhs10;
// bConv: String;
begin
  // frm := TrptKinhs10.Create(self);
  // LoadImage(frm);
  // frm.qryTran.Active   := False;
  // frm.QCustomer.Active := False;
  // if CustStr > '' then
  // begin
  // bConv := AnsiReplaceStr(CustStr, '[', '');
  // bConv := AnsiReplaceStr(bConv, ']', '');
  // bConv := AnsiReplaceText(bConv, 'Customer.CustomerID', 'CustomerID');
  // frm.QCustomer.SQL.Add(bConv);
  // end;
  // frm.QCustomer.SQL.Add('ORDER BY CUSTOMER.NAME');
  //
  // frm.qryTran.SQL.Add(bCor);
  //
  // frm.qryTran.SQL.Add(' AND Customer.CustomerId = :CustomerId');
  // frm.qryTran.SQL.Add(' GROUP BY Customer.CustomerId, Acard.ACardCode');
  // frm.QCustomer.Active := True;
  // frm.qryTran.Active   := True;
  // frm.Preview;
  // frm.Free;
end;

procedure TfrmPrnTran.actPrint10Execute(Sender: TObject);
var
  frm: TrptKinhs11;
begin
  try
    frm := TrptKinhs11.Create(Self);
    LoadImage(frm);
    if SqlText > '' then
      frm.qryTran.SQL.Add('Where ' + SqlText);
    frm.qryTran.SQL.Add('GROUP BY [STATION.STATIONID], [TRAN.TRANDATE], [TRAN.SITEMID], [SITEM.DESCR]');
    frm.qryTran.SQL.Add('ORDER BY [STATION.STATIONID], [TRAN.TRANDATE], [TRAN.SITEMID], [SITEM.DESCR]');
    frm.qryTran.Active := True;
    PrintOrPdf(frm);
  finally
    frm.Free;
  end;
end;

procedure TfrmPrnTran.actPrint12Execute(Sender: TObject);
var
  frm: TrptKinhs12;
  // bConv: String;
begin
  try
    frm := TrptKinhs12.Create(Self);
    LoadImage(frm);
    if SqlText > '' then
      frm.qryTran.SQL.Add('WHERE ' + SqlText);
    frm.qryTran.SQL.Add('GROUP BY [STATION.STATIONID], [CUSTOMER.CUSTOMERID], [TRAN.SITEMID],[SITEM.IGROUPID]');
    frm.qryTran.SQL.Add('ORDER BY [STATION.STATIONID], [CUSTOMER.CUSTOMERID], [TRAN.SITEMID],[SITEM.IGROUPID]');
    frm.IntReport;
    frm.qryTran.Active := True;
    // frm.Preview;
    PrintOrPdf(frm);
  finally
    frm.Free;
  end;
end;

procedure TfrmPrnTran.actPrint14Execute(Sender: TObject);
// var
// frm: TrptKinhs13;
begin
  { frm := TrptKinhs13.Create(self);
    LoadImage(frm);
    frm.qryTran.SQL.Add(bCor);
    frm.qryTran.SQL.Add('GROUP BY Customer.CustomerId');
    frm.qryTran.SQL.Add('ORDER BY Customer.CustomerId');
    frm.qryTran.Active := True;
    frm.Preview;
    frm.Free; }
end;

procedure TfrmPrnTran.actPrint22Execute(Sender: TObject);
var
  frm: TrptKinhs22;
begin
  try

    frm := TrptKinhs22.Create(Self);
    LoadImage(frm);
    frm.qryTran.Active := false;
    frm.ShowProgress   := True;

    if SqlText > '' then
      frm.qryTran.SQL.Add(' Where ' + SqlText);

    frm.qryTran.SQL.Add('Order BY [Customer.CustomerId], [Acard.ACardCode], [Tran.TranDate], [Tran.TranTime], [Tran.RefStr], [Tran.SitemId] ');
    frm.InitiateAction;
    frm.qryTran.Active := True;
    PrintOrPdf(frm);
    // frm.Preview;
  finally
    frm.Free;
  end;
end;

procedure TfrmPrnTran.actPrint15Execute(Sender: TObject);
// var
// frm: TrptKinhs14;
begin
  { frm := TrptKinhs14.Create(self);
    LoadImage(frm);
    // frm.qryTran.SQL.Add(b);
    frm.qryTran.SQL.Add(bCor);
    frm.qryTran.SQL.Add('GROUP BY STATION.STATIONId,[Tran].SitemId');
    frm.qryTran.SQL.Add('ORDER BY STATION.STATIONId,[Tran].SitemId');
    frm.qryTran.Active := True;
    frm.Preview;
    frm.Free; }
end;

procedure TfrmPrnTran.actPrint16Execute(Sender: TObject);
var
  frm: TrptKinhs15;
begin
  frm := TrptKinhs15.Create(Self);
  LoadImage(frm);
  if SqlText > '' then
    frm.qryTran.SQL.Add('Where ' + SqlText);
  frm.qryTran.SQL.Add('GROUP BY  [QTM.Area01_Id], [Tran.SitemId]');
  frm.qryTran.SQL.Add('ORDER BY [QTM.Area01_Id], [Tran.SitemId]');
  frm.qryTran.Active := True;
  frm.Preview;
  frm.Free;
end;

procedure TfrmPrnTran.actPrint17Execute(Sender: TObject);
var
  frm: TrptKinhs16;
begin
  frm := TrptKinhs16.Create(Self);
  LoadImage(frm);
  if SqlText > '' then
    frm.qryTran.SQL.Add('Where ' + SqlText);
  frm.qryTran.SQL.Add('GROUP BY Customer.CustomerID,[Tran].SitemId');
  frm.qryTran.SQL.Add('ORDER BY Customer.CustomerID,[Tran].SitemId');
  frm.qryTran.Active := True;
  frm.Preview;
  frm.Free;
end;

procedure TfrmPrnTran.actPrint18Execute(Sender: TObject);
// var
// frm: TrptKinhs17;
begin
  { frm := TrptKinhs17.Create(self);
    LoadImage(frm);
    frm.qryTran.SQL.Add(bCor);
    if b > '' then
    frm.qryTran.SQL.Add('And [Tran].SitemId = :SitemId ')
    else
    frm.qryTran.SQL.Add('Where [Tran].SitemId = :SitemId ');
    frm.qryTran.SQL.Add('GROUP BY Customer.CustomerID');
    frm.qryTran.SQL.Add('ORDER BY Customer.CustomerID');
    frm.qryTran.Active := True;
    frm.Preview;
    frm.Free; }
end;

procedure TfrmPrnTran.actPrint32Execute(Sender: TObject);
// var
// frm: TrptKinhs32;
begin
  { frm := TrptKinhs32.Create(self);
    LoadImage(frm);
    frm.qryTran.Active := False;
    frm.qryTran.SQL.Add(bCor);
    frm.qryTran.SQL.Add
    ('Order BY ACard.CustomerId, ACardCode, TranDate, TranTime, RefStr, SitemId ');
    frm.qryTran.Active := True;
    PrintOrPdf(frm);
    // frm.PreviewModal;
    frm.Free; }
end;

procedure TfrmPrnTran.actPrint40Execute(Sender: TObject);
// var
// frm: TrptKinhs40;
begin
  { frm := TrptKinhs40.Create(self);
    LoadImage(frm);
    frm.qryTran.SQL.Add(bCor);
    frm.qryTran.SQL.Add('GROUP BY Customer.CustomerId');
    frm.qryTran.SQL.Add('ORDER BY Customer.CustomerId');
    frm.qryTran.Active := True;
    PrintOrPdf(frm);
    // frm.Preview;
    frm.Free;
    {  if (MessageDlg('Εκτύπωση(Yes) ή Προεπισκόπηση(No).', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes) then
    Begin
    frm.PrinterSetup;
    frm.Print;
    end
    else
    begin
    frm.Preview;
    end;
    Application.ProcessMessages;
    FreeAndNil(frm); }
end;

procedure TfrmPrnTran.actPrint41Execute(Sender: TObject);
// var
// frm: TrptKinhs41;
begin
  { frm := TrptKinhs41.Create(self);
    LoadImage(frm);
    frm.qryTran.SQL.Add(bCor);
    frm.qryTran.SQL.Add('GROUP BY Customer.CustomerId');
    frm.qryTran.SQL.Add('ORDER BY Customer.CustomerId');
    frm.qryTran.Active := True;
    PrintOrPdf(frm);
    // frm.PreviewModal;
    frm.Free; }
  { if (MessageDlg('Εκτύπωση(Yes) ή Προεπισκόπηση(No).', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes) then
    Begin
    frm.PrinterSetup;
    frm.Print;
    end
    else
    begin
    frm.Preview;
    end;
    Application.ProcessMessages;
    FreeAndNil(frm); }
end;

procedure TfrmPrnTran.actPrint42Execute(Sender: TObject);
// var
// frm: TrptKinhs42;
begin
  { frm := TrptKinhs42.Create(self);
    LoadImage(frm);
    frm.QCustomer.Active := False;
    if CustStrSh > '' then
    frm.QCustomer.SQL.Add(CustStrSh);
    frm.QCustomer.Active := True;

    frm.qryTran.Active := False;
    if b > '' then
    begin
    frm.qryTran.SQL.Add(bCor);
    frm.qryTran.SQL.Add('And Customer.CustomerId = :CustomerId');
    end
    else
    frm.qryTran.SQL.Add('Where Customer.CustomerId = :CustomerId');

    frm.qryTran.SQL.Add('GROUP BY Customer.CustomerId, TranPeriod');
    frm.qryTran.SQL.Add('ORDER BY Customer.CustomerId, TranPeriod');
    frm.qryTran.Active := True;
    try
    // PrintOrPdf(frm);
    frm.PreviewModal;
    finally
    frm.Free;
    end; }
end;

procedure TfrmPrnTran.actPrint43Execute(Sender: TObject);
var
  frm: TrptKinhs43;
  PreSql, PostSql: string;
begin
  try
    frm := TrptKinhs43.Create(Self);
    LoadImage(frm);
    frm.qryTran.Active := false;
    if SqlText > '' then
      frm.qryTran.SQL.Add('Where ' + SqlText);
    frm.qryTran.SQL.Add(' Order BY [Customer.CustomerId],[Tran.ACardId],[Tran.TranDate],[Tran.TranTime],[Tran.RefStr]');
    frm.qryTran.Active := True;
    PrintOrPdf(frm);
  finally
    frm.Free;
  end;

  PostSql := PostSql + 'Order By  [CUSTOMER.CUSTOMERId], [Tran.SitemId] , [ACard.ACardCode]';

end;

procedure TfrmPrnTran.TempClick(Sender: TObject);
begin
  inherited;
  if Assigned(DXMasterView) then
    if SaveDialog1.Execute then
      Output2XLSFiledx(DXMasterView, SaveDialog1.FileName);
end;

procedure TfrmPrnTran.ToPdf(Report: TrptBaseAvinCard);
var
  aPDFFilt: TQRPDFDocumentFilter;
  x: Integer;
begin
  if SaveDialog1.Execute then
    begin
      aPDFFilt               := TQRPDFDocumentFilter.Create(SaveDialog1.FileName + '.pdf');
      aPDFFilt.CompressionOn := True;
      for x                  := 0 to Report.ComponentCount - 1 do
        begin
          if Report.Components[x] is TQRLabel then
            begin
              // TQRLabel(Report.Components[x]).Font.Name    := 'Courier New';
              // TQRLabel(Report.Components[x]).Font.Charset := 161;
              TQRLabel(Report.Components[x]).Font.Charset := GREEK_CHARSET
              // if TQRLabel(Report.Components[x]).Font.Size = 11 then
              // TQRLabel(Report.Components[x]).Font.Size := 10;
            end;
          if Report.Components[x] is TQRDbText then
            begin
              // TQRDbText(Report.Components[x]).Font.Name    := 'Courier New';
              // TQRDbText(Report.Components[x]).Font.Charset := 161;
              TQRDbText(Report.Components[x]).Font.Charset := GREEK_CHARSET
              // if TQRDbText(Report.Components[x]).Font.Size = 11 then
              // TQRDbText(Report.Components[x]).Font.Size := 10;
            end;
          if Report.Components[x] is TQRSysData then
            begin
              // TQRSysData(Report.Components[x]).Font.Name := 'Courier New';
              // TQRSysData(Report.Components[x]).Font.Charset := 161;
              TQRSysData(Report.Components[x]).Font.Charset := GREEK_CHARSET
              // if TQRSysData(Report.Components[x]).Font.Size = 11 then
              // TQRSysData(Report.Components[x]).Font.Size := 10;
            end;
        end;
      Report.ExportToFilter(aPDFFilt);
    end;
end;

procedure TfrmPrnTran.ToPdf2(Report: TrptBaseAvinCard; FileName: String);
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

{ TODO -cObjective : To Parent General Form }
procedure TfrmPrnTran.PrintOrPdf(Report: TrptBaseAvinCard);
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

procedure TfrmPrnTran.EditFileDblClick(Sender: TObject);
begin
  inherited;
  OpenDialog1.InitialDir := xPath;
  if OpenDialog1.Execute then
    TEdit(Sender).Text := ExtractFileName(OpenDialog1.FileName);

end;

procedure TfrmPrnTran.Excel1Click(Sender: TObject);
begin
  inherited;
  // !!!
  // GeneralDM.OutputFileMastView(cxGrid1DBTableView1);
end;

procedure TfrmPrnTran.FormCreate(Sender: TObject);
begin
  inherited;
  // 2014 Fixes Access Violation
  DXMasterView := cxGrid1DBTableView1;
  SetxPath('-');

  NoContactStation  := false;
  NoContactMerchant := false;
  NoContactCustomer := false;

  NoActionStation  := false;
  NoActionMerchant := false;
  NoActionCustomer := false;

  GlobalPdf      := false;
  GlobalFileName := '';

  GridPivotId := 100;
end;

procedure TfrmPrnTran.actPrint42aExecute(Sender: TObject);
// var
// frm: TfrmPrint42a;
begin
  { *  frm := TfrmPrint42a.CreateSecurity(self, 100);

    frm.qryTran.Active := False;
    if b > '' then
    begin
    frm.qryTran.SQL.Add(bCor);
    end;

    frm.qryTran.SQL.Add('GROUP BY Customer.CustomerId, TranPeriod');
    frm.qryTran.SQL.Add('ORDER BY Customer.CustomerId, TranPeriod');
    frm.qryTran.Active := True;
    try
    // PrintOrPdf(frm);
    frm.ShowModal;
    finally
    frm.Free;
    end;
    * }
end;

{$REGION 'OutDated'}
{ procedure TfrmPrnTran.actPrnSend0Execute(Sender: TObject);
  var
  StSql, FaxAd: String;
  Sl: TStringList;
  StrSubject, StrAttachment: String;
  x, x1: String;
  x2,x10: Integer;
  Fs: TFormatSettings;
  InitSqlStm: String;
  begin
  inherited;
  PageControl1.ActivePage := TsSend;
  ProgressBar1.Position   := 0;
  ProgressBar1.Visible    := True;
  ProgressBar1.Max        := ADOQuery1.RecordCount;

  Sl                                    := TStringList.Create;
  MapiSession.LogonInfo.UseExtendedMapi := MapiSession.MapiInfo.ExtendedMAPI;

  try
  MapiSession.LogonInfo.UseExtendedMapi := MapiSession.MapiInfo.ExtendedMAPI;
  try
  MapiSession.Logon;
  SetStatusText('Αποστολή Fax', 1);

  ADOQuery1.First;
  repeat
  ProgressBar1.Position := ProgressBar1.Position + 1;

  GetLocaleFormatSettings(0, Fs);
  x1 := ADOQuery1CUSTOMERCUSTOMERID.AsString;
  if SysUtils.FileExists(xPath + '\RSTM-' + x1 + '.pdf') then
  //05072013
  //        if SysUtils.FileExists(xPath + '\Rpt007-' + x1 + '.pdf') then
  //05072013
  begin
  if ADOQuery1LSendMail.AsBoolean And OnlyEmailPdf then
  begin
  try
  MapiSession.LogonInfo.UseExtendedMapi :=
  MapiSession.MapiInfo.ExtendedMAPI;
  MapiSession.Logon;
  SetStatusText('Αποστολή Email', 1);
  Sl.Clear;
  FindWords(ADOQuery1LMailAddr.AsString, Sl);
  for x2 := 0 to Sl.Count - 1 do
  try
  SendEmail(Sl[x2], ADOQuery1CUSTOMERCUSTOMERID.AsString,
  'Avin Card ', ADOQuery1CUSTOMERCUSTOMERID.AsString);
  except
  on E: ERwException do
  begin
  Memo2.Lines.Add('Exception class name = ' +
  E.ClassName);
  Memo2.Lines.Add('Exception message = ' + E.Message);
  Memo2.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  Memo3.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  // ShowMessage('Exception class name = ' + E.ClassName);
  // ShowMessage('Exception message = ' + E.Message);
  end;
  end;
  except
  on E: ERwException do
  begin
  Memo2.Lines.Add('Exception class name = ' + E.ClassName);
  Memo2.Lines.Add('Exception message = ' + E.Message);
  Memo2.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  Memo3.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  // ShowMessage('Exception class name = ' + E.ClassName);
  // ShowMessage('Exception message = ' + E.Message);
  end;
  end;
  end;

  if ADOQuery1LSendFax.AsBoolean And OnlyFaxPdf then
  begin
  try
  MapiSession.LogonInfo.UseExtendedMapi :=
  MapiSession.MapiInfo.ExtendedMAPI;
  MapiSession.Logon;
  SetStatusText('Αποστολή Fax', 1);
  Sl.Clear;
  FindWords(ADOQuery1LFaxPhone.AsString, Sl);
  for x2 := 0 to Sl.Count - 1 do
  try
  SendFax(Sl[x2], ADOQuery1CUSTOMERCUSTOMERID.AsString,
  'Avin Card ', ADOQuery1CUSTOMERCUSTOMERID.AsString);
  except
  on E: ERwException do
  begin
  Memo2.Lines.Add('Exception class name = ' +
  E.ClassName);
  Memo2.Lines.Add('Exception message = ' + E.Message);
  Memo2.Lines.Add('+++ Id ' + x1 + ' Fax ' + Sl[x2]);
  Memo3.Lines.Add('+++ Id ' + x1 + ' Fax ' + Sl[x2]);
  // ShowMessage('Exception class name = ' + E.ClassName);
  // ShowMessage('Exception message = ' + E.Message);
  end;
  end;
  except
  on E: ERwException do
  begin
  Memo2.Lines.Add('Exception class name = ' + E.ClassName);
  Memo2.Lines.Add('Exception message = ' + E.Message);
  Memo2.Lines.Add('+++ Id ' + x1 + ' Fax ' + Sl[x2]);
  Memo3.Lines.Add('+++ Id ' + x1 + ' Fax ' + Sl[x2]);
  // ShowMessage('Exception class name = ' + E.ClassName);
  // ShowMessage('Exception message = ' + E.Message);
  end;
  end;
  end;

  if ADOQuery1LPrint.AsBoolean And OnlyPrintPdf then
  begin
  try
  SetStatusText('Εκτύπωση ', 1);
  //                      AcroPDF1.LoadFile(xPath + '\RSTM-' + x1 + '.pdf');
  //                      AcroPDF1.printAll;
  if SysUtils.FileExists(xPath + '\Rpt005-' + x1 + '.pdf') then
  ShellExecute(Handle, 'print', PChar(xPath + '\Rpt005-' + x1 + '.pdf'), nil, nil, SW_HIDE) ;
  if SysUtils.FileExists(xPath + '\Rpt007-' + x1 + '.pdf') then
  ShellExecute(Handle, 'print', PChar(xPath + '\Rpt007-' + x1 + '.pdf'), nil, nil, SW_HIDE) ;
  if SysUtils.FileExists(xPath + '\Rpt009-' + x1 + '.pdf') then
  ShellExecute(Handle, 'print', PChar(xPath + '\Rpt009-' + x1 + '.pdf'), nil, nil, SW_HIDE) ;
  if SysUtils.FileExists(xPath + '\Rpt022-' + x1 + '.pdf') then
  ShellExecute(Handle, 'print', PChar(xPath + '\Rpt022-' + x1 + '.pdf'), nil, nil, SW_HIDE) ;
  if SysUtils.FileExists(xPath + '\RSTM-' + x1 + '.pdf') then
  ShellExecute(Handle, 'print', PChar(xPath + '\RSTM-' + x1 + '.pdf'), nil, nil, SW_HIDE) ;
  //Add Time Wait ;;;
  except
  on E: ERwException do
  begin
  Memo2.Lines.Add('Exception class name = ' +
  E.ClassName);
  Memo2.Lines.Add('Exception message = ' + E.Message);
  Memo2.Lines.Add('+++ Id ' + x1 + ' Print ' + Sl[x2]);
  Memo3.Lines.Add('+++ Id ' + x1 + ' Print ' + Sl[x2]);
  end;
  end;
  end;
  end; }
{ TODO -oLeonidas : Must Be Parametrized }
{ if ProgressBar1.Position mod 5 = 0 then
  MessageDlg('Please check your mailbox SIZE !!!!!!!', mtInformation,
  [mbOK], 0);
  ADOQuery1.Next;
  until ADOQuery1.Eof;

  except
  on E: ERwException do
  begin
  Memo2.Lines.Add('Exception class name = ' + E.ClassName);
  Memo2.Lines.Add('Exception message = ' + E.Message);
  // ShowMessage('Exception class name = ' + E.ClassName);
  // ShowMessage('Exception message = ' + E.Message);
  end;
  end;
  finally
  MapiSession.Logoff;
  end;

  MessageDlg('Ολοκλήρωση Δημιουργίας', mtWarning, [mbOK], 0);
  ProgressBar1.Visible := True;
  end; }

{$ENDREGION}

procedure TfrmPrnTran.actPrintPDFExecute(Sender: TObject);
begin
  inherited;
  OnlyPrintPdf := True;
  OnlyEmailPdf := false;
  OnlyFaxPdf   := false;
  ActSendCustomer;
end;

procedure TfrmPrnTran.ActSendFaxExecute(Sender: TObject);
begin
  inherited;
  OnlyPrintPdf := false;
  OnlyEmailPdf := false;
  OnlyFaxPdf   := True;
  ActSendCustomer;
end;

procedure TfrmPrnTran.ActSendMailExecute(Sender: TObject);
begin
  inherited;
  OnlyPrintPdf := false;
  OnlyEmailPdf := True;
  OnlyFaxPdf   := false;
  ActSendCustomer;
end;

procedure TfrmPrnTran.actPrnSendExecute(Sender: TObject);
begin
  OnlyPrintPdf := True;
  OnlyEmailPdf := True;
  OnlyFaxPdf   := True;
  ActSendCustomer;
  // actPrnSend0.Execute();
end;

// procedure TfrmPrnTran.actPrintPDFExecute(Sender: TObject);
// begin
// inherited;
// OnlyPrintPdf := True;
// OnlyEmailPdf := False;
// OnlyFaxPdf   := False;
// ActSendCustomer;
// end;

procedure TfrmPrnTran.ActMerSendFaxExecute(Sender: TObject);
begin
  inherited;
  OnlyPrintPdf := false;
  OnlyEmailPdf := false;
  OnlyFaxPdf   := True;
  ActSendMerchant;
end;

procedure TfrmPrnTran.ActMerSendMailExecute(Sender: TObject);
begin
  inherited;
  OnlyPrintPdf := false;
  OnlyEmailPdf := True;
  OnlyFaxPdf   := false;
  ActSendMerchant;
end;

procedure TfrmPrnTran.actMerPrnSendExecute(Sender: TObject);
begin
  OnlyPrintPdf := True;
  OnlyEmailPdf := True;
  OnlyFaxPdf   := True;
  ActSendMerchant;
end;

{$REGION 'OutDated'}
// procedure TfrmPrnTran.SendEmail(EmailAd, PelaName, SubjectStr, x1: String);
// var
// Sleo: TStringList;
// x: Integer;
// TempStream: TFileStream;
// NewMessage: IRwMapiMailMessage;
// begin
/// /  PageControl1.ActivePage := TsSend;
//
// SetStatusText('Αποστολή Email ', 1);
//
// try
// NewMessage := RwMapiSession1.CreateMessage(ftDraft) as IRwMapiMailMessage;
// NewMessage.RecipTo := EmailAd;
// NewMessage.Subject := SubjectStr;
// NewMessage.Body    := SubjectStr;
// // NewMessage.AddFileAttachment(AttachmentFile);
// if SysUtils.FileExists(xPath + '\Rpt005-' + x1 + '.pdf') then
// NewMessage.AddFileAttachment(xPath + '\Rpt005-' + x1 + '.pdf');
// if SysUtils.FileExists(xPath + '\Rpt007-' + x1 + '.pdf') then
// NewMessage.AddFileAttachment(xPath + '\Rpt007-' + x1 + '.pdf');
// if SysUtils.FileExists(xPath + '\Rpt009-' + x1 + '.pdf') then
// NewMessage.AddFileAttachment(xPath + '\Rpt009-' + x1 + '.pdf');
// if SysUtils.FileExists(xPath + '\Rpt022-' + x1 + '.pdf') then
// NewMessage.AddFileAttachment(xPath + '\Rpt022-' + x1 + '.pdf');
// if SysUtils.FileExists(xPath + '\RSTM-' + x1 + '.pdf') then
// NewMessage.AddFileAttachment(xPath + '\RSTM-' + x1 + '.pdf');
// // xPath+'\Rpt005-'+x1+'.pdf');
// // xPath+'\Rpt007-'+x1+'.pdf');
// // xPath+'\Rpt022-'+x1+'.pdf');
// // xPath+'\RSTM-'+x1+'.pdf');
// NewMessage.SubmitMessage(astMoveToSentItems);
// finally
// // Can make connection active before send
// // MapiSession.Logoff;
// end;
// SetStatusText(' ', 1);
// end;
//
// procedure TfrmPrnTran.SendFax(FaxNo, PelaName, SubjectStr, x1: String);
// var
// Sleo: TStringList;
// x: Integer;
// FaxAd: String;
// FaxAdList: TStringList;
// TempStream: TFileStream;
// NewMessage: IRwMapiMailMessage;
// begin
/// /  PageControl1.ActivePage := TsSend;
//
// SetStatusText('Αποστολή Email ', 1);
//
// try
// NewMessage := RwMapiSession1.CreateMessage(ftDraft) as IRwMapiMailMessage;
// FaxAd      := '[fax:' + Trim(PelaName) + '@' + Trim(FaxNo) + ']';
// NewMessage.RecipTo := FaxAd;
// NewMessage.Subject := SubjectStr;
// NewMessage.Body    := SubjectStr;
// if SysUtils.FileExists(xPath + '\Rpt005-' + x1 + '.pdf') then
// NewMessage.AddFileAttachment(xPath + '\Rpt005-' + x1 + '.pdf');
// if SysUtils.FileExists(xPath + '\Rpt007-' + x1 + '.pdf') then
// NewMessage.AddFileAttachment(xPath + '\Rpt007-' + x1 + '.pdf');
// if SysUtils.FileExists(xPath + '\Rpt009-' + x1 + '.pdf') then
// NewMessage.AddFileAttachment(xPath + '\Rpt009-' + x1 + '.pdf');
// if SysUtils.FileExists(xPath + '\Rpt022-' + x1 + '.pdf') then
// NewMessage.AddFileAttachment(xPath + '\Rpt022-' + x1 + '.pdf');
// if SysUtils.FileExists(xPath + '\RSTM-' + x1 + '.pdf') then
// NewMessage.AddFileAttachment(xPath + '\RSTM-' + x1 + '.pdf');
// NewMessage.SubmitMessage(astMoveToSentItems);
// finally
// // Can make connection active before send
// // MapiSession.Logoff;
// end;
//
// SetStatusText(' ', 1);
// end;

{$ENDREGION}

procedure TfrmPrnTran.SetGlobalFileName(const Value: string);
begin
  FGlobalFileName := Value;
end;

procedure TfrmPrnTran.SetGlobalPdf(const Value: Boolean);
begin
  FGlobalPdf := Value;
end;

procedure TfrmPrnTran.SetNoActionCustomer(const Value: Boolean);
begin
  FNoActionCustomer := Value;
end;

procedure TfrmPrnTran.SetNoActionMerchant(const Value: Boolean);
begin
  FNoActionMerchant := Value;
end;

procedure TfrmPrnTran.SetNoActionStation(const Value: Boolean);
begin
  FNoActionStation := Value;
end;

procedure TfrmPrnTran.SetNoContactCustomer(const Value: Boolean);
begin
  FNoContactCustomer := Value;
end;

procedure TfrmPrnTran.SetNoContactMerchant(const Value: Boolean);
begin
  FNoContactMerchant := Value;
end;

procedure TfrmPrnTran.SetNoContactStation(const Value: Boolean);
begin
  FNoContactStation := Value;
end;

procedure TfrmPrnTran.SetOnlyEmailPdf(const Value: Boolean);
begin
  FOnlyEmailPdf := Value;
end;

procedure TfrmPrnTran.SetOnlyFaxPdf(const Value: Boolean);
begin
  FOnlyFaxPdf := Value;
end;

procedure TfrmPrnTran.SetOnlyPrintPdf(const Value: Boolean);
begin
  FOnlyPrintPdf := Value;
end;

procedure TfrmPrnTran.SetStatusText(Text: String; PanelNo: Integer);
begin
  StatusBar1.Panels[PanelNo].Text := Text;
end;

{ TODO : CleanUp }
{$REGION 'OutDated'}
{ procedure TfrmPrnTran.actMailSpecificExecute(Sender: TObject);
  {var
  StSql, FaxAd: String;
  Sl: TStringList;
  StrSubject, StrAttachment: String;
  x, x1: String;
  x2,x10: Integer;
  Fs: TFormatSettings;
  InitSqlStm: String;
  begin
  {  inherited;
  PageControl1.ActivePage := TsSend;
  ProgressBar1.Position   := 0;
  ProgressBar1.Visible    := True;
  ProgressBar1.Max        := ADOQuery1.RecordCount;

  if (Edit1.Text = '') and (Edit2.Text = '') then
  begin
  MessageDlg('Δεν υπάρχει κείμενο για τα αρχεία αποστολής.', mtError, [mbOK], 0);
  exit;
  end;

  Sl                                    := TStringList.Create;
  MapiSession.LogonInfo.UseExtendedMapi := MapiSession.MapiInfo.ExtendedMAPI;

  try
  MapiSession.LogonInfo.UseExtendedMapi := MapiSession.MapiInfo.ExtendedMAPI;
  try
  MapiSession.Logon;
  SetStatusText('Αποστολή Fax', 1);

  ADOQuery1.First;
  repeat
  ProgressBar1.Position := ProgressBar1.Position + 1;

  GetLocaleFormatSettings(0, Fs);
  x1 := ADOQuery1CUSTOMERCUSTOMERID.AsString;
  if SysUtils.FileExists(xPath + '\'+Edit1.Text) then
  begin
  if ADOQuery1LSendMail.AsBoolean then
  begin
  try
  MapiSession.LogonInfo.UseExtendedMapi := MapiSession.MapiInfo.ExtendedMAPI;
  MapiSession.Logon;
  SetStatusText('Αποστολή Email', 1);
  Sl.Clear;
  FindWords(ADOQuery1LMailAddr.AsString, Sl);
  for x2 := 0 to Sl.Count - 1 do
  try
  SendEmailSpec(Sl[x2], ADOQuery1CUSTOMERCUSTOMERID.AsString,
  Edit3.Text , Edit1.Text,Edit2.Text);
  except
  on E: ERwException do
  begin
  Memo2.Lines.Add('Exception class name = ' +
  E.ClassName);
  Memo2.Lines.Add('Exception message = ' + E.Message);
  Memo2.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  Memo3.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  end;
  end;
  except
  on E: ERwException do
  begin
  Memo2.Lines.Add('Exception class name = ' + E.ClassName);
  Memo2.Lines.Add('Exception message = ' + E.Message);
  Memo2.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  Memo3.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  end;
  end;
  end;

  end; }
{ TODO -oLeonidas : Must Be Parametrized }
{ if ProgressBar1.Position mod 5 = 0 then
  MessageDlg('Please check your mailbox SIZE !!!!!!!', mtInformation,
  [mbOK], 0);
  ADOQuery1.Next;
  until ADOQuery1.Eof;

  except
  on E: ERwException do
  begin
  Memo2.Lines.Add('Exception class name = ' + E.ClassName);
  Memo2.Lines.Add('Exception message = ' + E.Message);
  // ShowMessage('Exception class name = ' + E.ClassName);
  // ShowMessage('Exception message = ' + E.Message);
  end;
  end;
  finally
  MapiSession.Logoff;
  end;
  MessageDlg('Ολοκλήρωση Δημιουργίας', mtWarning, [mbOK], 0);
  ProgressBar1.Visible := True;
  end;

  procedure TfrmPrnTran.SendEmailSpec(EmailAd, PelaName, SubjectStr, File1,File2: String);
  var
  Sleo: TStringList;
  x: Integer;
  TempStream: TFileStream;
  NewMessage: IRwMapiMailMessage;
  begin
  {  PageControl1.ActivePage := TsSend;

  SetStatusText('Αποστολή Email ', 1);

  try
  NewMessage := MapiSession.CreateMessage(ftDraft) as IRwMapiMailMessage;
  NewMessage.RecipTo := EmailAd;
  NewMessage.Subject := SubjectStr;
  NewMessage.Body    := SubjectStr;
  // NewMessage.AddFileAttachment(AttachmentFile);
  if SysUtils.FileExists(xPath + '\'+File1) then
  NewMessage.AddFileAttachment(xPath + '\' + File1);
  if SysUtils.FileExists(xPath + '\'+File2) then
  NewMessage.AddFileAttachment(xPath + '\' + File2);
  NewMessage.SubmitMessage(astMoveToSentItems);
  finally
  // Can make connection active before send
  // MapiSession.Logoff;
  end;
  SetStatusText(' ', 1);
  end;

  {  procedure TfrmPrnTran.actPrnSend0StExecute(Sender: TObject);
  var
  StSql, FaxAd: String;
  Sl: TStringList;
  StrSubject, StrAttachment: String;
  x, x1: String;
  x2,x10: Integer;
  Fs: TFormatSettings;
  InitSqlStm: String;
  begin
  inherited;
  PageControl1.ActivePage := TsSendSt;
  ProgressBar1St.Position   := 0;
  ProgressBar1St.Visible    := True;
  ProgressBar1St.Max        := ADOQuery1St.RecordCount;

  Sl                                    := TStringList.Create;
  MapiSession.LogonInfo.UseExtendedMapi := MapiSession.MapiInfo.ExtendedMAPI;

  try
  MapiSession.LogonInfo.UseExtendedMapi := MapiSession.MapiInfo.ExtendedMAPI;
  try
  MapiSession.Logon;
  SetStatusText('Αποστολή Fax', 1);

  ADOQuery1St.First;
  repeat
  ProgressBar1St.Position := ProgressBar1St.Position + 1;

  GetLocaleFormatSettings(0, Fs);
  x1 := ADOQuery1StStationId.AsString;
  if SysUtils.FileExists(xPath + '\Rpt002-' + x1 + 'st.pdf') then
  //05072013
  //        if SysUtils.FileExists(xPath + '\Rpt002-' + x1 + '.pdf') then
  //05072013
  begin
  if ADOQuery1StLSendMail.AsBoolean And OnlyEmailPdf then
  begin
  try
  MapiSession.LogonInfo.UseExtendedMapi :=
  MapiSession.MapiInfo.ExtendedMAPI;
  MapiSession.Logon;
  SetStatusText('Αποστολή Email', 1);
  Sl.Clear;
  FindWords(ADOQuery1StLMailAddr.AsString, Sl);
  for x2 := 0 to Sl.Count - 1 do
  try
  SendEmailSt(Sl[x2], ADOQuery1StStationId.AsString,
  'Avin Card ', ADOQuery1StStationId.AsString);
  except
  on E: ERwException do
  begin
  Memo2St.Lines.Add('Exception class name = ' +
  E.ClassName);
  Memo2St.Lines.Add('Exception message = ' + E.Message);
  Memo2St.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  Memo3St.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  // ShowMessage('Exception class name = ' + E.ClassName);
  // ShowMessage('Exception message = ' + E.Message);
  end;
  end;
  except
  on E: ERwException do
  begin
  Memo2St.Lines.Add('Exception class name = ' + E.ClassName);
  Memo2St.Lines.Add('Exception message = ' + E.Message);
  Memo2St.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  Memo3St.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  // ShowMessage('Exception class name = ' + E.ClassName);
  // ShowMessage('Exception message = ' + E.Message);
  end;
  end;
  end;

  if ADOQuery1StLSendFax.AsBoolean And OnlyFaxPdf then
  begin
  try
  MapiSession.LogonInfo.UseExtendedMapi :=
  MapiSession.MapiInfo.ExtendedMAPI;
  MapiSession.Logon;
  SetStatusText('Αποστολή Fax', 1);
  Sl.Clear;
  FindWords(ADOQuery1StLFaxPhone.AsString, Sl);
  for x2 := 0 to Sl.Count - 1 do
  try
  SendFaxSt(Sl[x2], ADOQuery1StStationId.AsString,
  'Avin Card ', ADOQuery1StStationId.AsString);
  except
  on E: ERwException do
  begin
  Memo2St.Lines.Add('Exception class name = ' +
  E.ClassName);
  Memo2St.Lines.Add('Exception message = ' + E.Message);
  Memo2St.Lines.Add('+++ Id ' + x1 + ' Fax ' + Sl[x2]);
  Memo3St.Lines.Add('+++ Id ' + x1 + ' Fax ' + Sl[x2]);
  // ShowMessage('Exception class name = ' + E.ClassName);
  // ShowMessage('Exception message = ' + E.Message);
  end;
  end;
  except
  on E: ERwException do
  begin
  Memo2St.Lines.Add('Exception class name = ' + E.ClassName);
  Memo2St.Lines.Add('Exception message = ' + E.Message);
  Memo2St.Lines.Add('+++ Id ' + x1 + ' Fax ' + Sl[x2]);
  Memo3St.Lines.Add('+++ Id ' + x1 + ' Fax ' + Sl[x2]);
  // ShowMessage('Exception class name = ' + E.ClassName);
  // ShowMessage('Exception message = ' + E.Message);
  end;
  end;
  end;

  if ADOQuery1StLPrint.AsBoolean And OnlyPrintPdf then
  begin
  try
  SetStatusText('Εκτύπωση ', 1);
  //                      AcroPDF1.LoadFile(xPath + '\RSTM-' + x1 + '.pdf');
  //                      AcroPDF1.printAll;
  if SysUtils.FileExists(xPath + '\Rpt002-' + x1 + 'St.pdf') then
  ShellExecute(Handle, 'print', PChar(xPath + '\Rpt002-' + x1 + 'St.pdf'), nil, nil, SW_HIDE) ;
  //Add Time Wait ;;;
  except
  on E: ERwException do
  begin
  Memo2St.Lines.Add('Exception class name = ' +
  E.ClassName);
  Memo2St.Lines.Add('Exception message = ' + E.Message);
  Memo2St.Lines.Add('+++ Id ' + x1 + ' Print ' + Sl[x2]);
  Memo3St.Lines.Add('+++ Id ' + x1 + ' Print ' + Sl[x2]);
  end;
  end;
  end;
  end; }
{ TODO -oLeonidas : Must Be Parametrized }
{ if ProgressBar1St.Position mod 5 = 0 then
  MessageDlg('Please check your mailbox SIZE !!!!!!!', mtInformation,
  [mbOK], 0);
  ADOQuery1St.Next;
  until ADOQuery1St.Eof;

  except
  on E: ERwException do
  begin
  Memo2St.Lines.Add('Exception class name = ' + E.ClassName);
  Memo2St.Lines.Add('Exception message = ' + E.Message);
  // ShowMessage('Exception class name = ' + E.ClassName);
  // ShowMessage('Exception message = ' + E.Message);
  end;
  end;
  finally
  MapiSession.Logoff;
  end;

  MessageDlg('Ολοκλήρωση Δημιουργίας St', mtWarning, [mbOK], 0);
  ProgressBar1St.Visible := True;
  end; }

{$ENDREGION}

procedure TfrmPrnTran.actPrintPDFStExecute(Sender: TObject);
begin
  inherited;
  OnlyPrintPdf := True;
  OnlyEmailPdf := false;
  OnlyFaxPdf   := false;
  ActSendStation;
end;

procedure TfrmPrnTran.ActSendFaxStExecute(Sender: TObject);
begin
  inherited;
  OnlyPrintPdf := false;
  OnlyEmailPdf := false;
  OnlyFaxPdf   := True;
  ActSendStation;
end;

procedure TfrmPrnTran.ActSendMailStExecute(Sender: TObject);
begin
  inherited;
  OnlyPrintPdf := false;
  OnlyEmailPdf := True;
  OnlyFaxPdf   := false;
  ActSendStation;
end;

procedure TfrmPrnTran.actPrnSendStExecute(Sender: TObject);
begin
  OnlyPrintPdf := True;
  OnlyEmailPdf := True;
  OnlyFaxPdf   := True;
  ActSendStation;
  // actPrnSend0St.Execute();
end;

procedure TfrmPrnTran.actQrDesignExecute(Sender: TObject);
begin
  inherited;
//  ReportDesignerDialog1.NewReport('Leo', True);
end;

procedure TfrmPrnTran.cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
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

procedure TfrmPrnTran.cxGrid1Enter(Sender: TObject);
begin
  DXMasterView := cxGrid1DBTableView1;
end;

procedure TfrmPrnTran.DBGrid4DblClick(Sender: TObject);
begin
  inherited;
  frmMain.actSubParamNoWrapExecute('TfrmMerchant', 'MerchantId', qry101MerchantMerchantId.AsInteger);
end;

procedure TfrmPrnTran.DBGrid5DblClick(Sender: TObject);
begin
  inherited;
  frmMain.actSubParamNoWrapExecute('TfrmStation', 'StationId', qry101StationStationId.AsInteger);
end;

procedure TfrmPrnTran.DBGrid6DblClick(Sender: TObject);
begin
  inherited;
  frmMain.actSubParamNoWrapExecute('TfrmCustomer', 'CustomerId', qry101CustomerCustomerId.AsInteger);
end;

procedure TfrmPrnTran.DBGrid6DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  HoldColor: TColor;
  Fld1, Fld2: TField;
  Grid: TDBGrid;
begin
  inherited;
  Grid      := TDBGrid(Sender);
  HoldColor := Grid.Canvas.Brush.Color;
  Fld1      := Grid.DataSource.DataSet.FindField('LContExist');
  Fld2      := Grid.DataSource.DataSet.FindField('LNoAction');

  if Fld1.IsNull then
    begin
      Grid.Canvas.Brush.Color := clRed;
      Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      Grid.Canvas.Brush.Color := HoldColor;
    end
  else if Fld2.AsBoolean = True then
    begin
      Grid.Canvas.Brush.Color := clGray;
      Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      Grid.Canvas.Brush.Color := HoldColor;
    end
  else
    Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  if Fld2.AsBoolean = True then
    begin
      if Grid.DataSource = DataSource2 then
        NoContactCustomer := True
      else if Grid.DataSource = DataSource2St then
        NoContactStation := True
      else if Grid.DataSource = DataSource2Merchant then
        NoContactMerchant := True;
    end;

end;

{$REGION 'OutDated'}
// procedure TfrmPrnTran.SendEmailSt(EmailAd, PelaName, SubjectStr, x1: String);
// {var
// Sleo: TStringList;
// x: Integer;
// TempStream: TFileStream;
// NewMessage: IRwMapiMailMessage;}
// begin
// {  PageControl1.ActivePage := TsSendSt;
//
// SetStatusText('Αποστολή Email ', 1);
//
// try
// NewMessage := MapiSession.CreateMessage(ftDraft) as IRwMapiMailMessage;
// NewMessage.RecipTo := EmailAd;
// NewMessage.Subject := SubjectStr;
// NewMessage.Body    := SubjectStr;
// // NewMessage.AddFileAttachment(AttachmentFile);
// if SysUtils.FileExists(xPath + '\Rpt002-' + x1 + 'St.pdf') then
// NewMessage.AddFileAttachment(xPath + '\Rpt002-' + x1 + 'St.pdf');
// // xPath+'\Rpt005-'+x1+'.pdf');
// // xPath+'\Rpt007-'+x1+'.pdf');
// // xPath+'\Rpt022-'+x1+'.pdf');
// // xPath+'\RSTM-'+x1+'.pdf');
// NewMessage.SubmitMessage(astMoveToSentItems);
// finally
// // Can make connection active before send
// // MapiSession.Logoff;
// end;
// SetStatusText(' ', 1);}
// end;
//
// procedure TfrmPrnTran.SendFaxSt(FaxNo, PelaName, SubjectStr, x1: String);
// {var
// Sleo: TStringList;
// x: Integer;
// FaxAd: String;
// FaxAdList: TStringList;
// TempStream: TFileStream;
// NewMessage: IRwMapiMailMessage;}
// begin
// {  PageControl1.ActivePage := TsSendSt;
//
// SetStatusText('Αποστολή Email ', 1);
//
// try
// NewMessage := MapiSession.CreateMessage(ftDraft) as IRwMapiMailMessage;
// FaxAd      := '[fax:' + Trim(PelaName) + '@' + Trim(FaxNo) + ']';
// NewMessage.RecipTo := FaxAd;
// NewMessage.Subject := SubjectStr;
// NewMessage.Body    := SubjectStr;
// if SysUtils.FileExists(xPath + '\Rpt002-' + x1 + 'St.pdf') then
// NewMessage.AddFileAttachment(xPath + '\Rpt002-' + x1 + 'St.pdf');
// NewMessage.SubmitMessage(astMoveToSentItems);
// finally
// // Can make connection active before send
// // MapiSession.Logoff;
// end;
//
// SetStatusText(' ', 1);}
// end;

{ procedure TfrmPrnTran.actMailSpecificStExecute(Sender: TObject);
  var
  StSql, FaxAd: String;
  Sl: TStringList;
  StrSubject, StrAttachment: String;
  x, x1: String;
  x2,x10: Integer;
  Fs: TFormatSettings;
  InitSqlStm: String;
  begin
  {  inherited;
  PageControl1.ActivePage := TsSendSt;
  ProgressBar1St.Position   := 0;
  ProgressBar1St.Visible    := True;
  ProgressBar1St.Max        := ADOQuery1St.RecordCount;

  if (Edit1St.Text = '') and (Edit2St.Text = '') then
  begin
  MessageDlg('Δεν υπάρχει κείμενο για τα αρχεία αποστολής.', mtError, [mbOK], 0);
  exit;
  end;

  Sl                                    := TStringList.Create;
  MapiSession.LogonInfo.UseExtendedMapi := MapiSession.MapiInfo.ExtendedMAPI;

  try
  MapiSession.LogonInfo.UseExtendedMapi := MapiSession.MapiInfo.ExtendedMAPI;
  try
  MapiSession.Logon;
  SetStatusText('Αποστολή Fax', 1);

  ADOQuery1st.First;
  repeat
  ProgressBar1St.Position := ProgressBar1St.Position + 1;

  GetLocaleFormatSettings(0, Fs);
  x1 := ADOQuery1StStationId.AsString;
  if SysUtils.FileExists(xPath + '\'+Edit1St.Text) then
  begin
  if ADOQuery1StLSendMail.AsBoolean then
  begin
  try
  MapiSession.LogonInfo.UseExtendedMapi := MapiSession.MapiInfo.ExtendedMAPI;
  MapiSession.Logon;
  SetStatusText('Αποστολή Email', 1);
  Sl.Clear;
  FindWords(ADOQuery1StLMailAddr.AsString, Sl);
  for x2 := 0 to Sl.Count - 1 do
  try
  SendEmailSpecSt(Sl[x2], ADOQuery1StStationId.AsString,
  Edit3St.Text , Edit1St.Text,Edit2St.Text);
  except
  on E: ERwException do
  begin
  Memo2St.Lines.Add('Exception class name = ' +
  E.ClassName);
  Memo2St.Lines.Add('Exception message = ' + E.Message);
  Memo2St.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  Memo3St.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  end;
  end;
  except
  on E: ERwException do
  begin
  Memo2St.Lines.Add('Exception class name = ' + E.ClassName);
  Memo2St.Lines.Add('Exception message = ' + E.Message);
  Memo2St.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  Memo3St.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  end;
  end;
  end;

  if ADOQuery1StLSendFax.AsBoolean then
  begin
  try
  MapiSession.LogonInfo.UseExtendedMapi := MapiSession.MapiInfo.ExtendedMAPI;
  MapiSession.Logon;
  SetStatusText('Αποστολή Fax', 1);
  Sl.Clear;
  FindWords(ADOQuery1StLFaxPhone.AsString, Sl);
  for x2 := 0 to Sl.Count - 1 do
  try
  SendFaxSpecSt(Sl[x2], ADOQuery1StStationId.AsString,
  Edit3St.Text , Edit1St.Text,Edit2St.Text);
  except
  on E: ERwException do
  begin
  Memo2St.Lines.Add('Exception class name = ' +
  E.ClassName);
  Memo2St.Lines.Add('Exception message = ' + E.Message);
  Memo2St.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  Memo3St.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  end;
  end;
  except
  on E: ERwException do
  begin
  Memo2St.Lines.Add('Exception class name = ' + E.ClassName);
  Memo2St.Lines.Add('Exception message = ' + E.Message);
  Memo2St.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  Memo3St.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
  end;
  end;
  end;



  end; }
{ TODO -oLeonidas : Must Be Parametrized }
{ if ProgressBar1St.Position mod 5 = 0 then
  MessageDlg('Please check your mailbox SIZE !!!!!!!', mtInformation,
  [mbOK], 0);
  ADOQuery1St.Next;
  until ADOQuery1St.Eof;

  except
  on E: ERwException do
  begin
  Memo2St.Lines.Add('Exception class name = ' + E.ClassName);
  Memo2St.Lines.Add('Exception message = ' + E.Message);
  // ShowMessage('Exception class name = ' + E.ClassName);
  // ShowMessage('Exception message = ' + E.Message);
  end;
  end;
  finally
  MapiSession.Logoff;
  end;
  MessageDlg('Ολοκλήρωση Δημιουργίας', mtWarning, [mbOK], 0);
  ProgressBar1St.Visible := True;
  end; }

{ procedure TfrmPrnTran.SendEmailSpecSt(EmailAd, PelaName, SubjectStr, File1,File2: String);
  var
  Sleo: TStringList;
  x: Integer;
  TempStream: TFileStream;
  NewMessage: IRwMapiMailMessage;
  begin
  {  PageControl1.ActivePage := TsSendSt;

  SetStatusText('Αποστολή Email ', 1);

  try
  NewMessage := MapiSession.CreateMessage(ftDraft) as IRwMapiMailMessage;
  NewMessage.RecipTo := EmailAd;
  NewMessage.Subject := SubjectStr;
  NewMessage.Body    := SubjectStr;
  // NewMessage.AddFileAttachment(AttachmentFile);
  if SysUtils.FileExists(xPath + '\'+File1) then
  NewMessage.AddFileAttachment(xPath + '\' + File1);
  if SysUtils.FileExists(xPath + '\'+File2) then
  NewMessage.AddFileAttachment(xPath + '\' + File2);
  NewMessage.SubmitMessage(astMoveToSentItems);
  finally
  // Can make connection active before send
  // MapiSession.Logoff;
  end;
  SetStatusText(' ', 1);
  end; }

{ procedure TfrmPrnTran.SendFaxSpecSt(FaxNo, PelaName, SubjectStr,  File1,File2: String);
  var
  Sleo: TStringList;
  x: Integer;
  FaxAd: String;
  FaxAdList: TStringList;
  TempStream: TFileStream;
  NewMessage: IRwMapiMailMessage;
  begin
  {  PageControl1.ActivePage := TsSendSt;

  SetStatusText('Αποστολή Email ', 1);

  try
  NewMessage := MapiSession.CreateMessage(ftDraft) as IRwMapiMailMessage;
  FaxAd      := '[fax:' + Trim(PelaName) + '@' + Trim(FaxNo) + ']';
  NewMessage.RecipTo := FaxAd;
  NewMessage.Subject := SubjectStr;
  //    NewMessage.Body    := SubjectStr;
  if SysUtils.FileExists(xPath + '\'+File1) then
  NewMessage.AddFileAttachment(xPath + '\' + File1);
  if SysUtils.FileExists(xPath + '\'+File2) then
  NewMessage.AddFileAttachment(xPath + '\' + File2);
  NewMessage.SubmitMessage(astMoveToSentItems);
  finally
  // Can make connection active before send
  // MapiSession.Logoff;
  end;

  SetStatusText(' ', 1);
  end; }

{$ENDREGION}

{ TODO -cObjective : To Parent General Form }
procedure TfrmPrnTran.PrintSplitReport(Report: TrptBaseAvinCard; VarDataSet: TDataSet; RepSqlName: string; FieldName: string; FilePath: string; PreFileName: string;
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
      if Report.Components[vi].name = RepSqlName then
        RepQuery := TADOQuery(Report.Components[vi]);

    ChPBar.Position := 0;
    ChPBar.Visible  := True;
    ChPBar.Max      := VarDataSet.RecordCount;

    VarDataSet.First;
    repeat
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
    ChPBar.Visible := false;
    DoCursorPop;
  end;
end;

procedure TfrmPrnTran.Action1Execute(Sender: TObject);
var
  frm: TrptKinhs8;
  PreSql, PostSql: string;
begin
  // PageControl1.ActivePage := TsSend;
  frm := TrptKinhs8.Create(Self);
  LoadImageNoDlg(frm);

  PreSql := frm.qryTran.SQL.Text;

  if SqlText > '' then
    PreSql := PreSql + ' Where ' + SqlText + ' And [Customer.CustomerId] = '
  else
    PreSql := PreSql + ' Where [Customer.CustomerId] = ';

  PostSql := 'Group By  [CUSTOMER.CUSTOMERId], [Tran.SitemId] , [ACard.ACardCode] ' + 'Order By  [CUSTOMER.CUSTOMERId], [Tran.SitemId] , [ACard.ACardCode] ';

  PrintSplitReport(frm, qry1Customer, 'qryTran', 'CUSTOMER.CUSTOMERID', xPath, '\Rpt007-Cus-', '.pdf', PreSql, PostSql, ProgressBar1);

  frm.Free;
end;

procedure TfrmPrnTran.ActionList2Execute(Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  if Not GlobalPdf then
    CheckAllMFP;
end;

procedure TfrmPrnTran.actPrint8PDFExecute(Sender: TObject);
var
  frm: TrptKinhs9;
  PreSql, PostSql: string;
begin
  PageControl1.ActivePage := TsSendCustomer;
  try
    frm := TrptKinhs9.Create(Self);
    LoadImageNoDlg(frm);

    PreSql := frm.qryTran.SQL.Text;

    if SqlText > '' then
      PreSql := PreSql + ' Where ' + SqlText + ' And [Customer.CustomerId] = '
    else
      PreSql := PreSql + ' Where [Customer.CustomerId] = ';

    PostSql := 'ORDER BY [Customer.CustomerId],[Tran.TranDate],[Tran.TranTime],[Acard.AcardId],[Tran.SitemId]';

    PrintSplitReport(frm, qry1Customer, 'qryTran', 'CUSTOMER.CUSTOMERID', xPath, '\Rpt009-Cus-', '.pdf', PreSql, PostSql, ProgressBar1);

  finally
    frm.Free;
  end;
end;

{$REGION 'Old Implementation'}
// procedure TfrmPrnTran.actPrintSplit7Execute(Sender: TObject);
// var
// frm: TrptKinhs8;
// bConv: String;
// aPDFFilt: TQRPDFDocumentFilter;
// x, x1: String;
// Fs: TFormatSettings;
// InitSqlStm: String;
// begin
// PageControl1.ActivePage := TsSend;
// try
// DoCursorPush;
// frm := TrptKinhs8.Create(self);
// LoadImageNoDlg(frm);
//
// if SqlText > '' then
// frm.qryTran.SQL.Add('Where '+ SqlText);
//
// InitSqlStm := frm.qryTran.SQL.Text;
//
// ProgressBar1.Position := 0;
// ProgressBar1.Visible  := True;
// ProgressBar1.Max      := qry1Customer.RecordCount;
//
// qry1Customer.First;
// repeat
// ProgressBar1.Position := ProgressBar1.Position + 1;
// GetLocaleFormatSettings(0, Fs);
// Fs.DateSeparator := '-';
// frm.qryTran.SQL.Clear;
// frm.qryTran.SQL.Add(InitSqlStm);
// x1 := qry1CustomerCUSTOMERCUSTOMERID.AsString;
// frm.qryTran.SQL.Add(' And [Customer.CustomerId] = ' + x1 + ' ');
// frm.qryTran.SQL.Add('Group By  [CUSTOMER.CUSTOMERId], [Tran.SitemId] , [ACard.ACardCode]');
// frm.qryTran.SQL.Add('Order By  [CUSTOMER.CUSTOMERId], [Tran.SitemId] , [ACard.ACardCode]');
// frm.qryTran.Active := True;
// aPDFFilt := TQRPDFDocumentFilter.Create(xPath + '\Rpt007-' + x1 + '.pdf');
// aPDFFilt.Codepage     := '1253';
// aPDFFilt.TextEncoding := UnicodeEncoding;
// aPDFFilt.AddTTFont('Courier New');
// frm.ShowProgress := False;
// frm.ExportToFilter(aPDFFilt);
// aPDFFilt.Free;
// qry1Customer.Next;
// until qry1Customer.Eof;
// MessageDlg('Ολοκλήρωση Δημιουργίας', mtWarning, [mbOK], 0);
// finally
// frm.Free;
// ProgressBar1.Visible := False;
// DoCursorPop;
// end;
// end;

{$ENDREGION}

procedure TfrmPrnTran.actPrintSplit7Execute(Sender: TObject);
var
  frm: TrptKinhs8;
  PreSql, PostSql: string;
begin
  PageControl1.ActivePage := TsSendCustomer;
  try
    frm := TrptKinhs8.Create(Self);
    LoadImageNoDlg(frm);

    PreSql := frm.qryTran.SQL.Text;

    if SqlText > '' then
      PreSql := PreSql + ' Where ' + SqlText + ' And [Customer.CustomerId] = '
    else
      PreSql := PreSql + ' Where [Customer.CustomerId] = ';

    PostSql := 'Group By  [CUSTOMER.CUSTOMERId], [Tran.SitemId] , [ACard.ACardCode]';
    PostSql := PostSql + 'Order By  [CUSTOMER.CUSTOMERId], [Tran.SitemId] , [ACard.ACardCode]';

    PrintSplitReport(frm, qry1Customer, 'qryTran', 'CUSTOMER.CUSTOMERID', xPath, '\Rpt007-Cus-', '.pdf', PreSql, PostSql, ProgressBar1);

  finally
    frm.Free;
  end;
end;

{$REGION 'Old Implementation'}
// procedure TfrmPrnTran.actPrint22PDFExecute(Sender: TObject);
// var
// frm: TrptKinhs22;
// bConv: String;
// aPDFFilt: TQRPDFDocumentFilter;
// x, x1: String;
// Fs: TFormatSettings;
// InitSqlStm: String;
// begin
// // +  frm:= TrptKinhs22.Create(self);
// // +  LoadImage(frm);
// // +  frm.qryTran.Active:=false;
// // +  frm.qryTran.SQL.Add(b);
// // +  frm.qryTran.SQL.Add('Order BY CustomerId, ACardCode, TranDate, TranTime, RefStr, SitemId ');
// // +  frm.qryTran.Active:=True;
// // +  PrintOrPdf(frm);
// /// //////////////////////////////////////////
// PageControl1.ActivePage := TsSend;
//
// frm := TrptKinhs22.Create(self);
// LoadImageNoDlg(frm);
// bConv := b;
//
// InitSqlStm := frm.qryTran.SQL.Text;
//
// ProgressBar1.Position := 0;
// ProgressBar1.Visible  := True;
// ProgressBar1.Max      := qry1Customer.RecordCount;
//
// qry1Customer.First;
// repeat
// ProgressBar1.Position := ProgressBar1.Position + 1;
// GetLocaleFormatSettings(0, Fs);
// Fs.DateSeparator := '-';
// frm.qryTran.SQL.Clear;
// frm.qryTran.SQL.Add(InitSqlStm);
// frm.qryTran.SQL.Add(b);
// x1 := qry1CustomerCUSTOMERCUSTOMERID.AsString;
// frm.qryTran.SQL.Add(' And CustomerId = ' + x1 + ' ');
// frm.qryTran.SQL.Add
// ('Order BY CustomerId, ACardCode, TranDate, TranTime, RefStr, SitemId ');
// frm.qryTran.Active := True;
// aPDFFilt := TQRPDFDocumentFilter.Create(xPath + '\Rpt022-' + x1 + '.pdf');
// aPDFFilt.Codepage     := '1253';
// aPDFFilt.TextEncoding := UnicodeEncoding;
// aPDFFilt.AddTTFont('Courier New');
// frm.ShowProgress := False;
// frm.ExportToFilter(aPDFFilt);
// aPDFFilt.Free;
// qry1Customer.Next;
// until qry1Customer.Eof;
//
// frm.Free;
//
// MessageDlg('Ολοκλήρωση Δημιουργίας', mtWarning, [mbOK], 0);
// end;

{$ENDREGION}

procedure TfrmPrnTran.actPrint22PDFExecute(Sender: TObject);
var
  frm: TrptKinhs22;
  PreSql, PostSql: string;
begin
  PageControl1.ActivePage := TsSendCustomer;
  try
    frm := TrptKinhs22.Create(Self);
    LoadImageNoDlg(frm);

    PreSql := frm.qryTran.SQL.Text;

    if SqlText > '' then
      PreSql := PreSql + ' Where ' + SqlText + ' And [Customer.CustomerId] = '
    else
      PreSql := PreSql + ' Where [Customer.CustomerId] = ';

    PostSql := 'Order BY [Customer.CustomerId], [Acard.ACardCode], [Tran.TranDate], [Tran.TranTime], [Tran.RefStr], [Tran.SitemId] ';

    frm.InitiateAction;

    PrintSplitReport(frm, qry1Customer, 'qryTran', 'CUSTOMER.CUSTOMERID', xPath, '\Rpt022-Cus-', '.pdf', PreSql, PostSql, ProgressBar1);

  finally
    frm.Free;
  end;
end;

{$REGION 'Old Implementation'}
// procedure TfrmPrnTran.actPrint4PdfExecute(Sender: TObject);
// {var
// frm: TrptKinhs5;
// bConv: String;
// aPDFFilt: TQRPDFDocumentFilter;
// x, x1: String;
// Fs: TFormatSettings;
// InitSqlStm: String;}
// begin
// // +  frm:= TrptKinhs5.Create(self);
// // +  LoadImage(frm);
// // +  frm.qryTran.Active:=false;
// // +  frm.qryTran.SQL.Add(b);
// // +  frm.qryTran.SQL.Add('Order BY CustomerId, TranDate, TranTime, ACardCode, RefStr ');
// // +  frm.qryTran.Active:=True;
// // +  PrintOrPdf(frm);
// // +  frm.Free;
// /// ////
// {  PageControl1.ActivePage := TsSend;
//
// frm := TrptKinhs5.Create(self);
// frm.QRACardLogo1.Picture.LoadFromFile
// (ChangeFileExt(Application.ExeName, '.bmp'));
// bConv := b;
//
// InitSqlStm := frm.qryTran.SQL.Text;
//
// ProgressBar1.Position := 0;
// ProgressBar1.Visible  := True;
// ProgressBar1.Max      := ADOQuery1.RecordCount;
//
// ADOQuery1.First;
// repeat
// ProgressBar1.Position := ProgressBar1.Position + 1;
// GetLocaleFormatSettings(0, Fs);
// Fs.DateSeparator := '-';
// frm.qryTran.SQL.Clear;
// frm.qryTran.SQL.Add(InitSqlStm);
// frm.qryTran.SQL.Add(b);
// x1 := ADOQuery1CUSTOMERCUSTOMERID.AsString;
// frm.qryTran.SQL.Add(' And CustomerId = ' + x1 + ' ');
// frm.qryTran.SQL.Add
// ('Order BY CustomerId, TranDate, TranTime, ACardCode, RefStr ');
// frm.qryTran.Active := True;
// aPDFFilt := TQRPDFDocumentFilter.Create(xPath + '\Rpt005-' + x1 + '.pdf');
// aPDFFilt.Codepage     := '1253';
// aPDFFilt.TextEncoding := UnicodeEncoding;
// aPDFFilt.AddTTFont('Courier New');
// frm.ShowProgress := False;
// frm.ExportToFilter(aPDFFilt);
// aPDFFilt.Free;
// ADOQuery1.Next;
// until ADOQuery1.Eof;
//
// frm.Free;
//
// MessageDlg('Ολοκλήρωση Δημιουργίας', mtWarning, [mbOK], 0);
// ProgressBar1.Visible := False;}
// end;

{$ENDREGION}

procedure TfrmPrnTran.actPrint4PdfExecute(Sender: TObject);
var
  frm: TrptKinhs5;
  PreSql, PostSql: string;
begin
  PageControl1.ActivePage := TsSendCustomer;
  try
    frm := TrptKinhs5.Create(Self);
    LoadImageNoDlg(frm);

    PreSql := frm.qryTran.SQL.Text;

    if SqlText > '' then
      PreSql := PreSql + ' Where ' + SqlText + ' And [Customer.CustomerId] = '
    else
      PreSql := PreSql + ' Where [Customer.CustomerId] = ';

    PostSql := 'Order BY [Customer.CustomerId], [Tran.TranDate], [Tran.TranTime], [Acard.ACardCode], [Tran.RefStr] ';

    PrintSplitReport(frm, qry1Customer, 'qryTran', 'CUSTOMER.CUSTOMERID', xPath, '\Rpt005-Cus-', '.pdf', PreSql, PostSql, ProgressBar1);

  finally
    frm.Free;
  end;

  // PageControl1.ActivePage := TsSendCustomer;
  // try
  // frm := TrptKinhs8.Create(self);
  // LoadImageNoDlg(frm);
  //
  // PreSql:=frm.qryTran.SQL.Text;
  //
  // if SqlText > '' then
  // PreSql:= PreSql + ' Where '+ SqlText + ' And [Customer.CustomerId] = '
  // else
  // PreSql:= PreSql + ' Where [Customer.CustomerId] = ';
  //
  // PostSql:='Group By  [CUSTOMER.CUSTOMERId], [Tran.SitemId] , [ACard.ACardCode]';
  // PostSql:=PostSql+'Order By  [CUSTOMER.CUSTOMERId], [Tran.SitemId] , [ACard.ACardCode]';
  //
  // PrintSplitReport(frm,qry1Customer,'qryTran','CUSTOMER.CUSTOMERID',xPath,'\Rpt007-Cus-','.pdf',PreSql,PostSql,ProgressBar1);
  //
  // finally
  // frm.Free;
  // end;

end;

{$REGION 'Old Implementation'}
// procedure TfrmPrnTran.actPrint2PDFExecute(Sender: TObject);
// {var
// frm: TrptKinhs3;
// bConv: String;
// aPDFFilt: TQRPDFDocumentFilter;
// x, x1: String;
// Fs: TFormatSettings;
// InitSqlStm: String;}
// begin
// {  PageControl1.ActivePage := TsSendSt;
// frm := TrptKinhs3.Create(self);
// frm.QRACardLogo1.Picture.LoadFromFile
// (ChangeFileExt(Application.ExeName, '.bmp'));
// bConv := b;
//
// InitSqlStm := frm.qryTran.SQL.Text;
//
// ProgressBar1St.Position := 0;
// ProgressBar1St.Visible  := True;
// ProgressBar1St.Max      := ADOQuery1St.RecordCount;
//
// ADOQuery1St.First;
// repeat
// ProgressBar1St.Position := ProgressBar1.Position + 1;
// GetLocaleFormatSettings(0, Fs);
// Fs.DateSeparator := '-';
// frm.qryTran.SQL.Clear;
// frm.qryTran.SQL.Add(InitSqlStm);
// frm.qryTran.SQL.Add(bConv);
// x1 := ADOQuery1StStationId.AsString;
// frm.qryTran.SQL.Add(' And StationId = ' + x1 + ' ');
// //    frm.qryTran.SQL.Add
// //      ('GROUP BY ACard.CustomerId,[Tran].SitemId,Acard.AcardId,ACardCode');
// frm.qryTran.SQL.Add
// ('Order BY StationId, TranDate, TranTime, ACardCode, SitemId ');
// //      ('ORDER BY ACard.CustomerId,[Tran].SitemId,Acard.AcardId,ACardCode');
// frm.qryTran.Active := True;
// aPDFFilt := TQRPDFDocumentFilter.Create(xPath + '\Rpt002-' + x1 + 'St.pdf');
// aPDFFilt.Codepage     := '1253';
// aPDFFilt.TextEncoding := UnicodeEncoding;
// aPDFFilt.AddTTFont('Courier New');
// frm.ShowProgress := False;
// frm.ExportToFilter(aPDFFilt);
// aPDFFilt.Free;
// ADOQuery1St.Next;
// until ADOQuery1St.Eof;
//
// frm.Free;
//
// MessageDlg('Ολοκλήρωση Δημιουργίας', mtWarning, [mbOK], 0);
// ProgressBar1St.Visible := False;}
// end;
{$ENDREGION}

procedure TfrmPrnTran.actPrint2PDFExecute(Sender: TObject);
var
  frm: TrptKinhs3;
  PreSql, PostSql: string;
begin
  PageControl1.ActivePage := tsSendStation;
  try
    frm := TrptKinhs3.Create(Self);
    LoadImageNoDlg(frm);

    PreSql := frm.qryTran.SQL.Text;

    if SqlText > '' then
      PreSql := PreSql + ' Where ' + SqlText + ' And [STATION.STATIONID] = '
    else
      PreSql := PreSql + ' Where [STATION.STATIONID] = ';

    PostSql := ' ORDER BY [Tran.StationId],[Tran.TranDate],[Tran.TranTime],[Acard.ACardCode],[Tran.SitemId]';

    PrintSplitReport(frm, qry1Station, 'qryTran', 'STATIONID', xPath, '\Rpt003-Sta-', '.pdf', PreSql, PostSql, ProgressBar1St);

  finally
    frm.Free;
  end;
end;

{ TODO -cObjective : To Parent General Form }
procedure TfrmPrnTran.PrnFaxSendGen(VarDataSet: TDataSet; Subject: String; FldCode: String; FldMail: String; FldFax: String; ChkMail: String; ChkFax: String; ChkPrint: String;
  FilePath: string; ChPBar: TProgressBar; TabAct: TTabSheet; TabCont: TPageControl; MemoFld0: TMemo; MemoFld1: TMemo; MustExistReport: String; RepList: TStringList;
  FldSap: String = '');
var
  StSql, FaxAd: String;
  Sl: TStringList;
  StrSubject, StrAttachment: String;
  x, x1, xSap: String;
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
  RwMAPISession1.LogonInfo.UseExtendedMapi := RwMAPISession1.MapiInfo.ExtendedMAPI;

  try
    RwMAPISession1.LogonInfo.UseExtendedMapi := RwMAPISession1.MapiInfo.ExtendedMAPI;
    try
      RwMAPISession1.Logon;
      SetStatusText('Αποστολή Fax', 1);

      VarDataSet.First;
      repeat
        ChPBar.Position := ChPBar.Position + 1;

        GetLocaleFormatSettings(0, Fs);
        x1 := VarDataSet.FieldByName(FldCode).AsString;

        if FldSap > '' then
          xSap := VarDataSet.FieldByName(FldSap).AsString
        else
          xSap := '';

        ExpandRepStr(MustExistReport, x1, nMustExistReport);

        if MustExistReport > ' ' then
          if SysUtils.FileExists(xPath + '\\' + nMustExistReport) then
            MustExistExists := True
          else
            MustExistExists := false
        else
          MustExistExists := True;

        MemoFld1.Lines.Add('MailFaxPrint for Code : ' + x1);

        if MustExistExists then
          begin
            if VarDataSet.FieldByName(ChkMail).AsBoolean And OnlyEmailPdf then
              begin
                try
                  RwMAPISession1.LogonInfo.UseExtendedMapi := RwMAPISession1.MapiInfo.ExtendedMAPI;
                  RwMAPISession1.Logon;
                  SetStatusText('Αποστολή Email', 1);
                  Sl.Clear;
                  FindWords(VarDataSet.FieldByName(FldMail).AsString, Sl);
                  for x2 := 0 to Sl.Count - 1 do
                    try
                      SendEmailGen(Sl[x2], x1, xSap, 'Avin Card ', RepList);
                      MemoFld1.Lines.Add('Mail for Code : ' + x1 + ' Mail Address ' + Sl[x2]);
                    except
                      on E: ERwException do
                        begin
                          MemoFld0.Lines.Add('Exception class name = ' + E.ClassName);
                          MemoFld0.Lines.Add('Exception message = ' + E.Message);
                          MemoFld0.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
                          // MemoFld1.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
                        end;
                    end;
                except
                  on E: ERwException do
                    begin
                      MemoFld0.Lines.Add('Exception class name = ' + E.ClassName);
                      MemoFld0.Lines.Add('Exception message = ' + E.Message);
                      MemoFld0.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
                      // MemoFld1.Lines.Add('+++ Id ' + x1 + ' Mail ' + Sl[x2]);
                    end;
                end;
              end;

            if VarDataSet.FieldByName(ChkFax).AsBoolean And OnlyFaxPdf then
              begin
                try
                  RwMAPISession1.LogonInfo.UseExtendedMapi := RwMAPISession1.MapiInfo.ExtendedMAPI;
                  RwMAPISession1.Logon;
                  SetStatusText('Αποστολή Fax', 1);
                  Sl.Clear;
                  FindWords(VarDataSet.FieldByName(FldFax).AsString, Sl);
                  for x2 := 0 to Sl.Count - 1 do
                    try
                      SendFaxGen(Sl[x2], x1, xSap, 'Avin Card ', RepList);
                      MemoFld1.Lines.Add('Fax  for Code : ' + x1 + ' Fax Number ' + Sl[x2]);
                    except
                      on E: ERwException do
                        begin
                          MemoFld0.Lines.Add('Exception class name = ' + E.ClassName);
                          MemoFld0.Lines.Add('Exception message = ' + E.Message);
                          MemoFld0.Lines.Add('+++ Id ' + x1 + ' Fax ' + Sl[x2]);
                          // MemoFld1.Lines.Add('+++ Id ' + x1 + ' Fax ' + Sl[x2]);
                        end;
                    end;
                except
                  on E: ERwException do
                    begin
                      MemoFld0.Lines.Add('Exception class name = ' + E.ClassName);
                      MemoFld0.Lines.Add('Exception message = ' + E.Message);
                      MemoFld0.Lines.Add('+++ Id ' + x1 + ' Fax ' + Sl[x2]);
                      // MemoFld1.Lines.Add('+++ Id ' + x1 + ' Fax ' + Sl[x2]);
                    end;
                end;
              end;

            if VarDataSet.FieldByName(ChkPrint).AsBoolean And OnlyPrintPdf then
              begin
                try
                  SetStatusText('Εκτύπωση ', 1);
                  SendPrintGen('Print', x1, xSap, 'Avin Card ', RepList);
                  MemoFld1.Lines.Add('Print for Code : ' + x1);

{$REGION 'Old'}
                  /// /                      AcroPDF1.LoadFile(xPath + '\RSTM-' + x1 + '.pdf');
                  /// /                      AcroPDF1.printAll;
                  // if SysUtils.FileExists(xPath + '\Rpt005-' + x1 + '.pdf') then
                  // ShellExecute(Handle, 'print', PChar(xPath + '\Rpt005-' + x1 + '.pdf'), nil, nil, SW_HIDE) ;
                  // if SysUtils.FileExists(xPath + '\Rpt007-' + x1 + '.pdf') then
                  // ShellExecute(Handle, 'print', PChar(xPath + '\Rpt007-' + x1 + '.pdf'), nil, nil, SW_HIDE) ;
                  // if SysUtils.FileExists(xPath + '\Rpt009-' + x1 + '.pdf') then
                  // ShellExecute(Handle, 'print', PChar(xPath + '\Rpt009-' + x1 + '.pdf'), nil, nil, SW_HIDE) ;
                  // if SysUtils.FileExists(xPath + '\Rpt022-' + x1 + '.pdf') then
                  // ShellExecute(Handle, 'print', PChar(xPath + '\Rpt022-' + x1 + '.pdf'), nil, nil, SW_HIDE) ;
                  // if SysUtils.FileExists(xPath + '\RSTM-' + x1 + '.pdf') then
                  // ShellExecute(Handle, 'print', PChar(xPath + '\RSTM-' + x1 + '.pdf'), nil, nil, SW_HIDE) ;
                  // //Add Time Wait ;;;

{$ENDREGION} except
                  on E: ERwException do
                    begin
                      MemoFld0.Lines.Add('Exception class name = ' + E.ClassName);
                      MemoFld0.Lines.Add('Exception message = ' + E.Message);
                      MemoFld0.Lines.Add('+++ Id ' + x1 + ' Print ' + Sl[x2]);
                      // MemoFld1.Lines.Add('+++ Id ' + x1 + ' Print ' + Sl[x2]);
                    end;
                end;
              end;
          end;
        { TODO -oLeonidas : Must Be Parametrized }
        // if ChPBar.Position mod 5 = 0 then
        if ChPBar.Position mod (StrtoInt(Edit4.Text)) = 0 then
          MessageDlg('Please check your mailbox SIZE !!!!!!!', mtInformation, [mbOK], 0);
        MemoFld1.Lines.Add('End MFP for Code : ' + x1 + Chr(13));
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
    RwMAPISession1.Logoff;
  end;

  MessageDlg('Ολοκλήρωση Διαδικασίας.', mtWarning, [mbOK], 0);
  ChPBar.Visible := True;
end;

{ TODO -cObjective : To Parent General Form }
procedure TfrmPrnTran.SendPrintGen(FaxNo, PelaName, PelaNameSap, SubjectStr: string; slx: TStringList);
var
  xx: Integer;
  nslx: TStringList;
begin
  SetStatusText('Εκτύπωση ', 1);
  nslx := TStringList.Create;
  ExpandRepList(slx, PelaName, PelaNameSap, nslx);
  for xx := 0 to nslx.Count - 1 do
    begin
      if SysUtils.FileExists(xPath + '\\' + nslx[xx]) then
        ShellExecute(Handle, 'print', PChar(xPath + '\\' + nslx[xx]), nil, nil, SW_HIDE);
    end;
end;

{ TODO -cObjective : To Parent General Form }
procedure TfrmPrnTran.SendEmailGen(EmailAd, PelaName, PelaNameSap, SubjectStr: string; slx: TStringList);
var
  Sleo: TStringList;
  x, xx: Integer;
  TempStream: TFileStream;
  NewMessage: IRwMapiMailMessage;
  nslx: TStringList;

  Atc: IRwMAPIAttachment;
  AttInt: IRwMAPIProperty;
  AttFileName: string;
  AttID: TRwMAPIEntryID;

begin
  SetStatusText('Αποστολή Email ', 1);
  nslx := TStringList.Create;
  ExpandRepList(slx, PelaName, PelaNameSap, nslx);
  try
    NewMessage         := RwMAPISession1.CreateMessage(ftDraft) as IRwMapiMailMessage;
    NewMessage.RecipTo := EmailAd;
    NewMessage.Subject := SubjectStr;
    NewMessage.Body    := SubjectStr;

    for xx := 0 to nslx.Count - 1 do
      begin
        if SysUtils.FileExists(xPath + '\\' + nslx[xx]) then
          NewMessage.AddFileAttachment(xPath + '\\' + nslx[xx]);
      end;
    NewMessage.SubmitMessage(astMoveToSentItems);

    // FMsgStore := RwMAPISession1.OpenDefaultMsgStore;
    // AttID:=NewMessage.EntryID;
    /// /    AttInt:=NewMessage.EntryID;
    /// /    GetPropValues(PR_ENTRY_ID);
    // MessageDlg(AttInt.AsString, mtInformation, [mbOK], 0);
    // FMsgStore.OpenMessage(NewMessage.EntryID).DisplayProperties;
    // AttID:=NewMessage.PropByName(PR_ENTRYID);

    // MessageDlg(AttId, mtInformation, [mbOK], 0);

  finally
    nslx.Free;
  end;
  SetStatusText(' ', 1);
end;

{ TODO -cObjective : To Parent General Form }
procedure TfrmPrnTran.SendFaxGen(FaxNo, PelaName, PelaNameSap, SubjectStr: string; slx: TStringList);
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
  ExpandRepList(slx, PelaName, PelaNameSap, nslx);

  SetStatusText('Αποστολή Email ', 1);
  try
    NewMessage         := RwMAPISession1.CreateMessage(ftDraft) as IRwMapiMailMessage;
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

procedure TfrmPrnTran.ActSendCustomer;
var
  CustomerReportList: TStringList;
begin
  CustomerReportList := TStringList.Create;
  if MessageDlg('Μόνο οι λογαριασμοί', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      CustomerReportList.Add('RSTM_&&&.pdf');
    end
  else
    begin
      CustomerReportList.Add('Rpt005-Cus-$$$.pdf');
      CustomerReportList.Add('Rpt007-Cus-$$$.pdf');
      CustomerReportList.Add('Rpt009-Cus-$$$.pdf');
      CustomerReportList.Add('Rpt022-Cus-$$$.pdf');
      CustomerReportList.Add('RSTM_&&&.pdf');
    end;

  PrnFaxSendGen(qry1Customer, Edit3.Text,
    // 'AvinCard',
    'CustomerId', 'email', 'fax', 'sendmail', 'sendfax', 'sendprint', '', ProgressBar1, TsSendCustomer, PageControl1, Memo2, Memo3, '', CustomerReportList, 'LCustSAPId');

  CustomerReportList.Clear;
end;

procedure TfrmPrnTran.ActSendMerchant;
var
  MerchantReportList: TStringList;
begin
  MerchantReportList := TStringList.Create;
  MerchantReportList.Add('Rpt003-Mer-$$$.pdf');

  PrnFaxSendGen(qry1Merchant, Edit3Me.Text,
    // 'Avin Card ',
    'MerchantId', 'email', 'fax', 'sendmail', 'sendfax', 'sendprint', '', ProgressBar1St, TsSendMerchant, PageControl1, Memo2St, Memo3St, '', MerchantReportList);

  MerchantReportList.Clear;
end;

procedure TfrmPrnTran.ActSendStation;
var
  StationReportList: TStringList;
begin
  StationReportList := TStringList.Create;
  StationReportList.Add('Rpt003-Sta-$$$.pdf');

  PrnFaxSendGen(qry1Station, Edit3St.Text,
    // 'Avin Card ',
    'StationId', 'email', 'fax', 'sendmail', 'sendfax', 'sendprint', '', ProgressBar1St, tsSendStation, PageControl1, Memo2St, Memo3St, '', StationReportList);

  StationReportList.Clear;
end;

procedure TfrmPrnTran.actToExcelExecute(Sender: TObject);
begin
  inherited;
  // ExcelPopBtnClick(Self);
  if Assigned(DXMasterView) then
    Output2XLSFiledx(DXMasterView, GlobalFileName);
end;

procedure TfrmPrnTran.Button1Click(Sender: TObject);
begin
  inherited;
  qryTran.Active := True;
end;

procedure TfrmPrnTran.Button2Click(Sender: TObject);
begin
  inherited;
  NoContactStation  := false;
  NoContactMerchant := false;
  NoContactCustomer := false;

  NoActionStation  := false;
  NoActionMerchant := false;
  NoActionCustomer := false;

  qry1Customer.Active   := false;
  qry1Merchant.Active   := false;
  qry1Station.Active    := false;
  qry101Customer.Active := false;
  qry101Merchant.Active := false;
  qry101Station.Active  := false;

  qry1Customer.Active   := True;
  qry1Merchant.Active   := True;
  qry1Station.Active    := True;
  qry101Customer.Active := True;
  qry101Merchant.Active := True;
  qry101Station.Active  := True;
end;

procedure TfrmPrnTran.CheckAllMFP;
begin
  if (NoContactStation And NoContactMerchant And NoContactCustomer And NoActionStation And NoActionMerchant And NoActionCustomer) = false then
    MessageDlg('Δεν υπάρχουν όλα τα στοιχεία για αποστολή καταστάσεων.', mtError, [mbOK], 0);
end;

procedure TfrmPrnTran.ExpandRepList(InitList: TStringList; ExpandedLiteral: string; ExpandedLiteralSap: string; var OutList: TStringList);
var
  xx: Integer;
  OutString, InitStr: string;
begin
  for xx := 0 to InitList.Count - 1 do
    begin
      InitStr   := InitList[xx];
      OutString := '';
      OutString := InitList[xx];
      if ContainsStr(InitStr, '$$$') then
        OutString := StringReplace(InitStr, '$$$', ExpandedLiteral, []);
      if ContainsStr(InitStr, '&&&') then
        OutString := StringReplace(InitStr, '&&&', ExpandedLiteralSap, []);
      OutList.Add(OutString);
    end;
end;

procedure TfrmPrnTran.ExpandRepStr(InitStr, ExpandedLiteral: string; var OutString: String);
begin
  OutString := StringReplace(InitStr, '$$$', ExpandedLiteral, []);
end;

procedure TfrmPrnTran.actMailSpecificStExecute(Sender: TObject);
var
  StationReportList: TStringList;
begin
  StationReportList := TStringList.Create;

  if Edit1St.Text > '' then
    StationReportList.Add(Edit1St.Text);
  if Edit2St.Text > '' then
    StationReportList.Add(Edit2St.Text);

  OnlyEmailPdf := True;

  PrnFaxSendGen(qry1Station, Edit3St.Text, 'StationId', 'email', 'fax', 'sendmail', 'sendfax', 'sendprint', '', ProgressBar1St, tsSendStation, PageControl1, Memo2St, Memo3St, '',
    StationReportList);

  StationReportList.Clear;
end;

procedure TfrmPrnTran.actMailSpecificExecute(Sender: TObject);
var
  CustomerReportList: TStringList;
begin
  CustomerReportList := TStringList.Create;
  if Edit1.Text > '' then
    CustomerReportList.Add(Edit1.Text);
  if Edit2.Text > '' then
    CustomerReportList.Add(Edit2.Text);

  OnlyEmailPdf := True;

  PrnFaxSendGen(qry1Customer, Edit3.Text, 'CustomerId', 'email', 'fax', 'sendmail', 'sendfax', 'sendprint', '', ProgressBar1, TsSendCustomer, PageControl1, Memo2, Memo3, '',
    CustomerReportList);

  CustomerReportList.Clear;
end;

procedure TfrmPrnTran.actMailSpecificMeExecute(Sender: TObject);
var
  MerchantReportList: TStringList;
begin
  MerchantReportList := TStringList.Create;
  if Edit1Me.Text > '' then
    MerchantReportList.Add(Edit1Me.Text);
  if Edit2Me.Text > '' then
    MerchantReportList.Add(Edit2Me.Text);

  OnlyEmailPdf := True;

  PrnFaxSendGen(qry1Merchant, Edit3Me.Text, 'MerchantId', 'email', 'fax', 'sendmail', 'sendfax', 'sendprint', '', ProgressBar1St, TsSendMerchant, PageControl1, Memo2St, Memo3St,
    '', MerchantReportList);

  MerchantReportList.Clear;
end;

/// /Dummy Placeholders >
procedure TfrmPrnTran.actPrint7PDFStExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmPrnTran.actPrint22PDFStExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmPrnTran.actPrint4PdfStExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmPrnTran.actPrint8PDFStExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmPrnTran.actOutFolderExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmPrnTran.actPrint2merPdfExecute(Sender: TObject);
var
  frm: TrptKinhs3Mer;
  PreSql, PostSql: string;
begin
  PageControl1.ActivePage := TsSendMerchant;
  try
    frm := TrptKinhs3Mer.Create(Self);
    LoadImageNoDlg(frm);

    PreSql := frm.qryTran.SQL.Text;

    if SqlText > '' then
      PreSql := PreSql + ' Where ' + SqlText + ' And [Tran.MerchantId] = '
    else
      PreSql := PreSql + ' Where [Tran.MerchantId] = ';

    PostSql := ' ORDER BY [Tran.MerchantId],[Tran.StationId],[Tran.TranDate],[Tran.TranTime],[Acard.ACardCode],[Tran.SitemId]';

    PrintSplitReport(frm, qry101Merchant, 'qryTran', 'MerchantID', xPath, '\Rpt003-Mer-', '.pdf', PreSql, PostSql, ProgressBar1Merchant);

  finally
    frm.Free;
  end;
end;

procedure TfrmPrnTran.actMerPrintPDFExecute(Sender: TObject);
begin
  inherited;
  OnlyPrintPdf := True;
  OnlyEmailPdf := false;
  OnlyFaxPdf   := false;
  ActSendMerchant;
end;

/// /Dummy Placeholders <

end.
