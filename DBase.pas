unit DBase;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DbGrids, DBGridEh, ADODB, ComObj, OleCtrls, OleServer, Bde.DBTables,
  Variants, Excel2000;

type
  TDMBase = class(TDataModule)
  private
    FOnStateChange: TNotifyEvent;
  protected
    procedure Loaded; override;
    procedure DoStateChange(Sender: TObject);
    procedure StartTransaction;
    procedure Commit;
    procedure Rollback;
  public
    function CreateNewNew(aowner: TComponent): TDMBase;
    procedure AfterPost(Dataset: TDataSet);
    procedure OnPostError(Dataset: TDataSet);
    procedure BeforePost0(Dataset: TDataSet; TableName: string = '');
    procedure BeforePost00(Dataset: TDataSet; TableName: string = '');
    procedure BeforePost01(Dataset: TDataSet; TableName: string = '');
    procedure BeforePost(Dataset: TDataSet);
    procedure DeleteRecord; virtual; abstract;
    procedure InsertRecord; virtual; abstract;
    procedure UpdateRecord; virtual; abstract;
    procedure BrowseData;
    procedure UpdateData; virtual; abstract;
    procedure CancelData; virtual; abstract;
    procedure DeleteNamedRecord(Dataset: TDataSet); virtual;
    property OnStateChange: TNotifyEvent read FOnStateChange write FOnStateChange;
    procedure ParamStateChange(Sender: TObject);
    procedure OutputFile(FromGrid: TDBGrid);
    procedure OutputFileDev(FromGrid: TObject);
    procedure OutputFileDs(FromDS: TDataSource);
  end;

implementation

uses FSubParams, FSubParamsNo, FSubParamsNoEh, DMain, AlertU, ResStr;

var
  DMCount: integer;

{$R *.DFM}

procedure TDMBase.ParamStateChange(Sender: TObject);
begin
  inherited;
  if Self.Owner is TfrmSubParams then
    if TDataSource(Sender).State in [dsInsert, dsEdit] then
      TfrmSubParams(Self.Owner).SetState('After')
    else
      begin
        TfrmSubParams(Self.Owner).SetState('Before');
        TfrmSubParams(Self.Owner).SetStatusText('', 0);
        TfrmSubParams(Self.Owner).ReleaseLock;
      end;

  if Self.Owner is TfrmSubParamsNo then
    if TDataSource(Sender).State in [dsInsert, dsEdit] then
      TfrmSubParamsNo(Self.Owner).SetState('After')
    else
      begin
        TfrmSubParamsNo(Self.Owner).SetState('Before');
        TfrmSubParamsNo(Self.Owner).SetStatusText('', 0);
        TfrmSubParamsNo(Self.Owner).ReleaseLock;
      end;

  if Self.Owner is TfrmSubParamsNoEh then
    if TDataSource(Sender).State in [dsInsert, dsEdit] then
      begin
        TfrmSubParamsNoEh(Self.Owner).SetState('After');
      end
    else
      begin
        TfrmSubParamsNoEh(Self.Owner).SetState('Before');
        TfrmSubParamsNoEh(Self.Owner).SetStatusText('', 0);
        TfrmSubParamsNoEh(Self.Owner).ReleaseLock;
      end;

  // !!!
  { if Self.Owner is TfrmBase then
    if TDataSource(Sender).State in [dsInsert, dsEdit] then
    TfrmBase(Self.Owner).SetState('After')
    else
    begin
    TfrmBase(Self.Owner).SetState('Before');
    TfrmBase(Self.Owner).SetStatusText('', 0);
    end; }

  if Self.Owner is TfrmSubParams then
    if TDataSource(Sender).State in [dsInsert, dsEdit] then
      begin
        TfrmSubParams(Self.Owner).Grid.Options := TfrmSubParams(Self.Owner).Grid.Options - [DbGrids.dgRowSelect];
        TfrmSubParams(Self.Owner).Grid.Options := TfrmSubParams(Self.Owner).Grid.Options + [DbGrids.dgEditing];
      end
    else
      begin
        TfrmSubParams(Self.Owner).Grid.Options := TfrmSubParams(Self.Owner).Grid.Options - [DbGrids.dgEditing];
        TfrmSubParams(Self.Owner).Grid.Options := TfrmSubParams(Self.Owner).Grid.Options + [DbGrids.dgRowSelect];
      end;

  if Self.Owner is TfrmSubParamsNo then
    if TDataSource(Sender).State in [dsInsert, dsEdit] then
      begin
        TfrmSubParamsNo(Self.Owner).Grid.Options := TfrmSubParamsNo(Self.Owner).Grid.Options - [DbGrids.dgRowSelect];
        TfrmSubParamsNo(Self.Owner).Grid.Options := TfrmSubParamsNo(Self.Owner).Grid.Options + [DbGrids.dgEditing];
      end
    else
      begin
        TfrmSubParamsNo(Self.Owner).Grid.Options := TfrmSubParamsNo(Self.Owner).Grid.Options - [DbGrids.dgEditing];
        TfrmSubParamsNo(Self.Owner).Grid.Options := TfrmSubParamsNo(Self.Owner).Grid.Options + [DbGrids.dgRowSelect];
      end;

  if Self.Owner is TfrmSubParamsNoEh then
    if TDataSource(Sender).State in [dsInsert, dsEdit] then
      begin
        TfrmSubParamsNoEh(Self.Owner).Grid.Options := TfrmSubParamsNoEh(Self.Owner).Grid.Options - [DBGridEh.dgRowSelect];
        TfrmSubParamsNoEh(Self.Owner).Grid.Options := TfrmSubParamsNoEh(Self.Owner).Grid.Options + [DBGridEh.dgEditing];
      end
    else
      begin
        TfrmSubParamsNoEh(Self.Owner).Grid.Options := TfrmSubParamsNoEh(Self.Owner).Grid.Options - [DBGridEh.dgEditing];
        TfrmSubParamsNoEh(Self.Owner).Grid.Options := TfrmSubParamsNoEh(Self.Owner).Grid.Options + [DBGridEh.dgRowSelect];
      end;
