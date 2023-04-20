unit FBaseDev0;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DMain, AdoDb, Common, DB, Menus,
  cxGridCustomView, cxGridDBTableView, cxDBLookupComboBox,
  dxCore, cxDBLookupEdit, cxLookupDBGrid, cxGridLevel, cxGrid,
  FFilterEn, DBase, RSubParams;

type
  TfrmBaseDev0 = class(TForm)
    popFilter: TPopupMenu;
    Pedia: TMenuItem;
    FAll: TMenuItem;
    FNone: TMenuItem;
    MC5: TMenuItem;
    Grid2Excel: TMenuItem;
    Grid2Prn: TMenuItem;
    Grid2XML: TMenuItem;
    ActionMainList: TActionList;
    actMainClose: TAction;
    actMainInsert: TAction;
    actMainUpdate: TAction;
    actMainDelete: TAction;
    actMainOK: TAction;
    actMainCancel: TAction;
    UpdComAct: TAction;
    actMainDisp: TAction;
    actMainNext: TAction;
    actMainPrev: TAction;
    actMainFirst: TAction;
    actMainLast: TAction;
    actDispId: TAction;
    dummyVariant: TMenuItem;
    actRestoreVariant: TMenuItem;
    actNewVariant: TMenuItem;
    actBestFit: TMenuItem;
    actUpdBrowse: TAction;
    actDispAllActions: TAction;
    actBrowse: TAction;
    actEdit: TAction;
    procedure Grid2PrnClick(Sender: TObject);
    procedure Grid2XMLClick(Sender: TObject);
    procedure BrowseFields(var LeoMenu: TMenuItem; SelDevGrid: TcxGridDBTableView = nil);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure Grid2ExcelClick(Sender: TObject);
    procedure FAllClick(Sender: TObject);
    procedure FNoneClick(Sender: TObject);
    procedure NLeoClick(Sender: TObject);
    procedure popFilterPopup(Sender: TObject);
    procedure ActionMainListExecute(Action: TBasicAction; var Handled: Boolean);
    procedure ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
    procedure SetStatusText(Text: String; Index: Integer);
    procedure actMainNextExecute(Sender: TObject);
    procedure actMainPrevExecute(Sender: TObject);
    procedure actMainFirstExecute(Sender: TObject);
    procedure actMainLastExecute(Sender: TObject);
    procedure UpdateActionsExecute(Sender: TObject);
    procedure actDispIdExecute(Sender: TObject);
    procedure SetDBLookupSort;
    procedure SetDBLookupSortDesc;
    procedure SetDBLookupClearKey;
    procedure SetDBLookupSortSpec(Comp: TcxDBLookupComboBox);
    procedure SetDBLookupSortDescSpec(Comp: TcxDBLookupComboBox);
    procedure SetDBLookupSortDescSpecCol(Comp: TcxDBLookupComboBox; Col: Integer = 0);
    procedure newVariantClick(Sender: TObject);
    procedure actRestoreVariantClick(Sender: TObject);
    procedure actBestFitClick(Sender: TObject);
    procedure actUpdBrowseExecute(Sender: TObject);
    procedure actDispAllActionsExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actBrowseExecute(Sender: TObject);
    procedure actMainDispExecute(Sender: TObject);
    procedure actMainDeleteExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FPFormID: Integer;
    FActiveControl: TObject;
    FSelectSubData: TCustomAdoDataset;
    FSelectSubActList: TObject;
    FSelectSubGrid: TObject;
    FSelectMainGrid: TObject;
    FSelectMainData: TCustomAdoDataset;
    FSelectMainActList: TObject;
    procedure SetActiveControl(const Value: TObject);
    procedure SetSelectSubData(const Value: TCustomAdoDataset);
    procedure SetSelectSubActList(const Value: TObject);
    procedure SetSelectSubGrid(const Value: TObject);
    procedure SetSelectMainActList(const Value: TObject);
    procedure SetSelectMainData(const Value: TCustomAdoDataset);
    procedure SetSelectMainGrid(const Value: TObject);
  Published
    procedure CheckIfThere; virtual;
    procedure MainStateChange; virtual;
    procedure MainStateChange0(St: String); virtual;
    procedure SubStateChange(St: String); virtual;
    procedure cblcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDbLCDblClick(Sender: TObject);
    procedure cxDbLCParamClick(Sender: TObject);
  public
    Created: Boolean;
    /// !!! Realy neads a property.
    PopupDataSet: TDataSet;
    PopupDataSource: TDataSource;
    PopupcxGridDBTableView: TcxGridDBTableView;
    PopupcxGridLevel: TcxGridLevel;

    GVarAction: string;
    GVarComments: string;
    GVarMail: string;
    GVarClose, GVarTrans, GVarExec, GVarLogSection: Boolean;

    // 2014 Fix
    // Alias    FMasterView :TcxGridDBTableView;

    /// Primary and Secondary DataModules (Can also be the Same Form (self))
    PrimDM: TDataModule;
    SecDM: TDataModule;

    procedure InitializeGVars;

    procedure AllClick(AcLst: TActionList);
    procedure SetPFormID(const Value: Integer);
    procedure SetState(ActLst: TActionList; State: String);
    procedure OpenSpecific(KeyId: Integer; KeyName: String; KeyDataSource: String);
    procedure EditSpecific(KeyId: Integer; KeyName: String; KeyDataSource: String; ActionName: String = 'actUpdate');

    constructor CreateSecurity(aowner: TComponent; FormID: Integer = 0);

    property PFormID: Integer read FPFormID write SetPFormID;
    property ActiveControl: TObject read FActiveControl write SetActiveControl;
    property SelectMainData: TCustomAdoDataset read FSelectMainData write SetSelectMainData;
    property SelectMainGrid: TObject read FSelectMainGrid write SetSelectMainGrid;
    property SelectMainActList: TObject read FSelectMainActList write SetSelectMainActList;

    property SelectSubData: TCustomAdoDataset read FSelectSubData write SetSelectSubData;
    property SelectSubGrid: TObject read FSelectSubGrid write SetSelectSubGrid;
    property SelectSubActList: TObject read FSelectSubActList write SetSelectSubActList;
  end;

