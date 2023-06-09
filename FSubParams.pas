unit FSubParams;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DBase, db, DMain, AdoDB,
  Menus, FSearch, ActnList, ComCtrls, dbTables, jpeg, ImgList, ToolWin,
  FDefineQOrder;

type
  TfrmSubParams = class(TForm)
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
    Grid: TDBGrid;
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
    actClearGrid: TAction;
    ClearGrid1: TMenuItem;
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
    procedure Clear1Click(Sender: TObject);
    procedure actClearGridExecute(Sender: TObject);
    procedure UpdateActionsExecute(Sender: TObject);
  private
    FModal: Boolean;
    FCreated: Boolean;
    FIndexAct: Boolean;
    FGDataSet: TDataSet;
    FAddEditForm: TForm;
    FltGrid: TObject;
    function AskDelete: Boolean;
    procedure InternalDelete;
    procedure SetGDataSet(const Value: TDataSet);
  protected
    FDM: TDMBase;
    FilSelected: Boolean;
    FilFrom: String;
    FilTo: String;
    FilField: String;
    FilTField: String;
    PFormName: String;
    PFormID: Integer;
    function CreateDataModule: TDMBase; virtual; abstract;
    procedure CreateAddEditForm; virtual; abstract;
    procedure CheckBeforeDelete; virtual; abstract;
  public
    constructor CreateModal(aowner: TComponent);
    constructor CreateSecurity(aowner: TComponent; FormID: Integer);
    constructor CreateSecurityModal(aowner: TComponent; FormID: Integer);
    constructor CreateSecurityN(aowner: TComponent; FormID: Integer);
    procedure SetState(const LeoCategory: String);
    procedure PlusState(const LeoCategory: String);
    procedure SetStatusText(Text: String; Index: Integer);
    procedure ReleaseLock;
    procedure SetAddEditForm(const Value: TForm);
    procedure FormSetDisp(Sender: TObject; FormID: Integer);
    property DM: TDMBase read FDM;
    property Created: Boolean read FCreated write FCreated;
    property IndexAct: Boolean read FIndexAct write FIndexAct;
    property GDataSet: TDataSet read FGDataSet write SetGDataSet;
    property AddEditForm: TForm read FAddEditForm write SetAddEditForm;
    property FilteredGrid: TObject read FltGrid write FltGrid;
    property FormId: Integer read PFormID;
  end;

implementation

uses
  DSubParams, AlertU, ResStr, FFilterEn, RSubParams, FMain;

{$R *.DFM}

constructor TfrmSubParams.CreateModal(aowner: TComponent);
begin
  FModal   := True;
  Created  := False;
  IndexAct := False;
  Create(aowner);
  // SetGDataSet(Grid.Datasource.Dataset);
end;

constructor TfrmSubParams.CreateSecurity(aowner: TComponent; FormID: Integer);
begin
  PFormID  := FormID;
  Created  := False;
  IndexAct := False;
  if DMMain.FindFormName(PFormID, PFormName) then
    Create(aowner)
  else
    exit;
  // SetGDataSet(Grid.Datasource.Dataset);
end;

constructor TfrmSubParams.CreateSecurityN(aowner: TComponent; FormID: Integer);
begin
  PFormID  := FormID;
  Created  := False;
  IndexAct := False;
  if DMMain.FindFormName(PFormID, PFormName) then
    Create(aowner)
  else
    exit;
end;

constructor TfrmSubParams.CreateSecurityModal(aowner: TComponent; FormID: Integer);
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

procedure TfrmSubParams.FormSetDisp(Sender: TObject; FormID: Integer);
var
  LLeft, LWidth, LTop, LHeight, State: Integer;
  Filter, Index, DataSource: String;
