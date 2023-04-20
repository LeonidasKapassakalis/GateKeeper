unit PrnTranEmp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, DB,
  ADODB, ActnList, QRExport, QRPDFFilt, RKinhs32, RKinhs32In, ComCtrls,
  ExtCtrls, QRCtrls, Grids,
  DBGrids, OleServer, Outlook2000, StdCtrls, StrUtils, FPrnBase, Menus,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  cxNavigator,
  rKinhsKK3, rKinhs7, rKinhsKK8, rKinhsKK88, rKinhsKK9, rKinhsKK22,
  fKinhsKK88a, RBaseAvinCard, Vcl.ActnMenus,
  uRwMapiSession, uRwMapiInterfaces, uRwSysUtils, uRwEasyMAPI, Outlook2010;

type
  TfrmPrnTranEmp = class(TFrmPrnBase)
    dxBarManager1: TActionManager;
    ActionList1: TActionList;
    actClose: TAction;
    actPreview: TAction;
    qryTran: TADOQuery;
    qrySItem: TADOQuery;
    dtsTran: TDataSource;
    dxComponentPrinter1: TdxComponentPrinter;
    actPrint32: TAction;
    actMailCreate: TAction;
    qryEmployees: TADOQuery;
    qryEmployeesId: TAutoIncField;
    qryEmployeesCustomerId: TIntegerField;
    qryEmployeesMhtrId: TIntegerField;
    qryEmployeesName: TWideStringField;
    qryEmployeesSurName: TWideStringField;
    qryEmployeesAddress: TWideStringField;
    qryEmployeesTK: TWideStringField;
    qryEmployeesTown: TWideStringField;
    qryEmployeesAFM: TWideStringField;
    qryEmployeesDOY: TWideStringField;
    qryEmployeesYpokId: TIntegerField;
    qryEmployeesSendPrint: TBooleanField;
    qryEmployeesSendMail: TBooleanField;
    qryEmployeesMailAddr: TWideStringField;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dsEmployees: TDataSource;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    actMailSend: TAction;
    actPrintOnlyPrint: TAction;
    Panel2: TPanel;
    Memo1: TMemo;
    Excel1: TMenuItem;
    qryAcard: TADOQuery;
    qryAcardACARDID: TAutoIncField;
    qryAcardACARDCODE: TWideStringField;
    qryAcardCUSTOMERID: TIntegerField;
    qryAcardISSUEDATE: TDateTimeField;
    qryAcardEXPIREDATE: TDateTimeField;
    qryAcardMETERBOOLEAN: TBooleanField;
    qryAcardPINBOOLEAN: TBooleanField;
    qryAcardINSDT: TDateTimeField;
    qryAcardUPDDT: TDateTimeField;
    qryAcardINSUSR: TIntegerField;
    qryAcardUPDUSR: TIntegerField;
    qryAcardSTARTDATE: TDateTimeField;
    qryAcardVTYPEID: TIntegerField;
    qryAcardCREATEBOOLEAN: TBooleanField;
    qryAcardBLACKLISTBOOLEAN: TBooleanField;
    qryAcardBLACKLISTDATE: TDateTimeField;
    qryAcardBLACKLISTUSR: TIntegerField;
    qryAcardBLACKLISTNOTES: TWideStringField;
    qryAcardIGROUPID1: TIntegerField;
    qryAcardIGROUPID2: TIntegerField;
    qryAcardIGROUPID3: TIntegerField;
    qryAcardIGROUPID4: TIntegerField;
    qryAcardDAYAMOUNT: TFloatField;
    qryAcardMONTHAMOUNT: TFloatField;
    qryAcardREGNO: TWideStringField;
    qryAcardACARDHOLDER: TWideStringField;
    qryAcardISACTIVE: TBooleanField;
    qryAcardEXPIREPHDATE: TDateTimeField;
    qryAcardEXPIRELODATE: TDateTimeField;
    qryAcardIGROUPID5: TIntegerField;
    qryAcardEMPLOYEESID: TIntegerField;
    qryAcardNEWCARDBOOLEAN: TBooleanField;
    qryAcardNEWCARDID: TIntegerField;
    qryAcardCARDHASEMPNAME: TBooleanField;
    qryAcardACARDCODENUM: TIntegerField;
    qryAcardINACTIVEDATE: TDateTimeField;
    qryAcardINACTIVEUSR: TIntegerField;
    qryAcardINACTIVENOTES: TWideStringField;
    dsAcard: TDataSource;
    qryTranTRANDATE: TDateTimeField;
    qryTranTRANTIME: TDateTimeField;
    qryTranCustomerName: TWideStringField;
    qryTranFullCardNo: TStringField;
    qryTranRegNo: TWideStringField;
    qryTranStationName: TWideStringField;
    qryTranAreaDescr: TWideStringField;
    qryTranLocationDescr: TWideStringField;
    qryTranTERMINALCODE: TWideStringField;
    qryTranREFSTR: TWideStringField;
    qryTranSitemDesc: TStringField;
    qryTranAMOUNT: TFloatField;
    qryTranQUANTITY: TFloatField;
    qryTranKMBEFORE: TIntegerField;
    qryTranKMAFTER: TIntegerField;
    qryTranACARDCODE: TWideStringField;
    qryTranSITEMID: TIntegerField;
    qryTranTRANID: TAutoIncField;
    qryTranEMPNAME: TWideStringField;
    qryTranEMPSURNAME: TWideStringField;
    qryTranEMPMHTRID: TIntegerField;
    qryTranTranDisQuantity: TFloatField;
    qryTranTranDisAmount: TFloatField;
    qryTranTranDisUPD: TBooleanField;
    qryTranQTOWNDESCR: TWideStringField;
    qryTranACARDID: TIntegerField;
    qryTranACARDACARDHOLDER: TWideStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1TRANDATE: TcxGridDBColumn;
    cxGrid1DBTableView1TRANTIME: TcxGridDBColumn;
    cxGrid1DBTableView1CustomerName: TcxGridDBColumn;
    cxGrid1DBTableView1EMPNAME: TcxGridDBColumn;
    cxGrid1DBTableView1EMPSURNAME: TcxGridDBColumn;
    cxGrid1DBTableView1EMPMHTRID: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDACARDHOLDER: TcxGridDBColumn;
    cxGrid1DBTableView1FullCardNo: TcxGridDBColumn;
    cxGrid1DBTableView1RegNo: TcxGridDBColumn;
    cxGrid1DBTableView1StationName: TcxGridDBColumn;
    cxGrid1DBTableView1AreaDescr: TcxGridDBColumn;
    cxGrid1DBTableView1LocationDescr: TcxGridDBColumn;
    cxGrid1DBTableView1QTOWNDESCR: TcxGridDBColumn;
    cxGrid1DBTableView1TERMINALCODE: TcxGridDBColumn;
    cxGrid1DBTableView1REFSTR: TcxGridDBColumn;
    cxGrid1DBTableView1SitemDesc: TcxGridDBColumn;
    cxGrid1DBTableView1AMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1QUANTITY: TcxGridDBColumn;
    cxGrid1DBTableView1KMBEFORE: TcxGridDBColumn;
    cxGrid1DBTableView1KMAFTER: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDCODE: TcxGridDBColumn;
    cxGrid1DBTableView1SITEMID: TcxGridDBColumn;
    cxGrid1DBTableView1TRANID: TcxGridDBColumn;
    cxGrid1DBTableView1TranDisQuantity: TcxGridDBColumn;
    cxGrid1DBTableView1TranDisAmount: TcxGridDBColumn;
    cxGrid1DBTableView1TranDisUPD: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDID: TcxGridDBColumn;
    qryTranACARDVTYPEID: TIntegerField;
    qryTranLVType: TStringField;
    cxGrid1DBTableView1ACARDVTYPEID: TcxGridDBColumn;
    cxGrid1DBTableView1LVType: TcxGridDBColumn;
    OutlookApplication1: TOutlookApplication;
    SaveDialog1: TSaveDialog;
    ActionMainMenuBar1: TActionMainMenuBar;
    MapiSession: TRwMapiSession;
    procedure FormShow(Sender: TObject);
    procedure actPrint32Execute(Sender: TObject);
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure actCloseExecute(Sender: TObject);
    procedure actPreviewExecute(Sender: TObject);
    procedure actMailCreateExecute(Sender: TObject);
    procedure SetStatusText(Text:String;Index:Integer);
    procedure SendEmail(EmailAd, PelaName, SubjectStr, AttachmentFile: String);
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
  private
    procedure OldSendEmail(EmailAd, PelaName, SubjectStr,
      AttachmentFile: String);
    { Private declarations }
  public
    FrDate: TDateTime;
    ToDate: TDateTime;
    FrDateIns: TDateTime;
    ToDateIns: TDateTime;
    FrDateSt: TDateTime;
    ToDateSt: TDateTime;
    FrACardCode: AnsiString;
    ToACardCode: AnsiString;
    FrStation: AnsiString;
    ToStation: AnsiString;
    FrCustomer: AnsiString;
    ToCustomer: AnsiString;
    FrCustomerCode: Integer;
    ToCustomerCode: Integer;
    FrEmplCode: AnsiString;
    ToEmplCode: AnsiString;
    FrEmplName: AnsiString;
    ToEmplName: AnsiString;
    FrMerchandId: AnsiString;
    ToMerchandId: AnsiString;
    FrTerminalId: AnsiString;
    ToTerminalId: AnsiString;
    FrYpokCode : AnsiString;
    ToYpokCode : AnsiString;
    VoidMode   : Integer;
    EnhmSt     : Integer;
    EnhmCust   : Integer;
    EnhmParak  : Integer;
    EnhmDis    : Integer;
    Typed      : Integer;
    CustTest   : Integer;
    StatTest   : Integer;
    CustActive : Integer;
    CardActive : Integer;
    EnhmCustBtF: Integer;
    EnhmCustBtT: Integer;
    EnhmStBtF  : Integer;
    EnhmStBtT  : Integer;
    EnhmDisBtF : Integer;
    EnhmDisBtT : Integer;
    EnhmCoBtF  : Integer;
    EnhmCoBtT  : Integer;
    InportBtF  : Integer;
    InportBtT  : Integer;
    EnhmDeF    : Integer;
    EnhmDeT    : Integer;
    EnhmDaily  : Integer;
    ExecQuery  : Integer;
    a,aa,b,bCor,aaCor: AnsiString;
    CustStr,TranStr,TranStrPlusCust,LocalPath:AnsiString;
  end;

