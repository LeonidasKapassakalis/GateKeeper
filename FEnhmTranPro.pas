unit FEnhmTranPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, dxmdaset, ActnList, StdCtrls, ExtCtrls, DBCtrls, Common,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.ActnMan, cxSpinEdit, cxTimeEdit, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Vcl.ToolWin, Vcl.ActnCtrls, Vcl.ActnMenus,
  Vcl.PlatformDefaultStyleActnCtrls, FBaseDev0, Data.Win.ADODB, Vcl.Menus,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DEnhmTrans, FBasePrnDev0,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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

type
  TfrmEnhmTranPrologue = class(TfrmBasePrnDev0)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    dxDBDateEdit1: TcxDBDateEdit;
    dxDBDateEdit2: TcxDBDateEdit;
    dxDBDateEdit3: TcxDBDateEdit;
    dxDBDateEdit4: TcxDBDateEdit;
    dxDBTimeEdit1: TcxDBTimeEdit;
    dxDBTimeEdit2: TcxDBTimeEdit;
    Panel5: TPanel;
    RgStatus: TDBRadioGroup;
    REnhmSt: TDBRadioGroup;
    REnhmCust: TDBRadioGroup;
    dxBarManager1: TActionManager;
    ActionList1: TActionList;
    actCancel: TAction;
    actOK: TAction;
    FEnhmSt: TcxDBLookupComboBox;
    TEnhmSt: TcxDBLookupComboBox;
    TEnhmCust: TcxDBLookupComboBox;
    FEnhmCust: TcxDBLookupComboBox;
    dblcBtTrF: TcxDBLookupComboBox;
    dblcBtTrT: TcxDBLookupComboBox;
    Label4: TLabel;
    rgCustomerTest: TDBRadioGroup;
    rgStationTest: TDBRadioGroup;
    REnhmParak: TDBRadioGroup;
    FEnhmParak: TcxDBLookupComboBox;
    TEnhmParak: TcxDBLookupComboBox;
    UpdCommandAct: TAction;
    REnhmDiscount: TDBRadioGroup;
    FEnhmDiscount: TcxDBLookupComboBox;
    TEnhmDiscount: TcxDBLookupComboBox;
    RDailyEnhm: TDBRadioGroup;
    FDailyEnhm: TcxDBLookupComboBox;
    ActionMainMenuBar1: TActionMainMenuBar;
    qry1: TADOQuery;
    qry1Id: TAutoIncField;
    qry1TableId: TIntegerField;
    qry1FieldName: TWideStringField;
    qry1SqlName: TWideStringField;
    qry1SqlGroup: TIntegerField;
    qry1AliasSql: TWideStringField;
    qry1SQLVar: TBooleanField;
    qry1TreatAs: TIntegerField;
    memWSFrDate: TDateField;
    memWSToDate: TDateField;
    memWSFrDateIns: TDateTimeField;
    memWSToDateIns: TDateTimeField;
    memWSRgEnhmDaily: TIntegerField;
    memWSFrEnhmDaily: TIntegerField;
    memWSToEnhmDaily: TIntegerField;
    memWSRgEnhmPela: TIntegerField;
    memWSFrEnhmPela: TIntegerField;
    memWSToEnhmPela: TIntegerField;
    memWSRgEnhmPrat: TIntegerField;
    memWSFrEnhmPrat: TIntegerField;
    memWSToEnhmPrat: TIntegerField;
    memWSRgEnhmParak: TIntegerField;
    memWSFrEnhmParak: TIntegerField;
    memWSToEnhmParak: TIntegerField;
    memWSRgEnhmDisc: TIntegerField;
    memWSFrEnhmDisc: TIntegerField;
    memWSToEnhmDisc: TIntegerField;
    memWSFrBatch: TIntegerField;
    memWSToBatch: TIntegerField;
    TDailyEnhm: TcxDBLookupComboBox;
    memWSRgManualAuto: TIntegerField;
    memWSRgPelaStatus: TIntegerField;
    memWSRgPratStatus: TIntegerField;

    procedure FormShow(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure RDailyEnhmClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FGenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actLoadVariantsExecute(Sender: TObject);
  private
    DM: TDMEnhmTrans;
    Created: Boolean;
    SelectionDone: Boolean;
  Public
    procedure InitMemWs; override;
  End;

Implementation

Uses DMain, FEnhmTran, FMain;

{$R *.dfm}

procedure TfrmEnhmTranPrologue.FGenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  cblcKeyDown(Sender, Key, Shift);
end;

procedure TfrmEnhmTranPrologue.FormCreate(Sender: TObject);
begin
  inherited;
  Created       := False;
  SelectionDone := False;
  DM            := TDMEnhmTrans.Create(self);
  Created       := True;

  SetDBLookupSortDesc;

  memWS.Edit;
  // memWSFrDate.AsDateTime:=strtodate('1/1/2000');
  InitMemWs;
  memWS.Post;
  memWS.Edit;

  SetDBLookupClearKey;

{$REGION 'OLD'}
  { REnhmCom.ItemIndex         :=3;
    REnhmStath.ItemIndex       :=3;
    REnhmPela.ItemIndex        :=3;
    REnhmDaily.ItemIndex       :=3;
    REnhmCom.ItemIndex         :=3;
    REnhmDisc.ItemIndex        :=3;
    RgStatus.ItemIndex         :=3;
    RgTyped.ItemIndex          :=3;
    rgDetailEmp.ItemIndex      :=3;
    rgCardActive.ItemIndex     :=3;
    rgCustomerActive.ItemIndex :=3;
    rgCustomerTest.ItemIndex   :=3;
    rgStationTest.ItemIndex    :=3;

    RGQuery.ItemIndex          :=1; }

{$ENDREGION}
end;

procedure TfrmEnhmTranPrologue.FormShow(Sender: TObject);
begin
  SetDBLookupClearKey;
end;

procedure TfrmEnhmTranPrologue.actCancelExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmEnhmTranPrologue.actLoadVariantsExecute(Sender: TObject);
var
  x: string;
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

procedure TfrmEnhmTranPrologue.actOKExecute(Sender: TObject);
Var
  f: TfrmFEnhmTran;
  x: Integer;
  xs: string;
  BB: Boolean;
  SQL_Text: string;
  FnVar: Variant;
  act: TAction;
  x1: Integer;
  xx: array of string;
  xxx: array of TVarRec;
  x2: TVarRec;
Begin
  // Generic Copy Record
  // SetLength(xxx, qry1.FieldCount);
  // for x1 := 0 to qry1.FieldCount -1 do
  // begin
  // if qry1.Fields[x1] is TAutoIncField then
  // begin
  // xxx[x1].vtype:=vtInteger;
  // xxx[x1].vInteger:=qry1.Fields[x1].AsInteger;
  // Continue;
  // end;
  // if qry1.Fields[x1] is TIntegerField   then
  // begin
  // xxx[x1].vtype:=vtInteger;
  // xxx[x1].vInteger:=qry1.Fields[x1].AsInteger;
  // Continue;
  // end;
  // if qry1.Fields[x1] is TWideStringField then
  // begin
  // xxx[x1].vtype:=vtUnicodeString;
  // xxx[x1].VUnicodeString:=pwideString(qry1.Fields[x1].AsString);
  // Continue;
  // end;
  // if qry1.Fields[x1] is TBooleanField then
  // begin
  // xxx[x1].vtype:=vtBoolean;
  // xxx[x1].VBoolean:=qry1.Fields[x1].AsBoolean;
  // Continue;
  // end;
  // MessageDlg('No type Def', mtError, [mbOK], 0);
  // end;
  // qry1.InsertRecord(xxx);

  { for x := 0 to memWS.FieldCount -1 do
    begin
    qry1.Insert;
    qry1.Edit;
    qry1TableId.AsInteger  := 200;
    qry1FieldName.AsString := memWS.Fields[x].FieldName;
    try
    qry1.Post;
    except
    qry1.Cancel;
    end;
    end; }

  memWS.Post;

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

  /// /////////////////////////////////////////////////
  ///
  f     := TfrmFEnhmTran.Create(self);
  for x := 0 to f.ComponentCount - 1 do
    if f.Components[x] is TAction then
      if TAction(f.Components[x]).Name = GVarAction then
        act := TAction(f.Components[x]);

  if Assigned(act) then
    begin
      frmMain.mgModalWaitDlg1.Show;
      frmMain.mgModalWaitDlg1.DialogOptions.DialogMessage := 'Please, wait while in progress...: ';
      f.GlobalFileName                                    := GVarComments;
      f.GlobalPdf                                         := True;
      f.qryTran.Active                                    := True;
      act.Execute;
      f.GlobalFileName := '';
      f.GlobalPdf      := False;
      frmMain.mgModalWaitDlg1.Hide;
      self.Show;
    end;

  // if not GVarClose then
  // f.ShowModal;
  // f.Free;
  // InitializeGVars;

  if memWSToDate.AsFloat > 0 then
    begin
      // 10072014       f := TfrmFEnhmTran.Create(self);
      f.SqlParamText := SQL_Text;
      f.ToDate       := memWSToDate.AsDateTime;
      if not GVarClose then
        f.ShowModal;
      f.Free;
      InitializeGVars;
      // Close;
    end
  else
    begin
      MessageDlg('Παρακαλώ Δώστε Ημερομηνία', mtError, [mbOK], 0);
      f.Free;
    end;

  memWS.Edit;
end;

procedure TfrmEnhmTranPrologue.RDailyEnhmClick(Sender: TObject);
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

procedure TfrmEnhmTranPrologue.InitMemWs;
begin
  memWSFrDate.AsDateTime   := strtodate('1/1/2000');
  RgStatus.ItemIndex       := 3;
  REnhmCust.ItemIndex      := 3;
  REnhmSt.ItemIndex        := 3;
  REnhmParak.ItemIndex     := 3;
  REnhmDiscount.ItemIndex  := 3;
  RDailyEnhm.ItemIndex     := 3;
  rgCustomerTest.ItemIndex := 1;
  rgStationTest.ItemIndex  := 1;
end;

end.
