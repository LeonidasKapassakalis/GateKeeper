unit FEnhmTran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCore, DB, ADODB, ActnList, StrUtils,
  FEnhmDaily, FEnhmPelates, FEnhmDiscount, FEnhmStPel, FEnhmParak, FEnhmParakStation,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPScxPageControlProducer,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, Vcl.ToolWin, Vcl.ActnMan,
  Vcl.ActnCtrls, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Vcl.PlatformDefaultStyleActnCtrls, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  cxNavigator, Vcl.ActnMenus, dxPScxCommon, FBaseDev0, Vcl.Menus,
  Vcl.ComCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  TfrmFEnhmTran = class(TfrmBaseDev0)
    dxBarManager1: TActionManager;
    ActionList1: TActionList;
    qryTran: TADOQuery;
    qrySItem: TADOQuery;
    dtsTran: TDataSource;
    dxComponentPrinter1: TdxComponentPrinter;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionList2: TActionList;
    Action1: TAction;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qryTranDet: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    qryTranAcardCustomerId: TIntegerField;
    qryTranCustomerSapCode: TWideStringField;
    qryTranTranStationId: TIntegerField;
    qryTranCustomerIsTest: TBooleanField;
    qryTranStationIsTest: TBooleanField;
    qryTranMerchantIsTest: TBooleanField;
    qryTranMerchantSAPCode: TWideStringField;
    qryTranTRANMerchantId: TIntegerField;
    qryTranTranTranDate: TDateTimeField;
    qryTranTranAmount: TFloatField;
    qryTranTranSitemId: TIntegerField;
    qryTranTranQuantity: TFloatField;
    qryTranTranPELADAILYUPD: TBooleanField;
    qryTranTranPELADAILYUPDBT: TIntegerField;
    qryTranTranDISCOUNTUPDBT: TIntegerField;
    qryTranTranDISCOUNTUPD: TBooleanField;
    qryTranTranTranTime: TDateTimeField;
    qryTranTranCOMMISSIONUPDBT: TIntegerField;
    qryTranTranACARDUPDBT: TIntegerField;
    qryTranTranSTATIONUPDBT: TIntegerField;
    qryTranTranCOMMISSIONUPD: TBooleanField;
    qryTranTranBatchNo: TIntegerField;
    qryTranTranACARDUPD: TBooleanField;
    qryTranTranSTATIONUPD: TBooleanField;
    cxGrid1DBTableView1AcardCustomerId: TcxGridDBColumn;
    cxGrid1DBTableView1CustomerSapCode: TcxGridDBColumn;
    cxGrid1DBTableView1TranStationId: TcxGridDBColumn;
    cxGrid1DBTableView1CustomerIsTest: TcxGridDBColumn;
    cxGrid1DBTableView1StationIsTest: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantIsTest: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantSAPCode: TcxGridDBColumn;
    cxGrid1DBTableView1TRANMerchantId: TcxGridDBColumn;
    cxGrid1DBTableView1TranTranDate: TcxGridDBColumn;
    cxGrid1DBTableView1TranAmount: TcxGridDBColumn;
    cxGrid1DBTableView1TranSitemId: TcxGridDBColumn;
    cxGrid1DBTableView1TranQuantity: TcxGridDBColumn;
    cxGrid1DBTableView1TranPELADAILYUPD: TcxGridDBColumn;
    cxGrid1DBTableView1TranPELADAILYUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView1TranDISCOUNTUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView1TranDISCOUNTUPD: TcxGridDBColumn;
    cxGrid1DBTableView1TranTranTime: TcxGridDBColumn;
    cxGrid1DBTableView1TranCOMMISSIONUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView1TranACARDUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView1TranSTATIONUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView1TranCOMMISSIONUPD: TcxGridDBColumn;
    cxGrid1DBTableView1TranBatchNo: TcxGridDBColumn;
    cxGrid1DBTableView1TranACARDUPD: TcxGridDBColumn;
    cxGrid1DBTableView1TranSTATIONUPD: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    dtsTranDet: TDataSource;
    qryTranDetMerchantMerchantId: TIntegerField;
    qryTranDetMerchantName: TWideStringField;
    qryTranDetMerchantStreet: TWideStringField;
    qryTranDetMerchantZip: TWideStringField;
    qryTranDetMerchantCity: TWideStringField;
    qryTranDetMerchantAFM: TWideStringField;
    qryTranDetMerchantDOY: TWideStringField;
    qryTranDetMerchantIsTest: TBooleanField;
    qryTranDetMerchantAreaId: TIntegerField;
    qryTranDetMerchantSAPCode: TWideStringField;
    qryTranDetMerchantMerchantCode: TWideStringField;
    qryTranDetMerchantSalesMenId: TIntegerField;
    qryTranDetMerchantDeleted: TBooleanField;
    qryTranDetMerchantInActive: TBooleanField;
    qryTranDetMerchantStopSales: TBooleanField;
    qryTranDetStationStationId: TIntegerField;
    qryTranDetStationName: TWideStringField;
    qryTranDetStationStreet: TWideStringField;
    qryTranDetStationZIP: TWideStringField;
    qryTranDetStationCity: TWideStringField;
    qryTranDetStationAreaId: TIntegerField;
    qryTranDetStationSalesMenId: TIntegerField;
    qryTranDetStationDeleted: TBooleanField;
    qryTranDetStationInActive: TBooleanField;
    qryTranDetStationStopSales: TBooleanField;
    qryTranDetTerminalTerminalCode: TWideStringField;
    qryTranDetTerminalTerminalId: TIntegerField;
    qryTranDetTerminalSerialNo: TWideStringField;
    qryTranDetCUSTOMERCUSTOMERId: TIntegerField;
    qryTranDetCUSTOMERName: TWideStringField;
    qryTranDetCUSTOMERZip: TWideStringField;
    qryTranDetCUSTOMERStreet: TWideStringField;
    qryTranDetCUSTOMERCity: TWideStringField;
    qryTranDetCUSTOMERAFM: TWideStringField;
    qryTranDetCUSTOMERDOY: TWideStringField;
    qryTranDetCUSTOMERAreaId: TIntegerField;
    qryTranDetCUSTOMERCGroupId: TIntegerField;
    qryTranDetCUSTOMERCClassId: TIntegerField;
    qryTranDetCUSTOMERBranchId: TIntegerField;
    qryTranDetCUSTOMERSAPCode: TWideStringField;
    qryTranDetCUSTOMERIsActive: TBooleanField;
    qryTranDetCUSTOMERSalesMenId: TIntegerField;
    qryTranDetCUSTOMERIsTest: TBooleanField;
    qryTranDetCUSTOMERAreaBId: TIntegerField;
    qryTranDetCUSTOMERHASDETAILEMP: TBooleanField;
    qryTranDetCUSTOMERCUSTOMEROFF: TBooleanField;
    qryTranDetTRANTRANDATE: TDateTimeField;
    qryTranDetTRANACARDID: TIntegerField;
    qryTranDetTRANMerchantId: TIntegerField;
    qryTranDetTRANStationId: TIntegerField;
    qryTranDetTRANTerminalId: TIntegerField;
    qryTranDetTRANAmount: TFloatField;
    qryTranDetTRANSitemId: TIntegerField;
    qryTranDetTRANQuantity: TFloatField;
    qryTranDetTRANIsAuto: TBooleanField;
    qryTranDetTRANStationUPD: TBooleanField;
    qryTranDetTRANACARDUPD: TBooleanField;
    qryTranDetTRANIsVoid: TBooleanField;
    qryTranDetTRANBatchNo: TIntegerField;
    qryTranDetTRANCommissionUpd: TBooleanField;
    qryTranDetTRANStationUPDBT: TIntegerField;
    qryTranDetTRANAcardUPDBT: TIntegerField;
    qryTranDetTRANCommissionUPDBT: TIntegerField;
    qryTranDetTRANTranTime: TDateTimeField;
    qryTranDetTRANIsTyped: TBooleanField;
    qryTranDetTRANDiscountUPD: TBooleanField;
    qryTranDetTRANDiscountUPDBT: TIntegerField;
    qryTranDetTRANDisQuantity: TFloatField;
    qryTranDetTRANDisAmount: TFloatField;
    qryTranDetTRANPelaDailyUPD: TBooleanField;
    qryTranDetTRANPelaDailyUPDBT: TIntegerField;
    qryTranDetACARDACARDID: TIntegerField;
    qryTranDetACARDACARDCODE: TWideStringField;
    qryTranDetACARDCustimerId: TIntegerField;
    qryTranDetACARDVTypeId: TIntegerField;
    qryTranDetACARDREGNO: TWideStringField;
    qryTranDetACARDACARDHOLDER: TWideStringField;
    qryTranDetACARDIsActive: TBooleanField;
    qryTranDetACARDEMPLOYEESID: TIntegerField;
    qryTranDetACARDCostCenterId: TIntegerField;
    qryTranDetVTYPEVTYPEID: TIntegerField;
    qryTranDetVTYPEDescr: TWideStringField;
    qryTranDetREGNOSEQREGNOSEQID: TIntegerField;
    qryTranDetREGNOSEQREGNO: TWideStringField;
    cxGrid1DBTableView2FullCardNo: TcxGridDBColumn;
    cxGrid1DBTableView2LSitem: TcxGridDBColumn;
    cxGrid1DBTableView2MerchantMerchantId: TcxGridDBColumn;
    cxGrid1DBTableView2MerchantName: TcxGridDBColumn;
    cxGrid1DBTableView2MerchantStreet: TcxGridDBColumn;
    cxGrid1DBTableView2MerchantZip: TcxGridDBColumn;
    cxGrid1DBTableView2MerchantCity: TcxGridDBColumn;
    cxGrid1DBTableView2MerchantAFM: TcxGridDBColumn;
    cxGrid1DBTableView2MerchantDOY: TcxGridDBColumn;
    cxGrid1DBTableView2MerchantIsTest: TcxGridDBColumn;
    cxGrid1DBTableView2MerchantAreaId: TcxGridDBColumn;
    cxGrid1DBTableView2MerchantSAPCode: TcxGridDBColumn;
    cxGrid1DBTableView2MerchantMerchantCode: TcxGridDBColumn;
    cxGrid1DBTableView2MerchantSalesMenId: TcxGridDBColumn;
    cxGrid1DBTableView2MerchantDeleted: TcxGridDBColumn;
    cxGrid1DBTableView2MerchantInActive: TcxGridDBColumn;
    cxGrid1DBTableView2MerchantStopSales: TcxGridDBColumn;
    cxGrid1DBTableView2StationStationId: TcxGridDBColumn;
    cxGrid1DBTableView2StationName: TcxGridDBColumn;
    cxGrid1DBTableView2StationStreet: TcxGridDBColumn;
    cxGrid1DBTableView2StationZIP: TcxGridDBColumn;
    cxGrid1DBTableView2StationCity: TcxGridDBColumn;
    cxGrid1DBTableView2StationAreaId: TcxGridDBColumn;
    cxGrid1DBTableView2StationSalesMenId: TcxGridDBColumn;
    cxGrid1DBTableView2StationDeleted: TcxGridDBColumn;
    cxGrid1DBTableView2StationInActive: TcxGridDBColumn;
    cxGrid1DBTableView2StationStopSales: TcxGridDBColumn;
    cxGrid1DBTableView2TerminalTerminalCode: TcxGridDBColumn;
    cxGrid1DBTableView2TerminalTerminalId: TcxGridDBColumn;
    cxGrid1DBTableView2TerminalSerialNo: TcxGridDBColumn;
    cxGrid1DBTableView2CUSTOMERCUSTOMERId: TcxGridDBColumn;
    cxGrid1DBTableView2CUSTOMERName: TcxGridDBColumn;
    cxGrid1DBTableView2CUSTOMERZip: TcxGridDBColumn;
    cxGrid1DBTableView2CUSTOMERStreet: TcxGridDBColumn;
    cxGrid1DBTableView2CUSTOMERCity: TcxGridDBColumn;
    cxGrid1DBTableView2CUSTOMERAFM: TcxGridDBColumn;
    cxGrid1DBTableView2CUSTOMERDOY: TcxGridDBColumn;
    cxGrid1DBTableView2CUSTOMERAreaId: TcxGridDBColumn;
    cxGrid1DBTableView2CUSTOMERCGroupId: TcxGridDBColumn;
    cxGrid1DBTableView2CUSTOMERCClassId: TcxGridDBColumn;
    cxGrid1DBTableView2CUSTOMERBranchId: TcxGridDBColumn;
    cxGrid1DBTableView2CUSTOMERSAPCode: TcxGridDBColumn;
    cxGrid1DBTableView2CUSTOMERIsActive: TcxGridDBColumn;
    cxGrid1DBTableView2CUSTOMERSalesMenId: TcxGridDBColumn;
    cxGrid1DBTableView2CUSTOMERIsTest: TcxGridDBColumn;
    cxGrid1DBTableView2CUSTOMERAreaBId: TcxGridDBColumn;
    cxGrid1DBTableView2CUSTOMERHASDETAILEMP: TcxGridDBColumn;
    cxGrid1DBTableView2CUSTOMERCUSTOMEROFF: TcxGridDBColumn;
    cxGrid1DBTableView2TRANTRANDATE: TcxGridDBColumn;
    cxGrid1DBTableView2TRANACARDID: TcxGridDBColumn;
    cxGrid1DBTableView2TRANMerchantId: TcxGridDBColumn;
    cxGrid1DBTableView2TRANStationId: TcxGridDBColumn;
    cxGrid1DBTableView2TRANTerminalId: TcxGridDBColumn;
    cxGrid1DBTableView2TRANAmount: TcxGridDBColumn;
    cxGrid1DBTableView2TRANSitemId: TcxGridDBColumn;
    cxGrid1DBTableView2TRANQuantity: TcxGridDBColumn;
    cxGrid1DBTableView2TRANIsAuto: TcxGridDBColumn;
    cxGrid1DBTableView2TRANStationUPD: TcxGridDBColumn;
    cxGrid1DBTableView2TRANACARDUPD: TcxGridDBColumn;
    cxGrid1DBTableView2TRANIsVoid: TcxGridDBColumn;
    cxGrid1DBTableView2TRANBatchNo: TcxGridDBColumn;
    cxGrid1DBTableView2TRANCommissionUpd: TcxGridDBColumn;
    cxGrid1DBTableView2TRANStationUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView2TRANAcardUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView2TRANCommissionUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView2TRANTranTime: TcxGridDBColumn;
    cxGrid1DBTableView2TRANIsTyped: TcxGridDBColumn;
    cxGrid1DBTableView2TRANDiscountUPD: TcxGridDBColumn;
    cxGrid1DBTableView2TRANDiscountUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView2TRANDisQuantity: TcxGridDBColumn;
    cxGrid1DBTableView2TRANDisAmount: TcxGridDBColumn;
    cxGrid1DBTableView2TRANPelaDailyUPD: TcxGridDBColumn;
    cxGrid1DBTableView2TRANPelaDailyUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView2ACARDACARDID: TcxGridDBColumn;
    cxGrid1DBTableView2ACARDACARDCODE: TcxGridDBColumn;
    cxGrid1DBTableView2ACARDCustimerId: TcxGridDBColumn;
    cxGrid1DBTableView2ACARDVTypeId: TcxGridDBColumn;
    cxGrid1DBTableView2ACARDREGNO: TcxGridDBColumn;
    cxGrid1DBTableView2ACARDACARDHOLDER: TcxGridDBColumn;
    cxGrid1DBTableView2ACARDIsActive: TcxGridDBColumn;
    cxGrid1DBTableView2ACARDEMPLOYEESID: TcxGridDBColumn;
    cxGrid1DBTableView2ACARDCostCenterId: TcxGridDBColumn;
    cxGrid1DBTableView2VTYPEVTYPEID: TcxGridDBColumn;
    cxGrid1DBTableView2VTYPEDescr: TcxGridDBColumn;
    cxGrid1DBTableView2REGNOSEQREGNOSEQID: TcxGridDBColumn;
    cxGrid1DBTableView2REGNOSEQREGNO: TcxGridDBColumn;
    actReportDes: TAction;
    qryTranSums: TADOQuery;
    dxComponentPrinter1Link1: TdxGridReportLink;
    qryTranSumsSUmAmount: TFloatField;
    qryTranSumsSumQuantity: TFloatField;
    StatusBar1: TStatusBar;
    actEnhmParakStation: TAction;
    qryTranSumsG0: TADOQuery;
    qryTranSumsL0: TADOQuery;
    qryTranSumsG0SumAmount: TFloatField;
    qryTranSumsG0SumQuantity: TFloatField;
    qryTranSumsL0SumAmount: TFloatField;
    qryTranSumsL0SumQuantity: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure actEnhmPratExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actEnhmParakExecute(Sender: TObject);
    procedure actPreviewExecute(Sender: TObject);
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure actEnhmPelSapExecute(Sender: TObject);
    procedure actEnhmDiscExecute(Sender: TObject);
    procedure actDailyEnhmExecute(Sender: TObject);
    procedure qryTranDetCalcFields(DataSet: TDataSet);
    procedure actReportDesExecute(Sender: TObject);
    procedure StatusBar1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actEnhmParakStationExecute(Sender: TObject);
  private
    FGlobalFileName: string;
    FGlobalPdf: Boolean;
    procedure SetGlobalFileName(const Value: string);
    procedure SetGlobalPdf(const Value: Boolean);
    { Private declarations }
  public
    FrDate: TDateTime;
    ToDate: TDateTime;
    FrDateIns: TDateTime;
    ToDateIns: TDateTime;
    VoidMode: Integer;
    EnhmSt: Integer;
    EnhmCust: Integer;
    EnhmParak: Integer;
    EnhmDiscount: Integer;
    EnhmDaily: Integer;
    CustTest: Integer;
    StatTest: Integer;
    EnhmCustBtF: Integer;
    EnhmCustBtT: Integer;
    EnhmStBtF: Integer;
    EnhmStBtT: Integer;
    InportBtF: Integer;
    InportBtT: Integer;
    EnhmCoBtF: Integer;
    EnhmCoBtT: Integer;
    EnhmDisBtF: Integer;
    EnhmDisBtT: Integer;
    EnhmDailyBtF: Integer;
    EnhmDailyBtT: Integer;
    SqlParamText: string;
    b, b1: AnsiString;

    property GlobalPdf: Boolean read FGlobalPdf write SetGlobalPdf;
    property GlobalFileName: string read FGlobalFileName write SetGlobalFileName;

  end;

