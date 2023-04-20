unit FSearchDisplay;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, Db, DBTables, Menus;

type
  TfrmSearchDisplay = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    Grid: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
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
    Query2: TQuery;
    Query2CID: TIntegerField;
    Query1id: TIntegerField;
    Query1name: TStringField;
    Query1address: TStringField;
    Query1telephone: TStringField;
    Query1fax: TStringField;
    Query1AFM: TStringField;
    Query1DOY: TStringField;
    Query1mech: TStringField;
    Query1deigmata: TBooleanField;
    Query1area: TIntegerField;
    Query1class: TIntegerField;
    Query1occupation: TStringField;
    Query1tbenz: TBooleanField;
    Query1sfragides: TBooleanField;
    Query1cif: TBooleanField;
    Query1cifWPrice: TFloatField;
    Query1cifBPrice: TFloatField;
    Query1representative: TStringField;
    Query1natTemp: TBooleanField;
    Query1sap: TStringField;
    Query1salesType: TIntegerField;
    Query1payMethod: TIntegerField;
    Query1aactive: TBooleanField;
    Query1city: TStringField;
    Query1zip: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pmsFilterClick(Sender: TObject);
    procedure pmsCancelFilterClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FAllClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BrowseIndex(var LeoMenu: TMenuItem);
    procedure BrowseFields(var LeoMenu: TMenuItem);
    procedure SecMenuOnClick(Sender: TObject);
    procedure NLeoClick(Sender: TObject);
    procedure FNoneClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GridColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
    procedure UncheckIndexes();
    procedure GridDblClick(Sender: TObject);
    procedure GridTitleClick(Column: TColumn);
  private
    FModal: boolean;
    FCreated: boolean;
    FIndexAct: boolean;
    LeoDefSQL: String;
    LeoDefIndex: String;
    LeoSQIndex: String;
    procedure SecMenuQueryOnClick(Sender: TObject);
    procedure SecMenuTableOnClick(Sender: TObject);
  protected
    DM: TDataModule;
    FilSelected: boolean;
    FilFrom: String;
    FilTo: String;
    FilField: String;
    FilTField: String;
    PFormName: String;
    PFormID: Integer;
  public
    constructor CreateParam(aowner: TComponent; FormID: Integer; SearchStr: String);
    property Created: boolean read FCreated write FCreated;
    property IndexAct: boolean read FIndexAct write FIndexAct;
  end;

var
  frmSearchDisplay: TfrmSearchDisplay;
  InitSqlString: String;

implementation

uses DMain, FFilter, FSearch, FMain;

{$R *.DFM}

constructor TfrmSearchDisplay.CreateParam(aowner: TComponent; FormID: Integer; SearchStr: String);
var
  Stemp: String;
begin
  PFormID  := FormID;
  Created  := False;
  IndexAct := False;
  if DMMain.FindFormName(PFormID, PFormName) then
    begin
      Create(aowner);
      Stemp := Query1.SQL.Text;
      Insert(SearchStr, Stemp, (Pos('ORDER BY ', Stemp)));
      Query1.SQL.Text := Stemp;
      InitSqlString   := Stemp;
      Query1.Prepare;
      Query1.Active := True;
      Stemp         := Query2.SQL.Text;
      Insert(SearchStr, Stemp, (Length(Stemp) + 1));
      Query2.SQL.Text := Stemp;
      Query2.Prepare;
      Query2.Active := True;

      Self.Caption := SearchStr + 'Found : ' + inttostr(Query2CID.asInteger);
    end
  else
    exit;
end;

procedure TfrmSearchDisplay.FormCreate(Sender: TObject);
var
  LLeft, LWidth, LTop, LHeight, State: Integer;
  Filter, Index, DataSource: String;
begin
  inherited;
  frmMain.ReadIniSub(PFormName, LLeft, LTop, LWidth, LHeight, State);
  frmMain.ReadGrid(PFormName, Grid, Filter, Index, DataSource);
  if LWidth > 0 then
    SetBounds(LLeft, LTop, LWidth, LHeight);
  Self.Font  := frmMain.AppFonts[5];
  Self.Color := frmMain.AppColors[5];
  Grid.Font  := frmMain.AppFonts[6];
  Grid.Color := frmMain.AppColors[6];
  if Filter > '' then
    begin
      Grid.DataSource.DataSet.Filter   := Filter;
      Grid.DataSource.DataSet.Filtered := True;
    end;
  if Grid.DataSource.DataSet is TTable then
    TTable(Grid.DataSource.DataSet).IndexName := Index;
end;

procedure TfrmSearchDisplay.pmsFilterClick(Sender: TObject);
var
  frm: TfrmFilter;
  x: Integer;
  s: string;
