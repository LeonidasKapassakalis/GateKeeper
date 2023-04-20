Unit FPrnTranEmpPro;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  FPrnBase, ComCtrls, cxGraphics, cxDBLookupComboBox, FDummy,
  Dialogs, ActnList, ExtCtrls, StdCtrls, DB, dxmdaset, ADODB, DBCtrls, DBase,
  // FPopup,  FPopupCard,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, cxDBEdit, cxSpinEdit, cxTimeEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Common, DPrnTransEmp,
  Vcl.PlatformDefaultStyleActnCtrls, FBaseDev0, Vcl.Menus, cxLookupEdit,
  dxCore, cxDBLookupEdit, cxLookupDBGrid, FBasePrnDev0, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

Type
  TfrmPrnTranEmpPrologue = Class(TfrmBasePrnDev0)
    dxBarManager1: TActionManager;
    ActionList1: TActionList;
    actCancel: TAction;
    actOK: TAction;
    memWSFrDate: TDateField;
    memWSToDate: TDateField;
    memWSFrACardCode: TStringField;
    memWSToACardCode: TStringField;
    memWSFrCustomer: TStringField;
    memWSToCustomer: TStringField;
    memWSFrTerminalId: TIntegerField;
    memWSToTerminalId: TIntegerField;
    memWSFrDateIns: TDateTimeField;
    memWSToDateIns: TDateTimeField;
    memWSFrCustomerCode: TIntegerField;
    memWSToCustomerCode: TIntegerField;
    memWSFrMerchantName: TStringField;
    memWSToMerchantName: TStringField;
    memWSRgEnhmDisc: TIntegerField;
    memWSRgEnhmCom: TIntegerField;
    memWSRgEnhmStath: TIntegerField;
    memWSFrEnhmDaily: TIntegerField;
    memWSToEnhmDaily: TIntegerField;
    memWSRgEnhmDaily: TIntegerField;
    memWSRgEnhmPela: TIntegerField;
    memWSFrDateSt: TDateField;
    memWSToDateSt: TDateField;
    memWSDef: TIntegerField;
    memWSDet: TIntegerField;
    memWSFrStationId: TIntegerField;
    memWSToStationId: TIntegerField;
    memWSFrMerchantId: TIntegerField;
    memWSToMerchantId: TIntegerField;
    memWSFrMerchantSap: TStringField;
    memWSToMerchantSap: TStringField;
    memWSFrCustomerSap: TStringField;
    memWSToCustomerSap: TStringField;
    memWSPelaTestReal: TIntegerField;
    memWSPelaActiveInactive: TIntegerField;
    memWSPelaDetailEmp: TIntegerField;
    memWSPratTestReal: TIntegerField;
    memWSCardManualAuto: TIntegerField;
    memWSCardActiveInActive: TIntegerField;
    memWSFrEmplId: TIntegerField;
    memWSToEmplId: TIntegerField;
    memWSFrEmplSurname: TStringField;
    memWSToEmplSurname: TStringField;
    memWSFrEmplMhtrId: TIntegerField;
    memWSToEmplMhtrId: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    rgCustomerTest: TDBRadioGroup;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    rgStationTest: TDBRadioGroup;
    REnhmPela: TDBRadioGroup;
    TabSheet8: TTabSheet;
    Label3: TLabel;
    RgStatus: TDBRadioGroup;
    rgTyped: TDBRadioGroup;
    rgCustomerActive: TDBRadioGroup;
    rgCardActive: TDBRadioGroup;
    REnhmStath: TDBRadioGroup;
    REnhmCom: TDBRadioGroup;
    Panel1: TPanel;
    dxDBDateEdit5: TcxDBDateEdit;
    dxDBDateEdit6: TcxDBDateEdit;
    Label11: TLabel;
    Panel2: TPanel;
    dxDBDateEdit1: TcxDBDateEdit;
    dxDBDateEdit4: TcxDBDateEdit;
    dxDBDateEdit2: TcxDBDateEdit;
    dxDBTimeEdit2: TcxDBTimeEdit;
    dxDBTimeEdit1: TcxDBTimeEdit;
    dxDBDateEdit3: TcxDBDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    UpdCommandAct: TAction;
    Label4: TLabel;
    REnhmDisc: TDBRadioGroup;
    rgDetailEmp: TDBRadioGroup;
    Panel3: TPanel;
    RGQuery: TRadioGroup;
    REnhmDaily: TDBRadioGroup;
    ActionToolBar1: TActionToolBar;
    cblcAcard: TcxDBLookupComboBox;
    cblc1: TcxDBLookupComboBox;
    cblc2: TcxDBLookupComboBox;
    FEnhmDaily: TcxDBLookupComboBox;
    TEnhmDaily: TcxDBLookupComboBox;
    FEnhmPela: TcxDBLookupComboBox;
    FEnhmStath: TcxDBLookupComboBox;
    FEnhmCom: TcxDBLookupComboBox;
    cblc14: TcxDBLookupComboBox;
    cblc15: TcxDBLookupComboBox;
    cblc16: TcxDBLookupComboBox;
    cblc20: TcxDBLookupComboBox;
    cblc21: TcxDBLookupComboBox;
    cblc17: TcxDBLookupComboBox;
    cblc18: TcxDBLookupComboBox;
    cblc19: TcxDBLookupComboBox;
    cblc3: TcxDBLookupComboBox;
    cblc22: TcxDBLookupComboBox;
    cblc23: TcxDBLookupComboBox;
    lbl1: TLabel;
    cblc24: TcxDBLookupComboBox;
    cblc25: TcxDBLookupComboBox;
    FEnhmDisc: TcxDBLookupComboBox;
    TEnhmDisc: TcxDBLookupComboBox;
    TEnhmStath: TcxDBLookupComboBox;
    TEnhmCom: TcxDBLookupComboBox;
    TEnhmPela: TcxDBLookupComboBox;
    lbl2: TLabel;
    cblc10: TcxDBLookupComboBox;
    lbl3: TLabel;
    cblc11: TcxDBLookupComboBox;
    cblc12: TcxDBLookupComboBox;
    lbl4: TLabel;
    cblc13: TcxDBLookupComboBox;
    qry1: TADOQuery;
    qry1Id: TAutoIncField;
    qry1TableId: TIntegerField;
    qry1FieldName: TWideStringField;
    qry1SqlName: TWideStringField;
    qry1SqlGroup: TIntegerField;
    qry1AliasSql: TWideStringField;
    qry1SQLVar: TBooleanField;
    qry1TreatAs: TIntegerField;
    Label12: TLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    actUpdateCriteria: TAction;
    Proc: TTabSheet;
    edtOrder: TEdit;
    Procedure actCancelExecute(Sender: TObject);
    Procedure actOKExecute(Sender: TObject);
    Procedure FormShow(Sender: TObject);
    // Procedure memWSFrDateValidate(Sender: TField);
    // Procedure memWSToDateValidate(Sender: TField);
    // Procedure memWSFrACardCodeValidate(Sender: TField);
    // Procedure memWSToACardCodeValidate(Sender: TField);
    // Procedure memWSFrStationValidate(Sender: TField);
    // Procedure memWSToStationValidate(Sender: TField);
    // Procedure memWSFrCustomerValidate(Sender: TField);
    // Procedure memWSToCustomerValidate(Sender: TField);
    procedure dxDBEdit5DblClick(Sender: TObject);
    procedure dxDBEdit4DblClick(Sender: TObject);
    procedure dxDBEdit7DblClick(Sender: TObject);
    procedure dxDBEdit10DblClick(Sender: TObject);
    procedure dxDBEdit1DblClick(Sender: TObject);
    procedure REnhmStathExit(Sender: TObject);
    procedure REnhmPelaExit(Sender: TObject);
    procedure memWSFrCustomerCodeValidate(Sender: TField);
    procedure dxDBEdit11DblClick(Sender: TObject);
    procedure REnhmComExit(Sender: TObject);
    // procedure memWSFrDateStValidate(Sender: TField);
    // procedure memWSToDateStValidate(Sender: TField, FEnhmDailyd);
    procedure rgDailyUpdateGExit(Sender: TObject); override;
    procedure FormCreate(Sender: TObject);
    procedure actUpdateCriteriaExecute(Sender: TObject);
    procedure actLoadVariantsExecute(Sender: TObject);
  Private
    DM: TDMPrnTransEmp;
    Created: Boolean;
    SelectionDone: Boolean;
  Public
    procedure InitMemWs; override;
  End;