var
  frmEnhmTran: TfrmFEnhmTran;

implementation

uses Common, FMain;

{$R *.dfm}

procedure TfrmFEnhmTran.FormCreate(Sender: TObject);
begin
  inherited;
  SelectMainData    := TCustomAdoDataSet(cxGrid1DBTableView1.DataController.DataSet);
  SelectMainGrid    := cxGrid1DBTableView1;
  SelectMainActList := ActionMainList;
end;

procedure TfrmFEnhmTran.FormShow(Sender: TObject);
Var
  a, c: AnsiString;
Begin
  Try
    // frmMain.DoCursorPush(crSQLWait);
    qrySItem.Close;
    qrySItem.Open;
    qryTran.Close;
    qryTranDet.Close;
{$REGION 'Old SQL Build'}
    qryTran.SQL.Clear;
    // Access Code
    // qryTran.SQL.Add('SELECT CUSTOMER.*, STATION.*, ACARD.ACARDCODE, TRAN.*');
    // qryTran.SQL.Add(' FROM STATION INNER JOIN ((CUSTOMER INNER JOIN ACARD ON CUSTOMER.CUSTOMERID = ACARD.CUSTOMERID)');
    // qryTran.SQL.Add(' INNER JOIN TRAN ON ACARD.ACARDID = TRAN.ACARDID) ON STATION.STATIONID = TRAN.STATIONID');

    qryTran.SQL.Add('SELECT CUSTOMER.NAME AS [Customer.Name], STATION.NAME AS [Station.Name], STATION.CITY, STATION.TERMINALCODE,');
    qryTran.SQL.Add('ACARD.ACARDCODE, [TRAN].*, CUSTOMER.CUSTOMERID, STATION.ISTEST AS [STATION.ISTEST],');
    qryTran.SQL.Add('[TRAN].COMMISSIONUPD AS [Tran.CommissionUpd], CUSTOMER.ISTEST AS [CUSTOMER.ISTEST]');
    qryTran.SQL.Add('FROM STATION INNER JOIN');
    qryTran.SQL.Add('CUSTOMER INNER JOIN');
    qryTran.SQL.Add('ACARD ON CUSTOMER.CUSTOMERID = ACARD.CUSTOMERID INNER JOIN');
    qryTran.SQL.Add('[TRAN] ON ACARD.ACARDID = [TRAN].ACARDID ON STATION.STATIONID = [TRAN].STATIONID');

    a := WhereApoDateOnly(FrDate, 'TRANDATE', true);
    a := a + WhereEosDateOnly(ToDate, 'TRANDATE', Not(length(Trim(a)) > 1));

    a := a + WhereApoDateOnly(FrDateIns, '[TRAN].INSDT', Not(length(Trim(a)) > 1));
    a := a + WhereEosDateOnly(ToDateIns, '[TRAN].INSDT', Not(length(Trim(a)) > 1));

    case VoidMode of
      0:
        a := a + WhereEosBoolean(true, 'ISAUTO', Not(length(Trim(a)) > 1));
      1:
        a := a + WhereEosBoolean(False, 'ISAUTO', Not(length(Trim(a)) > 1));
    end;

    case EnhmSt of
      0:
        a := a + WhereEosBoolean(true, 'StationUpd', Not(length(Trim(a)) > 1));
      1:
        a := a + WhereEosBoolean(False, 'StationUpd', Not(length(Trim(a)) > 1));
    end;

    case EnhmCust of
      0:
        a := a + WhereEosBoolean(true, 'ACardUpd', Not(length(Trim(a)) > 1));
      1:
        a := a + WhereEosBoolean(False, 'ACardUpd', Not(length(Trim(a)) > 1));
    end;

    case EnhmParak of
      0:
        a := a + WhereEosBoolean(true, 'CommissionUpd', Not(length(Trim(a)) > 1));
      1:
        a := a + WhereEosBoolean(False, 'CommissionUpd', Not(length(Trim(a)) > 1));
    end;

    case EnhmDiscount of
      0:
        a := a + WhereEosBoolean(true, 'DiscountUpd', Not(length(Trim(a)) > 1));
      1:
        a := a + WhereEosBoolean(False, 'DiscountUpd', Not(length(Trim(a)) > 1));
    end;

    case EnhmDaily of
      0:
        a := a + WhereEosBoolean(true, 'PelaDailyUpd', Not(length(Trim(a)) > 1));
      1:
        a := a + WhereEosBoolean(False, 'PelaDailyUpd', Not(length(Trim(a)) > 1));
    end;

    case CustTest of
      0:
        a := a + WhereEosBoolean(true, 'Customer.IsTest', Not(length(Trim(a)) > 1));
      1:
        a := a + WhereEosBoolean(False, 'Customer.IsTest', Not(length(Trim(a)) > 1));
    end;

    case StatTest of
      0:
        a := a + WhereEosBoolean(true, 'Station.IsTest', Not(length(Trim(a)) > 1));
      1:
        a := a + WhereEosBoolean(False, 'Station.IsTest', Not(length(Trim(a)) > 1));
    end;

    if Not(EnhmStBtF = 0) then
      a := a + WhereApoNumber(inttostr(EnhmStBtF), 'StationUPDBT', Not(length(Trim(a)) > 1));
    if Not(EnhmStBtT = 0) then
      a := a + WhereEosNumber(inttostr(EnhmStBtT), 'StationUPDBT', Not(length(Trim(a)) > 1));

    if Not(EnhmCustBtF = 0) then
      a := a + WhereApoNumber(inttostr(EnhmCustBtF), 'AcardUPDBT', Not(length(Trim(a)) > 1));
    if Not(EnhmCustBtT = 0) then
      a := a + WhereEosNumber(inttostr(EnhmCustBtT), 'AcardUPDBT', Not(length(Trim(a)) > 1));

    if Not(EnhmCoBtF = 0) then
      a := a + WhereApoNumber(inttostr(EnhmCoBtF), 'CommissionUPDBT', Not(length(Trim(a)) > 1));
    if Not(EnhmCoBtT = 0) then
      a := a + WhereEosNumber(inttostr(EnhmCoBtT), 'CommissionUPDBT', Not(length(Trim(a)) > 1));

    if Not(EnhmDisBtF = 0) then
      a := a + WhereApoNumber(inttostr(EnhmDisBtF), 'DiscountUPDBT', Not(length(Trim(a)) > 1));
    if Not(EnhmDisBtT = 0) then
      a := a + WhereEosNumber(inttostr(EnhmDisBtT), 'DiscountUPDBT', Not(length(Trim(a)) > 1));

    if Not(EnhmDailyBtF = 0) then
      a := a + WhereApoNumber(inttostr(EnhmDailyBtF), 'PelaDailyUpdBT', Not(length(Trim(a)) > 1));
    if Not(EnhmDailyBtT = 0) then
      a := a + WhereEosNumber(inttostr(EnhmDailyBtT), 'PelaDailyUpdBT', Not(length(Trim(a)) > 1));

    if Not(InportBtF = 0) then
      a := a + WhereApoNumber(inttostr(InportBtF), 'BatchNO', Not(length(Trim(a)) > 1));
    if Not(InportBtT = 0) then
      a := a + WhereEosNumber(inttostr(InportBtT), 'BatchNO', Not(length(Trim(a)) > 1));

    If (length(a) <> 0) Then
      qryTran.SQL.Add(' WHERE ' + a);
    If (length(a) <> 0) Then
      b := 'Where ' + a;

    // Change Of Customer.IsTest Station.IsTest for use in EnhmTrans
    c  := AnsiReplaceText(b, 'Customer.IsTest', '[Customer.IsTest]');
    b1 := AnsiReplaceText(c, 'Station.IsTest', '[Station.IsTest]');

    qryTran.SQL.Add('ORDER BY TRANDATE, [CUSTOMER.NAME], ACARDCODE, [STATION.NAME]');
{$ENDREGION}
    qryTran.SQL.Clear;
    qryTran.SQL.Add('Select * From V_TRAN_FOR_ENHM ');
    if SqlParamText > '' then
      qryTran.SQL.Add('Where ' + SqlParamText);
    qryTran.Open;

    qryTranDet.SQL.Clear;
    qryTranDet.SQL.Add('Select * From  V_TRA_STA_ACA_CUS ');
    if SqlParamText > '' then
      qryTranDet.SQL.Add('Where ' + SqlParamText);
    qryTranDet.Open;

    qryTranSums.SQL.Clear;
    // qryTranSums.SQL.Add('Select Sum([Tran.Amount]) , Sum([Tran.Quantity]) From V_TRAN_FOR_ENHM');
    qryTranSums.SQL.Add('Select Sum([Tran.Amount]) As SUmAmount  , Sum([Tran.Quantity]) As SumQuantity From V_TRAN_FOR_ENHM');
    if SqlParamText > '' then
      qryTranSums.SQL.Add('Where ' + SqlParamText);
    qryTranSums.Open;

    MessageDlg('Σύνολα Αξίας     : ' + CurrToStr(qryTranSumsSUmAmount.AsCurrency) + chr(13) + 'Σύνολα Ποσότητας : ' + FloatToStr(qryTranSumsSumQuantity.AsFloat), mtInformation,
      [mbOK], 0);

    qryTranSumsL0.SQL.Clear;
    qryTranSumsL0.SQL.Add('Select Sum([Tran.Amount]) As SUmAmount  , Sum([Tran.Quantity]) As SumQuantity From V_TRAN_FOR_ENHM');
    if SqlParamText > '' then
      qryTranSumsL0.SQL.Add('Where ' + SqlParamText + ' AND [Tran.Amount] < 0')
    else
      qryTranSumsL0.SQL.Add('Where [Tran.Amount] < 0');
    qryTranSumsL0.Open;

    qryTranSumsG0.SQL.Clear;
    qryTranSumsG0.SQL.Add('Select Sum([Tran.Amount]) As SUmAmount  , Sum([Tran.Quantity]) As SumQuantity From V_TRAN_FOR_ENHM');
    if SqlParamText > '' then
      qryTranSumsG0.SQL.Add('Where ' + SqlParamText + ' AND [Tran.Amount] >= 0')
    else
      qryTranSumsG0.SQL.Add('Where [Tran.Amount] >= 0');
    qryTranSumsG0.Open;

    StatusBar1.Panels[0].Text := 'Σύνολα Αξίας     : ' + CurrToStr(qryTranSumsSUmAmount.AsCurrency);
    StatusBar1.Panels[1].Text := 'Σύνολα Ποσότητας : ' + FloatToStr(qryTranSumsSumQuantity.AsFloat)
  Finally
    // frmMain.DoCursorPop;
  End;
