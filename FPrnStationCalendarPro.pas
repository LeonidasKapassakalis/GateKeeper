unit FPrnStationCalendarPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, dxmdaset, ActnList, StdCtrls, CheckLst, ExtCtrls, DPrnStatCall,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.ActnMan, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, cxPC, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ToolWin,
  Vcl.ActnCtrls, DMain, FBaseDev0, Vcl.Menus, Data.Win.ADODB, cxLookupEdit,
  PrnStationCalendar, cxDBLookupEdit, cxDBLookupComboBox, dxSkinsCore,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmPrnStationCallendarPro = class(TfrmBaseDev0)
    dxPageControl1: TcxPageControl;
    tabDataPage: TcxTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    ActionList1: TActionList;
    actCancel: TAction;
    actOK: TAction;
    actClearAll: TAction;
    actCheckAll: TAction;
    dxBarManager1: TActionManager;
    dtsWS: TDataSource;
    UpdCommandAct: TAction;
    ActionToolBar1: TActionToolBar;
    qry1: TADOQuery;
    qry1Id: TAutoIncField;
    qry1TableId: TIntegerField;
    qry1FieldName: TWideStringField;
    qry1SqlName: TWideStringField;
    qry1SqlGroup: TIntegerField;
    qry1AliasSql: TWideStringField;
    qry1SQLVar: TBooleanField;
    qry1TreatAs: TIntegerField;
    lbl3: TLabel;
    lbl4: TLabel;
    Label2: TLabel;
    cblc14: TcxDBLookupComboBox;
    cblc10: TcxDBLookupComboBox;
    cblc12: TcxDBLookupComboBox;
    cblc13: TcxDBLookupComboBox;
    cblc11: TcxDBLookupComboBox;
    cblc17: TcxDBLookupComboBox;
    cblc15: TcxDBLookupComboBox;
    cblc18: TcxDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    cblc16: TcxDBLookupComboBox;
    cblc19: TcxDBLookupComboBox;
    memWS: TdxMemData;
    memWSFrDate: TDateField;
    memWSToDate: TDateField;
    memWSFrMerchantId: TIntegerField;
    memWSToMerchantId: TIntegerField;
    memWSFrMerchantName: TStringField;
    memWSToMerchantName: TStringField;
    memWSFrStationId: TIntegerField;
    memWSToStationId: TIntegerField;
    memWSFrTerminalId: TIntegerField;
    memWSToTerminalId: TIntegerField;
    Panel1: TPanel;
    Label1: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    memWSFrMerchantSap: TStringField;
    memWSToMerchantSap: TStringField;
    Label3: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    memWSFrStationName: TStringField;
    memWSToStationName: TStringField;
    qry1SqlTextIndex: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public
    DM: TDMPrnStatCall;
    Created: Boolean;
    SelectionDone: Boolean;
  end;

implementation

uses Common, FMain;

Var
  gClbBranch: TCheckListBox;

{$R *.dfm}

procedure TfrmPrnStationCallendarPro.FormCreate(Sender: TObject);
begin
  inherited;
  Created       := False;
  SelectionDone := False;
  DM            := TDMPrnStatCall.Create(self);
  memWS.Active  := True;
  qry1.Active   := True;
  Created       := True;
  memWS.Edit;
end;

procedure TfrmPrnStationCallendarPro.FormShow(Sender: TObject);
begin
  // Try
  // DoCursorPush(crSQLWait);
  // gClbBranch   := clbBranch;
  // dxPageControl1.ActivePage := tabDataPage;
  /// / Fix
  /// /    FillCheckListBox(clbBranch,   GeneralDM.tblBranch, GeneralDM.tblBranchDESCR  , GeneralDM.tblBranchBRANCHID);
  // CheckBox1.Checked:=True;
  // CheckBox2.Checked:=True;
  // CheckBox3.Checked:=True;
  // memWS.Close;
  // memWS.Open;
  // memWS.Insert;
  // Finally
  // DoCursorPop;
  // End;

end;

procedure TfrmPrnStationCallendarPro.actOKExecute(Sender: TObject);
var
  f: TfrmPrnStationCalendar;
  c: String;
  i: Integer;
  x: Integer;
  xs: string;
  BB: Boolean;
  SQL_Text: Array [0 .. 10] of string;
  FnVar: Variant;
