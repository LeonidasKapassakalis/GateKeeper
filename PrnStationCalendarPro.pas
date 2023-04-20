unit PrnStationCalendarPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, dxmdaset, ActnList, StdCtrls, CheckLst, ExtCtrls, DPrnStatCall,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.ActnMan, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, cxPC, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ToolWin,
  Vcl.ActnCtrls, DMain, FBaseDev0, Vcl.Menus, Data.Win.ADODB, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmPrnStationCallendarPro = class(TfrmBaseDev0)
    dxPageControl1: TcxPageControl;
    tabDataPage: TcxTabSheet;
    Panel2: TPanel;
    Label3: TLabel;
    dxDBDateEdit1: TcxDBDateEdit;
    dxDBDateEdit2: TcxDBDateEdit;
    Panel3: TPanel;
    dxTabSheet1: TcxTabSheet;
    clbBranch: TCheckListBox;
    ActionList1: TActionList;
    actCancel: TAction;
    actOK: TAction;
    actClearAll: TAction;
    actCheckAll: TAction;
    dxBarManager1: TActionManager;
    memWS: TdxMemData;
    memWSFRNAME: TStringField;
    memWSTONAME: TStringField;
    memWSFRINSDATE: TDateTimeField;
    memWSTOINSDATE: TDateTimeField;
    memWSFRCODE: TIntegerField;
    memWSTOCODE: TIntegerField;
    memWSFRMerchandID: TStringField;
    memWSTOMerchandID: TStringField;
    memWSFRStationID: TStringField;
    memWSTOStationID: TStringField;
    dtsWS: TDataSource;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
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
    procedure FormShow(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    DM: TDMPrnStatCall;
    Created:Boolean;
    SelectionDone:Boolean;
  public
    { Public declarations }
  end;

implementation

uses Common, PrnStationCalendar, FMain;

Var
  gClbBranch  : TCheckListBox;

{$R *.dfm}

procedure TfrmPrnStationCallendarPro.FormCreate(Sender: TObject);
begin
  inherited;
  Created:=False;
  SelectionDone:=False;
  DM := TDMPrnStatCall.Create(self);
  qry1.Active := True;
  Created:=True;
  memWS.Edit;
end;

procedure TfrmPrnStationCallendarPro.FormShow(Sender: TObject);
begin
//  Try
//    DoCursorPush(crSQLWait);
//    gClbBranch   := clbBranch;
//    dxPageControl1.ActivePage := tabDataPage;
//// Fix
////    FillCheckListBox(clbBranch,   GeneralDM.tblBranch, GeneralDM.tblBranchDESCR  , GeneralDM.tblBranchBRANCHID);
//    CheckBox1.Checked:=True;
//    CheckBox2.Checked:=True;
//    CheckBox3.Checked:=True;
//    memWS.Close;
//    memWS.Open;
//    memWS.Insert;
//  Finally
//    DoCursorPop;
//  End;

end;

procedure TfrmPrnStationCallendarPro.actOKExecute(Sender: TObject);
var
  f : TfrmPrnStationCalendar;
  c:String;
  i:Integer;
  x:Integer;
  xs:string;
  BB:Boolean;
  SQL_Text:string;
  FnVar:Variant;
Begin
  for x := 0 to memWS.FieldCount -1 do
    begin
      qry1.Insert;
      qry1.Edit;
      qry1TableId.AsInteger  := 300;
      qry1FieldName.AsString := memWS.Fields[x].FieldName;
      try
      qry1.Post;
      except
      qry1.Cancel;
      end;
    end;

  memWS.Post;

  for x := 0 to memWS.FieldCount -1 do
    if not memWS.Fields[x].IsNull then
      begin
        try
//         MsgDlg(memWS.Fields[x].FieldName);
         if memWS.Fields[x] is TIntegerField then
            begin
//              MsgDlg(inttostr(memWS.Fields[x].Value));
              xs:=xs+memWS.Fields[x].FieldName+'-'+inttostr(memWS.Fields[x].Value)+','+chr(13);
            end;
         if memWS.Fields[x] is TStringField then
            begin
//              MsgDlg(memWS.Fields[x].Value);
              xs:=xs+memWS.Fields[x].FieldName+'-'+memWS.Fields[x].Value+','+chr(13);
            end;
         if memWS.Fields[x] is TBooleanField then
            begin
//              MsgDlg(memWS.Fields[x].Value);
              xs:=xs+memWS.Fields[x].FieldName+'-'+booltostr(memWS.Fields[x].Value)+','+chr(13);
            end;
        except
        end;
      end;
  MsgDlg(xs);

  SQL_Text:='';
  for x := 0 to memWS.FieldCount -1 do
  begin
     if Not memWS.Fields[x].IsNull then
     begin
     FnVar:=memWS.Fields[x].FieldName;
     if qry1.Locate('FieldName',FnVar,[]) then
        begin
          if qry1SQLVar.AsBoolean then
             begin
             if qry1TreatAs.AsInteger =  9 then
                begin
                if memWS.Fields[x].AsInteger >= 0 then
                   begin
                     if SQL_Text > '' then
                        SQL_Text:= SQL_Text + ' And ';
                     SQL_Text:= SQL_Text + qry1SqlName.AsString;
                     SQL_Text:= SQL_Text + ' = ' ;
                     SQL_Text:= SQL_Text + memWS.Fields[x].AsString;
                   end;
                Continue;
                end;
             if SQL_Text > '' then
                SQL_Text:= SQL_Text + ' And ';
             SQL_Text:= SQL_Text + qry1SqlName.AsString;
             if qry1TreatAs.AsInteger = -1 then
                SQL_Text:= SQL_Text + ' >= ';
             if qry1TreatAs.AsInteger =  1 then
                SQL_Text:= SQL_Text + ' <= ';
             if qry1TreatAs.AsInteger =  0 then
                SQL_Text:= SQL_Text + ' = ' ;
             if memWS.Fields[x] is TStringField then
                SQL_Text:= SQL_Text + QuotedStr(Trim(memWS.Fields[x].AsString));
             if memWS.Fields[x] is TIntegerField then
                SQL_Text:= SQL_Text + Trim(memWS.Fields[x].AsString);
             if memWS.Fields[x] is TDateField then
                begin
                   SQL_Text:= SQL_Text + QuotedStr(DateToStr(memWS.Fields[x].AsDateTime,TFormatSettings.Create('en-US')));
                   Continue;
                end;
             if memWS.Fields[x] is TDateTimeField then
                begin
                   SQL_Text:= SQL_Text + DateTimeToStr(memWS.Fields[x].AsDateTime,TFormatSettings.Create('en-US'));
                   Continue;
                end;

             end;
        end;
     end;
  end;
  MsgDlg(SQL_Text);


//    LocFs:=TFormatSettings.Create('en-US');


  f := TfrmPrnStationCalendar.Create(self);

  if SQL_Text > '' then
     begin
//       f.qryTran.SQL.Add('Where ');
//       f.qryTran.SQL.Add(SQL_Text);
//
//       f.qry1Customer.SQL.Add('Where ');
//       f.qry1Customer.SQL.Add(SQL_Text);
//
//       f.qry1Station.SQL.Add('Where ');
//       f.qry1Station.SQL.Add(SQL_Text);
//
//       f.qry1Merchant.SQL.Add('Where ');
//       f.qry1Merchant.SQL.Add(SQL_Text);
     end;

//  f.SqlText := SQL_Text;
//
//  MsgDlg(f.qryTran.SQL.Text);
//
//  f.FrDateSt     := memWSFrDateSt.AsDateTime;
//  f.ToDateSt     := memWSToDateSt.AsDateTime;
//  f.ExecQuery    := RgQuery.ItemIndex;
//
  f.ShowModal;
  f.Free;

  memWS.Edit;



end;

procedure TfrmPrnStationCallendarPro.actCancelExecute(Sender: TObject);
begin
  Close;
end;

end.
