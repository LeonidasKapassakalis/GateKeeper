unit FOtherCarsDet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FBaseDev1, Vcl.ActnList, Vcl.Menus,
  FBaseDev0, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ImgList, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxMemo, cxDBEdit,
  cxDropDownEdit, cxMRUEdit, cxSpinEdit, cxCheckBox, cxTextEdit, cxMaskEdit,
  cxCalendar, Vcl.StdCtrls, Vcl.ExtCtrls, FSelectLib, Common, Winapi.ShellAPI,
  Globals, DOtherCarsDet, cxGroupBox, cxCheckGroup, cxDBCheckGroup,
  cxImageComboBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxRadioGroup, cxLabel, cxDBLabel, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, JvBaseDlg, JvCalc, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.DBCtrls;

type
  TfrmOtherCarsDet = class(TfrmBaseDev1)
    Panel1: TPanel;
    Panel2: TPanel;
    Label8: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblCarNumber: TLabel;
    cxdbtDrvName: TcxDBMRUEdit;
    cxdbtRegNo: TcxDBMRUEdit;
    cxdbtCarOwner: TcxDBMRUEdit;
    PanelBtnCom: TPanel;
    Panel3: TPanel;
    Label9: TLabel;
    cxDBMemo1: TcxDBMemo;
    Panel4: TPanel;
    Label10: TLabel;
    cxDBCBWithout: TcxDBCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    Label2: TLabel;
    Label1: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Splitter1: TSplitter;
    Label6: TLabel;
    Splitter4: TSplitter;
    Splitter5: TSplitter;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1ActionLevel: TcxGridDBColumn;
    cxGrid1DBTableView1aa: TcxGridDBColumn;
    cxGrid1DBTableView1WeightDT: TcxGridDBColumn;
    cxGrid1DBTableView1WeightAA: TcxGridDBColumn;
    cxGrid1DBTableView1Weight: TcxGridDBColumn;
    cxGridDBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1ActionLevel: TcxGridDBColumn;
    cxGridDBTableView1aa: TcxGridDBColumn;
    cxGridDBTableView1WeightDT: TcxGridDBColumn;
    cxGridDBTableView1WeightAA: TcxGridDBColumn;
    cxGridDBTableView1Weight: TcxGridDBColumn;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    LabelP7: TLabel;
    LabelP8: TLabel;
    cxDBTEDA_Num: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBLabel;
    N7: TMenuItem;
    ToolButton9: TToolButton;
    actlibref: TAction;
    actDeleteRow: TAction;
    cxDBLabel1: TcxDBLabel;
    cxDBTProducts: TcxDBLookupComboBox;
    cxDBTCompany: TcxDBMRUEdit;
    cxDBRadioGroup1: TDBRadioGroup;
    cxDBCheckBox2: TcxDBCheckBox;
    actSrc: TAction;
    Button1: TButton;
    cxDBCheckBox3: TcxDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure actMainUpdateExecute(Sender: TObject);
    procedure actMainOKExecute(Sender: TObject);
    procedure actMainCancelExecute(Sender: TObject);
    procedure actMainInsertExecute(Sender: TObject);
    procedure actDispIdExecute(Sender: TObject);
    procedure cxDBCheckBox4PropertiesChange(Sender: TObject);
    procedure cxGridDblClick(Tag: Integer);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGrid3DBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure cxDBRadioGroup1PropertiesChange(Sender: TObject);
    procedure Panel8Resize(Sender: TObject);
    procedure cxdbtRegNoKeyPress(Sender: TObject; var Key: Char);
    procedure actMainOKFFExecute(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure actlibrefExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actDeleteRowExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxdbtDrvNameDblClick(Sender: TObject);
    procedure cxdbtRegNoExit(Sender: TObject);
    procedure cxdbtDrvNameExit(Sender: TObject);
    procedure cxDBTCompanyExit(Sender: TObject);
    procedure cxDBTProductsDblClick(Sender: TObject);
    procedure actSrcExecute(Sender: TObject);
    procedure cxdbtAllCloseUp(Sender: TObject);
    procedure cxdbtCarOwnerExit(Sender: TObject);
  private
    DM: TDMOtherCarsDet;
    NotInBatchState:Boolean;
    procedure ExecLibClick;
    procedure ResetColor;
    procedure DeleteSl(Gid: String);
  public
    SlIn, SlOut: TStringList;

    function CheckBeforeSave: Boolean;
    function CheckBeforeFull: Boolean;
    function CheckWeight: Boolean;

    function CheckFieldBeforeFullFill(Var tmptxt: string): Boolean;
    function CheckFieldBeforeSave(Var tmptxt: string): Boolean;

    procedure AddRec();
    procedure GotoRec(id: Integer);
    procedure EditRec(RecId: Integer);
    function MakeFinalCheck: Boolean; override;
  end;

implementation

{$R *.dfm}

uses FMain;

procedure TfrmOtherCarsDet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SelectMainData.State in [dsEdit, dsInsert] then
    begin
      MessageDlg('Παρακαλώ ολοκληρώστε την καταχώρηση σας.', mtWarning, [mbOK], 0);
      Action := caNone;
    end
  else
    begin
      Action := caFree;
    end
end;

procedure TfrmOtherCarsDet.FormCreate(Sender: TObject);
var
  x: Integer;
begin
  inherited;
  Created := False;
  NotInBatchState:=True;

  DM     := TDMOtherCarsDet.Create(self);
  PrimDM := DM;
  SecDM  := DM;

  SlIn  := TStringList.Create;
  SlOut := TStringList.Create;

  SelectMainData := DM.qryCarsVisitOther;

  SetDBLookupSort;

  LoadMru(cxdbtRegNo, DM.VL_RegNo,1);
  LoadMru(cxdbtCompany, DM.VL_Company,1);
  LoadMru(cxdbtCarOwner, DM.VL_CarOwner);
  LoadMru(cxdbtDrvName, DM.VL_Drivers,1);
//  LoadMru(cxDBTProducts, DM.VL_Product);

  for x := 0 to self.ComponentCount - 1 do
    if Components[x] is TcxGridDBTableView then
      begin
        TcxGridDBTableView(Components[x]).OptionsView.Footer := False;
        TcxGridDBTableView(Components[x]).OptionsView.GroupByBox := False;
        TcxGridDBTableView(Components[x]).OptionsBehavior.BestFitMaxRecordCount := 10;
        if TcxGridDBTableView(Components[x]).Tag = 0 then
          TcxGridDBTableView(Components[x]).ApplyBestFit();
        TcxGridDBTableView(Components[x]).OptionsView.Footer := False;
        TcxGridDBTableView(Components[x]).OptionsCustomize.ColumnsQuickCustomization := False;
        TcxGridDBTableView(Components[x]).PopupMenu := popFilter;
        TcxGridDBTableView(Components[x]).OptionsCustomize.ColumnSorting := False;
        TcxGridDBTableView(Components[x]).OptionsCustomize.ColumnFiltering := False;
        TcxGridDBTableView(Components[x]).OptionsCustomize.ColumnsQuickCustomization := False;
        // TcxGridDBTableView(Components[x]).OnDblClick := cxGrid1DBTableView1DblClick;
        // TcxGridDBTableView(Components[x]).Filtering.ColumnFilteredItemsList := False;
        // TcxGridDBTableView(Components[x]).Filtering.ColumnMRUItemsList      := False;
        // TcxGridDBTableView(Components[x]).FilterBox.Visible := fvNever;
      end;


//  cxGrid1.Height:=60;
//  cxGrid2.Height:=60;
//  Panel5.Height:=110;
//  Panel6.Height:=110;
//  TabSheet1.Height:=110;
//  TabSheet2.Height:=110;
//  PageControl1.Height:=110;
//  Panel1.Height:=110;

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


  if frmMain.chkSmallOther.Checked then
  begin
  Panel3.Height:=200;
  Panel3.Top:=410;
  cxDBMemo1.Height:=80;
  end
  else
  begin
  Self.Height:=Self.Height+140;
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

procedure TfrmOtherCarsDet.FormDestroy(Sender: TObject);
begin
  inherited;
  SlIn.Free;
  SlOut.Free;
end;

procedure TfrmOtherCarsDet.actDeleteRowExecute(Sender: TObject);
begin
  inherited;
  if SelectMainData.State in [dsEdit] then
    begin
      if MessageDlg('Να γίνει διαγραφή της Ζύγισης;', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          if DM.qryCarsVisitOtherWeight.Locate('WeightAA', PopupDataSet.FieldByName('WeightAA').AsVariant, []) then
            begin
              DM.qryCarsVisitOtherWeight.Delete;
            end;
          DM.GetTRawLib.Parameters.ParamByName('PGid').Value := PopupDataSet.FieldByName('WeightGuid').AsVariant;
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
              MessageDlg('Πρόβλημα σε αποενημέρωση ζύγισης ' + PopupDataSet.FieldByName('WeightGuid').AsString, mtError, [mbOK], 0);
              Exit;
            end;
          try
            DeleteSl(PopupDataSet.FieldByName('WeightGuid').AsString);
          except
            MessageDlg('Πρόβλημα σε αποενημέρωση ζύγισης SL2', mtError, [mbOK], 0);
          end;
          DM.qryCarsVisitOtherWeight.Requery();
          DM.qryCarsVisitOtherWeight1.Requery();
          DM.qryCarsVisitOtherWeight2.Requery();
          CheckWeight;
        end;
    end;
end;

procedure TfrmOtherCarsDet.DeleteSl(Gid: String);
var i:Integer;
begin
   if SlIn.Find(Gid,i) then
      SlIn.Delete(i);
   if SlOut.Find(Gid,i) then
      SlIn.Delete(i);
end;


procedure TfrmOtherCarsDet.actDispIdExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmOtherCarsDet.actlibrefExecute(Sender: TObject);
begin
  inherited;
  ExecLibClick;
end;

procedure TfrmOtherCarsDet.actMainCancelExecute(Sender: TObject);
begin
  inherited;
  if ((SlIn.Count > 0) or (SlOut.Count > 0)) then
    begin
      if MessageDlg('Θα διαγραφούν οι ζυγίσεις που καταχωρίσατε.', mtWarning, [mbYes, mbNo], 0) = mrYes then
        begin
          DM.DeleteLib(SlIn);
          DM.DeleteLib(SlOut);
          SlIn.Clear;
          SlOut.Clear;
        end
      else
        begin
          Exit;
        end;
    end;
  SelectMainData.Cancel;
  SlIn.Clear;
  SlOut.Clear;
  if frmMain.bAutoClose then
    self.Close;
end;

procedure TfrmOtherCarsDet.actMainInsertExecute(Sender: TObject);
begin
  inherited;
  AddRec;
end;

procedure TfrmOtherCarsDet.actMainOKExecute(Sender: TObject);
var
  ErrorTxt: string;
  InsertState: Boolean;
begin
  inherited;
  InsertState := SelectMainData.State in [dsInsert];
  if DM.CheckSameReg(cxdbtRegNo.Text, SelectMainData.FieldByName('id').AsInteger) = True then
    begin
      MessageDlg('Υπάρχει ήδη καταχώρηση για το όχημα.', mtError, [mbOK], 0);
      Exit;
    end;

  if Not CheckWeight then
    if MessageDlg('Αρνητικό Βάρος.' + #13 + #10 + 'Να γίνει Αποθήκευση', mtError, [mbYes, mbNo], 0) = mrNo then
      Exit;

  if CheckFieldBeforeSave(ErrorTxt) then
    if not(DM.CheckReg(cxdbtRegNo.Text,ErrorTxt)) then
      begin
        MessageDlg('Οι καταχωρίσεις ζύγισεις αφορούν άλλο Αριθμό Κυκλοφορίας.' + #13 + #10 + ErrorTxt + #13 + #10 + 'Αδύνατη η Αποθήκευση', mtError, [mbOK], 0);
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
              SlOut.Clear;
              actMainUpdate.Execute;
            end;
        except
          on E: Exception do
            MessageDlg('Πρόβλημα ' + E.Message, mtWarning, [mbOK], 0);
        end;
        SlIn.Clear;
        SlOut.Clear;
      end
  else
    begin
      MessageDlg(ErrorTxt, mtError, [mbOK], 0);
    end;
end;

procedure TfrmOtherCarsDet.actMainOKFFExecute(Sender: TObject);
var
  ErrorTxt: string;
begin
  inherited;
  if DM.CheckSameReg(cxdbtRegNo.Text, SelectMainData.FieldByName('id').AsInteger) = True then
    begin
      MessageDlg('Υπάρχει ήδη καταχώρηση για το όχημα.', mtError, [mbOK], 0);
      Exit;
    end;

  if DM.qryCarsVisitOtherWithoutWeight.AsBoolean = False then
  if DM.qryCarsVisitOtherWeight1.IsEmpty or DM.qryCarsVisitOtherWeight2.IsEmpty then
  begin
      MessageDlg('Δεν έχετε καταχωρήσει ζυγίσεις' + #13 + #10 + 'Αδύνατη η ολοκλήρωση.', mtError, [mbOk], 0);
      Exit;
  end;

  if Not CheckWeight then
    if MessageDlg('Αρνητικό Βάρος.' + #13 + #10 + 'Να γίνει Αποθήκευση', mtError, [mbYes, mbNo], 0) = mrNo then
      Exit;

  if CheckFieldBeforeFullFill(ErrorTxt) then
    if not(DM.CheckReg(cxdbtRegNo.Text,ErrorTxt)) then
      begin
        MessageDlg('Οι καταχωρίσεις ζύγισεις αφορούν άλλο Αριθμό Κυκλοφορίας.' + #13 + #10 + ErrorTxt + #13 + #10 + 'Αδύνατη η Αποθήκευση', mtError, [mbOK], 0);
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
          SelectMainData.FieldByName('DTime').AsDateTime := SelectMainData.FieldByName('DateTimeOut').AsDateTime - SelectMainData.FieldByName('DateTimeIn').AsDateTime;
          SelectMainData.Post;
          MessageDlg('Καταχωρήθηκε.', mtInformation, [mbOK], 0);
          if frmMain.bAutoCloseRoot then
            self.Close;
        except
          on E: Exception do
            MessageDlg('Πρόβλημα ' + E.Message, mtWarning, [mbOK], 0);
        end;
        SlIn.Clear;
        SlOut.Clear;
      end
  else
    begin
      MessageDlg(ErrorTxt, mtError, [mbOK], 0);
    end;

end;

procedure TfrmOtherCarsDet.actMainUpdateExecute(Sender: TObject);
begin
  inherited;
  if SelectMainData.FieldByName('FullFilled').AsBoolean = True then
    begin
      MessageDlg('Έχει γίνει ολοκλήρωση.' + #13 + #10 + 'Δεν επιτρέπονται μεταβολές', mtError, [mbOK], 0);
    end
  else
    begin
      if cxDBCBWithout.Checked then
        begin
          PageControl1.ActivePageIndex := 0;
        end
      else
        begin
          PageControl1.ActivePageIndex := 1;
        end;
      DM.qryCarsVisitOther.Edit;
    end;
end;

procedure TfrmOtherCarsDet.actSrcExecute(Sender: TObject);
var t1,t2,t3:string;
begin
  inherited;
  t1:=cxdbtRegNo.Text;
//t2:=cxDBTCarOwner.Text;                        // 14/4/2016
//t2:=cxDBTCompany.Text;                         // 14/4/2016
  if frmMain.gpCompany > '' then
     if AnsiUpperCase(frmMain.gpCompany) = cxDBTCompany.Text then
       t2:=''
     else
       t2:=cxDBTCompany.Text
  else
     t2:=cxDBTCompany.Text;

  t3:=cxdbtDrvName.Text;


if frmMain.GetHelpOther(t3,t2,t1) then
begin
  cxdbtRegNo.Text:=t1;
//  cxdbtCarOwner.Text:=t2;                      // 14/4/2016
  cxDBTCompany.Text:=t2;
  cxdbtDrvName.Text:=t3;
end;
end;

procedure TfrmOtherCarsDet.cxDBCheckBox4PropertiesChange(Sender: TObject);
begin
  inherited;
  if self.Visible = False then
    Exit;
  if cxDBCBWithout.Checked then
    begin
      if MessageDlg('Προσοχή δεν θα καταχωρηθούν ζυγίσεις στην κίνηση.', mtError, [mbYes, mbNo], 0) = mrYes then
        begin
          if Not(DM.qryCarsVisitOtherWeight.IsEmpty) then
            begin
              DM.qryCarsVisitOtherWeight.First;
              repeat
                if DM.GetTRawLib.Locate('WeightAA', DM.qryCarsVisitOtherWeightWeightAA.AsVariant, []) then
                  begin
                    DM.GetTRawLib.Edit;
                    DM.GetTRawLibUsed.AsBoolean := False;
                    DM.GetTRawLib.Post;
                  end;
                DM.qryCarsVisitOtherWeight.Delete;
                DM.qryCarsVisitOtherWeight.Next;
              until DM.qryCarsVisitOtherWeight.Eof;
              DM.qryCarsVisitOtherWeight.Requery();
              DM.qryCarsVisitOtherWeight1.Requery();
              DM.qryCarsVisitOtherWeight2.Requery();
            end;
          PageControl1.ActivePageIndex := 0;
        end;
    end
  else
    begin
      PageControl1.ActivePageIndex := 1;
    end

end;

procedure TfrmOtherCarsDet.cxDBRadioGroup1PropertiesChange(Sender: TObject);
begin
  inherited;
  if cxDBRadioGroup1.ItemIndex = 0 then
    begin
      LabelP7.Caption := 'Βάρος Οχήματος πρό εκφόρτωσης';
      LabelP8.Caption := 'Βάρος Οχήματος μετά εκφόρτωσης';
    end;
  if cxDBRadioGroup1.ItemIndex = 1 then
    begin
      LabelP7.Caption := 'Βάρος Οχήματος πρό φόρτωσης';
      LabelP8.Caption := 'Βάρος Οχήματος μετά φόρτωσης';
    end;
  CheckWeight();

end;

procedure TfrmOtherCarsDet.cxDBTCompanyExit(Sender: TObject);
begin
  inherited;

  DM.spCheckCompany.Active := False;
  DM.spCheckCompany.Parameters.ParamByName('@ComName').Value := frmMain.String2Pho(DM.qryCarsVisitOtherRegNo.Text);
  DM.spCheckCompany.Active := True;
  if DM.spCheckCompany.IsEmpty then
  begin
  end;
  cxdbtAllCloseUp(Sender);
end;

procedure TfrmOtherCarsDet.cxdbtDrvNameDblClick(Sender: TObject);
begin
  inherited;
  frmMain.actSubParamNoWrapExecute('actDriversOther');
  DM.VL_Drivers.Requery();
//  cxdbtDrvName.Properties.LookupItems.Clear;
//  LoadMru(cxdbtDrvName, DM.VL_Drivers);
end;

procedure TfrmOtherCarsDet.cxdbtDrvNameExit(Sender: TObject);
begin
  inherited;

  DM.spCheckDriver.Active := False;
  DM.spCheckDriver.Parameters.ParamByName('@DriverName').Value := frmMain.String2Pho(DM.qryCarsVisitOtherRegNo.Text);
  DM.spCheckDriver.Active := True;
  if DM.spCheckDriver.IsEmpty then
  begin
  end;
  cxdbtAllCloseUp(Sender);
end;

procedure TfrmOtherCarsDet.cxdbtAllCloseUp(Sender: TObject);
begin
  inherited;
  TcxDBMRUEdit(Sender).SelLength:=0;
end;

procedure TfrmOtherCarsDet.cxdbtCarOwnerExit(Sender: TObject);
begin
  inherited;
  cxdbtAllCloseUp(Sender);
end;

procedure TfrmOtherCarsDet.cxDBTProductsDblClick(Sender: TObject);
begin
  inherited;
  frmMain.actSubParamNoWrapExecute('actProducts');
  DM.VL_Product.Requery();
end;

procedure TfrmOtherCarsDet.cxdbtRegNoExit(Sender: TObject);
begin
  inherited;
  if DM.CheckSameReg(cxdbtRegNo.Text, SelectMainData.FieldByName('id').AsInteger) = True then
    begin
      MessageDlg('Υπάρχει ήδη καταχώρηση για το όχημα.', mtError, [mbOK], 0);
      Exit;
    end;

  DM.spCheckCar.Active := False;
  DM.spCheckCar.Parameters.ParamByName('@RegNo').Value := cxdbtRegNo.Text;
  DM.spCheckCar.Active := True;
  if DM.spCheckCar.IsEmpty then
  begin

  end;
  cxdbtAllCloseUp(Sender);

end;

procedure TfrmOtherCarsDet.cxdbtRegNoKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmOtherCarsDet.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if DM.qryCarsVisitOtherWeight1.IsEmpty then
    cxGridDblClick(1)
  else
    MessageDlg('Έχεται ήδη καταχωρήσει βάρος.', mtError, [mbOK], 0);
  CheckWeight();
end;

procedure TfrmOtherCarsDet.cxGrid3DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  cxGridDblClick(2);
  CheckWeight
end;

procedure TfrmOtherCarsDet.cxGridDblClick(Tag: Integer);
var
  Tmp: String;
begin
  if SelectMainData.State in [dsInsert] then
    begin
//      MessageDlg('Παρακαλώ ολοκληρώστε την αρχική καταχώρηση.', mtInformation, [mbOK], 0);
      if MessageDlg('Να γίνει αυτόματη καταχώρηση; ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          NotInBatchState:=False;
          actMainOKExecute(Self);
          NotInBatchState:=True;
        end
      else
         Exit;
    end;

  DM.qryCarsVisitOtherWeight.Active := True;
  DM.qryCarsVisitOtherWeight1.Active := True;
  DM.qryCarsVisitOtherWeight2.Active := True;

  if SelectMainData.State in [dsEdit] then
    begin
      Tmp := frmMain.GetLibId(cxdbtRegNo.Text);
      if Tmp > '' then
        begin
          DM.GetTRawLib.Parameters.ParamByName('PGid').Value := Tmp;
          DM.GetTRawLib.Active := False;
          DM.GetTRawLib.Active := True;
          if DM.GetTRawLib.recordcount = 0 then
            begin
              MessageDlg('No record found', mtInformation, [mbOK], 0);
              Exit;
            end;

          if DM.CheckAA(DM.GetTRawLibLibId.AsInteger,DM.GetTRawLibLibDateTime.AsDateTime,Tag) Then
            begin
              DM.qryCarsVisitOtherWeight.Append;
              DM.qryCarsVisitOtherWeight.Edit;
              DM.qryCarsVisitOtherWeightid.AsInteger := DM.qryCarsVisitOtherid.AsInteger;
              DM.qryCarsVisitOtherWeightActionLevel.AsInteger := Tag;
              DM.qryCarsVisitOtherWeightaa.AsInteger       := DM.GetTRawLibLibId.AsInteger;
              DM.qryCarsVisitOtherWeightWeight.AsInteger   := DM.GetTRawLibLibWeight.AsInteger;
              DM.qryCarsVisitOtherWeightWeightAA.AsInteger := DM.GetTRawLibLibId.AsInteger;
              DM.qryCarsVisitOtherWeightWeightGuid.Value   := DM.GetTRawLibGId.Value;

              DM.qryCarsVisitOtherWeightWeightRegNo.AsString := DM.GetTRawLibLibRegNo.AsString;
              DM.qryCarsVisitOtherWeightWeightDT.AsDateTime := DM.GetTRawLibLibDateTime.AsDateTime;
              try
                DM.qryCarsVisitOtherWeight.Post;
                DM.qryCarsVisitOtherWeight.Requery();
                DM.qryCarsVisitOtherWeight1.Requery();
                DM.qryCarsVisitOtherWeight2.Requery();
                DM.GetTRawLib.Edit;
                DM.GetTRawLibUsed.AsBoolean := True;
                DM.GetTRawLib.Post;
                case Tag of
                  1:
                    SlIn.Append(Tmp);
                  2:
                    SlOut.Append(Tmp);
                end;
              except
                on E: Exception do
                  begin
                    MessageDlg(E.Message, mtError, [mbOK], 0);
                    DM.qryCarsVisitOtherWeight.Cancel;
                  end;
              end
            end
          else
            begin
              MessageDlg('''Εχει καταχωρηθεί ζύγιση με επόμενο αριθμό' + #13 + #10 + 'Αδυνατη η καταχώρηση.', mtError, [mbOK], 0);
            end
        end
      else
        MessageDlg('Παρακαλώ επιλέξτε Ζύγιση', mtInformation, [mbOK], 0)
    end;
  CheckWeight();
end;

procedure TfrmOtherCarsDet.ExecLibClick;
var
  sCmd, sCmd1: String;
begin
  if frmMain.chkUseInternalLibro.Checked  then
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

procedure TfrmOtherCarsDet.cxGridDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if DM.qryCarsVisitOtherWeight1.IsEmpty then
  begin
    MessageDlg('Δεν υπάρχει καταχώρηση Εισόδου.', mtError, [mbOK], 0);
    Exit;
  end
  else
  begin
    cxGridDblClick(2);
    CheckWeight();
  end;
end;

procedure TfrmOtherCarsDet.cxGridDBTableView2DblClick(Sender: TObject);
begin
  inherited;
  cxGridDblClick(4);
  CheckWeight();
end;

procedure TfrmOtherCarsDet.cxGridDBTableView3DblClick(Sender: TObject);
begin
  inherited;
  cxGridDblClick(5);
  CheckWeight();
end;

procedure TfrmOtherCarsDet.EditRec(RecId: Integer);
begin
  GotoRec(RecId);
  CheckWeight;
  actMainUpdateExecute(self);
end;

procedure TfrmOtherCarsDet.AddRec;
begin
  DM.qryCarsVisitOther.Active := False;
  DM.qryCarsVisitOther.Parameters.ParamByName('PId').Value := 0;
  DM.qryCarsVisitOther.Active := True;

  DM.qryCarsVisitOther.Insert;
  DM.qryCarsVisitOther.Edit;
  DM.qryCarsVisitOtherDateTimeIn.AsDateTime    := Now();
  DM.qryCarsVisitOtherFullFilled.AsBoolean     := False;
  DM.qryCarsVisitOtherInUsr.AsInteger          := LoginId;
  DM.qryCarsVisitOtherProcedureState.AsInteger := 1;
  DM.qryCarsVisitOtherNoted.AsBoolean          := False;
  DM.qryCarsVisitOtherWithoutWeight.AsBoolean  := False;
  DM.qryCarsVisitOtherLong_Stay.AsBoolean      := False;
  if frmMain.gpCarOwner > '' then
    DM.qryCarsVisitOtherCarOwner.AsString := frmMain.gpCarOwner;
  if frmMain.gpCompany > '' then
    begin
    DM.qryCarsVisitOtherCompany.AsString := frmMain.gpCompany;
//    DM.VL_Company.Locate('Name',frmMain.gpCompany,[]);
//    DM.qryCarsVisitOtherCompanyId.AsInteger := DM.VL_Companyid.AsInteger;
    end;
//    cxdbtCompany.Text:= frmMain.gpCompany;
  if frmMain.gpProducts > '' then
  begin
    DM.VL_Product.Locate('Name',frmMain.gpProducts,[]);
    DM.qryCarsVisitOtherProductid.Asinteger := DM.VL_Productid.AsInteger;
  end;
//    cxDBTProducts.   Text:= frmMain.gpProducts;
end;


procedure TfrmOtherCarsDet.GotoRec(id: Integer);
begin
  DM.qryCarsVisitOther.Active := False;
  DM.qryCarsVisitOther.Parameters.ParamByName('PId').Value := id;
  DM.qryCarsVisitOther.Active := True;

  DM.qryCarsVisitOtherWeight.Active := True;
  DM.qryCarsVisitOtherWeight1.Active := True;
  DM.qryCarsVisitOtherWeight2.Active := True;
  CheckWeight;
  SetState('Browse');
end;

function TfrmOtherCarsDet.MakeFinalCheck: Boolean;
begin
  Result := True;
end;

procedure TfrmOtherCarsDet.N7Click(Sender: TObject);
begin
  inherited;

  if MessageDlg('Να γίνει διαγραφή της Ζύγισης;', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if DM.qryCarsVisitOtherWeight.Locate('WeightAA', PopupDataSet.FieldByName('WeightAA').AsVariant, []) then
        begin
          DM.qryCarsVisitOtherWeight.Delete;
        end;
      if DM.GetTRawLib.Locate('WeightAA', PopupDataSet.FieldByName('WeightAA').AsVariant, []) then
        begin
          DM.GetTRawLib.Edit;
          DM.GetTRawLibUsed.AsBoolean := False;
          DM.GetTRawLib.Post;
        end;
      DM.qryCarsVisitOtherWeight.Requery();
      DM.qryCarsVisitOtherWeight1.Requery();
      DM.qryCarsVisitOtherWeight2.Requery();
      CheckWeight;
    end;

end;

procedure TfrmOtherCarsDet.Panel8Resize(Sender: TObject);
var
  h, h1: Integer;
begin
  inherited;
  h            := Panel1.Width;
  h1           := h div 2;
  Panel5.Width := h1;
  Panel6.Width := h1;
end;

function TfrmOtherCarsDet.CheckWeight: Boolean;
var
  Net, Gross, CalcW: Integer;
begin
  if Created = False then
    Exit;

  Net   := 0;
  Gross := 0;

  if Not(DM.qryCarsVisitOtherWeight1.IsEmpty) then
    Net := DM.qryCarsVisitOtherWeight1Weight.AsInteger;

  if Not(DM.qryCarsVisitOtherWeight2.IsEmpty) then
    begin
      DM.qryCarsVisitOtherWeight2.Last;
      Gross := DM.qryCarsVisitOtherWeight2Weight.AsInteger;
    end;

  if cxDBRadioGroup1.ItemIndex = 0 then
    begin
      CalcW := Net - Gross;
    end;
  if cxDBRadioGroup1.ItemIndex = 1 then
    begin
      CalcW := Gross - Net;
    end;

  if Not(DM.qryCarsVisitOtherWeight1.IsEmpty) and Not(DM.qryCarsVisitOtherWeight2.IsEmpty) then
    StatusBar1.Panels[1].Text := 'Διαφορά Βάρους ' + IntToStr(CalcW)
  else
    StatusBar1.Panels[1].Text := '';

  if Not(DM.qryCarsVisitOtherWeight1.IsEmpty) and Not(DM.qryCarsVisitOtherWeight2.IsEmpty) then
    Result := Not(CalcW < 0)
  else
    Result := True;
end;

function TfrmOtherCarsDet.CheckBeforeFull: Boolean;
begin
  Result := True;
end;

function TfrmOtherCarsDet.CheckBeforeSave: Boolean;
begin
  Result := True;
end;

function TfrmOtherCarsDet.CheckFieldBeforeSave(Var tmptxt: string): Boolean;
var
  tmpError: Boolean;
  tmpSl: TStringList;
begin
  tmpError := False;
  ResetColor;
  tmpSl := TStringList.Create;

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
  if cxdbtCompany.Text = '' then
    begin
      cxdbtCompany.Style.BorderColor := clRed;
      cxdbtCompany.Style.BorderStyle := ebsThick;
      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Προμηθευτή');
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

function TfrmOtherCarsDet.CheckFieldBeforeFullFill(Var tmptxt: string): Boolean;
var
  tmpError: Boolean;
  tmpSl: TStringList;
begin
  tmpError := False;
  tmpSl    := TStringList.Create;
  ResetColor;

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
  if cxdbtCompany.Text = '' then
    begin
      cxdbtCompany.Style.BorderColor := clRed;
      cxdbtCompany.Style.BorderStyle := ebsThick;
      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Προμηθευτή');
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

procedure TfrmOtherCarsDet.ResetColor;
begin
  cxdbtRegNo.Style.BorderColor := clWindowFrame;
  cxdbtRegNo.Style.BorderStyle := ebsUltraFlat;

  cxdbtCarOwner.Style.BorderColor := clWindowFrame;
  cxdbtCarOwner.Style.BorderStyle := ebsUltraFlat;

  cxdbtCompany.Style.BorderColor := clWindowFrame;
  cxdbtCompany.Style.BorderStyle := ebsUltraFlat;

  cxdbtDrvName.Style.BorderColor := clWindowFrame;
  cxdbtDrvName.Style.BorderStyle := ebsUltraFlat;

  cxDBTProducts.Style.BorderColor := clWindowFrame;
  cxDBTProducts.Style.BorderStyle := ebsUltraFlat;

  cxDBTEDA_Num.Style.BorderColor := clWindowFrame;
  cxDBTEDA_Num.Style.BorderStyle := ebsUltraFlat;
end;

end.