implementation

uses FMain;

const
  FirstFreePedia = 3; // Position in Menu to add Grid Fields

{$R *.dfm}

procedure TfrmBaseDev0.SetState(ActLst: TActionList; State: String);
var
  x: Integer;
begin
  for x := 0 to ActLst.ActionCount - 1 do
    if TAction(ActLst.Actions[x]).Tag < 9000 then
      if TAction(ActLst.Actions[x]).Category = State then
        begin
          TAction(ActLst.Actions[x]).Enabled := True;
          TAction(ActLst.Actions[x]).Visible := True
        end
      else
        begin
          TAction(ActLst.Actions[x]).Enabled := False;
          TAction(ActLst.Actions[x]).Visible := False;
        end
end;

procedure TfrmBaseDev0.SetStatusText(Text: String; Index: Integer);
begin
  // Stub
  // StatusBar1.Panels[Index].Text:=Text;
end;

procedure TfrmBaseDev0.OpenSpecific(KeyId: Integer; KeyName: String; KeyDataSource: String);
var
  Ds: TADODataSet;
  TempVar: Variant;
begin
  Ds := TADODataSet(PrimDM.FindComponent(KeyDataSource));
  if Assigned(Ds) then
    begin
      TempVar := KeyId;
      try
        // if
        Ds.Locate(KeyName, TempVar, []) // then
        // MsgDlg('OK'+InttoStr(KeyId));
      except
        // !!!
      end;
    end;
end;

procedure TfrmBaseDev0.EditSpecific(KeyId: Integer; KeyName: String; KeyDataSource: String; ActionName: String);
var
  Ds: TADODataSet;
  TempVar: Variant;
  actindex: Integer;
begin
  Ds := TADODataSet(PrimDM.FindComponent(KeyDataSource));
  if Assigned(Ds) then
    begin
      TempVar := KeyId;
      try
        Ds.Locate(KeyName, TempVar, []);
      except
        // !!!
      end;
    end;
  for actindex := 0 to Self.ComponentCount - 1 do
    begin
      if Self.Components[actindex] is TAction then
        if TAction(Self.Components[actindex]).Name = ActionName then
          TAction(Self.Components[actindex]).Execute;
    end;
end;

