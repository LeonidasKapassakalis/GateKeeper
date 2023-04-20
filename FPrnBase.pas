unit FPrnBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxDBData, cxGridCustomTableView, Common, RSubParams,
  Data.Win.ADODB, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  ADOConEd, ComObj, DB,
  Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.OleCtrls,
  cxGridCustomView, Vcl.ActnList;

type
  TFrmPrnBase = class(TForm)
    popFilter: TPopupMenu;
    Pedia: TMenuItem;
    FAll: TMenuItem;
    FNone: TMenuItem;
    MC4: TMenuItem;
    FSaveGrid: TMenuItem;
    FLoadGrid: TMenuItem;
    Variants1: TMenuItem;
    ExcelPopBtn: TMenuItem;
    PrnPopBtn: TMenuItem;
    XMLPopBtn: TMenuItem;
    actBestFit: TMenuItem;
    ActLstBase: TActionList;
    actUpdBrowse: TAction;
    Pivot1: TMenuItem;
    actDispAllActions: TAction;
    procedure NLeoClick(Sender: TObject);
    procedure FAllClick(Sender: TObject);
    procedure FNoneClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FSaveGridClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure popFilterPopup(Sender: TObject);
    procedure ExcelPopBtnClick(Sender: TObject);
    procedure PrnPopBtnClick(Sender: TObject);
    procedure XMLPopBtnClick(Sender: TObject);
    procedure FLoadGridClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure actBestFitClick(Sender: TObject);
    procedure actUpdBrowseExecute(Sender: TObject);
    procedure Pivot1Click(Sender: TObject);
    procedure actDispAllActionsExecute(Sender: TObject);
  private
    FPFormID: Integer;
    FMasterView: TcxGridDBTableView;
    FDBGridMasterView: TDBGrid;
    FGridPivotId: Integer;
    procedure BrowseFields(var LeoMenu: TMenuItem);
    procedure SetPFormID(const Value: Integer);
    procedure SetDBGridMasterView(const Value: TDBGrid);
    procedure SetGridPivotId(const Value: Integer);
  public
    procedure FMasterViewSet(ToMV: TcxGridDBTableView);
    property GridPivotId: Integer read FGridPivotId write SetGridPivotId;
    property DXMasterView: TcxGridDBTableView read FMasterView write FMasterViewSet;
    property PFormID: Integer read FPFormID write SetPFormID;

    property DBGridMasterView: TDBGrid read FDBGridMasterView write SetDBGridMasterView;
  end;

implementation

uses DMain;

const
  FirstFreePedia = 2;

{$R *.dfm}

procedure TFrmPrnBase.NLeoClick(Sender: TObject);
  function FindTag(Tag: Integer): Integer;
  var
    i: Integer;
  begin
    i := -1;
    repeat
      inc(i);
    until ((DXMasterView.Columns[i].Tag = Tag) Or (DXMasterView.ColumnCount = i));
    FindTag := i;
  end;

begin
  If (Sender as TMenuItem).Checked then
    begin
      DXMasterView.Columns[FindTag((Sender as TMenuItem).Tag)].Visible := False;
      (Sender as TMenuItem).Checked := False;
    end
  else
    begin
      DXMasterView.Columns[FindTag((Sender as TMenuItem).Tag)].Visible := True;
      (Sender as TMenuItem).Checked := True;
    end
end;

procedure TFrmPrnBase.popFilterPopup(Sender: TObject);
begin
  // Fix
  if Sender is TPopupMenu then
    begin
      if TPopupMenu(Sender).PopupComponent is TcxGridDBTableView then
        if Assigned(DXMasterView) then
          BrowseFields(Pedia);
      if TPopupMenu(Sender).PopupComponent is TcxGridDBTableView then
        begin
          DXMasterView     := TcxGridDBTableView(TPopupMenu(Sender).PopupComponent);
          DBGridMasterView := Nil;
        end;
      if TPopupMenu(Sender).PopupComponent is TDBGrid then
        begin
          DBGridMasterView := TDBGrid(TPopupMenu(Sender).PopupComponent);
          DXMasterView     := Nil;
        end;
    end;
end;