Implementation

Uses FPrnTranEmp, DMain;

{$R *.dfm}

procedure TfrmPrnTranEmpPrologue.FormCreate(Sender: TObject);
begin
  Created       := False;
  SelectionDone := False;
  DM            := TDMPrnTransEmp.Create(self);
  qry1.Active   := True;
  Created       := True;
  memWS.Edit;
  REnhmCom.ItemIndex         := 3;
  REnhmStath.ItemIndex       := 3;
  REnhmPela.ItemIndex        := 3;
  REnhmDaily.ItemIndex       := 3;
  REnhmCom.ItemIndex         := 3;
  REnhmDisc.ItemIndex        := 3;
  RgStatus.ItemIndex         := 3;
  rgTyped.ItemIndex          := 3;
  rgDetailEmp.ItemIndex      := 3;
  rgCardActive.ItemIndex     := 3;
  rgCustomerActive.ItemIndex := 3;
  rgCustomerTest.ItemIndex   := 3;
  rgStationTest.ItemIndex    := 3;

  RGQuery.ItemIndex := 1;

  // Με Ανάλυση Εργαζομένων!!!
  rgDetailEmp.ItemIndex := 0;
  // rgDetailEmp.Enabled        := False;
  rgDetailEmp.ReadOnly := True;

  SetDBLookupSort;

  SetDBLookupClearKey;

  SetDBLookupSortDescSpecCol(FEnhmDaily, 1);
  SetDBLookupSortDescSpecCol(TEnhmDaily, 1);

  SetDBLookupSortDescSpec(FEnhmPela);
  SetDBLookupSortDescSpec(TEnhmPela);

  SetDBLookupSortDescSpec(FEnhmStath);
  SetDBLookupSortDescSpec(TEnhmStath);

  SetDBLookupSortDescSpec(FEnhmCom);
  SetDBLookupSortDescSpec(TEnhmCom);

  SetDBLookupSortDescSpec(FEnhmDisc);
  SetDBLookupSortDescSpec(TEnhmDisc);

  SetDBLookupSortDescSpec(cblc2);
  SetDBLookupSortDescSpec(cblc3);

  memWS.Edit;
