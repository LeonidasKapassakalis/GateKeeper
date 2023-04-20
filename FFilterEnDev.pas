unit FFilterEnDev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBGrids, DB, DBCtrls, DBase, DMain, Globals,
  CheckLst, SQLMemMain, Vcl.Menus, Vcl.ComCtrls, Vcl.ExtCtrls,
  Common, UserDialog, System.AnsiStrings,
  cxGrid,cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView;

type
  TfrmFilterEnDev = class(TForm)
    SQLMemTable1: TSQLMemTable;
    DataSource99: TDataSource;
    PopChLstBox: TPopupMenu;
    ClbAll: TMenuItem;
    ClbNone: TMenuItem;
    PageControl: TPageControl;
    TabShMain: TTabSheet;
    btnAccept: TBitBtn;
    N4561: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure btnAcceptClick(Sender: TObject);
    procedure GeneralEditExit(Sender: TObject);
    procedure GeneralDBLookupComboBoxExit(Sender: TObject);
    procedure ClbAllClick(Sender: TObject);
    procedure ClbNoneClick(Sender: TObject);
    procedure N4561Click(Sender: TObject);
  private
    PDM: TDMBASE;
    CurTop: Integer;
    FGrid: TcxGridDBTableView;
    CreateTable: Boolean;
    GHonorRequired:Boolean;

    procedure FillComboDev;
    procedure FillComboQuery;

    function CreateEdit(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String;LNField:TField): TComponent;

    function CreateBool(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String;LNField:TField): TComponent;
    function CreateDateTime(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String;LNField:TField): TComponent;

    function CreateLCB(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String; Field: TField): TComponent;
    function CreateLCB0(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String; Field: TField): TComponent;

    procedure EditDateEnter(Sender: TObject);
    function SearchComp(Name: String): TComponent;
    function SearchField(Name: String): Variant;
    procedure ButtonCopyClick(Sender: TObject);
    procedure Button2CopyClick(Sender: TObject);
    procedure CheckListBoxExit(Sender: TObject);
    procedure UpdateField(Name: String; NewVal: Integer);
    function SearchFieldInt(Name: String): Integer;
  public
    KSleo: String;
    LocFs: TFormatSettings;
    constructor CreateWithParam(aowner: TComponent; Grid: TcxGridDBTableView; DM: TDataModule; HonorRequired:Boolean = False;CaptionName:string='Φίλτρο');
  end;

implementation

{$R *.dfm}

constructor TfrmFilterEnDev.CreateWithParam(aowner: TComponent; Grid: TcxGridDBTableView; DM: TDataModule; HonorRequired:Boolean = False;CaptionName:string='Φίλτρο');
begin
  FGrid := Grid;
  GHonorRequired:=HonorRequired;
  inherited Create(aowner);
  Self.Caption:=CaptionName;
  PDM         := TDMBASE(DM);
  CreateTable := False;

  FillComboDev;
  if CreateTable then
    begin
      SQLMemTable1.CreateTable;
      SQLMemTable1.Active := True;
      SQLMemTable1.Insert;
    end;
end;

function TfrmFilterEnDev.CreateEdit(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String;LNField:TField): TComponent;
var
  LEdit, LEdit1: TEdit;
  LLabel: TLabel;
  LBut: TButton;
begin
  if ((GHonorRequired=True) And (LNField.Required=False)) then
    exit;

  if LField = TBooleanField then
  begin
    Result:=CreateBool(Owner,Name,LName,Width,LField,NNField,LNField);
    exit;
  end;

  if LField = TDateTimeField then
  begin
    Result:=CreateDateTime(Owner,Name,LName,Width,LField,NNField,LNField);
    exit;
  end;



  CurTop       := CurTop + 22;
  LEdit        := TEdit.Create(Self);
  LEdit.Name   := 'EdtF' + Name;
  LEdit.Hint   := NNField;
  LEdit.Parent := Owner;
  LEdit.Parent := TabShMain;
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
  LEdit1.Parent := TabShMain;
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
  LLabel.Name    := 'Lab' + Name;
  LLabel.Parent  := Owner;
  LLabel.Parent  := TabShMain;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
  Self.Height    := CurTop + 120;

  LBut         := TButton.Create(Self);
  LBut.Name    := 'But' + Name;
  LBut.Name    := Name;
  LBut.Hint    := NNField;
  LBut.Parent  := Owner;
  LBut.Parent  := TabShMain;
  LBut.Top     := CurTop;
  LBut.Left    := 350;
  LBut.Width   := 20;
  LBut.Caption := '->';
  LBut.Tag     := 10;
  LBut.OnClick := ButtonCopyClick;

  if (LField = TIntegerField) Or (LField = TFloatField) or (LField = TBCDField) then
  begin
       LEdit.NumbersOnly     :=True;
       LEdit1.NumbersOnly    :=True;
  end;