procedure TfrmBaseDev0.actBestFitClick(Sender: TObject);
var
  tmp: TObject;
begin
  // if Assigned(SelectMainGrid) then
  // if SelectMainGrid is TcxGridDBTableView then
  // begin
  // TcxGridDBTableView(SelectMainGrid).OptionsBehavior.BestFitMaxRecordCount := 10;
  // TcxGridDBTableView(SelectMainGrid).ApplyBestFit();
  // end;

  if popFilter.PopupComponent is TcxGridSite then
    begin
      tmp := TcxGridDBTableView(TcxGridSite(popFilter.PopupComponent).GridView);
      TcxGridDBTableView(PopupcxGridDBTableView).OptionsBehavior.BestFitMaxRecordCount := 10;
      TcxGridDBTableView(PopupcxGridDBTableView).ApplyBestFit();
    end;
end;

procedure TfrmBaseDev0.actBrowseExecute(Sender: TObject);
begin
  //
end;

procedure TfrmBaseDev0.actDispAllActionsExecute(Sender: TObject);
var
  x: Integer;
  leo: TStringList;
begin
  leo   := TStringList.Create;
  for x := 0 to Self.ComponentCount - 1 do
    begin
      if Self.Components[x] is TAction then
        leo.Add(TAction(Self.Components[x]).Name + ' | ' + TAction(Self.Components[x]).Caption + ' | ' + TAction(Self.Components[x]).Category);
    end;

  MessageDlg(leo.Text, mtCustom, [mbOK], 0);
  leo.Free;
end;

procedure TfrmBaseDev0.actDispIdExecute(Sender: TObject);
begin
  // MessageDlg('Form Id :'+IntToStr(frmMain.GenFormId), mtCustom, [mbOK], 0);
end;

procedure TfrmBaseDev0.actEditExecute(Sender: TObject);
begin
  //
end;

procedure TfrmBaseDev0.ActionList1Execute(Action: TBasicAction; var Handled: Boolean);
begin
  ActionMainListExecute(Action, Handled);
end;

procedure TfrmBaseDev0.ActionMainListExecute(Action: TBasicAction; var Handled: Boolean);
begin
  if TAction(Action).Tag < 10 then
    begin
      if DMMain.SearchSecurity(TAction(Action).Name, PFormID, 0) then // 'T'+Self.Name,0) then
        begin
          SetStatusText(TAction(Action).Hint, 0);
          beep;
        end
      else
        begin
          MessageDlg('Μη Επιτρεπτή Ενέργεια! ' + TAction(Action).Name, mtError, [mbOK], 0);
          Handled := True;
        end;
    end;
end;

procedure TfrmBaseDev0.UpdateActionsExecute(Sender: TObject);
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
          // !!!
          // DMMain.QUpdateFormAction.Parameters.ParamByName('PForm').Value      :=DMMain.QFindFormIdDFormID.AsInteger;
          // 07122015    DMMain.QUpdateFormAction.Parameters.ParamByName('PFormId').Value    :=DMMain.QFindFormIDId.AsInteger;
          DMMain.QUpdateFormAction.Parameters.ParamByName('PFormId').Value := FormID;
          // DMMain.QUpdateFormAction.Parameters.ParamByName('PFormId').Value    :=frmMain.GenFormId;
          DMMain.QUpdateFormAction.Parameters.ParamByName('PAction').Value := TCustomAction(AL.Actions[i]).Name;
          DMMain.QUpdateFormAction.Parameters.ParamByName('PText').Value := TCustomAction(AL.Actions[i]).Caption;
          if Not(TCustomAction(AL.Actions[i]).Name = 'UpdCommandAct') then
            try
              DMMain.QUpdateFormAction.ExecSql;
            except
              on E: Exception do
                MessageDlg('Error ' + E.Message, mtError, [mbOK], 0);
              // SetStatusText('Εχει ήδη ενημερωθεί η ενέργεια ' + TCustomAction(AL.Actions[i]).Name,0);
            end;
        end;
      // !!!
      // DMMain.QUpdateFormAction.Parameters.ParamByName('Form').Value      :=GeneralDM.QFindFormIdDFormID.AsInteger;
      // DMMain.QUpdateFormAction.Parameters.ParamByName('PFormId').Value     :=frmMain.GenFormId;
      // DMMain.QUpdateFormAction.Parameters.ParamByName('PFormId').Value    :=DMMain.QFindFormIDId.AsInteger;
      DMMain.QUpdateFormAction.Parameters.ParamByName('PFormId').Value := FormID;
      DMMain.QUpdateFormAction.Parameters.ParamByName('PAction').Value := 'All';
      DMMain.QUpdateFormAction.Parameters.ParamByName('PText').Value := 'All';
      try
        DMMain.QUpdateFormAction.ExecSql;
      except
        MessageDlg('Error', mtError, [mbOK], 0);
        // SetStatusText('Εχει ήδη ενημερωθεί η ενέργεια ' + 'ALL',0);
      end;
    end;