begin
  inherited;
  PFormID  := FormID;
  Created  := False;
  IndexAct := False;
  if DMMain.FindFormName(PFormID, PFormName) then

  else
    raise Exception.Create('No form id Found!!!.');
  // SetGDataSet(Grid.Datasource.Dataset);
  panBottom.BevelOuter := bvNone;
  frmMain.ReadIniSub(PFormName, LLeft, LTop, LWidth, LHeight, State);
  frmMain.ReadGrid(PFormName, Grid, Filter, Index, DataSource);
  frmMain.SetDisplayedForm(self);
  if LWidth > 0 then
    SetBounds(LLeft, LTop, LWidth, LHeight);
  self.Font       := frmMain.AppFonts[5];
  self.Color      := frmMain.AppColors[5];
  panBottom.Color := frmMain.AppColors[5];
  panBottom.Font  := frmMain.AppFonts[5];
  Grid.Font       := frmMain.AppFonts[6];
  Grid.Color      := frmMain.AppColors[6];
  FDM             := CreateDataModule;

  if Grid.DataSource = nil then
    Grid.DataSource := TDataSource(FDM.FindComponent(DataSource));

  if Filter > '' then
    begin
      Grid.DataSource.DataSet.Filter   := Filter;
      Grid.DataSource.DataSet.Filtered := True;
    end;
  if Grid.DataSource.DataSet is TTable then
    TTable(Grid.DataSource.DataSet).IndexName := Index;
  if Grid.DataSource.DataSet is TAdoTable then
    begin
      TAdoTable(Grid.DataSource.DataSet).Active    := False;
      TAdoTable(Grid.DataSource.DataSet).IndexName := Index;
      TAdoTable(Grid.DataSource.DataSet).Active    := True;
    end;

  Grid.Options := Grid.Options + [dgRowSelect];
  Grid.Options := Grid.Options - [dgEditing];
end;

procedure TfrmSubParams.InternalDelete;
begin
  // if (DM <> nil) and AskDelete then
  // DM.DeleteNamedRecord( Grid.DataSource.DataSet );
end;

procedure TfrmSubParams.GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  { if (ssCtrl in Shift) and (Key = VK_DELETE) then begin
    InternalDelete;
    Key := 0;
    end; }
end;

function TfrmSubParams.AskDelete: Boolean;
begin
  Result := sAlert(mtConfirmation, SCADeleteRecord, 2) = 1;
end;

procedure TfrmSubParams.pmsFilterClick(Sender: TObject);
var
  frm: TfrmFilterEn;
begin
  inherited;
  if (popFilter.PopupComponent is TDBGrid) then
    begin
      if (popFilter.PopupComponent is TDBGrid) then
        frm := TfrmFilterEn.CreateWithParam(self, TDBGrid(popFilter.PopupComponent), DM);
      try
        frm.ShowModal;
        if ((frm.ModalResult = mrOk)) then
          begin
            if TDBGrid(FilteredGrid).DataSource.DataSet.Filter > '' then
              TDBGrid(FilteredGrid).DataSource.DataSet.Filter := TDBGrid(FilteredGrid).DataSource.DataSet.Filter + ' AND ' + frm.KSleo
            else
              TDBGrid(FilteredGrid).DataSource.DataSet.Filter := frm.KSleo;
            TDBGrid(FilteredGrid).DataSource.DataSet.Filtered := True;
          end;
      finally
        frm.Free;
      end;
    end;
end;

procedure TfrmSubParams.pmsCancelFilterClick(Sender: TObject);
begin
  Grid.DataSource.DataSet.Filtered := False;
  Grid.DataSource.DataSet.Filter   := '';
end;

procedure TfrmSubParams.N2Click(Sender: TObject);
var
  frm: TfrmSearch;
begin
  frm := TfrmSearch.CreateWithParam(self, TDBGrid(popFilter.PopupComponent), DM);
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmSubParams.N3Click(Sender: TObject);
begin
  if popFilter.PopupComponent is TDBGrid then
    MessageDlg('�� ������ ������ ����� : ' + TDBGrid(popFilter.PopupComponent).DataSource.DataSet.Filter, mtInformation, [mbOk], 0)
    // else
    // MessageDlg('�� ������ ������ ����� : ' + TDBGridEH(popfilter.PopupComponent).DataSource.DataSet.Filter
    // , mtInformation,[mbOk], 0);
end;

procedure TfrmSubParams.FormActivate(Sender: TObject);
begin
  SetState('Before');
  if (Created and not(IndexAct)) then
    begin
      BrowseFields(Pedia);
      BrowseIndex(Indexes);
      IndexAct := True;
    end
end;

procedure TfrmSubParams.SetState(const LeoCategory: String);
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

procedure TfrmSubParams.PlusState(const LeoCategory: String);
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

