unit FBRWorkPermits;

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
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,  cxGridExportLink,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPSCore, dxPScxCommon, Data.Win.ADODB, Vcl.ActnList, Vcl.Menus, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxCore, DateUtils,
  DMain, FWorkPermits, FFilterEnDev;

type
  TfrmBRWorkPermits = class(TfrmBaseRep)
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
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1Level3: TcxGridLevel;
    qryContractors: TADOQuery;
    dsqryContractors: TDataSource;
    qryContractorsId: TIntegerField;
    qryContractorsCompany: TWideStringField;
    qryMainId: TIntegerField;
    qryMainDepartment_Id: TIntegerField;
    qryMainContractor_Id: TIntegerField;
    qryMainÌïíÜäá_Åñãáóßáò: TWideStringField;
    qryMainÅîïðëéóìïò: TWideStringField;
    qryMainStart_Time: TDateTimeField;
    qryMainEnd_Time: TDateTimeField;
    qryMainÐÅÑÉÃÑÁÖÇ_ÅÑÃÁÓÉÁÓ: TWideStringField;
    qryMainContractors_Name: TWideStringField;
    qryMainDepartments_Name: TWideStringField;
    qryMainFullFilled: TBooleanField;
    qryMainFullFilledDT: TDateTimeField;
    qryMainFullFilledUsr: TIntegerField;
    qryMainInsUsr: TIntegerField;
    qryMainInsDT: TDateTimeField;
    qryMainFullFilledCancel: TBooleanField;
    qryMainFrom_Id_Copy: TIntegerField;
    qryMainDeleted: TBooleanField;
    qryMainDelUsr: TIntegerField;
    qryMainDelDT: TDateTimeField;
    qryMainÁñ_Ãíùóôïðïéçóçò: TWideStringField;
    qryMainWorkStopped: TBooleanField;
    qryMainWorkStoppedUsr: TIntegerField;
    qryMainWorkStoppedDT: TDateTimeField;
    qryDepartments: TADOQuery;
    qryDepartmentsid: TIntegerField;
    qryDepartmentsName: TWideStringField;
    dsqryDepartments: TDataSource;
    qryForemen: TADOQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    dsqryForemen: TDataSource;
    qryDepartment_Foremen: TADOQuery;
    IntegerField2: TIntegerField;
    WideStringField2: TWideStringField;
    dsqryDepartment_Foremen: TDataSource;
    qryMainLDepartment: TStringField;
    qryMainForeman_Id: TIntegerField;
    qryMainDepartment_Foreman_Id: TIntegerField;
    qryMainLForeman: TStringField;
    qryMainLDepartment_Foreman: TStringField;
    qryMainDTime: TDateTimeField;
    qryMainIssue_Date_Full: TDateTimeField;
    qryMainIssue_Date: TDateTimeField;
    cxGrid1Level4: TcxGridLevel;
    cxGrid1Level5: TcxGridLevel;
    cxGrid1DBTableView4: TcxGridDBTableView;
    cxGrid1DBTableView5: TcxGridDBTableView;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableView1Issue_Date: TcxGridDBColumn;
    cxGrid1DBTableView1Start_Time: TcxGridDBColumn;
    cxGrid1DBTableView1End_Time: TcxGridDBColumn;
    cxGrid1DBTableView1_: TcxGridDBColumn;
    cxGrid1DBTableView1Department_Id: TcxGridDBColumn;
    cxGrid1DBTableView1LDepartment: TcxGridDBColumn;
    cxGrid1DBTableView1Contractor_Id: TcxGridDBColumn;
    cxGrid1DBTableView1LContractor: TcxGridDBColumn;
    cxGrid1DBTableView1_1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn: TcxGridDBColumn;
    cxGrid1DBTableView1Foreman_Id: TcxGridDBColumn;
    cxGrid1DBTableView1LForeman: TcxGridDBColumn;
    cxGrid1DBTableView1Department_Foreman_Id: TcxGridDBColumn;
    cxGrid1DBTableView1LDepartment_Foreman: TcxGridDBColumn;
    cxGrid1DBTableView1_2: TcxGridDBColumn;
    cxGrid1DBTableView1Contractors_Name: TcxGridDBColumn;
    cxGrid1DBTableView1Departments_Name: TcxGridDBColumn;
    cxGrid1DBTableView1FullFilled: TcxGridDBColumn;
    cxGrid1DBTableView1FullFilledDT: TcxGridDBColumn;
    cxGrid1DBTableView1FullFilledUsr: TcxGridDBColumn;
    cxGrid1DBTableView1From_Id_Copy: TcxGridDBColumn;
    cxGrid1DBTableView1Deleted: TcxGridDBColumn;
    cxGrid1DBTableView1DelUsr: TcxGridDBColumn;
    cxGrid1DBTableView1DelDT: TcxGridDBColumn;
    cxGrid1DBTableView1FullFilledCancel: TcxGridDBColumn;
    cxGrid1DBTableView1WorkStopped: TcxGridDBColumn;
    cxGrid1DBTableView1WorkStoppedUsr: TcxGridDBColumn;
    cxGrid1DBTableView1WorkStoppedDT: TcxGridDBColumn;
    cxGrid1DBTableView1DTime: TcxGridDBColumn;
    cxGrid1DBTableView1Issue_Date_Full: TcxGridDBColumn;
    cxGrid1DBTableView1InsDT: TcxGridDBColumn;
    cxGrid1DBTableView1InsUsr: TcxGridDBColumn;
    cxGrid1DBTableView2Id: TcxGridDBColumn;
    cxGrid1DBTableView2Issue_Date: TcxGridDBColumn;
    cxGrid1DBTableView2Start_Time: TcxGridDBColumn;
    cxGrid1DBTableView2End_Time: TcxGridDBColumn;
    cxGrid1DBTableView2_: TcxGridDBColumn;
    cxGrid1DBTableView2Department_Id: TcxGridDBColumn;
    cxGrid1DBTableView2LDepartment: TcxGridDBColumn;
    cxGrid1DBTableView2Contractor_Id: TcxGridDBColumn;
    cxGrid1DBTableView2LContractor: TcxGridDBColumn;
    cxGrid1DBTableView2_1: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn: TcxGridDBColumn;
    cxGrid1DBTableView2Foreman_Id: TcxGridDBColumn;
    cxGrid1DBTableView2LForeman: TcxGridDBColumn;
    cxGrid1DBTableView2Department_Foreman_Id: TcxGridDBColumn;
    cxGrid1DBTableView2LDepartment_Foreman: TcxGridDBColumn;
    cxGrid1DBTableView2_2: TcxGridDBColumn;
    cxGrid1DBTableView2Contractors_Name: TcxGridDBColumn;
    cxGrid1DBTableView2Departments_Name: TcxGridDBColumn;
    cxGrid1DBTableView2FullFilled: TcxGridDBColumn;
    cxGrid1DBTableView2FullFilledDT: TcxGridDBColumn;
    cxGrid1DBTableView2FullFilledUsr: TcxGridDBColumn;
    cxGrid1DBTableView2From_Id_Copy: TcxGridDBColumn;
    cxGrid1DBTableView2Deleted: TcxGridDBColumn;
    cxGrid1DBTableView2DelUsr: TcxGridDBColumn;
    cxGrid1DBTableView2DelDT: TcxGridDBColumn;
    cxGrid1DBTableView2FullFilledCancel: TcxGridDBColumn;
    cxGrid1DBTableView2WorkStopped: TcxGridDBColumn;
    cxGrid1DBTableView2WorkStoppedUsr: TcxGridDBColumn;
    cxGrid1DBTableView2WorkStoppedDT: TcxGridDBColumn;
    cxGrid1DBTableView2DTime: TcxGridDBColumn;
    cxGrid1DBTableView2Issue_Date_Full: TcxGridDBColumn;
    cxGrid1DBTableView2InsDT: TcxGridDBColumn;
    cxGrid1DBTableView2InsUsr: TcxGridDBColumn;
    cxGrid1DBTableView3Id: TcxGridDBColumn;
    cxGrid1DBTableView3Issue_Date: TcxGridDBColumn;
    cxGrid1DBTableView3Start_Time: TcxGridDBColumn;
    cxGrid1DBTableView3End_Time: TcxGridDBColumn;
    cxGrid1DBTableView3_: TcxGridDBColumn;
    cxGrid1DBTableView3Department_Id: TcxGridDBColumn;
    cxGrid1DBTableView3LDepartment: TcxGridDBColumn;
    cxGrid1DBTableView3Contractor_Id: TcxGridDBColumn;
    cxGrid1DBTableView3LContractor: TcxGridDBColumn;
    cxGrid1DBTableView3_1: TcxGridDBColumn;
    cxGrid1DBTableView3DBColumn: TcxGridDBColumn;
    cxGrid1DBTableView3Foreman_Id: TcxGridDBColumn;
    cxGrid1DBTableView3LForeman: TcxGridDBColumn;
    cxGrid1DBTableView3Department_Foreman_Id: TcxGridDBColumn;
    cxGrid1DBTableView3LDepartment_Foreman: TcxGridDBColumn;
    cxGrid1DBTableView3_2: TcxGridDBColumn;
    cxGrid1DBTableView3Contractors_Name: TcxGridDBColumn;
    cxGrid1DBTableView3Departments_Name: TcxGridDBColumn;
    cxGrid1DBTableView3FullFilled: TcxGridDBColumn;
    cxGrid1DBTableView3FullFilledDT: TcxGridDBColumn;
    cxGrid1DBTableView3FullFilledUsr: TcxGridDBColumn;
    cxGrid1DBTableView3From_Id_Copy: TcxGridDBColumn;
    cxGrid1DBTableView3Deleted: TcxGridDBColumn;
    cxGrid1DBTableView3DelUsr: TcxGridDBColumn;
    cxGrid1DBTableView3DelDT: TcxGridDBColumn;
    cxGrid1DBTableView3FullFilledCancel: TcxGridDBColumn;
    cxGrid1DBTableView3WorkStopped: TcxGridDBColumn;
    cxGrid1DBTableView3WorkStoppedUsr: TcxGridDBColumn;
    cxGrid1DBTableView3WorkStoppedDT: TcxGridDBColumn;
    cxGrid1DBTableView3DTime: TcxGridDBColumn;
    cxGrid1DBTableView3Issue_Date_Full: TcxGridDBColumn;
    cxGrid1DBTableView3InsDT: TcxGridDBColumn;
    cxGrid1DBTableView3InsUsr: TcxGridDBColumn;
    cxGrid1DBTableView4Id: TcxGridDBColumn;
    cxGrid1DBTableView4Issue_Date: TcxGridDBColumn;
    cxGrid1DBTableView4Start_Time: TcxGridDBColumn;
    cxGrid1DBTableView4End_Time: TcxGridDBColumn;
    cxGrid1DBTableView4_: TcxGridDBColumn;
    cxGrid1DBTableView4Department_Id: TcxGridDBColumn;
    cxGrid1DBTableView4LDepartment: TcxGridDBColumn;
    cxGrid1DBTableView4Contractor_Id: TcxGridDBColumn;
    cxGrid1DBTableView4LContractor: TcxGridDBColumn;
    cxGrid1DBTableView4_1: TcxGridDBColumn;
    cxGrid1DBTableView4DBColumn: TcxGridDBColumn;
    cxGrid1DBTableView4Foreman_Id: TcxGridDBColumn;
    cxGrid1DBTableView4LForeman: TcxGridDBColumn;
    cxGrid1DBTableView4Department_Foreman_Id: TcxGridDBColumn;
    cxGrid1DBTableView4LDepartment_Foreman: TcxGridDBColumn;
    cxGrid1DBTableView4_2: TcxGridDBColumn;
    cxGrid1DBTableView4Contractors_Name: TcxGridDBColumn;
    cxGrid1DBTableView4Departments_Name: TcxGridDBColumn;
    cxGrid1DBTableView4FullFilled: TcxGridDBColumn;
    cxGrid1DBTableView4FullFilledDT: TcxGridDBColumn;
    cxGrid1DBTableView4FullFilledUsr: TcxGridDBColumn;
    cxGrid1DBTableView4From_Id_Copy: TcxGridDBColumn;
    cxGrid1DBTableView4Deleted: TcxGridDBColumn;
    cxGrid1DBTableView4DelUsr: TcxGridDBColumn;
    cxGrid1DBTableView4DelDT: TcxGridDBColumn;
    cxGrid1DBTableView4FullFilledCancel: TcxGridDBColumn;
    cxGrid1DBTableView4WorkStopped: TcxGridDBColumn;
    cxGrid1DBTableView4WorkStoppedUsr: TcxGridDBColumn;
    cxGrid1DBTableView4WorkStoppedDT: TcxGridDBColumn;
    cxGrid1DBTableView4DTime: TcxGridDBColumn;
    cxGrid1DBTableView4Issue_Date_Full: TcxGridDBColumn;
    cxGrid1DBTableView4InsDT: TcxGridDBColumn;
    cxGrid1DBTableView4InsUsr: TcxGridDBColumn;
    cxGrid1DBTableView5Id: TcxGridDBColumn;
    cxGrid1DBTableView5Issue_Date: TcxGridDBColumn;
    cxGrid1DBTableView5Start_Time: TcxGridDBColumn;
    cxGrid1DBTableView5End_Time: TcxGridDBColumn;
    cxGrid1DBTableView5_: TcxGridDBColumn;
    cxGrid1DBTableView5Department_Id: TcxGridDBColumn;
    cxGrid1DBTableView5LDepartment: TcxGridDBColumn;
    cxGrid1DBTableView5Contractor_Id: TcxGridDBColumn;
    cxGrid1DBTableView5LContractor: TcxGridDBColumn;
    cxGrid1DBTableView5_1: TcxGridDBColumn;
    cxGrid1DBTableView5DBColumn: TcxGridDBColumn;
    cxGrid1DBTableView5Foreman_Id: TcxGridDBColumn;
    cxGrid1DBTableView5LForeman: TcxGridDBColumn;
    cxGrid1DBTableView5Department_Foreman_Id: TcxGridDBColumn;
    cxGrid1DBTableView5LDepartment_Foreman: TcxGridDBColumn;
    cxGrid1DBTableView5_2: TcxGridDBColumn;
    cxGrid1DBTableView5Contractors_Name: TcxGridDBColumn;
    cxGrid1DBTableView5Departments_Name: TcxGridDBColumn;
    cxGrid1DBTableView5FullFilled: TcxGridDBColumn;
    cxGrid1DBTableView5FullFilledDT: TcxGridDBColumn;
    cxGrid1DBTableView5FullFilledUsr: TcxGridDBColumn;
    cxGrid1DBTableView5From_Id_Copy: TcxGridDBColumn;
    cxGrid1DBTableView5Deleted: TcxGridDBColumn;
    cxGrid1DBTableView5DelUsr: TcxGridDBColumn;
    cxGrid1DBTableView5DelDT: TcxGridDBColumn;
    cxGrid1DBTableView5FullFilledCancel: TcxGridDBColumn;
    cxGrid1DBTableView5WorkStopped: TcxGridDBColumn;
    cxGrid1DBTableView5WorkStoppedUsr: TcxGridDBColumn;
    cxGrid1DBTableView5WorkStoppedDT: TcxGridDBColumn;
    cxGrid1DBTableView5DTime: TcxGridDBColumn;
    cxGrid1DBTableView5Issue_Date_Full: TcxGridDBColumn;
    cxGrid1DBTableView5InsDT: TcxGridDBColumn;
    cxGrid1DBTableView5InsUsr: TcxGridDBColumn;
    qryMainLContractor: TStringField;
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
      var AHandled: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryFieldNamesBeforePost(DataSet: TDataSet);
    procedure qryMainCalcFields(DataSet: TDataSet);
    procedure cxGrid1DBTableView2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView3CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView4CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView5CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    IniDate:TDateTime;
    SelDone:Boolean;
    procedure sactEditWorkPermits(Insert: Boolean = True; Edit: Boolean = False; Id: Integer = 0);
  public
    procedure FormRemoteActivate(SqlText:String;ExcelFileName:String);
  end;