implementation

uses GenDataModule, Main, Common;

{$R *.dfm}

procedure TfrmPrnTranEmp.FormShow(Sender: TObject);
Begin
  Try
    LocalPath := ExtractFilePath(Application.ExeName) + 'Temp\';

    if ExecQuery = 0 then
      begin
       PageControl1.Visible  := True;
       Panel2.Visible        := False;
      end
    else
      begin
       PageControl1.Visible  := False;
       Panel2.Visible        := True;
      end;

    frmMain.DoCursorPush(crSQLWait);
    qrySItem.Close;
    qrySItem.Open;
    qryTran.Close;
    qryTran.SQL.Clear;

//  qryTran.SQL.Add('SELECT CUSTOMER.*, STATION.*, ACARD.ACARDCODE, TRAN.*, EMPLOYEES.*');
//  qryTran.SQL.Add('FROM (STATION INNER JOIN ((CUSTOMER INNER JOIN ACARD ON CUSTOMER.CUSTOMERID = ACARD.CUSTOMERID) INNER JOIN TRAN ON ACARD.ACARDID = TRAN.ACARDID) ON STATION.STATIONID = TRAN.STATIONID) INNER JOIN EMPLOYEES ON ACARD.EMPLOYEESID = EMPLOYEES.Id');

    qryTran.SQL.Add('SELECT *');
    qryTran.SQL.Add('FROM V_TRA_STA_ACA_CUS_EMP');

    a := 'HasDetailEmp = 1';

    a :=     WhereApoDateOnly(FrDate,     'TRANDATE', true);
    a := a + WhereEosDateOnly(ToDate,     'TRANDATE',Not(length(Trim(a))>1));
    a := a + WhereApoDateOnly(FrDateIns,  '[TRAN.INSDT]',Not(length(Trim(a))>1));
    a := a + WhereEosDateOnly(ToDateIns,  '[TRAN.INSDT]',Not(length(Trim(a))>1));
    a := a + WhereApoNumber(FrACardCode,  'ACARDCODENUM',Not(length(Trim(a))>1));
    a := a + WhereEosNumber(ToACardCode,  'ACARDCODENUM',Not(length(Trim(a))>1));
    a := a + WhereApoString(FrStation,    '[STATION.NAME]',Not(length(Trim(a))>1));
    a := a + WhereEosString(ToStation,    '[STATION.NAME]',Not(length(Trim(a))>1));
    a := a + WhereApoString(FrMerchandId, 'MerchantCode',Not(length(Trim(a))>1));
    a := a + WhereEosString(ToMerchandId, 'MerchantCode',Not(length(Trim(a))>1));
    a := a + WhereApoString(FrTerminalId, 'TerminalCode',Not(length(Trim(a))>1));
    a := a + WhereEosString(ToTerminalId, 'TerminalCode',Not(length(Trim(a))>1));

    case VoidMode of
    0:a := a + WhereEosBoolean(True , 'ISAUTO',Not(length(Trim(a))>1));
    1:a := a + WhereEosBoolean(False, 'ISAUTO',Not(length(Trim(a))>1));
    end;
    case EnhmSt of
    0:a := a + WhereEosBoolean(True , 'StationUpd',Not(length(Trim(a))>1));
    1:a := a + WhereEosBoolean(False, 'StationUpd',Not(length(Trim(a))>1));
    end;
    case EnhmCust of
    0:a := a + WhereEosBoolean(True , 'ACardUpd',Not(length(Trim(a))>1));
    1:a := a + WhereEosBoolean(False, 'ACardUpd',Not(length(Trim(a))>1));
    end;
    case EnhmDis of
    0:a := a + WhereEosBoolean(True , 'DISCOUNTUPD',Not(length(Trim(a))>1));
    1:a := a + WhereEosBoolean(False, 'DISCOUNTUPD',Not(length(Trim(a))>1));
    end;

    case EnhmDaily of
    0:a := a + WhereEosBoolean(True , 'PELADAILYUPD',Not(length(Trim(a))>1));
    1:a := a + WhereEosBoolean(False, 'PELADAILYUPD',Not(length(Trim(a))>1));
    end;

    case Typed of
    0:a := a + WhereEosBoolean(True , 'IsTyped',Not(length(Trim(a))>1));
    1:a := a + WhereEosBoolean(False, 'IsTyped',Not(length(Trim(a))>1));
    end;
    case StatTest of
    0:a := a + WhereEosBoolean(True , '[Station.IsTest]',Not(length(Trim(a))>1));
    1:a := a + WhereEosBoolean(False, '[Station.IsTest]',Not(length(Trim(a))>1));
    end;
    case EnhmParak of
    0:a := a + WhereEosBoolean(True , 'CommissionUpd',Not(length(Trim(a))>1));
    1:a := a + WhereEosBoolean(False, 'CommissionUpd',Not(length(Trim(a))>1));
    end;
    case CardActive of
    0:a := a + WhereEosBoolean(True , '[ACard.ISActive]',Not(length(Trim(a))>1));
    1:a := a + WhereEosBoolean(False, '[ACard.ISActive]',Not(length(Trim(a))>1));
    end;

    if Not (EnhmStBTF = 0) then
       a := a + WhereApoNumber(inttostr(EnhmStBtF), 'StationUPDBT',Not(length(Trim(a))>1));
    if Not (EnhmStBTT = 0) then
       a := a + WhereEosNumber(inttostr(EnhmStBtT), 'StationUPDBT',Not(length(Trim(a))>1));
    if Not (EnhmCustBTF = 0) then
       a := a + WhereApoNumber(inttostr(EnhmCustBtF), 'AcardUPDBT',Not(length(Trim(a))>1));
    if Not (EnhmCustBTT = 0) then
       a := a + WhereEosNumber(inttostr(EnhmCustBtT), 'AcardUPDBT',Not(length(Trim(a))>1));
    if Not (EnhmDisBTF = 0) then
       a := a + WhereApoNumber(inttostr(EnhmDisBtF), 'DISCOUNTUPDBT',Not(length(Trim(a))>1));
    if Not (EnhmDisBTT = 0) then
       a := a + WhereEosNumber(inttostr(EnhmDisBtT), 'DISCOUNTUPDBT',Not(length(Trim(a))>1));
    if Not (InportBTF = 0) then
       a := a + WhereApoNumber(inttostr(InportBTF), 'BatchNO',Not(length(Trim(a))>1));
    if Not (InportBTT = 0) then
       a := a + WhereEosNumber(inttostr(InportBTT), 'BatchNO',Not(length(Trim(a))>1));
    if Not (EnhmCoBTF = 0) then
       a := a + WhereApoNumber(inttostr(EnhmCoBtF), 'CommissionUPDBT',Not(length(Trim(a))>1));
    if Not (EnhmCoBTT = 0) then
       a := a + WhereEosNumber(inttostr(EnhmCoBtT), 'CommissionUPDBT',Not(length(Trim(a))>1));
    if Not (EnhmDEF = 0) then
       a := a + WhereApoNumber(inttostr(EnhmDEF), 'PELADAILYUPDBT',Not(length(Trim(a))>1));
    if Not (EnhmDET = 0) then
       a := a + WhereEosNumber(inttostr(EnhmDET), 'PELADAILYUPDBT',Not(length(Trim(a))>1));

    TranStr:=a;

