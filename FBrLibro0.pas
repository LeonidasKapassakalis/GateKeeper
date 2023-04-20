unit FBrLibro0;

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
  cxGridDBTableView, Common, cxGrid, DateUtils,
  DMain, FFilterEnDev, Datasnap.DBClient;

type
  TfrmBrLibro0 = class(TfrmBaseRep)
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
    ClientDataSet1: TClientDataSet;
    ADOQuery1: TADOQuery;
    ADOQuery1Res: TLargeintField;
    ClientDataSet1Id: TIntegerField;
    ClientDataSet1DateStart: TDateTimeField;
    ClientDataSet1DateEnd: TDateTimeField;
    ClientDataSet1Calc: TIntegerField;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableView1DateStart: TcxGridDBColumn;
    cxGrid1DBTableView1DateEnd: TcxGridDBColumn;
    cxGrid1DBTableView1Calc: TcxGridDBColumn;
    ADOQuery2: TADOQuery;
    ADOQuery2GId: TGuidField;
    ADOQuery2LibId: TIntegerField;
    ADOQuery2LibDateTime: TDateTimeField;
    ADOQuery2LibRegNo: TWideStringField;
    ADOQuery2LibWeight: TIntegerField;
    ADOQuery2LibWeight1: TIntegerField;
    ADOQuery2LibWeight2: TIntegerField;
    ADOQuery2LibWeight0: TIntegerField;
    ADOQuery2ArThes: TIntegerField;
    ADOQuery2Error: TBooleanField;
    ADOQuery2Used: TBooleanField;
    DataSource2: TDataSource;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2GId: TcxGridDBColumn;
    cxGrid1DBTableView2LibId: TcxGridDBColumn;
    cxGrid1DBTableView2LibDateTime: TcxGridDBColumn;
    cxGrid1DBTableView2LibRegNo: TcxGridDBColumn;
    cxGrid1DBTableView2LibWeight: TcxGridDBColumn;
    cxGrid1DBTableView2LibWeight1: TcxGridDBColumn;
    cxGrid1DBTableView2LibWeight2: TcxGridDBColumn;
    cxGrid1DBTableView2LibWeight0: TcxGridDBColumn;
    cxGrid1DBTableView2ArThes: TcxGridDBColumn;
    cxGrid1DBTableView2Error: TcxGridDBColumn;
    cxGrid1DBTableView2Used: TcxGridDBColumn;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1DBTableView3: TcxGridDBTableView;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    ClientDataSet1Day: TIntegerField;
    ADOQuery3GId: TGuidField;
    ADOQuery3LibId: TIntegerField;
    ADOQuery3LibDateTime: TDateTimeField;
    ADOQuery3LibRegNo: TWideStringField;
    ADOQuery3LibWeight: TIntegerField;
    ADOQuery3LibWeight1: TIntegerField;
    ADOQuery3LibWeight2: TIntegerField;
    ADOQuery3LibWeight0: TIntegerField;
    ADOQuery3ArThes: TIntegerField;
    ADOQuery3Error: TBooleanField;
    ADOQuery3Used: TBooleanField;
    cxGrid1DBTableView3GId: TcxGridDBColumn;
    cxGrid1DBTableView3LibId: TcxGridDBColumn;
    cxGrid1DBTableView3LibDateTime: TcxGridDBColumn;
    cxGrid1DBTableView3LibRegNo: TcxGridDBColumn;
    cxGrid1DBTableView3LibWeight: TcxGridDBColumn;
    cxGrid1DBTableView3LibWeight1: TcxGridDBColumn;
    cxGrid1DBTableView3LibWeight2: TcxGridDBColumn;
    cxGrid1DBTableView3LibWeight0: TcxGridDBColumn;
    cxGrid1DBTableView3ArThes: TcxGridDBColumn;
    cxGrid1DBTableView3Error: TcxGridDBColumn;
    cxGrid1DBTableView3Used: TcxGridDBColumn;
    cxGrid1DBTableView3ACDay: TcxGridDBColumn;
    ADOQuery3ACDay: TFloatField;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView2DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    IniDate:TDateTime;
    SelDone:Boolean;
  end;

implementation

{$R *.dfm}

uses FMain;

procedure TfrmBrLibro0.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
   cxGrid1Level1.Visible := False;
   cxGrid1Level2.Visible := True;
end;

