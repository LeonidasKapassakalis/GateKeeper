unit FBaseRep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FBaseDev0, Vcl.ActnList, Vcl.Menus,
  DMainScreen, DMain, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPSCore, dxPScxCommon, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, Data.Win.ADODB, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid;

type
  TfrmBaseRep = class(TfrmBaseDev0)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1id: TIntegerField;
    ADOQuery1Name: TWideStringField;
    ADOQuery1Company: TWideStringField;
    ADOQuery1IdentityNo: TWideStringField;
    ADOQuery1Reason: TWideStringField;
    ADOQuery1ContactWith: TWideStringField;
    ADOQuery1WithCar: TBooleanField;
    ADOQuery1CarNumber: TWideStringField;
    ADOQuery1CardNumber: TWideStringField;
    ADOQuery1DateTimeIn: TDateTimeField;
    ADOQuery1DateTimeOut: TDateTimeField;
    ADOQuery1InsUsr: TIntegerField;
    ADOQuery1InsDT: TDateTimeField;
    ADOQuery1InUsr: TIntegerField;
    ADOQuery1OutUsr: TIntegerField;
    ADOQuery1FullFilled: TBooleanField;
    ADOQuery1FullFilledDT: TDateTimeField;
    ADOQuery1FullFilledUsr: TIntegerField;
    ADOQuery1Comments: TWideStringField;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1Name: TcxGridDBColumn;
    cxGrid1DBTableView1Company: TcxGridDBColumn;
    cxGrid1DBTableView1IdentityNo: TcxGridDBColumn;
    cxGrid1DBTableView1Reason: TcxGridDBColumn;
    cxGrid1DBTableView1ContactWith: TcxGridDBColumn;
    cxGrid1DBTableView1WithCar: TcxGridDBColumn;
    cxGrid1DBTableView1CarNumber: TcxGridDBColumn;
    cxGrid1DBTableView1CardNumber: TcxGridDBColumn;
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
    dxComponentPrinter1: TdxComponentPrinter;
    PrinterSetupDialog1: TPrinterSetupDialog;
    dxComponentPrinter1Link1: TdxGridReportLink;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2id: TcxGridDBColumn;
    cxGrid1DBTableView2Name: TcxGridDBColumn;
    cxGrid1DBTableView2Company: TcxGridDBColumn;
    cxGrid1DBTableView2IdentityNo: TcxGridDBColumn;
    cxGrid1DBTableView2Reason: TcxGridDBColumn;
    cxGrid1DBTableView2ContactWith: TcxGridDBColumn;
    cxGrid1DBTableView2WithCar: TcxGridDBColumn;
    cxGrid1DBTableView2CarNumber: TcxGridDBColumn;
    cxGrid1DBTableView2CardNumber: TcxGridDBColumn;
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
    Pr1: TMenuItem;
    procedure Pr1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaseRep: TfrmBaseRep;

implementation

{$R *.dfm}

procedure TfrmBaseRep.Pr1Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link1.Preview();
end;

end.