end;

procedure TfrmBaseDev0.Grid2XMLClick(Sender: TObject);
begin
  OutputXMLdx(PopupDataSet);
end;

procedure TfrmBaseDev0.InitializeGVars;
begin
  GVarAction     := '';
  GVarComments   := '';
  GVarMail       := '';
  GVarClose      := False;
  GVarTrans      := False;
  GVarExec       := False;
  GVarLogSection := False;
end;

procedure TfrmBaseDev0.cxDbLCDblClick(Sender: TObject);
var
  PopField: String;
  TempVar: Variant;
  PopDBLC: TcxDBLookupComboBox;
begin
  inherited;
  if Sender is TcxDBLookupComboBox then
    begin
      PopDBLC := TcxDBLookupComboBox(Sender);
      if Assigned(PopDBLC.Properties.ListField) then
        begin
          PopField := PopDBLC.Properties.ListField.Name;
          // MessageDlg(PopDBLC.Properties.KeyFieldNames, mtWarning, [mbOK], 0);
          // MessageDlg(PopDBLC.Properties.ListSource.DataSet.FieldByName(PopDBLC.Properties.KeyFieldNames).Value, mtWarning, [mbOK], 0);

          // !!! Strict reference to frmMain
          try
            if PopDBLC.DataBinding.DataSource.State in [dsEdit, dsInsert] then
              begin
                PopDBLC.DataBinding.DataSource.DataSet.Post;
                PopDBLC.DataBinding.DataSource.DataSet.Edit;
              end;
            if PopDBLC.DataBinding.DataSource.DataSet.FieldByName(PopDBLC.DataBinding.DataField).IsNull then
              TempVar := 0
            else
              TempVar := PopDBLC.DataBinding.DataSource.DataSet.FieldByName(PopDBLC.DataBinding.DataField).Value;

            FrmMain.actSubParamNoWrapPopupExecute(PopField, PopDBLC.Properties.KeyFieldNames, '', TempVar);
            // PopDBLC.DataBinding.DataSource.DataSet.FieldByName(PopDBLC.DataBinding.DataField).Value);
            // PopDBLC.Properties.ListSource.DataSet.FieldByName(PopDBLC.Properties.KeyFieldNames).Value);
          finally
            TcxDBLookupComboBox(Sender).Properties.ListSource.DataSet.Active := False;
            TcxDBLookupComboBox(Sender).Properties.ListSource.DataSet.Active := True;
          end;
        end;
    end;
end;

procedure TfrmBaseDev0.SetActiveControl(const Value: TObject);
begin
  FActiveControl := Value;
end;

procedure TfrmBaseDev0.SetPFormID(const Value: Integer);
begin
  FPFormID := Value;
end;

procedure TfrmBaseDev0.SetSelectMainActList(const Value: TObject);
begin
  FSelectMainActList := Value;
end;

procedure TfrmBaseDev0.SetSelectMainData(const Value: TCustomAdoDataset);
begin
  FSelectMainData := Value;
end;

procedure TfrmBaseDev0.SetSelectMainGrid(const Value: TObject);
begin
  FSelectMainGrid := Value;
end;

procedure TfrmBaseDev0.SetSelectSubActList(const Value: TObject);
begin
  FSelectSubActList := Value;
end;

procedure TfrmBaseDev0.SetSelectSubData(const Value: TCustomAdoDataset);
begin
  FSelectSubData := Value;
end;

procedure TfrmBaseDev0.SetSelectSubGrid(const Value: TObject);
begin
  FSelectSubGrid := Value;