procedure TfrmSubParams.DeleteExecute(Sender: TObject);
begin
  try
    if Grid.DataSource.DataSet.FieldByName('Id').asInteger = 0 then
      begin
        MessageDlg('��� ������ �� �������� � ������� Zero!!!.', mtError, [mbOk], 0);
        exit;
      end;
  except
  end;
  if AskDelete then
    try
      Grid.DataSource.DataSet.FindField('Deleted');
      Grid.DataSource.DataSet.Edit;
      Grid.DataSource.DataSet.FieldByName('Deleted').asBoolean := True;
      Grid.DataSource.DataSet.Post;
    except
      Grid.DataSource.DataSet.Delete;
    end;
end;

procedure TfrmSubParams.InsertExecute(Sender: TObject);
begin
  if FAddEditForm = nil then
    begin
      Grid.Options := Grid.Options - [dgRowSelect];
      Grid.Options := Grid.Options + [dgEditing];
      Grid.DataSource.DataSet.Append;
      SetState('After');
    end
  else
    begin
      Grid.DataSource.DataSet.Append;
      CreateAddEditForm;
    end;
end;

procedure TfrmSubParams.UpdateActionsExecute(Sender: TObject);
begin
  DMMain.UpdateActionsExecute(FormID, ActionList1);
end;

procedure TfrmSubParams.UpdateExecute(Sender: TObject);
var
  LeoT: TAdoTable;
  x: Integer;
begin
  try
    if ((Grid.DataSource.DataSet.State = dsEdit) And (Grid.DataSource.DataSet.FieldByName('Id').asInteger = 0)) then
      begin
        MessageDlg('��� ������ �� ���������� � ������� Zero!!!.', mtError, [mbOk], 0);
        exit;
      end;
  except
  end;
  if ((Grid.DataSource.DataSet is TAdoTable) or (Grid.DataSource.DataSet is TADOQuery)) then
    begin
      // if DMMain.AcquireLock(LoginName,Grid.DataSource.DataSet,PFormName) then
      begin
        if FAddEditForm = nil then
          begin
            Grid.Options := Grid.Options - [dgRowSelect];
            Grid.Options := Grid.Options + [dgEditing];
            Grid.DataSource.DataSet.Edit;
            SetState('After');
          end
        else
          begin
            Grid.DataSource.DataSet.Edit;
            CreateAddEditForm;
          end;
      end
      // else
      // begin
      // Raise EConvertError.Create(DMMain.LockInformation(Grid.DataSource.DataSet));
      // end;
    end;
end;

procedure TfrmSubParams.PostExecute(Sender: TObject);
begin
  if Grid.DataSource.DataSet.State in [dsEdit, dsInsert] then
    // DMMain.ReleaseLock(LoginName,Grid.DataSource.DataSet,PFormName);
    Grid.DataSource.DataSet.Post;
  Grid.Options := Grid.Options + [dgRowSelect];
  Grid.Options := Grid.Options - [dgEditing];
  SetState('Before');
end;

procedure TfrmSubParams.CancelExecute(Sender: TObject);
begin
  if Grid.DataSource.DataSet.State in [dsEdit, dsInsert] then
    // DMMain.ReleaseLock(LoginName,Grid.DataSource.DataSet,PFormName);
    Grid.DataSource.DataSet.Cancel;
  Grid.Options := Grid.Options + [dgRowSelect];
  Grid.Options := Grid.Options - [dgEditing];
  SetState('Before');
end;

procedure TfrmSubParams.Clear1Click(Sender: TObject);
begin
  Grid.DataSource.DataSet.Active := False;
  Grid.Columns.Clear;
  Grid.DataSource.DataSet.Active := True;
end;

procedure TfrmSubParams.RefreshExecute(Sender: TObject);
begin
  Grid.DataSource.DataSet.Refresh;
end;

procedure TfrmSubParams.AfterExecute(Sender: TObject);
begin
  //
end;

procedure TfrmSubParams.BeforeExecute(Sender: TObject);
begin
  //
end;

procedure TfrmSubParams.PrintExecute(Sender: TObject);
var
  rep: TrptSubParams;
begin
  rep := TrptSubParams.CreateFrom(self, Grid, self.Caption);
  rep.Preview;
  rep.Free;
  // SetStatusText('',0);
end;

procedure TfrmSubParams.actClearGridExecute(Sender: TObject);
begin
  Grid.DataSource.DataSet.Active := False;
  Grid.Columns.Clear;
  Grid.DataSource.DataSet.Active := True;
end;