//28072005
    a := a + WhereApoString(FrEmplCode , 'EMPLOYEESID',Not(length(Trim(a))>1));
    a := a + WhereEosString(ToEmplCode , 'EMPLOYEESID',Not(length(Trim(a))>1));
//28072005

//28072005
    a := a + WhereApoString(FrEmplName , '[EMP.SURNAME]',Not(length(Trim(a))>1));
    a := a + WhereEosString(ToEmplName , '[EMP.SURNAME]',Not(length(Trim(a))>1));
//28072005

    TranStrPlusCust:=a;

///Split the Where Clause in two Statements///

    a := a + WhereApoString(FrCustomer, '[CUSTOMER.NAME]',Not(length(Trim(a))>1));
    a := a + WhereEosString(ToCustomer, '[CUSTOMER.NAME]',Not(length(Trim(a))>1));

    CustStr := CustStr + WhereApoString(FrCustomer, 'NAME',Not(length(Trim(CustStr))>1));
    CustStr := CustStr + WhereEosString(ToCustomer, 'NAME',Not(length(Trim(CustStr))>1));

    if FrCustomerCode > 0 then
      begin
        a := a + WhereApoNumber(inttostr(FrCustomerCode), '[CUSTOMER.CUSTOMERID]',Not(length(Trim(a))>1));
        CustStr := CustStr + WhereApoNumber(inttostr(FrCustomerCode), '[CUSTOMER.CUSTOMERID]',Not(length(Trim(CustStr))>1));
      end;

    if ToCustomerCode > 0 then
      begin
        a := a + WhereEosNumber(inttostr(ToCustomerCode), '[CUSTOMER.CUSTOMERID]',Not(length(Trim(a))>1));
        CustStr := CustStr + WhereEosNumber(inttostr(ToCustomerCode), '[CUSTOMER.CUSTOMERID]',Not(length(Trim(CustStr))>1));
      end;
