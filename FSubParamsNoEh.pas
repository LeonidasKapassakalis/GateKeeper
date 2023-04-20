unit FSubParamsNoEH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DBase, db, DMain, AdoDB,
  Menus, FSearch, ActnList, ComCtrls, dbTables, jpeg, ImgList, ToolWin,
  FDefineQOrder, FBForm, DBGridEhGrouping, GridsEh, DBGridEh,
  EhLibADO, EhLibMTE, DBGridEhImpExp,
  MemTableDataEh, MemTableEh, DataDriverEh, PrnDbgeh, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, DBAxisGridsEh;

type
  TfrmSubParamsNoEH = class(TForm)
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
    N7: TMenuItem;
    N8: TMenuItem;
    StatusBar1: TStatusBar;
    UpdateActions: TAction;
    N9: TMenuItem;
    N10: TMenuItem;
    Refresh1: TMenuItem;
    MC2: TMenuItem;
    MC3: TMenuItem;
    Pedia: TMenuItem;
    Indexes: TMenuItem;
    FAll: TMenuItem;
    FNone: TMenuItem;
    MC4: TMenuItem;
    Panel1: TPanel;
    ToolBar1: TToolBar;
    TBNew: TToolButton;
    TBEdit: TToolButton;
    TBDelete: TToolButton;
    TBPrint: TToolButton;
    TBRefresh: TToolButton;
    TBSave: TToolButton;
    ImageList1: TImageList;
    TBCancel: TToolButton;
    TNMOK: TToolButton;
    ModalOk: TAction;
    ModalCancel: TAction;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    TBMCancel: TToolButton;
    TBClose: TToolButton;
    CmdClose: TAction;
    rrrrr: TMenuItem;
    NCUnderScore: TMenuItem;
    actOutputToExcel: TMenuItem;
    N1: TMenuItem;
    NewGrVariant: TMenuItem;
    GetGrVariant: TMenuItem;
    actExcel: TAction;
    ToolButton1: TToolButton;
    ClearGrid: TAction;
    ClearGrid1: TMenuItem;
    UpdTableFld: TAction;
    DataSource1: TDataSource;
    Grid: TDBGridEh;
    MemTableEh1: TMemTableEh;
    Edit1: TEdit;
    PrintDBGridEh1: TPrintDBGridEh;
    ddMemTableEh11: TDataSetDriverEh;
    MemTableEh1LLan: TStringField;
    MemTableEh1PhoneId: TIntegerField;
    MemTableEh1UserName: TWideStringField;
    MemTableEh1password: TWideStringField;
    MemTableEh1StaticIP: TIntegerField;
    MemTableEh1LanIP: TIntegerField;
    MemTableEh1WanIP: TIntegerField;
    MemTableEh1LoopBack: TIntegerField;
    MemTableEh1Comment: TWideStringField;
    MemTableEh1InsUsr: TIntegerField;
    MemTableEh1InsDT: TDateTimeField;
    MemTableEh1UpdUsr: TIntegerField;
    MemTableEh1UpdDT: TDateTimeField;
    MemTableEh1Deleted: TBooleanField;
    MemTableEh1DelUsr: TIntegerField;
    MemTableEh1DelDT: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
    procedure BrowseIndex(var LeoMenu: TMenuItem);
    procedure BrowseFields(var LeoMenu: TMenuItem);
    procedure SecMenuOnClick(Sender: TObject);
    procedure NLeoClick(Sender: TObject);
    procedure FNoneClick(Sender: TObject);
    procedure GridColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
    procedure ModalOkExecute(Sender: TObject);
    procedure ModalCancelExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CmdCloseExecute(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure GridEnter(Sender: TObject);
    procedure rrrrrClick(Sender: TObject);
    procedure actOutputToExcelClick(Sender: TObject);
    procedure GridTitleClick(Column: TColumn);
    procedure GridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure NewGrVariantClick(Sender: TObject);
    procedure GetGrVariantClick(Sender: TObject);
    procedure actExcelExecute(Sender: TObject);
    procedure ClearGridExecute(Sender: TObject);
    procedure UpdTableFldExecute(Sender: TObject);
    procedure Export1Click(Sender: TObject);
    procedure Edit1DblClick(Sender: TObject);
  private
    FModal: Boolean;
    FCreated: Boolean;
    FIndexAct: Boolean;
    FGDataSet: TDataSet;
    FltGrid: TObject;
    FAddEditForm: TFormClass;
    function AskDelete: Boolean;
    procedure InternalDelete;
    procedure SetGDataSet(const Value: TDataSet);
    procedure SetAddEditForm(const Value: TFormClass);
  protected
    FDM: TDMBase;
    FilSelected: Boolean;
    FilFrom: String;
    FilTo: String;
    FilField: String;
    FilTField: String;
    PFormName: String;
    PFormID: Integer;
    PWithOutDM: Boolean;
    PDataModule: TDMBase;
    PDataSource: String;
    function CreateDataModule: TDMBase; virtual; abstract;
    function CreateDataModuleWithOut(DModule: TDMBase): TDMBase;
    procedure CreateAddEditForm; // virtual ; abstract ;
    procedure CheckBeforeDelete; virtual; abstract;
  public
    constructor CreateModal(aowner: TComponent);
    constructor CreateSecurity(aowner: TComponent; FormID: Integer);
    constructor CreateSecurityModal(aowner: TComponent; FormID: Integer);
    constructor CreateSecurityN(aowner: TComponent; FormID: Integer);
    constructor CreateSecurityWithOut(aowner: TComponent; FormID: Integer; FormName: String; DataModule: TDMBase; DataSource: String; DisFormName: String);

    procedure SetState(const LeoCategory: String);
    procedure PlusState(const LeoCategory: String);
    procedure SetStatusText(Text: String; Index: Integer);
    procedure ReleaseLock;

    property DM: TDMBase read FDM;
    property Created: Boolean read FCreated write FCreated;
    property IndexAct: Boolean read FIndexAct write FIndexAct;
    property GDataSet: TDataSet read FGDataSet write SetGDataSet;
    // property AddEditForm : TForm read FAddEditForm write SetAddEditForm;
    property AddEditForm: TFormClass read FAddEditForm write SetAddEditForm;
    property FilteredGrid: TObject read FltGrid write FltGrid;
  end;

implementation

uses DSubParams, AlertU, ResStr, FFilterEn, FFilterEn2, RSubParams, FMain;

{$R *.DFM}

constructor TfrmSubParamsNoEH.CreateModal(aowner: TComponent);
begin
  FModal   := True;
  Created  := False;
  IndexAct := False;
  Create(aowner);
  SetGDataSet(Grid.DataSource.Dataset);
end;

constructor TfrmSubParamsNoEH.CreateSecurity(aowner: TComponent; FormID: Integer);
begin
  PFormID  := FormID;
  Created  := False;
  IndexAct := False;
  if DMMain.FindFormName(PFormID, PFormName) then
    Create(aowner)
  else
    exit;
  SetGDataSet(Grid.DataSource.Dataset);
end;

constructor TfrmSubParamsNoEH.CreateSecurityN(aowner: TComponent; FormID: Integer);
begin
  PFormID  := FormID;
  Created  := False;
  IndexAct := False;
  if DMMain.FindFormName(PFormID, PFormName) then
    Create(aowner)
  else
    exit;
end;

constructor TfrmSubParamsNoEH.CreateSecurityWithOut(aowner: TComponent; FormID: Integer; FormName: String; DataModule: TDMBase; DataSource: String; DisFormName: String);
begin
  PFormID     := FormID;
  PFormName   := FormName;
  Created     := False;
  IndexAct    := False;
  PWithOutDM  := True;
  PDataModule := DataModule;
  PDataSource := DataSource;

  if DMMain.FindFormName(PFormID, PFormName) then
    Create(aowner)
  else
    exit;
  SetGDataSet(Grid.DataSource.Dataset);
  self.Caption := DisFormName;
end;

constructor TfrmSubParamsNoEH.CreateSecurityModal(aowner: TComponent; FormID: Integer);
begin
  FModal   := True;
  PFormID  := FormID;
  Created  := False;
  IndexAct := False;
  if DMMain.FindFormName(FormID, PFormName) then
    Create(aowner)
  else
    exit;
end;

procedure TfrmSubParamsNoEH.FormCreate(Sender: TObject);
var
  LLeft, LWidth, LTop, LHeight, State, Sb01: Integer;
  Filter, Index, DataSource, Le1, dsl: String;
  a: TObject;
  fld: TField;
  ehc: TDBGridColumnsEh;
  ds: TDataSet;
begin
  inherited;
  panBottom.BevelOuter := bvNone;
  frmMain.ReadIniSub(PFormName, LLeft, LTop, LWidth, LHeight, State);
  // EhOut
  // frmMain.ReadGrid(PFormName,Grid,Filter,Index,DataSource);
  frmMain.SetDisplayedForm(self);
  if LWidth > 0 then
    SetBounds(LLeft, LTop, LWidth, LHeight);
  self.Font       := frmMain.AppFonts[5];
  self.Color      := frmMain.AppColors[5];
  panBottom.Color := frmMain.AppColors[5];
  panBottom.Font  := frmMain.AppFonts[5];
  Grid.Font       := frmMain.AppFonts[6];
  Grid.Color      := frmMain.AppColors[6];

  if PWithOutDM then
    begin
      FDM := CreateDataModuleWithOut(PDataModule);
      // if Grid.DataSource=nil then
      // Grid.DataSource:=TDataSource(FDM.FindComponent(PDatasource));
    end
  else
    begin
      FDM := CreateDataModule;
      // if Grid.DataSource=nil then
      // Grid.DataSource:=TDataSource(FDM.FindComponent(PDatasource));
    end;

  /// /  PDataSource := 'ConnUPIP';

  /// /  DataSetDriverEh1.ProviderDataSet := TDataSet(FDM.FindComponent('ConnUPIP0'));
  /// /  DataSetDriverEh1.ProviderDataSet.Active := True;
  /// /  MessageDlg(DataSetDriverEh1.ProviderDataSet.Name, mtWarning, [mbOK], 0);

  // MemTableEh1.Active := True;

  if Filter > '' then
    begin
      Grid.DataSource.Dataset.Filter   := Filter;
      Grid.DataSource.Dataset.Filtered := True;
    end;
  if Grid.DataSource.Dataset is TTable then
    TTable(Grid.DataSource.Dataset).IndexName := Index;
  if Grid.DataSource.Dataset is TAdoTable then
    begin
      TAdoTable(Grid.DataSource.Dataset).Active    := False;
      TAdoTable(Grid.DataSource.Dataset).IndexName := Index;
      TAdoTable(Grid.DataSource.Dataset).Active    := True;
    end;

  Grid.Columns.AddAllColumns(True);

  // TDMSubParams(FDM).MakIP.Active := True;

  /// /    MemTableEh1.StoreDefs := True;

  /// /    MemTableEh1.FieldDefs.Update;

  // Grid.DataSource.DataSet.Active := False;

  for Sb01 := 0 to ddMemTableEh11.ProviderDataSet.FieldCount - 1 do
    begin

      if ddMemTableEh11.ProviderDataSet.Fields[Sb01].fieldkind = fkLookup then
        MessageDlg(ddMemTableEh11.ProviderDataSet.Fields[Sb01].FieldName, mtWarning, [mbOK], 0);

    end;


  // for sb01 := 0 to MemTableEh1.FieldDefList.Count - 1 do
  // MessageDlg(MemTableEh1.FieldDefs[sb01].Name , mtWarning, [mbOK], 0);

  // for sb01 := 0 to MemTableEh1.FieldCount - 1 do
  // MessageDlg(MemTableEh1.Fields[sb01].Name , mtWarning, [mbOK], 0);

  // AddAllFields(DataSetDriverEh1.ProviderDataSet,MemTableEh1);

  { for sb01 := 0 to Grid.DataSource.DataSet.FieldCount - 1 do
    begin
    if Grid.DataSource.DataSet.Fields[sb01].fieldkind = fkLookup then
    begin
    fld:=TStringField.Create(MemTableEh1);
    fld.Name              := Grid.DataSource.DataSet.Fields[sb01].FieldName + 'Lup';
    fld.FieldName         := Grid.DataSource.DataSet.Fields[sb01].FieldName + 'Lu';
    fld.FieldKind         := fkLookup;
    fld.LookupDataSet     := TDMSubParams(FDM).MakIP0;
    fld.LookupKeyFields   := 'id';
    fld.KeyFields         := 'LanIP';
    fld.KeyFields         := 'MemTableEh1LanIP';

    fld.LookupResultField := 'TextIP';
    fld.LookupCache       := True;
    //          fld.Lookup            := True;
    //          Grid.DataSource.DataSet.Fields.Add(fld);
    MemTableEh1.Fields.Add(fld);
    //          MemTableEh1.FieldDefs.Update;
    end;
    end;
    MemTableEh1.CreateDataSet;
    Grid.Columns.AddAllColumns(true); }
  Grid.DataSource.Dataset.Active := True;

  for Sb01 := 0 to Grid.Columns.Count - 1 do
    begin
      if Grid.DataSource.Dataset.FieldByName(Grid.Columns[Sb01].FieldName).fieldkind = fkLookup then
        begin
          Grid.Columns[Sb01].Title.TitleButton := False;

          Le1                                    := Grid.Columns[Sb01].FieldName;
          dsl                                    := Grid.DataSource.Dataset.FieldByName(Le1).LookupDataSet.Name;
          Grid.Columns[Sb01].STFilter.ListSource := TDataSource(TDMSubParams(FDM).FindComponent('ds' + dsl));
          Grid.Columns[Sb01].STFilter.ListField  := Grid.DataSource.Dataset.FieldByName(Grid.Columns[Sb01].FieldName).LookupResultField;
          Grid.Columns[Sb01].STFilter.KeyField   := Grid.DataSource.Dataset.FieldByName(Grid.Columns[Sb01].FieldName).LookupKeyFields;
          Grid.Columns[Sb01].STFilter.DataField  := Grid.DataSource.Dataset.FieldByName(Grid.Columns[Sb01].FieldName).KeyFields;
          Grid.Columns[Sb01].STFilter.Visible    := False;


          // Grid.Columns[sb01-1].STFilter.ListSource := TDataSource(TDMSubParams(FDM).FindComponent('ds'+dsl));
          // Grid.Columns[sb01-1].STFilter.ListField := Grid.DataSource.DataSet.FieldByName(Grid.Columns[sb01].FieldName).LookupKeyFields;
          // Grid.Columns[sb01-1].STFilter.ListField := Grid.DataSource.DataSet.FieldByName(Grid.Columns[sb01].FieldName).LookupResultField;
          // Grid.Columns[sb01-1].STFilter.KeyField  := Grid.DataSource.DataSet.FieldByName(Grid.Columns[sb01].FieldName).LookupKeyFields;
          // Grid.Columns[sb01-1].STFilter.DataField  := Grid.DataSource.DataSet.FieldByName(Grid.Columns[sb01].FieldName).KeyFields;

          // Grid.Columns[sb01].STFilter.Visible := false;
        end;
    end;
  // Grid.Options:=Grid.Options+[dgRowSelect];
  // Grid.Options:=Grid.Options-[dgEditing];
end;

procedure TfrmSubParamsNoEH.InternalDelete;
begin
  // if (DM <> nil) and AskDelete then
  // DM.DeleteNamedRecord( Grid.DataSource.DataSet );
end;

procedure TfrmSubParamsNoEH.GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  { if (ssCtrl in Shift) and (Key = VK_DELETE) then begin
    InternalDelete;
    Key := 0;
    end; }
end;

function TfrmSubParamsNoEH.AskDelete: Boolean;
begin
  Result := sAlert(mtConfirmation, SCADeleteRecord, 2) = 1;
end;

procedure TfrmSubParamsNoEH.pmsFilterClick(Sender: TObject);
var
  frm: TfrmFilterEn2;
begin
  inherited;
  if (popFilter.PopupComponent is TDBGridEh) then
    begin
      if (popFilter.PopupComponent is TDBGridEh) then
        frm := TfrmFilterEn2.CreateWithParam(self, TDBGridEh(popFilter.PopupComponent), DM);
      try
        frm.ShowModal;
        if ((frm.ModalResult = mrOk)) then
          begin
            if TDBGridEh(FilteredGrid).DataSource.Dataset.Filter > '' then
              TDBGridEh(FilteredGrid).DataSource.Dataset.Filter := TDBGridEh(FilteredGrid).DataSource.Dataset.Filter + ' AND ' + frm.KSleo
            else
              TDBGridEh(FilteredGrid).DataSource.Dataset.Filter := frm.KSleo;
            TDBGridEh(FilteredGrid).DataSource.Dataset.Filtered := True;
          end;
      finally
        frm.Free;
      end;
    end;
end;

procedure TfrmSubParamsNoEH.pmsCancelFilterClick(Sender: TObject);
var
  i: Integer;
begin
  Grid.DataSource.Dataset.Filtered := False;
  Grid.DataSource.Dataset.Filter   := '';

  if Grid is TDBGridEh then
    for i := 0 to Grid.Columns.Count - 1 do
      Grid.Columns[i].STFilter.Clear;
end;

procedure TfrmSubParamsNoEH.N2Click(Sender: TObject);
var
  frm: TfrmSearch;
begin
  frm := TfrmSearch.CreateWithParam(self, TDBGrid(popFilter.PopupComponent), DM);
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmSubParamsNoEH.N3Click(Sender: TObject);
begin
  if popFilter.PopupComponent is TDBGrid then
    MessageDlg('Το ενεργό Φίλτρο είναι : ' + TDBGrid(popFilter.PopupComponent).DataSource.Dataset.Filter, mtInformation, [mbOK], 0);
  if popFilter.PopupComponent is TDBGridEh then
    MessageDlg('Το ενεργό Φίλτρο είναι : ' + TDBGridEh(popFilter.PopupComponent).DataSource.Dataset.Filter, mtInformation, [mbOK], 0);
end;

procedure TfrmSubParamsNoEH.FormActivate(Sender: TObject);
begin
  SetState('Before');
  if (Created and not(IndexAct)) then
    begin
      BrowseFields(Pedia);
      BrowseIndex(Indexes);
      IndexAct := True;
    end;

  // MemTableEh1.Active := True;

end;

procedure TfrmSubParamsNoEH.SetState(const LeoCategory: String);
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
      if ((LoginGroup <> 0) And (ActionList1.Actions[i].Tag = 9999)) then
        TCustomAction(ActionList1.Actions[i]).Visible := False;
    end;
  if (FModal and (LeoCategory = 'Before')) then
    PlusState('Modal');
end;

procedure TfrmSubParamsNoEH.PlusState(const LeoCategory: String);
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

procedure TfrmSubParamsNoEH.DeleteExecute(Sender: TObject);
begin
  try
    if Grid.DataSource.Dataset.FieldByName('Id').asInteger = 0 then
      begin
        MessageDlg('Δεν μπορεί να διαγραφή η εγγραφή Zero!!!.', mtError, [mbOK], 0);
        exit;
      end;
  except
  end;
  if AskDelete then
    try
      Grid.DataSource.Dataset.FindField('Deleted');
      Grid.DataSource.Dataset.Edit;
      Grid.DataSource.Dataset.FieldByName('Deleted').asBoolean := True;
      Grid.DataSource.Dataset.FieldByName('DelUsr').asInteger := LoginId;
      Grid.DataSource.Dataset.FieldByName('DelDT').AsDateTime := Now();
      // Grid.DataSource.DataSet.FieldByName('DelDT').AsDateTime := DMMain.GNow;
      Grid.DataSource.Dataset.Post;
    except
      Grid.DataSource.Dataset.Delete;
    end;
end;

procedure TfrmSubParamsNoEH.Edit1DblClick(Sender: TObject);
begin
  Edit1.Text                     := TAdoQuery(Grid.DataSource.Dataset).SQL.Text;
  Grid.DataSource.Dataset.Active := True;
  Edit1.Text                     := Grid.DataSource.Dataset.Filter;
end;

procedure TfrmSubParamsNoEH.Export1Click(Sender: TObject);
begin
  SaveDBGridEhToExportFile(TDBGridEhExportAsUnicodeText, Grid, 'c:\temp\file1.txt', True);
  SaveDBGridEhToExportFile(TDBGridEhExportAsXLS, Grid, 'c:\temp\file1.xls', True);
end;

procedure TfrmSubParamsNoEH.InsertExecute(Sender: TObject);
begin
  if FAddEditForm = nil then
    begin
      Grid.Options := Grid.Options - [dgRowSelect];
      Grid.Options := Grid.Options + [dgEditing];
      Grid.DataSource.Dataset.Append;
      SetState('After');
    end
  else
    begin
      Grid.DataSource.Dataset.Append;
      CreateAddEditForm;
    end;
end;

procedure TfrmSubParamsNoEH.UpdateExecute(Sender: TObject);
var
  LeoT: TAdoTable;
  x: Integer;
begin
  try
    if ((Grid.DataSource.Dataset.State = dsEdit) And (Grid.DataSource.Dataset.FieldByName('Id').asInteger = 0)) then
      begin
        MessageDlg('Δεν μπορεί να Μεταβληθει η εγγραφή Zero!!!.', mtError, [mbOK], 0);
        exit;
      end;
  except
  end;
  if ((Grid.DataSource.Dataset is TAdoTable) or (Grid.DataSource.Dataset is TMemTableEh) or (Grid.DataSource.Dataset is TAdoQuery)) then
    begin
      begin
        if FAddEditForm = nil then
          begin
            Grid.Options := Grid.Options - [dgRowSelect];
            Grid.Options := Grid.Options + [dgEditing];
            Grid.DataSource.Dataset.Edit;
            SetState('After');
          end
        else
          begin
            Grid.DataSource.Dataset.Edit;
            CreateAddEditForm;
          end;
      end
    end;
end;

procedure TfrmSubParamsNoEH.UpdTableFldExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  // Must change for fields

  DMMain.QFindFormID.Active                                := False;
  DMMain.QFindFormID.Parameters.ParamByName('PName').Value := 'T' + self.Name;
  DMMain.QFindFormID.Active                                := True;
  if Not DMMain.QFindFormID.IsEmpty then
    begin
      for i := 0 to ActionList1.ActionCount - 1 do
        begin
          DMMain.QUpdateFormAction.Parameters.ParamByName('ID').Value := CreateKey('FormAction');
          DMMain.QUpdateFormAction.Parameters.ParamByName('Form').Value := DMMain.QFindFormIDID.asInteger;
          DMMain.QUpdateFormAction.Parameters.ParamByName('Action').Value := TCustomAction(ActionList1.Actions[i]).Name;
          DMMain.QUpdateFormAction.Parameters.ParamByName('Text').Value := TCustomAction(ActionList1.Actions[i]).Caption;
          DMMain.QUpdateFormAction.Parameters.ParamByName('SubParam').Value := 0;
          try
            DMMain.QUpdateFormAction.ExecSql;
          except
            SetStatusText('Εχει ήδη ενημερωθεί η ενέργεια ' + TCustomAction(ActionList1.Actions[i]).Name, 0);
          end;
        end;
      DMMain.QUpdateFormAction.Parameters.ParamByName('ID').Value := CreateKey('FormAction');
      DMMain.QUpdateFormAction.Parameters.ParamByName('Form').Value := DMMain.QFindFormIDID.asInteger;
      DMMain.QUpdateFormAction.Parameters.ParamByName('Action').Value := 'All';
      DMMain.QUpdateFormAction.Parameters.ParamByName('Text').Value := 'All';
      DMMain.QUpdateFormAction.Parameters.ParamByName('SubParam').Value := 0;
      try
        DMMain.QUpdateFormAction.ExecSql;
      except
        SetStatusText('Εχει ήδη ενημερωθεί η ενέργεια ' + 'ALL', 0);
      end;
    end;
end;

procedure TfrmSubParamsNoEH.PostExecute(Sender: TObject);
begin
  try
    Grid.DataSource.Dataset.FieldByName('Deleted').asBoolean := False;
  except

  end;

  if Grid.DataSource.Dataset.State in [dsEdit, dsInsert] then
    Grid.DataSource.Dataset.Post;
  Grid.Options := Grid.Options + [dgRowSelect];
  Grid.Options := Grid.Options - [dgEditing];
  SetState('Before');
end;

procedure TfrmSubParamsNoEH.CancelExecute(Sender: TObject);
begin
  if Grid.DataSource.Dataset.State in [dsEdit, dsInsert] then
    Grid.DataSource.Dataset.Cancel;
  Grid.Options := Grid.Options + [dgRowSelect];
  Grid.Options := Grid.Options - [dgEditing];
  SetState('Before');
end;

procedure TfrmSubParamsNoEH.ClearGridExecute(Sender: TObject);
begin
  Grid.DataSource.Dataset.Active := False;
  Grid.Columns.Clear;
  Grid.DataSource.Dataset.Active := True;
end;

procedure TfrmSubParamsNoEH.RefreshExecute(Sender: TObject);
begin
  Grid.DataSource.Dataset.Refresh;
end;

procedure TfrmSubParamsNoEH.AfterExecute(Sender: TObject);
begin
  //
end;

procedure TfrmSubParamsNoEH.BeforeExecute(Sender: TObject);
begin
  //
end;

procedure TfrmSubParamsNoEH.PrintExecute(Sender: TObject);
var
  rep: TrptSubParams;
begin
  if Grid is (DBGrids.TDBGrid) then
    begin
      rep := TrptSubParams.CreateFrom(self, Grid, self.Caption);
      rep.Preview;
      rep.Free;
      // SetStatusText('',0);
    end
  else
    begin
      PrintDBGridEh1.Title.Text := self.Caption;
      PrintDBGridEh1.Preview;
    end;
end;

procedure TfrmSubParamsNoEH.actExcelExecute(Sender: TObject);
begin
  TDMBase(DMMain).OutputFileDs(Grid.DataSource);
end;

procedure TfrmSubParamsNoEH.ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
begin
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
end;

procedure TfrmSubParamsNoEH.SetStatusText(Text: String; Index: Integer);
begin
  StatusBar1.Panels[Index].Text := Text;
end;

procedure TfrmSubParamsNoEH.N10Click(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  DMMain.QFindFormID.Active                                := False;
  DMMain.QFindFormID.Parameters.ParamByName('PName').Value := 'T' + self.Name;
  DMMain.QFindFormID.Active                                := True;
  if Not DMMain.QFindFormID.IsEmpty then
    begin
      for i := 0 to ActionList1.ActionCount - 1 do
        begin
          DMMain.QUpdateFormAction.Parameters.ParamByName('ID').Value := CreateKey('FormAction');
          DMMain.QUpdateFormAction.Parameters.ParamByName('Form').Value := DMMain.QFindFormIDID.asInteger;
          DMMain.QUpdateFormAction.Parameters.ParamByName('Action').Value := TCustomAction(ActionList1.Actions[i]).Name;
          DMMain.QUpdateFormAction.Parameters.ParamByName('Text').Value := TCustomAction(ActionList1.Actions[i]).Caption;
          DMMain.QUpdateFormAction.Parameters.ParamByName('SubParam').Value := 0;
          try
            DMMain.QUpdateFormAction.ExecSql;
          except
            SetStatusText('Εχει ήδη ενημερωθεί η ενέργεια ' + TCustomAction(ActionList1.Actions[i]).Name, 0);
          end;
        end;
      DMMain.QUpdateFormAction.Parameters.ParamByName('ID').Value := CreateKey('FormAction');
      DMMain.QUpdateFormAction.Parameters.ParamByName('Form').Value := DMMain.QFindFormIDID.asInteger;
      DMMain.QUpdateFormAction.Parameters.ParamByName('Action').Value := 'All';
      DMMain.QUpdateFormAction.Parameters.ParamByName('Text').Value := 'All';
      DMMain.QUpdateFormAction.Parameters.ParamByName('SubParam').Value := 0;
      try
        DMMain.QUpdateFormAction.ExecSql;
      except
        SetStatusText('Εχει ήδη ενημερωθεί η ενέργεια ' + 'ALL', 0);
      end;
    end;
end;

procedure TfrmSubParamsNoEH.FormDestroy(Sender: TObject);
begin
  frmMain.SetDisplayedForm(nil);
  frmMain.WriteIniSub(PFormName, self.Left, self.Top, self.Width, self.Height, 0);
  // EhOut
  // frmMain.WriteGrid(PFormName,Grid);
end;

procedure TfrmSubParamsNoEH.BrowseIndex(var LeoMenu: TMenuItem);
Var
  i, x, y: Integer;
  MySubItems: TMenuItem;
  LeoSL: TStringList;
  LeoIndexOptions: TIndexOption;
begin
  if Grid.DataSource.Dataset is TTable then
    for x := 0 to TTable(Grid.DataSource.Dataset).IndexDefs.Count - 1 do
      begin
        MySubItems         := TMenuItem.Create(self);
        MySubItems.Caption := TTable(Grid.DataSource.Dataset).IndexDefs[x].Name;
        MySubItems.Tag     := x;
        MySubItems.OnClick := SecMenuOnClick;
        LeoMenu.Add(MySubItems);
      end;
  if Grid.DataSource.Dataset is TAdoTable then
    begin
      LeoSL := TStringList.Create;
      TAdoTable(Grid.DataSource.Dataset).GetIndexNames(LeoSL);
      for x := 0 to LeoSL.Count - 1 do
        begin
          MySubItems         := TMenuItem.Create(self);
          MySubItems.Caption := LeoSL.Strings[x];
          MySubItems.Tag     := x;
          MySubItems.OnClick := SecMenuOnClick;
          LeoMenu.Add(MySubItems);
        end;
      LeoSL.Free;

      { for x := 0 to LeoSL.Count -1 do
        begin
        LeoIndexOptions:=ixPrimary;
        MessageDlg(TAdoTable(Grid.DataSource.DataSet).IndexDefs[x].Fields , mtWarning, [mbOK], 0);
        //   MessageDlg('Primary', mtWarning, [mbOK], 0);
        LeoIndexOptions:=ixDescending;
        if (LeoIndexOptions in TAdoTable(Grid.DataSource.DataSet).IndexDefs[x].Options ) then
        MessageDlg('Desc', mtWarning, [mbOK], 0);
        end; }

    end;
end;

procedure TfrmSubParamsNoEH.SecMenuOnClick(Sender: TObject);
var
  i: Integer;
  LeoSL: TStringList;
begin
  if Grid.DataSource.Dataset is TTable then
    begin
      TTable(Grid.DataSource.Dataset).IndexName := TTable(Grid.DataSource.Dataset).IndexDefs.Items[(Sender as TMenuItem).Tag].Name;
      for i                                     := 0 to TTable(Grid.DataSource.Dataset).IndexDefs.Count - 1 do
        Indexes[i].Checked                      := False;
    end;
  if Grid.DataSource.Dataset is TAdoTable then
    begin
      LeoSL := TStringList.Create;
      TAdoTable(Grid.DataSource.Dataset).GetIndexNames(LeoSL);
      TAdoTable(Grid.DataSource.Dataset).Active    := False;
      TAdoTable(Grid.DataSource.Dataset).IndexName := LeoSL.Strings[(Sender as TMenuItem).Tag];
      TAdoTable(Grid.DataSource.Dataset).Active    := True;
      TAdoTable(Grid.DataSource.Dataset).Refresh;
      for i                := 0 to LeoSL.Count - 1 do
        Indexes[i].Checked := False;
      LeoSL.Free;
    end;
  If Sender is TMenuItem then
    begin
      (Sender as TMenuItem).Checked := True;
    end
end;

procedure TfrmSubParamsNoEH.NLeoClick(Sender: TObject);
begin
  If (Sender as TMenuItem).Checked then
    begin
      Grid.Columns[((Sender as TMenuItem).Tag)].Visible := False;
      (Sender as TMenuItem).Checked                     := False;
    end
  else
    begin
      Grid.Columns[((Sender as TMenuItem).Tag)].Visible := True;
      (Sender as TMenuItem).Checked                     := True;
    end
end;

procedure TfrmSubParamsNoEH.FAllClick(Sender: TObject);
var
  i: Integer;
begin
  For i := 0 to Grid.Columns.Count - 1 do
    begin
      Grid.Columns[i].Visible    := True;
      Pedia.Items[i + 3].Checked := True;
    end
end;

procedure TfrmSubParamsNoEH.FNoneClick(Sender: TObject);
var
  i: Integer;
begin
  For i := 0 to Grid.Columns.Count - 1 do
    begin
      Grid.Columns[i].Visible    := False;
      Pedia.Items[i + 3].Checked := False;
    end;
end;

procedure TfrmSubParamsNoEH.FormShow(Sender: TObject);
begin
  Created := True;
end;

procedure TfrmSubParamsNoEH.BrowseFields(var LeoMenu: TMenuItem);
Var
  i: Integer;
  NewMenu: TMenuItem;
begin
  For i := 0 to (Grid.Columns.Count - 1) do
    begin
      NewMenu         := TMenuItem.Create(self);
      NewMenu.Caption := Grid.Columns[i].Title.Caption;
      NewMenu.Tag     := i;
      NewMenu.Checked := Grid.Columns[i].Visible;
      NewMenu.OnClick := NLeoClick;
      LeoMenu.Add(NewMenu);
    end;
end;

procedure TfrmSubParamsNoEH.GridColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
Var
  SLeo: String;
  NewMenu: TMenuItem;
  i: Integer;
begin
  NewMenu         := TMenuItem.Create(self);
  NewMenu.Caption := Grid.Columns[ToIndex].Title.Caption;
  NewMenu.Tag     := ToIndex + 3;
  NewMenu.Checked := Pedia.Items[FromIndex + 3].Checked;
  NewMenu.OnClick := NLeoClick;
  Pedia.Insert(ToIndex + 3, NewMenu);
  Pedia.Delete(FromIndex + 1 + 3);
  for i                := 3 to Pedia.Count - 3 do
    Pedia.Items[i].Tag := i - 3;
end;

procedure TfrmSubParamsNoEH.SetAddEditForm(const Value: TFormClass);
begin
  FAddEditForm := Value;
end;

procedure TfrmSubParamsNoEH.SetGDataSet(const Value: TDataSet);
begin
  FGDataSet := Value;
end;

procedure TfrmSubParamsNoEH.ModalOkExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmSubParamsNoEH.ModalCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmSubParamsNoEH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // if Grid.DataSource.DataSet.State in [dsEdit] then
  // DMMain.ReleaseLock(LoginName,Grid.DataSource.DataSet,PFormName);
end;

procedure TfrmSubParamsNoEH.ReleaseLock;
begin
  // if Not (Grid.DataSource = nil) then
  // DMMain.ReleaseLock(LoginName,Grid.DataSource.DataSet,PFormName);
end;

procedure TfrmSubParamsNoEH.CmdCloseExecute(Sender: TObject);
begin
  self.Close;
end;

procedure TfrmSubParamsNoEH.GridDblClick(Sender: TObject);
begin
  if Grid.DataSource.Dataset.State = dsBrowse then
    UpdateExecute(Sender);
end;

procedure TfrmSubParamsNoEH.GridEnter(Sender: TObject);
begin
  self.FilteredGrid := self.Grid;
end;

procedure TfrmSubParamsNoEH.rrrrrClick(Sender: TObject);
var
  LeoS, SLeo, OrderStr, OrderStrNC: String;
  i, z, x: Integer;
  LeoV, LeoV1: Variant;
  frm: TfrmDefineQOrder;
begin
  // frm:=TfrmDefineQOrder.CreateRefMenu(self,PopFilter,PediaIdx);
  frm := TfrmDefineQOrder.CreateRefGrid(self, TDBGrid(FilteredGrid));
  if frm.ShowModal = mrCancel then
    begin
      frm.Free;
      exit;
    end;
  OrderStr   := frm.OrderString;
  OrderStrNC := frm.OrderStringNCase;
  // frm.Free;
  MessageDlg(frm.OrderStringName, mtWarning, [mbOK], 0);
  frm.Free;
  { if Not(SetQIndexFields(PediaIdx) > ' ') then
    begin
    MessageDlg('Δέν έχουν ορισθεί Πεδία.', mtWarning, [mbOK], 0);
    exit;
    end; }
  // UncheckIndexes();
  if (TDBGrid(FilteredGrid)).DataSource.Dataset is TTable then
    begin
      TTable((TDBGrid(FilteredGrid)).DataSource.Dataset).IndexFieldNames := OrderStr;
    end;
  if (TDBGrid(FilteredGrid)).DataSource.Dataset is TAdoTable then
    begin
      TAdoTable((TDBGrid(FilteredGrid)).DataSource.Dataset).IndexFieldNames := OrderStrNC;
    end;

  { if (TDBGrid(FilteredGrid)).DataSource.DataSet is TQuery then
    begin
    LeoS:=TQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text;
    SLeo:=' ' + SetQIndexFields(PediaIdx)+ ' ,';
    Sleo:=OrderStr+',';
    i:=length(SLeo);
    System.Insert(SLeo,LeoS,( (Pos('ORDER BY ', LeoS )) + 9 ));
    TQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text := LeoS;
    TQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=False;
    TQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Prepare;
    TQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=True;
    end;
    if (TDBGrid(FilteredGrid)).DataSource.DataSet is TAdoQuery then
    begin
    x:=TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Parameters.Count;
    if x > 0 then
    begin
    LeoV1:=VarArrayCreate([0, x],VarVariant);
    LeoV:=VarArrayCreate([0, x],VarVariant);
    SaveAdoParameters(LeoV,LeoV1,x,TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet));
    end;
    LeoS:=TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text;
    //   SLeo:=' ' + SetQIndexFields(PediaIdx);
    Sleo:=OrderStr;
    i:=length(SLeo);
    z:=Pos('Order By ', LeoS );
    if z > 0 then
    begin
    SLeo:=Sleo+',';
    System.Insert(SLeo,LeoS,( (Pos('Order By ', LeoS )) + 9 ))
    end
    else
    begin
    LeoS:=AnsiReplaceStr(LeoS,';',' ');
    LeoS:=LeoS+' Order By '+SLeo;
    end;
    TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text := LeoS;
    TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=False;
    if x > 0 then
    begin
    ReturnAdoParameters(LeoV,LeoV1,x,TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet));
    end;
    TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=True;
    end; }