end;

Procedure TfrmPrnTranEmpPrologue.FormShow(Sender: TObject);
Begin
  memWS.Edit;
End;

Procedure TfrmPrnTranEmpPrologue.actCancelExecute(Sender: TObject);
Begin
  Close;
End;

procedure TfrmPrnTranEmpPrologue.actLoadVariantsExecute(Sender: TObject);
var
  x: String;
begin
  inherited;

  if GVarExec then
    begin
      x := GVarComments;
      actOK.Execute;
      MessageDlg('Action Executed' + Chr(13) + 'File Output : ' + x, mtCustom, [mbOK], 0);
      InitializeGVars;
    end;

end;

Procedure TfrmPrnTranEmpPrologue.actOKExecute(Sender: TObject);
Var
  f: TfrmPrnTranEmp;
  fd: TfrmDummy;
  x: Integer;
  xs: string;
  BB: Boolean;
  SQL_Text: string;
  FnVar: Variant;
  ansiQuote: Char;
  ansiStrLogStat: string;
  act: TAction;
Begin
  memWS.Post;

  ansiQuote      := Chr(39);
  ansiStrLogStat := ')) AND ContactType_Procedure in (' + ansiQuote + '---' + ansiQuote + ',' + ansiQuote + 'LOG' + ansiQuote + ',' + ansiQuote + 'NCA-LOG' + ansiQuote + ')';

  for x := 0 to memWS.FieldCount - 1 do
    if not memWS.Fields[x].IsNull then
      begin
        try
          // MsgDlg(memWS.Fields[x].FieldName);
          if memWS.Fields[x] is TIntegerField then
            begin
              // MsgDlg(inttostr(memWS.Fields[x].Value));
              xs := xs + memWS.Fields[x].FieldName + '-' + inttostr(memWS.Fields[x].Value) + ',' + Chr(13);
            end;
          if memWS.Fields[x] is TStringField then
            begin
              // MsgDlg(memWS.Fields[x].Value);
              xs := xs + memWS.Fields[x].FieldName + '-' + memWS.Fields[x].Value + ',' + Chr(13);
            end;
          if memWS.Fields[x] is TBooleanField then
            begin
              // MsgDlg(memWS.Fields[x].Value);
              xs := xs + memWS.Fields[x].FieldName + '-' + booltostr(memWS.Fields[x].Value) + ',' + Chr(13);
            end;
        except
        end;
      end;
  MsgDlg(xs);

  SQL_Text := '';
  for x    := 0 to memWS.FieldCount - 1 do
    begin
      if Not memWS.Fields[x].IsNull then
        begin
          FnVar := memWS.Fields[x].FieldName;
          if qry1.Locate('FieldName', FnVar, []) then
            begin
              if qry1SQLVar.AsBoolean then
                begin
                  if qry1TreatAs.AsInteger = 9 then
                    begin
                      if memWS.Fields[x].AsInteger >= 0 then
                        begin
                          if SQL_Text > '' then
                            SQL_Text := SQL_Text + ' And ';
                          SQL_Text   := SQL_Text + qry1SqlName.AsString;
                          SQL_Text   := SQL_Text + ' = ';
                          SQL_Text   := SQL_Text + memWS.Fields[x].AsString;
                        end;
                      Continue;
                    end;
                  if SQL_Text > '' then
                    SQL_Text := SQL_Text + ' And ';
                  SQL_Text   := SQL_Text + qry1SqlName.AsString;
                  if qry1TreatAs.AsInteger = -1 then
                    SQL_Text := SQL_Text + ' >= ';
                  if qry1TreatAs.AsInteger = 1 then
                    SQL_Text := SQL_Text + ' <= ';
                  if qry1TreatAs.AsInteger = 0 then
                    SQL_Text := SQL_Text + ' = ';
                  if memWS.Fields[x] is TStringField then
                    SQL_Text := SQL_Text + QuotedStr(Trim(memWS.Fields[x].AsString));
                  if memWS.Fields[x] is TIntegerField then
                    SQL_Text := SQL_Text + Trim(memWS.Fields[x].AsString);
                  if memWS.Fields[x] is TDateField then
                    begin
                      SQL_Text := SQL_Text + QuotedStr(DateToStr(memWS.Fields[x].AsDateTime, TFormatSettings.Create('en-US')));
                      Continue;
                    end;
                  if memWS.Fields[x] is TDateTimeField then
                    begin
                      SQL_Text := SQL_Text + DateTimeToStr(memWS.Fields[x].AsDateTime, TFormatSettings.Create('en-US'));
                      Continue;
                    end;

                end;
            end;
        end;
    end;
  MsgDlg(SQL_Text);


  // LocFs:=TFormatSettings.Create('en-US');

  f := TfrmPrnTranEmp.Create(self);

  if SQL_Text > '' then
    begin
      f.qryTran.SQL.Add('Where ');
      f.qryTran.SQL.Add(SQL_Text);
      if edtOrder.Text > '' then
        f.qryTran.SQL.Add(edtOrder.Text);

      f.qryEmployees.SQL.Add('Where ');
      f.qryEmployees.SQL.Add(SQL_Text);
    end;

  f.SqlText := SQL_Text;

  MsgDlg(f.qryTran.SQL.Text);

  f.FrDateSt  := memWSFrDateSt.AsDateTime;
  f.ToDateSt  := memWSToDateSt.AsDateTime;
  f.ToDate    := memWSToDate.AsDateTime;
  f.ExecQuery := RGQuery.ItemIndex;

  // MessageDlg(GVarAction+' '+GVarComments+' '+GVarMail, mtCustom, [mbOK], 0);

  for x := 0 to f.ComponentCount - 1 do
    if f.Components[x] is TAction then
      if TAction(f.Components[x]).Name = GVarAction then
        act := TAction(f.Components[x]);

  // MessageDlg(TAction(f.Components[x]).Name, mtCustom, [mbOK], 0);
  // act:TAction;

  if Assigned(act) then
    begin
      fd                := TfrmDummy.Create(self);
      fd.Label1.Caption := '.      ' + act.Name + '      .';
      fd.Show;
      f.GlobalFileName := GVarComments;
      f.GlobalPdf      := True;
      f.qryTran.Active := True;
      act.Execute;
      f.GlobalFileName := '';
      f.GlobalPdf      := False;
      fd.Free;
    end;

  if not GVarClose then
    f.ShowModal;
  f.Free;
  InitializeGVars;

  f.ShowModal;
  f.Free;

  memWS.Edit;
