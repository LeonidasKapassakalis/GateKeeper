unit FBaseDev;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FSubMdiChild, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons, DBase,
  Gradpan, ExtPage, DBCtrls, FReports, Globals, Db, ExtDlgs, Menus,
  FSearch, ActnList, StrUtils, Variants, ToolWin, ImgList, RBaseADO,
  FDefineQOrder, FFilterEnDev, ADODB, ComObj, OleCtrls, OleServer,
  Excel2000, FSearchDev2,
  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridExportLink, cxExport, cxNavigator;

type
  TfrmBaseDev = class(TfrmSubMdiChild)
	panTop: TGradPan;
	pcPage: TExtPageControl;
	tsMain: TTabSheet;
	tsDetail: TTabSheet;
	panClient01: TGradPan;
	panClient02: TGradPan;
	dbtMain: TDBText;
    popFilter: TPopupMenu;
    pmsFilter: TMenuItem;
    pmsCancelFilter: TMenuItem;
    MC1: TMenuItem;
    N2: TMenuItem;
    popfilterDis: TMenuItem;
    ActionList1: TActionList;
    Insert: TAction;
    Update: TAction;
    Delete: TAction;
    Post: TAction;
    Cancel: TAction;
    Refresh: TAction;
    Before: TAction;
    After: TAction;
    actPrint: TAction;
    Stat: TAction;
    MC2: TMenuItem;
    N4: TMenuItem;
    Detail: TAction;
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N1111: TMenuItem;
    N2221: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    UpdateActions: TAction;
    UpdateActions1: TMenuItem;
    N14: TMenuItem;
    UpdateFields: TAction;
    N15: TMenuItem;
    MC3: TMenuItem;
    Pedia: TMenuItem;
    MC4: TMenuItem;
    FAll: TMenuItem;
    FNone: TMenuItem;
    MC5: TMenuItem;
    Indexes: TMenuItem;
    MC6: TMenuItem;
    NNone: TMenuItem;
    IndDisp: TMenuItem;
    PediaIdx: TMenuItem;
    PediaIdxActive: TMenuItem;
    MC7: TMenuItem;
    Next: TAction;
    Previous: TAction;
    Close: TAction;
    NClose: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ImageList1: TImageList;
    ModalOk: TAction;
    ModalCancel: TAction;
    ToolButton17: TToolButton;
    N44: TMenuItem;
    NPrev: TMenuItem;
    NNext: TMenuItem;
    NUnder2: TMenuItem;
    actExportToXl: TMenuItem;
    actPrintForm: TAction;
    actPrintForm1: TMenuItem;
    cxdataDBTableView1: TcxGridDBTableView;
    cxdataLevel1: TcxGridLevel;
    cxdata: TcxGrid;
	procedure FormCreate(Sender: TObject);
	procedure btnDetailClick(Sender: TObject);
	procedure dgDataDrawColumnCell(Sender: TObject; const Rect: TRect;
	  DataCol: Integer; Column: TColumn; State: TGridDrawState);
	procedure FormClose(Sender: TObject; var Action: TCloseAction);
	procedure btnOkClick(Sender: TObject);
	procedure btnCancelClick(Sender: TObject);
  procedure pmsFilterClick(Sender: TObject);
  procedure BBAccClick(Sender: TObject);
  procedure BBCancelClick(Sender: TObject);
  procedure pmsCancelFilterClick(Sender: TObject);
    procedure dgDataEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure N2Click(Sender: TObject);
    procedure popfilterDisClick(Sender: TObject);
    procedure InsertExecute(Sender: TObject);
    procedure UpdateExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure PostExecute(Sender: TObject);
    procedure CancelExecute(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure DetailExecute(Sender: TObject);
    procedure ActionList1Execute(Action: TBasicAction;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure AfterExecute(Sender: TObject);
    procedure BeforeExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UpdateActionsExecute(Sender: TObject);
    procedure UpdateFieldsExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FAllClick(Sender: TObject);
    procedure FNoneClick(Sender: TObject);
    procedure FAllDevClick(Sender: TObject);
    procedure FNoneDevClick(Sender: TObject);
    procedure NLeoClick(Sender: TObject);
    procedure NLeoDevClick(Sender: TObject);
    procedure NLeo1Click(Sender: TObject);
    procedure NLeo1DevClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure NNoneClick(Sender: TObject);
    procedure IndDispClick(Sender: TObject);
    procedure PediaIdxActiveClick(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure PreviousExecute(Sender: TObject);
    procedure dgDataColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure CloseExecute(Sender: TObject);
    procedure ModalOkExecute(Sender: TObject);
    procedure ModalCancelExecute(Sender: TObject);
    procedure dgDataTitleClick(Column: TColumn);
    procedure SaveAdoParameters(Var ParametersArray, ValuesArray: Variant;
      CountParameters:Integer; Query: TAdoQuery);
    procedure ReturnAdoParameters(ParametersArray, ValuesArray: Variant;
      CountParameters:Integer; Query: TAdoQuery);
    procedure ClearMarks;
    procedure actExportToXlClick(Sender: TObject);
    procedure actPrintFormExecute(Sender: TObject);
    procedure cxdataEnter(Sender: TObject);
    procedure cxdataActiveTabChanged(Sender: TcxCustomGrid;
      ALevel: TcxGridLevel);
    procedure popFilterPopup(Sender: TObject);
  private
	FModal      : boolean;
  FCreated    : boolean;
  FIndexAct   : boolean;
	FPageFlag   : Boolean;
  LeoDefSQL   : String;
  LeoDefIndex : String;
  LeoSQIndex  : String;
	FPages : array[False..True] of TTabSheet;
	FButtonCaptions : array[False..True] of string;
  FltGrid : TObject;
  FFormStyle: TFormStyle;
  FVisible: boolean;
  FPosition: TPosition;
  FFilteredcxGrid: TcxGrid;

	procedure AdjustDBNavigator;
	procedure SetFormStyle( value:TFormStyle );
	function GetFormStyle : TFormStyle;
	procedure SetFormVisible( value:boolean );
	function GetFormVisible : boolean;
	procedure SetPosition( value:TPosition );
	function GetPosition : TPosition;
	function AskDelete : boolean;
	function DoOnPageChange : boolean;
    procedure SetVisible(const Value: boolean);
    procedure OutputFileCxGrid(FilteredcxGrid: TcxGrid);
    procedure SetFilteredcxGrid(const Value: TcxGrid);
    procedure OutputFileDev(FilteredcxGrid: TcxGrid);
  protected
	FDM : TDMBase;
	GridColor1 : TColor;
	GridColor2 : TColor;
        FilSelected: Boolean;
        FilFrom    : String;
        FilTo      : String;
        FilField   : String;
        FilTField  : String;
//      PFormName  : String;
        PFormID    : Integer;
	function  CreateDataModule : TDMBase; virtual; abstract;
	function  CreateReportForm : TfrmReports; virtual; abstract;
	function  DisplaySpecificID(MainId:Integer):Boolean; virtual; abstract;
	procedure TogglePage;
	procedure DataModuleStateChange( Sender:TObject );
	procedure SelectImage( dlg:TOpenPictureDialog ; field:TBlobField );
  procedure BrowseIndex(var LeoMenu:TMenuItem);
  procedure BrowseFields(var LeoMenu:TMenuItem);
  procedure BrowseDevFields(var LeoMenu:TMenuItem);
  procedure BrowseFieldsIdx(var LeoMenu:TMenuItem);
  procedure SecMenuTableOnClick(Sender: TObject);
  procedure SecMenuQueryOnClick(Sender: TObject);
  procedure UncheckIndexes();
  function  FindFieldsForIndex(LeoMenu:TMenuItem):string;
  function  SetQIndexFields(LeoMenu:TMenuItem):string;
  public
  PFormName  : String;
  PActionCanceled:Boolean;
	OnPageChange : TOnPageChangeEvent;
	constructor CreateModal( aowner:TComponent;FormID:Integer);
  constructor CreateSecurity(aowner:TComponent;FormID:Integer);
  constructor CreateSecurityID(aowner:TComponent;FormID:Integer;MainId:Integer);
	property  DM : TDMBase read FDM;
  property  Created : Boolean read FCreated write FCreated;
  property  IndexAct : Boolean read FIndexAct write FIndexAct;
  property  FilteredGrid:TObject read FltGrid write FltGrid;
  property  FilteredcxGrid:TcxGrid read FFilteredcxGrid write SetFilteredcxGrid;
  procedure SetState(const LeoCategory:String);
  procedure PlusState(const LeoCategory:String);
  procedure SetStatusText(Text:String;Index:Integer);
  procedure SetGrid( Grid:TComponent ; OnOff : Boolean);
  published
	property FormStyle : TFormStyle read FFormStyle write SetFormStyle;
	property Visible : boolean read FVisible write SetVisible;
	property Position : TPosition read FPosition write SetPosition;
  end;

var
  frmBaseDev: TfrmBaseDev;


implementation

uses
	AlertU, ResStr, DbTables,FFilter, RSubParams, FMain, DMain;

{$R *.DFM}

const
	NavHints : array[0..9] of string =
	( 'Πρώτη εγγραφή','Προηγούμενη εγγραφή','Επόμενη εγγραφή','Τελευταία εγγραφή',
	  'Εισαγωγή','Διαγραφή','Μεταβολή','Καταχώρηση','Ακύρωση','Ανανέωση');

constructor TfrmBaseDev.CreateModal( aowner:TComponent;FormID:Integer);
begin
        Created := False;
        IndexAct:= False;
	FModal  := True;
        PFormID := FormID;
        if DMMain.FindFormName(FormId,PFormName) then
           Create( aowner )
        else
           exit;
end;

constructor TfrmBaseDev.CreateSecurity(aowner:TComponent;FormID:Integer);
begin
        Created := False;
        IndexAct:= False;
        PFormID := FormID;
        if DMMain.FindFormName(FormId,PFormName) then
           Create( aowner )
        else
           exit;
end;

procedure TfrmBaseDev.SetState(const LeoCategory:String);
var i:Integer;
    LeoS:String;
begin
for i:= 0 to ActionList1.ActionCount -1  do
begin
 if ActionList1.Actions[i].Category=LeoCategory then
  begin
    TCustomAction(ActionList1.Actions[i]).Visible:=True;
    TCustomAction(ActionList1.Actions[i]).Enabled:=True;
  end
 else
  begin
    TCustomAction(ActionList1.Actions[i]).Visible:=False;
    TCustomAction(ActionList1.Actions[i]).Enabled:=False;
  end;
 if ((LoginGroup <> 0) And (ActionList1.Actions[i].Tag = 9999)) then
     TCustomAction(ActionList1.Actions[i]).Visible:=False;
end;
if (FModal and (LeoCategory='Before')) then
    PlusState('Modal');
end;

procedure TfrmBaseDev.PlusState(const LeoCategory:String);
var i:Integer;
begin
for i:= 0 to ActionList1.ActionCount -1  do
  if ActionList1.Actions[i].Category=LeoCategory then
    begin
     TCustomAction(ActionList1.Actions[i]).Visible:=True;
     TCustomAction(ActionList1.Actions[i]).Enabled:=True;
    end;
end;

procedure TfrmBaseDev.DataModuleStateChange( Sender:TObject );
begin
//
end;

procedure TfrmBaseDev.SelectImage( dlg:TOpenPictureDialog ; field:TBlobField );
var
	stream : TBlobStream;
	image : TPicture;
	ds : TDataSet;
begin
	image := nil;
	stream := nil;
	ds := field.Dataset;
	try
		if dlg.Execute then begin
			if (ds.State = dsBrowse) then
				if ds.Eof and ds.Bof then
					ds.Insert
				else
					ds.Edit;
			image := TPicture.Create;
			stream := TBlobStream.Create( field, bmWrite );
			stream.Position := 0;
			image.LoadFromFile( dlg.FileName );
			image.Graphic.SaveToStream( stream );
		end;
	finally
		image.Free;
		stream.Free;
	end;
end;

procedure TfrmBaseDev.SetFilteredcxGrid(const Value: TcxGrid);
begin
  FFilteredcxGrid := Value;
end;

procedure TfrmBaseDev.SetFormStyle( value:TFormStyle );
begin
	if FModal then
		inherited FormStyle := fsNormal
	else
		inherited FormStyle := value;
end;

function TfrmBaseDev.GetFormStyle : TFormStyle;
begin
	Result := inherited FormStyle;
end;

procedure TfrmBaseDev.SetFormVisible( value:boolean );
begin
	if FModal then
		inherited Visible := False
	else
		inherited Visible := value;
end;

function TfrmBaseDev.GetFormVisible : boolean;
begin
	Result := inherited Visible;
end;

procedure TfrmBaseDev.SetPosition( value:TPosition );
begin
	if FModal then
		inherited Position := poScreenCenter
	else
		inherited Position := value;
end;

function TfrmBaseDev.GetPosition : TPosition;
begin
	Result := inherited Position;
end;

procedure TfrmBaseDev.AdjustDBNavigator;
var
	n, i : Integer;
begin
	for n := 0 to ControlCount - 1 do
		if Controls[n] is TDBNavigator then
			for i := 0 to TDBNavigator(Controls[n]).Hints.Count - 1 do
				TDBNavigator(Controls[n]).Hints[i] := NavHints[i];
end;

procedure TfrmBaseDev.FormCreate(Sender: TObject);
var LLeft,LWidth,LTop,LHeight,State,i:Integer;
    Filter,Index,DataSource:String;
begin
  inherited;
        frmMain.ReadIniSub(PFormName,LLeft,LWidth,LTop,LHeight,State);
// Ver 3.0
//        frmMain.ReadGrid(PFormName,dgData,Filter,Index,DataSource);
	GridColor1 := clWindow;
	GridColor2 := RGB( 143, 198, 103 );
	AdjustDBNavigator;
// Ver 3.0
//        dgData.Font     :=frmMain.AppFonts[2];
        dbtMain.Color   :=frmMain.AppColors[3];
        dbtMain.Font    :=frmMain.AppFonts[3];

        for i := 0 to ActionList1.ActionCount -1 do
        begin
          if ActionList1.Actions[i] is TCustomAction then
            if TCustomAction(ActionList1.Actions[i]).Hint = '' then
               TCustomAction(ActionList1.Actions[i]).Hint := TCustomAction(ActionList1.Actions[i]).Caption;
        end;

{        self.Left:=Left;
        self.Width:=Width;
        self.Top:=Top;
        self.Height:=Height;}
        if LWidth > 0 then
           SetBounds(LLeft,LTop,LWidth,LHeight);
//	if not FModal then begin
//		btnOk.Visible := False;
//		btnCancel.Visible := False;
//		btnOk.Anchors := [akLeft,akBottom];
//		btnCancel.Anchors := [akLeft,akBottom];
//	end;

	FPages[False] := tsMain;
	FPages[True] := tsDetail;
	FButtonCaptions[False] := SCMain;
	FButtonCaptions[True] := SCDetail;
	pcPage.ActivePage := FPages[FPageFlag];


  FDM := CreateDataModule;
	FDM.OnStateChange := DataModuleStateChange;

//Ver 3.0
//        if dgData.DataSource=nil then
//           dgData.DataSource:=TDataSource(FDM.FindComponent(Datasource));
//
//        if Filter > '' then
//        begin
//          dgData.DataSource.DataSet.Filter  :=Filter;
//          dgData.DataSource.DataSet.Filtered:=True;
//        end;
//        if dgData.DataSource.DataSet is TTable then
//          TTable(dgData.DataSource.DataSet).IndexName:=Index;

        SetState('Before');
end;

function TfrmBaseDev.DoOnPageChange : boolean;
begin
	Result := True;
	if Assigned(OnPageChange) then
		OnPageChange( Result );
end;

procedure TfrmBaseDev.TogglePage;
begin
	if DoOnPageChange then begin
		FPageFlag := not FPageFlag;
		pcPage.ActivePage := FPages[FPageFlag];
//		btnDetail.Caption := FButtonCaptions[FPageFlag];
	end;
end;

procedure TfrmBaseDev.btnDetailClick(Sender: TObject);
begin
  inherited;
	if (DM <> nil) then
           DM.BrowseData;
	TogglePage;

end;

procedure TfrmBaseDev.dgDataDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
	dg : TDbGrid;
begin
{  inherited;
	if Column.Field = nil then
		Exit;
	if not (gdSelected in State) then begin
		dg := Sender as TDbGrid;
		if dg.DataSource.DataSet.RecNo mod 2 <> 0 then // begin
			dg.Canvas.Brush.Color:= GridColor1
		else
			dg.Canvas.Brush.Color:= GridColor2;
		dg.Canvas.FillRect( Rect );
		dg.Canvas.TextOut( Rect.Left + 2, Rect.Top + 2, Column.Field.AsString );
//	end;
	end;}
end;

procedure TfrmBaseDev.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	if not FModal then
		inherited;
//DMMain.ReleaseLock(LoginName,dbtMain.DataSource.DataSet,PFormName);
end;

procedure TfrmBaseDev.btnOkClick(Sender: TObject);
begin
  inherited;
	ModalResult := mrOk;
end;

procedure TfrmBaseDev.btnCancelClick(Sender: TObject);
begin
  inherited;
	ModalResult := mrCancel;
end;

function TfrmBaseDev.AskDelete : boolean;
begin
	Result := sAlert( mtConfirmation, SCADeleteRecord, 2 ) = 1;
end;

procedure TfrmBaseDev.pmsFilterClick(Sender: TObject);
var frm : TfrmFilterEnDev;
begin
  inherited;

  MessageDlg(TcxGridDBTableView(FilteredcxGrid.ActiveView).Datacontroller.Filter.FilterCaption, mtWarning, [mbOK], 0);
  MessageDlg(TcxGridDBTableView(FilteredcxGrid.ActiveView).Datacontroller.Filter.FilterText , mtWarning, [mbOK], 0);

//	if (popFilter.PopupComponent is TcxGridDBTableView ) then
           begin
//              if (popFilter.PopupComponent is TcxGridDBTableView ) then
              		frm := TfrmFilterEnDev.CreateWithParam( Self,TcxGridDBTableView(FilteredcxGrid.ActiveView), DM );
                  //TcxGrid(popFilter.PopupComponent)
                  //TcxGridDBTableView(FilteredcxGrid(popFilter.PopupComponent).ActiveView)
                try
                		    frm.ShowModal;
                    if ((frm.ModalResult = mrOk)) then
                       begin
                       if cxdataDBTableView1.Datacontroller.DataSource.DataSet.Filter > '' then
                          TcxGridDBTableView(FilteredcxGrid.ActiveView).Datacontroller.DataSource.DataSet.Filter := cxdataDBTableView1.Datacontroller.DataSource.DataSet.Filter + ' AND ' + frm.KSleo
//                          TcxGrid(FilteredGrid).DataSource.DataSet.Filter:=TDBGrid(FilteredGrid).DataSource.DataSet.Filter + ' AND ' + frm.KSleo
                       else
                        TcxGridDBTableView(FilteredcxGrid.ActiveView).Datacontroller.Filter.FilterText    := frm.KsLeo;

//                        TcxGridDBTableView(FilteredcxGrid.ActiveView).Datacontroller.DataSource.DataSet.Filter := frm.ksleo;
//                        TcxGridDBTableView(FilteredcxGrid.ActiveView).Datacontroller.DataSource.DataSet.Filtered:=True;
                      end;
		finally
			frm.Free;
		end;
	end;
end;

procedure TfrmBaseDev.BBAccClick(Sender: TObject);
begin
  DM.UpdateData;
  DM.OnStateChange(Sender);
end;

procedure TfrmBaseDev.BBCancelClick(Sender: TObject);
begin
  DM.CancelData;
  DM.OnStateChange(Sender);
end;

procedure TfrmBaseDev.pmsCancelFilterClick(Sender: TObject);
begin
  inherited;
if FilteredGrid is TDBGrid then
   begin
     TDBGrid(FilteredGrid).DataSource.DataSet.Filtered:=False;
     TDBGrid(FilteredGrid).DataSource.DataSet.Filter:='';
   end
end;

procedure TfrmBaseDev.dgDataEnter(Sender: TObject);
begin
  inherited;
   Self.FilteredGrid:=Self.cxData;
   FilteredGrid:=cxData;
   BrowseIndex(Indexes);
   BrowseFields(Pedia);
   BrowseFieldsIdx(PediaIdx);
   IndexAct:=True;
end;

procedure TfrmBaseDev.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then                              { if it's an enter key }
    if not (ActiveControl is TDBGrid) then begin { if not on a TDBGrid }
      Key := #0;                                 { eat enter key }
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
    end
    else if (ActiveControl is TDBGrid) then      { if it is a TDBGrid }
      with TDBGrid(ActiveControl) do
        if selectedindex < (fieldcount -1) then  { increment the field }
          selectedindex := selectedindex +1
        else
          selectedindex := 0;

end;

procedure TfrmBaseDev.N2Click(Sender: TObject);
var frm:TfrmSearchDev2;
begin
  if FilteredcxGrid = Nil then
     exit;
  if popFilter.PopupComponent = Nil then
     popFilter.PopupComponent := TComponent(FilteredGrid);

  frm := TfrmSearchDev2.CreateWithParam( Self,TcxGridDBTableView(FilteredcxGrid.ActiveView), DM );
  frm.ShowModal;
  frm.Free;
end;

procedure TfrmBaseDev.popfilterDisClick(Sender: TObject);
begin
  inherited;
if popfilter.PopupComponent is TcxGrid then
        MessageDlg('Το ενεργό Φίλτρο είναι : ' + cxDataDBTableView1.DataController.DataSource.DataSet.Filter , mtInformation,[mbOk], 0)
{else
MessageDlg('Το ενεργό Φίλτρο είναι : ' + TDBGridEH(popfilter.PopupComponent).DataSource.DataSet.Filter
         , mtInformation,[mbOk], 0);}
end;

procedure TfrmBaseDev.popFilterPopup(Sender: TObject);
begin
  inherited;
   BrowseDevFields(Pedia);
end;

procedure TfrmBaseDev.InsertExecute(Sender: TObject);
begin
  inherited;
  PActionCanceled:=False;
  FPageFlag := False;
  TogglePage;
  SetState('After');
  if DM <> nil then
     DM.InsertRecord;
end;

procedure TfrmBaseDev.UpdateExecute(Sender: TObject);
begin
  inherited;
  FPageFlag := False;
  TogglePage;
//  pcPage.ActivePage := tsDetail;
  if DM <> nil then
     DM.UpdateRecord;
  SetState('After');
end;

procedure TfrmBaseDev.DeleteExecute(Sender: TObject);
begin
  inherited;
  if (DM <> nil) and AskDelete then
      DM.DeleteRecord;
end;

procedure TfrmBaseDev.actPrintExecute(Sender: TObject);
var
	frm : TfrmReports;
begin
  inherited;
  frm := CreateReportForm;
  if frm = nil then
     exit;
  try
     frm.DM := DM;
     frm.ShowModal;
  finally
     frm.Free;
  end;
end;

procedure TfrmBaseDev.PostExecute(Sender: TObject);
begin
  inherited;
  DM.UpdateData;
{ TODO : check ref }
  DM.OnStateChange(Sender);
  SetState('Before');
end;

procedure TfrmBaseDev.CancelExecute(Sender: TObject);
begin
  inherited;
  DM.CancelData;
  DM.OnStateChange(Sender);
  SetState('Before');
end;

procedure TfrmBaseDev.N4Click(Sender: TObject);
var rep:TrptSubParams;
begin
if ((popFilter.PopupComponent is TDBGrid )) then
    begin
    if (popFilter.PopupComponent is TDBGrid ) then
      if (popFilter.PopupComponent = cxdata) then
        rep:=TrptSubParams.CreateFrom(self,TComponent(popFilter.PopupComponent),self.Caption)
      else
        rep:=TrptSubParams.CreateFrom(self,TComponent(popFilter.PopupComponent),dbtMain.Caption);      
    rep.Preview;
    rep.Free;
    end
end;

procedure TfrmBaseDev.DetailExecute(Sender: TObject);
begin
  inherited;
	if (DM <> nil) then
           DM.BrowseData;
	TogglePage;
end;

procedure TfrmBaseDev.ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
if TAction(Action).Tag < 10 then
begin
 if DMMain.SearchSecurity(TAction(Action).Name,PFormID,0) then
    SetStatusText(TAction(Action).Hint,0)
 else
  begin
    SetStatusText('Μη Επιτρεπτή Ενέργεια! ' + TAction(Action).Name,0);
    Handled := True;
  end;
end;
end;

procedure TfrmBaseDev.SetStatusText(Text:String;Index:Integer);
begin
StatusBar1.Panels[Index].Text:=Text;
end;

procedure TfrmBaseDev.SetVisible(const Value: boolean);
begin
  FVisible := Value;
end;

procedure TfrmBaseDev.FormShow(Sender: TObject);
begin
  inherited;
Created:=True;
end;

procedure TfrmBaseDev.AfterExecute(Sender: TObject);
var i:integer;
begin
  inherited;
inc(i);
end;

procedure TfrmBaseDev.BeforeExecute(Sender: TObject);
var i:integer;
begin
  inherited;
inc(i);
end;

procedure TfrmBaseDev.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 13 then                              { if it's an enter key }
    if not (ActiveControl is TDBGrid) then begin { if not on a TDBGrid }
      Key := 0;                                 { eat enter key }
      Perform(WM_NEXTDLGCTL, 0, 0);              { move to next control }
    end

end;

procedure TfrmBaseDev.UpdateActionsExecute(Sender: TObject);
begin
  inherited;
  DMMain.UpdateActionsExecute(FormId,ActionList1);
end;

procedure TfrmBaseDev.UpdateFieldsExecute(Sender: TObject);
var i:integer;
begin
  inherited;
{DMMain.QFindFormID.Active:=False;
DMMain.QFindFormID.Parameters.ParamByName('Name').Value:='T' + self.Name;
DMMain.QFindFormID.Active:=True;
if Not DMMain.QFindFormID.IsEmpty then
   for i := 0 to ComponentCount - 1 do
   begin
     DMMain.Query1.Parameters.ParamByName('Form').Value:=DMMain.QFindFormIDID.AsInteger;
     DMMain.Query1.Parameters.ParamByName('Name').Value :=Components[i].Name;
     DMMain.Query1.Parameters.ParamByName('Type').Value :=Components[i].ClassName;
     DMMain.Query1.Parameters.ParamByName('ID').Value  :=CreateKey ( 'Fields' );
     DMMain.Query1.Parameters.ParamByName('HelpID').Value  :=0;
     DMMain.Query1.Parameters.ParamByName('Tag').Value  :=0;
     try
     DMMain.Query1.ExecSQL;
     except
        SetStatusText('Εχει ήδη ενημερωθεί το πεδίο ' + Components[i].Name,0);
     end;
   end;}
end;

procedure TfrmBaseDev.FormDestroy(Sender: TObject);
begin
  inherited;
frmMain.WriteIniSub(PFormName,self.Left,self.Width,self.Top,self.Height,0);
//Ver 3.0
//frmMain.WriteGrid(PFormName,cxData);
DMMain.UpdSecurity(PFormName);
end;

procedure TfrmBaseDev.BrowseFields(var LeoMenu:TMenuItem);
Var i,x    :Integer;
    NewMenu:TMenuItem;
begin
  x:=LeoMenu.Count -3;
  For i:=1 to x do
    begin
      LeoMenu.Delete(3);
    end;

  if Not(FilteredGrid is TdbGrid) then
       exit;

  For i:=0 to (TDBGrid(FilteredGrid)).Columns.Count - 1 do
   begin
     NewMenu        :=TMenuItem.Create(Self);
     NewMenu.Caption:=(TDBGrid(FilteredGrid)).Columns[i].Title.Caption;
     NewMenu.Tag    :=i;
     NewMenu.Checked:=(TDBGrid(FilteredGrid)).Columns[i].Visible;
     NewMenu.OnClick:=NLeoClick;
     NewMenu.Hint   :=(TDBGrid(FilteredGrid)).Columns[i].FieldName;
     LeoMenu.Add(NewMenu);
   end;
end;

procedure TfrmBaseDev.BrowseFieldsIdx(var LeoMenu:TMenuItem);
Var i,x      :Integer;
    NewMenu:TMenuItem;
begin
  x:=LeoMenu.Count -2;
  For i:=1 to x do
    begin
      LeoMenu.Delete(2);
    end;
  if Not(FilteredGrid is TdbGrid) then
       exit;


  For i:=0 to (TDBGrid(FilteredGrid).Columns.Count - 1 ) do
   begin
     if (TDBGrid(FilteredGrid)).DataSource.DataSet.FieldByName((TDBGrid(FilteredGrid)).Columns[i].FieldName).Tag = 0 then
       begin
         NewMenu        :=TMenuItem.Create(Self);
         NewMenu.Caption:=(TDBGrid(FilteredGrid)).Columns[i].Title.Caption;
         NewMenu.AutoHotkeys:=maManual;
         NewMenu.Tag    :=i;
         NewMenu.Checked:=False;
         NewMenu.OnClick:=NLeo1Click;
         NewMenu.Visible:=False;
         NewMenu.Hint   :=(TDBGrid(FilteredGrid)).Columns[i].FieldName;
         LeoMenu.Add(NewMenu);
       end;
   end;
end;

procedure TfrmBaseDev.BrowseIndex(var LeoMenu:TMenuItem);
Var
  i,x           :Integer;
  MySubItems    :TMenuItem;
begin
if Not(FilteredGrid is TDbGrid) then
   exit;

if (TDBGrid(FilteredGrid)).DataSource.DataSet is TTable then
 begin
  LeoDefIndex:=TTable((TDBGrid(FilteredGrid)).DataSource.DataSet).IndexName;
  IndDisp.Visible:=False;
  for x := 0 to TTable((TDBGrid(FilteredGrid)).DataSource.DataSet).IndexDefs.Count -1  do
   begin
     MySubItems := TMenuItem.Create(Self);
     MySubItems.Caption := TTable((TDBGrid(FilteredGrid)).DataSource.DataSet).IndexDefs[x].Name;
     MySubItems.Tag     := x;
     MySubItems.OnClick := SecMenuTableOnClick;
     LeoMenu.Add(MySubItems);
   end;
 end
{else
 begin
  LeoDefSql:=TQuery(FilteredGrid.DataSource.DataSet).Sql.Text;
  IndDisp.Visible:=True;
  for x := 0 to TQuery(FilteredGrid.DataSource.DataSet).Fields.Count -1  do
   begin
     MySubItems := TMenuItem.Create(Self);
     MySubItems.Caption := TQuery(FilteredGrid.DataSource.DataSet).Fields[x].DisplayLabel;
     MySubItems.Tag     := x;
     MySubItems.OnClick := SecMenuQueryOnClick;
     LeoMenu.Add(MySubItems);
   end;
 end;}
end;

procedure TfrmBaseDev.UncheckIndexes();
var i:integer;
begin
  for i :=0 to Indexes.Count -1 do
      Indexes.Items[i].Checked:=False;
end;


procedure TfrmBaseDev.SecMenuTableOnClick(Sender: TObject);
begin
TTable((TDBGrid(FilteredGrid)).DataSource.DataSet).IndexName:=TTable((TDBGrid(FilteredGrid)).DataSource.DataSet).IndexDefs.Items[(Sender as TMenuItem).Tag].Name;
UncheckIndexes();
(Sender as TMenuItem).Checked:=True;
end;

procedure TfrmBaseDev.SecMenuQueryOnClick(Sender: TObject);
var LeoS1,LeoS2,LeoS3:String;
    i:integer;
begin
(TDBGrid(FilteredGrid)).DataSource.DataSet.Active:=False;
LeoS1:=TQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Sql.Text;
LeoS2:=TQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Fields[(Sender as TMenuItem).Tag].Origin;
LeoS3:=TQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Fields[(Sender as TMenuItem).Tag].DisplayLabel;
LeoS2:=Copy(LeoS2,5,(length(LeoS2)-4));
System.Insert( (','+ LeoS2) ,LeoS1,( Length( LeoS1 ) - 1 ));
System.Insert( (LeoS3+' ') ,LeoSQIndex,( Length( LeoSQIndex )+1));
TQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Sql.Text:=LeoS1;
(TDBGrid(FilteredGrid)).DataSource.DataSet.Active:=True;
(Sender as TMenuItem).Checked:=True;
end;

procedure TfrmBaseDev.NLeoClick(Sender: TObject);
var Leo:String;
    x,y:Integer;
begin
//Indirect Menu Addressing
Leo:=(Sender as TMenuItem).Hint;
for x:= 0 to (TDBGrid(FilteredGrid)).Columns.Count -1 do
   if (TDBGrid(FilteredGrid)).Columns[x].FieldName = Leo then
      y:=x;

If (Sender as TMenuItem).Checked then
  begin
  (TDBGrid(FilteredGrid)).Columns[y].Visible:=False;
//FilteredGrid.Columns[((Sender as TMenuItem).Tag)].Visible:=False;
  (Sender as TMenuItem).Checked:=False;
  end
else
  begin
  (TDBGrid(FilteredGrid)).Columns[y].Visible:=True;
//FilteredGrid.Columns[((Sender as TMenuItem).Tag)].Visible:=True;
  (Sender as TMenuItem).Checked:=True;
  end
end;

procedure TfrmBaseDev.NLeo1Click(Sender: TObject);
begin
If (Sender as TMenuItem).Checked then
  (Sender as TMenuItem).Checked:=False
else
  (Sender as TMenuItem).Checked:=True;
end;


procedure TfrmBaseDev.FAllClick(Sender: TObject);
var i:integer;
begin
  For i:=0 to (TDBGrid(FilteredGrid)).Columns.Count -1 do
   begin
    (TDBGrid(FilteredGrid)).Columns[i].Visible:=True;
    Pedia.Items[i+3].Checked:=True;
   end
end;

procedure TfrmBaseDev.FNoneClick(Sender: TObject);
var i:Integer;
begin
  For i:=0 to (TDBGrid(FilteredGrid)).Columns.Count -1 do
  begin
    (TDBGrid(FilteredGrid)).Columns[i].Visible:=False;
    Pedia.Items[i+3].Checked:=False;
  end;
end;

procedure TfrmBaseDev.BrowseDevFields(var LeoMenu:TMenuItem);
Var i,x    :Integer;
    NewMenu:TMenuItem;
begin
  x:=LeoMenu.Count -3;
  For i:=1 to x do
    begin
      LeoMenu.Delete(3);
    end;

  For i:=0 to TcxGridDBTableView(FilteredcxGrid.ActiveView).ColumnCount - 1 do
   begin
     NewMenu        :=TMenuItem.Create(Self);
     NewMenu.Caption:=TcxGridDBTableView(FilteredcxGrid.ActiveView).Columns[i].Caption;
     NewMenu.Tag    :=i;
     NewMenu.Checked:=TcxGridDBTableView(FilteredcxGrid.ActiveView).Columns[i].Visible;
     NewMenu.OnClick:=NLeoDevClick;
     NewMenu.Hint   :=TcxGridDBTableView(FilteredcxGrid.ActiveView).Columns[i].DataBinding.FieldName;
     LeoMenu.Add(NewMenu);
   end;
end;

procedure TfrmBaseDev.NLeoDevClick(Sender: TObject);
var Leo:String;
    x,y:Integer;
begin
//Indirect Menu Addressing
Leo:=(Sender as TMenuItem).Hint;
for x:= 0 to TcxGridDBTableView(FilteredcxGrid.ActiveView).ColumnCount -1 do
   if TcxGridDBTableView(FilteredcxGrid.ActiveView).Columns[x].DataBinding.FieldName = Leo then
      y:=x;

If (Sender as TMenuItem).Checked then
  begin
   TcxGridDBTableView(FilteredcxGrid.ActiveView).Columns[y].Visible:=False;
//  (TDBGrid(FilteredGrid)).Columns[y].Visible:=False;
//FilteredGrid.Columns[((Sender as TMenuItem).Tag)].Visible:=False;
  (Sender as TMenuItem).Checked:=False;
  end
else
  begin
   TcxGridDBTableView(FilteredcxGrid.ActiveView).Columns[y].Visible:=True;
//  (TDBGrid(FilteredGrid)).Columns[y].Visible:=True;
//FilteredGrid.Columns[((Sender as TMenuItem).Tag)].Visible:=True;
  (Sender as TMenuItem).Checked:=True;
  end
end;

procedure TfrmBaseDev.NLeo1DevClick(Sender: TObject);
begin
If (Sender as TMenuItem).Checked then
  (Sender as TMenuItem).Checked:=False
else
  (Sender as TMenuItem).Checked:=True;
end;



procedure TfrmBaseDev.FAllDevClick(Sender: TObject);
var i:Integer;
begin
  For i:=0 to TcxGridDBTableView(FilteredcxGrid.ActiveView).ColumnCount -1 do
  begin
    TcxGridDBTableView(FilteredcxGrid.ActiveView).Columns[i].Visible:=True;
    Pedia.Items[i+3].Checked:=True;
  end;
end;

procedure TfrmBaseDev.FNoneDevClick(Sender: TObject);
var i:Integer;
begin
  For i:=0 to TcxGridDBTableView(FilteredcxGrid.ActiveView).ColumnCount -1 do
  begin
    TcxGridDBTableView(FilteredcxGrid.ActiveView).Columns[i].Visible:=False;
    Pedia.Items[i+3].Checked:=False;
  end;
end;

procedure TfrmBaseDev.FormActivate(Sender: TObject);
begin
if (Created and Not(IndexAct)) then
  begin
   FilteredGrid:=cxData;
   BrowseIndex(Indexes);
   BrowseFields(Pedia);
   BrowseFieldsIdx(PediaIdx);
   IndexAct:=True;
  end;
end;

procedure TfrmBaseDev.NNoneClick(Sender: TObject);
var LeoS,SLeo:String;
    i,z,x:integer;
    LeoV,LeoV1:Variant;
begin
ClearMarks;

if (TDBGrid(FilteredGrid)).DataSource.DataSet is TAdoQuery then
 begin
   x:=TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Parameters.Count;
   if x > 0 then
    begin
      LeoV1:=VarArrayCreate([0, x],VarVariant);
      LeoV:=VarArrayCreate([0, x],VarVariant);
      SaveAdoParameters(LeoV,LeoV1,x,TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet));
    end;
   LeoS:=TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text;
   i:=length(LeoS);
   z:=Pos('Order By ', LeoS );
   if z > 0 then
      System.Delete(LeoS,z,(i-z));
   TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text := LeoS;
   TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=False;
   if x > 0 then
    begin
      ReturnAdoParameters(LeoV,LeoV1,x,TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet));
    end;
   TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=True;
 end;
end;

procedure TfrmBaseDev.IndDispClick(Sender: TObject);
var LeoS,SLeo:String;
    i,z:integer;
    LeoV:Variant;
begin
if (TDBGrid(FilteredGrid)).DataSource.DataSet is TAdoQuery then
 begin
   LeoS:=TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text;
   z:=Pos('Order By ', LeoS );
   if z > 0 then
      begin
        System.Delete(LeoS,1,(z-1));
        MessageDlg(LeoS, mtInformation, [mbOK], 0);
      end
   else
      begin
        MessageDlg('No Order Found', mtInformation, [mbOK], 0);
      end
 end;
end;

procedure TfrmBaseDev.PediaIdxActiveClick(Sender: TObject);
var LeoS,SLeo,OrderStr:String;
    i,z,x:integer;
    LeoV,LeoV1:Variant;
    frm:TfrmDefineQOrder;
begin
//frm:=TfrmDefineQOrder.CreateRefMenu(self,PopFilter,PediaIdx);
frm:=TfrmDefineQOrder.CreateRefGrid(self,TDBGrid(FilteredGrid));
if frm.ShowModal=mrCancel then
  begin
   frm.Free;
   exit;
  end;
OrderStr:=frm.OrderString;
frm.Free;
{if Not(SetQIndexFields(PediaIdx) > ' ') then
  begin
    MessageDlg('Δέν έχουν ορισθεί Πεδία.', mtWarning, [mbOK], 0);
    exit;
  end; }
UncheckIndexes();
if (TDBGrid(FilteredGrid)).DataSource.DataSet is TTable then
 begin
   TTable((TDBGrid(FilteredGrid)).DataSource.DataSet).IndexFieldNames:=FindFieldsForIndex(PediaIdx);
 end;
if (TDBGrid(FilteredGrid)).DataSource.DataSet is TQuery then
 begin
   LeoS:=TQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text;
   SLeo:=' ' + SetQIndexFields(PediaIdx)+ ' ,';
   Sleo:=OrderStr+',';
   i:=length(SLeo);
   System.Insert(SLeo,LeoS,( (Pos('ORDER BY ', LeoS )) + 9 ));
   TQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text := LeoS;
   TQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=False;
   TQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Prepare;
   TQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=True;
 end;
if (TDBGrid(FilteredGrid)).DataSource.DataSet is TAdoQuery then
 begin
   x:=TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Parameters.Count;
   if x > 0 then
    begin
      LeoV1:=VarArrayCreate([0, x],VarVariant);
      LeoV:=VarArrayCreate([0, x],VarVariant);
      SaveAdoParameters(LeoV,LeoV1,x,TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet));
    end;
   LeoS:=TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text;
//   SLeo:=' ' + SetQIndexFields(PediaIdx);
   Sleo:=OrderStr;
   i:=length(SLeo);
   z:=Pos('Order By ', LeoS );
   if z > 0 then
     begin
       SLeo:=Sleo+',';
       System.Insert(SLeo,LeoS,( (Pos('Order By ', LeoS )) + 9 ))
     end
   else
     begin
       LeoS:=AnsiReplaceStr(LeoS,';',' ');
       LeoS:=LeoS+' Order By '+SLeo;
     end;
   TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text := LeoS;
   TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=False;
   if x > 0 then
    begin
      ReturnAdoParameters(LeoV,LeoV1,x,TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet));
    end;
   TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=True;
 end;
end;

function TfrmBaseDev.FindFieldsForIndex(LeoMenu:TMenuItem):string;
var LeoS:String;
    i:Integer;
    found:Boolean;
begin
found:=False;
for i :=2 to LeoMenu.Count -1 do
 if LeoMenu.Items[i].Checked then
 if found then
    LeoS:=LeoS+';'+(TDBGrid(FilteredGrid)).Fields[i-2].FieldName
 else
   begin
    found:=True;
    LeoS:=(TDBGrid(FilteredGrid)).Fields[i-2].FieldName;
   end;
Result:=LeoS;
end;

procedure TfrmBaseDev.NextExecute(Sender: TObject);
begin
  inherited;
(TDBGrid(FilteredGrid)).DataSource.DataSet.Next;
end;

procedure TfrmBaseDev.PreviousExecute(Sender: TObject);
begin
  inherited;
(TDBGrid(FilteredGrid)).DataSource.DataSet.Prior;
end;

procedure TfrmBaseDev.dgDataColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
Var SLeo:String;
    NewMenu:TMenuItem;
    i:Integer;
    LeoF:TFont;
begin
{     LeoF:=(TDBGrid(FilteredGrid)).Columns[ToIndex].Font;
     (TDBGrid(FilteredGrid)).Columns[ToIndex].Font:=(TDBGrid(FilteredGrid)).Columns[FromIndex].Font;
     (TDBGrid(FilteredGrid)).Columns[FromIndex].Font:=LeoF;
     NewMenu        :=TMenuItem.Create(Self);
     NewMenu.Caption:=(TDBGrid(FilteredGrid)).Columns[ToIndex].Title.Caption;
     NewMenu.Tag    :=ToIndex+3;
     NewMenu.Checked:=Pedia.Items[FromIndex+3].Checked;
     NewMenu.OnClick:=NLeoClick;
     Pedia.Insert(ToIndex+3,NewMenu);
     Pedia.Delete(FromIndex+1+3);
     for i := 3 to Pedia.Count - 3 do
         Pedia.Items[i].Tag:=i-3; }
end;

procedure TfrmBaseDev.CloseExecute(Sender: TObject);
begin
  inherited;
Perform(WM_CLOSE,0,0);
//DMMain.ReleaseLock(LoginName,TTable(FilteredGrid.DataSource),FilteredGrid.DataSource.DataSet,PFormName);
end;

function TfrmBaseDev.SetQIndexFields(LeoMenu: TMenuItem): string;
var LeoS:String;
    i,x,y:Integer;
    found:Boolean;
function FindIndirect(NameMenu:String):String;
var x,y:Integer;
begin
//Indirect Menu Addressing
for x:= 0 to (TDBGrid(FilteredGrid)).Columns.Count -1 do
  begin
   if (TDBGrid(FilteredGrid)).Columns[x].FieldName = NameMenu then
      y:=x;
  end;
Result:=TDBGrid(FilteredGrid).Columns[y].FieldName;
end;

begin
//Please Dont Remove Comma Below 24062003;
found:=False;
for i :=2 to LeoMenu.Count -1 do
 if LeoMenu.Items[i].Checked then
 if found then
    begin
      LeoS:=LeoS+','+ FindIndirect(LeoMenu.Items[i].Hint);
//      LeoS:=LeoS+','+(TDBGrid(FilteredGrid)).Fields[i-2].FieldName
    end
 else
   begin
    found:=True;
//    LeoS:=(TDBGrid(FilteredGrid)).Fields[i-2].FieldName;
      LeoS:=FindIndirect(LeoMenu.Items[i].Hint);
   end;
Result:=LeoS;
end;

procedure TfrmBaseDev.ModalOkExecute(Sender: TObject);
begin
  inherited;
 ModalResult:=mrOk;
end;

procedure TfrmBaseDev.ModalCancelExecute(Sender: TObject);
begin
  inherited;
 ModalResult:=mrCancel;
end;

procedure TfrmBaseDev.SetGrid(Grid: TComponent; OnOff: Boolean);
begin
if Grid is TDBGrid then
  begin
   if OnOff = True then
     begin
       TDBGrid(Grid).Options:=TDBGrid(Grid).Options - [dgRowSelect];
       TDBGrid(Grid).Options:=TDBGrid(Grid).Options + [dgEditing];
     end
   else
     begin
       TDBGrid(Grid).Options:=TDBGrid(Grid).Options - [dgEditing];
       TDBGrid(Grid).Options:=TDBGrid(Grid).Options + [dgRowSelect];
     end
  end;
{if Grid is TDBGridEh then
  begin
   if OnOff = True then
     begin
       TDBGridEh(Grid).Options:=TDBGridEh(Grid).Options - [dgRowSelect];
       TDBGridEh(Grid).Options:=TDBGridEh(Grid).Options + [dgEditing];
     end
   else
     begin
       TDBGridEh(Grid).Options:=TDBGridEh(Grid).Options - [dgEditing];
       TDBGridEh(Grid).Options:=TDBGridEh(Grid).Options + [dgRowSelect];
     end
  end;}
end;

procedure TfrmBaseDev.dgDataTitleClick(Column: TColumn);
var SLeo,LeoS,TempField:String;
    LeoColumn:TColumn;
    i,x,z:Integer;
    LeoV,LeoV1:Variant;
begin
  inherited;
TempField :=Column.FieldName;
LeoColumn:=Column;
If (TDBGrid(FilteredGrid)).DataSource.DataSet.FieldByName(TempField).Lookup then
   exit;
If (TDBGrid(FilteredGrid)).DataSource.DataSet.FieldByName(TempField).Calculated then
   exit;

if (TDBGrid(FilteredGrid)).DataSource.DataSet is TTable then
 begin
   TTable((TDBGrid(FilteredGrid)).DataSource.DataSet).IndexFieldNames:=FindFieldsForIndex(PediaIdx);
 end;
if (TDBGrid(FilteredGrid)).DataSource.DataSet is TADOQuery then
 begin
   if TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).FieldByName(TempField).Tag = 0 then
     begin
       x:=TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Parameters.Count;
       if x > 0 then
        begin
          LeoV1:=VarArrayCreate([0, x],VarVariant);
          LeoV:=VarArrayCreate([0, x],VarVariant);
          SaveAdoParameters(LeoV,LeoV1,x,TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet));
        end;
       LeoS:=TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text;
        if Pos('^',Column.Title.Caption) > 0 then
           begin
