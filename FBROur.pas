unit FBROur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FBaseRep, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPSCore, dxPScxCommon, Data.Win.ADODB, Vcl.ActnList, Vcl.Menus, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DateUtils,
  DMain, FOurCarsDet, FFilterEnDev;

type
  TfrmBROur = class(TfrmBaseRep)
    qryMainid: TIntegerField;
    qryMainRegNoId: TIntegerField;
    qryMainProcedureState: TIntegerField;
    qryMainFriendCar: TBooleanField;
    qryMainDrvNameId: TIntegerField;
    qryMainCompanyId: TIntegerField;
    qryMainDA_Num: TWideStringField;
    qryMainProducts: TWideStringField;
    qryMainWithoutWeight: TBooleanField;
    qryMainDateTimeIn: TDateTimeField;
    qryMainDateTimeOut: TDateTimeField;
    qryMainInsUsr: TIntegerField;
    qryMainInsDT: TDateTimeField;
    qryMainInUsr: TIntegerField;
    qryMainOutUsr: TIntegerField;
    qryMainFullFilled: TBooleanField;
    qryMainFullFilledDT: TDateTimeField;
    qryMainFullFilledUsr: TIntegerField;
    qryMainComments: TWideStringField;
    qryMainCalcWeight: TBCDField;
    qryMainWater: TBCDField;
    qryMainNoted: TBooleanField;
    qryMainLDTime: TStringField;
    qryMainDTime: TDateTimeField;
    qryMainSpecialEltepe: TIntegerField;
    VL_Drivers: TADOQuery;
    VL_Driversid: TIntegerField;
    VL_DriversName: TWideStringField;
    VL_DriversCompanyId: TIntegerField;
    VL_DriversComments: TWideStringField;
    VL_Company: TADOQuery;
    VL_CompanyName: TWideStringField;
    VL_Companyid: TIntegerField;
    VL_CompanyComments: TWideStringField;
    VL_CompanyFriendCompany: TBooleanField;
    VL_CompanySpecialCom: TBooleanField;
    VL_RegNo: TADOQuery;
    VL_RegNoid: TIntegerField;
    VL_RegNoCompanyId: TIntegerField;
    VL_RegNoRegNo: TWideStringField;
    VL_RegNoCompany: TWideStringField;
    VL_RegNoCapacity: TBCDField;
    VL_RegNoGross: TBCDField;
    VL_RegNoTrustPeriod: TIntegerField;
    VL_RegNoComments: TWideStringField;
    dsVL_Drivers: TDataSource;
    dsVL_Company: TDataSource;
    dsVL_RegNo: TDataSource;
    qryMainLComp: TStringField;
    qryMainLReg: TStringField;
    qryMainLDrvName: TStringField;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView3: TcxGridDBTableView;
    VL_FPass: TADOQuery;
    dsVL_FPass: TDataSource;
    qryMainLFPassIns: TStringField;
    qryMainLFPassOut: TStringField;
    qryMainLFPassFull: TStringField;
    VL_FPassId: TIntegerField;
    VL_FPassLogin: TWideStringField;
    VL_FPassPasswd: TWideStringField;
    VL_FPassGroup: TSmallintField;
    VL_FPassName: TWideStringField;
    VL_FPassAddress: TWideStringField;
    VL_FPassEMAIL: TWideStringField;
    VL_FPassPhone: TWideStringField;
    VL_FPassConn_Time: TFloatField;
    VL_FPassValid_Till: TDateTimeField;
    VL_FPassStath: TIntegerField;
    VL_FPassDeleted: TBooleanField;
    VL_FPassDelUsr: TIntegerField;
    VL_FPassDelDT: TDateTimeField;
    VL_FPassInActive: TBooleanField;
    VL_FPassInActiveUsr: TIntegerField;
    VL_FPassInActiveDt: TDateTimeField;
    VL_FPassMaint_Log: TBooleanField;
    VL_FPassCheck_Serial: TBooleanField;
    VL_FPassSerial1: TIntegerField;
    VL_FPassSerial2: TIntegerField;
    VL_FPassSerial3: TIntegerField;
    VL_ProcName: TADOQuery;
    dsVL_ProcName: TDataSource;
    VL_ProcNameid: TIntegerField;
    VL_ProcNameProcName: TWideStringField;
    VL_ProcNameOur: TBooleanField;
    VL_ProcNameOther: TBooleanField;
    qryMainLProcName: TStringField;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1RegNoId: TcxGridDBColumn;
    cxGrid1DBTableView1LComp: TcxGridDBColumn;
    cxGrid1DBTableView1LReg: TcxGridDBColumn;
    cxGrid1DBTableView1LDrvName: TcxGridDBColumn;
    cxGrid1DBTableView1ProcedureState: TcxGridDBColumn;
    cxGrid1DBTableView1FriendCar: TcxGridDBColumn;
    cxGrid1DBTableView1DrvNameId: TcxGridDBColumn;
    cxGrid1DBTableView1CompanyId: TcxGridDBColumn;
    cxGrid1DBTableView1DA_Num: TcxGridDBColumn;
    cxGrid1DBTableView1Products: TcxGridDBColumn;
    cxGrid1DBTableView1WithoutWeight: TcxGridDBColumn;
    cxGrid1DBTableView1DateTimeIn: TcxGridDBColumn;
    cxGrid1DBTableView1DateTimeOut: TcxGridDBColumn;
    cxGrid1DBTableView1InsUsr: TcxGridDBColumn;
    cxGrid1DBTableView1InsDT: TcxGridDBColumn;
    cxGrid1DBTableView1InUsr: TcxGridDBColumn;
    cxGrid1DBTableView1OutUsr: TcxGridDBColumn;
    cxGrid1DBTableView1FullFilled: TcxGridDBColumn;
    cxGrid1DBTableView1FullFilledDT: TcxGridDBColumn;
    cxGrid1DBTableView1FullFilledUsr: TcxGridDBColumn;
    cxGrid1DBTableView1Comments: TcxGridDBColumn;
    cxGrid1DBTableView1CalcWeight: TcxGridDBColumn;
    cxGrid1DBTableView1Water: TcxGridDBColumn;
    cxGrid1DBTableView1Noted: TcxGridDBColumn;
    cxGrid1DBTableView1DTime: TcxGridDBColumn;
    cxGrid1DBTableView1SpecialEltepe: TcxGridDBColumn;
    cxGrid1DBTableView1LDTime: TcxGridDBColumn;
    cxGrid1DBTableView1LFPassIns: TcxGridDBColumn;
    cxGrid1DBTableView1LFPassOut: TcxGridDBColumn;
    cxGrid1DBTableView1LFPassFull: TcxGridDBColumn;
    cxGrid1DBTableView1LProcName: TcxGridDBColumn;
    cxGrid1DBTableView2id: TcxGridDBColumn;
    cxGrid1DBTableView2RegNoId: TcxGridDBColumn;
    cxGrid1DBTableView2LComp: TcxGridDBColumn;
    cxGrid1DBTableView2LReg: TcxGridDBColumn;
    cxGrid1DBTableView2LDrvName: TcxGridDBColumn;
    cxGrid1DBTableView2ProcedureState: TcxGridDBColumn;
    cxGrid1DBTableView2FriendCar: TcxGridDBColumn;
    cxGrid1DBTableView2DrvNameId: TcxGridDBColumn;
    cxGrid1DBTableView2CompanyId: TcxGridDBColumn;
    cxGrid1DBTableView2DA_Num: TcxGridDBColumn;
    cxGrid1DBTableView2Products: TcxGridDBColumn;
    cxGrid1DBTableView2WithoutWeight: TcxGridDBColumn;
    cxGrid1DBTableView2DateTimeIn: TcxGridDBColumn;
    cxGrid1DBTableView2DateTimeOut: TcxGridDBColumn;
    cxGrid1DBTableView2InsUsr: TcxGridDBColumn;
    cxGrid1DBTableView2InsDT: TcxGridDBColumn;
    cxGrid1DBTableView2InUsr: TcxGridDBColumn;
    cxGrid1DBTableView2OutUsr: TcxGridDBColumn;
    cxGrid1DBTableView2FullFilled: TcxGridDBColumn;
    cxGrid1DBTableView2FullFilledDT: TcxGridDBColumn;
    cxGrid1DBTableView2FullFilledUsr: TcxGridDBColumn;
    cxGrid1DBTableView2Comments: TcxGridDBColumn;
    cxGrid1DBTableView2CalcWeight: TcxGridDBColumn;
    cxGrid1DBTableView2Water: TcxGridDBColumn;
    cxGrid1DBTableView2Noted: TcxGridDBColumn;
    cxGrid1DBTableView2DTime: TcxGridDBColumn;
    cxGrid1DBTableView2SpecialEltepe: TcxGridDBColumn;
    cxGrid1DBTableView2LDTime: TcxGridDBColumn;
    cxGrid1DBTableView2LFPassIns: TcxGridDBColumn;
    cxGrid1DBTableView2LFPassOut: TcxGridDBColumn;
    cxGrid1DBTableView2LFPassFull: TcxGridDBColumn;
    cxGrid1DBTableView2LProcName: TcxGridDBColumn;
    cxGrid1DBTableView3id: TcxGridDBColumn;
    cxGrid1DBTableView3RegNoId: TcxGridDBColumn;
    cxGrid1DBTableView3LComp: TcxGridDBColumn;
    cxGrid1DBTableView3LReg: TcxGridDBColumn;
    cxGrid1DBTableView3LDrvName: TcxGridDBColumn;
    cxGrid1DBTableView3ProcedureState: TcxGridDBColumn;
    cxGrid1DBTableView3FriendCar: TcxGridDBColumn;
    cxGrid1DBTableView3DrvNameId: TcxGridDBColumn;
    cxGrid1DBTableView3CompanyId: TcxGridDBColumn;
    cxGrid1DBTableView3DA_Num: TcxGridDBColumn;
    cxGrid1DBTableView3Products: TcxGridDBColumn;
    cxGrid1DBTableView3WithoutWeight: TcxGridDBColumn;
    cxGrid1DBTableView3DateTimeIn: TcxGridDBColumn;
    cxGrid1DBTableView3DateTimeOut: TcxGridDBColumn;
    cxGrid1DBTableView3InsUsr: TcxGridDBColumn;
    cxGrid1DBTableView3InsDT: TcxGridDBColumn;
    cxGrid1DBTableView3InUsr: TcxGridDBColumn;
    cxGrid1DBTableView3OutUsr: TcxGridDBColumn;
    cxGrid1DBTableView3FullFilled: TcxGridDBColumn;
    cxGrid1DBTableView3FullFilledDT: TcxGridDBColumn;
    cxGrid1DBTableView3FullFilledUsr: TcxGridDBColumn;
    cxGrid1DBTableView3Comments: TcxGridDBColumn;
    cxGrid1DBTableView3CalcWeight: TcxGridDBColumn;
    cxGrid1DBTableView3Water: TcxGridDBColumn;
    cxGrid1DBTableView3Noted: TcxGridDBColumn;
    cxGrid1DBTableView3DTime: TcxGridDBColumn;
    cxGrid1DBTableView3SpecialEltepe: TcxGridDBColumn;
    cxGrid1DBTableView3LDTime: TcxGridDBColumn;
    cxGrid1DBTableView3LFPassIns: TcxGridDBColumn;
    cxGrid1DBTableView3LFPassOut: TcxGridDBColumn;
    cxGrid1DBTableView3LFPassFull: TcxGridDBColumn;
    cxGrid1DBTableView3LProcName: TcxGridDBColumn;
    qryMainProductId: TIntegerField;
    qryMainFinalWeight: TFloatField;
    qryMainFinalWater: TFloatField;
    cxGrid1DBTableView1ProductId: TcxGridDBColumn;
    cxGrid1DBTableView1FinalWeight: TcxGridDBColumn;
    cxGrid1DBTableView1FinalWater: TcxGridDBColumn;
    cxGrid1DBTableView2ProductId: TcxGridDBColumn;
    cxGrid1DBTableView2FinalWeight: TcxGridDBColumn;
    cxGrid1DBTableView2FinalWater: TcxGridDBColumn;
    cxGrid1DBTableView3ProductId: TcxGridDBColumn;
    cxGrid1DBTableView3FinalWeight: TcxGridDBColumn;
    cxGrid1DBTableView3FinalWater: TcxGridDBColumn;
    VL_Products: TADOQuery;
    VL_Productsid: TIntegerField;
    VL_ProductsName: TWideStringField;
    VL_ProductsComments: TWideStringField;
    VL_ProductsPhoName: TWideStringField;
    dsVL_Products: TDataSource;
    qryMainLProdName: TStringField;
    cxGrid1DBTableView1LProdName: TcxGridDBColumn;
    cxGrid1DBTableView2LProdName: TcxGridDBColumn;
    cxGrid1DBTableView3LProdName: TcxGridDBColumn;
    cxGrid1Level4: TcxGridLevel;
    cxGrid1DBTableView4: TcxGridDBTableView;
    cxGrid1Level5: TcxGridLevel;
    cxGrid1DBTableView5: TcxGridDBTableView;
    cxGrid1DBTableView4id: TcxGridDBColumn;
    cxGrid1DBTableView4RegNoId: TcxGridDBColumn;
    cxGrid1DBTableView4LComp: TcxGridDBColumn;
    cxGrid1DBTableView4LReg: TcxGridDBColumn;
    cxGrid1DBTableView4LDrvName: TcxGridDBColumn;
    cxGrid1DBTableView4ProcedureState: TcxGridDBColumn;
    cxGrid1DBTableView4FriendCar: TcxGridDBColumn;
    cxGrid1DBTableView4DrvNameId: TcxGridDBColumn;
    cxGrid1DBTableView4CompanyId: TcxGridDBColumn;
    cxGrid1DBTableView4DA_Num: TcxGridDBColumn;
    cxGrid1DBTableView4Products: TcxGridDBColumn;
    cxGrid1DBTableView4WithoutWeight: TcxGridDBColumn;
    cxGrid1DBTableView4DateTimeIn: TcxGridDBColumn;
    cxGrid1DBTableView4DateTimeOut: TcxGridDBColumn;
    cxGrid1DBTableView4InsUsr: TcxGridDBColumn;
    cxGrid1DBTableView4InsDT: TcxGridDBColumn;
    cxGrid1DBTableView4InUsr: TcxGridDBColumn;
    cxGrid1DBTableView4OutUsr: TcxGridDBColumn;
    cxGrid1DBTableView4FullFilled: TcxGridDBColumn;
    cxGrid1DBTableView4FullFilledDT: TcxGridDBColumn;
    cxGrid1DBTableView4FullFilledUsr: TcxGridDBColumn;
    cxGrid1DBTableView4Comments: TcxGridDBColumn;
    cxGrid1DBTableView4CalcWeight: TcxGridDBColumn;
    cxGrid1DBTableView4Water: TcxGridDBColumn;
    cxGrid1DBTableView4Noted: TcxGridDBColumn;
    cxGrid1DBTableView4DTime: TcxGridDBColumn;
    cxGrid1DBTableView4SpecialEltepe: TcxGridDBColumn;
    cxGrid1DBTableView4LDTime: TcxGridDBColumn;
    cxGrid1DBTableView4LFPassIns: TcxGridDBColumn;
    cxGrid1DBTableView4LFPassOut: TcxGridDBColumn;
    cxGrid1DBTableView4LFPassFull: TcxGridDBColumn;
    cxGrid1DBTableView4LProcName: TcxGridDBColumn;
    cxGrid1DBTableView4ProductId: TcxGridDBColumn;
    cxGrid1DBTableView4FinalWeight: TcxGridDBColumn;
    cxGrid1DBTableView4FinalWater: TcxGridDBColumn;
    cxGrid1DBTableView4LProdName: TcxGridDBColumn;
    cxGrid1DBTableView5id: TcxGridDBColumn;
    cxGrid1DBTableView5RegNoId: TcxGridDBColumn;
    cxGrid1DBTableView5LComp: TcxGridDBColumn;
    cxGrid1DBTableView5LReg: TcxGridDBColumn;
    cxGrid1DBTableView5LDrvName: TcxGridDBColumn;
    cxGrid1DBTableView5ProcedureState: TcxGridDBColumn;
    cxGrid1DBTableView5FriendCar: TcxGridDBColumn;
    cxGrid1DBTableView5DrvNameId: TcxGridDBColumn;
    cxGrid1DBTableView5CompanyId: TcxGridDBColumn;
    cxGrid1DBTableView5DA_Num: TcxGridDBColumn;
    cxGrid1DBTableView5Products: TcxGridDBColumn;
    cxGrid1DBTableView5WithoutWeight: TcxGridDBColumn;
    cxGrid1DBTableView5DateTimeIn: TcxGridDBColumn;
    cxGrid1DBTableView5DateTimeOut: TcxGridDBColumn;
    cxGrid1DBTableView5InsUsr: TcxGridDBColumn;
    cxGrid1DBTableView5InsDT: TcxGridDBColumn;
    cxGrid1DBTableView5InUsr: TcxGridDBColumn;
    cxGrid1DBTableView5OutUsr: TcxGridDBColumn;
    cxGrid1DBTableView5FullFilled: TcxGridDBColumn;
    cxGrid1DBTableView5FullFilledDT: TcxGridDBColumn;
    cxGrid1DBTableView5FullFilledUsr: TcxGridDBColumn;
    cxGrid1DBTableView5Comments: TcxGridDBColumn;
    cxGrid1DBTableView5CalcWeight: TcxGridDBColumn;
    cxGrid1DBTableView5Water: TcxGridDBColumn;
    cxGrid1DBTableView5Noted: TcxGridDBColumn;
    cxGrid1DBTableView5DTime: TcxGridDBColumn;
    cxGrid1DBTableView5SpecialEltepe: TcxGridDBColumn;
    cxGrid1DBTableView5LDTime: TcxGridDBColumn;
    cxGrid1DBTableView5LFPassIns: TcxGridDBColumn;
    cxGrid1DBTableView5LFPassOut: TcxGridDBColumn;
    cxGrid1DBTableView5LFPassFull: TcxGridDBColumn;
    cxGrid1DBTableView5LProcName: TcxGridDBColumn;
    cxGrid1DBTableView5ProductId: TcxGridDBColumn;
    cxGrid1DBTableView5FinalWeight: TcxGridDBColumn;
    cxGrid1DBTableView5FinalWater: TcxGridDBColumn;
    cxGrid1DBTableView5LProdName: TcxGridDBColumn;
    qryMainMinDiff: TIntegerField;
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
      var AHandled: Boolean);
    procedure qryMainCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryFieldNamesBeforePost(DataSet: TDataSet);
    procedure cxGrid1DBTableView4CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView5CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView3CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    IniDate:TDateTime;
    SelDone:Boolean;
    procedure sactEditOurCars(Insert: Boolean = True; Edit: Boolean = False; Id: Integer = 0);
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses FMain;