end;

function TfrmFilterEnDev.CreateLCB(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String; Field: TField): TComponent;
var
  LEdit, LEdit1: TDBLookUpComboBox;
  LLabel: TLabel;
  LBut, LBut2: TButton;
  DSet, DSet1: TDataSource;
  LChlb: TCheckListBox;
  LTab: TTabSheet;
  LeoName, FldName: String;
  x: Integer;
begin
//  if ((GHonorRequired=True) And (LNField.Required=False)) then
//     Exit;

  CurTop       := CurTop + 22;
  LEdit        := TDBLookUpComboBox.Create(Self);
  LEdit.Name   := 'LCBF' + Name;
  LEdit.Parent := Owner;
  LEdit.Parent := TabShMain;
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
  LEdit1.Parent := TabShMain;
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
  LLabel.Parent  := TabShMain;
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
  LBut.Parent  := TabShMain;
  LBut.Top     := CurTop;
  LBut.Left    := 350;
  LBut.Width   := 20;
  LBut.Caption := '->';
  LBut.Tag     := 90;
  LBut.OnClick := ButtonCopyClick;

  // LBut2 := TButton.Create(Self);
  // LBut2.Name := 'B2' + Name;
  // LBut2.Hint := 'Chib' + Name;
  // LBut2.Parent := Owner;
  // LBut2.Top := CurTop;
  // LBut2.Left := 550;
  // LBut2.Width := 20;
  // LBut2.Caption := '*';
  // LBut2.Tag    := 90;
  // LBut2.OnClick := Button2CopyClick;

  // LTab             := TTabSheet.Create(PageControl1);
  LTab             := TTabSheet.Create(Self);
  LTab.Name        := 'Tab' + Name;
  LTab.PageControl := PageControl;
  LTab.Caption     := Name;
  LTab.Visible     := True;
  // LChlb            := TCheckListBox.Create(LTab);
  LChlb       := TCheckListBox.Create(Self);
  LChlb.Align := alClient;
  LChlb.Name  := 'Chib' + Name;
  // LChlb.Parent  := Owner;
  LChlb.Parent := LTab;
  LChlb.Top    := CurTop;
  LChlb.Hint   := TStringField(Field).KeyFields;
  LChlb.Left   := 450;
  LChlb.Width  := 200;
  // LChlb.Tag     := 90;
  // LChlb.Visible := False;
  LChlb.PopupMenu := PopChLstBox;
  LChlb.OnExit    := CheckListBoxExit;
  // !!!  FillCheckListBoxName(LChlb, LEdit1.ListSource.DataSet, LEdit1.ListField,
  // !!!    LEdit1.KeyField);

  CreateTable := True;
end;

function TfrmFilterEnDev.CreateLCB0(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String; Field: TField): TComponent;
var
  LEdit, LEdit1: TDBLookUpComboBox;
  LLabel: TLabel;
  LBut, LBut2: TButton;
  DSet, DSet1: TDataSource;
  LChlb: TCheckListBox;
  LTab: TTabSheet;
  LeoName, FldName: String;
  x: Integer;
  LEditListField, LEditKeyField, LEditName, LEdit1Name: String;
  LEditListSource: TDataSource;