//Remove Order
//             Column.Title.Caption:=AnsiReplaceStr(Column.Title.Caption,'^','*');
             ClearMarks;
             LeoColumn.Title.Caption:=LeoColumn.Title.Caption+'*';
             TempField :=TempField + ' Desc ';
           end
        else
          if Pos('*',Column.Title.Caption) > 0 then
             begin
//Remove Order
//               Column.Title.Caption:=AnsiReplaceStr(Column.Title.Caption,'*','^');
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
            TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Clear;
            TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Add(LeoS);
            TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=False;
          end
        else
          begin
            LeoS:=TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text;
            i:=length(LeoS);
            z:=Pos('Order By ', LeoS );
            if z > 0 then
               System.Delete(LeoS,z,(i-z));
            LeoS:=LeoS+' Order By '+TempField;
            TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).SQL.Text := LeoS;
            TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=False;
          end;
        if x > 0 then
          begin
            ReturnAdoParameters(LeoV,LeoV1,x,TAdoQuery((TDBGrid(FilteredGrid)).DataSource.DataSet));
          end;
          TADOQuery((TDBGrid(FilteredGrid)).DataSource.DataSet).Active:=True;
     end;
 end;
end;

procedure TfrmBaseDev.ClearMarks;
var x:integer;
begin
for x:=0 to (TDBGrid(FilteredGrid)).Columns.Count -1 do
  begin
    (TDBGrid(FilteredGrid)).Columns[x].Title.Caption:=AnsiReplaceStr((TDBGrid(FilteredGrid)).Columns[x].Title.Caption,'*','');
    (TDBGrid(FilteredGrid)).Columns[x].Title.Caption:=AnsiReplaceStr((TDBGrid(FilteredGrid)).Columns[x].Title.Caption,'^','');
  end;

