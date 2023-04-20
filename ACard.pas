Unit ACard;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ACardD, StdCtrls, DB, dxmdaset, Menus, Data.Win.ADODB,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, cxCurrencyEdit, cxDBEdit, cxCheckBox,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxCalendar, cxTextEdit, cxPC, Vcl.ActnMenus, dxBevel, cxNavigator,
  Vcl.ExtCtrls, TypInfo, FBaseDev0, cxGridCardView, cxGridDBCardView,
  cxGridCustomLayoutView, Vcl.DBCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

Type
  TfrmACard = Class(TfrmBaseDev0)
    ActionList1: TActionList;
    actClose: TAction;
    actInsert: TAction;
    actUpdate: TAction;
    actDelete: TAction;
    actOK: TAction;
    actCancel: TAction;
    actToBlackList: TAction;
    actFromBlackList: TAction;
    UpdCommandAct: TAction;
    actCopy: TAction;
    actGridPrint: TAction;
    actInActive: TAction;
    ActionManager1: TActionManager;
    ActionToolBar1: TActionToolBar;
    Panel1: TPanel;
    dxPageControl1: TcxPageControl;
    tabBrowser: TcxTabSheet;
    dxBevel1: TdxBevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    tabData: TcxTabSheet;
    dxPageControl2: TcxPageControl;
    tabFirstPage: TcxTabSheet;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    lblEmp: TLabel;
    LabelInActive: TLabel;
    dxDBEdit1: TcxDBTextEdit;
    dxDBDateEdit1: TcxDBDateEdit;
    dxDBDateEdit2: TcxDBDateEdit;
    dxDBDateEdit3: TcxDBDateEdit;
    dxDBLookupEdit1: TcxDBLookupComboBox;
    dxDBCheckEdit1: TcxDBCheckBox;
    dxDBCheckEdit2: TcxDBCheckBox;
    dxDBCheckEdit3: TcxDBCheckBox;
    GroupBox1: TGroupBox;
    dxDBLookupEdit2: TcxDBLookupComboBox;
    dxDBLookupEdit3: TcxDBLookupComboBox;
    dxDBLookupEdit4: TcxDBLookupComboBox;
    dxDBLookupEdit5: TcxDBLookupComboBox;
    dxDBLookupEdit7: TcxDBLookupComboBox;
    GroupBoxBlackList: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    dxDBDateEdit4: TcxDBDateEdit;
    dxDBLookupEdit6: TcxDBLookupComboBox;
    dxDBEdit3: TcxDBTextEdit;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    dxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxDBEdit4: TcxDBTextEdit;
    dxDBEdit5: TcxDBTextEdit;
    dxDBCheckEdit4: TcxDBCheckBox;
    Edit1: TEdit;
    dxDBCheckEdit5: TcxDBCheckBox;
    dxDBCheckEdit6: TcxDBCheckBox;
    GroupBoxInActive: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    dxDBDateEdit7: TcxDBDateEdit;
    dxDBLookupEdit8: TcxDBLookupComboBox;
    dxDBEdit7: TcxDBTextEdit;
    CheckBox1: TCheckBox;
    tabBlackList: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1BLACKLISTID: TcxGridDBColumn;
    cxGrid2DBTableView1ACARDID: TcxGridDBColumn;
    cxGrid2DBTableView1FRDATE: TcxGridDBColumn;
    cxGrid2DBTableView1TODATE: TcxGridDBColumn;
    cxGrid2DBTableView1NOTES: TcxGridDBColumn;
    cxGrid2DBTableView1INSDT: TcxGridDBColumn;
    cxGrid2DBTableView1UPDDT: TcxGridDBColumn;
    cxGrid2DBTableView1INSUSR: TcxGridDBColumn;
    cxGrid2DBTableView1UPDUSR: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    ColorDialog1: TColorDialog;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    cxDblCbEmp: TcxDBLookupComboBox;
    actDisp: TAction;
    actStat: TAction;
    memWS: TdxMemData;
    memWSComponentName: TStringField;
    memWSComponentValueInt: TIntegerField;
    memWSComponentValueDT: TDateTimeField;
    cxDBCheckBox1: TcxDBCheckBox;
    lblcc: TLabel;
    cxDblCbCC: TcxDBLookupComboBox;
    actUndoInActive: TAction;
    cxGrid1DBTableView1AcardId: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDACARDID: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDACARDCODE: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDCUSTOMERID0: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDISSUEDATE: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDEXPIREDATE: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDMETERBOOLEAN: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDPINBOOLEAN: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDINSDT: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDUPDDT: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDINSUSR: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDUPDUSR: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDSTARTDATE: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDVTYPEID: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDCREATEBOOLEAN: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDBLACKLISTBOOLEAN: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDBLACKLISTDATE: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDBLACKLISTUSR: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDBLACKLISTNOTES: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID1: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID2: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID3: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID4: TcxGridDBColumn;
    cxGrid1DBTableView1DAYAMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1MONTHAMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1REGNO: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDHOLDER: TcxGridDBColumn;
    cxGrid1DBTableView1ISACTIVE: TcxGridDBColumn;
    cxGrid1DBTableView1EXPIREPHDATE: TcxGridDBColumn;
    cxGrid1DBTableView1EXPIRELODATE: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID5: TcxGridDBColumn;
    cxGrid1DBTableView1EMPLOYEESID: TcxGridDBColumn;
    cxGrid1DBTableView1NEWCARDBOOLEAN: TcxGridDBColumn;
    cxGrid1DBTableView1NEWCARDID: TcxGridDBColumn;
    cxGrid1DBTableView1CARDHASEMPNAME: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDCODENUM: TcxGridDBColumn;
    cxGrid1DBTableView1INACTIVEDATE: TcxGridDBColumn;
    cxGrid1DBTableView1INACTIVEUSR: TcxGridDBColumn;
    cxGrid1DBTableView1INACTIVENOTES: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID6: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID7: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID8: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID9: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDIGROUPID10: TcxGridDBColumn;
    cxGrid1DBTableView1COSTCENTERID: TcxGridDBColumn;
    cxGrid1DBTableView1VTypeDescr: TcxGridDBColumn;
    cxGrid1DBTableView1CClassDescr: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERDescr: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERName: TcxGridDBColumn;
    cxGrid1DBTableView1CGroupDescr: TcxGridDBColumn;
    cxGrid1DBTableView1AcardCUSTOMERId: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERStreet: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERZip: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERCity: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERSAPCODE: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERHASDETAILEMP: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERCUSTOMERID: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTOMERISTEST: TcxGridDBColumn;
    cxGrid1DBTableView1ACARDPENDING: TcxGridDBColumn;
    cxGrid1DBTableView1AcardCodeFull: TcxGridDBColumn;
    cxGrid1DBTableView1AcardCodeFull000: TcxGridDBColumn;
    cxGrid1DBTableView1LEmp: TcxGridDBColumn;
    Procedure actCloseExecute(Sender: TObject);
    Procedure actInsertExecute(Sender: TObject);
    Procedure actUpdateExecute(Sender: TObject);
    Procedure actDeleteExecute(Sender: TObject);
    Procedure actOKExecute(Sender: TObject);
    Procedure actCancelExecute(Sender: TObject);
    Procedure FormShow(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    Procedure dxDBGrid1DblClick(Sender: TObject);
    Procedure actToBlackListExecute(Sender: TObject);
    Procedure actFromBlackListExecute(Sender: TObject);
    procedure dxDBEdit2Exit(Sender: TObject);
    procedure actCopyExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure dxDBGrid1Enter(Sender: TObject);
    procedure BrowseFields(var LeoMenu: TMenuItem);
    procedure NLeoClick(Sender: TObject);
    procedure FNoneClick(Sender: TObject);
    procedure actInActiveExecute(Sender: TObject);
    procedure UpdCommandActUpdate(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1QuickCustomizationPopupKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGrid1DBTableView1QuickCustomizationPopupKeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBTableView1QuickCustomizationActivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cxDBLookupComboBox7Exit(Sender: TObject);
    procedure actDispExecute(Sender: TObject);
    procedure actStatExecute(Sender: TObject);
    procedure dxDBCheckEdit6PropertiesChange(Sender: TObject);
    procedure cxDblCbEmpExit(Sender: TObject);
    procedure actUndoInActiveExecute(Sender: TObject);
  Private
    { Private declarations }
    DM: TACardDM;
    State: Integer; { 0=εισαγωγή, 1=μεταβολή... }
    Created: Boolean;
    Procedure UpdateRec;
  Published
    Procedure actToBlackListUpdate;
    procedure CheckIfThere; override;
    procedure MainStateChange; override;
    procedure MainStateChange0(St: String); override;
    procedure SubStateChange(St: String); override;
  Public
    procedure StateHasDetailEmp(Yes: Boolean);
    procedure StateHasCostCenter(Yes: Boolean);
  End;

Implementation

Uses Globals, Common, DMain, FMain;

{$R *.dfm}
// Procedure TfrmACard.FormCreate(Sender: TObject);
// Begin
// DM := TACardDM.Create(self);
// End;

Procedure TfrmACard.FormShow(Sender: TObject);
Begin
  dxPageControl1.ActivePage := tabBrowser;
  DM.qryBrowser.Open;
  Label11.Visible       := false;
  LabelInActive.Visible := false;
End;

Procedure TfrmACard.actCloseExecute(Sender: TObject);
Begin
  Close;
End;

Procedure TfrmACard.actInsertExecute(Sender: TObject);
Begin
  State    := 0;
  DM.State := 0;
  DM.DoInsert;
  LabelInActive.Visible     := false;
  GroupBoxInActive.Visible  := false;
  GroupBoxBlackList.Visible := false;
  Label21.Visible           := True;
  Edit1.Visible             := True;
  // dxPageControl1.ActivePage := tabData;
  dxPageControl2.ActivePage := tabFirstPage;
End;

procedure TfrmACard.actUndoInActiveExecute(Sender: TObject);
begin
  inherited;
  State    := 11;
  DM.State := 11;
  DM.qryACard.Edit;
  DM.qryACardISACTIVE.AsBoolean := True;
  // DM.qryACardINACTIVEUSR.AsInteger := gUUserID;
  DM.qryACard.Post;
  LabelInActive.Caption    := '';
  GroupBoxInActive.Visible := false;
  If (DM.qryACardISACTIVE.AsBoolean <> True) Then
    LabelInActive.Visible := True
  Else
    LabelInActive.Visible := false;
end;

Procedure TfrmACard.actUpdateExecute(Sender: TObject);
Begin
  UpdateRec;
  dxDBEdit2Exit(Self);
  StateHasCostCenter(DM.CustomerHasCC);
End;

Procedure TfrmACard.actDeleteExecute(Sender: TObject);
Begin
  If (AskUserNo('Να διαγραφεί;') = True) Then
    Begin
      DM.DoDelete;
      DM.qryBrowser.Close; { TODO : χρειάζεται ??? }
      DM.qryBrowser.Open; { TODO : χρειάζεται ??? }
      { TODO -cCritical : Critical }
      // dxDBGrid1.Refresh;
    End;
End;

procedure TfrmACard.actDispExecute(Sender: TObject);
begin
  inherited;
  if DM.qryBrowser.IsEmpty then
    Exit;

  if dxPageControl1.ActivePage = tabBrowser then
    begin
      dxPageControl1.ActivePage := tabData;
      dxPageControl2.ActivePage := tabFirstPage;
      actToBlackListUpdate;
    end
  else
    begin
      dxPageControl1.ActivePage := tabBrowser;
    end;
end;

Procedure TfrmACard.actOKExecute(Sender: TObject);
var
  x: Integer;
Begin
  dxDBEdit4.SetFocus;
  if ((DM.qryACardCARDHASEMPNAME.AsBoolean = True) And (DM.qryACardACARDHOLDER.AsString = '')) then
    begin
      MessageDlg('Παρακαλώ καταχωρήστε Ονομασία Καρτούχου', mtError, [mbOK], 0);
      Exit;
    end;

  if Not(DM.qryACardVTYPEID.IsNull) then
    begin
      DM.DoPost;
      x := DM.CardFindId;
      DM.qryBrowser.Requery();
      DM.qryACard.Requery();
      DM.qryBlackList.Requery();
      DM.qryBrowser.Locate('ACARD.ACARDID', x, []);
      actDispExecute(Self);
    end
  else
    begin
      MessageDlg('No Vechicle Type?', mtInformation, [mbYes], 0);
    end;
End;

procedure TfrmACard.actStatExecute(Sender: TObject);
begin
  inherited;
  memWS.Close;
  memWS.Open;
  memWS.Insert;
  memWS.Edit;
  memWSComponentName.AsString      := 'memWSFrACardCode';
  memWSComponentValueInt.AsInteger := DM.qryACardACARDID.AsInteger;
  memWS.Post;
  memWS.Insert;
  memWS.Edit;
  memWSComponentName.AsString      := 'memWSToACardCode';
  memWSComponentValueInt.AsInteger := DM.qryACardACARDID.AsInteger;
  memWS.Post;
  memWS.Insert;
  memWS.Edit;
  memWSComponentName.AsString      := 'memWSToDate';
  memWSComponentValueInt.AsInteger := Round(Now());
  memWS.Post;
  memWS.Insert;
  memWS.Edit;
  memWSComponentName.AsString      := 'RGQuery';
  memWSComponentValueInt.AsInteger := 0;
  memWS.Post;

  frmMain.GeneralFormExecuteNameWithDefs('TfrmPrnTranPrologue', memWS);
end;

Procedure TfrmACard.actCancelExecute(Sender: TObject);
Begin
  DM.qryACard.Cancel;
  actDispExecute(Self);
End;

Procedure TfrmACard.dxDBGrid1DblClick(Sender: TObject);
Begin
  UpdateRec;
End;

Procedure TfrmACard.UpdateRec;
begin
  State    := 1;
  DM.State := 1;
  DM.DoUpdate;
  Edit1.Visible             := false;
  dxPageControl2.ActivePage := tabFirstPage;
  // Label11.Visible := false;
  // Label21.Visible := false;
  // LabelInActive.Visible := false;
  // If (DM.qryACardBLACKLISTBOOLEAN.AsBoolean = true) Then
  // GroupBoxBlackList.Visible := true
  // else
  // GroupBoxBlackList.Visible := false;
  // If (DM.qryACardISACTIVE.AsBoolean = False) Then
  // GroupBoxInActive.Visible := true
  // else
  // GroupBoxInActive.Visible := false;
end;

procedure TfrmACard.UpdCommandActUpdate(Sender: TObject);
begin
  inherited;
  (Sender As TAction).Visible := false;
end;

Procedure TfrmACard.actToBlackListExecute(Sender: TObject);
Begin
  State    := 1;
  DM.State := 1;
  DM.DoUpdate;
  DM.qryACardBLACKLISTBOOLEAN.AsBoolean := True;
  DM.KeepBlackList                      := True;
  DM.qryACardBLACKLISTDATE.AsDateTime   := Now;
  DM.qryACardBLACKLISTUSR.AsInteger     := gUUserID;
  Label11.Caption                       := 'Σε black list';
  GroupBoxBlackList.Visible             := True;
  // If (DM.qryACardBLACKLISTBOOLEAN.AsBoolean <> DM.KeepBlackList) Then
  // Label11.Visible := true
  // else
  // Label11.Visible := false;
End;

Procedure TfrmACard.actFromBlackListExecute(Sender: TObject);
Begin
  State    := 1;
  DM.State := 1;
  DM.DoUpdate;
  DM.qryACardBLACKLISTBOOLEAN.AsBoolean := false;
  Label11.Caption                       := 'Ακύρωση black list';
  GroupBoxBlackList.Visible             := false;
  // If (DM.qryACardBLACKLISTBOOLEAN.AsBoolean <> DM.KeepBlackList) then
  // Label11.Visible := true
  // else
  // Label11.Visible := false;
End;

Procedure TfrmACard.actToBlackListUpdate;
begin
  if Created then
    begin
      actToBlackList.Visible    := not DM.qryACardBLACKLISTBOOLEAN.AsBoolean;
      actFromBlackList.Visible  := DM.qryACardBLACKLISTBOOLEAN.AsBoolean;
      actInActive.Visible       := DM.qryACardISACTIVE.AsBoolean;
      Label11.Visible           := DM.qryACardBLACKLISTBOOLEAN.AsBoolean;
      LabelInActive.Visible     := not DM.qryACardISACTIVE.AsBoolean;
      GroupBoxInActive.Visible  := not DM.qryACardISACTIVE.AsBoolean;
      GroupBoxBlackList.Visible := DM.qryACardBLACKLISTBOOLEAN.AsBoolean;
    end;
end;

procedure TfrmACard.dxDBCheckEdit6PropertiesChange(Sender: TObject);
begin
  inherited;
  if not Created then
    Exit;

  dxDBEdit5.Enabled := TcxDBCheckBox(Sender).Checked;
  if DM.qryACard.State in [dsEdit, dsInsert] then
    if Not TcxDBCheckBox(Sender).Checked then
      DM.qryACardACARDHOLDER.AsString := '';
end;

procedure TfrmACard.dxDBEdit2Exit(Sender: TObject);
begin
  inherited;
  DM.DoUpdCompany(cxDBLookupComboBox7.SelectedItem);

  if DM.CustomerHasDetail then
    begin
      lblEmp.Enabled     := True;
      cxDblCbEmp.Enabled := True;
    end
  else
    begin
      lblEmp.Enabled                   := false;
      cxDblCbEmp.Enabled               := false;
      DM.qryACardEMPLOYEESID.AsInteger := 0;
    end;
end;

procedure TfrmACard.actCopyExecute(Sender: TObject);
begin
  inherited;
  State    := 6;
  DM.State := 6;
  DM.DoCopy;
  Label11.Visible           := false;
  LabelInActive.Visible     := false;
  GroupBoxBlackList.Visible := false;
  Label21.Visible           := True;
  Edit1.Visible             := True;
  Edit1.Text                := '';
  dxPageControl2.ActivePage := tabFirstPage;
  StateHasCostCenter(DM.CustomerHasCC);

end;

procedure TfrmACard.N1Click(Sender: TObject);
begin
  inherited;
  { TODO -cCritical : Critical }
  // dxDBGrid1.Columns[1].Visible := False;
end;

procedure TfrmACard.dxDBGrid1Enter(Sender: TObject);
begin
  inherited;
  BrowseFields(Pedia);
end;

procedure TfrmACard.BrowseFields(var LeoMenu: TMenuItem);
Var
  i, x: Integer;
  NewMenu: TMenuItem;
begin
  x     := LeoMenu.Count - 3;
  For i := 1 to x do
    begin
      LeoMenu.Delete(3);
    end;

  { TODO -cCritical : Critical }
  { For i:=0 to dxDBGrid1.ColumnCount -1 do
    begin
    NewMenu        :=TMenuItem.Create(Self);
    NewMenu.Caption:=dxDBGrid1.Columns[i].Caption;
    NewMenu.Tag    :=i;
    NewMenu.Checked:=dxDBGrid1.Columns[i].Visible;
    NewMenu.OnClick:=NLeoClick;
    NewMenu.Hint   :=dxDBGrid1.Columns[i].FieldName;
    LeoMenu.Add(NewMenu);
    end; }
end;

procedure TfrmACard.cxDblCbEmpExit(Sender: TObject);
begin
  inherited;
  if Sender is TcxDBLookupComboBox then
    if TcxDBLookupComboBox(Sender).EditValue = null then
      Exit;
  if Sender is TcxDBLookupComboBox then
    begin
      if DM.qryACard.State in [dsEdit, dsInsert] then
        begin
          If (DM.qryACardCARDHASEMPNAME.AsBoolean = True) Then
            DM.qryACardACARDHOLDER.AsString := DM.qryEmployeesFName.AsString;
        end
      else
        Exit;
    end;

end;

procedure TfrmACard.cxDBLookupComboBox7Exit(Sender: TObject);
begin
  inherited;
  if Sender is TcxDBLookupComboBox then
    if TcxDBLookupComboBox(Sender).EditValue = null then
      Exit;
  if Sender is TcxDBLookupComboBox then
    begin
      DM.memWS.Edit;
      DM.memWSPCustomerId.Value := TcxDBLookupComboBox(Sender).EditValue;
      DM.memWS.Post;
      DM.qrySpecCust.Requery();
      // DM.qryCustomerCostCenter.Requery();
      // DoUpdateCustomerDetail(TcxDBLookupComboBox(Sender).EditValue)

      // If (DM.qryACardMETERBOOLEAN.IsNull = true) Then
      // DM.qryACardMETERBOOLEAN.AsBoolean := DM.qryCustomerMETERBOOLEAN.AsBoolean;
      // If (DM.qryACardPINBOOLEAN.IsNull = true) Then
      // DM.qryACardPINBOOLEAN.AsBoolean := DM.qryCustomerPINBOOLEAN.AsBoolean;
      if DM.qryACard.State in [dsEdit, dsInsert] then
        begin
          If (DM.qryACardCARDHASEMPNAME.IsNull = True) Then
            DM.qryACardCARDHASEMPNAME.AsBoolean := DM.qrySpecCustCARDHASEMPNAME.AsBoolean;
          // If (qryACardEXPIRELODATE.IsNull = true) Then
          // if Not(qryCustomerDATELOEND.IsNull) then
          // qryACardEXPIRELODATE.AsDateTime := qryCustomerDATELOEND.AsDateTime;
          // If (qryACardEXPIREPHDATE.IsNull = true) Then
          // if Not(qryCustomerDATEPHEND.IsNull) then
          // qryACardEXPIREPHDATE.AsDateTime := qryCustomerDATEPHEND.AsDateTime;

          { TODO -cImportant : Bye Bye Logical Physical }
          // If (DM.qryACardEXPIREDATE.IsNull = true) Then
          if Not(DM.qrySpecCustDATEEND.IsNull) then
            DM.qryACardEXPIREDATE.AsDateTime := DM.qrySpecCustDATEEND.AsDateTime;
          if not(DM.qrySpecCustIsActive.AsBoolean) then
            MessageDlg('Ο πελάτης είναι ανενεργός.', mtError, [mbOK], 0);

        end;

      StateHasDetailEmp(DM.qryCustomerHASDETAILEMP.AsBoolean);
      StateHasCostCenter(DM.qryCustomerCostCenterCnt.AsInteger > 0);
    end
  else
    Exit;
end;

procedure TfrmACard.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  actDisp.Execute;
end;

procedure TfrmACard.NLeoClick(Sender: TObject);
var
  Leo: String;
  x, y: Integer;
begin
  // Indirect Menu Addressing
  Leo := (Sender as TMenuItem).Hint;
  { TODO -cCritical : Critical }
  { for x:= 0 to dxDBGrid1.ColumnCount -1 do
    if dxDBGrid1.Columns[x].FieldName = Leo then
    y:=x;

    If (Sender as TMenuItem).Checked then
    begin
    dxDBGrid1.Columns[y].Visible:=False;
    (Sender as TMenuItem).Checked:=False;
    end
    else
    begin
    dxDBGrid1.Columns[y].Visible:=True;
    (Sender as TMenuItem).Checked:=True;
    end }
end;

procedure TfrmACard.FNoneClick(Sender: TObject);
var
  i: Integer;
begin
  { TODO -cCritical : Critical }
  { For i:=0 to dxDBGrid1.ColumnCount -1 do
    begin
    dxDBGrid1.Columns[i].Visible:=False;
    Pedia.Items[i+3].Checked:=False;
    end; }
end;

procedure TfrmACard.actInActiveExecute(Sender: TObject);
begin
  State    := 11;
  DM.State := 11;
  DM.qryACard.Edit;
  DM.qryACardISACTIVE.AsBoolean      := false;
  DM.qryACardINACTIVEDATE.AsDateTime := Now;
  DM.qryACardINACTIVEUSR.AsInteger   := gUUserID;
  LabelInActive.Caption              := 'Ανενεργή';
  GroupBoxInActive.Visible           := True;
  If (DM.qryACardISACTIVE.AsBoolean <> True) Then
    LabelInActive.Visible := True
  Else
    LabelInActive.Visible := false;
end;

procedure TfrmACard.FormActivate(Sender: TObject);
var
  x: Integer;
  a: TColor;
begin
  inherited;
  // MessageDlg(inttostr(Screen.DataModuleCount), mtWarning, [mbOK], 0);
  // for x:=0 to Screen.DataModuleCount-1 do
  // MessageDlg(Screen.DataModules[x].Name, mtWarning, [mbOK], 0);
  // if ColorDialog1.Execute then
  // begin
  // a:=ColorDialog1.Color;
  // for x:=0 to self.ComponentCount - 1 do
  // begin
  /// /   MessageDlg(Self.Components[x].Name, mtWarning, [mbOK], 0);
  // if Self.Components[x] is TWinControl then
  // if isPublishedProp(TWinControl(Self.Components[x]),'Color') then
  // SetOrdProp(TWinControl(Self.Components[x]),'Color',a);
  // end;
  // end;
end;

procedure TfrmACard.FormCreate(Sender: TObject);
begin
  Created := false;
  DM      := TACardDM.Create(Self);
  PrimDM  := DM;
  SecDM   := DM;

  SetDBLookupSort;

  Created := True;
  // Old Deprecated below
  // SelectMainData:=DM.qryBrowser;
  // MainStateChange0('Browse');
  Label11.Caption       := 'Σε black list';
  LabelInActive.Caption := 'Ανενεργή';

  SelectMainData    := TCustomAdoDataSet(cxGrid1DBTableView1.DataController.DataSet);
  SelectMainGrid    := cxGrid1DBTableView1;
  SelectMainActList := ActionMainList;

  MainStateChange0('Browse');
  SubStateChange('Browse');

  // Panel from DevExpress
  // with cxGrid1DBTableView1.Controller.ColumnsCustomizationPopup do
  // begin
  // OnKeyDown := cxGrid1DBTableView1QuickCustomizationPopupKeyDown;
  // OnKeyPress := cxGrid1DBTableView1QuickCustomizationPopupKeyPress;
  // OnShow := cxGrid1DBTableView1QuickCustomizationActivate;
  // end;
end;

procedure TfrmACard.cxGrid1DBTableView1QuickCustomizationPopupKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  i: Integer;
  APrevState: TcxCheckBoxState;
begin
  if (Key = VK_SPACE) and (Shift = [ssShift]) then
    begin
      with cxGrid1DBTableView1.Controller.ColumnsCustomizationPopup, CheckListBox do
        for i := 0 to Count - 1 do
          if Selected[i] then
            begin
              APrevState       := Items[i].State;
              Items[i].Checked := not Items[i].Checked;
              OnClickCheck(CheckListBox, i, APrevState, Items[i].State);
            end;
    end;
end;

procedure TfrmACard.cxGrid1DBTableView1QuickCustomizationPopupKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ' ' then
    Key := #0;
end;

procedure TfrmACard.cxGrid1DBTableView1QuickCustomizationActivate(Sender: TObject);
begin
  inherited;
  MessageDlg('Activate.', mtWarning, [mbOK], 0);
end;

procedure TfrmACard.CheckIfThere;
begin
  //
end;

procedure TfrmACard.MainStateChange;
begin
  // Published
  // To be called from DataModule
end;

procedure TfrmACard.MainStateChange0(St: String);
begin
  SetState(ActionList1, St);
  if St = 'UPD' then
    dxPageControl1.ActivePage := tabData;
end;

procedure TfrmACard.StateHasCostCenter(Yes: Boolean);
begin
  if Yes then
    begin
      lblcc.Enabled     := True;
      cxDblCbCC.Enabled := True;
    end
  else
    begin
      lblcc.Enabled     := false;
      cxDblCbCC.Enabled := false;
      if DM.qryACard.State in [dsEdit, dsInsert] then
        DM.qryACardCOSTCENTERID.AsInteger := 0;
    end;
end;

procedure TfrmACard.StateHasDetailEmp(Yes: Boolean);
begin
  if Yes then
    begin
      lblEmp.Enabled     := True;
      cxDblCbEmp.Enabled := True;
    end
  else
    begin
      lblEmp.Enabled := false;
      // lblEmp.Enabled      :=True;
      cxDblCbEmp.Enabled := false;
      // cxDblCbEmp.Enabled  :=True;
      if DM.qryACard.State in [dsEdit, dsInsert] then
        DM.qryACardEMPLOYEESID.AsInteger := 0;
    end;
end;

procedure TfrmACard.SubStateChange(St: String);
begin
  // Published
  // To be called from DataModule with State Parameter//
  /// /  SetState(ActListContacts,st);
  // Append More for Activate/Deactivate Edit Ctrls//
end;

End.