procedure TfrmBROur.cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
var
  I, Id: Integer;
begin
  inherited;
  Caption := ACellViewInfo.Item.Caption;
  I       := ACellViewInfo.Item.Index;
  I       := cxGrid1DBTableView1.FindItemByName('cxGrid1DBTableView1id').Index;
  Id      := ACellViewInfo.GridRecord.Values[I];
  sactEditOurCars(False, False, Id);
end;

procedure TfrmBROur.cxGrid1DBTableView2CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  I, Id: Integer;
begin
  inherited;
  Caption := ACellViewInfo.Item.Caption;
  I       := ACellViewInfo.Item.Index;
  I       := cxGrid1DBTableView2.FindItemByName('cxGrid1DBTableView2id').Index;
  Id      := ACellViewInfo.GridRecord.Values[I];
  sactEditOurCars(False, False, Id);
end;

procedure TfrmBROur.cxGrid1DBTableView3CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  I, Id: Integer;
begin
  inherited;
  Caption := ACellViewInfo.Item.Caption;
  I       := ACellViewInfo.Item.Index;
  I       := cxGrid1DBTableView3.FindItemByName('cxGrid1DBTableView3id').Index;
  Id      := ACellViewInfo.GridRecord.Values[I];
  sactEditOurCars(False, False, Id);