begin
  inherited;
  if popFilter.PopupComponent is TDBGrid then
    begin
      frm := TfrmFilter.CreateWithParam(Self, TDBGrid(popFilter.PopupComponent));
      try
        frm.ShowModal;
        if ((frm.ModalResult = mrOk) AND (NOT((frm.Edit1.Text = '') AND (frm.Edit2.Text = '')))) then
          begin
            FilSelected := True;
            FilFrom     := frm.Edit1.Text;
            FilTo       := frm.Edit2.Text;
            // if FilTo = '' then
            // FilTo := FilFrom + '_';
            if FilTo < FilFrom then
              begin
                FilTo   := frm.Edit1.Text;
                FilFrom := frm.Edit2.Text;
              end;
            FilField := frm.cbFields.Text;
            x        := -1;
            repeat
              inc(x);
            until Grid.Columns.Items[x].Title.Caption = FilField;
            FilTField := Grid.Columns.Items[x].FieldName;
            if FilTo = '' then
              s := FilTField + ' >= ' + #39 + FilFrom + #39
            else if FilFrom = '' then
              s := FilTField + ' <= ' + #39 + FilTo + #39
            else
              s := FilTField + ' >= ' + #39 + FilFrom + #39 + ' AND ' + FilTField + ' <= ' + #39 + FilTo + #39;
            if Grid.DataSource.DataSet.Filter > '' then
              Grid.DataSource.DataSet.Filter := Grid.DataSource.DataSet.Filter + ' AND ' + s
            else
              Grid.DataSource.DataSet.Filter := s;
            Grid.DataSource.DataSet.Filtered := True;
          end
        else
          FilSelected := False;
      finally
        frm.Free;
      end;
    end;
end;

procedure TfrmSearchDisplay.pmsCancelFilterClick(Sender: TObject);
begin
  Grid.DataSource.DataSet.Filtered := False;
  Grid.DataSource.DataSet.Filter   := '';
end;

procedure TfrmSearchDisplay.N2Click(Sender: TObject);
var
  frm: TfrmSearch;
begin
  frm := TfrmSearch.CreateWithParam(Self, TDBGrid(popFilter.PopupComponent), DM);
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmSearchDisplay.N3Click(Sender: TObject);
begin
  if popFilter.PopupComponent is TDBGrid then
    MessageDlg('Το ενεργό Φίλτρο είναι : ' + TDBGrid(popFilter.PopupComponent).DataSource.DataSet.Filter, mtInformation, [mbOk], 0)
end;

procedure TfrmSearchDisplay.FormActivate(Sender: TObject);
begin
  if (Created and not(IndexAct) and Query1.Active) then
    begin
      BrowseFields(Pedia);
      BrowseIndex(Indexes);
      IndexAct := True;
    end
end;

procedure TfrmSearchDisplay.FormDestroy(Sender: TObject);
begin
  frmMain.WriteIniSub(PFormName, Self.Left, Self.Top, Self.Width, Self.Height, 0);
  frmMain.WriteGrid(PFormName, Grid);
end;

procedure TfrmSearchDisplay.BrowseIndex(var LeoMenu: TMenuItem);
Var
  i, x: Integer;
  MySubItems: TMenuItem;
begin
  if Grid.DataSource.DataSet is TTable then
    begin
      LeoDefIndex     := TTable(Grid.DataSource.DataSet).IndexName;
      IndDisp.Visible := False;
      for x           := 0 to TTable(Grid.DataSource.DataSet).IndexDefs.Count - 1 do
        begin
          MySubItems         := TMenuItem.Create(Self);
          MySubItems.Caption := TTable(Grid.DataSource.DataSet).IndexDefs[x].Name;
          MySubItems.Tag     := x;
          MySubItems.OnClick := SecMenuTableOnClick;
          LeoMenu.Add(MySubItems);
        end;
    end
  else
    begin
      LeoDefSQL       := TQuery(Grid.DataSource.DataSet).SQL.Text;
      IndDisp.Visible := True;
      for x           := 0 to TQuery(Grid.DataSource.DataSet).Fields.Count - 1 do
        begin
          MySubItems         := TMenuItem.Create(Self);
          MySubItems.Caption := TQuery(Grid.DataSource.DataSet).Fields[x].DisplayLabel;
          MySubItems.Tag     := x;
          MySubItems.OnClick := SecMenuQueryOnClick;
          LeoMenu.Add(MySubItems);
        end;
    end;
end;

procedure TfrmSearchDisplay.SecMenuOnClick(Sender: TObject);
var
  i: Integer;