//
    if FrYpokCode > '' then
      begin
        a := a + WhereApoNumber(FrYpokCode, '[Employees.YpokId]',Not(length(Trim(a))>1));
        CustStr := CustStr + WhereApoNumber(FrYpokCode, 'YpokId',Not(length(Trim(CustStr))>1));
      end;

    if ToYpokCode > '' then
      begin
        a := a + WhereEosNumber(ToYpokCode, '[Employees.YpokId]',Not(length(Trim(a))>1));
        CustStr := CustStr + WhereEosNumber(ToYpokCode, 'YpokId',Not(length(Trim(CustStr))>1));
      end;
//
    case CustActive of
    0:a := a + WhereEosBoolean(True , '[Customer.ISActive]',Not(length(Trim(a))>1));
    1:a := a + WhereEosBoolean(False, '[Customer.ISActive]',Not(length(Trim(a))>1));
    end;
    case CustActive of
    0:CustStr := CustStr + WhereEosBoolean(True , 'ISActive',Not(length(Trim(CustStr))>1));
    1:CustStr := CustStr + WhereEosBoolean(False, 'ISActive',Not(length(Trim(CustStr))>1));
    end;

    case CustTest of
    0:a := a + WhereEosBoolean(True , '[Customer.ISTEST]',Not(length(Trim(a))>1));
    1:a := a + WhereEosBoolean(False, '[Customer.ISTEST]',Not(length(Trim(a))>1));
    end;
    case CustTest of
    0:CustStr := CustStr + WhereEosBoolean(True , 'ISTEST',Not(length(Trim(CustStr))>1));
    1:CustStr := CustStr + WhereEosBoolean(False, 'ISTEST',Not(length(Trim(CustStr))>1));
    end;

    If (Length(CustStr) <> 0) Then CustStr:='Where ' + CustStr ;