begin
  if ((GHonorRequired=True) And (Field.Required=False)) then
    exit;

  LeoName := TStringField(Field).LookupDataSet.Name;
  LeoName := 'ds' + LeoName;
  for x   := 0 to PDM.ComponentCount - 1 do
    begin
      if PDM.Components[x].Name = LeoName then
        begin
          LEditListSource := TDataSource(PDM.Components[x]);
        end
    end;
  LEditListField := TStringField(Field).LookupResultField;
  LEditKeyField  := TStringField(Field).LookupKeyFields;

  LTab             := TTabSheet.Create(self);
  LTab.Name        := 'Tab' + Name;
  LTab.PageControl := PageControl;
  LTab.Caption     := LName;
  LTab.Visible     := True;
  LChlb            := TCheckListBox.Create(Self);
  LChlb.Align      := alClient;
  LChlb.Name       := 'Chib' + Name;
  LChlb.Parent     := LTab;
  LChlb.Top        := CurTop;
  LChlb.Hint       := TStringField(Field).KeyFields;
  LChlb.Left       := 450;
  LChlb.Width      := 200;
  LChlb.PopupMenu  := PopChLstBox;

//  LChlb.OnExit     := CheckListBoxExit;
  // !!!  FillCheckListBoxName(LChlb, LEditListSource.DataSet, LEditListField,
  // !!!    LEditKeyField);

  // CreateTable := True;

  FillCheckListBoxName(LChlb, LEditListSource.DataSet, LEditListField, LEditKeyField);

  LChlb.Sorted := True;

end;

procedure TfrmFilterEnDev.FillComboDev;
var
  n, ii, LWidth, LIndex: Integer;
  NField, NNField, LName: String;
  LField: TFieldClass;
  LFieldItem,LNField: TField;
  DataS: TDataSet;
begin
  DataS := FGrid.DataController.DataSource.Dataset;

  for n := 0 to FGrid.ColumnCount - 1 do
    begin
      if Assigned(FGrid.Columns[n].DataBinding.Field) then
        begin
          if Not(FGrid.Columns[n].DataBinding.Field.Calculated) then
            if Not(FGrid.Columns[n].DataBinding.Field.Lookup) then
              begin
                NField := FGrid.Columns[n].DataBinding.FieldName;
                LIndex := DataS.FieldByName(NField).Index;
                LName  := DataS.Fields[LIndex].DisplayName;
                // LWidth:= FGrid.DataSource.DataSet.Fields[LIndex].DisplayWidth;
                LWidth := FGrid.Columns[n].Width;
                if LWidth < 10 then
                  // Size is Messured in Characters so Size * 10 = Logical Width
                  LWidth := DataS.Fields[LIndex].Size * 10;
                // FieldDefs Have other Index  from FieldByName.Index
                LNField := DataS.Fields[LIndex];

                for ii := 0 to (DataS.FieldDefs.Count - 1) do
                  begin
                    if DataS.FieldDefs[ii].Name = NField then
                      LField := DataS.FieldDefs[ii].FieldClass;
                  end;
                NNField := NField;
                Delete(NField, Pos('.', NField), 1);
                CreateEdit(Self, NField, LName, LWidth, LField, NNField,LNField);
              end
            else
              begin
                NField := FGrid.Columns[n].DataBinding.FieldName;
                LIndex := DataS.FieldByName(NField).Index;
                LName  := DataS.Fields[LIndex].DisplayName;
                // LWidth:= FGrid.DataSource.DataSet.Fields[LIndex].DisplayWidth;
                LWidth := FGrid.Columns[n].Width;
                if LWidth < 10 then
                  // Size is Messured in Characters so Size * 10 = Logical Width
                  LWidth := DataS.Fields[LIndex].Size * 10;
                // LField:= FGrid.DataSource.DataSet.FieldDefs[LIndex].FieldClass;
                for ii := 0 to (DataS.FieldDefs.Count - 1) do
                  begin
                    if DataS.FieldDefs[ii].Name = NField then
                      LField := DataS.FieldDefs[ii].FieldClass;
                  end;
                LFieldItem := DataS.FieldByName(NField);
                NNField    := NField;
                Delete(NField, Pos('.', NField), 1);
                CreateLCB0(Self, NField, LName, LWidth, LField, NNField, LFieldItem);
              end;
        end;
    end;

    if PageControl.PageCount > 0 then
       PageControl.ActivePageIndex:=1;
    TabShMain.Refresh;
    PageControl.ActivePageIndex:=0;