end;

procedure TfrmBROur.cxGrid1DBTableView4CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  I, Id: Integer;
begin
  inherited;
  Caption := ACellViewInfo.Item.Caption;
  I       := ACellViewInfo.Item.Index;
  I       := cxGrid1DBTableView4.FindItemByName('cxGrid1DBTableView4id').Index;
  Id      := ACellViewInfo.GridRecord.Values[I];
  sactEditOurCars(False, False, Id);
end;

procedure TfrmBROur.cxGrid1DBTableView5CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  I, Id: Integer;
begin
  inherited;
  Caption := ACellViewInfo.Item.Caption;
  I       := ACellViewInfo.Item.Index;
  I       := cxGrid1DBTableView5.FindItemByName('cxGrid1DBTableView5id').Index;
  Id      := ACellViewInfo.GridRecord.Values[I];
  sactEditOurCars(False, False, Id);
end;

procedure TfrmBROur.FormActivate(Sender: TObject);
var frm:TfrmFilterEnDev;
    TmpSql:string;
begin
  inherited;
  if SelDone then
     exit;

  TmpSql:=qryMain.SQL.Text;
  qryMain.SQL.Add(' Where id = 0');
  qryMain.Active:=True;
  frm:=TfrmFilterEnDev.CreateWithParam(Self,cxGrid1DBTableView1,TDataModule(Self),True,'Κριτήρια Εκτύπωσης Εταιρικού Στόλου');
  frm.ShowModal;
  if frm.ModalResult = mrCancel then
    begin
      frm.Free;
      Self.Close;
      Exit;
    end;