end;

procedure TDMBase.Loaded;
begin
  inherited;
  if not(csDesigning in ComponentState) then
    begin
      Inc(DMCount);
      Name := Name + IntToStr(DMCount);
    end;
end;

function TDMBase.CreateNewNew(aowner: TComponent): TDMBase;
var
  Instance: TDMBase;
begin
  // Instance := TDMBase(Self.ClassType.NewInstance);
  // TDMBase(Result) := Instance;
  // try
  // Instance.Create( aowner );
  // except
  // TDMBase(Result) := nil;
  // raise;
  // end;
end;

procedure TDMBase.DoStateChange(Sender: TObject);
begin
  if Assigned(FOnStateChange) then
    FOnStateChange(Sender);
  ParamStateChange(Sender);
end;

procedure TDMBase.DeleteNamedRecord(Dataset: TDataSet);
begin
end;

procedure TDMBase.BeforePost(Dataset: TDataSet);
var
  x: Tfield;
  TableName: String;
begin
  // Chear multi cast with Parent Object
  TableName := Dataset.Name;
  if Dataset.State = dsInsert then
    begin
      try
        Dataset.FieldByName('Id').AsInteger := CreateKey(TableName);
      except
        // Silent Pass NO
      end;

      try
        Dataset.FieldByName('InsUsr').Value := LoginId;
        Dataset.FieldByName('InsDt').Value  := Now();
      except
        // Silent Pass NO
      end;

      try
        Dataset.FieldByName('Deleted').AsBoolean := False;
      except
        // Silent Pass NO
      end;
      try
        Dataset.FieldByName('InActive').AsBoolean := False;
      except
        // Silent Pass NO
      end;
    end;

  if Dataset.State = dsEdit then
    if Dataset.Modified then
      begin
        try
          Dataset.FieldByName('UpdUsr').Value := LoginId;
          Dataset.FieldByName('UpdDt').Value  := Now();
        except
          // Silent Pass NO
        end;
      end;