procedure TFrmPrnBase.ExcelPopBtnClick(Sender: TObject);
begin
  if Assigned(DXMasterView) then
    Output2XLSdx(DXMasterView);
  if Assigned(DBGridMasterView) then
    Output2XLSDBG(DBGridMasterView);
end;

procedure TFrmPrnBase.FAllClick(Sender: TObject);
var
  i: Integer;
begin
  For i := (DXMasterView.ColumnCount - 1) downto 0 do
    begin
      DXMasterView.Columns[i].Visible         := True;
      Pedia.Items[i + FirstFreePedia].Checked := True;
    end
end;

procedure TFrmPrnBase.FNoneClick(Sender: TObject);
var
  i: Integer;
begin
  For i := (DXMasterView.ColumnCount - 1) downto 0 do
    begin
      DXMasterView.Columns[i].Visible         := False;
      Pedia.Items[i + FirstFreePedia].Checked := False;
    end;
end;

procedure TFrmPrnBase.actBestFitClick(Sender: TObject);
begin
  if Assigned(DXMasterView) then
    if DXMasterView is TcxGridDBTableView then
      begin
        TcxGridDBTableView(DXMasterView).OptionsBehavior.BestFitMaxRecordCount := 10;
        TcxGridDBTableView(DXMasterView).ApplyBestFit();
      end;
end;

procedure TFrmPrnBase.actDispAllActionsExecute(Sender: TObject);
var
  x: Integer;
  leo: TStringList;
begin
  leo   := TStringList.Create;
  for x := 0 to Self.ComponentCount - 1 do
    begin
      if Self.Components[x] is TAction then
        // leo.Add(TAction(Self.Components[x]).Name);
        leo.Add(TAction(Self.Components[x]).Name + ' | ' + TAction(Self.Components[x]).Caption + ' | ' + TAction(Self.Components[x]).Category);
    end;

  MessageDlg(leo.Text, mtCustom, [mbOK], 0);
  leo.Free;
end;

procedure TFrmPrnBase.actUpdBrowseExecute(Sender: TObject);
var
  vat: TComponent;
begin
  vat := Self.FindComponent('qryTran');
  if Assigned(vat) then
    if vat is TCustomADODataSet then
      UpdTostBrowse(Self.Name, TCustomADODataSet(vat));
end;

procedure TFrmPrnBase.BrowseFields(var LeoMenu: TMenuItem);
Var
  i, x: Integer;
  NewMenu: TMenuItem;
begin
  for x := (FirstFreePedia + 1) to LeoMenu.Count - 1 do
    LeoMenu.Delete((FirstFreePedia + 1));
  For i := 0 to (DXMasterView.ColumnCount - 1) do
    begin
      NewMenu                     := TMenuItem.Create(Self);
      NewMenu.Caption             := DXMasterView.Columns[i].Caption;
      NewMenu.Tag                 := i;
      DXMasterView.Columns[i].Tag := i;
      NewMenu.Checked             := DXMasterView.Columns[i].Visible;
      NewMenu.OnClick             := NLeoClick;
      LeoMenu.Add(NewMenu);
    end;
end;

procedure TFrmPrnBase.FormActivate(Sender: TObject);
begin
  if Assigned(DXMasterView) then
    BrowseFields(Pedia);
end;

procedure TFrmPrnBase.FMasterViewSet(ToMV: TcxGridDBTableView);
begin
  FMasterView := ToMV;
end;

procedure TFrmPrnBase.FSaveGridClick(Sender: TObject);
var
  St: TStringStream;
begin
  if Assigned(DXMasterView) then
    if DXMasterView is TcxGridDBTableView then
      begin
        St := TStringStream.Create;
        TcxGridDBTableView(DXMasterView).StoreToStream(St);
        DMMain.NewVariantCx(Self, Self.ClassName, St);
        St.Free;
      end;
end;

procedure TFrmPrnBase.FLoadGridClick(Sender: TObject);
var
  St: TStringStream;
begin
  if Assigned(DXMasterView) then
    if DXMasterView is TcxGridDBTableView then
      begin
        St := TStringStream.Create;
        DMMain.GetVariantCx(Self, Self.ClassName, St);
        TcxGridDBTableView(DXMasterView).RestoreFromStream(St);
        St.Free;
      end;
