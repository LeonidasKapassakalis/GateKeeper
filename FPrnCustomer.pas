Unit FPrnCustomer;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DB, ADODB, FPrnBase, Menus,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCore,
  rCustomer1, rCustomer2,
  dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPScxPageControlProducer, dxPScxEditorProducers,
  dxPScxExtEditorProducers, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxNavigator, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, Vcl.PlatformDefaultStyleActnCtrls, dxPScxCommon,
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
  TfrmPrnCustomer = Class(TFrmPrnBase)
    dxBarManager1: TActionManager;
    ActionList1: TActionList;
    actClose: TAction;
    qryCustomer: TADOQuery;
    dtsCustomer: TDataSource;
    actPreview: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    actPrint1: TAction;
    actPrint2: TAction;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ActionToolBar1: TActionToolBar;
    qryCustomerCUSTOMERID: TAutoIncField;
    qryCustomerNAME: TWideStringField;
    qryCustomerSTREET: TWideStringField;
    qryCustomerZIP: TWideStringField;
    qryCustomerCITY: TWideStringField;
    qryCustomerAFM: TWideStringField;
    qryCustomerDOY: TWideStringField;
    qryCustomerSTARTDATE: TDateTimeField;
    qryCustomerAREAID: TIntegerField;
    qryCustomerLOCATIONID: TIntegerField;
    qryCustomerCGROUPID: TIntegerField;
    qryCustomerCCLASSID: TIntegerField;
    qryCustomerCREDITAMOUNT: TFloatField;
    qryCustomerINSDT: TDateTimeField;
    qryCustomerUPDDT: TDateTimeField;
    qryCustomerINSUSR: TIntegerField;
    qryCustomerUPDUSR: TIntegerField;
    qryCustomerPROFESSION: TWideStringField;
    qryCustomerBRANCHID: TIntegerField;
    qryCustomerSAPCODE: TWideStringField;
    qryCustomerISACTIVE: TBooleanField;
    qryCustomerSALESMENID: TIntegerField;
    qryCustomerDIAKID: TIntegerField;
    qryCustomerISTEST: TBooleanField;
    qryCustomerISCONS: TBooleanField;
    qryCustomerAREABID: TIntegerField;
    qryCustomerDATEPHEND: TDateTimeField;
    qryCustomerDATELOEND: TDateTimeField;
    qryCustomerHASDETAILEMP: TBooleanField;
    qryCustomerALLCARDSTOBL: TBooleanField;
    qryCustomerALLCARDSTOBLDATE: TDateTimeField;
    qryCustomerALLCARDSTOBLSYSDATE: TDateTimeField;
    qryCustomerALLCARDSTOBLUSR: TIntegerField;
    qryCustomerCUSTOMEROFF: TBooleanField;
    qryCustomerCUSTOMEROFFDATE: TDateTimeField;
    qryCustomerCUSTOMEROFFSYSDATE: TDateTimeField;
    qryCustomerCUSTOMEROFFUSR: TIntegerField;
    qryCustomerCARDHASEMPNAME: TBooleanField;
    qryCustomerDATEEND: TDateTimeField;
    qryCustomerCompanyTypeId: TIntegerField;
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
    dxComponentPrinter1Link1: TdxGridReportLink;
    Procedure actCloseExecute(Sender: TObject);
    Procedure FormShow(Sender: TObject);
    procedure qryCustomerFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure actPreviewExecute(Sender: TObject);
    procedure actPrint1Execute(Sender: TObject);
    procedure actPrint2Execute(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  Private
    { Private declarations }
    HasCGroup: Boolean;
    HasCClass: Boolean;
    HasArea: Boolean;
    HasLocation: Boolean;
  Public
    { Public declarations }
    FrName: AnsiString;
    ToName: AnsiString;
    FrAfm: AnsiString;
    ToAfm: AnsiString;
    TextKey: Integer;
    InAreaB: AnsiString;
    InAreaC: AnsiString;
    InAreaD: AnsiString;
    InAreaE: AnsiString;
    CustTest: Integer;
    CustIsActive: Integer;

    b: String;
  End;

Implementation

Uses Common, DMain;

{$R *.dfm}

Procedure TfrmPrnCustomer.FormShow(Sender: TObject);
Var
  a: AnsiString;
Begin
  Try
    DoCursorPush(crSQLWait);
    // qryCustomer.Close;
    // qryCustomer.SQL.Clear;
    // qryCustomer.SQL.Add('SELECT Customer.* , QTown.* ');
    // qryCustomer.SQL.Add('FROM Customer INNER JOIN QTown');
    // qryCustomer.SQL.Add('ON Customer.AREABID = QTown.AREABID');
    //
    // a := WhereApoString(FrName, 'NAME', true);
    // a := a + WhereEosString(ToName, 'NAME',Not(length(Trim(a))>1));
    // a := a + WhereApoString(FrAfm, 'AFM',Not(length(Trim(a))>1));
    // a := a + WhereEosString(ToAfm, 'AFM',Not(length(Trim(a))>1));
    //
    // case CustTest of
    // 0:a := a + WhereEosBoolean(True , 'Customer.ISTEST',Not(length(Trim(a))>1));
    // 1:a := a + WhereEosBoolean(False, 'Customer.ISTEST',Not(length(Trim(a))>1));
    // end;
    //
    // case CustIsActive of
    // 0:a := a + WhereEosBoolean(True , 'Customer.ISActive',Not(length(Trim(a))>1));
    // 1:a := a + WhereEosBoolean(False, 'Customer.ISActive',Not(length(Trim(a))>1));
    // end;
    //
    //
    // a := a + WhereIn(InAreaB,    'AreaBId' , Not(length(Trim(a))>1));
    // a := a + WhereIn(InAreaC,    'AreaCId' , Not(length(Trim(a))>1));
    // a := a + WhereIn(InAreaD,    'AreaDId' , Not(length(Trim(a))>1));
    // a := a + WhereIn(InAreaE,    'AreaEId' , Not(length(Trim(a))>1));
    //
    // If (Length(a) <> 0) Then qryCustomer.SQL.Add(' WHERE ' + a);
    // if (Length(a) <> 0) Then
    // b:='Where ' + a
    // else
    // b:='';
    // HasCGroup := PrnCustomerHasCGroup;
    // HasCClass := PrnCustomerHasCClass;
    // HasArea := PrnCustomerHasArea;
    // HasLocation := PrnCustomerHasLocation;
    // If (HasCGroup = true) Or (HasCClass = true) Or (HasArea = true) Or (HasLocation = true) Then Begin
    // qryCustomer.Filtered := true;
    // End;
    qryCustomer.Open;
  Finally
    DoCursorPop;
    { TODO -cCritical : Critical }
    // FMasterViewSet(dxMasterView1Level1);
  End;
End;

Procedure TfrmPrnCustomer.actCloseExecute(Sender: TObject);
Begin
  Close;
End;

procedure TfrmPrnCustomer.qryCustomerFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  Accept := true;
  // Fix
  // If (HasCGroup) And (PrnCustomerCGroupIsChecked(qryCustomerCGROUPID.AsInteger) = false) Then Begin
  // Accept := false;
  // Exit;
  // End;
  // If (HasCClass) And (PrnCustomerCClassIsChecked(qryCustomerCCLASSID.AsInteger) = false) Then Begin
  // Accept := false;
  // Exit;
  // End;
  // If (HasArea) And (PrnCustomerAreaIsChecked(qryCustomerAREAID.AsInteger) = false) Then Begin
  // Accept := false;
  // Exit;
  // End;
  // If (HasLocation) And (PrnCustomerLocationIsChecked(qryCustomerLOCATIONID.AsInteger) = false) Then Begin
  // Accept := false;
  // Exit;
  // End;
end;

procedure TfrmPrnCustomer.FormCreate(Sender: TObject);
begin
  inherited;
  { TODO -cCritical : Critical }
  // FMasterViewSet(dxMasterView1Level1);
  DXMasterView := cxGrid1DBTableView1;
end;

procedure TfrmPrnCustomer.actPreviewExecute(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.Preview(true, dxComponentPrinter1Link1);
end;

procedure TfrmPrnCustomer.actPrint1Execute(Sender: TObject);
var
  frm: TrptCustomer1;
begin
  // Fix
  frm := TrptCustomer1.Create(self);
  LoadImage(frm);
  frm.qryCustomer.Active := False;
  if b > ' ' then
    begin
      frm.qryCustomer.SQL.Add(b);
      frm.qryCustomer.SQL.Add(' And TextTab.TextId =' + inttostr(TextKey));
    end
  else
    begin
      frm.qryCustomer.SQL.Add('Where TextTab.TextId =' + inttostr(TextKey));
    end;
  frm.qryCustomer.SQL.Add('Order BY  Name ');
  frm.qryCustomer.Active := true;
  frm.Preview;
  frm.Free;
end;

procedure TfrmPrnCustomer.actPrint2Execute(Sender: TObject);
var
  frm: TrptCustomer2;
begin
  frm                    := TrptCustomer2.Create(self);
  frm.qryCustomer.Active := False;
  frm.qryCustomer.SQL.Add(b);
  frm.qryCustomer.Active := true;
  frm.Preview;
  frm.Free;
end;

procedure TfrmPrnCustomer.N2Click(Sender: TObject);
var
  x, x1: String;
  y, z: Integer;
begin
  inherited;
  { TODO -cCritical : Critical }
  { if GeneralDM.NewGrVariant(self,x,x1,PFormID,y) then
    for z:=0 to DXMasterView.ColumnCount -1 do
    if DXMasterView.Columns[z].Visible = True then
    GeneralDM.NewGrVariantDetail(y,DXMasterView.Columns[z].FieldName,0,''); }
end;

procedure TfrmPrnCustomer.N3Click(Sender: TObject);
var
  x, y, FType: Integer;
  FName, FValue: String;
begin
  inherited;
  { TODO -cCritical : Critical }{ TODO -cCritical : Critical }
  { if GeneralDM.GetGrVariant(PFormid,y) then
    begin
    FNoneClick(Self);
    While GeneralDM.GetGrVariantDetail(y,FName,FType,FValue)do
    for x:=0 to DXMasterView.ColumnCount -1 do
    if dxMasterView.Columns[x].FieldName = Trim(Fname) then
    begin
    dxMasterView.Columns[x].Visible := True;
    Pedia[x+5].Checked := True;
    end;
    end; }
end;

procedure TfrmPrnCustomer.Excel1Click(Sender: TObject);
begin
  inherited;
  // Fix it
  // OutputFileMastView(cxGrid1DBTableView1);
end;

End.