end;

procedure TDMBase.StartTransaction;
begin
  DMMain.StartTransaction;
end;

procedure TDMBase.Commit;
begin
  DMMain.Commit;
end;

procedure TDMBase.Rollback;
begin
  DMMain.Rollback;
end;

procedure TDMBase.BrowseData;
begin
  CancelData;
end;

{ procedure TDMBase.OutputFile(FromGrid:TDBGrid);
  var x,i,y,DispFCnt:Integer;
  Sheet: Variant;
  XLApp: Variant;
  FldName:String;
  FieldsArr : Array [1..100] of Integer;
  begin
  FromGrid.DataSource.DataSet.DisableControls;
  FromGrid.DataSource.DataSet.First;
  XLApp:= CreateOleObject('Excel.Application');
  XLApp.Visible := True;
  XLApp.Workbooks.Add(xlWBatWorkSheet);
  XLApp.Workbooks[1].WorkSheets[1].Name := 'Delphi Data';
  Sheet := XLApp.Workbooks[1].WorkSheets['Delphi Data'];

  y:=FromGrid.Columns.Count-1;

  DispFCnt:=0;

  for x:= 0 to y do
  if FromGrid.Columns[x].Visible = True then
  begin
  DispFCnt:=DispFCnt+1;
  FieldsArr[DispFCnt]:=x;
  end;

  if DispFCnt = 0 then
  exit;

  i:=1;
  try
  repeat
  for x:= 1 to DispFCnt do
  begin
  y:=FieldsArr[x];
  FldName:=FromGrid.Columns[y].FieldName;
  Sheet.Cells[i,x]:=FromGrid.DataSource.DataSet.FieldByName(FldName).AsString;
  end;
  i:=i+1;
  FromGrid.DataSource.DataSet.Next;
  until FromGrid.DataSource.DataSet.Eof
  finally
  FromGrid.DataSource.DataSet.EnableControls;
  end
  end; }

{ procedure TDMBase.OutputFile(FromGrid: TDBGrid);
  var x,i,y,DispFCnt:Integer;
  Sheet: Variant;
  XLApp: Variant;
  FldName:String;
  FieldsArr : Array [1..100] of Integer;
  begin
  FromGrid.DataSource.DataSet.DisableControls;
  FromGrid.DataSource.DataSet.First;
  XLApp:= CreateOleObject('Excel.Application');
  XLApp.Visible := True;
  XLApp.Workbooks.Add(XLWBatWorksheet);
  XLApp.Workbooks[1].WorkSheets[1].Name := 'Delphi Data';
  Sheet := XLApp.Workbooks[1].WorkSheets['Delphi Data'];

  y:=FromGrid.Columns.Count-1;

  DispFCnt:=0;

  for x:= 0 to y do
  if FromGrid.Columns[x].Visible = True then
  begin
  DispFCnt:=DispFCnt+1;
  FieldsArr[DispFCnt]:=x;
  end;

  if DispFCnt = 0 then
  exit;

  for x:= 1 to DispFCnt do
  begin
  y:=FieldsArr[x];
  FldName:=FromGrid.Columns[y].FieldName;
  Sheet.Cells[1,x]:=FromGrid.DataSource.DataSet.FieldByName(FldName).DisplayLabel;
  sheet.cells[1,x].interior.colorindex := 6;
  sheet.cells[1,x].font.Name := 'Arial';
  //        sheet.cells[1,x].font.FontStyle := 'Έντονα';
  sheet.cells[1,x].font.FontStyle := 'Bold';
  sheet.cells[1,x].font.Size := 12;
  sheet.cells[1,x].font.Strikethrough := False;
  sheet.cells[1,x].font.Superscript := False;
  sheet.cells[1,x].font.Subscript := False;
  sheet.cells[1,x].font.OutlineFont := False;
  sheet.cells[1,x].font.Shadow := False;
  sheet.cells[1,x].font.Underline := xlUnderlineStyleNone;
  sheet.cells[1,x].font.ColorIndex := xlAutomatic;
  end;

  i:=2;
  try
  repeat
  for x:= 1 to DispFCnt do
  begin
  y:=FieldsArr[x];
  FldName:=FromGrid.Columns[y].FieldName;
  if FldName = 'password' then
  Sheet.Cells[i,x]:='***'
  else
  Sheet.Cells[i,x]:=Trim(FromGrid.DataSource.DataSet.FieldByName(FldName).AsString);
  //            Sheet.Cells[i,x]:=FromGrid.DataSource.DataSet.FieldByName(FldName).Text;

  end;

  i:=i+1;
  FromGrid.DataSource.DataSet.Next;
  until FromGrid.DataSource.DataSet.Eof;
  Sheet.Cells.Select;
  Sheet.Cells.EntireColumn.AutoFit;
  Sheet.Cells[1.1].Select;
  finally
  FromGrid.DataSource.DataSet.EnableControls;
  end;
  FromGrid.DataSource.DataSet.First;

  end; }