///Split the Where Clause in two Statements///

    If (Length(a) <> 0) Then qryTran.SQL.Add(' WHERE ' + a);
    If (Length(a) <> 0) Then b:='Where ' + a ;
      qryTran.SQL.Add('ORDER BY TRANDATE, [CUSTOMER.NAME], ACARDCODE, [STATION.NAME]');

    if ExecQuery = 0 then
       qryTran.Open
    else
       Memo1.Lines.Add(qryTran.SQL.Text);

    qryEmployees.Active := False;

// Check If Logic.

    if ((FrEmplCode > '') And (ToEmplCode > '')) then
      begin
        qryEmployees.SQL.Clear;
        qryEmployees.SQL.Add('Select * From Employees ');
        qryEmployees.SQL.Add('Where Id >= '+ FrEmplCode);
        qryEmployees.SQL.Add('And   Id <= '+ ToEmplCode);
      end;

    if ((FrYpokCode > '') And (ToYpokCode > '')) then
      begin
        qryEmployees.SQL.Clear;
        qryEmployees.SQL.Add('Select * From Employees ');
        qryEmployees.SQL.Add('Where YpokId >= '+ FrYpokCode);
        qryEmployees.SQL.Add('And   YpokId <= '+ ToYpokCode);
      end;

    if ((FrCustomerCode > 0) And (ToCustomerCode > 0)) then
      begin
        qryEmployees.SQL.Clear;
        qryEmployees.SQL.Add('Select * From Employees ');
        qryEmployees.SQL.Add('Where CustomerId >= '+ inttostr(FrCustomerCode));
        qryEmployees.SQL.Add('And   CustomerId <= '+ inttostr(ToCustomerCode));
      end;

    qryEmployees.Active := True;

   bCor:=AnsiReplaceStr(a,'[','');
   bCor:=AnsiReplaceStr(bCor,']','');
   bCor:=AnsiReplaceText(bCor,'TRAN.INSDT','[TRAN].INSDT');
   bCor:='Where '+ bCor;

  Finally
    frmMain.DoCursorPop;
  End;
end;

procedure TfrmPrnTranEmp.actPrint32Execute(Sender: TObject);
var frm : TrptKinhs32;
begin
  frm:= TrptKinhs32.Create(self);
  LoadImage(frm);
  frm.qryTran.Active:=false;
  frm.qryTran.SQL.Add(bCor);
  frm.qryTran.SQL.Add('Order BY Acard.CustomerId, ACardCode, TranDate, TranTime, RefStr, SitemId ');
  frm.qryTran.Active:=True;
  frm.PreviewModal;
  frm.Free;
end;

procedure TfrmPrnTranEmp.qryTranCalcFields(DataSet: TDataSet);
begin
  qryTranFullCardNo.AsString:=GeneralDM.ReturnFullIdNo(qryTranAcardCode.AsInteger);
end;

procedure TfrmPrnTranEmp.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrnTranEmp.actPreviewExecute(Sender: TObject);
begin
{ TODO -cCritical : Critical }
//  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfrmPrnTranEmp.actMailCreateExecute(Sender: TObject);
var rpt:TrptKinhs32In;
    StSql:String;
    aPDFFilt : TQRPDFDocumentFilter;
    Ts,Te:TDateTime;
