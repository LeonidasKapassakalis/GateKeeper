Unit FPrnACard;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DB, ADODB, FPrnBase, Menus, Globals,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCore, Common,
  RApostolh, RApostolh00, RApostolhDet, RACardGrComp, RACardGrComp1,
  dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, Grids, DBGrids, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPScxPageControlProducer,
  dxPScxEditorProducers, dxPScxExtEditorProducers, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Vcl.PlatformDefaultStyleActnCtrls, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxCommon, cxNavigator, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  TfrmPrnACard = Class(TFrmPrnBase)
    ActionList1: TActionList;
    actClose: TAction;
    dxBarManager1: TActionManager;
    qryACard: TADOQuery;
    dtsACard: TDataSource;
    qryBlackList: TADOQuery;
    dtsBlackList: TDataSource;
    actPreview: TAction;
    qryBlackListFullCardNo: TStringField;
    qryBlackListBLACKLISTID: TAutoIncField;
    qryBlackListACARDID: TIntegerField;
    qryBlackListFRDATE: TDateTimeField;
    qryBlackListTODATE: TDateTimeField;
    qryBlackListNOTES: TWideStringField;
    qryBlackListINSDT: TDateTimeField;
    qryBlackListUPDDT: TDateTimeField;
    qryBlackListINSUSR: TIntegerField;
    qryBlackListUPDUSR: TIntegerField;
    dxComponentPrinter1: TdxComponentPrinter;
    actPrint: TAction;
    actPrint1: TAction;
    actPrint2: TAction;
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
    qryEmployeesLNameSurname: TStringField;
    actPrint3: TAction;
    qryACardFullCardNo: TStringField;
    qryACardLEmpName: TStringField;
    qryACardLEmpMhtrId: TStringField;
    IGroup: TADOQuery;
    dsIGroup: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Action1: TAction;
    MainMenu1: TMainMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    E1: TMenuItem;
    E2: TMenuItem;
    Action2: TAction;
    IGroupId: TAutoIncField;
    IGroupName: TWideStringField;
    IGroupBITNO: TIntegerField;
    IGroupPOSOSTO: TFloatField;
    IGroupInsUsr: TIntegerField;
    IGroupInsDT: TDateTimeField;
    IGroupUpdUsr: TIntegerField;
    IGroupUpdDT: TDateTimeField;
    IGroupDeleted: TBooleanField;
    IGroupDelUsr: TIntegerField;
    IGroupDelDT: TDateTimeField;
    IGroupInActive: TBooleanField;
    IGroupInActiveUsr: TIntegerField;
    IGroupInActiveDt: TDateTimeField;
    qryACardACARDACARDID: TIntegerField;
    qryACardACARDACARDCODE: TWideStringField;
    qryACardACARDCUSTOMERID0: TIntegerField;
    qryACardACARDISSUEDATE: TDateTimeField;
    qryACardACARDEXPIREDATE: TDateTimeField;
    qryACardACARDMETERBOOLEAN: TBooleanField;
    qryACardACARDPINBOOLEAN: TBooleanField;
    qryACardACARDINSDT: TDateTimeField;
    qryACardACARDUPDDT: TDateTimeField;
    qryACardACARDINSUSR: TIntegerField;
    qryACardACARDUPDUSR: TIntegerField;
    qryACardACARDSTARTDATE: TDateTimeField;
    qryACardACARDVTYPEID: TIntegerField;
    qryACardACARDCREATEBOOLEAN: TBooleanField;
    qryACardACARDBLACKLISTBOOLEAN: TBooleanField;
    qryACardACARDBLACKLISTDATE: TDateTimeField;
    qryACardACARDBLACKLISTUSR: TIntegerField;
    qryACardACARDBLACKLISTNOTES: TWideStringField;
    qryACardACARDIGROUPID1: TIntegerField;
    qryACardACARDIGROUPID2: TIntegerField;
    qryACardACARDIGROUPID3: TIntegerField;
    qryACardACARDIGROUPID4: TIntegerField;
    qryACardDAYAMOUNT: TFloatField;
    qryACardMONTHAMOUNT: TFloatField;
    qryACardREGNO: TWideStringField;
    qryACardACARDHOLDER: TWideStringField;
    qryACardISACTIVE: TBooleanField;
    qryACardEXPIREPHDATE: TDateTimeField;
    qryACardEXPIRELODATE: TDateTimeField;
    qryACardACARDIGROUPID5: TIntegerField;
    qryACardEMPLOYEESID: TIntegerField;
    qryACardNEWCARDBOOLEAN: TBooleanField;
    qryACardNEWCARDID: TIntegerField;
    qryACardCARDHASEMPNAME: TBooleanField;
    qryACardACARDCODENUM: TIntegerField;
    qryACardINACTIVEDATE: TDateTimeField;
    qryACardINACTIVEUSR: TIntegerField;
    qryACardINACTIVENOTES: TWideStringField;
    qryACardACARDIGROUPID6: TIntegerField;
    qryACardACARDIGROUPID7: TIntegerField;
    qryACardACARDIGROUPID8: TIntegerField;
    qryACardACARDIGROUPID9: TIntegerField;
    qryACardACARDIGROUPID10: TIntegerField;
    qryACardCOSTCENTERID: TIntegerField;
    qryACardVTypeDescr: TWideStringField;
    qryACardCClassDescr: TWideStringField;
    qryACardCUSTOMERDescr: TWideStringField;
    qryACardCUSTOMERName: TWideStringField;
    qryACardCGroupDescr: TWideStringField;
    qryACardAcardCUSTOMERId: TIntegerField;
    qryACardCUSTOMERStreet: TWideStringField;
    qryACardCUSTOMERZip: TWideStringField;
    qryACardCUSTOMERCity: TWideStringField;
    qryACardCUSTOMERSAPCODE: TWideStringField;
    qryACardCUSTOMERHASDETAILEMP: TBooleanField;
    qryACardCUSTOMERCUSTOMERID: TIntegerField;
    qryACardCUSTOMERISTEST: TBooleanField;
    qryACardCostCenterCCName: TWideStringField;
    cxGrid1DBTableView1FullCardNo: TcxGridDBColumn;
    cxGrid1DBTableView1LEmpName: TcxGridDBColumn;
    cxGrid1DBTableView1LEmpMhtrId: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDACARDID: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDACARDCODE: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDCUSTOMERID0: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDISSUEDATE: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDEXPIREDATE: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDMETERBOOLEAN: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDPINBOOLEAN: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDINSDT: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDUPDDT: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDINSUSR: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDUPDUSR: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDSTARTDATE: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDVTYPEID: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDCREATEBOOLEAN: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDBLACKLISTBOOLEAN: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDBLACKLISTDATE: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDBLACKLISTUSR: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDBLACKLISTNOTES: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID1: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID2: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID3: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID4: TcxGridDBColumn;
    cxGrid1DBTableView1DAYAMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1MONTHAMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1REGNO: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDHOLDER: TcxGridDBColumn;
    cxGrid1DBTableView1ISACTIVE: TcxGridDBColumn;
    cxGrid1DBTableView1EXPIREPHDATE: TcxGridDBColumn;
    cxGrid1DBTableView1EXPIRELODATE: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID5: TcxGridDBColumn;
    cxGrid1DBTableView1EMPLOYEESID: TcxGridDBColumn;
    cxGrid1DBTableView1NEWCARDBOOLEAN: TcxGridDBColumn;
    cxGrid1DBTableView1NEWCARDID: TcxGridDBColumn;
    cxGrid1DBTableView1CARDHASEMPNAME: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDCODENUM: TcxGridDBColumn;
    cxGrid1DBTableView1INACTIVEDATE: TcxGridDBColumn;
    cxGrid1DBTableView1INACTIVEUSR: TcxGridDBColumn;
    cxGrid1DBTableView1INACTIVENOTES: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID6: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID7: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID8: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID9: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID10: TcxGridDBColumn;
    cxGrid1DBTableView1COSTCENTERID: TcxGridDBColumn;
    cxGrid1DBTableView1VTypeDescr: TcxGridDBColumn;
    cxGrid1DBTableView1CClassDescr: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERDescr: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERName: TcxGridDBColumn;
    cxGrid1DBTableView1CGroupDescr: TcxGridDBColumn;
    cxGrid1DBTableView1AcardCUSTOMERId: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERStreet: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERZip: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERCity: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERSAPCODE: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERHASDETAILEMP: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERCUSTOMERID: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERISTEST: TcxGridDBColumn;
    cxGrid1DBTableView1CostCenterCCName: TcxGridDBColumn;
    actSendMellon: TAction;
    qryACardACARDPENDING: TBooleanField;
    ADOQuery1: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    IntegerField2: TIntegerField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    DateTimeField5: TDateTimeField;
    IntegerField5: TIntegerField;
    BooleanField3: TBooleanField;
    BooleanField4: TBooleanField;
    DateTimeField6: TDateTimeField;
    IntegerField6: TIntegerField;
    WideStringField2: TWideStringField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    BooleanField5: TBooleanField;
    DateTimeField7: TDateTimeField;
    DateTimeField8: TDateTimeField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    BooleanField6: TBooleanField;
    IntegerField13: TIntegerField;
    BooleanField7: TBooleanField;
    IntegerField14: TIntegerField;
    DateTimeField9: TDateTimeField;
    IntegerField15: TIntegerField;
    WideStringField5: TWideStringField;
    IntegerField16: TIntegerField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    IntegerField21: TIntegerField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    IntegerField22: TIntegerField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    BooleanField8: TBooleanField;
    IntegerField23: TIntegerField;
    BooleanField9: TBooleanField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    WideStringField19: TWideStringField;
    WideStringField20: TWideStringField;
    WideStringField21: TWideStringField;
    IntegerField24: TIntegerField;
    BooleanField10: TBooleanField;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxGrid1DBTableView1ACARDPENDING: TcxGridDBColumn;
    qryUPDPending: TADOQuery;
    actEnhmPending: TAction;
    Pending1: TMenuItem;
    Procedure actCloseExecute(Sender: TObject);
    Procedure FormShow(Sender: TObject);
    procedure actPreviewExecute(Sender: TObject);
    procedure qryACardCalcFields(DataSet: TDataSet);
    procedure actPrintExecute(Sender: TObject);
    procedure actPrint1Execute(Sender: TObject);
    procedure actPrint2Execute(Sender: TObject);
    procedure qryEmployeesCalcFields(DataSet: TDataSet);
    procedure actPrint3Execute(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actEnhmPendingExecute(Sender: TObject);
  Private
    { Private declarations }
  Public
    SqlStr: string;

{$REGION 'Old Detail Fields'}
    FrName: AnsiString;
    ToName: AnsiString;
    FrCustomerCode: Integer;
    ToCustomerCode: Integer;
    // 13122013 ForVer
    FrEmpNo: Integer;
    ToEmpNo: Integer;
    FrVType: Integer;
    ToVType: Integer;
    // 13122013 ForVer
    FrACardCode: AnsiString;
    ToACardCode: AnsiString;
    FrIssueDate: TDateTime;
    ToIssueDate: TDateTime;
    FrExpireDate: TDateTime;
    ToExpireDate: TDateTime;
    FrExpireLoDate: TDateTime;
    ToExpireLoDate: TDateTime;
    FrExpirePhDate: TDateTime;
    ToExpirePhDate: TDateTime;
    FrStartDate: TDateTime;
    ToStartDate: TDateTime;
    IncHistory: Boolean;
    StatusMode: Integer;
    StatusModeBl: Integer;
    CustTest: Integer;
    CreateMode: Integer;
    NewCard: Integer;
    BStr: AnsiString;

{$ENDREGION} End;

Implementation

Uses DMain, RBaseAvinCard, FMain;

{$R *.dfm}

procedure TfrmPrnACard.FormCreate(Sender: TObject);
begin
  inherited;
  DXMasterView := cxGrid1DBTableView1;
end;

Procedure TfrmPrnACard.FormShow(Sender: TObject);
Var
  a: AnsiString;
  B: Boolean;
Begin
{$REGION 'Old Detail Fielda'}
  // Try
  // DoCursorPush(crSQLWait);
  // qryACard.Close;
  // qryACard.SQL.Clear;
  // qryACard.SQL.Add('SELECT * FROM V_ACARD_ETC');
  //
  // a :=     WhereApoString(FrName,           '[CUSTOMER.NAME]',    true);
  // a := a + WhereEosString(ToName,           '[CUSTOMER.NAME]',    Not(length(Trim(a))>1));
  // a := a + WhereApoNumber(FrACardCode,      'AcardCodeNum',  Not(length(Trim(a))>1));
  // a := a + WhereEosNumber(ToACArdCode,      'ACardCodeNum',  Not(length(Trim(a))>1));
  //
  /// /13122013 ForVer
  // if FrEmpNo > 0 then
  // a := a + WhereApoNumber(inttostr(FrEmpNo),'EMPLOYEESID',  Not(length(Trim(a))>1));
  // if ToEmpNo > 0 then
  // a := a + WhereEosNumber(inttostr(ToEmpNo),'EMPLOYEESID',  Not(length(Trim(a))>1));
  //
  // if FrVType > 0 then
  // a := a + WhereApoNumber(inttostr(FrVType),'VTypeId',  Not(length(Trim(a))>1));
  // if ToVType > 0 then
  // a := a + WhereEosNumber(inttostr(ToVType),'VTypeId',  Not(length(Trim(a))>1));
  /// /13122013 ForVer
  //
  //
  // a := a + WhereApoDateOnly(FrIssueDate,    'ISSUEDATE',  Not(length(Trim(a))>1));
  // a := a + WhereEosDateOnly(ToIssueDate,    'ISSUEDATE',  Not(length(Trim(a))>1));
  // a := a + WhereApoDateOnly(FrExpireDate,   'EXPIREDATE', Not(length(Trim(a))>1));
  // a := a + WhereEosDateOnly(ToExpireDate,   'EXPIREDATE', Not(length(Trim(a))>1));
  // a := a + WhereApoDateOnly(FrExpireLoDate, 'EXPIREDATE', Not(length(Trim(a))>1));
  // a := a + WhereEosDateOnly(ToExpireLoDate, 'EXPIREDATE', Not(length(Trim(a))>1));
  /// /13/09/2007
  /// /  a := a + WhereApoDateOnly(FrExpireLoDate, 'EXPIRELODATE', Not(length(Trim(a))>1));
  /// /  a := a + WhereEosDateOnly(ToExpireLoDate, 'EXPIRELODATE', Not(length(Trim(a))>1));
  // a := a + WhereApoDateOnly(FrExpirePhDate, 'EXPIREPHDATE', Not(length(Trim(a))>1));
  // a := a + WhereEosDateOnly(ToExpirePhDate, 'EXPIREPHDATE', Not(length(Trim(a))>1));
  // a := a + WhereApoDateOnly(FrStartDate,    'STARTDATE',  Not(length(Trim(a))>1));
  // a := a + WhereEosDateOnly(ToStartDate,    'STARTDATE',  Not(length(Trim(a))>1));
  //
  // if FrCustomerCode > 0 then
  // a := a + WhereApoNumber(inttostr(FrCustomerCode), '[CUSTOMER.CustomerId]',Not(length(Trim(a))>1));
  //
  // if ToCustomerCode > 0 then
  // a := a + WhereEosNumber(inttostr(ToCustomerCode), '[CUSTOMER.CustomerId]',Not(length(Trim(a))>1));
  //
  // case NewCard of
  // 0:a := a + WhereEosBoolean(True , 'NEWCARDBOOLEAN',Not(length(Trim(a))>1));
  // 1:a := a + WhereEosBoolean(False, 'NEWCARDBOOLEAN',Not(length(Trim(a))>1));
  // end;
  //
  // case CreateMode of
  // 0:a := a + WhereEosBoolean(True , 'CREATEBOOLEAN',Not(length(Trim(a))>1));
  // 1:a := a + WhereEosBoolean(False, 'CREATEBOOLEAN',Not(length(Trim(a))>1));
  // end;
  //
  // case CustTest of
  // 0:a := a + WhereEosBoolean(True , '[Customer.ISTEST]',Not(length(Trim(a))>1));
  // 1:a := a + WhereEosBoolean(False, '[Customer.ISTEST]',Not(length(Trim(a))>1));
  // end;
  //
  // case StatusModeBl of
  // 0:a := a + WhereEosBoolean(True , 'BLACKLISTBOOLEAN',Not(length(Trim(a))>1));
  // 1:a := a + WhereEosBoolean(False, 'BLACKLISTBOOLEAN',Not(length(Trim(a))>1));
  // end;
  //
  // case StatusMode of
  // 0:a := a + WhereEosBoolean(True , 'ISACTIVE',Not(length(Trim(a))>1));
  // 1:a := a + WhereEosBoolean(False, 'ISACTIVE',Not(length(Trim(a))>1));
  // end;
  //
  //
  // If (Length(a) <> 0) Then qryACard.SQL.Add(' WHERE ' + a);
  // qryACard.SQL.Add(' ORDER BY [CUSTOMER.NAME]');
  // qryACard.Open;
  //
  // If (Length(a) <> 0) Then BStr:='Where ' + a ;
  //
  // qryBlackList.Close;
  // qryBlackList.SQL.Clear;
  // If (IncHistory = true) Then qryBlackList.SQL.Add('SELECT * FROM BLACKLIST ORDER BY ACARDID, FRDATE')
  // Else qryBlackList.SQL.Add('SELECT * FROM BLACKLIST WHERE ACARDID = 0');
  // qryBlackList.Open;
  // { TODO -cCritical : Critical }
  /// /    If (IncHistory = false) Then Begin
  /// /      dxMasterView1Level1.OptionsView := dxMasterView1Level1.OptionsView + [lovNoButtonsWhenNoChildren];
  /// /      dxMasterView1.FullExpand;
  /// /    End;
  // Finally
  // DoCursorPop;
  /// /    FMasterViewSet(dxMasterView1Level1);
  // End;

{$ENDREGION} End;

Procedure TfrmPrnACard.actCloseExecute(Sender: TObject);
Begin
  Close;
End;

procedure TfrmPrnACard.actEnhmPendingExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Θα γίνει ενημέρωση του πεδίου ''Σε Αναμονή'' για τις επιλεγμένες κάρτες', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;
  qryUPDPending.Parameters.ParamByName('PPending').Value := False;
  qryUPDPending.Parameters.ParamByName('PDT').Value      := Now();
  qryUPDPending.Parameters.ParamByName('PUsr').Value     := guUserId;
  qryUPDPending.SQL.Add(SqlStr);
  // qryUPDPending.ExecSQL;
  MessageDlg('Ενημέρωση ' + IntToStr(qryUPDPending.ExecSQL) + ' καρτών', mtinformation, [mbOk], 0);

end;

procedure TfrmPrnACard.Action2Execute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmPrnACard.actPreviewExecute(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfrmPrnACard.qryACardCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryACardFullCardNo.AsString := ReturnFullIdNo(qryACardACARDACARDCODE.AsInteger);
end;

procedure TfrmPrnACard.actPrintExecute(Sender: TObject);
Var
  rpt: TrptBaseAvinCard;
Begin
  Try
    DoCursorPush(crSQLWait);
    rpt := TRptApostolh.Create(Self);
    if LoadImageRt(rpt) = 3 then
      begin
        rpt.Free;
        rpt                                  := TRptApostolh00.Create(Self);
        TRptApostolh00(rpt).ADOQuery1.Active := False;
        TRptApostolh00(rpt).ADOQuery1.SQL.Add(SqlStr);
        TRptApostolh00(rpt).ADOQuery1.SQL.Add(' ORDER BY [Acard.CustomerId]');
        TRptApostolh00(rpt).ADOQuery1.Active := True;
      end
    else
      begin
        TRptApostolh(rpt).ADOQuery1.Active := False;
        TRptApostolh(rpt).ADOQuery1.SQL.Add(SqlStr);
        TRptApostolh(rpt).ADOQuery1.SQL.Add(' ORDER BY [Acard.CustomerId]');
        TRptApostolh(rpt).ADOQuery1.Active := True;
      end;

    rpt.PreviewModal;
  Finally
    rpt.Free;
    DoCursorPop;
  End;
end;

procedure TfrmPrnACard.actPrint1Execute(Sender: TObject);
Var
  rpt: TRptApostolhDet;
Begin
  Try
    DoCursorPush(crSQLWait);
    rpt := TRptApostolhDet.Create(Self);
    LoadImage(rpt);
    rpt.ADOQuery1.Active := False;
    rpt.ADOQuery1.SQL.Add(SqlStr);
    rpt.ADOQuery1.SQL.Add(' ORDER BY [Acard.CustomerId]');
    rpt.ADOQuery1.Active := True;
    rpt.PreviewModal;
  Finally
    rpt.Free;
    DoCursorPop;
  End;
end;

procedure TfrmPrnACard.actPrint2Execute(Sender: TObject);
Var
  rpt: TRptAcardGrComp;
Begin
  Try
    DoCursorPush(crSQLWait);
    rpt := TRptAcardGrComp.Create(Self);
    LoadImage(rpt);
    rpt.ADOQuery1.Active := False;
    rpt.ADOQuery1.SQL.Add(SqlStr);
    rpt.ADOQuery1.SQL.Add(' ORDER BY [Acard.CustomerId]');
    rpt.ADOQuery1.Active := True;
    rpt.PreviewModal;
  Finally
    rpt.Free;
    DoCursorPop;
  End;
end;

procedure TfrmPrnACard.qryEmployeesCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryEmployeesLNameSurname.AsString := Trim(qryEmployeesName.AsString) + ' ' + Trim(qryEmployeesSurName.AsString);
end;

procedure TfrmPrnACard.actPrint3Execute(Sender: TObject);
Var
  a: AnsiString;
  rpt: TRptAcardGrComp1;
Begin
  Try
    DoCursorPush(crSQLWait);
    rpt := TRptAcardGrComp1.Create(Self);
    LoadImage(rpt);
    rpt.ADOQuery1.Active := False;
    rpt.ADOQuery1.SQL.Add(SqlStr);
    rpt.ADOQuery1.SQL.Add(' ORDER BY [Acard.CustomerId]');
    rpt.ADOQuery1.Active := True;
    rpt.PreviewModal;
  Finally
    rpt.Free;
    DoCursorPop;
  End;
end;

procedure TfrmPrnACard.Excel1Click(Sender: TObject);
begin
  inherited;
  // Fix
  // GeneralDM.OutputFileMastView(cxGrid1DBTableView1);
end;

End.