for x:=1 to PediaIdx.Count-1 do
  begin
    PediaIdx.Items[x].Checked:=False;
  end;

end;

procedure TfrmBaseDev.ReturnAdoParameters(ParametersArray,
  ValuesArray: Variant; CountParameters: Integer; Query: TAdoQuery);
var x:Integer;
    S:String;
begin
  for x:=0 to (CountParameters-1) do
    begin
     S:=ParametersArray[x];
     Query.Parameters.ParamByName(S).Value:=ValuesArray[x];
    end;

end;

procedure TfrmBaseDev.SaveAdoParameters(var ParametersArray,
  ValuesArray: Variant; CountParameters: Integer; Query: TAdoQuery);
var x:Integer;
begin
  for x:=0 to (CountParameters-1) do
    begin
     ParametersArray[x]:=Query.Parameters[x].Name;
     ValuesArray[x]    :=Query.Parameters.ParamValues[ParametersArray[x]];
    end;
end;

procedure TfrmBaseDev.actExportToXlClick(Sender: TObject);
begin
  inherited;
  OutputFileCxGrid(FilteredcxGrid);
end;

procedure TfrmBaseDev.actPrintFormExecute(Sender: TObject);
begin
  inherited;
  self.PrintScale:=poPrintToFit;
  self.Print;