procedure TfrmSubParams.ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
begin
  if TAction(Action).Tag < 10 then
    begin
      if DMMain.SearchSecurity(TAction(Action).Name, PFormID, 0) then
        SetStatusText(TAction(Action).Hint, 0)
      else
        begin
          SetStatusText('�� ��������� ��������! ' + TAction(Action).Name, 0);
          Handled := True;
        end;
    end;
end;

procedure TfrmSubParams.SetStatusText(Text: String; Index: Integer);
begin
  StatusBar1.Panels[Index].Text := Text;
end;

procedure TfrmSubParams.FormDestroy(Sender: TObject);
begin
  frmMain.SetDisplayedForm(nil);
  frmMain.WriteIniSub(PFormName, self.Left, self.Top, self.Width, self.Height, 0);
  frmMain.WriteGrid(PFormName, Grid);
end;

procedure TfrmSubParams.BrowseIndex(var LeoMenu: TMenuItem);
Var
  i, x, y: Integer;
  MySubItems: TMenuItem;
  LeoSL: TStringList;
  LeoIndexOptions: TIndexOption;
begin
  if Grid.DataSource.DataSet is TTable then
    for x := 0 to TTable(Grid.DataSource.DataSet).IndexDefs.Count - 1 do
      begin
        MySubItems         := TMenuItem.Create(self);
        MySubItems.Caption := TTable(Grid.DataSource.DataSet).IndexDefs[x].Name;
        MySubItems.Tag     := x;
        MySubItems.OnClick := SecMenuOnClick;
        LeoMenu.Add(MySubItems);
      end;
  if Grid.DataSource.DataSet is TAdoTable then
    begin
      LeoSL := TStringList.Create;
      TAdoTable(Grid.DataSource.DataSet).GetIndexNames(LeoSL);
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

procedure TfrmSubParams.SecMenuOnClick(Sender: TObject);
var
  i: Integer;
  LeoSL: TStringList;
begin
  if Grid.DataSource.DataSet is TTable then
    begin
      TTable(Grid.DataSource.DataSet).IndexName := TTable(Grid.DataSource.DataSet).IndexDefs.Items[(Sender as TMenuItem).Tag].Name;
      for i                                     := 0 to TTable(Grid.DataSource.DataSet).IndexDefs.Count - 1 do
        Indexes[i].Checked                      := False;
    end;
  if Grid.DataSource.DataSet is TAdoTable then
    begin
      LeoSL := TStringList.Create;
      TAdoTable(Grid.DataSource.DataSet).GetIndexNames(LeoSL);
      TAdoTable(Grid.DataSource.DataSet).Active    := False;
      TAdoTable(Grid.DataSource.DataSet).IndexName := LeoSL.Strings[(Sender as TMenuItem).Tag];
      TAdoTable(Grid.DataSource.DataSet).Active    := True;
      TAdoTable(Grid.DataSource.DataSet).Refresh;
      for i                := 0 to LeoSL.Count - 1 do
        Indexes[i].Checked := False;
      LeoSL.Free;
    end;
  If Sender is TMenuItem then
    begin
      (Sender as TMenuItem).Checked := True;
    end
end;

procedure TfrmSubParams.NLeoClick(Sender: TObject);
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

procedure TfrmSubParams.FAllClick(Sender: TObject);
var
  i: Integer;
begin
  For i := 0 to Grid.Columns.Count - 1 do
    begin
      Grid.Columns[i].Visible    := True;
      Pedia.Items[i + 3].Checked := True;
    end
end;

procedure TfrmSubParams.FNoneClick(Sender: TObject);
var
  i: Integer;
begin
  For i := 0 to Grid.Columns.Count - 1 do
    begin
      Grid.Columns[i].Visible    := False;
      Pedia.Items[i + 3].Checked := False;
    end;
end;

procedure TfrmSubParams.FormShow(Sender: TObject);
begin
  Created := True;
end;

procedure TfrmSubParams.BrowseFields(var LeoMenu: TMenuItem);
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

procedure TfrmSubParams.GridColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
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

procedure TfrmSubParams.SetGDataSet(const Value: TDataSet);
begin
  FGDataSet := Value;
end;

procedure TfrmSubParams.ModalOkExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmSubParams.ModalCancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmSubParams.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // if Grid.DataSource.DataSet.State in [dsEdit] then
  // DMMain.ReleaseLock(LoginName,Grid.DataSource.DataSet,PFormName);