implementation

{$R *.dfm}

uses FMain;

procedure TfrmBRWorkPermits.cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
var
  I, Id: Integer;
begin
  inherited;
  Caption := ACellViewInfo.Item.Caption;
  I       := ACellViewInfo.Item.Index;
//  I       := cxGrid1DBTableView1.FindItemByName('cxGrid1DBTableView1id').Index;
  I       := cxGrid1DBTableView1.FindItemByName('cxGrid1DBTableView1Id').Index;
  Id      := ACellViewInfo.GridRecord.Values[I];
  sactEditWorkPermits(False, False, Id);
end;

procedure TfrmBRWorkPermits.cxGrid1DBTableView2CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  I, Id: Integer;
begin
  inherited;
  Caption := ACellViewInfo.Item.Caption;
  I       := ACellViewInfo.Item.Index;
  I       := cxGrid1DBTableView2.FindItemByName('cxGrid1DBTableView2Id').Index;
  Id      := ACellViewInfo.GridRecord.Values[I];
  sactEditWorkPermits(False, False, Id);
end;



procedure TfrmBRWorkPermits.cxGrid1DBTableView3CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  I, Id: Integer;
begin
  inherited;
  Caption := ACellViewInfo.Item.Caption;
  I       := ACellViewInfo.Item.Index;
  I       := cxGrid1DBTableView3.FindItemByName('cxGrid1DBTableView3Id').Index;
  Id      := ACellViewInfo.GridRecord.Values[I];
  sactEditWorkPermits(False, False, Id);