end;

constructor TfrmBaseDev.CreateSecurityID(aowner: TComponent; FormID,
  MainId: Integer);
begin
  Created := False;
  IndexAct:= False;
  PFormID := FormID;
  if DMMain.FindFormName(FormId,PFormName) then
     Create( aowner )
  else
     exit;

  DisplaySpecificID(MainId);
end;

{ TODO -oLeonidas : Fix Dialog for FileName and Implement DIY routine }
procedure TfrmBaseDev.cxdataActiveTabChanged(Sender: TcxCustomGrid;
  ALevel: TcxGridLevel);
begin
  inherited;
   BrowseDevFields(Pedia);
end;

procedure TfrmBaseDev.cxdataEnter(Sender: TObject);
begin
  inherited;
if Sender is TCxGrid then
  FilteredcxGrid:=TCxGrid(Sender);
end;

procedure TfrmBaseDev.OutputFileCxGrid(FilteredcxGrid:TcxGrid);
begin

   OutputFileDev(FilteredcxGrid);

   ExportGridToHTML('111',FilteredcxGrid);

   ExportGridToXLSX('111',FilteredcxGrid);

   ExportGridToXML('111',FilteredcxGrid);

   ExportGridToExcel('111',FilteredcxGrid);

   ExportGridToText('111',FilteredcxGrid);