Begin
  // for x := 0 to memWS.FieldCount -1 do
  // begin
  // qry1.Insert;
  // qry1.Edit;
  // qry1TableId.AsInteger  := 300;
  // qry1FieldName.AsString := memWS.Fields[x].FieldName;
  // try
  // qry1.Post;
  // except
  // qry1.Cancel;
  // end;
  // end;

  memWS.Post;

  for x := 0 to memWS.FieldCount - 1 do
    if not memWS.Fields[x].IsNull then
      begin
        try
          // MsgDlg(memWS.Fields[x].FieldName);
          if memWS.Fields[x] is TIntegerField then
            begin
              // MsgDlg(inttostr(memWS.Fields[x].Value));
              xs := xs + memWS.Fields[x].FieldName + '-' + inttostr(memWS.Fields[x].Value) + ',' + chr(13);
            end;
          if memWS.Fields[x] is TStringField then
            begin
              // MsgDlg(memWS.Fields[x].Value);
              xs := xs + memWS.Fields[x].FieldName + '-' + memWS.Fields[x].Value + ',' + chr(13);
            end;
          if memWS.Fields[x] is TBooleanField then
            begin
              // MsgDlg(memWS.Fields[x].Value);
              xs := xs + memWS.Fields[x].FieldName + '-' + booltostr(memWS.Fields[x].Value) + ',' + chr(13);
            end;
        except
        end;
      end;
  MsgDlg(xs);

  // SQL_Text:='';
  SQL_Text[0] := '';
  SQL_Text[1] := '';
  SQL_Text[2] := '';

  for x := 0 to memWS.FieldCount - 1 do
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
                          if SQL_Text[qry1SqlTextIndex.AsInteger] > '' then
                            SQL_Text[qry1SqlTextIndex.AsInteger] := SQL_Text[qry1SqlTextIndex.AsInteger] + ' And ';
                          SQL_Text[qry1SqlTextIndex.AsInteger] := SQL_Text[qry1SqlTextIndex.AsInteger] + qry1SqlName.AsString;
                          SQL_Text[qry1SqlTextIndex.AsInteger] := SQL_Text[qry1SqlTextIndex.AsInteger] + ' = ';
                          SQL_Text[qry1SqlTextIndex.AsInteger] := SQL_Text[qry1SqlTextIndex.AsInteger] + memWS.Fields[x].AsString;
                        end;
                      Continue;
                    end;
                  if SQL_Text[qry1SqlTextIndex.AsInteger] > '' then
                    SQL_Text[qry1SqlTextIndex.AsInteger] := SQL_Text[qry1SqlTextIndex.AsInteger] + ' And ';
                  SQL_Text[qry1SqlTextIndex.AsInteger]   := SQL_Text[qry1SqlTextIndex.AsInteger] + qry1SqlName.AsString;
                  if qry1TreatAs.AsInteger = -1 then
                    SQL_Text[qry1SqlTextIndex.AsInteger] := SQL_Text[qry1SqlTextIndex.AsInteger] + ' >= ';
                  if qry1TreatAs.AsInteger = 1 then
                    SQL_Text[qry1SqlTextIndex.AsInteger] := SQL_Text[qry1SqlTextIndex.AsInteger] + ' <= ';
                  if qry1TreatAs.AsInteger = 0 then
                    SQL_Text[qry1SqlTextIndex.AsInteger] := SQL_Text[qry1SqlTextIndex.AsInteger] + ' = ';
                  if memWS.Fields[x] is TStringField then
                    SQL_Text[qry1SqlTextIndex.AsInteger] := SQL_Text[qry1SqlTextIndex.AsInteger] + QuotedStr(Trim(memWS.Fields[x].AsString));
                  if memWS.Fields[x] is TIntegerField then
                    SQL_Text[qry1SqlTextIndex.AsInteger] := SQL_Text[qry1SqlTextIndex.AsInteger] + Trim(memWS.Fields[x].AsString);
                  if memWS.Fields[x] is TDateField then
                    begin
                      SQL_Text[qry1SqlTextIndex.AsInteger] := SQL_Text[qry1SqlTextIndex.AsInteger] +
                        QuotedStr(DateToStr(memWS.Fields[x].AsDateTime, TFormatSettings.Create('en-US')));
                      Continue;
                    end;
                  if memWS.Fields[x] is TDateTimeField then
                    begin
                      SQL_Text[qry1SqlTextIndex.AsInteger] := SQL_Text[qry1SqlTextIndex.AsInteger] + DateTimeToStr(memWS.Fields[x].AsDateTime, TFormatSettings.Create('en-US'));
                      Continue;
                    end;

                end;
            end;
        end;
    end;

  // MessageDlg(SQL_Text[0], mtCustom, [mbOK], 0);
  // MessageDlg(SQL_Text[1], mtCustom, [mbOK], 0);
  // MessageDlg(SQL_Text[2], mtCustom, [mbOK], 0);

  // LocFs:=TFormatSettings.Create('en-US');

  f := TfrmPrnStationCalendar.Create(self);
  if SQL_Text[2] > '' then
    begin
      f.qryStation.SQL.Add('Where ');
      f.qryStation.SQL.Add(SQL_Text[2]);

      f.WholeSQLCriteria := 'Where ' + SQL_Text[2];
      //
      // f.qry1Customer.SQL.Add('Where ');
      // f.qry1Customer.SQL.Add(SQL_Text);
      //
      // f.qry1Station.SQL.Add('Where ');
      // f.qry1Station.SQL.Add(SQL_Text);
      //
      // f.qry1Merchant.SQL.Add('Where ');
      // f.qry1Merchant.SQL.Add(SQL_Text);
    end;

  if SQL_Text[1] > '' then
    begin
      f.qryTrCallDet.SQL.Add('And ');
      f.qryTrCallDet.SQL.Add(SQL_Text[1]);
      if f.WholeSQLCriteria > '' then
        f.WholeSQLCriteria := f.WholeSQLCriteria + ' And ' + SQL_Text[1]
      else
        f.WholeSQLCriteria := 'Where ' + SQL_Text[1]
    end;



  // f.SqlText := SQL_Text;
  //
  // MsgDlg(f.qryTran.SQL.Text);
  //
  // f.FrDateSt     := memWSFrDateSt.AsDateTime;
  // f.ToDateSt     := memWSToDateSt.AsDateTime;
  // f.ExecQuery    := RgQuery.ItemIndex;
  //

  f.qryStation.Active   := True;
  f.qryTrCallDet.Active := True;
  f.ShowModal;
  f.Free;

  memWS.Edit;

end;

procedure TfrmPrnStationCallendarPro.actCancelExecute(Sender: TObject);
begin
  Close;
end;

end.