end;

procedure TfrmBRWorkPermits.cxGrid1DBTableView4CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  I, Id: Integer;
begin
  inherited;
  Caption := ACellViewInfo.Item.Caption;
  I       := ACellViewInfo.Item.Index;
  I       := cxGrid1DBTableView4.FindItemByName('cxGrid1DBTableView4Id').Index;
  Id      := ACellViewInfo.GridRecord.Values[I];
  sactEditWorkPermits(False, False, Id);
end;

procedure TfrmBRWorkPermits.cxGrid1DBTableView5CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  I, Id: Integer;
begin
  inherited;
  Caption := ACellViewInfo.Item.Caption;
  I       := ACellViewInfo.Item.Index;
  I       := cxGrid1DBTableView5.FindItemByName('cxGrid1DBTableView5Id').Index;
  Id      := ACellViewInfo.GridRecord.Values[I];
  sactEditWorkPermits(False, False, Id);
end;

procedure TfrmBRWorkPermits.FormActivate(Sender: TObject);
var frm:TfrmFilterEnDev;
    TmpSql:string;
begin
  inherited;
  if SelDone then
     exit;

  TmpSql:=qryMain.SQL.Text;
  qryMain.SQL.Add(' Where id = 0');
  qryMain.Active:=True;
//  if cxgrid1Level3.visible then
//     qryMaincompany.required := False;

  frm:=TfrmFilterEnDev.CreateWithParam(Self,cxGrid1DBTableView1,TDataModule(Self),True,'ÊñéôÞñéá Åêôýðùóçò Áäåéþí Åñãáßáò');
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
    if MessageDlg('Èá åìöáíéóôïõí ÏËÅÓ ïé Êáôá÷ùñÞóåéò.', mtInformation, [mbYes, mbNo], 0) =mrYes then
    begin
       qryMain.Active:=False;
       qryMain.SQL.Clear;
       qryMain.SQL.Add(TmpSql);
       qryMain.Active:=True;
    end;
  frm.Free;

  cxGrid1DBTableView1.DataController.Groups.FullCollapse;
  cxGrid1DBTableView2.DataController.Groups.FullCollapse;
  cxGrid1DBTableView3.DataController.Groups.FullCollapse;
  cxGrid1DBTableView4.DataController.Groups.FullCollapse;
  cxGrid1DBTableView5.DataController.Groups.FullCollapse;