// !!! Obsolete now in common
procedure TDMBase.OutputFile(FromGrid: TDBGrid);
var
  x, i, y, DispFCnt: integer;
  Sheet: Variant;
  XLApp: Variant;
  FldName: String;
  Bks: TBookMark;
  FieldsArr: Array [1 .. 100] of integer;
begin
  FromGrid.DataSource.Dataset.DisableControls;
  Bks := FromGrid.DataSource.Dataset.GetBookmark;
  FromGrid.DataSource.Dataset.First;
  XLApp         := CreateOleObject('Excel.Application');
  XLApp.Visible := True;
  XLApp.Visible := False;
  // Must be turn off
  // XLApp.Workbooks.Add(xlWBatWorkSheet);
  XLApp.Workbooks.Add();
  XLApp.Workbooks[1].WorkSheets[1].Name := 'Delphi Data';
  Sheet                                 := XLApp.Workbooks[1].WorkSheets['Delphi Data'];

  y := FromGrid.Columns.Count - 1;

  DispFCnt := 0;

  for x := 0 to y do
    if FromGrid.Columns[x].Visible = True then
      begin
        DispFCnt            := DispFCnt + 1;
        FieldsArr[DispFCnt] := x;
      end;

  if DispFCnt = 0 then
    exit;

  i := 1;

  for x := 1 to DispFCnt do
    begin
      y                                     := FieldsArr[x];
      FldName                               := FromGrid.Columns[y].FieldName;
      Sheet.Cells[1, x]                     := FromGrid.DataSource.Dataset.FieldByName(FldName).DisplayLabel;
      Sheet.Cells[1, x].interior.colorindex := 6;
      Sheet.Cells[1, x].font.Name           := 'Arial';
      Sheet.Cells[1, x].font.FontStyle      := 'Bold';
      Sheet.Cells[1, x].font.Size           := 12;
      Sheet.Cells[1, x].font.Strikethrough  := False;
      Sheet.Cells[1, x].font.Superscript    := False;
      Sheet.Cells[1, x].font.Subscript      := False;
      Sheet.Cells[1, x].font.OutlineFont    := False;
      Sheet.Cells[1, x].font.Shadow         := False;
      // sheet.cells[1,x].font.Underline := xlUnderlineStyleNone;
      // sheet.cells[1,x].font.ColorIndex := xlAutomatic;
    end;

  i := 2;

  try
    try
      repeat
        for x := 1 to DispFCnt do
          begin
            y       := FieldsArr[x];
            FldName := FromGrid.Columns[y].FieldName;
            if FromGrid.Columns[y].Field.ClassType = TBCDField then
              begin
                Sheet.Cells[i, x].NumberFormat := '#.##0,00 €';
                Sheet.Cells[i, x]              := FromGrid.DataSource.Dataset.FieldByName(FldName).AsFloat;
              end
            else if FromGrid.Columns[y].Field.ClassType = TFloatField then
              begin
                Sheet.Cells[i, x].NumberFormat := '###.###.##0,00';
                Sheet.Cells[i, x]              := FromGrid.DataSource.Dataset.FieldByName(FldName).AsFloat;
              end
            else if FromGrid.Columns[y].Field.ClassType = TIntegerField then
              begin
                Sheet.Cells[i, x] := FromGrid.DataSource.Dataset.FieldByName(FldName).AsInteger;
              end
            else if FromGrid.Columns[y].Field.ClassType = TDateTimeField then
              begin
                Sheet.Cells[i, x] := FromGrid.DataSource.Dataset.FieldByName(FldName).AsDateTime;
              end
            else
              Sheet.Cells[i, x] := FromGrid.DataSource.Dataset.FieldByName(FldName).AsString;
          end;
        i := i + 1;
        FromGrid.DataSource.Dataset.Next;
      until FromGrid.DataSource.Dataset.Eof except MessageDlg('Error Not Full Export of Grid.', mtError, [mbOK], 0);
    end;
    MessageDlg('Export Done!', mtError, [mbOK], 0);
    XLApp.Visible := True;
  finally
    FromGrid.DataSource.Dataset.GotoBookmark(Bks);
    FromGrid.DataSource.Dataset.EnableControls;
  end