//  frm.ShowModal;
  SelDone:=True;
  if frm.KSleo > '' then
    begin
      qryMain.Active:=False;
      qryMain.SQL.Clear;
      qryMain.SQL.Add(TmpSql+' Where '+frm.Ksleo);
      qryMain.Active:=True;
    end
  else
    begin
    if MessageDlg('Θα εμφανιστουν ΟΛΕΣ οι Καταχωρήσεις.', mtInformation, [mbYes, mbNo], 0) =mrYes then
       begin
         qryMain.Active:=False;
         qryMain.SQL.Clear;
         qryMain.SQL.Add(TmpSql);
         qryMain.Active:=True;
       end;
    end;
  frm.Free;

//  cxGrid1DBTableView1.DataController.Groups.FullExpand;
//  cxGrid1DBTableView2.DataController.Groups.FullExpand;
//  cxGrid1DBTableView3.DataController.Groups.FullExpand;

  cxGrid1DBTableView1.DataController.Groups.FullCollapse;
  cxGrid1DBTableView2.DataController.Groups.FullCollapse;
  cxGrid1DBTableView3.DataController.Groups.FullCollapse;
  cxGrid1DBTableView4.DataController.Groups.FullCollapse;
  cxGrid1DBTableView5.DataController.Groups.FullCollapse;



