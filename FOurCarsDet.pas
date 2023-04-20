unit FOurCarsDet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FBaseDev1, Vcl.ActnList, Vcl.Menus,
  Common,
  FBaseDev0, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ImgList, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxMemo, cxDBEdit,
  cxDropDownEdit, cxMRUEdit, cxSpinEdit, cxCheckBox, cxTextEdit, cxMaskEdit,
  cxCalendar, Vcl.StdCtrls, Vcl.ExtCtrls, FSelectLib, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, cxRadioGroup, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Winapi.ShellAPI,
  Globals, DOurCarsDet, cxLabel, cxDBLabel, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxButtons, JvBaseDlg, JvCalc,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls;

type
  TfrmOurCarsDet = class(TfrmBaseDev1)
    Panel1: TPanel;
    Panel2: TPanel;
    Label8: TLabel;
    Label5: TLabel;
    lblCarNumber: TLabel;
    Panel3: TPanel;
    Label9: TLabel;
    cxDBMemo1: TcxDBMemo;
    Panel4: TPanel;
    Label10: TLabel;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    Splitter3: TSplitter;
    Label6: TLabel;
    Splitter4: TSplitter;
    Splitter5: TSplitter;
    Label3: TLabel;
    cxDBTEDA_Num: TcxDBTextEdit;
    cxdbtRegNo: TcxDBLookupComboBox;
    cxdbtCarOwner: TcxDBLookupComboBox;
    cxdbtDrvName: TcxDBLookupComboBox;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1ActionLevel: TcxGridDBColumn;
    cxGrid1DBTableView1aa: TcxGridDBColumn;
    cxGrid1DBTableView1WeightDT: TcxGridDBColumn;
    cxGrid1DBTableView1WeightAA: TcxGridDBColumn;
    cxGrid1DBTableView1Weight: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1ActionLevel: TcxGridDBColumn;
    cxGridDBTableView1aa: TcxGridDBColumn;
    cxGridDBTableView1WeightDT: TcxGridDBColumn;
    cxGridDBTableView1WeightAA: TcxGridDBColumn;
    cxGridDBTableView1Weight: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2id: TcxGridDBColumn;
    cxGridDBTableView2ActionLevel: TcxGridDBColumn;
    cxGridDBTableView2aa: TcxGridDBColumn;
    cxGridDBTableView2WeightDT: TcxGridDBColumn;
    cxGridDBTableView2WeightAA: TcxGridDBColumn;
    cxGridDBTableView2Weight: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Splitter1: TSplitter;
    LabelP8: TLabel;
    LabelP9: TLabel;
    LabelP10: TLabel;
    cxDBLabel1: TcxDBLabel;
    N7: TMenuItem;
    ToolButton9: TToolButton;
    actlibref: TAction;
    cxbtnWater: TcxButton;
    actDeleteRow: TAction;
    cxDBLabel2: TcxDBLabel;
    cxDBLSpecialEltepe: TcxDBLookupComboBox;
    PanelBtnCom: TPanel;
    Label1: TLabel;
    cxDBTProducts: TcxDBLookupComboBox;
    cxDBRadioGroup1: TDBRadioGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    actSrc: TAction;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure actMainUpdateExecute(Sender: TObject);
    procedure actMainOKExecute(Sender: TObject);
    procedure actMainCancelExecute(Sender: TObject);
    procedure actMainInsertExecute(Sender: TObject);
    procedure actDispIdExecute(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGridDblClick(Tag: Integer);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cxDBRadioGroup1PropertiesChange(Sender: TObject);
    procedure cxdbtRegNoKeyPress(Sender: TObject; var Key: Char);
    procedure actMainOKFFExecute(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure actlibrefExecute(Sender: TObject);
    procedure btnWaterClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxbtnWaterClick(Sender: TObject);
    procedure actDeleteRowExecute(Sender: TObject);
    procedure cxdbtRegNoPropertiesChange(Sender: TObject);
    procedure cxdbtDrvNameDblClick(Sender: TObject);
    procedure cxdbtCarOwnerExit(Sender: TObject);
    procedure cxdbtCarOwnerPropertiesChange(Sender: TObject);
    procedure cxdbtRegNoExit(Sender: TObject);
    procedure cxDBTProductsDblClick(Sender: TObject);
    procedure cxDBLSpecialEltepeDblClick(Sender: TObject);
    procedure cxdbtRegNoDblClick(Sender: TObject);
    procedure actSrcExecute(Sender: TObject);
    procedure cxdbtAllCloseUp(Sender: TObject);
  private
    DM: TDMOurCarsDet;
    NotInBatchState:Boolean;
    procedure ExecLibClick;
    procedure ResetColor;
    procedure DeleteSl(Gid: String);
    procedure CheckLastWeight(ShowMsg:Boolean = True);
  public
    SlIn, SlOut, SlMid: TStringList;
    function MakeFinalCheck: Boolean; override;
    function CheckBeforeSave: Boolean;
    function CheckBeforeFull: Boolean;
    function CheckWeight: Boolean;

    function CheckFieldBeforeFullFill(Var tmptxt: string): Boolean;
    function CheckFieldBeforeFullFillFirstLast(Var tmptxt: string): Boolean;
    function CheckFieldBeforeSave(Var tmptxt: string): Boolean;

    procedure AddRec();
    procedure GotoRec(id: Integer);
    procedure EditRec(RecId: Integer);
  end;

implementation

{$R *.dfm}

uses FMain;

procedure TfrmOurCarsDet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if SelectMainData.State in [dsEdit, dsInsert] then
    begin
      MessageDlg('Παρακαλώ ολοκληρώστε την καταχώρηση σας.', mtWarning,
        [mbOK], 0);
      Action := caNone;
    end
  else
    begin
      Action := caFree;
    end
end;

procedure TfrmOurCarsDet.FormCreate(Sender: TObject);
var
  x: Integer;
begin
  inherited;
  Created := False;
  NotInBatchState:=True;

  DM      := TDMOurCarsDet.Create(self);
  PrimDM  := DM;
  SecDM   := DM;

  SlIn  := TStringList.Create;
  SlOut := TStringList.Create;
  SlMid := TStringList.Create;

  SelectMainData := DM.qryCarsVisitOur;

  SetDBLookupSort;

  // LoadMru(cxDBTProducts, DM.VL_Product);

  for x := 0 to self.ComponentCount - 1 do
    if Components[x] is TcxGridDBTableView then
      begin
        TcxGridDBTableView(Components[x]).OptionsView.Footer := False;
        TcxGridDBTableView(Components[x]).OptionsView.GroupByBox := False;
        TcxGridDBTableView(Components[x])
          .OptionsBehavior.BestFitMaxRecordCount := 10;
        if TcxGridDBTableView(Components[x]).Tag = 0 then
          TcxGridDBTableView(Components[x]).ApplyBestFit();
        TcxGridDBTableView(Components[x]).OptionsView.Footer := False;
        TcxGridDBTableView(Components[x])
          .OptionsCustomize.ColumnsQuickCustomization := False;
        TcxGridDBTableView(Components[x])
          .OptionsCustomize.ColumnSorting := False;
        TcxGridDBTableView(Components[x])
          .OptionsCustomize.ColumnFiltering := False;
        TcxGridDBTableView(Components[x])
          .OptionsCustomize.ColumnsQuickCustomization := False;
        // TcxGridDBTableView(Components[x]).OnDblClick := cxGrid1DBTableView1DblClick;
        // TcxGridDBTableView(Components[x]).Filtering.ColumnFilteredItemsList := False;
        // TcxGridDBTableView(Components[x]).Filtering.ColumnMRUItemsList      := False;
        // TcxGridDBTableView(Components[x]).FilterBox.Visible := fvNever;
      end;

//  cxGrid1.Height:=80;
//  cxGrid2.Height:=80;
//  cxGrid3.Height:=80;
//  Panel5.Height:=130;
//  Panel6.Height:=130;
//  Panel7.Height:=130;
//  PageControl1.Height:=130;
//  Panel1.Height:=130;

  for x := 0 to Panel2.ControlCount -1 do
    begin
      if Panel2.Controls[x] is TcxDBLookupComboBox then
         TcxDBLookupComboBox(Panel2.Controls[x]).Style.Font.Size := TcxDBLookupComboBox(Panel2.Controls[x]).Style.Font.Size + 2;
      if Panel2.Controls[x] is TcxDBTextEdit then
         TcxDBTextEdit(Panel2.Controls[x]).Style.Font.Size       := TcxDBTextEdit(Panel2.Controls[x]).Style.Font.Size + 2;
      if Panel2.Controls[x] is TcxDBMRUEdit then
         TcxDBMRUEdit(Panel2.Controls[x]).Style.Font.Size        := TcxDBMRUEdit(Panel2.Controls[x]).Style.Font.Size + 2;
      if Panel2.Controls[x] is TLabel then
         TLabel(Panel2.Controls[x]).Font.Size                    := TLabel(Panel2.Controls[x]).Font.Size + 1;
    end;

//  Self.Height:=Self.Height+180;
//  Panel3.Height:=280;
//  Panel3.Top:=410;
//  cxDBMemo1.Height:=280;

  if frmMain.chkSmallOur.Checked then
  begin
//  Self.Height:=Self.Height+80;
  Panel3.Height:=200;
  Panel3.Top:=410;
  cxDBMemo1.Height:=80;
  end
  else
  begin
  Self.Height:=Self.Height+180;
  Panel3.Height:=280;
  Panel3.Top:=410;
  cxDBMemo1.Height:=280;
  end;

  if StatusBar1.Top < Panel3.Top then
  begin
     x              := StatusBar1.Top;
     StatusBar1.Top := Panel3.Top;
     Panel3.Top     := x;
  end;

  Created := True;

end;

procedure TfrmOurCarsDet.FormDestroy(Sender: TObject);
begin
  inherited;
  SlIn.Free;
  SlMid.Free;
  SlOut.Free;
end;

procedure TfrmOurCarsDet.FormResize(Sender: TObject);
var
  h, h1: Integer;
begin
  inherited;
  h            := Panel1.Width;
  h1           := h div 3;
  Panel5.Width := h1;
  Panel6.Width := h1;
  Panel7.Width := h1;
end;

procedure TfrmOurCarsDet.actDeleteRowExecute(Sender: TObject);
begin
  inherited;
  if SelectMainData.State in [dsEdit] then
    begin
      if MessageDlg('Να γίνει διαγραφή της Ζύγισης;', mtConfirmation,
        [mbYes, mbNo], 0) = mrYes then
        begin
          if DM.qryCarsVisitOurWeight.Locate('WeightAA',
            PopupDataSet.FieldByName('WeightAA').AsVariant, []) then
            begin
              DM.qryCarsVisitOurWeight.Delete;
            end;
          DM.GetTRawLib.Parameters.ParamByName('PGid').Value :=
            PopupDataSet.FieldByName('WeightGuid').AsVariant;
          DM.GetTRawLib.Active := False;
          DM.GetTRawLib.Active := True;
          if DM.GetTRawLib.recordcount = 1 then
            begin
              DM.GetTRawLib.Edit;
              DM.GetTRawLibUsed.AsBoolean := False;
              DM.GetTRawLib.Post;
            end
          else
            begin
              MessageDlg('Πρόβλημα σε αποενημέρωση ζύγισης ' +
                PopupDataSet.FieldByName('WeightGuid').AsString, mtError,
                [mbOK], 0);
              Exit;
            end;
          try
            DeleteSl(PopupDataSet.FieldByName('WeightGuid').AsString);
          except
            MessageDlg('Πρόβλημα σε αποενημέρωση ζύγισης SL2', mtError,
              [mbOK], 0);
          end;

          DM.qryCarsVisitOurWeight.Requery();
          DM.qryCarsVisitOurWeight3.Requery();
          DM.qryCarsVisitOurWeight4.Requery();
          DM.qryCarsVisitOurWeight5.Requery();
          DM.qryCarsVisitOurWeightWater.Requery();
          DM.qryCarsVisitOurWeightNoWater.Requery();


          // DM.qryCarsVisitOurWeight.Active := False;
          // DM.qryCarsVisitOurWeight3.Active := False;
          // DM.qryCarsVisitOurWeight4.Active := False;
          // DM.qryCarsVisitOurWeight5.Active := False;
          // DM.qryCarsVisitOurWeightWater.Active := False;
          // DM.qryCarsVisitOurWeightNoWater.Active := False;
          //
          // DM.qryCarsVisitOurWeight.Active := True;
          // DM.qryCarsVisitOurWeight3.Active := True;
          // DM.qryCarsVisitOurWeight4.Active := True;
          // DM.qryCarsVisitOurWeight5.Active := True;
          // DM.qryCarsVisitOurWeightWater.Active := True;
          // DM.qryCarsVisitOurWeightNoWater.Active := True;

          CheckWeight;
        end;
    end;
end;

procedure TfrmOurCarsDet.DeleteSl(Gid: String);
var
  i: Integer;
begin
  if SlIn.Find(Gid, i) then
    SlIn.Delete(i);
  if SlMid.Find(Gid, i) then
    SlMid.Delete(i);
  if SlOut.Find(Gid, i) then
    SlIn.Delete(i);
end;

procedure TfrmOurCarsDet.actDispIdExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmOurCarsDet.actlibrefExecute(Sender: TObject);
begin
  inherited;
  ExecLibClick;
end;

procedure TfrmOurCarsDet.ExecLibClick;
var
  sCmd, sCmd1: String;
begin
  if frmMain.chkUseInternalLibro.Checked then
   begin
     frmMain.ReadLibro;
   end
  else
   begin
     sCmd  := Pwidechar('UpdLib.bat');
     sCmd1 := 'UpdLib.bat';
     if LoginGroup = 0 then
        ShellExecute(0, 'open', PChar(sCmd1), '', nil, SW_NORMAL)
     else
        ShellExecute(0, 'open', PChar(sCmd1), '', nil, SW_HIDE);
   end;
end;

procedure TfrmOurCarsDet.actMainCancelExecute(Sender: TObject);
begin
  inherited;
  if ((SlIn.Count > 0) or (SlMid.Count > 0) or (SlOut.Count > 0)) then
    begin
      if MessageDlg('Θα διαγραφούν οι ζυγίσεις που καταχωρίσατε.', mtWarning,
        [mbYes, mbNo], 0) = mrYes then
        begin
          DM.DeleteLib(SlIn);
          DM.DeleteLib(SlMid);
          DM.DeleteLib(SlOut);
          SlIn.Clear;
          SlMid.Clear;
          SlOut.Clear;
        end
      else
        begin
          Exit;
        end;
    end;
  SelectMainData.Cancel;
  ResetColor;
  SlIn.Clear;
  SlMid.Clear;
  SlOut.Clear;
  if frmMain.bAutoClose then
    self.Close;
end;

procedure TfrmOurCarsDet.actMainInsertExecute(Sender: TObject);
begin
  inherited;
  AddRec;
end;

procedure TfrmOurCarsDet.actMainOKExecute(Sender: TObject);
var
  ErrorTxt: string;
  InsertState: Boolean;
begin
  inherited;
  InsertState := SelectMainData.State in [dsInsert];
  if DM.CheckSameReg(DM.VL_RegNoId.AsInteger, SelectMainData.FieldByName('id')
    .AsInteger) = True then
    begin
      MessageDlg('Υπάρχει ήδη καταχώρηση για το όχημα.', mtError, [mbOK], 0);
      Exit;
    end;

  if Not CheckWeight then
    if MessageDlg('Αρνητικό Βάρος.' + #13 + #10 + 'Να γίνει Αποθήκευση',
      mtError, [mbYes, mbNo], 0) = mrNo then
      Exit;

  if CheckFieldBeforeSave(ErrorTxt) then
    if not(DM.CheckReg(cxdbtRegNo.Text, ErrorTxt)) then
      begin
        MessageDlg('Οι καταχωρίσεις ζύγισεις αφορούν άλλο Αριθμό Κυκλοφορίας.' +
          #13 + #10 + ErrorTxt + #13 + #10 + 'Αδύνατη η Αποθήκευση', mtError,
          [mbOK], 0);
        Exit;
      end
    else
      begin
        try
          DM.CheckUpdateParam;
          SelectMainData.Post;
          if NotInBatchState then
             MessageDlg('Καταχωρήθηκε.', mtInformation, [mbOK], 0);
          if frmMain.bAutoClose and (not(InsertState)) then
            self.Close;
          if InsertState then
            begin
              SlIn.Clear;
              SlMid.Clear;
              SlOut.Clear;
              actMainUpdate.Execute;
            end;
        except
          on E: Exception do
            MessageDlg('Πρόβλημα ' + E.Message, mtWarning, [mbOK], 0);
        end;
        SlIn.Clear;
        SlMid.Clear;
        SlOut.Clear;
      end
  else
    begin
      MessageDlg(ErrorTxt, mtError, [mbOK], 0);
    end;
end;

procedure TfrmOurCarsDet.actMainOKFFExecute(Sender: TObject);
var
  ErrorTxt: string;
begin
  inherited;
  if DM.CheckSameReg(DM.VL_RegNoId.AsInteger, SelectMainData.FieldByName('id').AsInteger) = True then
    begin
      MessageDlg('Υπάρχει ήδη καταχώρηση για το όχημα.', mtError, [mbOK], 0);
      Exit;
    end;

  if DM.qryCarsVisitOurWeight3.IsEmpty or DM.qryCarsVisitOurWeight4.IsEmpty or
    DM.qryCarsVisitOurWeight5.IsEmpty then
    begin
      MessageDlg('Δεν έχετε καταχωρήσει ζυγίσεις' + #13 + #10 +
        'Αδύνατη η ολοκλήρωση.', mtError, [mbOK], 0);
      Exit;
    end;

 if Not CheckWeight then
    if MessageDlg('Αρνητικό Βάρος.' + #13 + #10 + 'Να γίνει Αποθήκευση',
      mtError, [mbYes, mbNo], 0) = mrNo then
      Exit;

  if Not CheckFieldBeforeFullFillFirstLast(ErrorTxt) then
     Exit;

  if CheckFieldBeforeFullFill(ErrorTxt) then
    if not(DM.CheckReg(cxdbtRegNo.Text, ErrorTxt)) then
      begin
        MessageDlg('Οι καταχωρίσεις ζύγισεις αφορούν άλλο Αριθμό Κυκλοφορίας.' +
          #13 + #10 + ErrorTxt + #13 + #10 + 'Αδύνατη η Αποθήκευση', mtError,
          [mbOK], 0);
        Exit;
      end
    else
      begin
        try
          SelectMainData.FieldByName('FullFilled').AsBoolean := True;
          SelectMainData.FieldByName('FullFilledDT').AsDateTime := Now;
          SelectMainData.FieldByName('FullFilledUsr').AsInteger := LoginId;
          if SelectMainData.FieldByName('DateTimeOut').IsNull then
            SelectMainData.FieldByName('DateTimeOut').AsDateTime := Now();
          SelectMainData.FieldByName('DTime').AsDateTime :=
            SelectMainData.FieldByName('DateTimeOut').AsDateTime -
            SelectMainData.FieldByName('DateTimeIn').AsDateTime;
          SelectMainData.Post;
          DM.UpdateLastWeight;
          MessageDlg('Καταχωρήθηκε.', mtInformation, [mbOK], 0);
          if frmMain.bAutoCloseRoot then
            self.Close;
        except
          on E: Exception do
            MessageDlg('Πρόβλημα ' + E.Message, mtWarning, [mbOK], 0);
        end;
        SlIn.Clear;
        SlMid.Clear;
        SlOut.Clear;
      end
  else
    begin
      MessageDlg(ErrorTxt, mtError, [mbOK], 0);
    end;
end;

procedure TfrmOurCarsDet.actMainUpdateExecute(Sender: TObject);
begin
  inherited;
  if SelectMainData.FieldByName('FullFilled').AsBoolean = True then
    begin
      MessageDlg('Έχει γίνει ολοκλήρωση.' + #13 + #10 +
        'Δεν επιτρέπονται μεταβολές', mtError, [mbOK], 0);
    end
  else
    begin
      CheckLastWeight(False);
      DM.qryCarsVisitOur.Edit;
    end;
  // DM.qryCarsVisitOurDateTimeOut.AsDateTime:=Now();
  // DM.qryCarsVisitOurFullFilled.AsBoolean :=True;
  // DM.qryCarsVisitOurOutUsr.AsInteger:=LoginId;
end;

procedure TfrmOurCarsDet.actSrcExecute(Sender: TObject);
var t1,t2,t3:string;
    ti1,ti2,ti3:Integer;
begin
  inherited;
  t1:=cxdbtDrvName.Text;
  t2:=cxdbtCarOwner.Text;
  t3:=cxdbtRegNo.Text;
if frmMain.GetHelpOur(t1,t2,t3,ti1,ti2,ti3) then
begin
  cxdbtDrvName.Text:=t1;
  cxdbtCarOwner.Text:=t2;
  cxdbtRegNo.Text:=t3;
  cxdbtDrvName.DataBinding.DataSource.DataSet.FieldByName(cxdbtDrvName.DataBinding.Field.FieldName).Value:=ti1;
  cxdbtCarOwner.DataBinding.DataSource.DataSet.FieldByName(cxdbtCarOwner.DataBinding.Field.FieldName).Value:=ti2;
  cxdbtRegNo.DataBinding.DataSource.DataSet.FieldByName(cxdbtRegNo.DataBinding.Field.FieldName).Value:=ti3;
end;
end;

procedure TfrmOurCarsDet.btnWaterClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmOurCarsDet.cxbtnWaterClick(Sender: TObject);
begin
  inherited;
  if DM.qryCarsVisitOurWeight.Active = False then
    DM.qryCarsVisitOurWeight.Active := True;
  if DM.qryCarsVisitOurWeight.recordcount >= 2 then
    cxGridDblClick(44)
  else
    MessageDlg('Δεν μπορεί να καταχωρηθεί αυτή η ζύγιση τώρα.', mtWarning,
      [mbOK], 0);
end;

procedure TfrmOurCarsDet.cxDBLSpecialEltepeDblClick(Sender: TObject);
begin
  inherited;
  frmMain.actSubParamNoWrapExecute('actSpecTank');
  DM.VL_SpecTank.Requery();
end;

procedure TfrmOurCarsDet.cxDBRadioGroup1PropertiesChange(Sender: TObject);
begin
  inherited;
  if cxDBRadioGroup1.ItemIndex = 0 then
    begin
      LabelP8.Caption := 'Βάρος Οχήματος πρό αναχώρησης Απόβαρο';
      LabelP9.Caption :=
        'Βάρος Οχήματος μετά επανόδου και πρό εκφόρτωσης Μικτό';
      LabelP10.Caption :=
        'Βάρος Οχήματος μετά επανόδου και μετά εκφόρτωσης Απόβαρο';
      cxbtnWater.Enabled := True;
    end;
  if cxDBRadioGroup1.ItemIndex = 1 then
    begin
      LabelP8.Caption := 'Βάρος Οχήματος πρό Φόρτωσης Απόβαρο';
      LabelP9.Caption :=
        'Βάρος Οχήματος μετά Φόρτωσης και πρό Δρομολογίου Μικτό';
      LabelP10.Caption   := 'Βάρος Οχήματος μετά επανόδου Απόβαρο';
      cxbtnWater.Enabled := False;
    end;
  if cxDBRadioGroup1.ItemIndex = 2 then
    begin
      LabelP8.Caption := 'Βάρος Οχήματος πρό αναχώρησης Απόβαρο';
      LabelP9.Caption :=
        'Βάρος Οχήματος μετά επανόδου και πρό εκφόρτωσης Μικτό';
      LabelP10.Caption :=
        'Βάρος Οχήματος μετά επανόδου και μετά εκφόρτωσης Απόβαρο';
      cxbtnWater.Enabled := False;
    end;

  CheckWeight();

end;

procedure TfrmOurCarsDet.cxdbtAllCloseUp(Sender: TObject);
begin
  inherited;
  TcxDBMRUEdit(Sender).SelLength:=0;
end;

procedure TfrmOurCarsDet.cxdbtCarOwnerExit(Sender: TObject);
begin
  inherited;
  cxDBLSpecialEltepe.Enabled := DM.VL_CompanySpecialCom.AsBoolean;

end;

procedure TfrmOurCarsDet.cxdbtCarOwnerPropertiesChange(Sender: TObject);
begin
  inherited;
  cxdbtCarOwnerExit(Sender);
end;

procedure TfrmOurCarsDet.cxdbtDrvNameDblClick(Sender: TObject);
begin
  inherited;
  frmMain.actSubParamNoWrapExecute('actDrivers');
  DM.VL_Drivers.Requery();
end;

procedure TfrmOurCarsDet.cxDBTProductsDblClick(Sender: TObject);
begin
  inherited;
  frmMain.actSubParamNoWrapExecute('actProducts');
  DM.VL_Product.Requery();
end;

procedure TfrmOurCarsDet.cxdbtRegNoDblClick(Sender: TObject);
begin
  inherited;
  frmMain.actSubParamNoWrapExecute('actCars');
  DM.VL_RegNo.Requery();
end;

procedure TfrmOurCarsDet.cxdbtRegNoExit(Sender: TObject);
begin
  inherited;
  if DM.CheckSameReg(DM.VL_RegNoId.AsInteger, SelectMainData.FieldByName('id')
    .AsInteger) = True then
    begin
      MessageDlg('Υπάρχει ήδη καταχώρηση για το όχημα.', mtError, [mbOK], 0);
    end;
end;

procedure TfrmOurCarsDet.cxdbtRegNoKeyPress(Sender: TObject; var Key: Char);
var
  i, PosA: Integer;
  kk: AnsiChar;
  KU: string;
begin
  KU   := Key;
  KU   := AnsiUpperCase(Key);
  PosA := Pos(KU, gRegNoGreek);
  if not(PosA = 0) then
    Key := Char(gRegNoLatin[PosA]);
end;

procedure TfrmOurCarsDet.cxdbtRegNoPropertiesChange(Sender: TObject);
begin
  inherited;
  if self.Visible then
    if SelectMainData.State in [dsEdit, dsInsert] then
      if not(DM.VL_RegNoCompanyId.IsNull) then
        SelectMainData.FieldByName('CompanyId').Value :=
          DM.VL_RegNoCompanyId.AsVariant;
end;

procedure TfrmOurCarsDet.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  cxGridDblClick(1);
end;

procedure TfrmOurCarsDet.cxGrid3DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if DM.qryCarsVisitOurWeight3.IsEmpty then
    begin
      cxGridDblClick(3);
      CheckLastWeight;
    end
  else
    MessageDlg('Έχεται ήδη καταχωρήσει βάρος.', mtError, [mbOK], 0);
end;

procedure TfrmOurCarsDet.CheckLastWeight(ShowMsg:Boolean = True);
var ttt:string;
begin
      if DM.CheckWithLast(ttt) then
      begin
        StatusBar1.Panels[2].Text := ttt;
      end
      else
      begin
        StatusBar1.Panels[2].Text := ttt;
        if ShowMsg then
           MessageDlg(ttt, mtError, [mbOK], 0);
      end;
end;


procedure TfrmOurCarsDet.cxGridDblClick(Tag: Integer);
var
  Tmp: String;
begin
  if SelectMainData.State in [dsInsert] then
    begin
//    MessageDlg('Παρακαλώ ολοκληρώστε την αρχική καταχώρηση.', mtInformation, [mbOK], 0);
      if MessageDlg('Να γίνει αυτόματη καταχώρηση; ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          NotInBatchState:=False;
          actMainOKExecute(Self);
          NotInBatchState:=True;
        end
      else
         Exit;
    end;

  DM.qryCarsVisitOurWeight.Active := True;
  DM.qryCarsVisitOurWeight3.Active := True;
  DM.qryCarsVisitOurWeight4.Active := True;
  DM.qryCarsVisitOurWeight5.Active := True;
  DM.qryCarsVisitOurWeightWater.Active := True;
  DM.qryCarsVisitOurWeightNoWater.Active := True;

  if SelectMainData.State in [dsEdit] then
    begin
      Tmp := frmMain.GetLibId(cxdbtRegNo.Text);
      if Tmp > '*' then
        begin
          DM.GetTRawLib.Parameters.ParamByName('PGid').Value := Tmp;
          DM.GetTRawLib.Active := False;
          DM.GetTRawLib.Active := True;
          if DM.GetTRawLib.recordcount = 0 then
            begin
              MessageDlg('No record found', mtInformation, [mbOK], 0);
              Exit;
            end;

          if DM.CheckAA(DM.GetTRawLibLibId.AsInteger,DM.GetTRawLibLibDateTime.AsDateTime, Tag) Then
            begin
              DM.qryCarsVisitOurWeight.Active := True;
              DM.qryCarsVisitOurWeight.Insert;
              DM.qryCarsVisitOurWeight.Edit;
              DM.qryCarsVisitOurWeightid.AsInteger :=
                DM.qryCarsVisitOurid.AsInteger;
              if Tag = 44 then
                begin
                  DM.qryCarsVisitOurWeightActionLevel.AsInteger := 4;
                  DM.qryCarsVisitOurWeightWater2.AsBoolean := True;
                end
              else
                begin
                  DM.qryCarsVisitOurWeightActionLevel.AsInteger := Tag;
                  DM.qryCarsVisitOurWeightWater2.AsBoolean := False;
                end;
              DM.qryCarsVisitOurWeightaa.AsInteger :=
                DM.GetTRawLibLibId.AsInteger;
              DM.qryCarsVisitOurWeightWeight.AsInteger :=
                DM.GetTRawLibLibWeight.AsInteger;
              DM.qryCarsVisitOurWeightWeightAA.AsInteger :=
                DM.GetTRawLibLibId.AsInteger;
              DM.qryCarsVisitOurWeightWeightRegNo.AsString :=
                DM.GetTRawLibLibRegNo.AsString;
              DM.qryCarsVisitOurWeightWeightGuid.Value :=
                DM.GetTRawLibGId.Value;
              DM.qryCarsVisitOurWeightWeightDT.AsDateTime :=
                DM.GetTRawLibLibDateTime.AsDateTime;
              try
                DM.qryCarsVisitOurWeight.Post;
                DM.qryCarsVisitOurWeight.Requery();

                DM.qryCarsVisitOurWeight.Requery();
                DM.qryCarsVisitOurWeight3.Requery();
                DM.qryCarsVisitOurWeight4.Requery();
                DM.qryCarsVisitOurWeight5.Requery();
                DM.qryCarsVisitOurWeightWater.Requery();
                DM.qryCarsVisitOurWeightNoWater.Requery();

                // DM.qryCarsVisitOurWeight3.Active := False;
                // DM.qryCarsVisitOurWeight4.Active := False;
                // DM.qryCarsVisitOurWeight5.Active := False;
                // DM.qryCarsVisitOurWeightWater.Active := False;
                // DM.qryCarsVisitOurWeightNoWater.Active := False;
                //
                // DM.qryCarsVisitOurWeight3.Active := True;
                // DM.qryCarsVisitOurWeight4.Active := True;
                // DM.qryCarsVisitOurWeight5.Active := True;
                // DM.qryCarsVisitOurWeightWater.Active := True;
                // DM.qryCarsVisitOurWeightNoWater.Active := True;

                DM.GetTRawLib.Edit;
                DM.GetTRawLibUsed.AsBoolean := True;
                DM.GetTRawLib.Post;
                case Tag of
                  3:
                    SlIn.Append(Tmp);
                  4:
                    SlMid.Append(Tmp);
                  5:
                    SlOut.Append(Tmp);
                end;
              except
                on E: Exception do
                  begin
                    MessageDlg(E.Message, mtError, [mbOK], 0);
                    DM.qryCarsVisitOurWeight.Cancel;
                  end;
              end
            end
          else
            begin
              MessageDlg('''Εχει καταχωρηθεί ζύγιση με επόμενο αριθμό/Ημερομηνία' + #13 +
                #10 + 'Αδυνατη η καταχώρηση.', mtError, [mbOK], 0);
            end
        end
      else
        MessageDlg('Παρακαλώ επιλέξτε Ζύγιση', mtInformation, [mbOK], 0)
    end;
  CheckWeight();
end;

procedure TfrmOurCarsDet.cxGridDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  cxGridDblClick(2);
end;

procedure TfrmOurCarsDet.cxGridDBTableView2DblClick(Sender: TObject);
begin
  inherited;
  if DM.qryCarsVisitOurWeight3.IsEmpty then
  begin
    MessageDlg('Δεν υπάρχει καταχώρηση Εισόδου.', mtError, [mbOK], 0);
    Exit;
  end
  else
  begin
    cxGridDblClick(4);
    CheckWeight();
  end;



end;

procedure TfrmOurCarsDet.cxGridDBTableView3DblClick(Sender: TObject);
begin
  inherited;
  if DM.qryCarsVisitOurWeight3.IsEmpty then
  begin
    MessageDlg('Δεν υπάρχει καταχώρηση Εισόδου.', mtError, [mbOK], 0);
    Exit;
  end
  else
  if DM.qryCarsVisitOurWeight4.IsEmpty then
  begin
    MessageDlg('Δεν υπάρχει καταχώρηση.', mtError, [mbOK], 0);
    Exit;
  end
  else
  begin
    cxGridDblClick(5);
    CheckWeight();
  end;
end;

procedure TfrmOurCarsDet.EditRec(RecId: Integer);
begin
  GotoRec(RecId);
  CheckWeight;
  actMainUpdateExecute(self);
end;

procedure TfrmOurCarsDet.AddRec;
begin
  DM.qryCarsVisitOur.Active                              := False;
  DM.qryCarsVisitOur.Parameters.ParamByName('Pid').Value := 0;
  DM.qryCarsVisitOur.Active                              := True;
  DM.qryCarsVisitOur.Insert;
  DM.qryCarsVisitOur.Edit;
  DM.qryCarsVisitOurDateTimeIn.AsDateTime    := Now();
  DM.qryCarsVisitOurFullFilled.AsBoolean     := False;
  DM.qryCarsVisitOurNoted.AsBoolean          := False;
  DM.qryCarsVisitOurFriendCar.AsBoolean      := True;
  DM.qryCarsVisitOurInUsr.AsInteger          := LoginId;
  DM.qryCarsVisitOurProcedureState.AsInteger := 3;
end;



procedure TfrmOurCarsDet.GotoRec(id: Integer);
begin
  // DM.qryCarsVisitOur.Locate('Id', id, []);
  DM.qryCarsVisitOur.Active                              := False;
  DM.qryCarsVisitOur.Parameters.ParamByName('Pid').Value := id;
  DM.qryCarsVisitOur.Active                              := True;
  // DM.qryCarsVisitOurWeight3.Active := False;
  // DM.qryCarsVisitOurWeight4.Active := False;
  // DM.qryCarsVisitOurWeight5.Active := False;
  // DM.qryCarsVisitOurWeightWater.Active := False;
  // DM.qryCarsVisitOurWeightNoWater.Active := False;

   DM.qryCarsVisitOurWeight.Active := True;
   DM.qryCarsVisitOurWeight3.Active := True;
   DM.qryCarsVisitOurWeight4.Active := True;
   DM.qryCarsVisitOurWeight5.Active := True;
   DM.qryCarsVisitOurWeightWater.Active := True;
   DM.qryCarsVisitOurWeightNoWater.Active := True;
   CheckWeight;

  SetState('Browse');

end;

procedure TfrmOurCarsDet.N7Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Να γίνει διαγραφή της Ζύγισης;', mtConfirmation, [mbYes, mbNo],
    0) = mrYes then
    begin
      if DM.qryCarsVisitOurWeight.Locate('WeightAA',
        PopupDataSet.FieldByName('WeightAA').AsVariant, []) then
        begin
          DM.qryCarsVisitOurWeight.Delete;
        end;
      if DM.GetTRawLib.Locate('WeightAA', PopupDataSet.FieldByName('WeightAA')
        .AsVariant, []) then
        begin
          DM.GetTRawLib.Edit;
          DM.GetTRawLibUsed.AsBoolean := False;
          DM.GetTRawLib.Post;
        end;
      DM.qryCarsVisitOurWeight.Requery();
      DM.qryCarsVisitOurWeight3.Requery();
      DM.qryCarsVisitOurWeight4.Requery();
      DM.qryCarsVisitOurWeight5.Requery();
      DM.qryCarsVisitOurWeightWater.Requery();
      DM.qryCarsVisitOurWeightNoWater.Requery();

      // DM.qryCarsVisitOurWeight3.Active := False;
      // DM.qryCarsVisitOurWeight4.Active := False;
      // DM.qryCarsVisitOurWeight5.Active := False;
      // DM.qryCarsVisitOurWeightWater.Active := False;
      // DM.qryCarsVisitOurWeightNoWater.Active := False;
      //
      // DM.qryCarsVisitOurWeight3.Active := True;
      // DM.qryCarsVisitOurWeight4.Active := True;
      // DM.qryCarsVisitOurWeight5.Active := True;
      // DM.qryCarsVisitOurWeightWater.Active := True;
      // DM.qryCarsVisitOurWeightNoWater.Active := True;

      CheckWeight;
    end;
end;

function TfrmOurCarsDet.CheckBeforeFull: Boolean;
begin

end;

function TfrmOurCarsDet.CheckBeforeSave: Boolean;
begin

end;

function TfrmOurCarsDet.CheckWeight: Boolean;
var
  Net, Net2, Gross, Water, TmpWater, CalcW, CalcFL: Integer;
begin
  if Created = False then
    Exit;

  Net   := 0;
  Net2  := 0;
  Gross := 0;
  Water := 0;

  if Not(DM.qryCarsVisitOurWeight3.IsEmpty) then
    Net := DM.qryCarsVisitOurWeight3Weight.AsInteger;

  if Not(DM.qryCarsVisitOurWeight4.IsEmpty) then
    begin
      DM.qryCarsVisitOurWeight4.Last;
      Gross := DM.qryCarsVisitOurWeight4Weight.AsInteger;
    end;

  if Not(DM.qryCarsVisitOurWeight5.IsEmpty) then
    begin
      DM.qryCarsVisitOurWeight5.Last;
      Net2 := DM.qryCarsVisitOurWeight5Weight.AsInteger;
    end;

  if Not(DM.qryCarsVisitOurWeightWater.IsEmpty) then
    begin
      DM.qryCarsVisitOurWeightWater.Last;
      Water := DM.qryCarsVisitOurWeightWaterWeight.AsInteger;
      Gross := DM.qryCarsVisitOurWeightWaterWeight.AsInteger;

      DM.qryCarsVisitOurWeightNoWater.Last;
      TmpWater := DM.qryCarsVisitOurWeightNoWaterWeight.AsInteger;
      Water := TmpWater - Water;
    end;

  if cxDBRadioGroup1.ItemIndex = 0 then
    begin
      CalcW := Gross - Net2; // - Water;
    end;
  if cxDBRadioGroup1.ItemIndex = 1 then
    begin
      CalcW := Gross - Net;
    end;
  if cxDBRadioGroup1.ItemIndex = 2 then
    begin
      CalcW := Gross - Net2;
    end;

  if (Not(DM.qryCarsVisitOurWeight3.IsEmpty)) and
    (Not(DM.qryCarsVisitOurWeight4.IsEmpty)) then
    StatusBar1.Panels[1].Text := 'Διαφορά Βάρους ' + IntToStr(CalcW)
  else
    StatusBar1.Panels[1].Text := '';
  // Must Check
  if Not(DM.qryCarsVisitOurWeightWater.IsEmpty) then
    StatusBar1.Panels[2].Text := 'Νερό ' + IntToStr(Water)
  else
    StatusBar1.Panels[2].Text := '';

  if (Not(DM.qryCarsVisitOurWeight3.IsEmpty)) and
    (Not(DM.qryCarsVisitOurWeight4.IsEmpty)) then
    Result := CalcW >= 0
  else
    Result := True;

end;

function TfrmOurCarsDet.CheckFieldBeforeSave(Var tmptxt: string): Boolean;
var
  tmpError: Boolean;
  tmpSl: TStringList;
begin
  ResetColor;
  tmpError := False;
  tmpSl    := TStringList.Create;

  if cxdbtRegNo.Text = '' then
    begin
      cxdbtRegNo.Style.BorderColor := clRed;
      cxdbtRegNo.Style.BorderStyle := ebsThick;
      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Αριθμό Κυκλοφορίας');
    end;
  if cxdbtCarOwner.Text = '' then
    begin
      cxdbtCarOwner.Style.BorderColor := clRed;
      cxdbtCarOwner.Style.BorderStyle := ebsThick;
      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Ιδιοκτήτρια Εταιρεία');
    end;
  if cxdbtDrvName.Text = '' then
    begin
      cxdbtDrvName.Style.BorderColor := clRed;
      cxdbtDrvName.Style.BorderStyle := ebsThick;
      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Όνομα οδηγού');
    end;

  if tmpSl.Count > 0 then
    begin
      tmptxt := tmpSl.CommaText;
      tmptxt := StringReplace(tmptxt, ',', Chr(13) + Chr(10), [rfReplaceAll]);
      Result := False;
    end
  else
    begin
      Result := True;
    end;
end;

function TfrmOurCarsDet.CheckFieldBeforeFullFill(Var tmptxt: string): Boolean;
var
  tmpError: Boolean;
  tmpTxt0:string;
  tmpSl: TStringList;
begin
  ResetColor;
  tmpError := False;
  tmpSl    := TStringList.Create;

  if cxdbtRegNo.Text = '' then
    begin
      cxdbtRegNo.Style.BorderColor := clRed;
      cxdbtRegNo.Style.BorderStyle := ebsThick;
      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Αριθμό Κυκλοφορίας');
    end;
  if cxdbtCarOwner.Text = '' then
    begin
      cxdbtCarOwner.Style.BorderColor := clRed;
      cxdbtCarOwner.Style.BorderStyle := ebsThick;
      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Ιδιοκτήτρια Εταιρεία');
    end;
  if cxdbtDrvName.Text = '' then
    begin
      cxdbtDrvName.Style.BorderColor := clRed;
      cxdbtDrvName.Style.BorderStyle := ebsThick;
      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Όνομα οδηγού');
    end;
  if cxDBTProducts.Text = '' then
    begin
      cxDBTProducts.Style.BorderColor := clRed;
      cxDBTProducts.Style.BorderStyle := ebsThick;
      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Είδος Προϊόντος');
    end;

  if cxDBTEDA_Num.Text = '' then
    begin
      cxDBTEDA_Num.Style.BorderColor := clRed;
      cxDBTEDA_Num.Style.BorderStyle := ebsThick;
      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Δελτίο Αποστολής');
    end;

//  if DM.CheckFirstLast(tmpTxt0) = False then
//    begin
//      tmpSl.Append(TmpTxt0);
//    end;

  if tmpSl.Count > 0 then
    begin
      tmptxt := tmpSl.CommaText;
      tmptxt := StringReplace(tmptxt, ',', Chr(13) + Chr(10), [rfReplaceAll]);
      Result := False;
    end
  else
    begin
      Result := True;
    end;
end;

function TfrmOurCarsDet.CheckFieldBeforeFullFillFirstLast(Var tmptxt: string): Boolean;
var
  tmpError: Boolean;
  tmpTxt0:string;
  tmpSl: TStringList;
begin
  if DM.CheckFirstLast(tmpTxt0) = False then
    begin
     if MessageDlg(tmpTxt0+chr(10)+chr(13)+'Να γίνει καταχώρηση;', mtError, [mbYes, mbNo], 0) = mrNo then
       Result := False
     else
       Result := True
    end
  else
       Result := True;
end;

procedure TfrmOurCarsDet.ResetColor;
begin
  cxdbtRegNo.Style.BorderColor := clWindowFrame;
  cxdbtRegNo.Style.BorderStyle := ebsUltraFlat;

  cxdbtCarOwner.Style.BorderColor := clWindowFrame;
  cxdbtCarOwner.Style.BorderStyle := ebsUltraFlat;

  cxdbtDrvName.Style.BorderColor := clWindowFrame;
  cxdbtDrvName.Style.BorderStyle := ebsUltraFlat;

  cxDBTProducts.Style.BorderColor := clWindowFrame;
  cxDBTProducts.Style.BorderStyle := ebsUltraFlat;

  cxDBTEDA_Num.Style.BorderColor := clWindowFrame;
  cxDBTEDA_Num.Style.BorderStyle := ebsUltraFlat;

end;

function TfrmOurCarsDet.MakeFinalCheck: Boolean;
begin
  Result := True;
end;

end.