end;

procedure TfrmBaseDev.OutputFileDev(FilteredcxGrid:TcxGrid);
var
  x, i, y, DispFCnt: integer;
  Sheet: Variant;
  XLApp: Variant;
  FldName: String;
  FieldsArr: Array [1 .. 100] of integer;
  DataS:TDataSet;
  Bks: TBookMark;
begin
  if FilteredcxGrid.ActiveView is TcxGridDBTableView then
  else
      exit;

  DataS:=  TcxGridDBTableView(FilteredcxGrid.ActiveView).DataController.Datasource.Dataset;
  DataS.DisableControls;
  Bks:=Datas.GetBookmark;
  DataS.First;
  XLApp         := CreateOleObject('Excel.Application');
  XLApp.Visible := False;
//  XLApp.Visible := True;
  // Must be turn off
  // XLApp.Workbooks.Add(xlWBatWorkSheet);
  XLApp.Workbooks.Add();
  XLApp.Workbooks[1].WorkSheets[1].Name := 'Delphi Data';
  Sheet := XLApp.Workbooks[1].WorkSheets['Delphi Data'];



  y :=   TcxGridDBTableView(FilteredcxGrid.ActiveView).ColumnCount - 1;

  DispFCnt := 0;

  for x := 0 to y do
    if TcxGridDBTableView(FilteredcxGrid.ActiveView).Columns[x].Visible = True then
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
      FldName           := TcxGridDBTableView(FilteredcxGrid.ActiveView).columns[y].DataBinding.FieldName;
      Sheet.Cells[1, x] := DataS.FieldByName(FldName).DisplayLabel;
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
            FldName := TcxGridDBTableView(FilteredcxGrid.ActiveView).Columns[y].DataBinding.FieldName;
            if DataS.FieldByName(FldName).IsNull then
               Sheet.Cells[i, x] := ''
            else
            if DataS.FieldByName(FldName).ClassType = TBCDField then
              begin
                Sheet.Cells[i, x].NumberFormat := '#.##0,00 €';
                try
                  Sheet.Cells[i, x] := TcxGridDBTableView(FilteredcxGrid.ActiveView).DataController.dAtasource.dataset.FieldByName(FldName).AsFloat;
                except
                  Sheet.Cells[i, x] := TcxGridDBTableView(FilteredcxGrid.ActiveView).DataController.dAtasource.dataset.FieldByName(FldName).AsString;
                end;
              end
            else if DataS.FieldByName(FldName).ClassType = TFloatField then
              begin
                try
                Sheet.Cells[i, x].NumberFormat := '###.###.##0,00';
                Sheet.Cells[i, x] := TcxGridDBTableView(FilteredcxGrid.ActiveView).DataController.dAtasource.dataset.FieldByName(FldName).AsFloat;
                except
                  Sheet.Cells[i, x] := TcxGridDBTableView(FilteredcxGrid.ActiveView).DataController.dAtasource.dataset.FieldByName(FldName).AsString;
                end;
              end
            else if DataS.FieldByName(FldName).ClassType = TIntegerField then
              begin
                try
                Sheet.Cells[i, x] := TcxGridDBTableView(FilteredcxGrid.ActiveView).DataController.dAtasource.dataset.FieldByName(FldName).AsInteger;
                except
                  Sheet.Cells[i, x] := TcxGridDBTableView(FilteredcxGrid.ActiveView).DataController.dAtasource.dataset.FieldByName(FldName).AsString;
                end;
              end
            else if DataS.FieldByName(FldName).ClassType = TDateTimeField then
              begin
                try
                Sheet.Cells[i, x] := TcxGridDBTableView(FilteredcxGrid.ActiveView).DataController.dAtasource.dataset.FieldByName(FldName).AsDateTime;
                except
                  Sheet.Cells[i, x] := TcxGridDBTableView(FilteredcxGrid.ActiveView).DataController.dAtasource.dataset.FieldByName(FldName).AsString;
                end;
              end
            else if DataS.FieldByName(FldName).ClassType = TWideStringField then
              begin
                try
                Sheet.Cells[i, x] := TcxGridDBTableView(FilteredcxGrid.ActiveView).DataController.dAtasource.dataset.FieldByName(FldName).AsWideString;
                except
                  Sheet.Cells[i, x] := TcxGridDBTableView(FilteredcxGrid.ActiveView).DataController.dAtasource.dataset.FieldByName(FldName).AsString;
                end;
              end
            else
              Sheet.Cells[i, x] := TcxGridDBTableView(FilteredcxGrid.ActiveView).DataController.dAtasource.dataset.FieldByName(FldName).AsString;
          end;
        i := i + 1;
            DataS.Next;
      until DataS.Eof;
      except MessageDlg('Error Not Full Export of Grid.', mtError, [mbOK], 0);
    end;
    MessageDlg('Export Done!', mtError, [mbOK], 0);
  finally
    XLApp.Visible := True;
    Datas.GotoBookmark(Bks);
    DataS.EnableControls;
  end
end;








end.
