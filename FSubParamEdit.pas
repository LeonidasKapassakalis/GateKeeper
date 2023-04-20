unit FSubParamEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Common,
  Dialogs, StdCtrls, Buttons, DBGrids, DB, DBCtrls, DBase, DMain, Globals, Globals0,
  CheckLst, SQLMemMain, Vcl.Menus, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmSubParamEdit = class(TForm)
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    PDM: TDMBASE;
    CurTop: Integer;
    FGrid: TDBGrid;
    CreateTable: Boolean;
    FormAction: TCloseAction;
    procedure FillCombo;
    function CreateEdit(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
    function CreateLCB(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String; Field: TField): TComponent;
    function CreateCheckBx(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
    procedure EditDateEnter(Sender: TObject);
    function SearchComp(Name: String): TComponent;
  public
    KSleo: String;

    constructor CreateWithParam(aowner: TComponent; grid: TDBGrid; DM: TDataModule);
  end;

implementation

{$R *.dfm}

constructor TfrmSubParamEdit.CreateWithParam(aowner: TComponent; grid: TDBGrid; DM: TDataModule);
begin
  FGrid := grid;
  inherited Create(aowner);
  PDM := TDMBASE(DM);
end;

procedure TfrmSubParamEdit.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  FormAction := caFree;
  Close;
end;

function TfrmSubParamEdit.CreateCheckBx(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
var
  LEdit: TDBCheckBox;
  LLabel: TLabel;
begin

  CurTop           := CurTop + 20;
  LEdit            := TDBCheckBox.Create(Self);
  LEdit.DataSource := FGrid.DataSource;
  LEdit.DataField  := NNField;
  LEdit.Name       := 'EdtF' + Name;
  LEdit.Hint       := NNField;
  LEdit.Parent     := Owner;
  LEdit.Parent     := Self;
  LEdit.Top        := CurTop;
  LEdit.Left       := 150;
  LEdit.Tag        := 1;
  LEdit.Caption    := '';
  // LEdit.AllowGrayed := True;
  if Width > 200 then
    LEdit.Width := 190
  else
    LEdit.Width := Width;

  LEdit.Visible := True;

  LLabel         := TLabel.Create(Owner);
  LLabel.Name    := 'Lab' + Name;
  LLabel.Parent  := Owner;
  LLabel.Parent  := Self;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
  Self.Height    := CurTop + 120;
end;

function TfrmSubParamEdit.CreateEdit(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
var
  LEdit: TDBEdit;
  LLabel: TLabel;
begin
  CurTop           := CurTop + 20;
  LEdit            := TDBEdit.Create(Self);
  LEdit.Name       := 'Edt' + Name;
  LEdit.Text       := '';
  LEdit.DataSource := FGrid.DataSource;
  LEdit.DataField  := NNField;
  LEdit.Hint       := NNField;
  LEdit.Parent     := Self;
  LEdit.Top        := CurTop;
  LEdit.Left       := 150;
  LEdit.Tag        := 1;
  if Width > 200 then
    LEdit.Width := 190
  else
    LEdit.Width := Width;
  LEdit.Visible := True;

  if LField = TDateTimeField then
    LEdit.OnDblClick := EditDateEnter;

  LLabel         := TLabel.Create(Owner);
  LLabel.Name    := 'Lab' + Name;
  LLabel.Parent  := Owner;
  LLabel.Parent  := Self;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
  Self.Height    := CurTop + 120;
end;

function TfrmSubParamEdit.CreateLCB(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String; Field: TField): TComponent;
var
  LEdit: TDBLookUpComboBox;
  LLabel: TLabel;
  LBut, LBut2: TButton;
  LeoName, FldName: String;
  x: Integer;
begin
  CurTop       := CurTop + 20;
  LEdit        := TDBLookUpComboBox.Create(Self);
  LEdit.Name   := 'LCB' + Name;
  LEdit.Parent := Owner;
  LEdit.Parent := Self;
  LEdit.Top    := CurTop;
  LEdit.Left   := 150;
  LEdit.Width  := Width;
  if Width > 200 then
    LEdit.Width := 190
  else
    LEdit.Width := Width;
  LEdit.Visible := True;
  LeoName       := TStringField(Field).LookupDataSet.Name;
  LeoName       := 'ds' + LeoName;
  LEdit.Hint    := TStringField(Field).KeyFields;
  for x         := 0 to PDM.ComponentCount - 1 do
    begin
      if PDM.Components[x].Name = LeoName then
        begin
          LEdit.ListSource := TDataSource(PDM.Components[x]);
        end
    end;
  LEdit.ListField  := TStringField(Field).LookupResultField;
  LEdit.KeyField   := TStringField(Field).LookupKeyFields;
  LEdit.DataSource := FGrid.DataSource;
  LEdit.DataField  := TStringField(Field).KeyFields;

  LLabel         := TLabel.Create(Owner);
  LLabel.Name    := 'L' + Name;
  LLabel.Parent  := Owner;
  LLabel.Parent  := Self;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
  Self.Height    := CurTop + 120;
end;

procedure TfrmSubParamEdit.FillCombo;
var
  n, ii, LWidth, LIndex: Integer;
  NField, NNField, LName: String;
  LField: TFieldClass;
  LFieldItem: TField;
begin
  for n := 0 to FGrid.Columns.Count - 1 do
    begin
      if Assigned(FGrid.Columns.Items[n].Field) then
        begin
          if Not(FGrid.Columns.Items[n].Field.Calculated) then
            if Not(FGrid.Columns.Items[n].Field.Lookup) then
              begin
                NField := FGrid.Columns.Items[n].FieldName;
                LIndex := FGrid.DataSource.DataSet.FieldByName(NField).Index;
                LName  := FGrid.DataSource.DataSet.Fields[LIndex].DisplayName;
                // LWidth:= FGrid.DataSource.DataSet.Fields[LIndex].DisplayWidth;
                LWidth := FGrid.Columns.Items[n].Width;
                if LWidth < 10 then
                  // Size is Messured in Characters so Size * 10 = Logical Width
                  LWidth := FGrid.DataSource.DataSet.Fields[LIndex].Size * 10;
                // FieldDefs Have other Index  from FieldByName.Index
                for ii := 0 to (FGrid.DataSource.DataSet.FieldDefs.Count - 1) do
                  begin
                    if FGrid.DataSource.DataSet.FieldDefs[ii].Name = NField then
                      LField := FGrid.DataSource.DataSet.FieldDefs[ii].FieldClass;
                  end;
                NNField := NField;
                Delete(NField, Pos('.', NField), 1);
                if LField = TBooleanField then
                  CreateCheckBx(Self, NField, LName, LWidth, LField, NNField)
                else
                  CreateEdit(Self, NField, LName, LWidth, LField, NNField);
              end
            else
              begin
                NField := FGrid.Columns.Items[n].FieldName;
                LIndex := FGrid.DataSource.DataSet.FieldByName(NField).Index;
                LName  := FGrid.DataSource.DataSet.Fields[LIndex].DisplayName;
                // LWidth:= FGrid.DataSource.DataSet.Fields[LIndex].DisplayWidth;
                LWidth := FGrid.Columns.Items[n].Width;
                if LWidth < 10 then
                  // Size is Messured in Characters so Size * 10 = Logical Width
                  LWidth := FGrid.DataSource.DataSet.Fields[LIndex].Size * 10;
                // LField:= FGrid.DataSource.DataSet.FieldDefs[LIndex].FieldClass;
                for ii := 0 to (FGrid.DataSource.DataSet.FieldDefs.Count - 1) do
                  begin
                    if FGrid.DataSource.DataSet.FieldDefs[ii].Name = NField then
                      LField := FGrid.DataSource.DataSet.FieldDefs[ii].FieldClass;
                  end;
                LFieldItem := FGrid.DataSource.DataSet.FieldByName(NField);
                NNField    := NField;
                Delete(NField, Pos('.', NField), 1);
                CreateLCB(Self, NField, LName, LWidth, LField, NNField, LFieldItem);
              end;
        end;
    end;
  DBNavigator1.DataSource := FGrid.DataSource;
end;

procedure TfrmSubParamEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := FormAction;
end;

procedure TfrmSubParamEdit.FormCreate(Sender: TObject);
begin
  FillCombo;
  FormAction := caNone;
end;

function TfrmSubParamEdit.SearchComp(Name: String): TComponent;
var
  i: Integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
    if Self.Components[i].Name = Name then
      begin
        result := Self.Components[i];
        exit;
      end;
  result := Nil;
end;

procedure TfrmSubParamEdit.EditDateEnter(Sender: TObject);
var
  TmpDate: TDateTime;
begin
  TmpDate := now();
  if FormDate(Self, TmpDate, csDateTime) = mrOk then
    TDBEdit(Sender).Text := datetostr(TmpDate)
  else
    TDBEdit(Sender).Text := '';
end;

end.