//  cxGrid1DBTableView3.DataController.Groups.FullExpand;

end;

procedure TfrmBRWorkPermits.FormCreate(Sender: TObject);
begin
  inherited;
  SelDone:=False;
  VL_FPass.Active:=True;

  if frmMain.EnhmGridTables then
    begin
      EnhmTableFields(qryMain,90061);
      EnhmcxGridFields(cxGrid1DBTableView1,90062);
      EnhmcxGridFields(cxGrid1DBTableView2,90063);
      EnhmcxGridFields(cxGrid1DBTableView3,90064);
      EnhmcxGridFields(cxGrid1DBTableView4,90065);
      EnhmcxGridFields(cxGrid1DBTableView5,90066);
    end;
 if frmMain.EnhmGridFromTables then
    begin
      EnhmFieldsFromTable(qryMain,90061);
      EnhmcxGridFromTable(cxGrid1DBTableView1,90062);
      EnhmcxGridFromTable(cxGrid1DBTableView2,90063);
      EnhmcxGridFromTable(cxGrid1DBTableView3,90064);
      EnhmcxGridFromTable(cxGrid1DBTableView4,90065);
      EnhmcxGridFromTable(cxGrid1DBTableView5,90066);
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

procedure TfrmBRWorkPermits.qryFieldNamesBeforePost(DataSet: TDataSet);
begin
  inherited;
  TADOQuery(DataSet).FieldByName('ID').AsInteger := CreateKey('FieldNames');