end;

// !!! Obsolete now in common
procedure TDMBase.OutputFileDev(FromGrid: TObject);
var
  x, i, y, DispFCnt: integer;
  Sheet: Variant;
  XLApp: Variant;
  FldName: String;
  FieldsArr: Array [1 .. 100] of integer;
begin
  { FromGrid.DataSource.Dataset.DisableControls;
    FromGrid.DataSource.Dataset.First;
    XLApp         := CreateOleObject('Excel.Application');
    XLApp.Visible := True;
    // Must be turn off
    // XLApp.Workbooks.Add(xlWBatWorkSheet);
    XLApp.Workbooks.Add();
    XLApp.Workbooks[1].WorkSheets[1].Name := 'Delphi Data';
    Sheet := XLApp.Workbooks[1].WorkSheets['Delphi Data'];

    y := FromGrid.Columns.Count - 1;

    DispFCnt := 0;

    for x := 0 to y do
    if FromGrid.Columns[x].Visible = True then
    begin
    DispFCnt            := DispFCnt + 1;
    FieldsArr[DispFCnt] := x;
    end;

    if DispFCnt = 0 then
    exit;

    i := 1;

    for x := 1 to DispFCnt do
    begin
    y                 := FieldsArr[x];
    FldName           := FromGrid.Columns[y].FieldName;
    Sheet.Cells[1, x] := FromGrid.DataSource.Dataset.FieldByName(FldName)
    .DisplayLabel;
    Sheet.Cells[1, x].interior.colorindex := 6;
    Sheet.Cells[1, x].font.Name           := 'Arial';
    Sheet.Cells[1, x].font.FontStyle      := 'Bold';
    Sheet.Cells[1, x].font.Size           := 12;
    Sheet.Cells[1, x].font.Strikethrough  := False;
    Sheet.Cells[1, x].font.Superscript    := False;
    Sheet.Cells[1, x].font.Subscript      := False;
    Sheet.Cells[1, x].font.OutlineFont    := False;
    Sheet.Cells[1, x].font.Shadow         := False;
    // sheet.cells[1,x].font.Underline := xlUnderlineStyleNone;
    // sheet.cells[1,x].font.ColorIndex := xlAutomatic;
    end;

    i := 2;

    try
    try
    repeat
    for x := 1 to DispFCnt do
    begin
    y       := FieldsArr[x];
    FldName := FromGrid.Columns[y].FieldName;
    if FromGrid.Columns[y].Field.ClassType = TBCDField then
    begin
    Sheet.Cells[i, x].NumberFormat := '#.##0,00 €';
    Sheet.Cells[i, x] := FromGrid.DataSource.Dataset.FieldByName
    (FldName).AsFloat;
    end
    else if FromGrid.Columns[y].Field.ClassType = TFloatField then
    begin
    Sheet.Cells[i, x].NumberFormat := '###.###.##0,00';
    Sheet.Cells[i, x] := FromGrid.DataSource.Dataset.FieldByName
    (FldName).AsFloat;
    end
    else if FromGrid.Columns[y].Field.ClassType = TIntegerField then
    begin
    Sheet.Cells[i, x] := FromGrid.DataSource.Dataset.FieldByName
    (FldName).AsInteger;
    end
    else if FromGrid.Columns[y].Field.ClassType = TDateTimeField then
    begin
    Sheet.Cells[i, x] := FromGrid.DataSource.Dataset.FieldByName
    (FldName).AsDateTime;
    end
    else
    Sheet.Cells[i, x] := FromGrid.DataSource.Dataset.FieldByName
    (FldName).AsString;
    end;
    i := i + 1;
    FromGrid.DataSource.Dataset.Next;
    until FromGrid.DataSource.Dataset.Eof except MessageDlg
    ('Error Not Full Export of Grid.', mtError, [mbOK], 0);
    end;
    MessageDlg('Export Done!', mtError, [mbOK], 0);
    finally
    FromGrid.DataSource.Dataset.EnableControls;
    end }
