unit FSearchDev2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DBase,
  Grids, DBGrids, Stdctrls, Buttons, DB, dbTables, dbctrls, Globals, DMain, Variants,
  ADODB, Common,
  cxGraphics, cxControls, cxGrid,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView;

type
  TfrmSearchDev2 = class(TForm)
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditDateEnter(Sender: TObject);
  private
    PDM: TDMBASE;
    CurTop: Integer;
    FGrid: TcxGridDBTableView;
    FieldNam: String;
    FieldVal: String;
    WithFP: Boolean;
    procedure FillCombo;
    function CreateEdit(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
    function CreateLCB(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String; Field: TField): TComponent;
  public
    // function AutoSearch(FTableName,FName,FValue:String):Integer;
    function AutoSearch(FTableName, FName: String; var FValue: String; FKeyField: String = 'id'): Integer;
    constructor CreateWithParam(aowner: TComponent; Grid: TcxGridDBTableView; DM: TDataModule);
    constructor CreateWithParamVal(aowner: TComponent; FTableName, FName, FValue: String);
  end;

implementation

uses FSubParams, FLupOnom;

{$R *.DFM}

constructor TfrmSearchDev2.CreateWithParam(aowner: TComponent; Grid: TcxGridDBTableView; DM: TDataModule);
begin
  FGrid  := Grid;
  WithFP := False;
  inherited Create(aowner);
  PDM := TDMBASE(DM);
end;

constructor TfrmSearchDev2.CreateWithParamVal(aowner: TComponent; FTableName, FName, FValue: String);
begin
  FieldNam := FName;
  FieldVal := FValue;
  WithFP   := True;
  inherited Create(aowner);

end;

procedure TfrmSearchDev2.FillCombo;
var
  n, LWidth, LIndex: Integer;
  NField, NNField, LName: String;
  LField: TFieldClass;
  LFieldItem: TField;
  DataS: TDataSet;
begin
  DataS := FGrid.DataController.Datasource.Dataset;

  for n := 0 to FGrid.ColumnCount - 1 do
    begin
      if Not(FGrid.Columns[n].DataBinding.Field.Calculated) then
        if Not(FGrid.Columns[n].DataBinding.Field.Lookup) then
          begin
            NField := FGrid.Columns[n].DataBinding.FieldName;
            LIndex := DataS.FieldByName(NField).Index;
            LName  := DataS.Fields[LIndex].DisplayName;
            LWidth := DataS.Fields[LIndex].DisplayWidth;
            // LField:= FGrid.DataSource.DataSet.FieldDefs[LIndex].FieldClass;
            NNField := NField;
            Delete(NField, Pos('.', NField), 1);
            CreateEdit(Self, NField, LName, LWidth, LField, NNField);
          end
        else
          begin
            NField := FGrid.Columns[n].DataBinding.FieldName;
            LIndex := DataS.FieldByName(NField).Index;
            LName  := DataS.Fields[LIndex].DisplayName;
            LWidth := DataS.Fields[LIndex].DisplayWidth;
            // LField:= FGrid.DataSource.DataSet.FieldDefs[LIndex].FieldClass;
            LFieldItem := DataS.FieldByName(NField);
            NNField    := NField;
            Delete(NField, Pos('.', NField), 1);
            CreateLCB(Self, NField, LName, LWidth, LField, NNField, LFieldItem);
          end;
    end
end;

function TfrmSearchDev2.CreateLCB(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String; Field: TField): TComponent;
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

function TfrmSearchDev2.CreateEdit(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String): TComponent;
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

  if WithFP then
    if FieldNam = Name then
      LEdit.Text := FieldVal;
end;

procedure TfrmSearchDev2.EditDateEnter(Sender: TObject);
var
  TmpDate: TDateTime;
begin
  if FormDate(Self, TmpDate, csDateTime) = mrOk then
    TEdit(Sender).Text := datetostr(TmpDate)
  else
    TEdit(Sender).Text := ' ';
end;

procedure TfrmSearchDev2.FormCreate(Sender: TObject);
begin
  if Not(FGrid = Nil) then
    FillCombo;
end;

procedure TfrmSearchDev2.BitBtn1Click(Sender: TObject);
var
  a, b: String;
  i, ii, iii: Integer;
  KSleo, TblName, SelFields: String;
  FormID: Integer;
  vi: Variant;
  vf: Boolean;
  frmlup: TfrmLupOnom;
  Lsl: TStringList;
begin
  a  := chr(39);
  ii := 0;

  for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TEdit then
        begin
          if TEdit(Components[i]).Text > ' ' then
            begin
              if ii > 0 then
                KSleo := KSleo + ' AND ';
              KSleo   := KSleo + TEdit(Components[i]).Hint + ' Like(' + a + TEdit(Components[i]).Text + '%' + a + ')';
              inc(ii);
            end
        end
      else if Components[i] is TDBLookUpComboBox then
        begin
          if (TDBLookUpComboBox(Components[i]).KeyValue > 0) then
            begin
              if ii > 0 then
                KSleo := KSleo + ' AND ';
              KSleo   := KSleo + TDBLookUpComboBox(Components[i]).Hint + ' = ' + IntToStr(TDBLookUpComboBox(Components[i]).KeyValue);
              inc(ii);
            end;
        end;
    end;

  DMMain.FindSecurity('TfrmLupOnom', LoginGroup, FormID);
  frmlup := TfrmLupOnom.CreateSecurity(Self, FormID);
  try
    frmlup.ADOQuery1.Active := False;

    if FGrid.DataController.Datasource.Dataset is TAdoTable then
      TblName := TAdoTable(FGrid.DataController.Datasource.Dataset).TableName;
    if FGrid.DataController.Datasource.Dataset is TADOQuery then
      begin
        iii := Pos('From ', TADOQuery(FGrid.DataController.Datasource.Dataset).SQL.Text);
        if iii > 0 then
          iii   := iii + 5;
        TblName := Copy(TADOQuery(FGrid.DataController.Datasource.Dataset).SQL.Text, iii, Length(TADOQuery(FGrid.DataController.Datasource.Dataset).SQL.Text) - iii);
      end;

    DMMain.stTabFieldsSearch.Active := False;
    DMMain.stTabFieldsSearch.Parameters.ParamByName('@TabName').Value := TblName;
    DMMain.stTabFieldsSearch.Active := True;

    SelFields := '';
    Lsl       := TStringList.Create;

    if Not DMMain.stTabFieldsSearch.IsEmpty then
      repeat
        SelFields := SelFields + DMMain.stTabFieldsSearchField_Name.AsString;
        Lsl.Add(DMMain.stTabFieldsSearchField_Name.AsString);
        DMMain.stTabFieldsSearch.Next;
        if Not DMMain.stTabFieldsSearch.Eof then
          SelFields := SelFields + ',';
      until DMMain.stTabFieldsSearch.Eof
    else
      SelFields := '*';

    frmlup.ADOQuery1.SQL.Add('Select ' + SelFields + ' From ' + TblName);
    if ii > 0 then
      begin
        frmlup.ADOQuery1.SQL.Add('Where ');
        frmlup.ADOQuery1.SQL.Add(KSleo);
      end;
    frmlup.ADOQuery1.Active                    := True;
    frmlup.ADOQuery1.FieldByName('id').Visible := False;
    if frmlup.ADOQuery1.RecordCount = 0 then
      begin
        MessageDlg('Δεν υπάρχει καταχώρηση με αυτά τα κριτήρια.', mtInformation, [mbOK], 0);
      end;
    if frmlup.ADOQuery1.RecordCount = 1 then
      begin
        vi := frmlup.ADOQuery1.FieldByName('Id').Value;
        FGrid.DataController.Datasource.Dataset.Locate('id', vi, [loPartialKey]);
      end;
    if frmlup.ADOQuery1.RecordCount > 1 then
      begin
        frmlup.ShowModal;
        if frmlup.ModalResult = mrOk then
          begin
            vi := frmlup.ADOQuery1.FieldByName('Id').Value;
            vf := FGrid.DataController.Datasource.Dataset.Locate('Id', vi, []);
            // Not Implemented cause of Filter Thing
            if Not vf then
              MessageDlg('Not in active Record Set', mtInformation, [mbOK], 0);
          end;
      end;
  finally
    DMMain.UpdSecurity('TfrmLupOnom');
    frmlup.free;
    Self.Close;
  end;
end;

function TfrmSearchDev2.AutoSearch(FTableName, FName: String; var FValue: String; FKeyField: String = 'id'): Integer;
var
  a, b: String;
  i, ii: Integer;
  KSleo, TblName, SelFields: String;
  FormID: Integer;
  vi: Variant;
  vf: Boolean;
  frmlup: TfrmLupOnom;
  Lsl: TStringList;
begin
  a     := chr(39);
  KSleo := KSleo + FName + ' Like(' + a + FValue + '%' + a + ')';

  DMMain.FindSecurity('TfrmLupOnom', LoginGroup, FormID);
  frmlup := TfrmLupOnom.CreateSecurity(Self, FormID);
  try
    frmlup.ADOQuery1.Active := False;

    { TODO -cCheck : Check V3 }

    DMMain.stTabFieldsSearch.Active := False;
    DMMain.stTabFieldsSearch.Parameters.ParamByName('@TabName').Value := FTableName;
    DMMain.stTabFieldsSearch.Active := True;

    SelFields := '';
    Lsl       := TStringList.Create;

    if Not DMMain.stTabFieldsSearch.IsEmpty then
      repeat
        SelFields := SelFields + DMMain.stTabFieldsSearchField_Name.AsString;
        Lsl.Add(DMMain.stTabFieldsSearchField_Name.AsString);
        DMMain.stTabFieldsSearch.Next;
        if Not DMMain.stTabFieldsSearch.Eof then
          SelFields := SelFields + ',';
      until DMMain.stTabFieldsSearch.Eof
    else
      SelFields := '*';

    frmlup.ADOQuery1.SQL.Add('SELECT ' + SelFields + ' FROM ' + FTableName);
    // if ii > 0 then
    begin
      frmlup.ADOQuery1.SQL.Add('Where ');
      frmlup.ADOQuery1.SQL.Add(KSleo);
    end;
    frmlup.ADOQuery1.Active := True;
    // frmlup.ADOQuery1.FieldByName(FKeyField).Visible := False;
    if frmlup.ADOQuery1.RecordCount = 0 then
      begin
        MessageDlg('Δεν υπάρχει καταχώρηση με αυτά τα κριτήρια.', mtInformation, [mbOK], 0);
      end;
    if frmlup.ADOQuery1.RecordCount = 1 then
      begin
        FValue := frmlup.ADOQuery1.FieldByName(FName).Value;
        Result := frmlup.ADOQuery1.FieldByName(FKeyField).Value;
      end;
    if frmlup.ADOQuery1.RecordCount > 1 then
      begin
        frmlup.ShowModal;
        if frmlup.ModalResult = mrOk then
          begin
            FValue := frmlup.ADOQuery1.FieldByName(FName).Value;
            Result := frmlup.ADOQuery1.FieldByName(FKeyField).Value;
          end;
      end;
  finally
    DMMain.UpdSecurity('TfrmLupOnom');
    frmlup.free;
    Self.Close;
  end;
end;

{ procedure TfrmSearchDev2.BitBtn1Click(Sender: TObject);
  var i,ii:Integer;
  KSleo :String;
  FVLeo : array [0..50] of String;
  VLeo,VLeo1  : Variant;
  begin
  ii:=0;
  VLeo:=VarArrayCreate([0,40],varOleStr);
  for i:= 0 to ComponentCount -1 do
  begin
  if Components[i] is TEdit then
  begin
  if TEdit(Components[i]).Text > ' ' then
  begin
  if ii > 0 then
  KSLeo:=KSLeo + ';';
  //         KSLeo:=KSLeo + TEdit(Components[i]).Name;
  KSLeo:=KSLeo + TEdit(Components[i]).Hint;
  VLeo[ii]:= TEdit(Components[i]).Text;
  inc(ii);
  end
  end
  else
  if Components[i] is TDBLookupComboBox then
  begin
  if (TDBLookupComboBox(Components[i]).KeyValue > 0) then
  begin
  if ii > 0 then
  KSLeo:=KSLeo + ';';
  //         KSLeo:=KSLeo + TEdit(Components[i]).Name;
  KSLeo:=KSLeo + TDBLookupComboBox(Components[i]).Hint;
  VLeo[ii]:= TDBLookupComboBox(Components[i]).KeyValue;
  inc(ii);
  end;
  end;
  end;

  if ii > 1 then
  VarArrayRedim(VLeo,(ii-1));
  //else
  //VarArrayRedim(VLeo,(ii-1));


  VLeo1:=VLeo[0];

  if ii = 1 then
  if Not(FGrid.DataSource.DataSet.Locate(KSLeo,VLeo1,[loPartialKey])) then
  MessageDlg('Δεν βρέθηκα Εγγραφή .', mtInformation,[mbOk], 0)
  else
  self.ModalResult:=mrOk
  else
  if Not(FGrid.DataSource.DataSet.Locate(KSLeo,VLeo,[loPartialKey])) then
  MessageDlg('Δεν βρέθηκα Εγγραφή .', mtInformation,[mbOk], 0)
  else
  self.ModalResult:=mrOk
  end; }

end.