begin
  inherited;
    PageControl1.ActivePage := TabSheet2;

    ts:=now();
    rpt:=TrptKinhs32In.Create(self);

    LoadImage(rpt);

    StSql:=rpt.qryTran.SQL.Text;          //Save SQL in initial State

    qryEmployees.First;

    ProgressBar1.Visible:=True;
    ProgressBar1.Max:=qryEmployees.RecordCount;
    ProgressBar1.Position:=0;

    SetStatusText('Δημιουργεία PDF',1);
      repeat
        SetStatusText('Πελάτης ' + qryEmployeesid.AsString,2);

        ProgressBar1.Position:=qryEmployees.RecNo;

        rpt.qryTran.Active:=False;

        if TranStr > '' then
          begin
            rpt.qryTran.SQL.Clear;
            rpt.qryTran.SQL.Add(StSql);
            aaCor:=AnsiReplaceText(TranStr,'[Station.IsTest]','Station.IsTest');
//            rpt.qryTran.SQL.Add('Where '+ TranStr);
            rpt.qryTran.SQL.Add('Where '+ aaCor);
            rpt.qryTran.SQL.Add(' And Acard.EmployeesId = '+ inttostr(qryEmployeesId.AsInteger));
            rpt.qryTran.SQL.Add('Order BY ACard.CustomerId, ACardCode, TranDate, TranTime, RefStr, SitemId ');
          end
        else
          begin
            rpt.qryTran.SQL.Clear;
            rpt.qryTran.SQL.Add(StSql);
            rpt.qryTran.SQL.Add('Where Acard.EmployeesId = '+ inttostr(qryEmployeesId.AsInteger));
            rpt.qryTran.SQL.Add('Order BY ACard.CustomerId, ACardCode, TranDate, TranTime, RefStr, SitemId ');
          end;
        rpt.qryTran.Active:=True;

        if qryEmployeesSendMail.AsBoolean = True then
        begin
          if Not rpt.qryTran.IsEmpty then
          begin
           try
             try
               aPDFFilt:=TQRPDFDocumentFilter.Create(LocalPath+qryEmployeesId.AsString+'.pdf');
               rpt.ExportToFilter( aPDFFilt );
             except
               MessageDlg('Πρόβλημα στη δημιουργεία PDF', mtError, [mbOK], 0);
             end;
           finally
             aPDFFilt.free;
           end;
          SetStatusText(' ',2);
          end;
        end;
        qryEmployees.Next;
      until qryEmployees.Eof;

      ProgressBar1.Visible:=False;

      rpt.Free;
      te:=now();

      MessageDlg('Χρονος δημιουργείας αρχείου ' + floattostr(te-ts), mtInformation, [mbOK], 0);
end;

procedure TfrmPrnTranEmp.SetStatusText(Text:String;Index:Integer);
begin
StatusBar1.Panels[Index].Text:=Text;
end;

procedure TfrmPrnTranEmp.actMailSendExecute(Sender: TObject);
var FaxAd:String;
    NmSpace:NameSpace;
    MI:MailItem;
    SL:TStringList;
    x:Integer;
begin
  inherited;
{ TODO -cCritical : Critical }
    PageControl1.ActivePage := TabSheet2;

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

    NmSpace:=OutlookApplication1.GetNamespace('MAPI');
    NmSpace.Logon('','',True,False);

    SetStatusText('Αποστολή Fax',1);
      repeat
        SetStatusText('Πελάτης ' + qryEmployeesid.AsString,2);

        ProgressBar1.Position:=qryEmployees.RecNo;

        if qryEmployeesSendMail.AsBoolean = True then
           begin
              SL.Clear;
              FindWords(qryEmployeesMailAddr.AsString,Sl);
              for x:=0 to SL.Count -1 do
                 try
                   SendEmail(SL[x],
                           qryEmployeesName.AsString+qryEmployeesSurName.AsString,
                          'AvinCard',
                           LocalPath+qryEmployeesId.AsString+'.pdf');
                 except
                   MessageDlg('Error Sending Mail/Fax '+qryEmployeesId.AsString, mtError, [mbOK], 0);
                 end;
           end;
        qryEmployees.Next;
      until qryEmployees.Eof;
      SetStatusText(' ',1);
      SetStatusText(' ',2);

//New Mail Library
    MapiSession.Logoff;

    qryEmployees.EnableControls;
    SL.Free;
    ProgressBar1.Visible:=False;
end;

procedure TfrmPrnTranEmp.actPrintOnlyPrintExecute(Sender: TObject);
var frm : TrptKinhs32;
begin
  frm:= TrptKinhs32.Create(self);
  LoadImage(frm);
  frm.qryTran.Active:=false;
  frm.qryTran.SQL.Add(bCor);
  if bCor > '' then
    frm.qryTran.SQL.Add('And Employees.SendPrint = 1')
  else
    frm.qryTran.SQL.Add('Where Employees.SendPrint = 1');

  frm.qryTran.SQL.Add('Order BY ACard.CustomerId, ACardCode, YpokId, TranDate, TranTime, RefStr, SitemId ');
  frm.qryTran.Active:=True;
  frm.PreviewModal;
  frm.Free;