end;

procedure TfrmPrnTranEmpPrologue.actUpdateCriteriaExecute(Sender: TObject);
var
  x: Integer;
begin
  inherited;
  for x := 0 to memWS.FieldCount - 1 do
    begin
      qry1.Insert;
      qry1.Edit;
      qry1TableId.AsInteger  := 110;
      qry1FieldName.AsString := memWS.Fields[x].FieldName;
      try
        qry1.Post;
      except
        qry1.Cancel;
      end;
    end;
end;

// Procedure TfrmPrnTranPrologue.memWSFrDateValidate(Sender: TField);
// Begin
// If (CheckDateRange(memWSFRDATE, memWSTODATE) = false) Then Abort;
// End;
//
// Procedure TfrmPrnTranPrologue.memWSToDateValidate(Sender: TField);
// Begin
// If (CheckDateRange(memWSFRDATE, memWSTODATE) = false) Then Abort;
// End;
//
// Procedure TfrmPrnTranPrologue.memWSFrACardCodeValidate(Sender: TField);
// Begin
// CheckStringRange(memWSFrACardCode, memWSToACardCode);
// End;
//
// Procedure TfrmPrnTranPrologue.memWSToACardCodeValidate(Sender: TField);
// Begin
// CheckStringRange(memWSFrACardCode, memWSToACardCode);
// End;
//
// Procedure TfrmPrnTranPrologue.memWSFrStationValidate(Sender: TField);
// Begin
/// /  CheckStringRange(memWSFrStation, memWSToStation);
// End;
//
// Procedure TfrmPrnTranPrologue.memWSToStationValidate(Sender: TField);
// Begin
/// /  CheckStringRange(memWSFrStation, memWSToStation);
// End;
//
// Procedure TfrmPrnTranPrologue.memWSFrCustomerValidate(Sender: TField);
// Begin
// CheckStringRange(memWSFrCustomer, memWSToCustomer);
// End;
//
// Procedure TfrmPrnTranPrologue.memWSToCustomerValidate(Sender: TField);
// Begin
// CheckStringRange(memWSFrCustomer, memWSToCustomer);
// End;