end;

procedure TFrmPrnBase.PrnPopBtnClick(Sender: TObject);
var
  rep: TrptSubParams;
begin
  if Assigned(DXMasterView) then
    rep := TrptSubParams.CreateFromDev(Self, DXMasterView, Self.Caption);
  if Assigned(DBGridMasterView) then
    rep := TrptSubParams.CreateFrom(Self, DBGridMasterView, Self.Caption);
  try
    rep.Preview;
  finally;
    rep.Free;
  end;
end;

procedure TFrmPrnBase.SetDBGridMasterView(const Value: TDBGrid);
begin
  FDBGridMasterView := Value;
end;

procedure TFrmPrnBase.SetGridPivotId(const Value: Integer);
begin
  FGridPivotId := Value;
end;

procedure TFrmPrnBase.SetPFormID(const Value: Integer);
begin
  FPFormID := Value;
end;

procedure TFrmPrnBase.XMLPopBtnClick(Sender: TObject);
begin
  if Assigned(DXMasterView) then
    OutputXMLdx(DXMasterView.DataController.DataSet);
  if Assigned(DBGridMasterView) then
    OutputXMLdx(DBGridMasterView.DataSource.DataSet);
end;

procedure TFrmPrnBase.FormCreate(Sender: TObject);
var
  x: Integer;
  vat: TComponent;
begin
  // !!!
  // x:=ReturnFormId(Self.Name);
  // if x>0 then
  // SetPFormID(x);
  vat := Self.FindComponent('qryTran');
  if Assigned(vat) then
    if vat is TCustomADODataSet then
      UpdFromstBrowse(Self.Name, TCustomADODataSet(vat));
end;

/// /////////////////////////////////////////////////////////////////////////////
// procedure TfrmBaseDev0.BrowseFields(var LeoMenu:TMenuItem;SelDevGrid:TcxGridDBTableView=nil);
// Var
// i: Integer;
// NewMenu: TMenuItem;
// ComDevGrid:TcxGridDBTableView;
// begin
// if SelDevGrid = Nil then
// ComDevGrid:= PopupcxGridDBTableView
// else
// ComDevGrid:= SelDevGrid;
//
// if ComDevGrid = Nil then
// exit;
//
// LeoMenu.Clear;
// NewMenu         := TMenuItem.Create(self);
// NewMenu.Caption := 'ºÎ·';
// NewMenu.OnClick := FAllClick;
// LeoMenu.Add(NewMenu);
//
// NewMenu         := TMenuItem.Create(self);
// NewMenu.Caption := ' ·Ì›Ì·';
// NewMenu.OnClick := FNoneClick;
// LeoMenu.Add(NewMenu);
//
// NewMenu         := TMenuItem.Create(self);
// NewMenu.Caption := '-';
// LeoMenu.Add(NewMenu);
//
// for i := 0 to (ComDevGrid.ColumnCount - 1) do
// begin
// NewMenu         := TMenuItem.Create(self);
// NewMenu.Caption := ComDevGrid.Columns[i].Caption;
// NewMenu.Tag     := i;
// NewMenu.Checked := ComDevGrid.Columns[i].Visible;
// NewMenu.Hint    := ComDevGrid.Columns[i].DataBinding.FieldName;
// NewMenu.OnClick := NLeoClick;
// LeoMenu.Add(NewMenu);
// end;
// end;
//
// procedure TfrmBaseDev0.FAllClick(Sender: TObject);
// var
// i: Integer;
// begin
// For i:=0 to PopupcxGridDBTableView.ColumnCount -1 do
// begin
// PopupcxGridDBTableView.Columns[i].Visible:=True;
// Pedia.Items[i+3].Checked:=True;
// end
// end;
//
// procedure TfrmBaseDev0.FNoneClick(Sender: TObject);
// var
// i: Integer;
// begin
// For i:=0 to PopupcxGridDBTableView.ColumnCount -1 do
// begin
// PopupcxGridDBTableView.Columns[i].Visible:=False;
// Pedia.Items[i+3].Checked:=False;
// end;
// end;