end;

procedure TfrmFEnhmTran.actEnhmPratExecute(Sender: TObject);
var
  frm: TfrmFEnhmStPel;
begin
  frm                    := TfrmFEnhmStPel.Create(self);
  frm.ToDate             := ToDate;
  frm.qryTran.Active     := False;
  frm.qryCustomer.Active := False;
  frm.qryMerchant.Active := False;
  frm.EnhmTrans.Active   := False;

  if SqlParamText > '' then
    begin
      frm.qryTran.SQL.Add('Where ' + SqlParamText);
      frm.EnhmTrans.SQL.Add('Where ' + SqlParamText + ' ');
      frm.qrySumPela.SQL.Add('Where ' + SqlParamText + ' ');
      frm.qrySumPrat.SQL.Add('Where ' + SqlParamText + ' ');
    end;

  frm.qryTran.SQL.Add('GROUP BY [Acard.CustomerId], [Customer.SapCode],  [Tran.MerchantId], [Merchant.SapCode]');
  // frm.qrySumPela.SQL.Add(b);
  frm.qrySumPela.SQL.Add('GROUP BY [Customer.SapCode] ');
  // frm.qrySumPrat.SQL.Add(b);
  frm.qrySumPrat.SQL.Add('GROUP BY [Merchant.SapCode] ');

  frm.qryTran.Active     := true;
  frm.qryCustomer.Active := true;
  frm.qryMerchant.Active := true;
  frm.qrySumPela.Active  := true;
  frm.qrySumPrat.Active  := true;

  frm.ShowModal;
  frm.Free;