end;

procedure TfrmBROur.FormCreate(Sender: TObject);
var x:Integer;
begin
  inherited;
  SelDone:=False;
  VL_RegNo.Active:=True;
  VL_FPass.Active:=True;
  VL_Company.Active:=True;
  VL_Drivers.Active:=True;
  VL_ProcName.Active:=True;

  if frmMain.EnhmGridTables then
    begin
      EnhmTableFields(qryMain,90001);
      EnhmcxGridFields(cxGrid1DBTableView1,90002);
      EnhmcxGridFields(cxGrid1DBTableView2,90003);
      EnhmcxGridFields(cxGrid1DBTableView3,90004);
      EnhmcxGridFields(cxGrid1DBTableView4,90005);
      EnhmcxGridFields(cxGrid1DBTableView5,90006);
    end;
 if frmMain.EnhmGridFromTables then
    begin
      EnhmFieldsFromTable(qryMain,90001);
      EnhmcxGridFromTable(cxGrid1DBTableView1,90002);
      EnhmcxGridFromTable(cxGrid1DBTableView2,90003);
      EnhmcxGridFromTable(cxGrid1DBTableView3,90004);
      EnhmcxGridFromTable(cxGrid1DBTableView4,90005);
      EnhmcxGridFromTable(cxGrid1DBTableView5,90006);
    end;

    cxGrid1DBTableView1.OptionsView.GroupByBox := False;
    cxGrid1DBTableView2.OptionsView.GroupByBox := False;
    cxGrid1DBTableView3.OptionsView.GroupByBox := False;
    cxGrid1DBTableView4.OptionsView.GroupByBox := False;
    cxGrid1DBTableView5.OptionsView.GroupByBox := False;

    cxGrid1DBTableView1.OptionsView.Indicator := False;
    cxGrid1DBTableView2.OptionsView.Indicator := False;
    cxGrid1DBTableView3.OptionsView.Indicator := False;
    cxGrid1DBTableView4.OptionsView.Indicator := False;
    cxGrid1DBTableView5.OptionsView.Indicator := False;

    cxGrid1DBTableView1.DataController.Groups.FullExpand;
    cxGrid1DBTableView2.DataController.Groups.FullExpand;
    cxGrid1DBTableView3.DataController.Groups.FullExpand;
    cxGrid1DBTableView4.DataController.Groups.FullExpand;
    cxGrid1DBTableView5.DataController.Groups.FullExpand;