end;

procedure TfrmBaseDev0.actMainDeleteExecute(Sender: TObject);
begin
  //
  MessageDlg('Δεν μπορεί να γίνει διαγραφή.', mtError, [mbOK], 0);
end;

procedure TfrmBaseDev0.actMainDispExecute(Sender: TObject);
begin
  //
end;

procedure TfrmBaseDev0.actMainFirstExecute(Sender: TObject);
begin
  if Assigned(SelectMainData) then
    SelectMainData.First;
end;

procedure TfrmBaseDev0.actMainLastExecute(Sender: TObject);
begin
  if Assigned(SelectMainData) then
    SelectMainData.Last;
end;

procedure TfrmBaseDev0.actMainNextExecute(Sender: TObject);
begin
  if Assigned(SelectMainData) then
    SelectMainData.Next;
end;

procedure TfrmBaseDev0.actMainPrevExecute(Sender: TObject);
begin
  if Assigned(SelectMainData) then
    SelectMainData.Prior;
end;

procedure TfrmBaseDev0.newVariantClick(Sender: TObject);
var
  St: TStringStream;
begin
  // PopupcxGridDBTableView
  // SelectMainGrid
  if Assigned(PopupcxGridDBTableView) then
    if PopupcxGridDBTableView is TcxGridDBTableView then
      begin
        St := TStringStream.Create;
        TcxGridDBTableView(PopupcxGridDBTableView).StoreToStream(St);
        DMMain.NewVariantCx(Self, Self.ClassName, St);
        St.Free;
      end;

end;

procedure TfrmBaseDev0.actRestoreVariantClick(Sender: TObject);
var
  St: TStringStream;
begin
  if Assigned(PopupcxGridDBTableView) then
    if PopupcxGridDBTableView is TcxGridDBTableView then
      begin
        St := TStringStream.Create;
        DMMain.GetVariantCx(Self, Self.ClassName, St);
        TcxGridDBTableView(PopupcxGridDBTableView).RestoreFromStream(St);
        St.Free;
      end;
end;

procedure TfrmBaseDev0.actUpdBrowseExecute(Sender: TObject);
var
  vat: TComponent;
begin
  vat := PrimDM.FindComponent('qryBrowser');
  if Assigned(vat) then
    if vat is TCustomAdoDataset then
      UpdTostBrowse(Self.Name, TCustomAdoDataset(vat));
end;

procedure TfrmBaseDev0.AllClick(AcLst: TActionList);
var
  x: TContainedAction;
  aa: TNotifyEvent;
begin
  inherited;

  for x in AcLst do
    begin
      aa := x.OnUpdate;
      if Assigned(aa) then
        aa(x);
    end;
end;

procedure TfrmBaseDev0.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  BrowseFields(Pedia);
end;

procedure TfrmBaseDev0.BrowseFields(var LeoMenu: TMenuItem; SelDevGrid: TcxGridDBTableView = nil);
Var
  i: Integer;
  NewMenu: TMenuItem;
  ComDevGrid: TcxGridDBTableView;
begin
  // Fix 2014
  if SelDevGrid = Nil then
    ComDevGrid := PopupcxGridDBTableView
  else
    ComDevGrid := SelDevGrid;

  if ComDevGrid = Nil then
    exit;

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

  for i := 0 to (ComDevGrid.ColumnCount - 1) do
    begin
      NewMenu         := TMenuItem.Create(Self);
      NewMenu.Caption := ComDevGrid.Columns[i].Caption;
      NewMenu.Tag     := i;
      NewMenu.Checked := ComDevGrid.Columns[i].Visible;
      NewMenu.Hint    := ComDevGrid.Columns[i].DataBinding.FieldName;
      NewMenu.OnClick := NLeoClick;
      LeoMenu.Add(NewMenu);
    end;
end;

procedure TfrmBaseDev0.FAllClick(Sender: TObject);
var
  i: Integer;
begin
  For i := 0 to PopupcxGridDBTableView.ColumnCount - 1 do
    begin
      PopupcxGridDBTableView.Columns[i].Visible := True;
      Pedia.Items[i + FirstFreePedia].Checked   := True;
    end
end;