end;

procedure TfrmFEnhmTran.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmFEnhmTran.actEnhmParakExecute(Sender: TObject);
var
  frm: TfrmFEnhmParak;
begin
  try
    frm                    := TfrmFEnhmParak.Create(self);
    frm.ToDate             := ToDate;
    frm.qryTran.Active     := False;
    frm.qryCustomer.Active := False;
    frm.qryMerchant.Active := False;
    frm.qryTran.SQL.Add('Where ' + SqlParamText);
    frm.qryTran.SQL.Add('Group By [Tran.MerchantId]  ,  [Merchant.SapCode] ,  [Sitem.IGroupID]');
    frm.qryTran.Active   := true;
    frm.EnhmTrans.Active := False;
    frm.EnhmTrans.SQL.Add('Where ' + SqlParamText);
    frm.EnhmTrans.Active   := False;
    frm.qryMerchant.Active := true;
    frm.qryCustomer.Active := true;
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmFEnhmTran.actEnhmParakStationExecute(Sender: TObject);
var
  frm: TfrmFEnhmParakStation;
begin
  try
    frm                    := TfrmFEnhmParakStation.Create(self);
    frm.ToDate             := ToDate;
    frm.qryTran.Active     := False;
    frm.qryCustomer.Active := False;
    frm.qryMerchant.Active := False;
    frm.qryTran.SQL.Add('Where ' + SqlParamText);
    frm.qryTran.SQL.Add('Group By [Tran.StationId],[Tran.MerchantId],[Merchant.SAPCode],[Sitem.IGroupID] ');
    frm.qryTran.Active   := true;
    frm.EnhmTrans.Active := False;
    frm.EnhmTrans.SQL.Add('Where ' + SqlParamText);
    frm.EnhmTrans.Active   := False;
    frm.qryMerchant.Active := true;
    frm.qryCustomer.Active := true;
    frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmFEnhmTran.actPreviewExecute(Sender: TObject);
