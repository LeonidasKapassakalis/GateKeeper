unit FBEnForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FBForm, ComCtrls, Menus, Grids, DBGrids, ExtCtrls,
  FFilterEn, FSearch, RSubParams, FDefineQOrder, DB, Data.SqlExpr,
  DBTables, DBClient, ADODB, StrUtils, DBase, ActnList, Data.FMTBcd;

type
  TfrmBEnForm = class(TfrmBForm)
    PnlTop: TPanel;
    PnlBottom: TPanel;
    popFilter: TPopupMenu;
    pmsFilter: TMenuItem;
    pmsCancelFilter: TMenuItem;
    popfilterDis: TMenuItem;
    MC1: TMenuItem;
    N2: TMenuItem;
    MC2: TMenuItem;
    N4: TMenuItem;
    MC3: TMenuItem;
    Pedia: TMenuItem;
    FAll: TMenuItem;
    FNone: TMenuItem;
    MC5: TMenuItem;
    MC4: TMenuItem;
    Indexes: TMenuItem;
    NNone: TMenuItem;
    IndDisp: TMenuItem;
    PediaIdx: TMenuItem;
    PediaIdxActive: TMenuItem;
    MC7: TMenuItem;
    MC6: TMenuItem;
    NUnder1: TMenuItem;
    actOutputToXL: TMenuItem;
    ActionList: TActionList;
    Refresh: TAction;
    UpdateActions: TAction;
    MainMenu1: TMainMenu;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    actKart0: TAction;
    actDispCurr0: TAction;
    actEquipment0: TAction;
    PageControl1: TPageControl;
    FormGrid: TDBGrid;
    TabSheet1: TTabSheet;
    procedure pmsFilterClick(Sender: TObject);
    procedure pmsCancelFilterClick(Sender: TObject);
    procedure popfilterDisClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FAllClick(Sender: TObject);
    procedure FNoneClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PediaIdxActiveClick(Sender: TObject);
    procedure NNoneClick(Sender: TObject);
    procedure IndDispClick(Sender: TObject);
    procedure FormGridTitleClick(Column: TColumn);
    procedure FormGridEnter(Sender: TObject);
    procedure actOutputToXLClick(Sender: TObject);
    procedure UpdateActionsExecute(Sender: TObject);
    procedure ActionListExecute(Action: TBasicAction; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    FStoredCalc: Boolean;
    procedure SetIndexAct(const Value: Boolean);
    procedure NLeoClick(Sender: TObject);
    procedure NLeo1Click(Sender: TObject);
    procedure NLeo2Click(ColName: String; Check: Boolean);
    procedure SecMenuQueryOnClick(Sender: TObject);
    procedure SecMenuTableOnClick(Sender: TObject);
    function FindFieldsForIndex(LeoMenu: TMenuItem): string;
    function SetQIndexFields(LeoMenu: TMenuItem): string;
    procedure SaveAdoParameters(Var ParametersArray, ValuesArray: Variant; CountParameters: Integer; Query: TAdoQuery);
    procedure ReturnAdoParameters(ParametersArray, ValuesArray: Variant; CountParameters: Integer; Query: TAdoQuery);
    procedure ClearMarks;
    procedure SetStoredCalc(const Value: Boolean);
  protected
    FIndexAct: Boolean;
    FilSelected: Boolean;
    FilFrom: String;
    FilTo: String;
    FilField: String;
    FilTField: String;
    procedure EnhmPeriaAsMarks;
  private
    LeoDefSQL: String;
    LeoDefIndex: String;
    LeoSQIndex: String;
    FFilterGrid: TObject;
  public
    procedure SetFilterGrid(const Value: TObject);
    procedure BrowseFields(var LeoMenu: TMenuItem);
    procedure BrowseFieldsIdx(var LeoMenu: TMenuItem);
    procedure BrowseIndex(var LeoMenu: TMenuItem);
    procedure UncheckIndexes;
    property IndexAct: Boolean read FIndexAct write FIndexAct;
    property StoredCalc: Boolean read FStoredCalc write SetStoredCalc;
    property FilterGrid: TObject read FFilterGrid write SetFilterGrid;
  end;

var
  frmBEnForm: TfrmBEnForm;

implementation

uses DMain;

{$R *.dfm}

procedure TfrmBEnForm.pmsFilterClick(Sender: TObject);
var
  frm: TfrmFilterEn;
begin
  inherited;
  if (popFilter.PopupComponent is TDBGrid) then
    begin
      if (popFilter.PopupComponent is TDBGrid) then
        frm := TfrmFilterEn.CreateWithParam(Self, (TDBGrid(popFilter.PopupComponent)), TDataModule(Self));
      try
        frm.ShowModal;
        if ((frm.ModalResult = mrOk)) then
          begin
            if TDBGrid(FilterGrid).DataSource.DataSet.Filter > '' then
              TDBGrid(FilterGrid).DataSource.DataSet.Filter := TDBGrid(FilterGrid).DataSource.DataSet.Filter + ' AND ' + frm.KSleo
            else
              TDBGrid(FilterGrid).DataSource.DataSet.Filter := frm.KSleo;
            TDBGrid(FilterGrid).DataSource.DataSet.Filtered := True;
          end;
      finally
        frm.Free;
      end;
    end;
end;

procedure TfrmBEnForm.pmsCancelFilterClick(Sender: TObject);
begin
  inherited;
  if FilterGrid is TDBGrid then
    begin
      TDBGrid(FilterGrid).DataSource.DataSet.Filtered := False;
      TDBGrid(FilterGrid).DataSource.DataSet.Filter   := '';
    end
end;

procedure TfrmBEnForm.popfilterDisClick(Sender: TObject);
begin
  inherited;
  if popFilter.PopupComponent is TDBGrid then
    if TDBGrid(popFilter.PopupComponent).DataSource.DataSet.Filter > ' ' then
      MessageDlg('Το ενεργό Φίλτρο είναι : ' + TDBGrid(popFilter.PopupComponent).DataSource.DataSet.Filter, mtInformation, [mbOk], 0)
    else
      MessageDlg('Δεν υπάρχει ενεργό Φίλτρο.' + TDBGrid(popFilter.PopupComponent).DataSource.DataSet.Filter, mtInformation, [mbOk], 0)
end;

procedure TfrmBEnForm.N2Click(Sender: TObject);
var
  frm: TfrmSearch;
begin
  frm := TfrmSearch.CreateWithParam(Self, TDBGrid(popFilter.PopupComponent), TDataModule(Self));
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmBEnForm.N4Click(Sender: TObject);
var
  rep: TrptSubParams;
begin
  if (popFilter.PopupComponent is TDBGrid) then
    begin
      rep := TrptSubParams.CreateFrom(Self, TComponent(popFilter.PopupComponent), Self.Caption);
      try
        rep.Preview;
      finally;
        rep.Free;
      end;
    end
end;

procedure TfrmBEnForm.FAllClick(Sender: TObject);
var
  i: Integer;
begin
  For i := 0 to FormGrid.Columns.Count - 1 do
    begin
      FormGrid.Columns[i].Visible := True;
      Pedia.Items[i + 3].Checked  := True;
    end
end;

procedure TfrmBEnForm.FNoneClick(Sender: TObject);
var
  i: Integer;
begin
  For i := 0 to FormGrid.Columns.Count - 1 do
    begin
      FormGrid.Columns[i].Visible := False;
      Pedia.Items[i + 3].Checked  := False;
    end
end;

procedure TfrmBEnForm.SetFilterGrid(const Value: TObject);
begin
  FFilterGrid := Value;
end;

procedure TfrmBEnForm.FormActivate(Sender: TObject);
begin
  inherited;
  if (Created and Not(IndexAct)) then
    begin
      BrowseIndex(Indexes);
      BrowseFields(Pedia);
      BrowseFieldsIdx(PediaIdx);
      IndexAct := True;
    end;

  if StoredCalc then
    exit;
  // raise Exception.Create('Data already collected');

end;

procedure TfrmBEnForm.BrowseFields(var LeoMenu: TMenuItem);
Var
  i, x: Integer;
  NewMenu: TMenuItem;
begin
  // Added at 18962003
  x     := LeoMenu.Count - 3;
  For i := 1 to x do
    begin
      LeoMenu.Delete(3);
    end;

  For i := 0 to (FormGrid.Columns.Count - 1) do
    begin
      NewMenu         := TMenuItem.Create(Self);
      NewMenu.Caption := FormGrid.Columns[i].Title.Caption;
      NewMenu.Tag     := i;
      NewMenu.Checked := FormGrid.Columns[i].Visible;
      NewMenu.OnClick := NLeoClick;
      NewMenu.Hint    := FormGrid.Columns[i].FieldName;
      LeoMenu.Add(NewMenu);
    end;
end;

procedure TfrmBEnForm.BrowseFieldsIdx(var LeoMenu: TMenuItem);
Var
  i, x: Integer;
  NewMenu: TMenuItem;
begin
  x     := LeoMenu.Count - 2;
  For i := 1 to x do
    begin
      LeoMenu.Delete(2);
    end;

  For i := 0 to (FormGrid.Columns.Count - 1) do
    begin
      try
        if FormGrid.DataSource.DataSet.FieldByName(FormGrid.Columns[i].FieldName).Tag = 0 then
          begin
            NewMenu         := TMenuItem.Create(Self);
            NewMenu.Caption := FormGrid.Columns[i].Title.Caption;
            NewMenu.Tag     := i;
            NewMenu.Checked := False;
            NewMenu.OnClick := NLeo1Click;
            NewMenu.Visible := False;
            NewMenu.Hint    := FormGrid.Columns[i].FieldName;
            LeoMenu.Add(NewMenu);
          end;
      except
        // Critical Add Error
      end;
    end;
end;

procedure TfrmBEnForm.BrowseIndex(var LeoMenu: TMenuItem);
Var
  i, x: Integer;
  MySubItems: TMenuItem;
begin
  if FormGrid.DataSource.DataSet is TTable then
    begin
      LeoDefIndex     := TTable(FormGrid.DataSource.DataSet).IndexName;
      IndDisp.Visible := False;
      for x           := 0 to TTable(FormGrid.DataSource.DataSet).IndexDefs.Count - 1 do
        begin
          MySubItems         := TMenuItem.Create(Self);
          MySubItems.Caption := TTable(FormGrid.DataSource.DataSet).IndexDefs[x].Name;
          MySubItems.Tag     := x;
          MySubItems.OnClick := SecMenuTableOnClick;
          LeoMenu.Add(MySubItems);
        end;
    end
end;

procedure TfrmBEnForm.UncheckIndexes();
var
  i: Integer;
begin
  for i                      := 0 to Indexes.Count - 1 do
    Indexes.Items[i].Checked := False;
end;

procedure TfrmBEnForm.SetIndexAct(const Value: Boolean);
begin
  FIndexAct := Value;
end;

procedure TfrmBEnForm.NLeoClick(Sender: TObject);
var
  Leo: String;
  x, y: Integer;
begin
  Leo   := (Sender as TMenuItem).Hint;
  for x := 0 to FormGrid.Columns.Count - 1 do
    if FormGrid.Columns[x].FieldName = Leo then
      y := x;

  If (Sender as TMenuItem).Checked then
    begin
      FormGrid.Columns[y].Visible := False;
      // FormGrid.Columns[((Sender as TMenuItem).Tag)].Visible:=False;
      (Sender as TMenuItem).Checked := False;
    end
  else
    begin
      FormGrid.Columns[y].Visible := True;
      // FormGrid.Columns[((Sender as TMenuItem).Tag)].Visible:=True;
      (Sender as TMenuItem).Checked := True;
    end
end;

procedure TfrmBEnForm.NLeo2Click(ColName: String; Check: Boolean);
var
  x, y: Integer;
begin
  for x := 0 to FormGrid.Columns.Count - 1 do
    if FormGrid.Columns[x].FieldName = ColName then
      y := x;

  If Not(Check = True) then
    begin
      FormGrid.Columns[y].Visible := False;
    end
  else
    begin
      FormGrid.Columns[y].Visible := True;
    end
end;

procedure TfrmBEnForm.NLeo1Click(Sender: TObject);
begin
  If (Sender as TMenuItem).Checked then
    (Sender as TMenuItem).Checked := False
  else
    (Sender as TMenuItem).Checked := True;
end;

procedure TfrmBEnForm.SecMenuTableOnClick(Sender: TObject);
begin
  TTable(FormGrid.DataSource.DataSet).IndexName := TTable(FormGrid.DataSource.DataSet).IndexDefs.Items[(Sender as TMenuItem).Tag].Name;
  UncheckIndexes();
  (Sender as TMenuItem).Checked := True;
end;

procedure TfrmBEnForm.SecMenuQueryOnClick(Sender: TObject);
var
  LeoS1, LeoS2, LeoS3: String;
  i: Integer;
begin
  FormGrid.DataSource.DataSet.Active := False;
  LeoS1                              := TSQLQuery(FormGrid.DataSource.DataSet).Sql.Text;
  LeoS2                              := TSQLQuery(FormGrid.DataSource.DataSet).Fields[(Sender as TMenuItem).Tag].Origin;
  LeoS3                              := TSQLQuery(FormGrid.DataSource.DataSet).Fields[(Sender as TMenuItem).Tag].DisplayLabel;
  LeoS2                              := Copy(LeoS2, 5, (length(LeoS2) - 4));
  System.Insert((',' + LeoS2), LeoS1, (length(LeoS1) - 1));
  System.Insert((LeoS3 + ' '), LeoSQIndex, (length(LeoSQIndex) + 1));
  TSQLQuery(FormGrid.DataSource.DataSet).Sql.Text := LeoS1;
  FormGrid.DataSource.DataSet.Active              := True;
  (Sender as TMenuItem).Checked                   := True;
end;

function TfrmBEnForm.FindFieldsForIndex(LeoMenu: TMenuItem): string;
var
  LeoS: String;
  i: Integer;
  found: Boolean;
begin
  found := False;
  for i := 2 to LeoMenu.Count - 1 do
    if LeoMenu.Items[i].Checked then
      if found then
        LeoS := LeoS + ';' + FormGrid.Fields[i - 2].FieldName
      else
        begin
          found := True;
          LeoS  := FormGrid.Fields[i - 2].FieldName;
        end;
  Result := LeoS;
end;

function TfrmBEnForm.SetQIndexFields(LeoMenu: TMenuItem): string;
var
  LeoS: String;
  i: Integer;
  found: Boolean;
begin
  found := False;
  for i := 2 to LeoMenu.Count - 1 do
    if LeoMenu.Items[i].Checked then
      if found then
        // LeoS:=LeoS+','+FormGrid.Fields[i-2].FieldName
        LeoS := LeoS + ',' + LeoMenu.Items[i].Hint
      else
        begin
          found := True;
          // LeoS:=FormGrid.Fields[i-2].FieldName;
          LeoS := LeoMenu.Items[i].Hint
        end;
  Result := LeoS;
end;

procedure TfrmBEnForm.PediaIdxActiveClick(Sender: TObject);
var
  LeoS, SLeo, OrderStr: String;
  i, z, x: Integer;
  LeoV, LeoV1: Variant;
  frm: TfrmDefineQOrder;
begin
  frm := TfrmDefineQOrder.CreateRefMenu(Self, popFilter, PediaIdx);
  if frm.ShowModal = mrCancel then
    begin
      frm.Free;
      exit;
    end;
  OrderStr := frm.OrderString;
  frm.Free;

  { if Not(SetQIndexFields(PediaIdx) > ' ') then
    begin
    MessageDlg('Δέν έχουν ορισθεί Πεδία.', mtWarning, [mbOK], 0);
    exit;
    end; }
  UncheckIndexes();
  // 16012004 Clear * Marks before Using Order
  ClearMarks;
  if (TDBGrid(FilterGrid)).DataSource.DataSet is TTable then
    begin
      TTable((TDBGrid(FilterGrid)).DataSource.DataSet).IndexFieldNames := FindFieldsForIndex(PediaIdx);
    end;
  if (TDBGrid(FilterGrid)).DataSource.DataSet is TSQLQuery then
    begin
      LeoS := TSQLQuery((TDBGrid(FilterGrid)).DataSource.DataSet).Sql.Text;
      SLeo := ' ' + SetQIndexFields(PediaIdx) + ' ,';
      SLeo := OrderStr + ',';
      i    := length(SLeo);
      System.Insert(SLeo, LeoS, ((Pos('ORDER BY ', LeoS)) + 9));
      TSQLQuery((TDBGrid(FilterGrid)).DataSource.DataSet).Sql.Text := LeoS;
      TSQLQuery((TDBGrid(FilterGrid)).DataSource.DataSet).Active := False;
      // !!!
      // TSQLQuery((TDBGrid(FilterGrid)).DataSource.DataSet).Prepare;
      TSQLQuery((TDBGrid(FilterGrid)).DataSource.DataSet).Active := True;
    end;
  if (TDBGrid(FilterGrid)).DataSource.DataSet is TAdoQuery then
    begin
      x := TAdoQuery((TDBGrid(FilterGrid)).DataSource.DataSet).Parameters.Count;
      if x > 0 then
        begin
          LeoV1 := VarArrayCreate([0, x], VarVariant);
          LeoV  := VarArrayCreate([0, x], VarVariant);
          SaveAdoParameters(LeoV, LeoV1, x, TAdoQuery((TDBGrid(FilterGrid)).DataSource.DataSet));
        end;
      LeoS := TAdoQuery((TDBGrid(FilterGrid)).DataSource.DataSet).Sql.Text;
      // SLeo:=' ' + SetQIndexFields(PediaIdx);
      SLeo := OrderStr;
      i    := length(SLeo);
      z    := Pos('Order By ', LeoS);
      if z > 0 then
        begin
          SLeo := SLeo + ',';
          System.Insert(SLeo, LeoS, ((Pos('Order By ', LeoS)) + 9))
        end
      else
        begin
          LeoS := AnsiReplaceStr(LeoS, ';', ' ');
          LeoS := LeoS + ' Order By ' + SLeo;
        end;
      TAdoQuery((TDBGrid(FilterGrid)).DataSource.DataSet).Sql.Text := LeoS;
      TAdoQuery((TDBGrid(FilterGrid)).DataSource.DataSet).Active := False;
      if x > 0 then
        begin
          ReturnAdoParameters(LeoV, LeoV1, x, TAdoQuery((TDBGrid(FilterGrid)).DataSource.DataSet));
        end;
      TAdoQuery((TDBGrid(FilterGrid)).DataSource.DataSet).Active := True;
      EnhmPeriaAsMarks;
    end;
end;

procedure TfrmBEnForm.SaveAdoParameters(Var ParametersArray, ValuesArray: Variant; CountParameters: Integer; Query: TAdoQuery);
var
  x: Integer;
begin
  for x := 0 to (CountParameters - 1) do
    begin
      ParametersArray[x] := Query.Parameters[x].Name;
      ValuesArray[x]     := Query.Parameters.ParamValues[ParametersArray[x]];
    end;
end;

procedure TfrmBEnForm.ReturnAdoParameters(ParametersArray: Variant; ValuesArray: Variant; CountParameters: Integer; Query: TAdoQuery);
var
  x: Integer;
  S: String;
begin
  for x := 0 to (CountParameters - 1) do
    begin
      S                                     := ParametersArray[x];
      Query.Parameters.ParamByName(S).Value := ValuesArray[x];
    end;
end;

procedure TfrmBEnForm.EnhmPeriaAsMarks;
var
  x: Integer;
begin
  for x := 3 to Pedia.Count - 1 do
    NLeo2Click(TMenuItem(Pedia.Items[x]).Hint, TMenuItem(Pedia.Items[x]).Checked);
end;

procedure TfrmBEnForm.ClearMarks;
var
  x: Integer;
begin
  for x := 0 to FormGrid.Columns.Count - 1 do
    begin
      FormGrid.Columns[x].Title.Caption := AnsiReplaceStr(FormGrid.Columns[x].Title.Caption, '*', '');
      FormGrid.Columns[x].Title.Caption := AnsiReplaceStr(FormGrid.Columns[x].Title.Caption, '^', '');
    end;

  for x := 1 to PediaIdx.Count - 1 do
    begin
      PediaIdx.Items[x].Checked := False;
    end;
end;

procedure TfrmBEnForm.NNoneClick(Sender: TObject);
var
  LeoS, SLeo: String;
  i, z, x: Integer;
  LeoV, LeoV1: Variant;
begin
  ClearMarks;

  if FormGrid.DataSource.DataSet is TAdoQuery then
    begin
      x := TAdoQuery(FormGrid.DataSource.DataSet).Parameters.Count;
      if x > 0 then
        begin
          LeoV1 := VarArrayCreate([0, x], VarVariant);
          LeoV  := VarArrayCreate([0, x], VarVariant);
          SaveAdoParameters(LeoV, LeoV1, x, TAdoQuery(FormGrid.DataSource.DataSet));
        end;
      LeoS := TAdoQuery(FormGrid.DataSource.DataSet).Sql.Text;
      i    := length(LeoS);
      z    := Pos('Order By ', LeoS);
      if z > 0 then
        System.Delete(LeoS, z, (i - z));
      TAdoQuery(FormGrid.DataSource.DataSet).Sql.Text := LeoS;
      TAdoQuery(FormGrid.DataSource.DataSet).Active   := False;
      if x > 0 then
        begin
          ReturnAdoParameters(LeoV, LeoV1, x, TAdoQuery(FormGrid.DataSource.DataSet));
        end;
      TAdoQuery(FormGrid.DataSource.DataSet).Active := True;
    end;
end;

procedure TfrmBEnForm.IndDispClick(Sender: TObject);
var
  LeoS, SLeo: String;
  i, z: Integer;
  LeoV: Variant;
begin
  if FormGrid.DataSource.DataSet is TAdoQuery then
    begin
      LeoS := TAdoQuery(FormGrid.DataSource.DataSet).Sql.Text;
      z    := Pos('Order By ', LeoS);
      if z > 0 then
        begin
          System.Delete(LeoS, 1, (z - 1));
          MessageDlg(LeoS, mtInformation, [mbOk], 0);
        end
      else
        begin
          MessageDlg('No Order Found', mtInformation, [mbOk], 0);
        end
    end;
end;

procedure TfrmBEnForm.FormGridTitleClick(Column: TColumn);
var
  SLeo, LeoS, TempField: String;
  LeoColumn: TColumn;
  i, x, z: Integer;
  LeoV, LeoV1: Variant;
begin
  inherited;
  TempField := Column.FieldName;
  LeoColumn := Column;
  If (TDBGrid(FilterGrid)).DataSource.DataSet.FieldByName(TempField).Lookup then
    exit;
  If (TDBGrid(FilterGrid)).DataSource.DataSet.FieldByName(TempField).Calculated then
    exit;

  if (TDBGrid(FilterGrid)).DataSource.DataSet is TTable then
    begin
      TTable((TDBGrid(FilterGrid)).DataSource.DataSet).IndexFieldNames := FindFieldsForIndex(PediaIdx);
    end;
  // if (TDBGrid(FilteredGrid)).DataSource.DataSet is TADOQuery then
  if (TDBGrid(FilterGrid)).DataSource.DataSet is TCustomADODataset then
    begin
      if TCustomADODataset((TDBGrid(FilterGrid)).DataSource.DataSet).FieldByName(TempField).Tag = 0 then
        begin

          if Pos('^', Column.Title.Caption) > 0 then
            begin
              // Remove Order
              // Column.Title.Caption:=AnsiReplaceStr(Column.Title.Caption,'^','*');
              ClearMarks;
              LeoColumn.Title.Caption := LeoColumn.Title.Caption + '*';
              TempField               := TempField + ' DESC ';
            end
          else if Pos('*', Column.Title.Caption) > 0 then
            begin
              // Remove Order
              // Column.Title.Caption:=AnsiReplaceStr(Column.Title.Caption,'*','^');
              ClearMarks;
              Column.Title.Caption := Column.Title.Caption + '^';
              TempField            := TempField + ' ASC';
            end
          else
            begin
              // Remove Order
              ClearMarks;
              Column.Title.Caption := Column.Title.Caption + '^';
              TempField            := TempField;
            end;
          TCustomADODataset((TDBGrid(FilterGrid)).DataSource.DataSet).Sort := TempField;
        end;
    end;
end;

{ procedure TfrmBEnForm.FormGridTitleClick(Column: TColumn);
  var SLeo,LeoS,TempField:String;
  LeoColumn:TColumn;
  i,x,z:Integer;
  LeoV,LeoV1:Variant;
  begin
  inherited;
  TempField :=Column.FieldName;
  LeoColumn:=Column;
  ////// Table //////
  if FormGrid.DataSource.DataSet is TTable then
  begin
  TTable(FormGrid.DataSource.DataSet).IndexFieldNames:=FindFieldsForIndex(PediaIdx);
  end;
  ////// Table //////

  ////// ClientDataSet //////
  if FormGrid.DataSource.DataSet is TClientDataSet then
  begin
  TClientDataSet(FormGrid.DataSource.DataSet).IndexFieldNames:=TempField;
  if Pos('^',Column.Title.Caption) > 0 then
  begin
  //Remove Order
  //           Column.Title.Caption:=AnsiReplaceStr(Column.Title.Caption,'^','*');
  ClearMarks;
  LeoColumn.Title.Caption:=LeoColumn.Title.Caption+'*';
  TempField :=TempField + ' Desc ';
  end
  else
  if Pos('*',Column.Title.Caption) > 0 then
  begin
  //Remove Order
  //             Column.Title.Caption:=AnsiReplaceStr(Column.Title.Caption,'*','^');
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
  end;
  ////// ClientDataSet //////

  ////// AdoQuery //////
  if FormGrid.DataSource.DataSet is TADOQuery then
  begin
  if TAdoQuery(FormGrid.DataSource.DataSet).FieldByName(TempField).Tag = 0 then
  begin
  x:=TAdoQuery(FormGrid.DataSource.DataSet).Parameters.Count;
  if x > 0 then
  begin
  LeoV1:=VarArrayCreate([0, x],VarVariant);
  LeoV:=VarArrayCreate([0, x],VarVariant);
  SaveAdoParameters(LeoV,LeoV1,x,TAdoQuery(FormGrid.DataSource.DataSet));
  end;
  LeoS:=TADOQuery(FormGrid.DataSource.DataSet).SQL.Text;
  if Pos('^',Column.Title.Caption) > 0 then
  begin
  //Remove Order
  //           Column.Title.Caption:=AnsiReplaceStr(Column.Title.Caption,'^','*');
  ClearMarks;
  LeoColumn.Title.Caption:=LeoColumn.Title.Caption+'*';
  TempField :=TempField + ' Desc ';
  end
  else
  if Pos('*',Column.Title.Caption) > 0 then
  begin
  //Remove Order
  //             Column.Title.Caption:=AnsiReplaceStr(Column.Title.Caption,'*','^');
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
  TADOQuery(FormGrid.DataSource.DataSet).SQL.Clear;
  TADOQuery(FormGrid.DataSource.DataSet).SQL.Add(LeoS);
  TADOQuery(FormGrid.DataSource.DataSet).Active:=False;
  end
  else
  begin
  LeoS:=TAdoQuery(FormGrid.DataSource.DataSet).SQL.Text;
  i:=length(LeoS);
  z:=Pos('Order By ', LeoS );
  if z > 0 then
  System.Delete(LeoS,z,(i-z));
  LeoS:=LeoS+' Order By '+TempField;
  TADOQuery(FormGrid.DataSource.DataSet).SQL.Text := LeoS;
  TADOQuery(FormGrid.DataSource.DataSet).Active:=False;
  end;
  if x > 0 then
  begin
  ReturnAdoParameters(LeoV,LeoV1,x,TAdoQuery(FormGrid.DataSource.DataSet));
  end;
  TADOQuery(FormGrid.DataSource.DataSet).Active:=True;
  end;
  end;
  ////// AdoQuery //////

  EnhmPeriaAsMarks;
  end; }

procedure TfrmBEnForm.FormGridEnter(Sender: TObject);
begin
  inherited;
  SetFilterGrid(FormGrid);
  SetFilterGrid(FormGrid);
  BrowseIndex(Indexes);
  BrowseFields(Pedia);
  BrowseFieldsIdx(PediaIdx);
  IndexAct := True;
end;

procedure TfrmBEnForm.actOutputToXLClick(Sender: TObject);
begin
  inherited;
  TDMBase(DMMain).OutputFile(TDBGrid(FilterGrid));
end;

procedure TfrmBEnForm.UpdateActionsExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  DMMain.QFindFormID.Active                                := False;
  DMMain.QFindFormID.Parameters.ParamByName('PName').Value := 'T' + Self.Name;
  DMMain.QFindFormID.Active                                := True;
  if Not DMMain.QFindFormID.IsEmpty then
    begin
      for i := 0 to ActionList.ActionCount - 1 do
        begin
          DMMain.QUpdateFormAction.Parameters.ParamByName('ID').Value := CreateKey('FormAction');
          DMMain.QUpdateFormAction.Parameters.ParamByName('Form').Value := DMMain.QFindFormIDID.AsInteger;
          DMMain.QUpdateFormAction.Parameters.ParamByName('Action').Value := TCustomAction(ActionList.Actions[i]).Name;
          DMMain.QUpdateFormAction.Parameters.ParamByName('Text').Value := TCustomAction(ActionList.Actions[i]).Caption;
          DMMain.QUpdateFormAction.Parameters.ParamByName('SubParam').Value := 0;
          try
            DMMain.QUpdateFormAction.ExecSql;
          except
            SetStatusText('Εχει ήδη ενημερωθεί η ενέργεια ' + TCustomAction(ActionList.Actions[i]).Name, 0);
          end;
        end;
      DMMain.QUpdateFormAction.Parameters.ParamByName('ID').Value := CreateKey('FormAction');
      DMMain.QUpdateFormAction.Parameters.ParamByName('Form').Value := DMMain.QFindFormIDID.AsInteger;
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

procedure TfrmBEnForm.ActionListExecute(Action: TBasicAction; var Handled: Boolean);
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

procedure TfrmBEnForm.SetStoredCalc(const Value: Boolean);
begin
  FStoredCalc := Value;
end;

procedure TfrmBEnForm.FormCreate(Sender: TObject);
begin
  inherited;
  StoredCalc := False;
end;

end.
