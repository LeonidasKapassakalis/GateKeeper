unit FSubParamsNoDev;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DBase, db, AdoDB,
  Menus, FSearch, ActnList, ComCtrls, dbTables, jpeg, ImgList, ToolWin,
  FDefineQOrder, FBForm, Common,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, GIFImg,
  Vcl.DBCtrls, cxClasses, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxCommon,
  Vcl.DBLookup, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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

type
  TfrmSubParamsNoDev = class(TForm)
    panBottom: TPanel;
    popFilter: TPopupMenu;
    pmsFilter: TMenuItem;
    pmsCancelFilter: TMenuItem;
    MC1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ActionList1: TActionList;
    Insert: TAction;
    Update: TAction;
    Delete: TAction;
    Post: TAction;
    Cancel: TAction;
    Refresh: TAction;
    MainMenu1: TMainMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Post1: TMenuItem;
    Cancel1: TMenuItem;
    File1: TMenuItem;
    Action1: TMenuItem;
    Before: TAction;
    After: TAction;
    Print: TAction;
    StatusBar1: TStatusBar;
    UpdateActions: TAction;
    N9: TMenuItem;
    N10: TMenuItem;
    MC2: TMenuItem;
    MC3: TMenuItem;
    Pedia: TMenuItem;
    Indexes: TMenuItem;
    FAll: TMenuItem;
    FNone: TMenuItem;
    MC4: TMenuItem;
    Panel1: TPanel;
    ImageList1: TImageList;
    ModalOk: TAction;
    ModalCancel: TAction;
    CmdClose: TAction;
    rrrrr: TMenuItem;
    NCUnderScore: TMenuItem;
    actOutputToExcel: TMenuItem;
    N1: TMenuItem;
    NewGrVariant: TMenuItem;
    GetGrVariant: TMenuItem;
    ClearGrid: TAction;
    ClearGrid1: TMenuItem;
    UpdTableFld: TAction;
    PageControl1: TPageControl;
    tabTable: TTabSheet;
    tabDetail: TTabSheet;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid: TcxGrid;
    FormEdt001: TEdit;
    FormDts: TDataSource;
    N2XML1: TMenuItem;
    PanelDtl: TPanel;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    actReCreateAddEdit: TAction;
    Action21: TMenuItem;
    ComboBox1000: TComboBox;
    Button1000: TButton;
    Label1000: TLabel;
    actPrev: TAction;
    actNext: TAction;
    actFirst: TAction;
    actLast: TAction;
    Panel4: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Panel3: TPanel;
    ToolBar1: TToolBar;
    TBNew: TToolButton;
    TBEdit: TToolButton;
    TBDelete: TToolButton;
    TNMOK: TToolButton;
    TBMCancel: TToolButton;
    TBSave: TToolButton;
    TBCancel: TToolButton;
    actTableDetail: TAction;
    actSelection: TAction;
    Selection1: TMenuItem;
    actCancelSelection: TAction;
    CancelSelection1: TMenuItem;
    Fl0000: TMenuItem;
    actDispSelection: TAction;
    DisplaySelection1: TMenuItem;
    actTableDetail1: TMenuItem;
    actPrintGrid: TMenuItem;
    BestFit1: TMenuItem;
    actUpdateAll: TAction;
    actUpdateAll1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure pmsFilterClick(Sender: TObject);
    procedure pmsCancelFilterClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure InsertExecute(Sender: TObject);
    procedure UpdateExecute(Sender: TObject);
    procedure PostExecute(Sender: TObject);
    procedure CancelExecute(Sender: TObject);
    procedure RefreshExecute(Sender: TObject);
    procedure AfterExecute(Sender: TObject);
    procedure BeforeExecute(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
    procedure ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
    procedure N10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FAllClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BrowseFields(var LeoMenu: TMenuItem);
    procedure NLeoClick(Sender: TObject);
    procedure FNoneClick(Sender: TObject);
    procedure GridColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
    procedure ModalOkExecute(Sender: TObject);
    procedure ModalCancelExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CmdCloseExecute(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure GridEnter(Sender: TObject);
    procedure actOutputToExcelClick(Sender: TObject);
    procedure GridTitleClick(Column: TColumn);
    procedure GridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure NewGrVariantClick(Sender: TObject);
    procedure GetGrVariantClick(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure ClearGridExecute(Sender: TObject);
    procedure UpdTableFldExecute(Sender: TObject);
    procedure Export1Click(Sender: TObject);
    procedure FormEdt001DblClick(Sender: TObject);
    procedure FormDtsStateChange(Sender: TObject);
    procedure N2XML1Click(Sender: TObject);
    procedure tabDetailShow(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure actReCreateAddEditExecute(Sender: TObject);
    procedure cxGridDBTableView1ColumnHeaderClick(Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure ComboBox1000DblClick(Sender: TObject);
    procedure Button1000Click(Sender: TObject);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure popFilterPopup(Sender: TObject);
    procedure actPrevExecute(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actFirstExecute(Sender: TObject);
    procedure actLastExecute(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure actTableDetailExecute(Sender: TObject);
    procedure LeoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actSelectCriteriaExecute(Sender: TObject);
    procedure actCancelSelectionExecute(Sender: TObject);
    procedure actDispSelectionExecute(Sender: TObject);
    procedure actPrintGridClick(Sender: TObject);
    procedure BestFit1Click(Sender: TObject);
    procedure actUpdateAllExecute(Sender: TObject);
  private
    PDM: TDMBASE;
    CurTop: Integer;
    FModal: Boolean;
    FCreated: Boolean;
    FIndexAct: Boolean;
    FGDataSet: TDataSet;
    FltGrid: TObject;
    FAddEditForm: TFormClass;
    CreatedAddEdit: Boolean;
    FormDataSetSql: string;
    FormDataSetFilter: string;
    function AskDelete: Boolean;
    procedure SetGDataSet(const Value: TDataSet);
    procedure SetAddEditForm(const Value: TFormClass);
    function CreateEdit(Owner: TPanel; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
    function CreateMemo(Owner: TPanel; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
    function CreateLCB(Owner: TPanel; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String; Field: TField): TComponent;
    function CreateCheckBx(Owner: TPanel; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;

  protected
    FDM: TDMBASE;
    FilSelected: Boolean;
    FilFrom: String;
    FilTo: String;
    FilField: String;
    FilTField: String;
    PFormName: String;
    PFormID: Integer;
    PWithOutDM: Boolean;
    PDataModule: TDMBASE;
    PDataSource: String;
    function CreateDataModule: TDMBASE; virtual; abstract;
    function CreateDataModuleWithOut(DModule: TFormClass): TDMBASE;
    procedure CreateAddEditForm; //virtual ; abstract ;
    procedure CheckBeforeDelete; virtual; abstract;
  public
    GifImage: TGIFImage;

    PopupDataSet: TDataSet;
    PopupDataSource: TDataSource;
    PopupcxGridDBTableView: TcxGridDBTableView;

    constructor CreateModal(aowner: TComponent);
    constructor CreateSecurity(aowner: TComponent; FormID: Integer);
    constructor CreateSecurityModal(aowner: TComponent; FormID: Integer);
    constructor CreateSecurityN(aowner: TComponent; FormID: Integer);
    constructor CreateSecurityWithOut(aowner: TComponent; FormID: Integer; FormName: String; DataModule: TDMBASE; DataSource: String; DisFormName: String);

    procedure FormSetDispNo(aowner: TComponent; FormID: Integer; FormName: String; dc: TFormClass; DataSource, DisFormName: String);
    procedure SetState(const LeoCategory: String);
    procedure PlusState(const LeoCategory: String);
    procedure SetStatusText(Text: String; Index: Integer);
    procedure ReleaseLock;
    procedure OpenSpecific(KeyId: Integer; KeyName: string; KeyDataSource: String = '');

    property DM: TDMBASE read FDM;
    property Created: Boolean read FCreated write FCreated;
    property IndexAct: Boolean read FIndexAct write FIndexAct;
    property GDataSet: TDataSet read FGDataSet write SetGDataSet;
    // property AddEditForm : TForm read FAddEditForm write SetAddEditForm;
    property AddEditForm: TFormClass read FAddEditForm write SetAddEditForm;
    property FilteredGrid: TObject read FltGrid write FltGrid;
  end;

implementation

uses FFilterEn, FFilterEn2, RSubParams, DMain, Fmain;

{$R *.DFM}

constructor TfrmSubParamsNoDev.CreateModal(aowner: TComponent);
begin
  FModal   := True;
  Created  := False;
  IndexAct := False;
  Create(aowner);
  SetGDataSet(cxGridDBTableView1.DataController.DataSource.Dataset);
end;

constructor TfrmSubParamsNoDev.CreateSecurity(aowner: TComponent; FormID: Integer);
begin
  PFormID  := FormID;
  Created  := False;
  IndexAct := False;
  { TODO : Clear }
  // if DMMain.FindFormName(PFormID, PFormName) then
  Create(aowner)
  { TODO : Clear }
  // else
  // exit;
  // SetGDataSet(Grid.DataSource.Dataset);
end;

constructor TfrmSubParamsNoDev.CreateSecurityN(aowner: TComponent; FormID: Integer);
begin
  PFormID  := FormID;
  Created  := False;
  IndexAct := False;
  { TODO : Clear }
  // if DMMain.FindFormName(PFormID, PFormName) then
  Create(aowner)
  // else
  // exit;
end;

constructor TfrmSubParamsNoDev.CreateSecurityWithOut(aowner: TComponent; FormID: Integer; FormName: String; DataModule: TDMBASE; DataSource: String; DisFormName: String);
begin
  PFormID     := FormID;
  PFormName   := FormName;
  Created     := False;
  IndexAct    := False;
  PWithOutDM  := True;
  PDataModule := DataModule;
  PDataSource := DataSource;

  { TODO : Clear }
  // if DMMain.FindFormName(PFormID, PFormName) then
  Create(aowner)
  // else
  // exit;
  // SetGDataSet(Grid.DataSource.Dataset);
  // self.Caption := DisFormName;
end;

procedure TfrmSubParamsNoDev.OpenSpecific(KeyId: Integer; KeyName: String; KeyDataSource: String = '');
var
  DataSource: TDataSource;
  Ds: TCustomADODataSet;
  TempVar: Variant;
  x: Integer;
begin
  if KeyName = '' then
    Exit;

  DataSource := TDataSource(DM.FindComponent(PDataSource));
  for x      := 0 to DM.ComponentCount - 1 do
    if DM.Components[x] is TCustomADODataSet then
      if TCustomADODataSet(DM.Components[x]).Name = DataSource.Dataset.Name then
        Ds := TCustomADODataSet(DM.Components[x]);

  if Assigned(Ds) then
    begin
      TempVar := KeyId;
      try
        Ds.Locate(KeyName, TempVar, []);
        CreateAddEditForm;
        PageControl1.ActivePage := tabDetail;
      except
        // !!!
      end;
    end;
end;

procedure TfrmSubParamsNoDev.cxGridDBTableView1ColumnHeaderClick(Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  cxGridDBTableView1.OptionsBehavior.IncSearch     := True;
  cxGridDBTableView1.OptionsBehavior.IncSearchItem := AColumn;
end;

procedure TfrmSubParamsNoDev.cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  HoldColor: TColor;
  Fld1, Fld2: TField;
  V: Variant;
  C: TcxGridDBColumn;
begin
  inherited;
  // !!!
  // C := (Sender as TcxCustomGridTableView).FindItemByName('Deleted');

  HoldColor := ACanvas.Brush.Color;
  Fld1      := cxGridDBTableView1.DataController.DataSource.Dataset.FindField('Deleted');
  Fld2      := cxGridDBTableView1.DataController.DataSource.Dataset.FindField('Inactive');

  if (Not(Fld1 = Nil) And Fld1.asBoolean) then
    begin
      ACanvas.Brush.Color := clRed;
      // Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      ACanvas.Brush.Color := HoldColor;
    end
  else if (Not(Fld2 = Nil) And Fld2.asBoolean) then
    begin
      ACanvas.Brush.Color := clGreen;
      // Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      ACanvas.Brush.Color := HoldColor;
    end
  // else
  // Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TfrmSubParamsNoDev.cxGridDBTableView1DblClick(Sender: TObject);
begin
  if Not cxGridDBTableView1.Controller.IsFilterRowFocused then
    if cxGridDBTableView1.DataController.DataSource.Dataset.State = dsBrowse then
      UpdateExecute(Sender);

  // cxGridDBTableView1.OptionsBehavior.IncSearch := True;
  // cxGridDBTableView1.OptionsBehavior.IncSearchItem := cxGridDBTableView1.GetColumnByFieldName('Descr');

  // cxGridDBTableView1.OptionsData.Editing         := True;
  // cxGridDBTableView1.OptionsSelection.CellSelect := True;

end;

procedure TfrmSubParamsNoDev.cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  Label1000.Caption := cxGridDBTableView1.Controller.IncSearchingText;
end;

constructor TfrmSubParamsNoDev.CreateSecurityModal(aowner: TComponent; FormID: Integer);
begin
  FModal   := True;
  PFormID  := FormID;
  Created  := False;
  IndexAct := False;
  { TODO : Clear }
  // if DMMain.FindFormName(FormID, PFormName) then
  Create(aowner)
  // else
  // exit;
end;

procedure TfrmSubParamsNoDev.FormSetDispNo(aowner: TComponent; FormID: Integer; FormName: String; dc: TFormClass; DataSource: String; DisFormName: String);
var
  a: TComponent;
  LLeft, LWidth, LTop, LHeight, State: Integer;
  x: Integer;
begin
  //
  PFormID    := FormID;
  PFormName  := FormName;
  Created    := False;
  IndexAct   := False;
  PWithOutDM := True;
  // PDataModule:= DataModule;
  PDataSource          := DataSource;
  panBottom.BevelOuter := bvNone;
  Self.Caption         := DisFormName;

  if PWithOutDM then
    begin
      FDM := CreateDataModuleWithOut(dc);
      // FDM := PDataModule;
      // if cxGridDBTableView1.DataController.DataSource=nil then
      a := FDM.FindComponent(PDataSource);
      if (Not(a = Nil)) then
        FormDts.Dataset := TDataSource(FDM.FindComponent(PDataSource)).Dataset
      else
        raise Exception.Create('DataSource ' + PDataSource + ' Not Found.');

    end
  else
    begin
      FDM := CreateDataModule;
      a   := FDM.FindComponent(PDataSource);
      if (Not(a = Nil)) then
        FormDts.Dataset := TDataSource(FDM.FindComponent(PDataSource)).Dataset
      else
        raise Exception.Create('DataSource ' + PDataSource + ' Not Found.');
    end;

  cxGridDBTableView1.DataController.CreateAllItems;

  frmMain.ReadIniSub(PFormName, LLeft, LTop, LWidth, LHeight, State);
  if LWidth > 0 then
    SetBounds(LLeft, LTop, LWidth, LHeight);
  cxGridDBTableView1.RestoreFromIniFile(frmMain.Ini.FileName + '.txt', False, False, [gsoUseFilter, gsoUseSummary], PFormName);
  CreatedAddEdit := False;

  for x := 0 to cxGridDBTableView1.ColumnCount - 1 do
    ComboBox1000.Items.Add(cxGridDBTableView1.Columns[x].DataBinding.FieldName)

end;

procedure TfrmSubParamsNoDev.FormCreate(Sender: TObject);
var
  LLeft, LWidth, LTop, LHeight, State, Sb01: Integer;
  Filter, Index, DataSource, Le1, dsl: String;
  a: TObject;
  fld: TField;
  // ehc:TDBGridColumnsEh;
  Ds: TDataSet;
begin
  inherited;
  // !!!

  raise Exception.Create('Must Be Cleared');

  panBottom.BevelOuter := bvNone;
  { TODO : Clear }
  frmMain.ReadIniSub(PFormName, LLeft, LTop, LWidth, LHeight, State);
  // EhOut
  // frmMain.ReadGrid(PFormName,Grid,Filter,Index,DataSource);
  { TODO : Clear }
  // frmMain.SetDisplayedForm(self);
  // if LWidth > 0 then
  // SetBounds(LLeft, LTop, LWidth, LHeight);
  { TODO : Clear }
  // self.Font       := frmMain.AppFonts[5];
  // self.Color      := frmMain.AppColors[5];
  // panBottom.Color := frmMain.AppColors[5];
  // panBottom.Font  := frmMain.AppFonts[5];
  // Grid.Font       := frmMain.AppFonts[6];
  // Grid.Color      := frmMain.AppColors[6];

  if PWithOutDM then
    begin
      // FDM := CreateDataModuleWithOut(PDataModule);
      FDM := PDataModule;
      if cxGridDBTableView1.DataController.DataSource = nil then
        if Not(FDM.FindComponent(PDataSource) = Nil) then
          FormDts.Dataset := TDataSource(FDM.FindComponent(PDataSource)).Dataset;
    end
  else
    begin
      FDM := CreateDataModule;
      // if Grid.DataSource=nil then
      // Grid.DataSource:=TDataSource(FDM.FindComponent(PDatasource));
    end;

  cxGridDBTableView1.DataController.CreateAllItems;
  frmMain.ReadIniSub(PFormName, LLeft, LTop, LWidth, LHeight, State);
  cxGridDBTableView1.RestoreFromIniFile(frmMain.Ini.FileName + '.txt', False, False, [gsoUseFilter, gsoUseSummary], PFormName);
  CreatedAddEdit := False;
end;

function TfrmSubParamsNoDev.AskDelete: Boolean;
begin
  Result := ((MessageDlg('Να γίνει διαγραφή;', mtConfirmation, [mbYes, mbNo], 0)) = mrYes);
end;

procedure TfrmSubParamsNoDev.pmsFilterClick(Sender: TObject);
var
  frm: TfrmFilterEn2;
begin
  inherited;
  // !!!
  raise Exception.Create('Not for DevExpress');
end;

procedure TfrmSubParamsNoDev.popFilterPopup(Sender: TObject);
begin
  // MessageDlg(popFilter.PopupComponent.Name , mtWarning, [mbOK], 0);
  if popFilter.PopupComponent is TcxGridSite then
    /// /TcxGridDBTableView
    begin
      // !!!!! Απίστευτο Cast για το Quantum Grid TcxGridSite
      PopupDataSet           := TcxGridDBTableView(TcxGridSite(popFilter.PopupComponent).GridView).DataController.Dataset;
      PopupDataSource        := TcxGridDBTableView(TcxGridSite(popFilter.PopupComponent).GridView).DataController.DataSource;
      PopupcxGridDBTableView := TcxGridDBTableView(TcxGridSite(popFilter.PopupComponent).GridView);
    end;
  BrowseFields(Pedia);
end;

procedure TfrmSubParamsNoDev.pmsCancelFilterClick(Sender: TObject);
var
  i: Integer;
begin
  // !!!
  raise Exception.Create('Not for DevExpress');

  cxGridDBTableView1.DataController.DataSource.Dataset.Filtered := False;
  cxGridDBTableView1.DataController.DataSource.Dataset.Filter := '';

  // if Grid is TDBGridEh then
  // for i := 0 to Grid.Columns.Count - 1 do
  // Grid.Columns[i].STFilter.Clear;
end;

procedure TfrmSubParamsNoDev.N2Click(Sender: TObject);
// var
// frm: TfrmSearch;
begin
  // !!!
  raise Exception.Create('Not for DevExpress');

  // frm := TfrmSearch.CreateWithParam(self,TDBGrid(popFilter.PopupComponent), DM);
  // frm.ShowModal;
  // frm.Free;
end;

procedure TfrmSubParamsNoDev.N2XML1Click(Sender: TObject);
begin
  OutputXMLdx(cxGridDBTableView1.DataController.Dataset);
end;

procedure TfrmSubParamsNoDev.N3Click(Sender: TObject);
begin
  // !!!
  raise Exception.Create('Not for DevExpress');
  // if popFilter.PopupComponent is TDBGrid then
  // MessageDlg('Το ενεργό Φίλτρο είναι : ' + TDBGrid(popFilter.PopupComponent).DataSource.Dataset.Filter, mtInformation, [mbOK], 0);
  // if popFilter.PopupComponent is TDBGridEh then
  // MessageDlg('Το ενεργό Φίλτρο είναι : ' + TDBGridEh(popFilter.PopupComponent).DataSource.Dataset.Filter, mtInformation, [mbOK], 0);
end;

procedure TfrmSubParamsNoDev.FormActivate(Sender: TObject);
begin
  TPicture.RegisterFileFormat('GIF', sGIFImageFile, TGIFImage);
  GifImage := TGIFImage.Create();
  // try
  // MessageDlg(ExtractFileDir(Application.ExeName), mtWarning, [mbOK], 0);
  GifImage.LoadFromFile(ExtractFileDir(Application.ExeName) + '\' + '0ss.gif');
  // GifImage.AnimateLoop := glEnabled;
  // GifImage.AnimationSpeed := 1000;
  GifImage.Animate := True;
  Image1.Picture.Assign(GifImage);
  Image1.Repaint;

  SetState('Before');
  // if (Created and not(IndexAct)) then
  // begin
  BrowseFields(Pedia);
  // IndexAct := True;
  // end;
end;

procedure TfrmSubParamsNoDev.SetState(const LeoCategory: String);
var
  i: Integer;
begin
  for i := 0 to ActionList1.ActionCount - 1 do
    begin
      if ActionList1.Actions[i].Category = LeoCategory then
        begin
          TCustomAction(ActionList1.Actions[i]).Visible := True;
          TCustomAction(ActionList1.Actions[i]).Enabled := True;
        end
      else
        begin
          TCustomAction(ActionList1.Actions[i]).Visible := False;
          TCustomAction(ActionList1.Actions[i]).Enabled := False;
        end;
      { TODO : Clear }
       if ((LoginGroup <> 0) And (ActionList1.Actions[i].Tag = 9999)) then
       TCustomAction(ActionList1.Actions[i]).Visible := False;
    end;
  if (FModal and (LeoCategory = 'Before')) then
    PlusState('Modal');
end;

procedure TfrmSubParamsNoDev.PlusState(const LeoCategory: String);
var
  i: Integer;
begin
  for i := 0 to ActionList1.ActionCount - 1 do
    if ActionList1.Actions[i].Category = LeoCategory then
      begin
        TCustomAction(ActionList1.Actions[i]).Visible := True;
        TCustomAction(ActionList1.Actions[i]).Enabled := True;
      end;
end;

procedure TfrmSubParamsNoDev.DeleteExecute(Sender: TObject);
begin
  try
    if cxGridDBTableView1.DataController.DataSource.Dataset.FieldByName('Id').asInteger = 0 then
      begin
        MessageDlg('Δεν μπορεί να διαγραφή η εγγραφή Zero!!!.', mtError, [mbOK], 0);
        Exit;
      end;
  except
  end;
  if AskDelete then
    try
      cxGridDBTableView1.DataController.DataSource.Dataset.FindField('Deleted');
      cxGridDBTableView1.DataController.DataSource.Dataset.Edit;
      cxGridDBTableView1.DataController.DataSource.Dataset.FieldByName('Deleted').asBoolean := True;
      cxGridDBTableView1.DataController.DataSource.Dataset.FieldByName('DelUsr').asInteger := 1; // LoginId;
      cxGridDBTableView1.DataController.DataSource.Dataset.FieldByName('DelDT').AsDateTime := Now();
      cxGridDBTableView1.DataController.DataSource.Dataset.FieldByName('DelDT').AsDateTime := Now(); // Main.GNow;
      cxGridDBTableView1.DataController.DataSource.Dataset.Post;
    except
      cxGridDBTableView1.DataController.DataSource.Dataset.Delete;
    end;
end;

procedure TfrmSubParamsNoDev.FormEdt001DblClick(Sender: TObject);
begin
  FormEdt001.Text := TAdoQuery(cxGridDBTableView1.DataController.DataSource.Dataset).SQL.Text;
  cxGridDBTableView1.DataController.DataSource.Dataset.Active := True;
  FormEdt001.Text := cxGridDBTableView1.DataController.DataSource.Dataset.Filter;
end;

procedure TfrmSubParamsNoDev.Export1Click(Sender: TObject);
begin
  // SaveDBGridEhToExportFile(TDBGridEhExportAsUnicodeText,Grid,'c:\temp\file1.txt',True);
  // SaveDBGridEhToExportFile(TDBGridEhExportAsXLS,Grid,'c:\temp\file1.xls',True);
end;

procedure TfrmSubParamsNoDev.Image1DblClick(Sender: TObject);
begin
  TGIFImage(Image1.Picture.Graphic).Animate := Not TGIFImage(Image1.Picture.Graphic).Animate;
end;

procedure TfrmSubParamsNoDev.InsertExecute(Sender: TObject);
begin
  if FAddEditForm = nil then
    begin
      FormDts.Dataset.Append;
      cxGridDBTableView1.DataController.DataSource.Dataset.Append;
      cxGridDBTableView1.OptionsData.Editing         := True;
      cxGridDBTableView1.OptionsSelection.CellSelect := True;
      SetState('After');
      // Grid.Options := Grid.Options - [dgRowSelect];
      // Grid.Options := Grid.Options + [dgEditing];
      // Grid.DataSource.Dataset.Append;
    end
  else
    begin
      FormDts.Dataset.Append;
      CreateAddEditForm;
      // Grid.DataSource.Dataset.Append;
    end;
end;

procedure TfrmSubParamsNoDev.UpdateExecute(Sender: TObject);
var
  LeoT: TAdoTable;
  x: Integer;
begin
  try
    if ((cxGridDBTableView1.DataController.DataSource.Dataset.State = dsEdit) And (cxGridDBTableView1.DataController.DataSource.Dataset.FieldByName('Id').asInteger = 0)) then
      begin
        MessageDlg('Δεν μπορεί να Μεταβληθει η εγγραφή Zero!!!.', mtError, [mbOK], 0);
        Exit;
      end;
  except
  end;
  if ((cxGridDBTableView1.DataController.DataSource.Dataset is TAdoTable) or (cxGridDBTableView1.DataController.DataSource.Dataset is TAdoQuery)) then
    begin
      begin
        if FAddEditForm = nil then
          begin
            FormDts.Dataset.Edit;
            cxGridDBTableView1.OptionsData.Editing         := True;
            cxGridDBTableView1.OptionsSelection.CellSelect := True;
            SetState('After');
            // Grid.Options := Grid.Options - [dgRowSelect];
            // Grid.Options := Grid.Options + [dgEditing];
            // Grid.DataSource.Dataset.Edit;
          end
        else
          begin
            cxGridDBTableView1.DataController.DataSource.Dataset.Edit;
            CreateAddEditForm;
          end;
      end
    end;
end;

procedure TfrmSubParamsNoDev.UpdTableFldExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  // Must change for fields

  { TODO : Clear }
  { DMMain.QFindFormID.Active                               := False;
    DMMain.QFindFormID.Parameters.ParamByName('Name').Value := 'T' + self.Name;
    DMMain.QFindFormID.Active                               := True;
    if Not DMMain.QFindFormID.IsEmpty then
    begin
    for i := 0 to ActionList1.ActionCount - 1 do
    begin
    DMMain.QUpdateFormAction.Parameters.ParamByName('ID').Value :=
    CreateKey('FormAction');
    DMMain.QUpdateFormAction.Parameters.ParamByName('Form').Value :=
    DMMain.QFindFormIDID.asInteger;
    DMMain.QUpdateFormAction.Parameters.ParamByName('Action').Value :=
    TCustomAction(ActionList1.Actions[i]).Name;
    DMMain.QUpdateFormAction.Parameters.ParamByName('Text').Value :=
    TCustomAction(ActionList1.Actions[i]).Caption;
    DMMain.QUpdateFormAction.Parameters.ParamByName('SubParam')
    .Value := 0;
    try
    DMMain.QUpdateFormAction.ExecSql;
    except
    SetStatusText('Εχει ήδη ενημερωθεί η ενέργεια ' +
    TCustomAction(ActionList1.Actions[i]).Name, 0);
    end;
    end;
    DMMain.QUpdateFormAction.Parameters.ParamByName('ID').Value :=
    CreateKey('FormAction');
    DMMain.QUpdateFormAction.Parameters.ParamByName('Form').Value :=
    DMMain.QFindFormIDID.asInteger;
    DMMain.QUpdateFormAction.Parameters.ParamByName('Action').Value := 'All';
    DMMain.QUpdateFormAction.Parameters.ParamByName('Text').Value := 'All';
    DMMain.QUpdateFormAction.Parameters.ParamByName('SubParam').Value := 0;
    try
    DMMain.QUpdateFormAction.ExecSql;
    except
    SetStatusText('Εχει ήδη ενημερωθεί η ενέργεια ' + 'ALL', 0);
    end;
    end; }
end;

procedure TfrmSubParamsNoDev.PostExecute(Sender: TObject);
begin
  if cxGridDBTableView1.DataController.DataSource.Dataset.State in [dsEdit, dsInsert] then
    begin
      cxGridDBTableView1.DataController.DataSource.Dataset.Post;
      // cxGridDBTableView1.DataController.DataSource.Dataset.Refresh;
      cxGridDBTableView1.OptionsData.Editing         := False;
      cxGridDBTableView1.OptionsSelection.CellSelect := False;
    end;
  SetState('Before');
end;

procedure TfrmSubParamsNoDev.CancelExecute(Sender: TObject);
begin
  if cxGridDBTableView1.DataController.DataSource.Dataset.State in [dsEdit, dsInsert] then
    begin
      cxGridDBTableView1.DataController.DataSource.Dataset.Cancel;
      cxGridDBTableView1.OptionsData.Editing         := False;
      cxGridDBTableView1.OptionsSelection.CellSelect := False;
    end;
  SetState('Before');
end;

procedure TfrmSubParamsNoDev.ClearGridExecute(Sender: TObject);
begin
  cxGridDBTableView1.DataController.DataSource.Dataset.Active := False;
  cxGridDBTableView1.DataController.DataSource.Dataset.Active := True;
  cxGridDBTableView1.DataController.CreateAllItems;
end;

procedure TfrmSubParamsNoDev.RefreshExecute(Sender: TObject);
begin
  cxGridDBTableView1.DataController.DataSource.Dataset.Refresh;
end;

procedure TfrmSubParamsNoDev.AfterExecute(Sender: TObject);
begin
  //
end;

procedure TfrmSubParamsNoDev.BeforeExecute(Sender: TObject);
begin
  //
end;

procedure TfrmSubParamsNoDev.BestFit1Click(Sender: TObject);
var
  tmp: TObject;
begin
  if popFilter.PopupComponent is TcxGridSite then
    begin
      tmp := TcxGridDBTableView(TcxGridSite(popFilter.PopupComponent).GridView);
      TcxGridDBTableView(PopupcxGridDBTableView).OptionsBehavior.BestFitMaxRecordCount := 10;
      TcxGridDBTableView(PopupcxGridDBTableView).ApplyBestFit();
    end;
end;

procedure TfrmSubParamsNoDev.PrintExecute(Sender: TObject);
begin
  dxComponentPrinter1Link1.Preview();
end;

procedure TfrmSubParamsNoDev.actExcelExecute(Sender: TObject);
begin
  Output2XLSdx(cxGridDBTableView1);
end;

procedure TfrmSubParamsNoDev.actReCreateAddEditExecute(Sender: TObject);
var
  x, y: Integer;
begin
  y     := PanelDtl.ComponentCount - 1;
  for x := 0 to y do
    PanelDtl.Components[0].Free;
  CreatedAddEdit := False;
  CurTop         := 0;
end;

procedure TfrmSubParamsNoDev.actTableDetailExecute(Sender: TObject);
begin
  if PageControl1.ActivePage = tabTable then
    PageControl1.ActivePage := tabDetail
  else
    PageControl1.ActivePage := tabTable;
end;

procedure TfrmSubParamsNoDev.actUpdateAllExecute(Sender: TObject);
begin
cxGridDBTableView1.DataController.DataSource.OnStateChange:=nil;
cxGridDBTableView1.DataController.DataSource.Dataset.First;
repeat
cxGridDBTableView1.DataController.DataSource.Dataset.Edit;
cxGridDBTableView1.DataController.DataSource.DataSet.Post;
cxGridDBTableView1.DataController.DataSource.Dataset.Next;
until cxGridDBTableView1.DataController.DataSource.Dataset.Eof;
Self.CloseModal;
end;

procedure TfrmSubParamsNoDev.actFirstExecute(Sender: TObject);
begin
  cxGridDBTableView1.DataController.DataSource.Dataset.First;
end;

procedure TfrmSubParamsNoDev.ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
begin
  { TODO : Clear }
   if TAction(Action).Tag < 10 then
    begin
    if DMMain.SearchSecurity(TAction(Action).Name, PFormID, 0) then
    SetStatusText(TAction(Action).Hint, 0)
    else
    begin
    SetStatusText('Μη Επιτρεπτή Ενέργεια! ' + TAction(Action).Name, 0);
    Handled := True;
    end;
    end;
  if cxGridDBTableView1.Controller.IsFilterRowFocused then
    Handled := True;
end;

procedure TfrmSubParamsNoDev.SetStatusText(Text: String; Index: Integer);
begin
  StatusBar1.Panels[Index].Text := Text;
end;

procedure TfrmSubParamsNoDev.tabDetailShow(Sender: TObject);
begin
  if Not(CreatedAddEdit) then
    begin
      CreateAddEditForm();
    end;
end;

procedure TfrmSubParamsNoDev.N10Click(Sender: TObject);
var
  i, x, y: Integer;
  AL: TActionList;
begin
  inherited;
  try
    DMMain.QFindFormID.Active := False;
    DMMain.QFindFormID.Parameters.ParamByName('PName').Value := 'T' + Self.Name;
    DMMain.QFindFormID.Active := True;
  except

  end;

  for x := 0 to Self.ComponentCount - 1 do
    if Self.Components[x] is TActionList then
      y := x;
  AL    := TActionList(Self.Components[y]);
  if True then // DM.FindFormID.IsEmpty then
    begin
      for i := 0 to AL.ActionCount - 1 do
        begin
          DMMain.QUpdateFormAction.Parameters.ParamByName('PFormId').Value := FormID;
          DMMain.QUpdateFormAction.Parameters.ParamByName('PAction').Value := TCustomAction(AL.Actions[i]).Name;
          DMMain.QUpdateFormAction.Parameters.ParamByName('PText').Value := TCustomAction(AL.Actions[i]).Caption;
          if Not(TCustomAction(AL.Actions[i]).Name = 'UpdCommandAct') then
            try
              DMMain.QUpdateFormAction.ExecSql;
            except
              on E: Exception do
                MessageDlg('Error ' + E.Message, mtError, [mbOK], 0);
            end;
        end;
      DMMain.QUpdateFormAction.Parameters.ParamByName('PFormId').Value := FormID;
      DMMain.QUpdateFormAction.Parameters.ParamByName('PAction').Value := 'All';
      DMMain.QUpdateFormAction.Parameters.ParamByName('PText').Value := 'All';
      try
        DMMain.QUpdateFormAction.ExecSql;
      except
        MessageDlg('Error', mtError, [mbOK], 0);
      end;
    end;
end;



//var
//  i: Integer;
//begin
//  inherited;
//  { TODO : Clear }
//  { DMMain.QFindFormID.Active                               := False;
//    DMMain.QFindFormID.Parameters.ParamByName('Name').Value := 'T' + self.Name;
//    DMMain.QFindFormID.Active                               := True;
//    if Not DMMain.QFindFormID.IsEmpty then
//    begin
//    for i := 0 to ActionList1.ActionCount - 1 do
//    begin
//    DMMain.QUpdateFormAction.Parameters.ParamByName('ID').Value :=
//    CreateKey('FormAction');
//    DMMain.QUpdateFormAction.Parameters.ParamByName('Form').Value :=
//    DMMain.QFindFormIDID.asInteger;
//    DMMain.QUpdateFormAction.Parameters.ParamByName('Action').Value :=
//    TCustomAction(ActionList1.Actions[i]).Name;
//    DMMain.QUpdateFormAction.Parameters.ParamByName('Text').Value :=
//    TCustomAction(ActionList1.Actions[i]).Caption;
//    DMMain.QUpdateFormAction.Parameters.ParamByName('SubParam')
//    .Value := 0;
//    try
//    DMMain.QUpdateFormAction.ExecSql;
//    except
//    SetStatusText('Εχει ήδη ενημερωθεί η ενέργεια ' +
//    TCustomAction(ActionList1.Actions[i]).Name, 0);
//    end;
//    end;
//    DMMain.QUpdateFormAction.Parameters.ParamByName('ID').Value :=
//    CreateKey('FormAction');
//    DMMain.QUpdateFormAction.Parameters.ParamByName('Form').Value :=
//    DMMain.QFindFormIDID.asInteger;
//    DMMain.QUpdateFormAction.Parameters.ParamByName('Action').Value := 'All';
//    DMMain.QUpdateFormAction.Parameters.ParamByName('Text').Value := 'All';
//    DMMain.QUpdateFormAction.Parameters.ParamByName('SubParam').Value := 0;
//    try
//    DMMain.QUpdateFormAction.ExecSql;
//    except
//    SetStatusText('Εχει ήδη ενημερωθεί η ενέργεια ' + 'ALL', 0);
//    end;
//    end; }
//end;

procedure TfrmSubParamsNoDev.FormDestroy(Sender: TObject);
begin
  cxGridDBTableView1.StoreToIniFile(frmMain.Ini.FileName + '.txt', True, [gsoUseFilter, gsoUseSummary], PFormName);
  frmMain.WriteIniSub(PFormName, Self.Left, Self.Top, Self.Width, Self.Height, 0);
  GifImage.Free;
  TPicture.UnregisterGraphicClass(TGIFImage);
end;

procedure TfrmSubParamsNoDev.FormDtsStateChange(Sender: TObject);
var
  x: Integer;
  st: String;
begin
  if TDataSource(Sender).State in [dsEdit, dsInsert] then
    begin
      cxGridDBTableView1.OptionsData.Editing         := True;
      cxGridDBTableView1.OptionsSelection.CellSelect := True;
      SetState('After');
    end
  else
    begin
      cxGridDBTableView1.OptionsSelection.CellSelect := False;
      cxGridDBTableView1.OptionsData.Editing         := False;
      SetState('Before');
    end;
end;

procedure TfrmSubParamsNoDev.NLeoClick(Sender: TObject);
begin
  If (Sender as TMenuItem).Checked then
    begin
      cxGridDBTableView1.Columns[((Sender as TMenuItem).Tag)].Visible := False;
      (Sender as TMenuItem).Checked := False;
    end
  else
    begin
      cxGridDBTableView1.Columns[((Sender as TMenuItem).Tag)].Visible := True;
      (Sender as TMenuItem).Checked := True;
    end
end;

procedure TfrmSubParamsNoDev.FAllClick(Sender: TObject);
var
  i: Integer;
begin
  For i := 0 to cxGridDBTableView1.ColumnCount - 1 do
    begin
      cxGridDBTableView1.Columns[i].Visible := True;
      Pedia.Items[i + 3].Checked            := True;
    end
end;

procedure TfrmSubParamsNoDev.FNoneClick(Sender: TObject);
var
  i: Integer;
begin
  For i := 0 to cxGridDBTableView1.ColumnCount - 1 do
    begin
      cxGridDBTableView1.Columns[i].Visible := False;
      Pedia.Items[i + 3].Checked            := False;
    end;
end;

procedure TfrmSubParamsNoDev.FormShow(Sender: TObject);
begin
  // Created := True;
end;

procedure TfrmSubParamsNoDev.BrowseFields(var LeoMenu: TMenuItem);
Var
  i: Integer;
  NewMenu: TMenuItem;
begin
  LeoMenu.Clear;

  NewMenu         := TMenuItem.Create(Self);
  NewMenu.Caption := 'Όλα';
  NewMenu.OnClick := FAllClick;
  LeoMenu.Add(NewMenu);

  NewMenu         := TMenuItem.Create(Self);
  NewMenu.Caption := 'Κανένα';
  NewMenu.OnClick := FNoneClick;
  LeoMenu.Add(NewMenu);

  NewMenu         := TMenuItem.Create(Self);
  NewMenu.Caption := '-';
  LeoMenu.Add(NewMenu);

  For i := 0 to (cxGridDBTableView1.ColumnCount - 1) do
    begin
      NewMenu         := TMenuItem.Create(Self);
      NewMenu.Caption := cxGridDBTableView1.Columns[i].Caption;
      NewMenu.Tag     := i;
      NewMenu.Checked := cxGridDBTableView1.Columns[i].Visible;
      NewMenu.OnClick := NLeoClick;
      LeoMenu.Add(NewMenu);
    end;
end;

procedure TfrmSubParamsNoDev.Button1000Click(Sender: TObject);
var
  st: String;
begin
  st                                               := ComboBox1000.Items[ComboBox1000.ItemIndex];
  cxGridDBTableView1.OptionsBehavior.IncSearch     := False;
  cxGridDBTableView1.OptionsBehavior.IncSearchItem := cxGridDBTableView1.GetColumnByFieldName(st);
  cxGridDBTableView1.OptionsBehavior.IncSearch     := True;
  Button1000.Caption                               := st;
  Self.ActiveControl                               := cxGrid;
end;

procedure TfrmSubParamsNoDev.GridColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
Var
  SLeo: String;
  NewMenu: TMenuItem;
  i: Integer;
begin
  NewMenu         := TMenuItem.Create(Self);
  NewMenu.Caption := cxGridDBTableView1.Columns[ToIndex].Caption;
  NewMenu.Tag     := ToIndex + 3;
  NewMenu.Checked := Pedia.Items[FromIndex + 3].Checked;
  NewMenu.OnClick := NLeoClick;
  Pedia.Insert(ToIndex + 3, NewMenu);
  Pedia.Delete(FromIndex + 1 + 3);
  for i                := 3 to Pedia.Count - 3 do
    Pedia.Items[i].Tag := i - 3;
end;

procedure TfrmSubParamsNoDev.SetAddEditForm(const Value: TFormClass);
begin
  FAddEditForm := Value;
end;

procedure TfrmSubParamsNoDev.SetGDataSet(const Value: TDataSet);
begin
  FGDataSet := Value;
end;

procedure TfrmSubParamsNoDev.ModalOkExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmSubParamsNoDev.ModalCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmSubParamsNoDev.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // if Grid.DataSource.DataSet.State in [dsEdit] then
  // DMMain.ReleaseLock(LoginName,Grid.DataSource.DataSet,PFormName);
end;

procedure TfrmSubParamsNoDev.ReleaseLock;
begin
  // if Not (Grid.DataSource = nil) then
  // DMMain.ReleaseLock(LoginName,Grid.DataSource.DataSet,PFormName);
end;

procedure TfrmSubParamsNoDev.CmdCloseExecute(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmSubParamsNoDev.ComboBox1000DblClick(Sender: TObject);
var
  st: String;
begin
  st                                               := TComboBox(Sender).SelText;
  cxGridDBTableView1.OptionsBehavior.IncSearch     := True;
  cxGridDBTableView1.OptionsBehavior.IncSearchItem := cxGridDBTableView1.GetColumnByFieldName(st);
  Self.ActiveControl                               := cxGrid;
end;

procedure TfrmSubParamsNoDev.GridDblClick(Sender: TObject);
begin
  if cxGridDBTableView1.DataController.DataSource.Dataset.State = dsBrowse then
    UpdateExecute(Sender);
end;

procedure TfrmSubParamsNoDev.GridEnter(Sender: TObject);
begin
  Self.FilteredGrid := Self.cxGrid;
end;

procedure TfrmSubParamsNoDev.actOutputToExcelClick(Sender: TObject);
begin
  Output2XLSdx(cxGridDBTableView1);
end;

procedure TfrmSubParamsNoDev.actPrevExecute(Sender: TObject);
begin
  cxGridDBTableView1.DataController.DataSource.Dataset.Prior;
end;

procedure TfrmSubParamsNoDev.actPrintGridClick(Sender: TObject);
var
  rep: TrptSubParams;
begin
  rep := TrptSubParams.CreateFromDev(Self, PopupcxGridDBTableView, Self.Caption);
  try
    rep.Preview;
  finally;
    rep.Free;
  end;
end;

procedure TfrmSubParamsNoDev.actLastExecute(Sender: TObject);
begin
  cxGridDBTableView1.DataController.DataSource.Dataset.Last;
end;

procedure TfrmSubParamsNoDev.actNextExecute(Sender: TObject);
begin
  cxGridDBTableView1.DataController.DataSource.Dataset.Next;
end;

procedure TfrmSubParamsNoDev.GridTitleClick(Column: TColumn);
var
  SLeo, LeoS, TempField: String;
  LeoColumn: TColumn;
  i, x, z: Integer;
  LeoV, LeoV1: Variant;
begin
  inherited;
  TempField := Column.FieldName;
  LeoColumn := Column;
  If (TDBGrid(FilteredGrid)).DataSource.Dataset.FieldByName(TempField).Lookup then
    Exit;
  If (TDBGrid(FilteredGrid)).DataSource.Dataset.FieldByName(TempField).Calculated then
    Exit;

  { if (TDBGrid(FilteredGrid)).DataSource.DataSet is TTable then
    begin
    TTable((TDBGrid(FilteredGrid)).DataSource.DataSet).IndexFieldNames:=FindFieldsForIndex(PediaIdx);
    end; }
  if (TDBGrid(FilteredGrid)).DataSource.Dataset is TAdoTable then
    begin
      TAdoTable((TDBGrid(FilteredGrid)).DataSource.Dataset).IndexFieldNames := Column.FieldName;
    end;

  {
    if (TDBGrid(FilteredGrid)).DataSource.DataSet is TADOQuery then
    begin
    if TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).FieldByName(TempField).Tag = 0 then
    begin
    x:=TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Parameters.Count;
    if x > 0 then
    begin
    LeoV1:=VarArrayCreate([0, x],VarVariant);
    LeoV:=VarArrayCreate([0, x],VarVariant);
    SaveAdoParameters(LeoV,LeoV1,x,TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet));
    end;
    LeoS:=TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text;
    if Pos('^',Column.Title.Caption) > 0 then
    begin
    //Remove Order
    //             Column.Title.Caption:=AnsiReplaceStr(Column.Title.Caption,'^','*');
    ClearMarks;
    LeoColumn.Title.Caption:=LeoColumn.Title.Caption+'*';
    TempField :=TempField + ' Desc ';
    end
    else
    if Pos('*',Column.Title.Caption) > 0 then
    begin
    //Remove Order
    //               Column.Title.Caption:=AnsiReplaceStr(Column.Title.Caption,'*','^');
    ClearMarks;
    Column.Title.Caption:=Column.Title.Caption+'^';
    TempField :=TempField;
    end
    else
    begin
    //Remove Order
    ClearMarks;
    Column.Title.Caption:=Column.Title.Caption+'^';
    TempField :=TempField;
    end;

    if Pos('Order By ', LeoS ) = 0 then
    begin
    LeoS:=AnsiReplaceStr(LeoS,';',' ');
    LeoS:=LeoS+' Order By '+TempField;
    TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Clear;
    TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Add(LeoS);
    TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=False;
    end
    else
    begin
    LeoS:=TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text;
    i:=length(LeoS);
    z:=Pos('Order By ', LeoS );
    if z > 0 then
    System.Delete(LeoS,z,(i-z));
    LeoS:=LeoS+' Order By '+TempField;
    TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text := LeoS;
    TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=False;
    end;
    if x > 0 then
    begin
    ReturnAdoParameters(LeoV,LeoV1,x,TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet));
    end;
    TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=True;
    end;
    end; }
end;

procedure TfrmSubParamsNoDev.GridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  HoldColor: TColor;
  Fld1, Fld2: TField;
begin
  inherited;
  // EhOut
  { HoldColor:=Grid.Canvas.Brush.Color;
    Fld1:=Grid.DataSource.DataSet.FindField('Deleted');
    Fld2:=Grid.DataSource.DataSet.FindField('Inactive');

    if (Not(Fld1=Nil) And Fld1.asBoolean) then
    begin
    Grid.Canvas.Brush.Color:=clRed;
    Grid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    Grid.Canvas.Brush.Color:=HoldColor;
    end
    else if (Not(Fld2=Nil) And Fld2.asBoolean) then
    begin
    Grid.Canvas.Brush.Color:=clGreen;
    Grid.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    Grid.Canvas.Brush.Color:=HoldColor;
    end
    else
    Grid.DefaultDrawColumnCell(Rect,DataCol,Column,State); }
end;

procedure TfrmSubParamsNoDev.NewGrVariantClick(Sender: TObject);
var
  st: TStringStream;
begin
  // PopupcxGridDBTableView
  // SelectMainGrid
  if Assigned(PopupcxGridDBTableView) then
    if PopupcxGridDBTableView is TcxGridDBTableView then
      begin
        st := TStringStream.Create;
        TcxGridDBTableView(PopupcxGridDBTableView).StoreToStream(st);
        // DMMain.NewVariantCx(Self,Self.ClassName,St);
        DMMain.NewVariantCx(Self, Self.Caption, st);
        st.Free;
      end;
end;

procedure TfrmSubParamsNoDev.GetGrVariantClick(Sender: TObject);
var
  st: TStringStream;
begin
  if Assigned(PopupcxGridDBTableView) then
    if PopupcxGridDBTableView is TcxGridDBTableView then
      begin
        st := TStringStream.Create;
        // DMMain.GetVariantCx(Self,Self.ClassName,St);
        DMMain.GetVariantCx(Self, Self.Caption, st);
        TcxGridDBTableView(PopupcxGridDBTableView).RestoreFromStream(st);
        st.Free;
      end;
end;

function TfrmSubParamsNoDev.CreateDataModuleWithOut(DModule: TFormClass): TDMBASE;
begin
  Result := TDMBASE(DModule.Create(Self));
end;

procedure TfrmSubParamsNoDev.CreateAddEditForm;
var
  n, ii, LWidth, LIndex: Integer;
  NField, NNField, LName: String;
  LField: TFieldClass;
  LFieldItem: TField;
begin
  for n := 0 to cxGridDBTableView1.ColumnCount - 1 do
    begin
      if Assigned(cxGridDBTableView1.Columns[n].DataBinding.Field) then
        begin
          if Not(cxGridDBTableView1.Columns[n].DataBinding.Field.Calculated) then
            if cxGridDBTableView1.GetColumnByFieldName(cxGridDBTableView1.Columns[n].DataBinding.FieldName).Visible then
              begin
                if Not(cxGridDBTableView1.Columns[n].DataBinding.Field.Lookup) then
                  begin
                    NField := cxGridDBTableView1.Columns[n].DataBinding.FieldName;
                    LIndex := cxGridDBTableView1.DataController.DataSource.Dataset.FieldByName(NField).Index;
                    LName  := cxGridDBTableView1.DataController.DataSource.Dataset.Fields[LIndex].DisplayName;
                    // LWidth:= FGrid.DataSource.DataSet.Fields[LIndex].DisplayWidth;
                    LWidth := cxGridDBTableView1.Columns[n].Width;
                    LWidth := cxGridDBTableView1.Columns[n].Width * 2;
                    if LWidth < 10 then
                      // Size is Messured in Characters so Size * 10 = Logical Width
                      LWidth := cxGridDBTableView1.DataController.DataSource.Dataset.Fields[LIndex].Size * 10;
                    // FieldDefs Have other Index  from FieldByName.Index
                    for ii := 0 to (cxGridDBTableView1.DataController.DataSource.Dataset.FieldDefs.Count - 1) do
                      begin
                        if cxGridDBTableView1.DataController.DataSource.Dataset.FieldDefs[ii].Name = NField then
                          LField := cxGridDBTableView1.DataController.DataSource.Dataset.FieldDefs[ii].FieldClass;
                      end;
                    NNField := NField;
                    System.Delete(NField, Pos('.', NField), 1);
                    if LField = TBooleanField then
                      CreateCheckBx(PanelDtl, NField, LName, LWidth, LField, NNField)
                    else if LField = TMemoField then
                      CreateMemo(PanelDtl, NField, LName, LWidth, LField, NNField)
                    else
                      CreateEdit(PanelDtl, NField, LName, LWidth, LField, NNField);
                  end
                else
                  begin
                    NField := cxGridDBTableView1.Columns[n].DataBinding.FieldName;
                    LIndex := cxGridDBTableView1.DataController.DataSource.Dataset.FieldByName(NField).Index;
                    LName  := cxGridDBTableView1.DataController.DataSource.Dataset.Fields[LIndex].DisplayName;
                    // LWidth:= FGrid.DataSource.DataSet.Fields[LIndex].DisplayWidth;
                    LWidth := cxGridDBTableView1.Columns[n].Width;
                    if LWidth < 10 then
                      // Size is Messured in Characters so Size * 10 = Logical Width
                      LWidth := cxGridDBTableView1.DataController.DataSource.Dataset.Fields[LIndex].Size * 10;
                    // LField:= FGrid.DataSource.DataSet.FieldDefs[LIndex].FieldClass;
                    for ii := 0 to (cxGridDBTableView1.DataController.DataSource.Dataset.FieldDefs.Count - 1) do
                      begin
                        if cxGridDBTableView1.DataController.DataSource.Dataset.FieldDefs[ii].Name = NField then
                          LField := cxGridDBTableView1.DataController.DataSource.Dataset.FieldDefs[ii].FieldClass;
                      end;
                    LFieldItem := cxGridDBTableView1.DataController.DataSource.Dataset.FieldByName(NField);
                    NNField    := NField;
                    System.Delete(NField, Pos('.', NField), 1);
                    CreateLCB(PanelDtl, NField, LName, LWidth, LField, NNField, LFieldItem);
                  end;
              end;
        end;
    end;
  CreatedAddEdit := True;
end;

function TfrmSubParamsNoDev.CreateCheckBx(Owner: TPanel; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
var
  LEdit: TDBCheckBox;
  LLabel: TLabel;
begin

  CurTop           := CurTop + 20;
  LEdit            := TDBCheckBox.Create(Owner);
  LEdit.DataSource := cxGridDBTableView1.DataController.DataSource;
  LEdit.DataField  := NNField;
  LEdit.Name       := 'EdtF' + Name;
  LEdit.Hint       := NNField;
  LEdit.Parent     := Owner;
  // LEdit.Parent := self;
  LEdit.Top     := CurTop;
  LEdit.Left    := 150;
  LEdit.Tag     := 1;
  LEdit.Caption := '';
  // LEdit.AllowGrayed := True;
  if Width > 200 then
    LEdit.Width := 190
  else
    LEdit.Width := Width;

  LEdit.Visible := True;

  LLabel        := TLabel.Create(Owner);
  LLabel.Name   := 'Lab' + Name;
  LLabel.Parent := Owner;
  // LLabel.Parent  := self;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
  // Self.Height    := CurTop + 120;
end;

function TfrmSubParamsNoDev.CreateEdit(Owner: TPanel; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
var
  LEdit: TDBEdit;
  LLabel: TLabel;
begin
  CurTop           := CurTop + 20;
  LEdit            := TDBEdit.Create(Owner);
  LEdit.Name       := 'Edt' + Name;
  LEdit.Text       := '';
  LEdit.DataSource := cxGridDBTableView1.DataController.DataSource;
  LEdit.DataField  := NNField;
  LEdit.Hint       := NNField;
  LEdit.Parent     := Owner;
  // LEdit.Parent := self;
  LEdit.Top  := CurTop;
  LEdit.Left := 150;
  LEdit.Tag  := 1;
  if Width > 200 then
    LEdit.Width := 190
  else
    LEdit.Width := Width;
  if Width < 20 then
    LEdit.Width := 190;

  LEdit.Visible := True;

  // if LField = TDateTimeField then
  // LEdit.OnDblClick := EditDateEnter;

  LLabel        := TLabel.Create(Owner);
  LLabel.Name   := 'Lab' + Name;
  LLabel.Parent := Owner;
  // LLabel.Parent  := self;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
  // Self.Height    := CurTop + 120;
end;

function TfrmSubParamsNoDev.CreateMemo(Owner: TPanel; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
var
  LEdit: TDBMemo;
  LLabel: TLabel;
begin
  CurTop           := CurTop + 20;
  LEdit            := TDBMemo.Create(Owner);
  LEdit.Name       := 'EdtMm' + Name;
  LEdit.Text       := '';
  LEdit.Parent     := Owner;
  LEdit.DataSource := cxGridDBTableView1.DataController.DataSource;
  LEdit.DataField  := NNField;
  LEdit.Hint       := NNField;
  // LEdit.Parent := self;
  LEdit.Top  := CurTop;
  LEdit.Left := 150;
  LEdit.Tag  := 1;
  if Width > 200 then
    LEdit.Width := 190
  else
    LEdit.Width := Width;
  if Width < 20 then
    LEdit.Width := 190;

  LEdit.Width   := 250;
  LEdit.Height  := 40;
  LEdit.Visible := True;

  // if LField = TDateTimeField then
  // LEdit.OnDblClick := EditDateEnter;

  LLabel        := TLabel.Create(Owner);
  LLabel.Name   := 'Lab' + Name;
  LLabel.Parent := Owner;
  // LLabel.Parent  := self;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
  // Self.Height    := CurTop + 120;
end;

function TfrmSubParamsNoDev.CreateLCB(Owner: TPanel; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String; Field: TField): TComponent;
var
  LEdit: TDBLookUpComboBox;
  LLabel: TLabel;
  LBut, LBut2: TButton;
  LeoName, FldName: String;
  x: Integer;
begin
  CurTop       := CurTop + 20;
  LEdit        := TDBLookUpComboBox.Create(Owner);
  LEdit.Name   := 'LCB' + Name;
  LEdit.Parent := Owner;
  // LEdit.Parent := self;
  LEdit.Top   := CurTop;
  LEdit.Left  := 150;
  LEdit.Width := Width;
  if Width > 200 then
    LEdit.Width := 190
  else
    LEdit.Width := Width;
  LEdit.Visible := True;
  LeoName       := TStringField(Field).LookupDataSet.Name;
  System.Delete(LeoName, 1, 3);
  LeoName         := 'dts' + LeoName;
  LEdit.Hint      := TStringField(Field).KeyFields;
  LEdit.OnKeyDown := LeoKeyDown;
  for x           := 0 to DM.ComponentCount - 1 do
    begin
      if DM.Components[x].Name = LeoName then
        begin
          LEdit.ListSource := TDataSource(DM.Components[x]);
        end
    end;
  if Not(Assigned(LEdit.ListSource)) then
    begin
      LeoName    := 'ds' + TStringField(Field).LookupDataSet.Name;
      LEdit.Hint := TStringField(Field).KeyFields;
      for x      := 0 to DM.ComponentCount - 1 do
        begin
          if DM.Components[x].Name = LeoName then
            begin
              LEdit.ListSource := TDataSource(DM.Components[x]);
            end
        end;
      if Not(Assigned(LEdit.ListSource)) then
        begin
          LeoName    := 'ds' + TStringField(Field).LookupDataSet.Name;
          LEdit.Hint := TStringField(Field).KeyFields;
          for x      := 0 to DMMain.ComponentCount - 1 do
            begin
              if DMMain.Components[x].Name = LeoName then
                begin
                  LEdit.ListSource := TDataSource(DMMain.Components[x]);
                end
            end;
        end;
    end;

  LEdit.ListField  := TStringField(Field).LookupResultField;
  LEdit.KeyField   := TStringField(Field).LookupKeyFields;
  LEdit.DataSource := cxGridDBTableView1.DataController.DataSource;
  LEdit.DataField  := TStringField(Field).KeyFields;

  LLabel        := TLabel.Create(Owner);
  LLabel.Name   := 'L' + Name;
  LLabel.Parent := Owner;
  // LLabel.Parent  := self;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
  // Self.Height    := CurTop + 120;
end;

procedure TfrmSubParamsNoDev.LeoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  PopField: String;
  PopDBLC: TDBLookUpComboBox;
begin
  inherited;
  if Key = VK_F4 then
    begin
      if Sender is TDBLookUpComboBox then
        begin
          PopDBLC := TDBLookUpComboBox(Sender);
          if PopDBLC.ListField > '' then
            begin
              PopField := PopDBLC.ListField;
              // !!! Strict reference to frmMain
              frmMain.actSubParamNoWrapPopupExecute(PopField);
              TDBLookUpComboBox(Sender).ListSource.Dataset.Active := False;
              TDBLookUpComboBox(Sender).ListSource.Dataset.Active := True;
            end;
        end;
    end;
end;

procedure TfrmSubParamsNoDev.actSelectCriteriaExecute(Sender: TObject);
var
  frm: TfrmFilterEn;
  TmpSql: string;
begin
  inherited;
  if FormDts.Dataset is TAdoQuery then
    if FormDataSetSql = '' then
      FormDataSetSql := TAdoQuery(FormDts.Dataset).SQL.Text;

  frm := TfrmFilterEn.CreateWithParamDSet(Self, FormDts.Dataset, DM);
  if frm.ShowModal = mrOk then
    TmpSql := frm.KSleo
  else
    TmpSql := '';
  frm.Free;
  FormDts.Dataset.Active := False;
  // TAdoSql(FormDts.DataSet.DataSource).SQL.Text:= DM.BrowseSqlInit.Text;
  if TmpSql = '' then
    if MessageDlg('Προσοχή δεν έχουν οριστεί κριτήρια.Μπορεί η εκτέλεση να πάρει πολύ χρόνο', mtInformation, [mbOK, mbCancel], 0) = mrCancel then
      Exit;
  if TmpSql > '' then
    begin
      FormDataSetFilter := TmpSql;
      if FormDts.Dataset is TAdoQuery then
        begin
          if FormDataSetSql = TAdoQuery(FormDts.Dataset).SQL.Text then
            TAdoQuery(FormDts.Dataset).SQL.Add(' Where  ' + TmpSql)
          else
            TAdoQuery(FormDts.Dataset).SQL.Add(TmpSql)
        end
      else
        begin
          TAdoTable(FormDts.Dataset).Filter   := TmpSql;
          TAdoTable(FormDts.Dataset).Filtered := True;
        end;
    end;
  // Not Usefull
  // else
  // if FormDts.DataSet is TAdoQuery then
  // begin
  // //Pass
  // end
  // else
  // begin
  // TAdoTable(FormDts.DataSet).Filter := '';
  // TAdoTable(FormDts.DataSet).Filtered := False;
  // end;

  FormDts.Dataset.Active := True;
end;

procedure TfrmSubParamsNoDev.actCancelSelectionExecute(Sender: TObject);
begin
  FormDts.Dataset.Active := False;
  FormDataSetFilter      := '';
  if FormDts.Dataset is TAdoQuery then
    begin
      TAdoQuery(FormDts.Dataset).SQL.Text := FormDataSetSql
    end
  else
    begin
      TAdoTable(FormDts.Dataset).Filter   := '';
      TAdoTable(FormDts.Dataset).Filtered := False;
    end;
  FormDts.Dataset.Active := True;
end;

procedure TfrmSubParamsNoDev.actDispSelectionExecute(Sender: TObject);
begin
  if FormDataSetFilter > '' then
    MessageDlg(FormDataSetFilter, mtInformation, [mbOK], 0);
end;


end.
