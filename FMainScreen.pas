unit FMainScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FBaseDev0, Vcl.ActnList, Vcl.Menus,
  Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,

  FBaseRep, FBRPersons, FBROther, FBROur, ShellApi, Printers,

  DMainScreen, FPersonDet, FOtherCarsDet, FOurCarsDet, FWorkersDet,
  Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ImgList, cxCheckBox, cxImageComboBox, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Vcl.ExtDlgs, Vcl.StdCtrls;

type
  TfrmMainScreen = class(TfrmBaseDev0)
    actNewPerson: TAction;
    actEditPerson: TAction;
    actNewCarOther: TAction;
    actEditCarOther: TAction;
    actEditCarOur: TAction;
    actNewCarOur: TAction;
    ImageList1: TImageList;
    actRefresh: TAction;
    Panel2: TPanel;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton3: TToolButton;
    MainMenu1: TMainMenu;
    actNewCarOther1: TMenuItem;
    actNewCarOur1: TMenuItem;
    actNewPerson1: TMenuItem;
    actNew: TAction;
    N1: TMenuItem;
    actReport1: TAction;
    actReport2: TAction;
    actReport3: TAction;
    actReport11: TAction;
    actReport21: TAction;
    actReport31: TAction;
    actReport22: TAction;
    actReport13: TAction;
    actReport14: TMenuItem;
    actReport111: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    actReport23: TAction;
    actReport32: TAction;
    actReport33: TAction;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    actReport4: TAction;
    actReport41: TAction;
    actReport43: TAction;
    actReport44: TAction;
    actReport45: TAction;
    N10: TMenuItem;
    N11: TMenuItem;
    N15: TMenuItem;
    CollapseAll1: TMenuItem;
    ExpandAll1: TMenuItem;
    cxStyle2: TcxStyle;
    ImageList2: TImageList;
    actUpLib: TAction;
    actUpLib1: TMenuItem;
    actPrmForm: TAction;
    actPrmForm1: TMenuItem;
    PrintDialog1: TPrintDialog;
    ToolButton5: TToolButton;
    actLoadImage: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    actReport24: TAction;
    actReport25: TAction;
    N16: TMenuItem;
    N17: TMenuItem;
    actReport34: TAction;
    actReport35: TAction;
    N18: TMenuItem;
    N19: TMenuItem;
    actReport12: TAction;
    actLibRep0: TAction;
    actLibRep1: TAction;
    actLibro: TAction;
    N12: TMenuItem;
    N13: TMenuItem;
    actReport13a: TAction;
    AirLift1: TMenuItem;
    PageControl1: TPageControl;
    tsOther: TTabSheet;
    tsPerson: TTabSheet;
    tsOur: TTabSheet;
    tsAll: TTabSheet;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Panel3: TPanel;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3id: TcxGridDBColumn;
    cxGridDBTableView3DateIn: TcxGridDBColumn;
    cxGridDBTableView3DateTimeIn: TcxGridDBColumn;
    cxGridDBTableView3DrvName: TcxGridDBColumn;
    cxGridDBTableView3RegNo: TcxGridDBColumn;
    cxGridDBTableView3CarOwner: TcxGridDBColumn;
    cxGridDBTableView3ProcedureState: TcxGridDBColumn;
    cxGridDBTableView3Company: TcxGridDBColumn;
    cxGridDBTableView3LTypeDrom: TcxGridDBColumn;
    cxGridDBTableView3TimeInS: TcxGridDBColumn;
    cxGridDBTableView3DA_Num: TcxGridDBColumn;
    cxGridDBTableView3Products: TcxGridDBColumn;
    cxGridDBTableView3WithoutWeight: TcxGridDBColumn;
    cxGridDBTableView3DateTimeOut: TcxGridDBColumn;
    cxGridDBTableView3InsUsr: TcxGridDBColumn;
    cxGridDBTableView3InsDT: TcxGridDBColumn;
    cxGridDBTableView3InUsr: TcxGridDBColumn;
    cxGridDBTableView3OutUsr: TcxGridDBColumn;
    cxGridDBTableView3FullFilled: TcxGridDBColumn;
    cxGridDBTableView3FullFilledDT: TcxGridDBColumn;
    cxGridDBTableView3FullFilledUsr: TcxGridDBColumn;
    cxGridDBTableView3Comments: TcxGridDBColumn;
    cxGridDBTableView3CalcWeight: TcxGridDBColumn;
    cxGridDBTableView3Noted: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel8: TPanel;
    Image3: TImage;
    Panel4: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1DateIn: TcxGridDBColumn;
    cxGridDBTableView1DateTimeIn: TcxGridDBColumn;
    cxGridDBTableView1Name: TcxGridDBColumn;
    cxGridDBTableView1WithCar: TcxGridDBColumn;
    cxGridDBTableView1CarNumber: TcxGridDBColumn;
    cxGridDBTableView1Company: TcxGridDBColumn;
    cxGridDBTableView1IdentityNo: TcxGridDBColumn;
    cxGridDBTableView1Reason: TcxGridDBColumn;
    cxGridDBTableView1ContactWith: TcxGridDBColumn;
    cxGridDBTableView1TimeInS: TcxGridDBColumn;
    cxGridDBTableView1DateTimeOut: TcxGridDBColumn;
    cxGridDBTableView1InsUsr: TcxGridDBColumn;
    cxGridDBTableView1InsDT: TcxGridDBColumn;
    cxGridDBTableView1InUsr: TcxGridDBColumn;
    cxGridDBTableView1OutUsr: TcxGridDBColumn;
    cxGridDBTableView1FullFilled: TcxGridDBColumn;
    cxGridDBTableView1FullFilledDT: TcxGridDBColumn;
    cxGridDBTableView1Comments: TcxGridDBColumn;
    cxGridDBTableView1CardNumber: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel6: TPanel;
    Image1: TImage;
    Panel5: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2id: TcxGridDBColumn;
    cxGridDBTableView2DateIn: TcxGridDBColumn;
    cxGridDBTableView2DateTimeIn: TcxGridDBColumn;
    cxGridDBTableView2LDrvName: TcxGridDBColumn;
    cxGridDBTableView2LReg: TcxGridDBColumn;
    cxGridDBTableView2LComp: TcxGridDBColumn;
    cxGridDBTableView2LTypeDrom: TcxGridDBColumn;
    cxGridDBTableView2TimeInS: TcxGridDBColumn;
    cxGridDBTableView2RegNoId: TcxGridDBColumn;
    cxGridDBTableView2ProcedureState: TcxGridDBColumn;
    cxGridDBTableView2FriendCar: TcxGridDBColumn;
    cxGridDBTableView2DrvNameId: TcxGridDBColumn;
    cxGridDBTableView2CompanyId: TcxGridDBColumn;
    cxGridDBTableView2DA_Num: TcxGridDBColumn;
    cxGridDBTableView2Products: TcxGridDBColumn;
    cxGridDBTableView2WithoutWeight: TcxGridDBColumn;
    cxGridDBTableView2DateTimeOut: TcxGridDBColumn;
    cxGridDBTableView2InsUsr: TcxGridDBColumn;
    cxGridDBTableView2InsDT: TcxGridDBColumn;
    cxGridDBTableView2InUsr: TcxGridDBColumn;
    cxGridDBTableView2OutUsr: TcxGridDBColumn;
    cxGridDBTableView2FullFilled: TcxGridDBColumn;
    cxGridDBTableView2FullFilledDT: TcxGridDBColumn;
    cxGridDBTableView2Comments: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel7: TPanel;
    Image2: TImage;
    Panel9: TPanel;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    Panel10: TPanel;
    Image4: TImage;
    Panel11: TPanel;
    cxGrid5: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    Panel12: TPanel;
    Image5: TImage;
    Panel13: TPanel;
    cxGrid6: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridDBColumn63: TcxGridDBColumn;
    cxGridDBColumn64: TcxGridDBColumn;
    cxGridDBColumn65: TcxGridDBColumn;
    cxGridDBColumn66: TcxGridDBColumn;
    cxGridDBColumn67: TcxGridDBColumn;
    cxGridDBColumn68: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    Panel14: TPanel;
    Image6: TImage;
    ClearImage1: TMenuItem;
    tsAirLiift: TTabSheet;
    Panel15: TPanel;
    cxGrid7: TcxGrid;
    cxGridDBTableView7: TcxGridDBTableView;
    cxGridDBColumn69: TcxGridDBColumn;
    cxGridDBColumn70: TcxGridDBColumn;
    cxGridDBColumn71: TcxGridDBColumn;
    cxGridDBColumn72: TcxGridDBColumn;
    cxGridDBColumn73: TcxGridDBColumn;
    cxGridDBColumn74: TcxGridDBColumn;
    cxGridDBColumn75: TcxGridDBColumn;
    cxGridDBColumn76: TcxGridDBColumn;
    cxGridDBColumn77: TcxGridDBColumn;
    cxGridDBColumn78: TcxGridDBColumn;
    cxGridDBColumn79: TcxGridDBColumn;
    cxGridDBColumn80: TcxGridDBColumn;
    cxGridDBColumn81: TcxGridDBColumn;
    cxGridDBColumn82: TcxGridDBColumn;
    cxGridDBColumn83: TcxGridDBColumn;
    cxGridDBColumn84: TcxGridDBColumn;
    cxGridDBColumn85: TcxGridDBColumn;
    cxGridDBColumn86: TcxGridDBColumn;
    cxGridDBColumn87: TcxGridDBColumn;
    cxGridDBColumn88: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    Panel16: TPanel;
    Image7: TImage;
    actNewWorker: TAction;
    actEditWorker: TAction;
    actEditWorker1: TMenuItem;
    ToolButton6: TToolButton;
    tsContractors: TTabSheet;
    Panel17: TPanel;
    cxGrid8: TcxGrid;
    cxGridDBTableView8: TcxGridDBTableView;
    cxGridLevel7: TcxGridLevel;
    Panel18: TPanel;
    Image8: TImage;
    cxGridDBTableView8id: TcxGridDBColumn;
    cxGridDBTableView8DateIn: TcxGridDBColumn;
    cxGridDBTableView8Name: TcxGridDBColumn;
    cxGridDBTableView8Reason: TcxGridDBColumn;
    cxGridDBTableView8CarNumber: TcxGridDBColumn;
    cxGridDBTableView8WithCar: TcxGridDBColumn;
    cxGridDBTableView8TimeInS: TcxGridDBColumn;
    cxGridDBTableView8DateTimeIn: TcxGridDBColumn;
    cxGridDBTableView8DateTimeOut: TcxGridDBColumn;
    cxGridDBTableView8InsUsr: TcxGridDBColumn;
    cxGridDBTableView8InsDT: TcxGridDBColumn;
    cxGridDBTableView8InUsr: TcxGridDBColumn;
    cxGridDBTableView8OutUsr: TcxGridDBColumn;
    cxGridDBTableView8FullFilled: TcxGridDBColumn;
    cxGridDBTableView8FullFilledDT: TcxGridDBColumn;
    cxGridDBTableView8Comments: TcxGridDBColumn;
    cxGridDBTableView8CardNumber: TcxGridDBColumn;
    cxGridDBTableView8Contractors_Id: TcxGridDBColumn;
    cxGridDBTableView8Contractors_Workers_Id: TcxGridDBColumn;
    cxGridDBTableView8Surname: TcxGridDBColumn;
    cxGridDBTableView8ADT: TcxGridDBColumn;
    cxGridDBTableView8FullFilledUsr: TcxGridDBColumn;
    cxGridDBTableView8DTime: TcxGridDBColumn;
    cxGridDBTableView8Contact: TcxGridDBColumn;
    cxGridDBTableView8Company: TcxGridDBColumn;
    cxGridDBTableView8Reason_Id: TcxGridDBColumn;
    cxGridDBTableView8Contact_Id: TcxGridDBColumn;
    cxGridDBTableView8Contractors: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView2CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView3CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actNewPersonExecute(Sender: TObject);
    procedure actEditPersonExecute(Sender: TObject);
    procedure actNewWorkerExecute(Sender: TObject);
    procedure actEditWorkerExecute(Sender: TObject);
    procedure actNewCarOtherExecute(Sender: TObject);
    procedure actEditCarOtherExecute(Sender: TObject);
    procedure actEditCarOurExecute(Sender: TObject);
    procedure actNewCarOurExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure PanelLabelDblClick(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure actReport1Execute(Sender: TObject);
    procedure actReport2Execute(Sender: TObject);
    procedure actReport3Execute(Sender: TObject);
    procedure actReport011Execute(Sender: TObject);
    procedure actReport11Execute(Sender: TObject);
    procedure actReport21Execute(Sender: TObject);
    procedure actReport31Execute(Sender: TObject);
    procedure actReport22Execute(Sender: TObject);
    procedure actReport13Execute(Sender: TObject);
    procedure CollapseAll1Click(Sender: TObject);
    procedure ExpandAll1Click(Sender: TObject);
    procedure actReport41Execute(Sender: TObject);
    procedure actReport4Execute(Sender: TObject);
    procedure actUpLibExecute(Sender: TObject);
    procedure actReport23Execute(Sender: TObject);
    procedure actReport24Execute(Sender: TObject);
    procedure actReport25Execute(Sender: TObject);
    procedure actReport32Execute(Sender: TObject);
    procedure actReport33Execute(Sender: TObject);
    procedure actPrmFormExecute(Sender: TObject);
    procedure actLoadImageClick(Sender: TObject);
    procedure actReport34Execute(Sender: TObject);
    procedure actReport35Execute(Sender: TObject);
    procedure actReport12Execute(Sender: TObject);
    procedure actReport44Execute(Sender: TObject);
    procedure actLibRep0Execute(Sender: TObject);
    procedure actLibRep1Execute(Sender: TObject);
    procedure actLibroExecute(Sender: TObject);
    procedure actReport13aExecute(Sender: TObject);
    procedure ClearImage1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxGridDBTableView8CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    DM: TDMMainScreen;
    State: Integer; { 0=εισαγωγή, 1=μεταβολή... }
    Created: Boolean;
    procedure ExecLibClick;
    procedure PrintForm;
    procedure PrintForm1;
    procedure PrintForm2;
    procedure UpdateImageMain(GridName, FileName: String);
    procedure LoadImageMain;
    procedure LoadImage(tmp: TcxGridDBTableView; FileName: String);
  public
    procedure sactEditPersons(Insert: Boolean = True; Edit: Boolean = False; Id: Integer = 0);
    procedure sactEditOurCars(Insert: Boolean = True; Edit: Boolean = False; Id: Integer = 0);
    procedure sactEditOtherCars(Insert: Boolean = True; Edit: Boolean = False; Id: Integer = 0);
    procedure sactEditWorkers(Insert: Boolean = True; Edit: Boolean = False; Id: Integer = 0);
    { Public declarations }
  end;

var
  frmMainScreen: TfrmMainScreen;

implementation

{$R *.dfm}

uses FMain, DMain;

procedure TfrmMainScreen.actEditCarOtherExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmMainScreen.actEditCarOurExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmMainScreen.actEditPersonExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmMainScreen.actEditWorkerExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmMainScreen.actLibRep0Execute(Sender: TObject);
begin
  inherited;
  frmmain.actRepLib0Execute(self);
end;

procedure TfrmMainScreen.actLibRep1Execute(Sender: TObject);
begin
  inherited;
  frmmain.actRepLib1Execute(self);
end;

procedure TfrmMainScreen.actLibroExecute(Sender: TObject);
begin
  inherited;
  frmmain.actSubParamNoWrapExecute(TAction(Sender).HelpKeyword);
end;

procedure TfrmMainScreen.actLoadImageClick(Sender: TObject);
var
  ABitmapOrig, ABitmap: TBitmap;
  ARect: TRect;
begin
  inherited;
  if OpenPictureDialog1.Execute then
    begin
      ABitmapOrig := TBitmap.Create;
      try
        ABitmapOrig.LoadFromFile(OpenPictureDialog1.FileName);
        PopupcxGridDBTableView.BackgroundBitmaps.Background.Assign(ABitmapOrig);
        UpdateImageMain(PopupcxGridDBTableView.Name,OpenPictureDialog1.FileName);
       // PopupcxGridDBTableView.BackgroundBitmaps.Content.Assign(ABitmapOrig);
      finally
        ABitmapOrig.Free;
      end;
    end;
end;

procedure TfrmMainScreen.actNewExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmMainScreen.actNewCarOtherExecute(Sender: TObject);
begin
  sactEditOtherCars;
  DM.VL_Company.Requery();
  DM.VL_Drivers.Requery();
  DM.qryBrCarNoFriend.Requery();
  if frmmain.chkMoveDetailTabs.Checked then
    PageControl1.ActivePage := tsOther;
end;

procedure TfrmMainScreen.actNewCarOurExecute(Sender: TObject);
begin
  sactEditOurCars;
  DM.VL_Company.Requery();
  DM.VL_Drivers.Requery();
  DM.qryBrCarFriend.Requery();
  if frmmain.chkMoveDetailTabs.Checked then
    PageControl1.ActivePage := tsOur;
end;

procedure TfrmMainScreen.actNewPersonExecute(Sender: TObject);
begin
  sactEditPersons;
  DM.VL_Company.Requery();
  DM.VL_Drivers.Requery();
  DM.qryBrWorkers.Requery();
  DM.qryBrPersons.Requery();
  DM.qryAirlift.Requery();
  if frmmain.chkMoveDetailTabs.Checked then
    PageControl1.ActivePage := tsPerson;
end;

procedure TfrmMainScreen.actNewWorkerExecute(Sender: TObject);
begin
//Leonidas
  sactEditWorkers;
//  DM.VL_Company.Requery();
//  DM.VL_Drivers.Requery();
  DM.qryBrWorkers.Requery();
  cxGridDBTableView8.DataController.Groups.FullExpand;
  if frmmain.chkMoveDetailTabs.Checked then
    PageControl1.ActivePage := tsContractors;
end;

procedure TfrmMainScreen.actPrmFormExecute(Sender: TObject);
begin
  inherited;
  if PrintDialog1.Execute then
    begin
      self.PrintScale := poPrintToFit;
      self.Print;
    end;
  // PrintForm;
end;

procedure TfrmMainScreen.PrintForm;
var
  i, j: Integer;
  linesize: Integer;
  textsize: Integer;
  pagesize: Integer;
  hmargin, vmargin: Integer;
begin
  // if PrintDialog1.Execute then begin
  // Printer.Title := 'Sample Text File Printer';
  // Printer.Canvas.Font := Memo1.Font;
  // pagesize := Printer.PageHeight;
  // for j := 1 to Printer.Copies do
  // begin
  // Printer.BeginDoc;
  // hmargin := GetDeviceCaps(Printer.Canvas.Handle, LOGPIXELSX) -
  // GetDeviceCaps(Printer.Canvas.Handle, PHYSICALOFFSETX);
  // vmargin := GetDeviceCaps(Printer.Canvas.Handle, LOGPIXELSY) -
  // GetDeviceCaps(Printer.Canvas.Handle, PHYSICALOFFSETY);
  // StatusLabel.Caption := 'Printing Page ' + IntToStr(Printer.PageNumber);
  // linesize := vmargin;
  // for i := 0 to Memo1.Lines.Count-1 do
  // begin
  // textsize := Printer.Canvas.TextHeight(Memo1.Lines.Strings[i]);
  // if linesize+textsize+vmargin >= pagesize then
  // begin
  // Printer.NewPage;
  // StatusLabel.Caption := 'Printing Page ' + IntToStr(Printer.PageNumber);
  // linesize := vmargin;
  // end;
  // Printer.Canvas.TextOut(hmargin, linesize, Memo1.Lines.Strings[i]);
  // inc(linesize, textsize);
  // end;
  // Printer.EndDoc;
  // end;
  // StatusLabel.Caption := 'File Printed.';
  // end;
end;

procedure TfrmMainScreen.PrintForm1;
begin
  // Printer.StartDoc;
  // Printer.BeginDoc;
  // frmMainScreen.print(Printer.canvas.handle);
  // printer.EndDoc;
  //
  // printer.StartDoc;
  // SetViewPortExtEx(printer.canvas.handle,2,2,pointer(0)); // Stretch by two
  // form.PrintTo(printer.canvas.handle);
  // printer.EndDoc;
end;

procedure TfrmMainScreen.PrintForm2;
var
  DC: HDC;
  isDcPalDevice: Bool;
  MemDC: HDC;
  MemBitmap: HBITMAP;
  OldMemBitmap: HBITMAP;
  hDibHeader: THandle;
  pDibHeader: Pointer;
  hBits: THandle;
  pBits: Pointer;
  ScaleX: Double;
  ScaleY: Double;
  pPal: PLOGPALETTE;
  pal: HPALETTE;
  OldPal: HPALETTE;
  i: Integer;
begin
  { Get the screen dc }
  DC := GetDC(0);
  { Create a compatible dc }
  MemDC := CreateCompatibleDC(DC);
  { create a bitmap }
  MemBitmap := CreateCompatibleBitmap(DC, self.Width, self.Height);
  { select the bitmap into the dc }
  OldMemBitmap := SelectObject(MemDC, MemBitmap);

  { Lets prepare to try a fixup for broken video drivers }
  isDcPalDevice := False;
  if GetDeviceCaps(DC, RASTERCAPS) and RC_PALETTE = RC_PALETTE then
    begin
      GetMem(pPal, SizeOf(TLOGPALETTE) + (255 * SizeOf(TPALETTEENTRY)));
      FillChar(pPal^, SizeOf(TLOGPALETTE) + (255 * SizeOf(TPALETTEENTRY)), #0);
      pPal^.palVersion    := $300;
      pPal^.palNumEntries := GetSystemPaletteEntries(DC, 0, 256, pPal^.palPalEntry);
      if pPal^.palNumEntries <> 0 then
        begin
          pal           := CreatePalette(pPal^);
          OldPal        := SelectPalette(MemDC, pal, False);
          isDcPalDevice := True
        end
      else
        FreeMem(pPal, SizeOf(TLOGPALETTE) + (255 * SizeOf(TPALETTEENTRY)));
    end;
  { copy from the screen to the memdc/bitmap }
  BitBlt(MemDC, 0, 0, self.Width, self.Height, DC, self.Left, self.Top, SRCCOPY);

  if isDcPalDevice = True then
    begin
      SelectPalette(MemDC, OldPal, False);
      DeleteObject(pal);
    end;
  { unselect the bitmap }
  SelectObject(MemDC, OldMemBitmap);
  { delete the memory dc }
  DeleteDC(MemDC);
  { Allocate memory for a DIB structure }
  hDibHeader := GlobalAlloc(GHND, SizeOf(TBITMAPINFO) + (SizeOf(TRGBQUAD) * 256));
  { get a pointer to the alloced memory }
  pDibHeader := GlobalLock(hDibHeader);

  { fill in the dib structure with info on the way we want the DIB }
  FillChar(pDibHeader^, SizeOf(TBITMAPINFO) + (SizeOf(TRGBQUAD) * 256), #0);
  PBITMAPINFOHEADER(pDibHeader)^.biSize        := SizeOf(TBITMAPINFOHEADER);
  PBITMAPINFOHEADER(pDibHeader)^.biPlanes      := 1;
  PBITMAPINFOHEADER(pDibHeader)^.biBitCount    := 8;
  PBITMAPINFOHEADER(pDibHeader)^.biWidth       := self.Width;
  PBITMAPINFOHEADER(pDibHeader)^.biHeight      := self.Height;
  PBITMAPINFOHEADER(pDibHeader)^.biCompression := BI_RGB;

  { find out how much memory for the bits }
  GetDIBits(DC, MemBitmap, 0, self.Height, nil, TBITMAPINFO(pDibHeader^), DIB_RGB_COLORS);

  { Alloc memory for the bits }
  hBits := GlobalAlloc(GHND, PBITMAPINFOHEADER(pDibHeader)^.BiSizeImage);

  { Get a pointer to the bits }
  pBits := GlobalLock(hBits);

  { Call fn again, but this time give us the bits! }
  GetDIBits(DC, MemBitmap, 0, self.Height, pBits, PBitmapInfo(pDibHeader)^, DIB_RGB_COLORS);

  { Lets try a fixup for broken video drivers }
  if isDcPalDevice = True then
    begin
      for i := 0 to (pPal^.palNumEntries - 1) do
        begin
          PBitmapInfo(pDibHeader)^.bmiColors[i].rgbRed   := pPal^.palPalEntry[i].peRed;
          PBitmapInfo(pDibHeader)^.bmiColors[i].rgbGreen := pPal^.palPalEntry[i].peGreen;
          PBitmapInfo(pDibHeader)^.bmiColors[i].rgbBlue  := pPal^.palPalEntry[i].peBlue;
        end;
      FreeMem(pPal, SizeOf(TLOGPALETTE) + (255 * SizeOf(TPALETTEENTRY)));
    end;
  { Release the screen dc }
  ReleaseDC(0, DC);
  { Delete the bitmap }
  DeleteObject(MemBitmap);

  { Start print job }
  Printer.BeginDoc;

  { Scale print size }
  ScaleX := self.Width * 3;
  ScaleY := self.Height * 3;

  {
    if Printer.PageWidth < Printer.PageHeight then
    begin
    ScaleX := Printer.PageWidth;
    ScaleY := Self.Height*(Printer.PageWidth/Self.Width);
    end
    else
    begin
    ScaleX := Self.Width*(Printer.PageHeight/Self.Height);
    ScaleY := Printer.PageHeight;
    end;
  }

  { Just incase the printer drver is a palette device }
  isDcPalDevice := False;
  if GetDeviceCaps(Printer.Canvas.Handle, RASTERCAPS) and RC_PALETTE = RC_PALETTE then
    begin
      { Create palette from dib }
      GetMem(pPal, SizeOf(TLOGPALETTE) + (255 * SizeOf(TPALETTEENTRY)));
      FillChar(pPal^, SizeOf(TLOGPALETTE) + (255 * SizeOf(TPALETTEENTRY)), #0);
      pPal^.palVersion    := $300;
      pPal^.palNumEntries := 256;
      for i               := 0 to (pPal^.palNumEntries - 1) do
        begin
          pPal^.palPalEntry[i].peRed   := PBitmapInfo(pDibHeader)^.bmiColors[i].rgbRed;
          pPal^.palPalEntry[i].peGreen := PBitmapInfo(pDibHeader)^.bmiColors[i].rgbGreen;
          pPal^.palPalEntry[i].peBlue  := PBitmapInfo(pDibHeader)^.bmiColors[i].rgbBlue;
        end;
      pal := CreatePalette(pPal^);
      FreeMem(pPal, SizeOf(TLOGPALETTE) + (255 * SizeOf(TPALETTEENTRY)));
      OldPal        := SelectPalette(Printer.Canvas.Handle, pal, False);
      isDcPalDevice := True
    end;
  { send the bits to the printer }
  StretchDiBits(Printer.Canvas.Handle, 0, 0, Round(ScaleX), Round(ScaleY), 0, 0, self.Width, self.Height, pBits, PBitmapInfo(pDibHeader)^, DIB_RGB_COLORS, SRCCOPY);

  { Just incase you printer drver is a palette device }
  if isDcPalDevice = True then
    begin
      SelectPalette(Printer.Canvas.Handle, OldPal, False);
      DeleteObject(pal);
    end;
  { Clean up allocated memory }
  GlobalUnlock(hBits);
  GlobalFree(hBits);
  GlobalUnlock(hDibHeader);
  GlobalFree(hDibHeader);

  { end the print job }
  Printer.EndDoc;
end;

procedure TfrmMainScreen.actRefreshExecute(Sender: TObject);
begin
  inherited;
  DM.VL_RegNo.Requery();
  DM.VL_Company.Requery();
  DM.VL_Drivers.Requery();
  DM.qryBrPersons.Requery();
  DM.qryBrCarFriend.Requery();
  DM.qryBrCarNoFriend.Requery();
  DM.qryBrWorkers.Requery();
  DM.qryAirlift.Requery();

  // cxGridDBTableView1.ViewData.Collapse(True);
  // cxGridDBTableView2.ViewData.Collapse(False);
  // cxGridDBTableView3.ViewData.Collapse(False);

  cxGridDBTableView1.DataController.Groups.FullExpand;
  cxGridDBTableView2.DataController.Groups.FullExpand;
  cxGridDBTableView3.DataController.Groups.FullExpand;
  cxGridDBTableView4.DataController.Groups.FullExpand;
  cxGridDBTableView5.DataController.Groups.FullExpand;
  cxGridDBTableView6.DataController.Groups.FullExpand;
  cxGridDBTableView7.DataController.Groups.FullExpand;
  cxGridDBTableView8.DataController.Groups.FullExpand;
end;

procedure TfrmMainScreen.ExecLibClick;
var
  sCmd, sCmd1: String;
Begin
  sCmd  := Pwidechar('UpdLib.bat');
  sCmd1 := 'UpdLib.bat';
  if LoginGroup = 0 then
    ShellExecute(0, 'open', PChar(sCmd1), '', nil, SW_NORMAL)
  else
    ShellExecute(0, 'open', PChar(sCmd1), '', nil, SW_HIDE);
end;

procedure TfrmMainScreen.actReport11Execute(Sender: TObject);
begin
  inherited;
  MessageDlg('Function "' + TAction(Sender).Name + '" not implemented.', mtInformation, [mbOK], 0); //
end;

procedure TfrmMainScreen.actReport12Execute(Sender: TObject);
begin
  inherited;
  frmmain.actReport12Execute(self);
end;

procedure TfrmMainScreen.actReport011Execute(Sender: TObject);
begin
  frmmain.actReport011Execute(self);
end;
// var
// frm: TfrmBRPersons;
// begin
// if DMMain.FindSecurity('TfrmBRPersons', LoginGroup, FormID) then
// begin
// frm := TfrmBRPersons.CreateSecurity(Self, FormID);
// try
/// /        frm.qryMain.Active := True;
// frm.ShowModal;
// finally
// frm.Free;
// DMMain.UpdSecurity('TfrmBRPersons');
// end;
// end
// else
// MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
// end;

procedure TfrmMainScreen.actReport21Execute(Sender: TObject);
begin
  frmmain.actReport21Execute(self);
end;

procedure TfrmMainScreen.actReport22Execute(Sender: TObject);
begin
  // FrmMain.actReport22Execute(Self);
  frmmain.actRepLib0Execute(self);
end;

procedure TfrmMainScreen.actReport23Execute(Sender: TObject);
begin
  frmmain.actReport23Execute(self);
end;

procedure TfrmMainScreen.actReport24Execute(Sender: TObject);
begin
  frmmain.actReport24Execute(self);
end;

procedure TfrmMainScreen.actReport25Execute(Sender: TObject);
begin
  frmmain.actReport25Execute(self);
end;

procedure TfrmMainScreen.actReport3Execute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmMainScreen.actReport31Execute(Sender: TObject);
begin
  frmmain.actReport31Execute(self);
end;

procedure TfrmMainScreen.actReport32Execute(Sender: TObject);
begin
  frmmain.actReport32Execute(self);
end;

procedure TfrmMainScreen.actReport33Execute(Sender: TObject);
begin
  frmmain.actReport33Execute(self);
end;

procedure TfrmMainScreen.actReport34Execute(Sender: TObject);
begin
  inherited;
  frmmain.actReport34Execute(self);
end;

procedure TfrmMainScreen.actReport35Execute(Sender: TObject);
begin
  inherited;
  frmmain.actReport35Execute(self);
end;

procedure TfrmMainScreen.actReport13aExecute(Sender: TObject);
begin
  inherited;
  frmmain.actReport13aExecute(self);
end;

procedure TfrmMainScreen.actReport13Execute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmMainScreen.actReport1Execute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmMainScreen.actReport2Execute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmMainScreen.actReport41Execute(Sender: TObject);
begin
  inherited;
  // frmMain.actSubParamNoWrapExecute(TAction(Sender).HelpKeyword);
  frmmain.actRepLib0Execute(self);
end;

procedure TfrmMainScreen.actReport44Execute(Sender: TObject);
begin
  inherited;
  frmmain.actRepLib1Execute(self);
end;

procedure TfrmMainScreen.actReport4Execute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmMainScreen.actUpLibExecute(Sender: TObject);
begin
  inherited;
  ExecLibClick;
end;

procedure TfrmMainScreen.Button1Click(Sender: TObject);
begin
  inherited;
  MessageDlg(cxGridDBColumn45.Styles.Content.Font.Name+ '' +
             IntToStr(cxGridDBColumn45.Styles.Content.Font.Charset) , mtCustom, [mbOK], 0);

end;

procedure TfrmMainScreen.cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  frm: TfrmPersonDet;
  i, Id: Integer;
begin
  Caption := ACellViewInfo.Item.Caption;
  i       := ACellViewInfo.Item.Index;
  i       := cxGridDBTableView1.FindItemByName('cxGridDBTableView1id').Index;
  Id      := ACellViewInfo.GridRecord.Values[i];
  sactEditPersons(False, True, Id);
  DM.qryBrPersons.Requery();
  DM.qryBrPersons.Locate('Id', Id, []);
end;

procedure TfrmMainScreen.cxGridDBTableView2CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  frm: TfrmOurCarsDet;
  i, Id: Integer;
begin
  inherited;
  Caption := ACellViewInfo.Item.Caption;
  i       := ACellViewInfo.Item.Index;
  i       := cxGridDBTableView2.FindItemByName('cxGridDBTableView2id').Index;
  Id      := ACellViewInfo.GridRecord.Values[i];
  sactEditOurCars(False, True, Id);
  DM.qryBrCarFriend.Requery();
  DM.qryBrCarFriend.Locate('Id', Id, []);
end;

procedure TfrmMainScreen.cxGridDBTableView3CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  frm: TfrmOtherCarsDet;
  i, Id: Integer;
begin
  inherited;
  Caption := ACellViewInfo.Item.Caption;
  i       := ACellViewInfo.Item.Index;
  i       := cxGridDBTableView3.FindItemByName('cxGridDBTableView3id').Index;
  Id      := ACellViewInfo.GridRecord.Values[i];
  sactEditOtherCars(False, True, Id);
  DM.VL_Company.Requery();
  DM.VL_Drivers.Requery();
  DM.qryBrCarNoFriend.Requery();
  DM.qryBrCarNoFriend.Locate('Id', Id, []);
end;

procedure TfrmMainScreen.cxGridDBTableView8CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  frm: TfrmWorkersDet;
  i, Id: Integer;
begin
  Caption := ACellViewInfo.Item.Caption;
  i       := ACellViewInfo.Item.Index;
  i       := cxGridDBTableView8.FindItemByName('cxGridDBTableView8id').Index;
  Id      := ACellViewInfo.GridRecord.Values[i];
  sactEditWorkers(False, True, Id);
  DM.qryBrWorkers.Requery();
  DM.qryBrWorkers.Locate('Id', Id, []);
end;

procedure TfrmMainScreen.FormCreate(Sender: TObject);
var
  x: Integer;
begin
  inherited;
  Created := False;
  DM      := TDMMainScreen.Create(self);
  PrimDM  := DM;
  SecDM   := DM;

  SetDBLookupSort;

  cxGridDBTableView1.FilterRow.Visible := False;
  cxGridDBTableView2.FilterRow.Visible := False;
  cxGridDBTableView3.FilterRow.Visible := False;
  cxGridDBTableView4.FilterRow.Visible := False;
  cxGridDBTableView5.FilterRow.Visible := False;
  cxGridDBTableView6.FilterRow.Visible := False;
  cxGridDBTableView7.FilterRow.Visible := False;
  cxGridDBTableView8.FilterRow.Visible := False;

  cxGridDBTableView1.OptionsView.Footer := False;
  cxGridDBTableView1.OptionsCustomize.ColumnsQuickCustomization := False;
  cxGridDBTableView2.OptionsView.Footer := False;
  cxGridDBTableView2.OptionsCustomize.ColumnsQuickCustomization := False;
  cxGridDBTableView3.OptionsView.Footer := False;
  cxGridDBTableView3.OptionsCustomize.ColumnsQuickCustomization := False;
  cxGridDBTableView4.OptionsView.Footer := False;
  cxGridDBTableView4.OptionsCustomize.ColumnsQuickCustomization := False;
  cxGridDBTableView5.OptionsView.Footer := False;
  cxGridDBTableView5.OptionsCustomize.ColumnsQuickCustomization := False;
  cxGridDBTableView6.OptionsView.Footer := False;
  cxGridDBTableView6.OptionsCustomize.ColumnsQuickCustomization := False;
  cxGridDBTableView7.OptionsView.Footer := False;
  cxGridDBTableView7.OptionsCustomize.ColumnsQuickCustomization := False;
  cxGridDBTableView8.OptionsView.Footer := False;
  cxGridDBTableView8.OptionsCustomize.ColumnsQuickCustomization := False;


  cxGridDBTableView1.OptionsView.Footer := False;
  cxGridDBTableView2.OptionsView.Footer := False;
  cxGridDBTableView3.OptionsView.Footer := False;
  cxGridDBTableView4.OptionsView.Footer := False;
  cxGridDBTableView5.OptionsView.Footer := False;
  cxGridDBTableView6.OptionsView.Footer := False;
  cxGridDBTableView7.OptionsView.Footer := False;
  cxGridDBTableView8.OptionsView.Footer := False;

  cxGridDBTableView1.OptionsView.GroupByBox := False;
  cxGridDBTableView2.OptionsView.GroupByBox := False;
  cxGridDBTableView3.OptionsView.GroupByBox := False;
  cxGridDBTableView4.OptionsView.GroupByBox := False;
  cxGridDBTableView5.OptionsView.GroupByBox := False;
  cxGridDBTableView6.OptionsView.GroupByBox := False;
  cxGridDBTableView7.OptionsView.GroupByBox := False;
  cxGridDBTableView8.OptionsView.GroupByBox := False;

  cxGridDBTableView1.OptionsView.Indicator := False;
  cxGridDBTableView2.OptionsView.Indicator := False;
  cxGridDBTableView3.OptionsView.Indicator := False;
  cxGridDBTableView4.OptionsView.Indicator := False;
  cxGridDBTableView5.OptionsView.Indicator := False;
  cxGridDBTableView6.OptionsView.Indicator := False;
  cxGridDBTableView7.OptionsView.Indicator := False;
  cxGridDBTableView8.OptionsView.Indicator := False;

  // cxGridDBTableView1.ViewData.Collapse(False);
  // cxGridDBTableView2.ViewData.Collapse(False);
  // cxGridDBTableView3.ViewData.Collapse(False);

  cxGridDBTableView1.DataController.Groups.FullExpand;
  cxGridDBTableView2.DataController.Groups.FullExpand;
  cxGridDBTableView3.DataController.Groups.FullExpand;
  cxGridDBTableView4.DataController.Groups.FullExpand;
  cxGridDBTableView5.DataController.Groups.FullExpand;
  cxGridDBTableView6.DataController.Groups.FullExpand;
  cxGridDBTableView7.DataController.Groups.FullExpand;
  cxGridDBTableView8.DataController.Groups.FullExpand;

  cxGridDBTableView1.OptionsBehavior.BestFitMaxRecordCount := 10;
  cxGridDBTableView1.ApplyBestFit();
  cxGridDBTableView2.OptionsBehavior.BestFitMaxRecordCount := 10;
  cxGridDBTableView2.ApplyBestFit();
  cxGridDBTableView3.OptionsBehavior.BestFitMaxRecordCount := 10;
  cxGridDBTableView3.ApplyBestFit();
  cxGridDBTableView4.OptionsBehavior.BestFitMaxRecordCount := 10;
  cxGridDBTableView4.ApplyBestFit();
  cxGridDBTableView5.OptionsBehavior.BestFitMaxRecordCount := 10;
  cxGridDBTableView5.ApplyBestFit();
  cxGridDBTableView6.OptionsBehavior.BestFitMaxRecordCount := 10;
  cxGridDBTableView6.ApplyBestFit();
  cxGridDBTableView7.OptionsBehavior.BestFitMaxRecordCount := 10;
  cxGridDBTableView7.ApplyBestFit();
  cxGridDBTableView8.OptionsBehavior.BestFitMaxRecordCount := 10;
  cxGridDBTableView8.ApplyBestFit();

  // Image1.Picture.lo
  Image1.Stretch      := True; // to make it as large as Image1
  Image1.Transparent  := True;
  Image1.Proportional := True; // to keep width/height ratio
  ImageList1.GetBitmap(2, Image1.Picture.Bitmap);

  Image2.Stretch      := True; // to make it as large as Image1
  Image2.Transparent  := True;
  Image2.Proportional := True; // to keep width/height ratio
  ImageList1.GetBitmap(12, Image2.Picture.Bitmap);

  Image3.Stretch      := True; // to make it as large as Image1
  Image3.Transparent  := True;
  Image3.Proportional := True; // to keep width/height ratio
  ImageList1.GetBitmap(13, Image3.Picture.Bitmap);

  Image4.Stretch      := True; // to make it as large as Image1
  Image4.Transparent  := True;
  Image4.Proportional := True; // to keep width/height ratio
  ImageList1.GetBitmap(13, Image4.Picture.Bitmap);

  Image5.Stretch      := True; // to make it as large as Image1
  Image5.Transparent  := True;
  Image5.Proportional := True; // to keep width/height ratio
  ImageList1.GetBitmap(2, Image5.Picture.Bitmap);

  Image6.Stretch      := True; // to make it as large as Image1
  Image6.Transparent  := True;
  Image6.Proportional := True; // to keep width/height ratio
  ImageList1.GetBitmap(12, Image6.Picture.Bitmap);



  if frmmain.chkDetailTabs.Checked then
    begin
      try
        PageControl1.ActivePageIndex := StrtoInt(Trim(frmmain.gpDefaultDetailTab));
      except
        PageControl1.ActivePage := tsOur
      end
    end
  else
    PageControl1.ActivePage := tsAll;

  LoadImageMain;

  for x := 0 to Self.ComponentCount do
  begin
  if Components[x] is TcxGrid then
     TcxGrid(Components[x]).Font.Height := 19;
  end;


  Created := True;

end;

procedure TfrmMainScreen.FormResize(Sender: TObject);
var
  h, h1: Integer;
begin
  inherited;
  h             := self.Height - 60;
  h1            := h div 5;
  Panel3.Height := h1 * 2;
  Panel4.Height := h1;
  Panel5.Height := h1 * 2;

  cxGridDBTableView1.OptionsBehavior.BestFitMaxRecordCount := 10;
  cxGridDBTableView1.ApplyBestFit();
  cxGridDBTableView2.OptionsBehavior.BestFitMaxRecordCount := 10;
  cxGridDBTableView2.ApplyBestFit();
  cxGridDBTableView3.OptionsBehavior.BestFitMaxRecordCount := 10;
  cxGridDBTableView3.ApplyBestFit();
  cxGridDBTableView4.OptionsBehavior.BestFitMaxRecordCount := 10;
  cxGridDBTableView4.ApplyBestFit();
  cxGridDBTableView5.OptionsBehavior.BestFitMaxRecordCount := 10;
  cxGridDBTableView5.ApplyBestFit();
  cxGridDBTableView6.OptionsBehavior.BestFitMaxRecordCount := 10;
  cxGridDBTableView6.ApplyBestFit();
  cxGridDBTableView7.OptionsBehavior.BestFitMaxRecordCount := 10;
  cxGridDBTableView7.ApplyBestFit();
  cxGridDBTableView8.OptionsBehavior.BestFitMaxRecordCount := 10;
  cxGridDBTableView8.ApplyBestFit();

end;

procedure TfrmMainScreen.PanelLabelDblClick(Sender: TObject);
var
  i: Integer;
  tc: TComponent;
begin
  inherited;
  if TComponent(Sender) is TPanel then
    begin
      tc    := TComponent(Sender).GetParentComponent;
      for i := 0 to TPanel(tc).ControlCount - 1 do
        if TPanel(tc).Controls[i].ClassName = 'TcxGrid' then
          begin
            TcxGridDBTableView(TcxGrid(TPanel(tc).Controls[i]).Views[0]).FilterRow.Visible := Not TcxGridDBTableView(TcxGrid(TPanel(tc).Controls[i]).Views[0]).FilterRow.Visible;
          end;
    end;
end;

procedure TfrmMainScreen.ExpandAll1Click(Sender: TObject);
begin
  inherited;
  PopupcxGridDBTableView.DataController.Groups.FullExpand;
end;

procedure TfrmMainScreen.ClearImage1Click(Sender: TObject);
var
  ABitmapOrig, ABitmap: TBitmap;
  ARect: TRect;
begin
  inherited;
        PopupcxGridDBTableView.BackgroundBitmaps.Background := nil;
        UpdateImageMain(PopupcxGridDBTableView.Name,'');
end;

procedure TfrmMainScreen.CollapseAll1Click(Sender: TObject);
begin
  inherited;
  PopupcxGridDBTableView.DataController.Groups.FullCollapse;
end;

procedure TfrmMainScreen.sactEditPersons(Insert: Boolean = True; Edit: Boolean = False; Id: Integer = 0);
var
  frm: TfrmPersonDet;
begin
  if DMMain.FindSecurity('TfrmPersonDet', LoginGroup, FormID) then
    begin
      frm := TfrmPersonDet.CreateSecurity(self, FormID);
      try
        if Insert then
          frm.AddRec
        Else
          frm.EditRec(Id);
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmPersonDet');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMainScreen.sactEditOurCars(Insert: Boolean = True; Edit: Boolean = False; Id: Integer = 0);
var
  frm: TfrmOurCarsDet;
begin
  if DMMain.FindSecurity('TfrmOurCarsDet', LoginGroup, FormID) then
    begin
      frm := TfrmOurCarsDet.CreateSecurity(self, FormID);
      try
        if Insert then
          frm.AddRec
        Else
          frm.EditRec(Id);
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmOurCarsDet');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMainScreen.sactEditOtherCars(Insert: Boolean = True; Edit: Boolean = False; Id: Integer = 0);
var
  frm: TfrmOtherCarsDet;
begin
  if DMMain.FindSecurity('TfrmOtherCarsDet', LoginGroup, FormID) then
    begin
      frm := TfrmOtherCarsDet.CreateSecurity(self, FormID);
      try
        if Insert then
          frm.AddRec
        Else
          frm.EditRec(Id);
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmOtherCarsDet');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmMainScreen.sactEditWorkers(Insert: Boolean = True; Edit: Boolean = False; Id: Integer = 0);
var
  frm: TfrmWorkersDet;
begin
  if DMMain.FindSecurity('TfrmWorkersDet', LoginGroup, FormID) then
    begin
      frm := TfrmWorkersDet.CreateSecurity(self, FormID);
      try
        if Insert then
          frm.AddRec
        Else
          frm.EditRec(Id);
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmWorkersDet');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;


procedure TfrmMainScreen.UpdateImageMain(GridName:string;FileName:String);
var lastch:string;
    x:Integer;
begin
 lastch:=GridName[(Length(GridName))];
 x:=StrToInt(lastch);
 case x of
 1:frmmain.gpGridImage1 := FileName;
 2:frmmain.gpGridImage2 := FileName;
 3:frmmain.gpGridImage3 := FileName;
 4:frmmain.gpGridImage4 := FileName;
 5:frmmain.gpGridImage5 := FileName;
 6:frmmain.gpGridImage6 := FileName;
 end;
end;

procedure TfrmMainScreen.LoadImageMain;
var lastch:string;
    x:Integer;
begin
 if frmmain.gpGridImage1 > ''  then
    LoadImage(cxGridDBTableView1,frmmain.gpGridImage1);
 if frmmain.gpGridImage2 > ''  then
    LoadImage(cxGridDBTableView2,frmmain.gpGridImage2);
 if frmmain.gpGridImage3 > ''  then
    LoadImage(cxGridDBTableView3,frmmain.gpGridImage3);
 if frmmain.gpGridImage4 > ''  then
    LoadImage(cxGridDBTableView4,frmmain.gpGridImage4);
 if frmmain.gpGridImage5 > ''  then
    LoadImage(cxGridDBTableView5,frmmain.gpGridImage5);
 if frmmain.gpGridImage6 > ''  then
    LoadImage(cxGridDBTableView6,frmmain.gpGridImage6);

end;

procedure TfrmMainScreen.LoadImage(tmp:TcxGridDBTableView;FileName:String);
var
  ABitmapOrig, ABitmap: TBitmap;
  ARect: TRect;
begin
  inherited;
    begin
      ABitmapOrig := TBitmap.Create;
      try
        ABitmapOrig.LoadFromFile(FileName);
        TcxGridDBTableView(tmp).BackgroundBitmaps.Background.Assign(ABitmapOrig);
      finally
        ABitmapOrig.Free;
      end;
    end;
end;





end.