procedure TfrmBaseDev0.FNoneClick(Sender: TObject);
var
  i: Integer;
begin
  For i := 0 to PopupcxGridDBTableView.ColumnCount - 1 do
    begin
      PopupcxGridDBTableView.Columns[i].Visible := False;
      Pedia.Items[i + FirstFreePedia].Checked   := False;
    end;
end;

procedure TfrmBaseDev0.FormCreate(Sender: TObject);
var i : Integer;
a : string;
begin
if frmMain.GridFont > '' then
begin
for i := 0 to Self.ComponentCount-1 do
begin
  if Self.Components[i] is TcxGrid then
    begin
     TcxGrid(Components[i]).Font.Name := frmMain.GridFont;
     TcxGrid(Components[i]).Font.Charset := frmMain.GridCharset;
//     a:=a+' '+Self.Components[i].Name;
    end;
end;
end;
//MessageDlg(a, mtCustom, [mbOK], 0);
end;

procedure TfrmBaseDev0.Grid2ExcelClick(Sender: TObject);
begin
  inherited;
  Output2XLSdx(PopupcxGridDBTableView);
end;

procedure TfrmBaseDev0.Grid2PrnClick(Sender: TObject);
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

procedure TfrmBaseDev0.NLeoClick(Sender: TObject);
var
  leo: String;
  x, y: Integer;
begin
  // Indirect Menu Addressing
  { TODO -cCritical : Please Check }
  leo   := (Sender as TMenuItem).Hint;
  for x := 0 to PopupcxGridDBTableView.ColumnCount - 1 do
    if PopupcxGridDBTableView.Columns[x].DataBinding.FieldName = leo then
      y := x;

  If (Sender as TMenuItem).Checked then
    begin
      PopupcxGridDBTableView.Columns[y].Visible := False;
      (Sender as TMenuItem).Checked             := False;
    end
  else
    begin
      PopupcxGridDBTableView.Columns[y].Visible := True;
      (Sender as TMenuItem).Checked             := True;
    end
end;

procedure TfrmBaseDev0.popFilterPopup(Sender: TObject);
begin
  // MessageDlg(popFilter.PopupComponent.Name , mtWarning, [mbOK], 0);
  if popFilter.PopupComponent is TcxGridSite then
    /// /TcxGridDBTableView
    begin
      // !!!!! Απίστευτο Cast για το Quantum Grid TcxGridSite
      PopupDataSet           := TcxGridDBTableView(TcxGridSite(popFilter.PopupComponent).GridView).DataController.DataSet;
      PopupDataSource        := TcxGridDBTableView(TcxGridSite(popFilter.PopupComponent).GridView).DataController.DataSource;
      PopupcxGridDBTableView := TcxGridDBTableView(TcxGridSite(popFilter.PopupComponent).GridView);
      PopupcxGridLevel       := TcxGridLevel(TcxGridSite(popFilter.PopupComponent).GridView);
    end;
  BrowseFields(Pedia);
end;

procedure TfrmBaseDev0.cxDbLCParamClick(Sender: TObject);
var
  PopField: String;
  PopDBLC: TcxDBLookupComboBox;
  frm: TfrmFilterEn;
  TmpSql: string;
begin
  PopDBLC := TcxDBLookupComboBox(Sender);
  if Assigned(PopDBLC.Properties.ListField) then
    begin
      PopField := PopDBLC.Properties.ListField.Name;
      frm      := TfrmFilterEn.CreateWithParamDSet(Self, PopDBLC.Properties.ListSource.DataSet, TDMBase(Self));
      if frm.ShowModal = mrOk then
        TmpSql := frm.KSleo
      else
        TmpSql := '';
      frm.Free;
      PopDBLC.Properties.ListSource.DataSet.Active := False;
      // DM.qryBrowser.SQL.Text:= DM.BrowseSqlInit.Text;
      if TmpSql > '' then
        begin
          TAdoQuery(PopDBLC.Properties.ListSource.DataSet).Filtered := False;
          TAdoQuery(PopDBLC.Properties.ListSource.DataSet).Filter := TmpSql;
          TAdoQuery(PopDBLC.Properties.ListSource.DataSet).Filtered := True;
          // TAdoQuery(PopDBLC.Properties.ListSource.DataSet).SQL.Add(' Where  ' + TmpSql);
        end
      else
        begin
          TAdoQuery(PopDBLC.Properties.ListSource.DataSet).Filtered := False;
        end;

      PopDBLC.Properties.ListSource.DataSet.Active := True;
      TcxDBLookupComboBox(Sender).Properties.ListSource.DataSet.Active := False;
      TcxDBLookupComboBox(Sender).Properties.ListSource.DataSet.Active := True;
    end;
