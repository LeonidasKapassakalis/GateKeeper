unit PrnStationCalendar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCore, dxPSGrLnks, dxPSChLbxLnk, DB, ADODB, ActnList, Menus, FPrnBase,
  RTrCallDet0, RTrCallDet1,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  cxNavigator, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  Vcl.PlatformDefaultStyleActnCtrls,
  cxADOAdapters, cxClasses, DMain, dxPScxCommon, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter; // Must be there for ADOQuery Master Detail

type
  TfrmPrnStationCalendar = class(TFrmPrnBase)
    dxBarManager1: TActionManager;
    ActionList1: TActionList;
    actClose: TAction;
    actPreview: TAction;
    actPrint0: TAction;
    qryStation: TADOQuery;
    dtsStation: TDataSource;
    dxComponentPrinter1: TdxComponentPrinter;
    qryTrCallDet: TADOQuery;
    dtsTrCallDet: TDataSource;
    qryTrCallDetTRCALLDDATE: TDateTimeField;
    qryTrCallDetTRCALLDSTATIONID: TIntegerField;
    qryTrCallDetTRCALLDSTATUS: TIntegerField;
    qryTrCallDetLStatus: TStringField;
    actPrint1: TAction;
    ActionToolBar1: TActionToolBar;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level2: TcxGridLevel;
    dxComponentPrinter1Link1: TdxGridReportLink;
    qryStationTerminalidTerminalCode: TWideStringField;
    qryStationStationName: TWideStringField;
    qryStationMerchantName: TWideStringField;
    qryStationMerchantSAPCode: TWideStringField;
    qryStationTerminalTerminalid: TIntegerField;
    qryStationStationStationId: TIntegerField;
    qryStationMerchantMerchantId: TIntegerField;
    qryStationMerchantInActive: TBooleanField;
    qryStationMerchantDeleted: TBooleanField;
    qryStationMerchantIsTest: TBooleanField;
    qryStationMerchantStopSales: TBooleanField;
    qryStationStationDeleted: TBooleanField;
    qryStationStationInActive: TBooleanField;
    qryStationStationStopSales: TBooleanField;
    qryStationMerchantMerchantCode: TWideStringField;
    cxGrid1DBTableView1TerminalidTerminalCode: TcxGridDBColumn;
    cxGrid1DBTableView1StationName: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantName: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantSAPCode: TcxGridDBColumn;
    cxGrid1DBTableView1TerminalTerminalid: TcxGridDBColumn;
    cxGrid1DBTableView1StationStationId: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantMerchantId: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantInActive: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantDeleted: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantIsTest: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantStopSales: TcxGridDBColumn;
    cxGrid1DBTableView1StationDeleted: TcxGridDBColumn;
    cxGrid1DBTableView1StationInActive: TcxGridDBColumn;
    cxGrid1DBTableView1StationStopSales: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantMerchantCode: TcxGridDBColumn;
    qryStationTrCallDStationID: TIntegerField;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2TRCALLDDATE: TcxGridDBColumn;
    cxGrid1DBTableView2TRCALLDSTATIONID: TcxGridDBColumn;
    cxGrid1DBTableView2TRCALLDSTATUS: TcxGridDBColumn;
    cxGrid1DBTableView2LStatus: TcxGridDBColumn;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView3TRCALLDDATE: TcxGridDBColumn;
    cxGrid1DBTableView3TRCALLDSTATIONID: TcxGridDBColumn;
    cxGrid1DBTableView3TRCALLDSTATUS: TcxGridDBColumn;
    cxGrid1DBTableView3LStatus: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure qryTrCallDetCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure actPreviewExecute(Sender: TObject);
    procedure actPrint0Execute(Sender: TObject);
    procedure actPrint1Execute(Sender: TObject);
    procedure qryStationCalcFields(DataSet: TDataSet);
  Private
    HasBranch: Boolean;
  Public
    FrName: AnsiString;
    ToName: AnsiString;
    FrMerchandId: AnsiString;
    ToMerchandId: AnsiString;
    FrStationId: AnsiString;
    ToStationId: AnsiString;
    FrInsDate: TDateTime;
    ToInsDate: TDateTime;
    InBranch: AnsiString;
    StOk: Boolean;
    StC0: Boolean;
    StNC: Boolean;
    WholeSQLCriteria: AnsiString;
  end;

implementation

Uses Common, FMain;