end;

procedure TfrmFilterEnDev.FillComboQuery;
var
  n, ii, LWidth, LIndex: Integer;
  NField, NNField, LName: String;
  LField: TFieldClass;
  LFieldItem,LNField: TField;
  DataS: TDataSet;
  DataSou: TDataSource;
begin
  DataS := FGrid.DataController.DataSource.Dataset;

  for n := 0 to DataS.FieldCount - 1 do
    begin
      if Assigned(FGrid.Columns[n].DataBinding.Field) then
        begin
          if Not(DataS.Fields[n].Calculated) then
            if Not(DataS.Fields[n].Lookup) then
              begin
                NField := DataS.Fields[n].FieldName;
                LIndex := DataS.FieldByName(NField).Index;
                LName  := DataS.Fields[LIndex].DisplayName;
                LWidth := DataS.Fields[n].DisplayWidth;
                if LWidth < 10 then
                  // Size is Messured in Characters so Size * 10 = Logical Width
                  LWidth := DataS.Fields[n].Size * 10;
                for ii := 0 to (DataS.FieldDefs.Count - 1) do
                  begin
                    if DataS.FieldDefs[ii].Name = NField then
                      LField := DataS.FieldDefs[ii].FieldClass;
                  end;
                NNField := NField;
                Delete(NField, Pos('.', NField), 1);
                CreateEdit(Self, NField, LName, LWidth, LField, NNField,LNField);
              end
            else
              begin
                NField := DataS.Fields[n].FieldName;
                LIndex := DataS.FieldByName(NField).Index;
                LName  := DataS.Fields[LIndex].DisplayName;
                LWidth := DataS.Fields[n].DisplayWidth;
                if LWidth < 10 then
                  LWidth := DataS.Fields[n].Size * 10;
                for ii := 0 to (DataS.FieldDefs.Count - 1) do
                  begin
                    if DataS.FieldDefs[ii].Name = NField then
                      LField := DataS.FieldDefs[ii].FieldClass;
                  end;
                LFieldItem := DataS.FieldByName(NField);
                NNField    := NField;
                Delete(NField, Pos('.', NField), 1);
                CreateLCB0(Self, NField, LName, LWidth, LField, NNField, LFieldItem);
              end;
        end;
    end;
    if PageControl.PageCount > 0 then
       PageControl.ActivePageIndex:=1;
    TabShMain.Refresh;
    PageControl.ActivePageIndex:=0;
end;

procedure TfrmFilterEnDev.FormCreate(Sender: TObject);
begin
//  FillComboDev;
//  if CreateTable then
//    begin
//      SQLMemTable1.CreateTable;
//      SQLMemTable1.Active := True;
//      SQLMemTable1.Insert;
//    end;
end;

procedure TfrmFilterEnDev.btnAcceptClick(Sender: TObject);
var
  i, ii, iii, Val1, Val2: Integer;
  dd:Real;
  Leo: TComponent;
  MakList: String;
  ParLeft, ParRight: string;