end;

procedure TfrmSubParams.ReleaseLock;
begin
  // if Not (Grid.DataSource = nil) then
  // DMMain.ReleaseLock(LoginName,Grid.DataSource.DataSet,PFormName);
end;

procedure TfrmSubParams.SetAddEditForm(const Value: TForm);
begin
  FAddEditForm := Value;
end;

procedure TfrmSubParams.CmdCloseExecute(Sender: TObject);
begin
  self.Close;
end;

procedure TfrmSubParams.GridDblClick(Sender: TObject);
begin
  if Grid.DataSource.DataSet.State = dsBrowse then
    UpdateExecute(Sender);
end;

procedure TfrmSubParams.GridEnter(Sender: TObject);
begin
  self.FilteredGrid := self.Grid;
end;

procedure TfrmSubParams.rrrrrClick(Sender: TObject);
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
  MessageDlg(frm.OrderStringName, mtWarning, [mbOk], 0);
  frm.Free;
  { if Not(SetQIndexFields(PediaIdx) > ' ') then
    begin
    MessageDlg('��� ����� ������� �����.', mtWarning, [mbOK], 0);
    exit;
    end; }
  // UncheckIndexes();
  if (TDBGrid(FilteredGrid)).DataSource.DataSet is TTable then
    begin
      TTable((TDBGrid(FilteredGrid)).DataSource.DataSet).IndexFieldNames := OrderStr;
    end;
  if (TDBGrid(FilteredGrid)).DataSource.DataSet is TAdoTable then
    begin
      TAdoTable((TDBGrid(FilteredGrid)).DataSource.DataSet).IndexFieldNames := OrderStrNC;
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

procedure TfrmSubParams.actOutputToExcelClick(Sender: TObject);
begin
  TDMBase(DMMain).OutputFile(Grid);
end;

procedure TfrmSubParams.GridTitleClick(Column: TColumn);
var
  SLeo, LeoS, TempField: String;
  LeoColumn: TColumn;
  i, x, z: Integer;
  LeoV, LeoV1: Variant;
begin
  inherited;
  TempField := Column.FieldName;
  LeoColumn := Column;
  If (TDBGrid(FilteredGrid)).DataSource.DataSet.FieldByName(TempField).Lookup then
    exit;
  If (TDBGrid(FilteredGrid)).DataSource.DataSet.FieldByName(TempField).Calculated then
    exit;

  { if (TDBGrid(FilteredGrid)).DataSource.DataSet is TTable then
    begin
    TTable((TDBGrid(FilteredGrid)).DataSource.DataSet).IndexFieldNames:=FindFieldsForIndex(PediaIdx);
    end; }
  if TDBGrid(FilteredGrid).DataSource.DataSet is TCustomADODataSet then
    if TADODataSet((TDBGrid(FilteredGrid)).DataSource.DataSet).Sort = Column.FieldName then
      begin
        TCustomADODataSet((TDBGrid(FilteredGrid)).DataSource.DataSet).Sort := Column.FieldName + ' DESC';
      end
    else
      begin
        TCustomADODataSet((TDBGrid(FilteredGrid)).DataSource.DataSet).Sort := Column.FieldName;
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

procedure TfrmSubParams.GridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  HoldColor: TColor;
  Fld1, Fld2: TField;
begin
  inherited;
  HoldColor := Grid.Canvas.Brush.Color;
  Fld1      := Grid.DataSource.DataSet.FindField('Deleted');
  Fld2      := Grid.DataSource.DataSet.FindField('Inactive');

  if (Not(Fld1 = Nil) And Fld1.asBoolean) then
    begin
      Grid.Canvas.Brush.Color := clRed;
      Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      Grid.Canvas.Brush.Color := HoldColor;
    end
  else if (Not(Fld2 = Nil) And Fld2.asBoolean) then
    begin
      Grid.Canvas.Brush.Color := clGreen;
      Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      Grid.Canvas.Brush.Color := HoldColor;
    end
  else
    Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmSubParams.NewGrVariantClick(Sender: TObject);
begin
  { TODO : INSERT FUNCTION }
  { DMMain.NewGrVariant(self,PFormId,Grid); }
end;

procedure TfrmSubParams.GetGrVariantClick(Sender: TObject);
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

end.
