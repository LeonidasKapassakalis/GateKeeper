unit FEnhmTransCom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, StrUtils,
  dxPrnDev, dxPSCore, DB, ADODB, ActnList,
  FEnhmEmployees, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, Vcl.PlatformDefaultStyleActnCtrls,
  cxNavigator, FBaseDev0, Vcl.Menus, dxPScxCommon, dxSkinsCore, dxSkinBlack,
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
  TfrmEnhmTransCom = class(TfrmBaseDev0)
    dxBarManager1: TActionManager;
    ActionList1: TActionList;
    actClose: TAction;
    actPreview: TAction;
    actEnhmPelSap: TAction;
    UpdCommandAct: TAction;
    qryTran: TADOQuery;
    qrySItem: TADOQuery;
    dtsTran: TDataSource;
    dxComponentPrinter1: TdxComponentPrinter;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ActionToolBar1: TActionToolBar;
    qrySItemSITEMID: TAutoIncField;
    qrySItemDescr: TWideStringField;
    qrySItemIGROUPID: TIntegerField;
    qrySItemICLASSID: TIntegerField;
    qrySItemPososto: TFloatField;
    qrySItemCODEINTERMINAL: TIntegerField;
    qrySItemMINPRICE: TFloatField;
    qrySItemMAXPRICE: TFloatField;
    qrySItemCHECKPRICE: TBooleanField;
    qrySItemInsUsr: TIntegerField;
    qrySItemInsDT: TDateTimeField;
    qrySItemUpdUsr: TIntegerField;
    qrySItemUpdDT: TDateTimeField;
    qrySItemDeleted: TBooleanField;
    qrySItemDelUsr: TIntegerField;
    qrySItemDelDT: TDateTimeField;
    qrySItemInActive: TBooleanField;
    qrySItemInActiveUsr: TIntegerField;
    qrySItemInActiveDt: TDateTimeField;
    qryTranAcardAcardCode: TWideStringField;
    qryTranTranTranId: TIntegerField;
    qryTranACARDACARDID: TIntegerField;
    qryTranCUSTOMERCUSTOMERId: TIntegerField;
    qryTranTRANAmount: TFloatField;
    qryTranTranKMBEFORE: TIntegerField;
    qryTranTranKMAFTER: TIntegerField;
    qryTranTranQUANTITY: TFloatField;
    qryTranTranREFSTR: TWideStringField;
    qryTranTranSITEMID: TIntegerField;
    qryTranCustomerHasDetailEmp: TBooleanField;
    qryTranCustomerIsTest: TBooleanField;
    qryTranTranSTATIONUPD: TBooleanField;
    qryTranTranACARDUPD: TBooleanField;
    qryTranTranCOMMISSIONUPD: TBooleanField;
    qryTranTranSTATIONUPDBT: TIntegerField;
    qryTranTranACARDUPDBT: TIntegerField;
    qryTranTranCOMMISSIONUPDBT: TIntegerField;
    qryTranTranDISCOUNTUPD: TBooleanField;
    qryTranTranDISCOUNTUPDBT: TIntegerField;
    qryTranCustomerIsActive: TBooleanField;
    qryTranAcardEMPLOYEESID: TIntegerField;
    qryTranTranTRANDATE: TDateTimeField;
    qryTranTranCONSUMUPD: TBooleanField;
    qryTranTranCONSUMDIVIDER: TFloatField;
    qryTranTranDISQUANTITY: TFloatField;
    qryTranTranDISAMOUNT: TFloatField;
    qryTranAcardACARDCODENUM: TIntegerField;
    qryTranEMPLOYEESYpokId: TIntegerField;
    qryTranMerchantMerchantId: TIntegerField;
    qryTranMerchantName: TWideStringField;
    qryTranMerchantSapCode: TWideStringField;
    qryTranCustomerSapCode: TWideStringField;
    qryTranEMPLOYEESMhtrId: TIntegerField;
    qryTranEMPLOYEESName: TWideStringField;
    qryTranEMPLOYEESSurName: TWideStringField;
    qryTranACardAcardCodeFull: TWideStringField;
    cxGrid1DBTableView1AcardAcardCode: TcxGridDBColumn;
    cxGrid1DBTableView1TranTranId: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDACARDID: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERCUSTOMERId: TcxGridDBColumn;
    cxGrid1DBTableView1TRANAmount: TcxGridDBColumn;
    cxGrid1DBTableView1ACardAcardCodeFull: TcxGridDBColumn;
    cxGrid1DBTableView1TranKMBEFORE: TcxGridDBColumn;
    cxGrid1DBTableView1TranKMAFTER: TcxGridDBColumn;
    cxGrid1DBTableView1TranQUANTITY: TcxGridDBColumn;
    cxGrid1DBTableView1TranREFSTR: TcxGridDBColumn;
    cxGrid1DBTableView1TranSITEMID: TcxGridDBColumn;
    cxGrid1DBTableView1CustomerHasDetailEmp: TcxGridDBColumn;
    cxGrid1DBTableView1CustomerIsTest: TcxGridDBColumn;
    cxGrid1DBTableView1TranSTATIONUPD: TcxGridDBColumn;
    cxGrid1DBTableView1TranACARDUPD: TcxGridDBColumn;
    cxGrid1DBTableView1TranCOMMISSIONUPD: TcxGridDBColumn;
    cxGrid1DBTableView1TranSTATIONUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView1TranACARDUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView1TranCOMMISSIONUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView1TranDISCOUNTUPD: TcxGridDBColumn;
    cxGrid1DBTableView1TranDISCOUNTUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView1CustomerIsActive: TcxGridDBColumn;
    cxGrid1DBTableView1AcardEMPLOYEESID: TcxGridDBColumn;
    cxGrid1DBTableView1TranTRANDATE: TcxGridDBColumn;
    cxGrid1DBTableView1TranCONSUMUPD: TcxGridDBColumn;
    cxGrid1DBTableView1TranCONSUMDIVIDER: TcxGridDBColumn;
    cxGrid1DBTableView1TranDISQUANTITY: TcxGridDBColumn;
    cxGrid1DBTableView1TranDISAMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1AcardACARDCODENUM: TcxGridDBColumn;
    cxGrid1DBTableView1EMPLOYEESYpokId: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantMerchantId: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantName: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantSapCode: TcxGridDBColumn;
    cxGrid1DBTableView1CustomerSapCode: TcxGridDBColumn;
    cxGrid1DBTableView1EMPLOYEESMhtrId: TcxGridDBColumn;
    cxGrid1DBTableView1EMPLOYEESName: TcxGridDBColumn;
    cxGrid1DBTableView1EMPLOYEESSurName: TcxGridDBColumn;
    dxComponentPrinter1Link1: TdxGridReportLink;
    procedure actCloseExecute(Sender: TObject);
    procedure actEnhmPelSapExecute(Sender: TObject);
    procedure actPreviewExecute(Sender: TObject);
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    FrCompany: Integer;
    EnhmCustBtF: Integer;
    EnhmCustBtT: Integer;
    EnhmCompanyName: AnsiString;
    a, b: AnsiString;
  end;

