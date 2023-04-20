unit FSearch;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DBase,
  Common, Grids, DBGrids, Stdctrls, Buttons, DB, dbTables, dbctrls, Globals, Globals0, DMain, Variants;

type
  TfrmSearch = class(TForm)
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditDateEnter(Sender: TObject);
  private
    PDM: TDMBASE;
    CurTop: Integer;
    FGrid: TDBGrid;
    procedure FillCombo;
    function CreateEdit(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
    function CreateLCB(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String; Field: TField): TComponent;
  public
    constructor CreateWithParam(aowner: TComponent; grid: TDBGrid; DM: TDataModule);
  end;

implementation

uses FSubParams;

{$R *.DFM}

constructor TfrmSearch.CreateWithParam(aowner: TComponent; grid: TDBGrid; DM: TDataModule);
begin
  FGrid := grid;
  inherited Create(aowner);
  PDM := TDMBASE(DM);
end;

procedure TfrmSearch.FillCombo;
var
  n, LWidth, LIndex: Integer;
  NField, NNField, LName: String;
  LField: TFieldClass;
  LFieldItem: TField;
begin
  for n := 0 to FGrid.Columns.Count - 1 do
    begin
      if Not(FGrid.Columns.Items[n].Field.Calculated) then
        // ( FGrid.Columns.Items[n].Field.Lookup )) then

        if Not(FGrid.Columns.Items[n].Field.Lookup) then
          begin
            NField  := FGrid.Columns.Items[n].FieldName;
            LIndex  := FGrid.DataSource.DataSet.FieldByName(NField).Index;
            LName   := FGrid.DataSource.DataSet.Fields[LIndex].DisplayName;
            LWidth  := FGrid.DataSource.DataSet.Fields[LIndex].DisplayWidth;
            LField  := FGrid.DataSource.DataSet.FieldDefs[LIndex].FieldClass;
            NNField := NField;
            Delete(NField, Pos('.', NField), 1);
            CreateEdit(Self, NField, LName, LWidth, LField, NNField);
          end
        else
          begin
            NField     := FGrid.Columns.Items[n].FieldName;
            LIndex     := FGrid.DataSource.DataSet.FieldByName(NField).Index;
            LName      := FGrid.DataSource.DataSet.Fields[LIndex].DisplayName;
            LWidth     := FGrid.DataSource.DataSet.Fields[LIndex].DisplayWidth;
            LField     := FGrid.DataSource.DataSet.FieldDefs[LIndex].FieldClass;
            LFieldItem := FGrid.DataSource.DataSet.FieldByName(NField);
            NNField    := NField;
            Delete(NField, Pos('.', NField), 1);
            CreateLCB(Self, NField, LName, LWidth, LField, NNField, LFieldItem);
          end;
    end
end;

function TfrmSearch.CreateLCB(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String; Field: TField): TComponent;
var
  LEdit: TDBLookUpComboBox;
  LLabel: TLabel;
  DSet, DSet1: TDataSource;
  LeoName: String;
  x: Integer;
begin
  CurTop        := CurTop + 20;
  LEdit         := TDBLookUpComboBox.Create(Self);
  LEdit.Name    := 'LCB' + Name;
  LEdit.Parent  := Owner;
  LEdit.Top     := CurTop;
  LEdit.Left    := 150;
  LEdit.Width   := 80;
  LEdit.Visible := True;
  LeoName       := TStringField(Field).LookupDataSet.Name;
  LeoName       := 'ds' + LeoName;
  LEdit.Hint    := TStringField(Field).KeyFields;

  for x := 0 to PDM.ComponentCount - 1 do
    begin
      if PDM.Components[x].Name = LeoName then
        begin
          LEdit.ListSource := TDataSource(PDM.Components[x]);
          // TDataSource(PDM.Components[x]).DataSet.Active:=True;
        end
    end;

  LEdit.ListField := TStringField(Field).LookupResultField;
  LEdit.KeyField  := TStringField(Field).LookupKeyFields;

  LLabel         := TLabel.Create(Owner);
  LLabel.Name    := 'L' + Name;
  LLabel.Parent  := Owner;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
  Self.Height    := CurTop + 120;
end;

function TfrmSearch.CreateEdit(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
var
  LEdit: TEdit;
  LLabel: TLabel;
begin
  CurTop       := CurTop + 20;
  LEdit        := TEdit.Create(Self);
  LEdit.Name   := 'Edt' + Name;
  LEdit.Hint   := NNField;
  LEdit.Parent := Owner;
  LEdit.Top    := CurTop;
  LEdit.Left   := 150;
  if Width * 10 + 10 + 150 > Self.Width then
    LEdit.Width := Self.Width - 150 - 10
  else
    LEdit.Width := Width * 10 + 10;
  LEdit.Visible := True;
  LEdit.Text    := '';
  if LField = TDateTimeField then
    LEdit.OnDblClick := EditDateEnter;
  LLabel             := TLabel.Create(Owner);
  LLabel.Name        := 'L' + Name;
  LLabel.Parent      := Owner;
  LLabel.Caption     := LName;
  LLabel.Top         := CurTop;
  LLabel.Left        := 10;
  LLabel.Width       := 130;
  Self.Height        := CurTop + 120;
end;

procedure TfrmSearch.EditDateEnter(Sender: TObject);
var
  TmpDate: TDateTime;
begin
  if FormDate(Self, TmpDate, csDateTime) = mrOk then
    TEdit(Sender).Text := datetostr(TmpDate)
  else
    TEdit(Sender).Text := ' ';
end;

procedure TfrmSearch.FormCreate(Sender: TObject);
begin
  FillCombo;
  // Label4.Caption:=FGrid.DataSource.DataSet.Filter;
end;

procedure TfrmSearch.BitBtn1Click(Sender: TObject);
var
  i, ii: Integer;
  KSleo: String;
  FVLeo: array [0 .. 50] of String;
  VLeo, VLeo1: Variant;
begin
  ii    := 0;
  VLeo  := VarArrayCreate([0, 40], varOleStr);
  for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TEdit then
        begin
          if TEdit(Components[i]).Text > ' ' then
            begin
              if ii > 0 then
                KSleo := KSleo + ';';
              // KSLeo:=KSLeo + TEdit(Components[i]).Name;
              KSleo    := KSleo + TEdit(Components[i]).Hint;
              VLeo[ii] := TEdit(Components[i]).Text;
              inc(ii);
            end
        end
      else if Components[i] is TDBLookUpComboBox then
        begin
          if (TDBLookUpComboBox(Components[i]).KeyValue > 0) then
            begin
              if ii > 0 then
                KSleo := KSleo + ';';
              // KSLeo:=KSLeo + TEdit(Components[i]).Name;
              KSleo    := KSleo + TDBLookUpComboBox(Components[i]).Hint;
              VLeo[ii] := TDBLookUpComboBox(Components[i]).KeyValue;
              inc(ii);
            end;
        end;
    end;

  if ii > 1 then
    VarArrayRedim(VLeo, (ii - 1));
  // else
  // VarArrayRedim(VLeo,(ii-1));

  VLeo1 := VLeo[0];

  if ii = 1 then
    if Not(FGrid.DataSource.DataSet.Locate(KSleo, VLeo1, [loPartialKey])) then
      MessageDlg('Δεν βρέθηκα Εγγραφή .', mtInformation, [mbOk], 0)
    else
      Self.ModalResult := mrOk
  else if Not(FGrid.DataSource.DataSet.Locate(KSleo, VLeo, [loPartialKey])) then
    MessageDlg('Δεν βρέθηκα Εγγραφή .', mtInformation, [mbOk], 0)
  else
    Self.ModalResult := mrOk
end;

end.