end;

procedure TfrmPrnTranEmp.cxGrid1DBTableView1Customization(Sender: TObject);
begin
  inherited;
MessageDlg('123', mtWarning, [mbOK], 0);
end;

procedure TfrmPrnTranEmp.Excel1Click(Sender: TObject);
begin
  inherited;
    GeneralDM.OutputFileMastView(cxGrid1DBTableView1);
end;

procedure TfrmPrnTranEmp.FormCreate(Sender: TObject);
begin
  inherited;
{ TODO -cCritical : Critical }
//  FMasterViewSet(dxMasterView1Level1);
end;

procedure TfrmPrnTranEmp.actPrint002Execute(Sender: TObject);
var frm : TrptKinhsKK3;
begin
  frm:= TrptKinhsKK3.Create(self);
  LoadImage(frm);
  frm.qryTran.Active:=false;
  frm.qryTran.SQL.Add(b);
  frm.qryTran.SQL.Add('Order BY StationId, TranDate, TranTime, ACardCode, SitemId ');
  frm.qryTran.Active:=True;
  PrintOrPdf(frm);
//frm.PreviewModal;
  frm.Free;
end;

procedure TfrmPrnTranEmp.actPrint007Execute(Sender: TObject);
var frm : TrptKinhsKK8;
    bConv:String;
begin
  try
   frm:= TrptKinhsKK8.Create(self);
   LoadImage(frm);

   bConv:=AnsiReplaceStr(b,'[','');
   bConv:=AnsiReplaceStr(bConv,']','');
   bConv:=AnsiReplaceText(bConv,'TRAN.INSDT','[TRAN].INSDT');

  frm.qryTran.SQL.Add(b);

// Access Code
// frm.qryTran.SQL.Add('GROUP BY [Customer.CustomerId],[Tran.SitemId],[ACard.AcardId],[Acard.ACardCode]');
// frm.qryTran.SQL.Add('ORDER BY  [Customer.CustomerId],[Tran.SitemId],[ACard.AcardId],[Acard.ACardCode]');
// Access Code

// SQL Code
   frm.qryTran.SQL.Add('GROUP BY CustomerId,[Employees.id],SitemId,AcardId,ACardCode');
   frm.qryTran.SQL.Add('ORDER BY CustomerId,[Employees.id],SitemId,AcardId,ACardCode');
// SQL Code

   frm.qryTran.Active:=True;
   PrintOrPdf(frm);
// frm.PreviewModal;
  finally;
   frm.Free;
  end;
end;

procedure TfrmPrnTranEmp.actPrint008Execute(Sender: TObject);
var frm : TrptKinhsKK9;
begin
  try
   frm:= TrptKinhsKK9.Create(self);
   LoadImage(frm);
   frm.qryTran.SQL.Add(b);
// Access Code
// frm.qryTran.SQL.Add('ORDER BY CustomerId,TranDate,TranTime,AcardId,SitemId');
// Access Code

// SQL Code
   frm.qryTran.SQL.Add('ORDER BY CustomerId,[Employees.id],TranDate,TranTime,AcardId,SitemId');
// SQL Code

   frm.qryTran.Active:=True;
   PrintOrPdf(frm);
// frm.PreviewModal;
  finally;
   frm.Free;
  end;
end;

procedure TfrmPrnTranEmp.actPrint022Execute(Sender: TObject);
var frm : TrptKinhsKK22;
begin
  frm:= TrptKinhsKK22.Create(self);
  LoadImage(frm);
  frm.qryTran.Active:=false;
  frm.qryTran.SQL.Add(b);
  frm.qryTran.SQL.Add('Order BY CustomerId, ACardCode, TranDate, TranTime, RefStr, SitemId ');
  frm.qryTran.Active:=True;
  PrintOrPdf(frm);
//frm.PreviewModal;
  frm.Free;
end;

procedure TfrmPrnTranEmp.actPrint088Execute(Sender: TObject);
var frm : TrptKinhsKK88;
    bConv:String;
begin
  try
   frm:= TrptKinhsKK88.Create(self);
   LoadImage(frm);

   bConv:=AnsiReplaceStr(b,'[','');
   bConv:=AnsiReplaceStr(bConv,']','');
   bConv:=AnsiReplaceText(bConv,'TRAN.INSDT','[TRAN].INSDT');

  frm.qryTran.SQL.Add(b);

// Access Code
// frm.qryTran.SQL.Add('GROUP BY [Customer.CustomerId],[Tran.SitemId],[ACard.AcardId],[Acard.ACardCode]');
// frm.qryTran.SQL.Add('ORDER BY  [Customer.CustomerId],[Tran.SitemId],[ACard.AcardId],[Acard.ACardCode]');
// Access Code

// SQL Code
   frm.qryTran.SQL.Add('GROUP BY CustomerId,[Employees.id],[ACARD.VTYPEID],SitemId,AcardId,ACardCode');
   frm.qryTran.SQL.Add('ORDER BY CustomerId,[Employees.id],[ACARD.VTYPEID],SitemId,AcardId,ACardCode');