procedure TfrmPrnTranEmpPrologue.dxDBEdit5DblClick(Sender: TObject);
// var frm:TfrmPopUp;
begin
  { frm:=TfrmPopup.Create(Self);
    frm.ADOQuery1.sql.Clear;
    if TcxDBTextEdit(Sender).Text > ' ' then
    begin
    frm.AdoQuery1.sql.Add('Select Name , Str(CustomerId) AS Rest From Customer');
    frm.AdoQuery1.sql.Add('Where Name Like '+ QuotedStr(TcxDBTextEdit(Sender).Text));
    frm.AdoQuery1.sql.Add('Order By Name');
    end
    else
    frm.AdoQuery1.sql.Add('Select Name , Str(CustomerId) AS Rest From Customer Order By Name');
    frm.ADOQuery1.FieldByName('Name').DisplayWidth:=50;
    frm.ADOQuery1.FieldByName('Rest').DisplayWidth:=0;
    frm.ADOQuery1.Active:=True;
    frm.DBLookupComboBox1.DataSource:=TcxDBTextEdit(Sender).DataBinding.DataSource;
    frm.DBLookupComboBox1.DataField :=TcxDBTextEdit(Sender).DataBinding.DataField;
    frm.ShowModal;
    frm.Free; }
end;

procedure TfrmPrnTranEmpPrologue.dxDBEdit4DblClick(Sender: TObject);
// var frm:TfrmPopUp;
begin
  { frm:=TfrmPopup.Create(Self);
    frm.ADOQuery1.sql.Clear;
    if TcxDBTextEdit(Sender).Text > ' ' then
    begin
    frm.AdoQuery1.sql.Add('Select Name , Name AS Rest From Station');
    frm.AdoQuery1.sql.Add('Where Name Like '+ QuotedStr(TcxDBTextEdit(Sender).Text));
    frm.AdoQuery1.sql.Add('Order By Name');
    end
    else
    frm.AdoQuery1.sql.Add('Select Name , Name AS Rest From Station Order By Name');
    frm.ADOQuery1.FieldByName('Name').DisplayWidth:=50;
    frm.ADOQuery1.FieldByName('Rest').DisplayWidth:=0;
    frm.ADOQuery1.Active:=True;
    frm.DBLookupComboBox1.DataSource:=TcxDBTextEdit(Sender).DataBinding.DataSource;
    frm.DBLookupComboBox1.DataField :=TcxDBTextEdit(Sender).DataBinding.DataField;
    frm.ShowModal;
    frm.Free; }