begin
  LocFs    := TFormatSettings.Create('en-US');
  ParLeft  := '(';
  ParRight := ')';
  ii       := 0;
  for i    := 0 to Self.ComponentCount - 1 do
    begin
      if Components[i] is TEdit then
        begin
          if TEdit(Components[i]).Text > ' ' then
            begin
              if Assigned(TEdit(Components[i]).OnDblClick) then
                begin
                  if ii > 0 then
                    KSleo := KSleo + ' AND ';
                  KSleo   := KSleo + '[' + TEdit(Components[i]).Hint + ']';
                  if TEdit(Components[i]).Tag = 1 then
                    KSleo := KSleo + ' >= ' + QuotedStr(datetostr(strtodate(TEdit(Components[i]).Text), LocFs))
                  else
                    KSleo := KSleo + ' <= ' + QuotedStr(datetostr(strtodate(TEdit(Components[i]).Text), LocFs));
                end
              else
                begin
                  if ii > 0 then
                    KSleo := KSleo + ' AND ';
                  // KSleo := KSleo + TEdit(Components[i]).Hint;
                  KSleo := KSleo + '[' + TEdit(Components[i]).Hint + ']';
                  if TEdit(Components[i]).Tag = 1 then
                    if ((AnsiPos('%', TEdit(Components[i]).Text)) > 0) then
                      KSleo := KSleo + ' Like ' + QuotedStr(TEdit(Components[i]).Text)
                    else
                      KSleo := KSleo + ' >= ' + QuotedStr(TEdit(Components[i]).Text)
                  else if ((AnsiPos('%', TEdit(Components[i]).Text)) > 0) then
                    KSleo := KSleo + ' Like ' + QuotedStr(TEdit(Components[i]).Text)
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
        end
      else if Components[i] is TRadioGroup then
        begin
          if (TRadioGroup(Components[i]).ItemIndex > 0) then
            begin
              if ii > 0 then
                KSleo := KSleo + ' AND ';
              // KSleo   := KSleo + TRadioGroup(Components[i]).Hint;
              KSleo := KSleo + '[' + TRadioGroup(Components[i]).Hint + ']';
              KSleo := KSleo + ' = ' + inttostr(TRadioGroup(Components[i]).ItemIndex - 1);
              inc(ii);
            end;
        end
      else if Components[i] is TCheckListBox then
        begin
          MakList := FillInClbList(TCheckListBox(Components[i]), TCheckListBox(Components[i]).Hint);
          if MakList > ' ' then
            begin
              if ii > 0 then
                KSleo := KSleo + ' AND ';
              KSleo   := KSleo + ParLeft + MakList + ParRight;
              inc(ii);
            end;
        end
      else if Components[i] is TCheckBox then
        begin
          if TCheckBox(Components[i]).State = cbChecked  then
          begin
              if ii > 0 then
                KSleo := KSleo + ' AND ';
              KSleo := KSleo + '[' + TCheckBox(Components[i]).Hint + ']';
              KSleo := KSleo + ' = 1';
              inc(ii);
          end
          else if TCheckBox(Components[i]).State = cbUnchecked then
          begin
              if ii > 0 then
                KSleo := KSleo + ' AND ';
              KSleo := KSleo + '[' + TCheckBox(Components[i]).Hint + ']';
              KSleo := KSleo + ' = 0';
              inc(ii);
          end;
        end
      else if Components[i] is TDateTimePicker then
        begin
          if TDateTimePicker(Components[i]).Checked = True then
            begin
              if TDateTimePicker(Components[i]).Tag < 11 then
                begin
                  if ii > 0 then
                    KSleo := KSleo + ' AND ';
                  KSleo   := KSleo + '[' + TDateTimePicker(Components[i]).Hint + ']';
                  if TDateTimePicker(Components[i]).Tag = 1 then
                    begin
                      dd:=TDateTimePicker(Components[i]).Date;
                      dd:=dd-2;
//                      KSleo := KSleo + ' >= ' + FloattoStrF(dd, ffFixed, 5, 0)//DateTimeToStr(TDateTimePicker(Components[i]).Date)
                      KSleo := KSleo + ' >= ' + IntToStr(Trunc(dd));
                    end

                  else
                  if TDateTimePicker(Components[i]).Tag = 2 then
                    begin
                      dd:=TDateTimePicker(Components[i]).Date;
                      dd:=dd-1;
//                      KSleo := KSleo + ' <= ' + FloattoStrF(dd , ffFixed, 5, 0) //QuotedStr(datetostr(TDateTimePicker(Components[i]).Date));
                      KSleo := KSleo + ' <= ' + IntToStr(Trunc(dd));
                    end;
//                      KSleo := KSleo + ' <= ' + FloattoStrF((TDateTimePicker(Components[i]).Date), ffFixed, 5, 0) //QuotedStr(datetostr(TDateTimePicker(Components[i]).Date));
                end;
              inc(ii);
            end
        end
    end;

//     if ssCtrl in Shift then
//  MessageDlg(IntToStr(GetKeyState(VK_CONTROL)), mtWarning, [mbOK], 0);


//    if GetKeyState(VK_CONTROL) > 0 then
//      begin
//        MessageDlg(KSLeo, mtWarning, [mbOK], 0);
//      end;
end;