begin
  TTable(Grid.DataSource.DataSet).IndexName := TTable(Grid.DataSource.DataSet).IndexDefs.Items[(Sender as TMenuItem).Tag].Name;
  for i                                     := 0 to TTable(Grid.DataSource.DataSet).IndexDefs.Count - 1 do
    Indexes[i].Checked                      := False;
  If Sender is TMenuItem then
    begin
      (Sender as TMenuItem).Checked := True;
    end

end;

procedure TfrmSearchDisplay.NLeoClick(Sender: TObject);
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

procedure TfrmSearchDisplay.FAllClick(Sender: TObject);
var
  i: Integer;
begin
  For i := 0 to Grid.Columns.Count - 1 do
    begin
      Grid.Columns[i].Visible    := True;
      Pedia.Items[i + 3].Checked := True;
    end
end;

procedure TfrmSearchDisplay.FNoneClick(Sender: TObject);
var
  i: Integer;
begin
  For i := 0 to Grid.Columns.Count - 1 do
    begin
      Grid.Columns[i].Visible    := False;
      Pedia.Items[i + 3].Checked := False;
    end;
end;

procedure TfrmSearchDisplay.FormShow(Sender: TObject);
begin
  Created := True;
end;

procedure TfrmSearchDisplay.BrowseFields(var LeoMenu: TMenuItem);
Var
  i: Integer;
  NewMenu: TMenuItem;
begin
  For i := 0 to (Grid.Columns.Count - 1) do
    begin
      NewMenu         := TMenuItem.Create(Self);
      NewMenu.Caption := Grid.Columns[i].Title.Caption;
      NewMenu.Tag     := i;
      NewMenu.Checked := Grid.Columns[i].Visible;
      NewMenu.OnClick := NLeoClick;
      LeoMenu.Add(NewMenu);
    end;
end;

procedure TfrmSearchDisplay.GridColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
Var
  SLeo: String;
  NewMenu: TMenuItem;
  i: Integer;
begin
  NewMenu         := TMenuItem.Create(Self);
  NewMenu.Caption := Grid.Columns[ToIndex].Title.Caption;
  NewMenu.Tag     := ToIndex + 3;
  NewMenu.Checked := Pedia.Items[FromIndex + 3].Checked;
  NewMenu.OnClick := NLeoClick;
  Pedia.Insert(ToIndex + 3, NewMenu);
  Pedia.Delete(FromIndex + 1 + 3);
  for i                := 3 to Pedia.Count - 3 do
    Pedia.Items[i].Tag := i - 3;
end;

procedure TfrmSearchDisplay.SecMenuTableOnClick(Sender: TObject);
begin
  TTable(Grid.DataSource.DataSet).IndexName := TTable(Grid.DataSource.DataSet).IndexDefs.Items[(Sender as TMenuItem).Tag].Name;
  UncheckIndexes();
  (Sender as TMenuItem).Checked := True;
end;

procedure TfrmSearchDisplay.SecMenuQueryOnClick(Sender: TObject);
var
  LeoS1, LeoS2, LeoS3: String;
  i: Integer;
begin
  Grid.DataSource.DataSet.Active := False;
  LeoS1                          := TQuery(Grid.DataSource.DataSet).SQL.Text;
  LeoS2                          := TQuery(Grid.DataSource.DataSet).Fields[(Sender as TMenuItem).Tag].Origin;
  LeoS3                          := TQuery(Grid.DataSource.DataSet).Fields[(Sender as TMenuItem).Tag].DisplayLabel;
  LeoS2                          := Copy(LeoS2, 5, (Length(LeoS2) - 4));
  System.Insert((',' + LeoS2), LeoS1, (Length(LeoS1) - 1));
  System.Insert((LeoS3 + ' '), LeoSQIndex, (Length(LeoSQIndex) + 1));
  TQuery(Grid.DataSource.DataSet).SQL.Text := LeoS1;
  Grid.DataSource.DataSet.Active           := True;
  (Sender as TMenuItem).Checked            := True;
end;

procedure TfrmSearchDisplay.UncheckIndexes();
var
  i: Integer;
begin
  for i                      := 0 to Indexes.Count - 1 do
    Indexes.Items[i].Checked := False;
end;

procedure TfrmSearchDisplay.GridDblClick(Sender: TObject);
begin
  Button1.Click;
end;

procedure TfrmSearchDisplay.GridTitleClick(Column: TColumn);
var
  Stemp: String;
begin
  Query1.Active   := False;
  Stemp           := InitSqlString;
  Query1.SQL.Text := StringReplace(Stemp, 'ORDER BY name', 'ORDER BY ' + Column.Field.FieldName, [rfIgnoreCase]);
  Query1.Prepare;
  Query1.Active := True;
end;

end.