end;

// !!! Obsolete now in common
procedure TDMBase.OutputFileDs(FromDS: TDataSource);
var
  x, i, y, DispFCnt: integer;
  Sheet: Variant;
  XLApp: Variant;
  FldName: String;
  FieldsArr: Array [1 .. 100] of integer;
begin
  { TODO -cMust : //MUST }
  // Must Build List for visible fields and widths
  FromDS.Dataset.DisableControls;
  FromDS.Dataset.First;
  XLApp         := CreateOleObject('Excel.Application');
  XLApp.Visible := True;
  // Must be turn off
  // XLApp.Workbooks.Add(xlWBatWorkSheet);
  XLApp.Workbooks.Add();
  XLApp.Workbooks[1].WorkSheets[1].Name := 'Delphi Data';
  Sheet                                 := XLApp.Workbooks[1].WorkSheets['Delphi Data'];

  y := FromDS.Dataset.FieldCount - 1;

  DispFCnt := 0;

  for x := 0 to y do
    if FromDS.Dataset.Fields[x].Visible = True then
      begin
        DispFCnt            := DispFCnt + 1;
        FieldsArr[DispFCnt] := x;
      end;

  if DispFCnt = 0 then
    exit;

  i := 1;

  for x := 1 to DispFCnt do
    begin
      y                 := FieldsArr[x];
      FldName           := FromDS.Dataset.Fields[x].FieldName;
      Sheet.Cells[1, x] := FromDS.Dataset.FieldByName(FldName).DisplayLabel;
      // Sheet.Cells[1,x]:=FromDs.DataSet.Fields[x].DisplayLabel;
      Sheet.Cells[1, x].interior.colorindex := 6;
      Sheet.Cells[1, x].font.Name           := 'Arial';
      Sheet.Cells[1, x].font.FontStyle      := 'Bold';
      Sheet.Cells[1, x].font.Size           := 12;
      Sheet.Cells[1, x].font.Strikethrough  := False;
      Sheet.Cells[1, x].font.Superscript    := False;
      Sheet.Cells[1, x].font.Subscript      := False;
      Sheet.Cells[1, x].font.OutlineFont    := False;
      Sheet.Cells[1, x].font.Shadow         := False;
      // sheet.cells[1,x].font.Underline := xlUnderlineStyleNone;
      // sheet.cells[1,x].font.ColorIndex := xlAutomatic;
    end;

  i := 2;

  try
    try
      repeat
        for x := 1 to DispFCnt do
          begin
            y       := FieldsArr[x];
            FldName := FromDS.Dataset.Fields[y].FieldName;
            if FromDS.Dataset.Fields[y].ClassType = TBCDField then
              begin
                Sheet.Cells[i, x].NumberFormat := '#.##0,00 €';
                Sheet.Cells[i, x]              := FromDS.Dataset.Fields[y].AsFloat;
              end
            else if FromDS.Dataset.Fields[y].ClassType = TFloatField then
              begin
                Sheet.Cells[i, x].NumberFormat := '###.###.##0,00';
                Sheet.Cells[i, x]              := FromDS.Dataset.Fields[y].AsFloat;
              end
            else if FromDS.Dataset.Fields[y].ClassType = TIntegerField then
              begin
                Sheet.Cells[i, x] := FromDS.Dataset.Fields[y].AsInteger;
              end
            else if FromDS.Dataset.Fields[y].ClassType = TDateTimeField then
              begin
                Sheet.Cells[i, x] := FromDS.Dataset.Fields[y].AsDateTime;
              end
            else
              Sheet.Cells[i, x] := FromDS.Dataset.Fields[y].AsString;
          end;
        i := i + 1;
        FromDS.Dataset.Next;
      until FromDS.Dataset.Eof except MessageDlg('Error Not Full Export of Grid.', mtError, [mbOK], 0);
    end;
    MessageDlg('Export Done!', mtError, [mbOK], 0);
  finally
    FromDS.Dataset.EnableControls;
  end
end;

procedure TDMBase.AfterPost(Dataset: TDataSet);
begin
  DMMain.TblChanges.UpdateBatch();
end;

procedure TDMBase.OnPostError(Dataset: TDataSet);
begin
  DMMain.TblChanges.CancelBatch();
end;

procedure TDMBase.BeforePost0(Dataset: TDataSet; TableName: string = '');
var
  x: integer;
  xf: Tfield;
begin
  // Chear multi cast with Parent Object

  begin
    if Dataset is tTable then
      begin
        DMain.GenBeforePostWithName(Dataset, tTable(Dataset).TableName);
        if TableName = '' then
          TableName := Dataset.Name;
      end;
    if Dataset is tAdoTable then
      begin
        DMain.GenBeforePostWithName(Dataset, tAdoTable(Dataset).TableName);
        if TableName = '' then
          TableName := Dataset.Name;
      end;
    if Dataset is tAdoQuery then
      DMain.GenBeforePostWithName(Dataset, TableName);

    if Dataset.State = dsInsert then
      for x := 0 to Dataset.FieldCount - 1 do
        if not((Dataset.Fields[x].Calculated) or (Dataset.Fields[x].Lookup)) then
        try
          // DMMain.EnhmChanges(Dataset.Name,Dataset.Fields[x].FieldName,Dataset.Fields[x].FieldKind,Dataset.FieldByName('Id').Value,True,VartoStr(Dataset.Fields[x].Value),'')
          DMMain.EnhmChanges(TableName, Dataset.Fields[x].FieldName, Dataset.Fields[x].FieldKind, Dataset.FieldByName('Id').Value, True, VartoStr(Dataset.Fields[x].Value), '')
        except
          // MessageDlg(Dataset.Fields[x].FieldName +' '+ IntToStr(Dataset.Fields[x].Value), mtCustom, [mbOK], 0);
        end;

    for x := 0 to Dataset.FieldCount - 1 do
      if not((Dataset.Fields[x].Calculated) or (Dataset.Fields[x].Lookup)) then
      if not(Dataset.Fields[x].NewValue = Dataset.Fields[x].OldValue) then
        begin
          // DMMain.EnhmChanges(Dataset.Name,Dataset.Fields[x].FieldName,Dataset.Fields[x].FieldKind,Dataset.FieldByName('Id').Value,False,VartoStr(Dataset.Fields[x].NewValue),VartoStr(Dataset.Fields[x].OldValue))
          DMMain.EnhmChanges(TableName, Dataset.Fields[x].FieldName, Dataset.Fields[x].FieldKind, Dataset.FieldByName('Id').Value, False, VartoStr(Dataset.Fields[x].NewValue),
            VartoStr(Dataset.Fields[x].OldValue))
        end;

    if Dataset.State = dsInsert then
      try
        Dataset.FieldByName('InsUsr').Value := LoginId;
        Dataset.FieldByName('InsDt').Value  := Now();
      except
        // Silent Pass NO
      end;
  end;

  if Dataset.State = dsEdit then
    if Dataset.Modified then
      begin
        try
          Dataset.FieldByName('UpdUsr').Value := LoginId;
          Dataset.FieldByName('UpdDt').Value  := Now();
        except
          // Silent Pass NO
        end;
      end;

  // Must Move from Dmain general Before Post
  { if Dataset.State = dsInsert then
    if Dataset is tTable then
    tTable(Dataset).FieldByName('ID').AsInteger := CreateKey ( tTable(Dataset).tablename )
    else
    tAdoTable(Dataset).FieldByName('ID').AsInteger := CreateKey ( tAdoTable(Dataset).tablename ) }
end;

procedure TDMBase.BeforePost00(Dataset: TDataSet; TableName: string = '');
var
  x: integer;
  xf: Tfield;
begin
  if Dataset is tTable then
    begin
      DMain.GenBeforePostWithName(Dataset, tTable(Dataset).TableName);
      if TableName = '' then
        TableName := Dataset.Name;
    end;
  if Dataset is tAdoTable then
    begin
      DMain.GenBeforePostWithName(Dataset, tAdoTable(Dataset).TableName);
      if TableName = '' then
        TableName := Dataset.Name;
    end;
  if Dataset is tAdoQuery then
    DMain.GenBeforePostWithName(Dataset, TableName);
end;

procedure TDMBase.BeforePost01(Dataset: TDataSet; TableName: string = '');
var
  x: integer;
  xf: Tfield;
begin
  begin
    if Dataset.State = dsInsert then
      for x := 0 to Dataset.FieldCount - 1 do
        try
          // DMMain.EnhmChanges(Dataset.Name,Dataset.Fields[x].FieldName,Dataset.Fields[x].FieldKind,Dataset.FieldByName('Id').Value,True,VartoStr(Dataset.Fields[x].Value),'')
          DMMain.EnhmChanges(TableName, Dataset.Fields[x].FieldName, Dataset.Fields[x].FieldKind, Dataset.FieldByName('Id').Value, True, VartoStr(Dataset.Fields[x].Value), '')
        except
          // MessageDlg(Dataset.Fields[x].FieldName +' '+ IntToStr(Dataset.Fields[x].Value), mtCustom, [mbOK], 0);
        end;

    for x := 0 to Dataset.FieldCount - 1 do
      if not(Dataset.Fields[x].NewValue = Dataset.Fields[x].OldValue) then
        begin
          // DMMain.EnhmChanges(Dataset.Name,Dataset.Fields[x].FieldName,Dataset.Fields[x].FieldKind,Dataset.FieldByName('Id').Value,False,VartoStr(Dataset.Fields[x].NewValue),VartoStr(Dataset.Fields[x].OldValue))
          DMMain.EnhmChanges(TableName, Dataset.Fields[x].FieldName, Dataset.Fields[x].FieldKind, Dataset.FieldByName('Id').Value, False, VartoStr(Dataset.Fields[x].NewValue),
            VartoStr(Dataset.Fields[x].OldValue))
        end;

    if Dataset.State = dsInsert then
      try
        Dataset.FieldByName('InsUsr').Value := LoginId;
        Dataset.FieldByName('InsDt').Value  := Now();
      except
        // Silent Pass NO
      end;
  end;

  if Dataset.State = dsEdit then
    if Dataset.Modified then
      begin
        try
          Dataset.FieldByName('UpdUsr').Value := LoginId;
          Dataset.FieldByName('UpdDt').Value  := Now();
        except
          // Silent Pass NO
        end;
      end;
end;

end.