begin
  dxComponentPrinter1.Preview(true, dxComponentPrinter1Link1);
end;

procedure TfrmFEnhmTran.actReportDesExecute(Sender: TObject);
begin
  inherited;
  // ReportDesignerDialog1.DatabaseOwner:=Self;
  // ReportDesignerDialog1.EditReport('TEST.QR2');
  // ReportDesignerDialog1.PreviewReport('TEST.QR2');
end;

procedure TfrmFEnhmTran.qryTranCalcFields(DataSet: TDataSet);
begin
  // qryTranFullCardNo.AsString:=ReturnFullIdNo(qryTranACARDACARDCODE.AsInteger);
end;

procedure TfrmFEnhmTran.qryTranDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  // qryTranDetFullCardNo.AsString:=ReturnFullIdNo(qryTranDetACARDACARDCODE.AsInteger);

  StringField1.AsString := ReturnFullIdNo(qryTranDetACARDACARDCODE.AsInteger);
end;

procedure TfrmFEnhmTran.SetGlobalFileName(const Value: string);
begin
  FGlobalFileName := Value;
end;

procedure TfrmFEnhmTran.SetGlobalPdf(const Value: Boolean);
begin
  FGlobalPdf := Value;
end;

procedure TfrmFEnhmTran.StatusBar1DblClick(Sender: TObject);
begin
  inherited;
  MessageDlg(SqlParamText, mtInformation, [mbOK], 0);
