unit FFilterEn2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBGrids, DB, DBCtrls, DBase, DMain, Globals, Globals0,
  SQLMemMain, GridsEh, DBGridEh, Common;

type
  TfrmFilterEn2 = class(TForm)
    btnAccept: TBitBtn;
    SQLMemTable1: TSQLMemTable;
    DataSource99: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnAcceptClick(Sender: TObject);
    procedure GeneralEditExit(Sender: TObject);
    procedure GeneralDBLookupComboBoxExit(Sender: TObject);
  private
    PDM: TDMBASE;
    CurTop: Integer;
    FGrid: TDBGridEh;
    CreateTable: Boolean;
    procedure FillCombo;
    function CreateEdit(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
    function CreateLCB(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String; Field: TField): TComponent;
    procedure EditDateEnter(Sender: TObject);
    function SearchComp(Name: String): TComponent;
    function SearchField(Name: String): Variant;
    procedure ButtonCopyClick(Sender: TObject);
    procedure UpdateField(Name: String; NewVal: Integer);
    function SearchFieldInt(Name: String): Integer;
  public
    KSleo: String;
    constructor CreateWithParam(aowner: TComponent; grid: TDBGridEh; DM: TDataModule);
  end;

implementation

{$R *.dfm}

constructor TfrmFilterEn2.CreateWithParam(aowner: TComponent; grid: TDBGridEh; DM: TDataModule);
begin
  FGrid := grid;
  inherited Create(aowner);
  PDM         := TDMBASE(DM);
  CreateTable := False;
end;

function TfrmFilterEn2.CreateEdit(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
var
  LEdit, LEdit1: TEdit;
  LLabel: TLabel;
  LBut: TButton;
begin
  CurTop       := CurTop + 20;
  LEdit        := TEdit.Create(Self);
  LEdit.Name   := 'EdtF' + Name;
  LEdit.Hint   := NNField;
  LEdit.Parent := Owner;
  LEdit.Top    := CurTop;
  LEdit.Left   := 150;
  LEdit.Tag    := 1;
  if Width > 200 then
    LEdit.Width := 190
  else
    LEdit.Width := Width;

  LEdit.Visible := True;
  LEdit.Text    := '';
  LEdit.OnExit  := GeneralEditExit;

  if LField = TDateTimeField then
    LEdit.OnDblClick := EditDateEnter;

  LEdit1        := TEdit.Create(Self);
  LEdit1.Name   := 'EdtT' + Name;
  LEdit1.Hint   := NNField;
  LEdit1.Parent := Owner;
  LEdit1.Top    := CurTop;
  LEdit1.Left   := 370;
  LEdit1.Tag    := 2;
  if Width > 200 then
    LEdit1.Width := 190
  else
    LEdit1.Width := Width;

  LEdit1.Visible := True;
  LEdit1.Text    := '';
  LEdit1.OnExit  := GeneralEditExit;

  if LField = TDateTimeField then
    LEdit1.OnDblClick := EditDateEnter;

  LLabel         := TLabel.Create(Owner);
  LLabel.Name    := 'L' + Name;
  LLabel.Parent  := Owner;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
  Self.Height    := CurTop + 120;

  LBut         := TButton.Create(Self);
  LBut.Name    := 'B' + Name;
  LBut.Name    := Name;
  LBut.Hint    := NNField;
  LBut.Parent  := Owner;
  LBut.Top     := CurTop;
  LBut.Left    := 350;
  LBut.Width   := 20;
  LBut.Caption := '->';
  LBut.Tag     := 10;
  LBut.OnClick := ButtonCopyClick;

end;

function TfrmFilterEn2.CreateLCB(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String; Field: TField): TComponent;
var
  LEdit, LEdit1: TDBLookUpComboBox;
  LLabel: TLabel;
  LBut: TButton;
  DSet, DSet1: TDataSource;
  LeoName, FldName: String;
  x: Integer;
begin
  CurTop       := CurTop + 20;
  LEdit        := TDBLookUpComboBox.Create(Self);
  LEdit.Name   := 'LCBF' + Name;
  LEdit.Parent := Owner;
  LEdit.Top    := CurTop;
  LEdit.Left   := 150;
  LEdit.Width  := Width;
  if Width > 200 then
    LEdit.Width := 190
  else
    LEdit.Width := Width;
  LEdit.Visible := True;
  LEdit.Tag     := 1;
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
  LEdit.ListField := TStringField(Field).LookupResultField;
  LEdit.KeyField  := TStringField(Field).LookupKeyFields;
  LEdit.OnExit    := GeneralDBLookupComboBoxExit;

  FldName := 'ds0' + LEdit.Name;
  SQLMemTable1.FieldDefs.Add('ds0' + LEdit.Name, ftInteger, 0, False);
  LEdit.DataField  := 'ds0' + LEdit.Name;
  LEdit.DataSource := DataSource99;

  LEdit1        := TDBLookUpComboBox.Create(Self);
  LEdit1.Name   := 'LCBT' + Name;
  LEdit1.Parent := Owner;
  LEdit1.Top    := CurTop;
  LEdit1.Left   := 370;
  if Width > 200 then
    LEdit1.Width := 190
  else
    LEdit1.Width := Width;
  LEdit1.Visible := True;
  LEdit1.Tag     := 2;
  LeoName        := TStringField(Field).LookupDataSet.Name;
  LeoName        := 'ds' + LeoName;
  LEdit1.Hint    := TStringField(Field).KeyFields;
  for x          := 0 to PDM.ComponentCount - 1 do
    begin
      if PDM.Components[x].Name = LeoName then
        begin
          LEdit1.ListSource := TDataSource(PDM.Components[x]);
        end
    end;
  LEdit1.ListField := TStringField(Field).LookupResultField;
  LEdit1.KeyField  := TStringField(Field).LookupKeyFields;
  LEdit1.OnExit    := GeneralDBLookupComboBoxExit;

  FldName := 'ds0' + LEdit1.Name;
  SQLMemTable1.FieldDefs.Add(FldName, ftInteger, 0, False);
  LEdit1.DataField  := 'ds0' + LEdit1.Name;
  LEdit1.DataSource := DataSource99;

  LLabel         := TLabel.Create(Owner);
  LLabel.Name    := 'L' + Name;
  LLabel.Parent  := Owner;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
  Self.Height    := CurTop + 120;

  LBut         := TButton.Create(Self);
  LBut.Name    := 'B' + Name;
  LBut.Name    := Name;
  LBut.Hint    := NNField;
  LBut.Parent  := Owner;
  LBut.Top     := CurTop;
  LBut.Left    := 350;
  LBut.Width   := 20;
  LBut.Caption := '->';
  LBut.Tag     := 90;
  LBut.OnClick := ButtonCopyClick;

  CreateTable := True;
end;

procedure TfrmFilterEn2.FillCombo;
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
    end
end;

procedure TfrmFilterEn2.FormCreate(Sender: TObject);
begin
  FillCombo;
  if CreateTable then
    begin
      SQLMemTable1.CreateTable;
      SQLMemTable1.Active := True;
      SQLMemTable1.Insert;
    end;
end;

procedure TfrmFilterEn2.btnAcceptClick(Sender: TObject);
var
  i, ii, Val1, Val2: Integer;
  Leo: TComponent;
begin
  ii    := 0;
  for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TEdit then
        begin
          if TEdit(Components[i]).Text > ' ' then
            begin
              if Assigned(TEdit(Components[i]).OnDblClick) then
                begin
                  if ii > 0 then
                    KSleo := KSleo + ' AND ';
                  KSleo   := KSleo + TEdit(Components[i]).Hint;
                  if TEdit(Components[i]).Tag = 1 then
                    KSleo := KSleo + ' >= ' + QuotedStr(datetostr(strtodate(TEdit(Components[i]).Text)))
                  else
                    KSleo := KSleo + ' <= ' + QuotedStr(datetostr(strtodate(TEdit(Components[i]).Text)));
                end
              else
                begin
                  if ii > 0 then
                    KSleo := KSleo + ' AND ';
                  KSleo   := KSleo + TEdit(Components[i]).Hint;
                  if TEdit(Components[i]).Tag = 1 then
                    KSleo := KSleo + ' >= ' + QuotedStr(TEdit(Components[i]).Text)
                  else
                    KSleo := KSleo + ' <= ' + QuotedStr(TEdit(Components[i]).Text);
                end;

              inc(ii);
            end
        end
      else if Components[i] is TDBLookUpComboBox then
        begin
          if (TDBLookUpComboBox(Components[i]).KeyValue > 0) then
            begin
              if ii > 0 then
                KSleo := KSleo + ' AND ';
              KSleo   := KSleo + TDBLookUpComboBox(Components[i]).Hint;
              if TDBLookUpComboBox(Components[i]).Tag = 1 then
                begin
                  Val1 := SearchField('ds0' + Components[i].Name);
                  // Val1:=TDBLookUpComboBox(Components[i]).KeyValue;
                  KSleo := KSleo + ' >= ' + inttostr(Val1);
                end
              else
                begin
                  Val2 := SearchField('ds0' + Components[i].Name);
                  // Val2:=TDBLookUpComboBox(Components[i]).KeyValue;
                  KSleo := KSleo + ' <= ' + inttostr(Val2);
                end;
              inc(ii);
            end;
        end;
    end;
end;

function TfrmFilterEn2.SearchComp(Name: String): TComponent;
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

function TfrmFilterEn2.SearchField(Name: String): Variant;
var
  v: Variant;
  Lt: TField;
begin
  Lt     := SQLMemTable1.FieldByName(Name);
  result := Lt.Value
end;

function TfrmFilterEn2.SearchFieldInt(Name: String): Integer;
var
  Lt: TField;
begin
  Lt     := SQLMemTable1.FieldByName(Name);
  result := Lt.AsInteger;
end;

procedure TfrmFilterEn2.UpdateField(Name: String; NewVal: Integer);
var
  i: Integer;
  Lt: TField;
begin
  Lt := SQLMemTable1.FieldByName(Name);
  try
    Lt.Value := NewVal
  except
    MessageDlg('Error In Field Update', mtWarning, [mbOK], 0);
  end;
end;

procedure TfrmFilterEn2.GeneralEditExit(Sender: TObject);
var
  i: Integer;
  OtherName: String;
  ValFrom, ValTo: Variant;
  Leo: TComponent;
begin
  if Sender is TEdit then
    With Sender as TEdit do
      begin
        OtherName := Name;
        if Tag = 1 then
          begin
            OtherName[4] := 'T';
            ValFrom      := Text;
            Leo          := SearchComp(OtherName);
            ValTo        := TEdit(Leo).Text;
          end
        else
          begin
            OtherName[4] := 'F';
            ValTo        := Text;
            Leo          := SearchComp(OtherName);
            ValFrom      := TEdit(Leo).Text;
          end
      end;

  if ((ValFrom > '') and (ValTo > '')) then
    if AnsiCompareStr(ValFrom, ValTo) > 0 then
      begin
        TEdit(Leo).Color    := clRed;
        TEdit(Sender).Color := clRed;
      end
    else
      begin
        TEdit(Leo).Color    := clWindow;
        TEdit(Sender).Color := clWindow;
      end
end;

procedure TfrmFilterEn2.EditDateEnter(Sender: TObject);
var
  TmpDate: TDateTime;
begin
  TmpDate := now();
  if FormDate(Self, TmpDate, csDateTime) = mrOk then
    TEdit(Sender).Text := datetostr(TmpDate)
  else
    TEdit(Sender).Text := '';
end;

procedure TfrmFilterEn2.GeneralDBLookupComboBoxExit(Sender: TObject);
var
  i, Val1, Val2: Integer;
  OtherName: String;
  ValFrom, ValTo: Variant;
  Leo: TComponent;
begin
  if Sender is TDBLookUpComboBox then
    With Sender as TDBLookUpComboBox do
      begin
        OtherName := Name;
        if Tag = 1 then
          begin
            OtherName[4] := 'T';
            try
              Val1    := KeyValue;
              ValFrom := Val1;
            except
              ValFrom := -1;
            end;
            Leo := SearchComp(OtherName);
            try
              Val2  := TDBLookUpComboBox(Leo).KeyValue;
              ValTo := Val2;
            except
              ValTo := -1;
            end;
          end
        else
          begin
            OtherName[4] := 'F';
            try
              Val1  := KeyValue;
              ValTo := Val1;
            except
              ValTo := -1;
            end;
            Leo := SearchComp(OtherName);
            try
              Val2    := TDBLookUpComboBox(Leo).KeyValue;
              ValFrom := Val2;
            except
              ValFrom := -1;
            end;
          end
      end;

  if ((ValFrom > -1) and (ValTo > -1)) then
    if ValFrom > ValTo then
      begin
        TDBLookUpComboBox(Leo).Color    := clRed;
        TDBLookUpComboBox(Sender).Color := clRed;
      end
    else
      begin
        TDBLookUpComboBox(Leo).Color    := clWindow;
        TDBLookUpComboBox(Sender).Color := clWindow;
      end
end;

procedure TfrmFilterEn2.ButtonCopyClick(Sender: TObject);
var
  ValFromi, ValToi, i: Integer;
  OtherName, ONaF, ONaT: String;
  ValFrom, ValTo: Variant;
  LeoF, LeoT: TComponent;
begin
  OtherName := TButton(Sender).Name;
  if TButton(Sender).Tag = 10 then
    begin
      ONaF    := 'EdtF' + OtherName;
      ONaT    := 'EdtT' + OtherName;
      LeoF    := SearchComp(ONaF);
      LeoT    := SearchComp(ONaT);
      ValFrom := TEdit(LeoF).Text;
      ValTo   := TEdit(LeoT).Text;
      if ((ValFrom > '') XOR (ValTo > '')) then
        begin
          if ValFrom > '' then
            TEdit(LeoT).Text := ValFrom;
          if ValTo > '' then
            TEdit(LeoF).Text := ValTo;
        end;
    end;

  if TButton(Sender).Tag = 90 then
    begin
      ONaF := 'ds0LCBF' + OtherName;
      ONaT := 'ds0LCBT' + OtherName;
      try
        ValFromi := SearchFieldInt(ONaF);
      except
        ValFromi := 0;
      end;
      try
        ValToi := SearchFieldInt(ONaT);
      except
        ValToi := 0;
      end;
      if ((ValFromi > 0) XOR (ValToi > 0)) then
        begin
          if ValFromi > 0 then
            UpdateField(ONaT, ValFromi);
          if ValToi > 0 then
            UpdateField(ONaF, ValToi);
        end;
    end;
end;

end.