// SQL Code

   frm.StartSt;
   frm.InitCons;
   frm.InitCons;
   frm.qryTran.Active:=True;
   PrintOrPdf(frm);
// frm.PreviewModal;
  finally;
   frm.Free;
  end;
end;

procedure TfrmPrnTranEmp.actExcell88aExecute(Sender: TObject);
var frm : TfrmKinhsKK88a;
    bConv:String;
begin
  try
   frm:= TfrmKinhsKK88a.Create(self);
   bConv:=AnsiReplaceStr(b,'[','');
   bConv:=AnsiReplaceStr(bConv,']','');
   bConv:=AnsiReplaceText(bConv,'TRAN.INSDT','[TRAN].INSDT');

   frm.qryTran.SQL.Add(b);
   frm.qryTran.SQL.Add('GROUP BY CustomerId,[Employees.id],[ACARD.VTYPEID],SitemId,AcardId,ACardCode');
   frm.qryTran.SQL.Add('ORDER BY CustomerId,[Employees.id],[ACARD.VTYPEID],SitemId,AcardId,ACardCode');

   frm.StartSt;
   frm.InitCons;
   frm.InitCons;
   frm.qryTran.Active:=True;
   frm.PnlTop.Visible := False;
   frm.ShowModal;
  finally;
   frm.Free;
  end;
end;

procedure TfrmPrnTranEmp.PrintOrPdf(Report: TrptBaseAvinCard);
begin
if (MessageDlg('Εκτύπωση (Yes) ή PDF (No);', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
  ToPdf(Report)
else
  Report.PreviewModal;
end;

procedure TfrmPrnTranEmp.ToPdf(Report:TrptBaseAvinCard);
var  aPDFFilt : TQRPDFDocumentFilter;
     x:Integer;
begin
  SaveDialog1.InitialDir := frmMain.GetIniPath('EXPORT_TRAN_MONTH_EMP');
  if SaveDialog1.Execute then
  begin
    aPDFFilt:=TQRPDFDocumentFilter.Create(SaveDialog1.FileName+'.pdf');
    for x:=0 to report.ComponentCount-1 do
    begin
      if report.Components[x] is TQRLabel then
        begin
          TQrLabel(report.Components[x]).Font.Name := 'Courier New';
          TQrLabel(report.Components[x]).Font.Charset := 161;
          if TQrLabel(report.Components[x]).Font.Size = 11 then
             TQrLabel(report.Components[x]).Font.Size := 10;
        end;
      if report.Components[x] is TQRDbText then
        begin
          TQrDBText(report.Components[x]).Font.Name := 'Courier New';
          TQrDBText(report.Components[x]).Font.Charset := 161;
          if TQrDBText(report.Components[x]).Font.Size = 11 then
             TQrDBText(report.Components[x]).Font.Size := 10;
        end;
      if report.Components[x] is TQRSysData then
        begin
          TQRSysData(report.Components[x]).Font.Name := 'Courier New';
          TQRSysData(report.Components[x]).Font.Charset := 161;
          if TQrSysData(report.Components[x]).Font.Size = 11 then
             TQrSysData(report.Components[x]).Font.Size := 10;
        end;
    end;
    report.ExportToFilter( aPDFFilt );
  end;
end;

////New Mail Procedure
///

procedure TfrmPrnTranEmp.OldSendEmail(EmailAd, PelaName, SubjectStr, AttachmentFile: String);
var MI:MailItem;
    FaxAd:String;
begin
{ TODO -cCritical : Critical }
        SetStatusText('Αποστολή Email ',1);
        MI:=OutlookApplication1.CreateItem(olMailItem) as MailItem;
        MI.Recipients.Add(EmailAd);
        MI.Subject := SubjectStr;
        MI.Attachments.Add(AttachmentFile,EmptyParam,EmptyParam,EmptyParam);
        try
          MI.Send;
        except
          MessageDlg('Πρόβλημα στην αποστολή Email σε Πελάτη '+ PelaName, mtError, [mbOK], 0);
        end;
        SetStatusText(' ',1);
end;


procedure TfrmPrnTranEmp.SendEmail(EmailAd, PelaName, SubjectStr, AttachmentFile: String);
var
  Sleo: TStringList;
  x: Integer;
  TempStream: TFileStream;
  NewMessage: IRwMapiMailMessage;
begin

  SetStatusText('Αποστολή Email ', 1);

  try
    NewMessage := MapiSession.CreateMessage(ftDraft) as IRwMapiMailMessage;
    NewMessage.RecipTo := EmailAd;
    NewMessage.Subject := SubjectStr;
    NewMessage.Body    := SubjectStr;
    NewMessage.AddFileAttachment(AttachmentFile);
    NewMessage.SubmitMessage(astMoveToSentItems);
  finally
    // Can make connection active before send
    // MapiSession.Logoff;
  end;
end;


end.