end;

procedure TfrmFEnhmTran.actEnhmPelSapExecute(Sender: TObject);
var
  frm: TfrmFEnhmPelates;
begin
  frm                  := TfrmFEnhmPelates.Create(self);
  frm.ToDate           := ToDate;
  frm.qryTran.Active   := False;
  frm.ADOQuery1.Active := False;
  frm.ADOQuery2.Active := False;
  frm.EnhmTrans.Active := False;
  if SqlParamText > '' then
    begin
      frm.qryTran.SQL.Add('Where ' + SqlParamText);
      frm.EnhmTrans.SQL.Add('Where ' + SqlParamText + ' ');
    end;
  frm.qryTran.SQL.Add('GROUP BY [Acard.CustomerId]');
  frm.qryTran.Active   := true;
  frm.ADOQuery1.Active := true;
  frm.ADOQuery2.Active := true;
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmFEnhmTran.actEnhmDiscExecute(Sender: TObject);
var
  frm: TfrmFEnhmDiscount;
begin
  //
  // { TODO : Make form Enhm Discount }
  //
  frm                  := TfrmFEnhmDiscount.Create(self);
  frm.ToDate           := ToDate;
  frm.SqlParamText     := SqlParamText;
  frm.qryTran.Active   := False;
  frm.ADOQuery1.Active := False;
  // frm.ADOQuery2.Active:=false;
  frm.EnhmTrans.Active := False;
  frm.qryTran.SQL.Add('Where ' + SqlParamText);
  frm.EnhmTrans.SQL.Add('Where ' + SqlParamText);
  // frm.qryTran.SQL.Add('GROUP BY [Acard.CustomerId],[Customer.SapCode],[Customer.DiakID],[Tran.StationId],[Station.SapCode];');
  frm.qryTran.Active   := true;
  frm.ADOQuery1.Active := true;
  // frm.ADOQuery2.Active:=True;
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmFEnhmTran.actDailyEnhmExecute(Sender: TObject);
var
  frm: TfrmFEnhmDaily;