end;

procedure TfrmPrnTranEmpPrologue.dxDBEdit7DblClick(Sender: TObject);
// var frm:TfrmPopUp;
begin
  { frm:=TfrmPopup.Create(Self);
    frm.ADOQuery1.sql.Clear;
    frm.AdoQuery1.sql.Add('Select MerchantCode AS Name , Name As Rest From Station Order By MerchantCode');
    frm.ADOQuery1.FieldByName('Name').DisplayWidth:=10;
    frm.ADOQuery1.FieldByName('Rest').DisplayWidth:=40;
    frm.ADOQuery1.Active:=True;
    frm.DBLookupComboBox1.DataSource:=TcxDBTextEdit(Sender).DataBinding.DataSource;
    frm.DBLookupComboBox1.DataField :=TcxDBTextEdit(Sender).DataBinding.DataField;
    frm.ShowModal;
    frm.Free; }
end;

procedure TfrmPrnTranEmpPrologue.dxDBEdit10DblClick(Sender: TObject);
// var frm:TfrmPopUp;
begin
  { frm:=TfrmPopup.Create(Self);
    frm.ADOQuery1.sql.Clear;
    frm.AdoQuery1.sql.Add('Select TerminalCode AS Name, Name AS Rest From Station Order By TerminalCode');
    frm.ADOQuery1.FieldByName('Name').DisplayWidth:=10;
    frm.ADOQuery1.FieldByName('Rest').DisplayWidth:=40;
    frm.ADOQuery1.Active:=True;
    frm.DBLookupComboBox1.DataSource:=TcxDBTextEdit(Sender).DataBinding.DataSource;
    frm.DBLookupComboBox1.DataField :=TcxDBTextEdit(Sender).DataBinding.DataField;
    frm.ShowModal;
    frm.Free; }
end;

procedure TfrmPrnTranEmpPrologue.dxDBEdit1DblClick(Sender: TObject);
// var frm:TfrmPopUpCard;
begin
  { frm:=TfrmPopupCard.Create(Self);
    frm.ADOQuery1.Active:=True;
    frm.DBLookupComboBox1.DataSource:=TcxDBTextEdit(Sender).DataBinding.DataSource;
    frm.DBLookupComboBox1.DataField :=TcxDBTextEdit(Sender).DataBinding.DataField;
    frm.ShowModal;
    frm.Free; }
end;

procedure TfrmPrnTranEmpPrologue.REnhmStathExit(Sender: TObject);
begin
  { if RgEnhmSt.ItemIndex = 0 then
    begin
    dblcSTF.Enabled:= True;
    dblcSTT.Enabled:= True;
    end
    else
    begin
    dblcSTF.Enabled := False;
    dblcSTT.Enabled := False;
    dblcSTF.KeyValue:= Null;
    dblcSTT.KeyValue:= Null;
    end }
end;

procedure TfrmPrnTranEmpPrologue.REnhmPelaExit(Sender: TObject);
begin
  { if RgEnhmCust.ItemIndex = 0 then
    begin
    dblcPeF.Enabled:= True;
    dblcPeT.Enabled:= True;
    end
    else
    begin
    dblcPeF.Enabled := False;
    dblcPeT.Enabled := False;
    dblcPeF.KeyValue:= Null;
    dblcPeT.KeyValue:= Null;
    end; }
end;

procedure TfrmPrnTranEmpPrologue.memWSFrCustomerCodeValidate(Sender: TField);
begin
  CheckIntegerRange(memWSFrCustomerCode, memWSToCustomerCode);
end;