function TfrmFilterEnDev.SearchComp(Name: String): TComponent;
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

function TfrmFilterEnDev.SearchField(Name: String): Variant;
var
  v: Variant;
  Lt: TField;
begin
  Lt     := SQLMemTable1.FieldByName(Name);
  result := Lt.Value
end;

function TfrmFilterEnDev.SearchFieldInt(Name: String): Integer;
var
  Lt: TField;
begin
  Lt     := SQLMemTable1.FieldByName(Name);
  result := Lt.AsInteger;
end;

procedure TfrmFilterEnDev.UpdateField(Name: String; NewVal: Integer);
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

procedure TfrmFilterEnDev.GeneralEditExit(Sender: TObject);
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

procedure TfrmFilterEnDev.N4561Click(Sender: TObject);
var
  x: Integer;
  a: TUserDialog;
begin
  a := TUserDialog.Create(Self);
  if (PopChLstBox.PopupComponent is TCheckListBox) then
    if a.execute then
      for x := 0 to TCheckListBox(PopChLstBox.PopupComponent).Items.Count - 1 do
        // if Trim(TCheckListBox(PopChLstBox.PopupComponent).Items[x]) = a.UserName then
        if ContainsText(Trim(TCheckListBox(PopChLstBox.PopupComponent).Items[x]), a.UserName) then
          begin
            TCheckListBox(PopChLstBox.PopupComponent).Selected[x] := True;
            TCheckListBox(PopChLstBox.PopupComponent).SetFocus;
            Break;
          end;
  a.Free;

end;

procedure TfrmFilterEnDev.GeneralDBLookupComboBoxExit(Sender: TObject);
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

procedure TfrmFilterEnDev.ButtonCopyClick(Sender: TObject);
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

procedure TfrmFilterEnDev.Button2CopyClick(Sender: TObject);
var
  ValFromi, ValToi, i: Integer;
  OtherName, ONaF, ONaT: String;
  ValFrom, ValTo: Variant;
  LeoF, LeoT: TComponent;
begin
  OtherName                                            := TButton(Sender).Hint;
  TCheckListBox(Self.FindComponent(OtherName)).Visible := True;
end;

procedure TfrmFilterEnDev.CheckListBoxExit(Sender: TObject);
begin
  TCheckListBox(Sender).Visible := False;
end;

procedure TfrmFilterEnDev.ClbAllClick(Sender: TObject);
begin
  inherited;
  if (PopChLstBox.PopupComponent is TCheckListBox) then
    EnhmClb(TCheckListBox(PopChLstBox.PopupComponent), True);
end;

procedure TfrmFilterEnDev.ClbNoneClick(Sender: TObject);
begin
  if (PopChLstBox.PopupComponent is TCheckListBox) then
    EnhmClb(TCheckListBox(PopChLstBox.PopupComponent), False);
end;

procedure TfrmFilterEnDev.EditDateEnter(Sender: TObject);
var
  TmpDate: TDateTime;
begin
  TmpDate := now();
  if FormDate(Self, TmpDate, csDateTime) = mrOk then
    TEdit(Sender).Text := datetostr(TmpDate)
  else
    TEdit(Sender).Text := '';
end;

//    function CreateBool(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String;LNField:TField): TComponent;
//    function CreateInt(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String;LNField:TField): TComponent;
//    function CreateDate(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String;LNField:TField): TComponent;

function TfrmFilterEnDev.CreateBool(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String;LNField:TField): TComponent;
var
  LECb: TCheckBox;
begin
  if ((GHonorRequired=True) And (LNField.Required=False)) then
    exit;

  CurTop       := CurTop + 22;
  LECb         := TCheckBox.Create(Self);
  LECb.AllowGrayed := True;
//  LECb.Checked:=False;
//  LECb.Checked:=False;
  LECb.State  :=  cbGrayed;
  LECb.Name   := 'Chk' + Name;
  LECb.Hint   := NNField;
  LECb.Parent := Owner;
  LECb.Parent := TabShMain;
  LECb.Caption:= LName;
  LECb.Alignment := taLeftJustify;
  LECb.Top    := CurTop;
  LECb.Left   := 10;
  LECb.Tag    := 1;
  LECb.Width  := 150;
  LECb.Visible := True;