var
  frmEnhmTransCom: TfrmEnhmTransCom;

implementation

uses FMain, Common, DMain;

{$R *.dfm}

procedure TfrmEnhmTransCom.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmEnhmTransCom.actPreviewExecute(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfrmEnhmTransCom.qryTranCalcFields(DataSet: TDataSet);
begin
  // qryTranFullCardNo.AsString:=ReturnFullIdNo(qryTranAcardAcardCode.AsInteger);
end;

procedure TfrmEnhmTransCom.actEnhmPelSapExecute(Sender: TObject);
var
  frm: TfrmEnhmEmployees;
begin
  frm := TfrmEnhmEmployees.Create(self);
  // frm.ToDate:=ToDate;
  frm.CustomerName   := EnhmCompanyName;
  frm.CustomerCode   := FrCompany;
  frm.qryTran.Active := false;
  frm.qEmployees.SQL.Clear;
  frm.qEmployees.SQL.Add('Select * from Employees Where CustomerId =' + inttostr(FrCompany));
  frm.qEmployees.Active := True;

  frm.qryTran.SQL.Clear;
  frm.qryTran.SQL.Add('SELECT Sum([TRAN].AMOUNT)    As SUMAMOUNT, ');
  frm.qryTran.SQL.Add(' Sum([TRAN].DISAMOUNT) As SUMDISAMOUNT, ');
  frm.qryTran.SQL.Add(' Sum([TRAN].QUANTITY)  As SUMQUANTITY, ');
  frm.qryTran.SQL.Add(' MhtrId                As [EMPLOYEES.MhtrId], ');
  frm.qryTran.SQL.Add(' Customer.CustomerId   As [Customer.CustomerId] ');
  frm.qryTran.SQL.Add('FROM (CUSTOMER INNER JOIN (ACARD INNER JOIN EMPLOYEES ');
  frm.qryTran.SQL.Add('ON ACARD.EMPLOYEESID = EMPLOYEES.Id) ON CUSTOMER.CUSTOMERID = ');
  frm.qryTran.SQL.Add(' ACARD.CUSTOMERID) INNER JOIN [TRAN] ON ACARD.ACARDID = [TRAN].ACARDID ');
  frm.qryTran.SQL.Add('Where ' + b);

  frm.qryTran.SQL.Add(' GROUP BY  MhtrId, Customer.CustomerId ');
  frm.qryTran.SQL.Add(' ORDER BY  MhtrId');
  frm.qryTran.Active := True;

  // frm.qryCheckDisEnhm.SQL.Add(b);
  frm.qryCheckDisEnhm.SQL.Clear;
  frm.qryCheckDisEnhm.SQL.Add('SELECT Count(*) As CountNoDisUpd ');
  frm.qryCheckDisEnhm.SQL.Add('FROM (CUSTOMER INNER JOIN (ACARD INNER ');
  frm.qryCheckDisEnhm.SQL.Add('JOIN EMPLOYEES ON ACARD.EMPLOYEESID = ');
  frm.qryCheckDisEnhm.SQL.Add('EMPLOYEES.Id) ON CUSTOMER.CUSTOMERID = ');
  frm.qryCheckDisEnhm.SQL.Add('ACARD.CUSTOMERID) INNER JOIN [TRAN] ON ');
  frm.qryCheckDisEnhm.SQL.Add('ACARD.ACARDID = [TRAN].ACARDID');
  frm.qryCheckDisEnhm.SQL.Add('Where ' + b);
  frm.qryCheckDisEnhm.Active := True;

  // frm.qryCheckDisEnhm.SQL.Add(' AND DiscountUPD = False');
  frm.qryCheckDisEnhm.SQL.Add(' AND DiscountUPD = 0');
  frm.qryCheckDisEnhm.Active := True;

  frm.ShowModal;
  frm.Free;
end;

procedure TfrmEnhmTransCom.FormCreate(Sender: TObject);
begin
  inherited;
  Try
    DoCursorPush(crSQLWait);
    qrySItem.Close;
    qrySItem.Open;
    qryTran.Close;
    qryTran.SQL.Clear;
    // qryTran.SQL.Add('SELECT CUSTOMER.*, STATION.*, ACARD.ACARDCODE, TRAN.*');
    // qryTran.SQL.Add(' FROM STATION INNER JOIN ((CUSTOMER INNER JOIN ACARD ON CUSTOMER.CUSTOMERID = ACARD.CUSTOMERID)');
    // qryTran.SQL.Add(' INNER JOIN TRAN ON ACARD.ACARDID = TRAN.ACARDID) ON STATION.STATIONID = TRAN.STATIONID');

    qryTran.SQL.Add('SELECT * From V_STATION_CUSTOMER_ACARD_TRAN_EMPLOYEES');

    a := WhereApoNumber(inttostr(FrCompany), '[Customer.CustomerId]', True);
    a := a + WhereEosNumber(inttostr(FrCompany), '[Customer.CustomerId]', Not(length(Trim(a)) > 1));

    b := WhereApoNumber(inttostr(FrCompany), 'Customer.CustomerId', True);
    b := b + WhereEosNumber(inttostr(FrCompany), 'Customer.CustomerId', Not(length(Trim(b)) > 1));


    // case EnhmCust of
    // 0:a := a + WhereEosBoolean(True , 'TRAN.ACardUpd',Not(length(Trim(a))>1));
    // 1:a := a + WhereEosBoolean(False, 'TRAN.ACardUpd',Not(length(Trim(a))>1));
    // end;

    if Not(EnhmCustBtF = 0) then
      a := a + WhereApoNumber(inttostr(EnhmCustBtF), '[TRAN.AcardUPDBT]', Not(length(Trim(a)) > 1));
    if Not(EnhmCustBtT = 0) then
      a := a + WhereEosNumber(inttostr(EnhmCustBtT), '[TRAN.AcardUPDBT]', Not(length(Trim(a)) > 1));

    if Not(EnhmCustBtF = 0) then
      b := b + WhereApoNumber(inttostr(EnhmCustBtF), '[TRAN].AcardUPDBT', Not(length(Trim(b)) > 1));
    if Not(EnhmCustBtT = 0) then
      b := b + WhereEosNumber(inttostr(EnhmCustBtT), '[TRAN].AcardUPDBT', Not(length(Trim(b)) > 1));

    If (length(a) <> 0) Then
      qryTran.SQL.Add(' WHERE ' + a);
    // If (Length(a) <> 0) Then b:='Where ' + a ;
    qryTran.SQL.Add('ORDER BY [TRAN.TRANDATE], [CUSTOMER.NAME], [ACARD.ACARDCODE], [MERCHANT.NAME]');
    qryTran.Open;
  Finally
    DoCursorPop;
  end;
end;

end.