end;

procedure TfrmSubParamsNoEH.actOutputToExcelClick(Sender: TObject);
begin
  // EhOut
  // TDMBase(DMMain).OutputFile(Grid);
end;

procedure TfrmSubParamsNoEH.GridTitleClick(Column: TColumn);
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
    exit;
  If (TDBGrid(FilteredGrid)).DataSource.Dataset.FieldByName(TempField).Calculated then
    exit;

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

procedure TfrmSubParamsNoEH.GridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure TfrmSubParamsNoEH.NewGrVariantClick(Sender: TObject);
begin
  { TODO : INSERT FUNCTION }
  { DMMain.NewGrVariant(self,PFormId,Grid); }
end;

procedure TfrmSubParamsNoEH.GetGrVariantClick(Sender: TObject);
var
  x: Integer;
begin
  { DMMain.GetGrVariant(PFormId,Grid);
    // Starting from Item 3 and for Count -4 Times Delete
    // Item 3 (Menu is became smaller
    // after each iteration
    for x:=3 to Pedia.Count -1  do
    Pedia.Delete(3);
    BrowseFields(Pedia); }
end;

function TfrmSubParamsNoEH.CreateDataModuleWithOut(DModule: TDMBase): TDMBase;
begin
  Result := TDMSubParams.Create(self);
end;

procedure TfrmSubParamsNoEH.CreateAddEditForm;
var
  frm: TForm;
  FormID: Integer;
begin
  if DMMain.FindSecurity(FAddEditForm.ClassName, LoginGroup, FormID) then
    begin
      // Cannot use Other Constructors !!!!!!!!!!
      // frm:=TfrmBForm(FAddEditForm).CreateSecurity(self,FormId);
      frm := FAddEditForm.Create(self);
      // 022012
      // TfrmBForm(frm).FormID := FormId;
      // TfrmBForm(frm).FormUpdSecurity;
      try
        frm.ShowModal;
      finally
        frm.Free;
        // 022012
        // DMMain.UpdSecurity(FAddEditForm.ClassName);
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

end.