end;
//  9005
//      QryMain.Fields[x].DisplayLabel:=QryMain.Fields[x].DisplayLabel+inttostr(x);

procedure TfrmBROur.qryFieldNamesBeforePost(DataSet: TDataSet);
begin
  inherited;
//  if DataSet is TADOTable then
  TADOQuery(DataSet).FieldByName('ID').AsInteger := CreateKey('FieldNames');
end;

procedure TfrmBROur.qryMainCalcFields(DataSet: TDataSet);
var
  m, d, s: Integer;
  mf: Real;
begin
  inherited;
  if DataSet.FieldByName('DTime').IsNull then
  else
    begin
//      mf := DataSet.FieldByName('DTime').AsDateTime;
//      m  := Round(mf);
      m  := MinutesBetween(IniDate,DataSet.FieldByName('DTime').AsDateTime);
      s  := m;
      d  := m div 1440;
      m  := m mod 1440;
      if d > 0 then
        DataSet.FieldByName('LDTime').AsString := Format('%d Ημέρες %d Ώρες %d Λεπτά', [d, m div 60, m mod 60])
      else
        if m > 60 then
           DataSet.FieldByName('LDTime').AsString := Format('%d Ώρες %d Λεπτά', [m div 60, m mod 60])
        else
           DataSet.FieldByName('LDTime').AsString := Format('%d Λεπτά', [m mod 60])
    end;
end;

procedure TfrmBROur.sactEditOurCars(Insert: Boolean = True; Edit: Boolean = False; Id: Integer = 0);
var
  frm: TfrmOurCarsDet;
  FormId: Integer;
begin
  if DMMain.FindSecurity('TfrmOurCarsDet', LoginGroup, FormId) then
    begin
      frm := TfrmOurCarsDet.CreateSecurity(self, FormId);
      try
        if Insert then
          frm.AddRec
        else if Edit then
          frm.EditRec(Id)
        else
          frm.GotoRec(Id);
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmOurCarsDet');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;


end.