procedure TfrmBrLibro0.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
   cxGrid1Level1.Visible := False;
   cxGrid1Level2.Visible := True;
end;

procedure TfrmBrLibro0.cxGrid1DBTableView2CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
   cxGrid1Level2.Visible := False;
   cxGrid1Level1.Visible := True;
end;

procedure TfrmBrLibro0.cxGrid1DBTableView2DblClick(Sender: TObject);
begin
  inherited;
   cxGrid1Level2.Visible := False;
   cxGrid1Level1.Visible := True;
end;

procedure TfrmBrLibro0.FormActivate(Sender: TObject);
var frm:TfrmFilterEnDev;
    TmpSql:string;
    x:Integer;
    myDateTime, newTimeStart, newTimeEnd : TDateTime;
    FromDateTime, ToDateTime: TDateTime;
begin
  inherited;
  if SelDone then
     exit;

//  TmpSql:=qryMai        frm.cxGrid1Level2.Visible := True;n.SQL.Text;
//  qryMain.SQL.Add(' Where Libid = 0');
//  qryMain.Active:=True;
//  frm:=TfrmFilterEnDev.CreateWithParam(Self,cxGrid1DBTableView1,TDataModule(Self),True,'Κριτήρια Εκτύπωσης Εξωτερικού Στόλου');
//  frm.ShowModal;
//  if frm.ModalResult = mrCancel then
//    begin
//      frm.Free;
//      Self.Close;
//      Exit;
//    end;
////  frm.ShowModal;
//  SelDone:=True;
//  if frm.KSleo > '' then
//    begin
//      qryMain.Active:=False;
//      qryMain.SQL.Clear;
//      qryMain.SQL.Add(TmpSql+' Where '+frm.Ksleo);
//      qryMain.Active:=True;
//    end
//  else
//    begin
//    if MessageDlg('Θα εμφανιστουν ΟΛΕΣ οι Καταχωρήσεις.', mtInformation, [mbYes, mbNo], 0) =mrYes then
//       begin
//         qryMain.Active:=False;
//         qryMain.SQL.Clear;
//         qryMain.SQL.Add(TmpSql);
//         qryMain.Active:=True;
//       end;
//    end;
//  frm.Free;

    FromDateTime:=Now();
    ToDateTime:=Now();

    if FormDateTitle(Self,FromDateTime,'Απο Ημερομηνία',csDate) = mrOk then
       if FormDateTitle(Self,ToDateTime,'Έως Ημερομηνία',csDate) = mrOk then
       else
         Exit
    else
        Exit;


    newTimeStart := EncodeTime(0, 0, 1, 0);
    newTimeEnd   := EncodeTime(23, 59 , 59, 0);

//  ReplaceTime(myDateTime, newTime);

    x:=0;
    ClientDataSet1.Active:=True;
    repeat
    ClientDataSet1.Insert;
    ClientDataSet1.Edit;
    ClientDataSet1Id.AsInteger         := x;
    myDateTime:=ToDateTime-x;
    ReplaceTime(myDateTime,newTimeStart);
    ClientDataSet1DateStart.AsDateTime := myDateTime;
    ClientDataSet1Day.AsInteger        := Round(myDateTime);
    myDateTime:=ToDateTime-x;
    ReplaceTime(myDateTime,newTimeEnd);
    ClientDataSet1DateEnd.AsDateTime   := myDateTime;

//    ClientDataSet1.Post;
//    ADOQuery1.Active := True;
//    ClientDataSet1.Edit;
//    ClientDataSet1Calc.AsInteger := ADOQuery1Res.AsInteger;
//    ADOQuery1.Active := False;
    ClientDataSet1.Post;
//    ToDateTime:=IncDay(ToDateTime,-1);
    inc(x)
    until (ToDateTime-x)<=FromDateTime;

    ADOQuery1.Active := True;
    ClientDataSet1.First;
    repeat
        ClientDataSet1.Edit;
        ClientDataSet1Calc.AsInteger := ADOQuery1Res.AsInteger;
        ClientDataSet1.Post;
        ClientDataSet1.Next;
    until ClientDataSet1.Eof;

  ADOQuery2.Active := True;
  ADOQuery3.Active := True;

  cxGrid1DBTableView1.DataController.Groups.FullCollapse;

end;

procedure TfrmBrLibro0.FormCreate(Sender: TObject);
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