{$R *.dfm}

procedure TfrmPrnStationCalendar.FormCreate(Sender: TObject);
begin
  { TODO -cCritical : Critical }
  // FMasterViewSet(dxMasterView1Level1);
end;

procedure TfrmPrnStationCalendar.actCloseExecute(Sender: TObject);
begin
  self.Close;
end;

procedure TfrmPrnStationCalendar.qryStationCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryStationTrCallDStationID.Value := qryStationTerminalTerminalid.AsInteger;
end;

procedure TfrmPrnStationCalendar.qryTrCallDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  case qryTrCallDetTRCALLDSTATUS.AsInteger of
    1:
      qryTrCallDetLStatus.AsString := 'OK';
    2:
      qryTrCallDetLStatus.AsString := 'Χωρίς Κινήσεις';
    3:
      qryTrCallDetLStatus.AsString := 'Χωρίς Επικοινωνία';
  end;

end;

procedure TfrmPrnStationCalendar.FormActivate(Sender: TObject);
var
  a, a1, a2, a3: AnsiString;
Begin
  // Try
  // DoCursorPush(crSQLWait);
  // qryStation.Active:=False;
  //
  // if ((StOk = False) or (StNC = False) or (StC0 = False)) then
  // begin
  // a2:='TrCallDStatus in (';
  // if StOK then
  // a3:='1';
  // if StC0 then
  // begin
  // if a3 > '' then a3:=a3+',';
  // a3:=a3+'2';
  // end;
  // if StNC then
  // begin
  // if a3 > '' then a3:=a3+',';
  // a3:=a3+'3';
  // end;
  // if a1 > ' ' then a1:=a1+' AND ';
  // a1:=a1+a2+a3+') ';
  // end;
  //
  // If (Length(a1) <> 0) Then
  // begin
  // if WholeSQLCriteria > ' ' then
  // WholeSQLCriteria := WholeSQLCriteria + ' AND ' + a1
  // else
  // WholeSQLCriteria := 'WHERE ' + a1;
  // qryTrCallDet.SQL.Add(' WHERE ' + a1);
  /// /       qryTrCallDet.SQL.Add(' AND TrCallDStationID = :StationId');
  // qryTrCallDet.SQL.Add(' AND TrCallDStationID = :TRCALLDSTATIONID');
  // qryTrCallDet.SQL.Add(' ORDER BY TRCALLDDATE');
  // end
  // else
  // begin
  /// /       qryTrCallDet.SQL.Add(' WHERE TrCallDStationID = :StationId');
  // qryTrCallDet.SQL.Add(' WHERE TrCallDStationID = :TRCALLDSTATIONID');
  // qryTrCallDet.SQL.Add(' ORDER BY TRCALLDDATE');
  // end;
  // qryTrCallDet.Active:=True;
  // Finally
  // DoCursorPop;
  // { TODO -cCritical : Critical }
  /// /    FMasterViewSet(dxMasterView1Level1);
  // End;
end;

procedure TfrmPrnStationCalendar.actPreviewExecute(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.Preview(True, dxComponentPrinter1Link1);
end;

procedure TfrmPrnStationCalendar.actPrint0Execute(Sender: TObject);
var
  rpt: TrptTrCallDet0;
begin
  try
    rpt := TrptTrCallDet0.Create(self);
    rpt.qryTrCallDet.SQL.Add(WholeSQLCriteria);
    rpt.qryTrCallDet.SQL.Add('Order By [Station.Name], TrCallDDate');
    // MessageDlg(rpt.qryTrCallDet.SQL.Text, mtCustom, [mbOK], 0);
    rpt.qryTrCallDet.Active := True;
    rpt.Preview;
  finally
    rpt.Free;
  end;

end;

procedure TfrmPrnStationCalendar.actPrint1Execute(Sender: TObject);
var
  rpt: TrptTrCallDet1;
begin
  try
    rpt := TrptTrCallDet1.Create(self);
    rpt.qryTrCallDet.SQL.Add(WholeSQLCriteria);
    rpt.qryTrCallDet.SQL.Add('Order By TrCallDDate, TrCallDStatus, [Station.Name]');
    // MessageDlg(rpt.qryTrCallDet.SQL.Text, mtCustom, [mbOK], 0);
    rpt.qryTrCallDet.Active := True;
    rpt.Preview;
  finally
    rpt.Free;
  end;
end;

end.