end;

/////////////////////////////////////////

function TfrmFilterEnDev.CreateDateTime(Owner: TForm; Name, LName: String; Width: Integer; LField: TFieldClass; NNField: String;LNField:TField): TComponent;
var
  LDEdit,LTEdit,LDEdit1,LTEdit1: TDateTimePicker;
  LLabel: TLabel;
  LBut: TButton;
begin
  if ((GHonorRequired=True) And (LNField.Required=False)) then
    exit;

  CurTop       := CurTop + 22;

  LDEdit        := TDateTimePicker.Create(Self);
  LDEdit.Name   := 'EddF' + Name;
  LDEdit.Hint   := NNField;
  LDEdit.Parent := Owner;
  LDEdit.Parent := TabShMain;
  LDEdit.Kind   := dtkDate;
  LDEdit.ShowCheckbox := True;
  LDEdit.Checked:= False;
  LDEdit.Top    := CurTop;
  LDEdit.Left   := 150;
  LDEdit.Tag    := 1;
  LDEdit.Width := 100;
  LDEdit.Visible := True;
  LDEdit.OnExit  := GeneralEditExit;

//  LTEdit        := TDateTimePicker.Create(Self);
//  LTEdit.Name   := 'EttF' + Name;
//  LTEdit.Hint   := NNField;
//  LTEdit.Parent := Owner;
//  LTEdit.Parent := TabShMain;
//  LTEdit.Kind   := dtkTime;
//  LTEdit.ShowCheckbox := False;
//  LTEdit.Checked:= False;
//  LTEdit.Top    := CurTop;
//  LTEdit.Left   := 250;
//  LTEdit.Tag    := 11;
//  LTEdit.Width := 100;
//  LTEdit.Visible := True;
//  LTEdit.OnExit  := GeneralEditExit;

  LDEdit1        := TDateTimePicker.Create(Self);
  LDEdit1.Name   := 'EddT' + Name;
  LDEdit1.Hint   := NNField;
  LDEdit1.Parent := Owner;
  LDEdit1.Parent := TabShMain;
  LDEdit1.Kind   := dtkDate;
  LDEdit1.ShowCheckbox := True;
  LDEdit1.Checked:= False;
  LDEdit1.Top    := CurTop;
  LDEdit1.Left   := 370;
  LDEdit1.Tag    := 2;
  LDEdit1.Width := 100;
  LDEdit1.Visible := True;
  LDEdit1.OnExit  := GeneralEditExit;

//  LTEdit1        := TDateTimePicker.Create(Self);
//  LTEdit1.Name   := 'EttT' + Name;
//  LTEdit1.Hint   := NNField;
//  LTEdit1.Parent := Owner;
//  LTEdit1.Parent := TabShMain;
//  LTEdit1.Kind   := dtkTime;
//  LTEdit1.ShowCheckbox := False;
//  LTEdit1.Checked:= False;
//  LTEdit1.Top    := CurTop;
//  LTEdit1.Left   := 470;
//  LTEdit1.Tag    := 12;
//  LTEdit1.Width := 100;
//  LTEdit1.Visible := True;
//  LTEdit1.OnExit  := GeneralEditExit;

  LLabel         := TLabel.Create(Owner);
  LLabel.Name    := 'Lab' + Name;
  LLabel.Parent  := Owner;
  LLabel.Parent  := TabShMain;
  LLabel.Caption := LName;
  LLabel.Top     := CurTop;
  LLabel.Left    := 10;
  LLabel.Width   := 130;
  Self.Height    := CurTop + 120;

  LBut         := TButton.Create(Self);
  LBut.Name    := 'But' + Name;
  LBut.Name    := Name;
  LBut.Hint    := NNField;
  LBut.Parent  := Owner;
  LBut.Parent  := TabShMain;
  LBut.Top     := CurTop;
  LBut.Left    := 350;
  LBut.Width   := 20;
  LBut.Caption := '->';
  LBut.Tag     := 10;
  LBut.OnClick := ButtonCopyClick;

end;


end.