begin
  try
    frm                    := TfrmFEnhmDaily.Create(self);
    frm.ToDate             := ToDate;
    frm.qryTran.Active     := False;
    frm.qryCustomer.Active := False;
    frm.qryMerchant.Active := False;
    frm.EnhmTrans.Active   := False;
    frm.SqlParamText       := SqlParamText;
    frm.SumValue           := 'Σύνολα Αξίας : ' + CurrToStr(qryTranSumsSUmAmount.AsCurrency);
    frm.SumValueG0         := 'Σύνολο Αξίας Χρεωστικών Πελατών : ' + CurrToStr(qryTranSumsG0SumAmount.AsCurrency);
    frm.SumValueL0         := 'Σύνολο Αξίας Πιστωτικών Πελατών : ' + CurrToStr(qryTranSumsL0SumAmount.AsCurrency);

    frm.qryTran.SQL.Add('Where ' + SqlParamText);
    // frm.qryTran.SQL.Add(' GROUP BY [Acard.CustomerId], [Customer.SapCode], [Tran.StationId], [Merchant.SAPCode], [TRAN.MerchantId], [Tran.Amount], [Tran.Quantity]');
    frm.qryTran.SQL.Add(' GROUP BY [Customer.SapCode],  [Merchant.SAPCode]');
    frm.EnhmTrans.SQL.Add('Where ' + SqlParamText);
    // frm.qryTran.SQL.Add('GROUP BY Acard.CustomerId, Customer.SapCode, Customer.DiakID, [Tran].StationId, Station.SapCode;');
    frm.qryTran.Active     := true;
    frm.qryCustomer.Active := true;
    frm.qryMerchant.Active := true;
    frm.ShowModal;
  finally
    frm.Free;
  end;

end;

end.