end;

procedure TfrmBaseDev0.cblcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    if Sender is TcxDBLookupComboBox then
      cxDbLCParamClick(Sender);
  if Key = VK_F5 then
    if Sender is TcxDBLookupComboBox then
      cxDbLCDblClick(Sender);
end;

procedure TfrmBaseDev0.CheckIfThere;
begin
  raise ERangeError.Create('Not Implemented')
end;

procedure TfrmBaseDev0.SetDBLookupSort;
var
  x: Integer;
  a: TcxLookupDBGridColumns;
begin
  for x := 0 to Self.ComponentCount - 1 do
    if Self.Components[x] is TcxDBLookupComboBox then
      begin
        a := TcxLookupDBGridColumns(TcxDBLookupComboBox(Self.Components[x]).Properties.ListColumns);
        if a.Count > 0 then
          a[0].SortOrder := soAscending;
        if a.Count > 1 then
          begin
            a[0].SortOrder := soNone;
            a[1].SortOrder := soAscending;
          end;
      end;
end;

procedure TfrmBaseDev0.SetDBLookupClearKey;
var
  x: Integer;
  a: TcxDBLookupComboBox;
begin
  for x := 0 to Self.ComponentCount - 1 do
    if Self.Components[x] is TcxDBLookupComboBox then
      begin
        a                     := TcxDBLookupComboBox(Self.Components[x]);
        a.Properties.ClearKey := 27;
      end;
end;

procedure TfrmBaseDev0.SetDBLookupSortSpec(Comp: TcxDBLookupComboBox);
var
  a: TcxLookupDBGridColumns;
begin
  a := TcxLookupDBGridColumns(Comp.Properties.ListColumns);
  if a.Count > 0 then
    a[0].SortOrder := soAscending;
end;

procedure TfrmBaseDev0.SetDBLookupSortDesc;
var
  x: Integer;
  a: TcxLookupDBGridColumns;
begin
  for x := 0 to Self.ComponentCount - 1 do
    if Self.Components[x] is TcxDBLookupComboBox then
      begin
        a := TcxLookupDBGridColumns(TcxDBLookupComboBox(Self.Components[x]).Properties.ListColumns);
        if a.Count > 0 then
          a[0].SortOrder := soDescending;
        if a.Count > 1 then
          begin
            a[0].SortOrder := soNone;
            a[1].SortOrder := soDescending;
          end;
      end;
end;

procedure TfrmBaseDev0.SetDBLookupSortDescSpec(Comp: TcxDBLookupComboBox);
var
  a: TcxLookupDBGridColumns;
begin
  a := TcxLookupDBGridColumns(Comp.Properties.ListColumns);
  if a.Count > 0 then
    a[0].SortOrder := soDescending;
end;

procedure TfrmBaseDev0.SetDBLookupSortDescSpecCol(Comp: TcxDBLookupComboBox; Col: Integer = 0);
var
  a: TcxLookupDBGridColumns;
begin
  a := TcxLookupDBGridColumns(Comp.Properties.ListColumns);
  if a.Count >= Col then
    a[Col].SortOrder := soDescending;
end;

constructor TfrmBaseDev0.CreateSecurity(aowner: TComponent; FormID: Integer = 0);
begin
  PFormID := FormID;
  // if DMMain.FindFormName(FormId,PFormName) then
  Create(aowner)
  // else
  // exit;
end;

procedure TfrmBaseDev0.MainStateChange;
begin
  raise ERangeError.Create('Not Implemented')
end;

procedure TfrmBaseDev0.MainStateChange0(St: String);
begin
  raise ERangeError.Create('Not Implemented')
end;

procedure TfrmBaseDev0.SubStateChange(St: String);
begin
  raise ERangeError.Create('Not Implemented')
end;

end.