procedure TfrmPrnTranEmpPrologue.dxDBEdit11DblClick(Sender: TObject);
// var frm:TfrmPopUp;
begin
  { frm:=TfrmPopup.Create(Self);
    frm.ADOQuery1.sql.Clear;
    if TcxDBTextEdit(Sender).Text > ' ' then
    begin
    frm.AdoQuery1.sql.Add('Select Str(CustomerId) AS Name , Name AS Rest From Customer');
    frm.AdoQuery1.sql.Add('Where Name Like '+ QuotedStr(TcxDBTextEdit(Sender).Text));
    frm.AdoQuery1.sql.Add('Order By Name');
    end
    else
    frm.AdoQuery1.sql.Add('Select Str(CustomerId) AS Name , Name AS Rest From Customer Order By Name');
    frm.ADOQuery1.FieldByName('Name').DisplayWidth:=7;
    frm.ADOQuery1.FieldByName('Rest').DisplayWidth:=43;
    frm.ADOQuery1.Active:=True;
    frm.DBLookupComboBox1.DataSource:=TcxDBTextEdit(Sender).DataBinding.DataSource;
    frm.DBLookupComboBox1.DataField :=TcxDBTextEdit(Sender).DataBinding.DataField;
    frm.ShowModal;
    frm.Free; }
end;

procedure TfrmPrnTranEmpPrologue.REnhmComExit(Sender: TObject);
begin
  { if RgEnhmParak.ItemIndex = 0 then
    begin
    dblcCoF.Enabled:= True;
    dblcCoT.Enabled:= True;
    end
    else
    begin
    dblcCoF.Enabled := False;
    dblcCoT.Enabled := False;
    dblcCoF.KeyValue:= Null;
    dblcCoT.KeyValue:= Null;
    end; }
end;

// procedure TfrmPrnTranEmpPrologue.memWSFrDateStValidate(Sender: TField);
// begin
// If (CheckDateRange(memWSFRDATEST, memWSTODATEST) = false) Then Abort;
// end;
//
// procedure TfrmPrnTranEmpPrologue.memWSToDateStValidate(Sender: TField);
// begin
// If (CheckDateRange(memWSFRDATEST, memWSTODATEST) = false) Then Abort;
// end;

procedure TfrmPrnTranEmpPrologue.rgDailyUpdateGExit(Sender: TObject);
var
  x, x1: string;
begin
  inherited;
  if Sender is TDBRadioGroup then
    begin
      if TDBRadioGroup(Sender).ItemIndex = 0 then
        begin
          x := TDBRadioGroup(Sender).Name;
          x := Copy(x, 2, Length(x) - 1);
          TcxDBLookupComboBox(self.FindComponent('F' + x)).Enabled := True;
          TcxDBLookupComboBox(self.FindComponent('T' + x)).Enabled := True;
        end
      else
        begin
          x := TDBRadioGroup(Sender).Name;
          x := Copy(x, 2, Length(x) - 1);
          TcxDBLookupComboBox(self.FindComponent('F' + x)).Enabled := False;
          TcxDBLookupComboBox(self.FindComponent('T' + x)).Enabled := False;

          x1                          := TcxDBLookupComboBox(self.FindComponent('F' + x)).DataBinding.DataField;
          memWS.FieldByName(x1).Value := Null;
          // TField(TcxDBLookupComboBox(Self.FindComponent('R'+x)).DataBinding.DataSource.FindComponent(x1)).Value := null;
          x1 := TcxDBLookupComboBox(self.FindComponent('T' + x)).DataBinding.DataField;
          // TField(TcxDBLookupComboBox(Self.FindComponent('R'+x)).DataBinding.DataSource.FindComponent(x1)).Value := null;
          memWS.FieldByName(x1).Value := Null;
        end
    end;
end;

procedure TfrmPrnTranEmpPrologue.InitMemWs;
begin
  REnhmCom.ItemIndex         := 3;
  REnhmStath.ItemIndex       := 3;
  REnhmPela.ItemIndex        := 3;
  REnhmDaily.ItemIndex       := 3;
  REnhmCom.ItemIndex         := 3;
  REnhmDisc.ItemIndex        := 3;
  RgStatus.ItemIndex         := 3;
  rgTyped.ItemIndex          := 3;
  rgDetailEmp.ItemIndex      := 3;
  rgCardActive.ItemIndex     := 3;
  rgCustomerActive.ItemIndex := 3;
  rgCustomerTest.ItemIndex   := 3;
  rgStationTest.ItemIndex    := 3;

  RGQuery.ItemIndex := 1;
end;

end.