end;

procedure TfrmBRWorkPermits.qryMainCalcFields(DataSet: TDataSet);
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
        DataSet.FieldByName('LDTime').AsString := Format('%d ÇìÝñåò %d ¿ñåò %d ËåðôÜ', [d, m div 60, m mod 60])
      else
        if m > 60 then
           DataSet.FieldByName('LDTime').AsString := Format('%d ¿ñåò %d ËåðôÜ', [m div 60, m mod 60])
        else
           DataSet.FieldByName('LDTime').AsString := Format('%d ËåðôÜ', [m mod 60])
    end;
end;

procedure TfrmBRWorkPermits.sactEditWorkPermits(Insert: Boolean = True; Edit: Boolean = False; Id: Integer = 0);
var
  frm: TfrmWorkPermits;
begin
  if DMMain.FindSecurity('TfrmWorkPermits', LoginGroup, FormID) then
    begin
      frm := TfrmWorkPermits.CreateSecurity(self, FormID);
      try
        frm.GotoRec(Id);
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmWorkPermits');
      end;
    end
  else
    MessageDlg('Äåí Ý÷åôå äéêáßùìá ', mtError, [mbOK], 0)
end;

procedure TfrmBRWorkPermits.FormRemoteActivate(SqlText:String;ExcelFileName:String);
var TmpSql:string;
begin
  inherited;

  TmpSql:=qryMain.SQL.Text;
  qryMain.SQL.Add(' Where id = 0');
  qryMain.Active:=True;

  if SqlText > '' then
    begin
        qryMain.Active:=False;
        qryMain.SQL.Clear;
        qryMain.SQL.Add(TmpSql+' Where '+ SqlText);
        qryMain.Active:=True;
    end
  else
    begin
       qryMain.Active:=False;
       qryMain.SQL.Clear;
       qryMain.SQL.Add(TmpSql);
       qryMain.Active:=True;
    end;
  cxGrid1DBTableView1.DataController.Groups.FullCollapse;
  cxGrid1DBTableView2.DataController.Groups.FullCollapse;
  cxGrid1DBTableView3.DataController.Groups.FullCollapse;

  cxGrid1DBTableView3.DataController.Groups.FullExpand;

 ExportGridToExcel(ExcelFileName,cxGrid1);

end;



end.
