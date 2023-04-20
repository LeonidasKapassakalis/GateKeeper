unit FBrLibro;

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
  cxGridDBTableView, cxGrid,
  DMain, FFilterEnDev;

type
  TfrmBrLibro = class(TfrmBaseRep)
    qryMainGId: TGuidField;
    qryMainLibId: TIntegerField;
    qryMainLibDateTime: TDateTimeField;
    qryMainLibRegNo: TWideStringField;
    qryMainLibWeight: TIntegerField;
    qryMainLibWeight1: TIntegerField;
    qryMainLibWeight2: TIntegerField;
    qryMainLibWeight0: TIntegerField;
    qryMainArThes: TIntegerField;
    qryMainError: TBooleanField;
    qryMainUsed: TBooleanField;
    cxGrid1DBTableView1GId: TcxGridDBColumn;
    cxGrid1DBTableView1LibId: TcxGridDBColumn;
    cxGrid1DBTableView1LibDateTime: TcxGridDBColumn;
    cxGrid1DBTableView1LibRegNo: TcxGridDBColumn;
    cxGrid1DBTableView1LibWeight: TcxGridDBColumn;
    cxGrid1DBTableView1LibWeight1: TcxGridDBColumn;
    cxGrid1DBTableView1LibWeight2: TcxGridDBColumn;
    cxGrid1DBTableView1LibWeight0: TcxGridDBColumn;
    cxGrid1DBTableView1ArThes: TcxGridDBColumn;
    cxGrid1DBTableView1Error: TcxGridDBColumn;
    cxGrid1DBTableView1Used: TcxGridDBColumn;
    VL_FPass: TADOQuery;
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
    dsVL_FPass: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    IniDate:TDateTime;
    SelDone:Boolean;
  end;

implementation

{$R *.dfm}

uses FMain;

procedure TfrmBrLibro.FormActivate(Sender: TObject);
var frm:TfrmFilterEnDev;
    TmpSql:string;
begin
  inherited;
  if SelDone then
     exit;

  TmpSql:=qryMain.SQL.Text;
  qryMain.SQL.Add(' Where Libid = 0');
  qryMain.Active:=True;
  frm:=TfrmFilterEnDev.CreateWithParam(Self,cxGrid1DBTableView1,TDataModule(Self),True,'Κριτήρια Εκτύπωσης Εξωτερικού Στόλου');
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

  cxGrid1DBTableView1.DataController.Groups.FullCollapse;

end;

procedure TfrmBrLibro.FormCreate(Sender: TObject);
begin
  inherited;

  SelDone:=False;
  VL_FPass.Active:=True;

  if frmMain.EnhmGridTables then
    begin
      EnhmTableFields(qryMain,90031);
      EnhmcxGridFields(cxGrid1DBTableView1,90032);
//      EnhmcxGridFields(cxGrid1DBTableView2,90013);
//      EnhmcxGridFields(cxGrid1DBTableView3,90014);
//      EnhmcxGridFields(cxGrid1DBTableView4,90015);
//      EnhmcxGridFields(cxGrid1DBTableView5,90016);
    end;
 if frmMain.EnhmGridFromTables then
    begin
      EnhmFieldsFromTable(qryMain,90031);
      EnhmcxGridFromTable(cxGrid1DBTableView1,90032);
//      EnhmcxGridFromTable(cxGrid1DBTableView2,90013);
//      EnhmcxGridFromTable(cxGrid1DBTableView3,90014);
//      EnhmcxGridFromTable(cxGrid1DBTableView4,90015);
//      EnhmcxGridFromTable(cxGrid1DBTableView5,90016);
    end;

    cxGrid1DBTableView1.OptionsView.GroupByBox := False;
//    cxGrid1DBTableView2.OptionsView.GroupByBox := False;
//    cxGrid1DBTableView3.OptionsView.GroupByBox := False;
//    cxGrid1DBTableView4.OptionsView.GroupByBox := False;
//    cxGrid1DBTableView5.OptionsView.GroupByBox := False;

    cxGrid1DBTableView1.OptionsView.Indicator := False;
//    cxGrid1DBTableView2.OptionsView.Indicator := False;
//    cxGrid1DBTableView3.OptionsView.Indicator := False;
//    cxGrid1DBTableView4.OptionsView.Indicator := False;
//    cxGrid1DBTableView5.OptionsView.Indicator := False;

    cxGrid1DBTableView1.DataController.Groups.FullExpand;
//    cxGrid1DBTableView2.DataController.Groups.FullExpand;
//    cxGrid1DBTableView3.DataController.Groups.FullExpand;
//    cxGrid1DBTableView4.DataController.Groups.FullExpand;
//    cxGrid1DBTableView5.DataController.Groups.FullExpand;
end;

end.