procedure TFrmPrnBase.N2Click(Sender: TObject);
var
  i: Integer;
begin
  For i := (DXMasterView.ColumnCount - 1) downto 0 do
    begin
      if DXMasterView.Columns[i].Visible = True then
        // DXMasterView.Columns[i].FieldName
        // Write Form Variant field
        Pedia.Items[i + 5].Checked := True;
    end
end;

procedure TFrmPrnBase.Pivot1Click(Sender: TObject);
var
  x, i, y, DispFCnt: Integer;
  Sheet: Variant;
  CodeSheet: Variant;
  XLApp: Variant;
  FldName: String;
  FieldsArr: Array [1 .. 100] of Integer;
  FromGrid: TcxGridDBTableView;
  LocalPath: string;
  VerS: Variant;

  LCID: Integer;
  XLFile: TFileName;

begin
  DMMain.qrystGrid_Pivot.Active := False;
  DMMain.qrystGrid_Pivot.Parameters.ParamByName('ParamGrid').Value := GridPivotId;
  DMMain.qrystGrid_Pivot.Active := True;

  if DMMain.qrystGrid_Pivot.IsEmpty then
    begin
      MessageDlg('No Pivots Found for Grid Id ' + IntToStr(GridPivotId), mtInformation, [mbOK], 0);
      Pivot1.Enabled := False;
      Exit;
    end;

  FromGrid := DXMasterView;
  DoCursorPush(crSQLWait);
  FromGrid.DataController.DataSource.DataSet.DisableControls;
  FromGrid.DataController.DataSource.DataSet.First;
  XLApp := CreateOleObject('Excel.Application');

  // VerS:=XLApp.Application.Version;

  // MessageDlg(VerS, mtCustom, [mbOK], 0);

  // XLApp.Workbooks.Open('c:\leo.xls' );

  // XLApp.Visible := True;
  XLApp.Visible := False;
  // XLApp.Workbooks.Add(xlWBatWorkSheet);
  // 19052014    XLApp.Workbooks.Add();
  XLApp.Workbooks.Add();
  XLApp.Workbooks[1].WorkSheets[1].Name := 'Delphi Data';
  Sheet                                 := XLApp.Workbooks[1].WorkSheets['Delphi Data'];

  y := FromGrid.ColumnCount - 1;

  DispFCnt := 0;

  for x := 0 to y do
    if FromGrid.Columns[x].Visible = True then
      begin
        DispFCnt            := DispFCnt + 1;
        FieldsArr[DispFCnt] := x;
      end;

  if DispFCnt = 0 then
    Exit;

  i := 1;

  for x := 1 to DispFCnt do
    begin
      y                 := FieldsArr[x];
      FldName           := FromGrid.Columns[y].DataBinding.FieldName;
      Sheet.Cells[1, x] := FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).DisplayLabel;
      // sheet.cells[1,x].interior.colorindex := 6;
      Sheet.Cells[1, x].font.Name := 'Arial';
      // sheet.cells[1,x].font.FontStyle := '∏ÌÙÔÌ·';
      Sheet.Cells[1, x].font.FontStyle     := 'Bold';
      Sheet.Cells[1, x].font.Size          := 12;
      Sheet.Cells[1, x].font.Strikethrough := False;
      Sheet.Cells[1, x].font.Superscript   := False;
      Sheet.Cells[1, x].font.Subscript     := False;
      Sheet.Cells[1, x].font.OutlineFont   := False;
      Sheet.Cells[1, x].font.Shadow        := False;
      Sheet.Cells[1, x].font.Underline     := False;
      // sheet.cells[1,x].font.ColorIndex := xlAutomatic;
    end;

  i := 2;

  try
    repeat
      for x := 1 to DispFCnt do
        begin
          y       := FieldsArr[x];
          FldName := FromGrid.Columns[y].DataBinding.FieldName;
          if FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).ClassType = TBCDField then
            begin
              Sheet.Cells[i, x].NumberFormat := '#.##0,00 Ä';
              Sheet.Cells[i, x]              := FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).AsFloat;
            end
          else if FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).ClassType = TFloatField then
            begin
              Sheet.Cells[i, x].NumberFormat := '###.###.##0,00';
              Sheet.Cells[i, x]              := FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).AsFloat;
            end
          else if FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).ClassType = TIntegerField then
            begin
              Sheet.Cells[i, x] := FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).AsInteger;
            end
          else if FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).ClassType = TDateTimeField then
            begin
              Sheet.Cells[i, x] := FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).AsDateTime;
            end
          else
            Sheet.Cells[i, x] := FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).AsString;
        end;
      i := i + 1;
      FromGrid.DataController.DataSource.DataSet.Next;
    until FromGrid.DataController.DataSource.DataSet.Eof finally FromGrid.DataController.DataSource.DataSet.EnableControls;
  end;
  // Dim VBProj As Object
  // Dim VBEPart As Object
  // Dim aCodeMod As CodeModule
  // ' more dims, as needed
  //
  // ' initialize
  // Set VBProj = ActiveWorkbook.VBProject
  // Set VBEPart = Application.VBE.ActiveVBProject.VBComponents
  // Set aCodeMod = VBEPart.CodeModule
  // ' Now fetch the desired stuff from a file
  // ' If you have a package of code, not sub by sub, but the complete module
  // ' Would have been nifty to give it a name, haven't found that, though.
  // aCodeMod.AddFromFile(<fully qualified file name As string>)
  // ...
  // ' more of your coding
  //

  // XLApp.

  // var
  // LCID : Integer;
  // XLFile : TFileName;
  // begin
  // LCID := GetUserDefaultLCID;
  // XLFile := 'BOM.xls';
  //
  // with ExcelApplication1 do
  // begin
  // connect;
  // try
  // visible[LCID] := true;
  // Workbooks.Add(EmptyParam,LCID);
  // Run(XLFile + '!CreateExcelBOM1()');
  // finally
  // Disconnect;
  // end;
  // end;
  // end;

  LCID := GetUserDefaultLCID;
  // XLFile := 'BOM.xls';

  // XLApp.visible[LCID] := true;
  // XLApp.Workbooks.Add(EmptyParam,LCID);

  // XLApp.Run(chr(39)+'.\XlsMacros\leo.xls'+chr(39)+'!CreateExcelBOM2');
  // XLApp.Run(chr(39)+'c:\leo.xls'+chr(39)+'!CreateExcelBOM2');

  LocalPath := ExtractFilePath(Application.ExeName) + 'XlsMacros\';

  // try
  // if MessageDlg('Ã≈—Ã…√ «” ”‘¡’—œ”', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  // XLApp.Run(chr(39)+LocalPath+'leo.xls'+chr(39)+'!CreateExcelBOM2');
  // if MessageDlg('Station / Pelaths - Product', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  // XLApp.Run(chr(39)+LocalPath+'leo.xls'+chr(39)+'!StationPelathsProduct');
  // if MessageDlg('Station - Product', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  // XLApp.Run(chr(39)+LocalPath+'leo.xls'+chr(39)+'!StationProduct');
  // if MessageDlg('Merchant - Product', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  // XLApp.Run(chr(39)+LocalPath+'leo.xls'+chr(39)+'!MerchantProduct');
  // except
  // on E: Exception do
  // MessageDlg(E.Message, mtError, [mbOK], 0);
  // end;

  try
    DMMain.qrystGrid_Pivot.First;
    repeat
      if MessageDlg(DMMain.qrystGrid_PivotExcelMacroDispName.AsString, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        XLApp.Run(chr(39) + LocalPath + DMMain.qrystGrid_PivotExcelMacroFile.AsString + chr(39) + '!' + DMMain.qrystGrid_PivotExcelMacroName.AsString);
      DMMain.qrystGrid_Pivot.Next;
    until DMMain.qrystGrid_Pivot.Eof;
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;





  // CodeSheet:=XLApp.VBProject;
  // CodeSheet:=XLApp.VBE.ActiveVBProject.VBComponents;
  // CodeSheet:=XLApp.VBEPart.CodeModule;

  DoCursorPop;

  MessageDlg('Export Done.', mtWarning, [mbOK], 0);

  XLApp.Visible := True;

end;

end.
