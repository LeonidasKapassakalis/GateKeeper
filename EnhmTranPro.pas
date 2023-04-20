unit EnhmTranPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, dxmdaset, ActnList,  StdCtrls, ExtCtrls, EnhmTran, DBCtrls, FBase,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.ActnMan, cxSpinEdit, cxTimeEdit, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Vcl.ToolWin, Vcl.ActnCtrls, Vcl.ActnMenus,
  Vcl.PlatformDefaultStyleActnCtrls, FBaseDev0, Data.Win.ADODB, Vcl.Menus;

type
  TfrmEnhmTranPrologue = class(TfrmBaseDev0)
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
    RgStatus: TRadioGroup;
    REnhmSt: TRadioGroup;
    REnhmCust: TRadioGroup;
    dxBarManager1: TActionManager;
    ActionList1: TActionList;
    actCancel: TAction;
    actOK: TAction;
    memWS: TdxMemData;
    memWSFrDate: TDateField;
    memWSToDate: TDateField;
    memWSFrACardCode: TStringField;
    memWSToACardCode: TStringField;
    memWSFrStation: TStringField;
    memWSToStation: TStringField;
    memWSFrCustomer: TStringField;
    memWSToCustomer: TStringField;
    memWSFrTerminalId: TStringField;
    memWSToTerminalId: TStringField;
    memWSFrMerchandId: TStringField;
    memWSToMerchandId: TStringField;
    memWSFrDateIns: TDateTimeField;
    memWSToDateIns: TDateTimeField;
    memWSDef: TIntegerField;
    memWSDet: TIntegerField;
    memWSPef: TIntegerField;
    memWSPet: TIntegerField;
    memWSCof: TIntegerField;
    memWSCot: TIntegerField;
    memWSDisF: TIntegerField;
    memWSDisT: TIntegerField;
    memWSStF: TIntegerField;
    memWSStT: TIntegerField;
    memWSBatF: TIntegerField;
    memWSBatT: TIntegerField;
    dtsWS: TDataSource;
    FEnhmSt: TDBLookupComboBox;
    TEnhmSt: TDBLookupComboBox;
    TEnhmCust: TDBLookupComboBox;
    FEnhmCust: TDBLookupComboBox;
    dblcBtTrF: TDBLookupComboBox;
    dblcBtTrT: TDBLookupComboBox;
    Label4: TLabel;
    rgCustomerTest: TRadioGroup;
    rgStationTest: TRadioGroup;
    REnhmParak: TRadioGroup;
    FEnhmParak: TDBLookupComboBox;
    TEnhmParak: TDBLookupComboBox;
    UpdCommandAct: TAction;
    REnhmDiscount: TRadioGroup;
    FEnhmDiscount: TDBLookupComboBox;
    TEnhmDiscount: TDBLookupComboBox;
    RDailyEnhm: TRadioGroup;
    FDailyEnhm: TDBLookupComboBox;
    TDailyEnhm: TDBLookupComboBox;
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
    procedure FormShow(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure RgEnhmStExit(Sender: TObject);
    procedure RgEnhmCustExit(Sender: TObject);
    procedure rgEnhmParakExit(Sender: TObject);
    procedure rgEnhmDiscountExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure rgDailyEnhmExit(Sender: TObject);
    procedure RDailyEnhmClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses GenDataModule;

{$R *.dfm}

procedure TfrmEnhmTranPrologue.FormShow(Sender: TObject);
begin
  RgStatus.ItemIndex:=3;
  RgEnhmCust.ItemIndex:=3;
  RgEnhmSt.ItemIndex:=3;
  RgEnhmParak.ItemIndex:=3;
  rgEnhmDiscount.ItemIndex:=3;
  rgDailyEnhm.ItemIndex:=3;

  rgCustomerTest.ItemIndex := 1;
  rgStationTest.ItemIndex := 1;

  dblcBTTrF.KeyValue:=Null;
  dblcBTTrT.KeyValue:=Null;

  memWS.Edit;
  memWSFrDate.AsDateTime:=strtodate('1/1/2000');
  memWS.Post;
  memWS.Edit;

  GeneralDM.RefreshDBData;
end;

procedure TfrmEnhmTranPrologue.actCancelExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmEnhmTranPrologue.actOKExecute(Sender: TObject);
Var
//  f: TfrmEnhmTran;
Begin
//  f := TfrmEnhmTran.Create(self);

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

////////////////////////////////////////////////////



  if memWSToDate.AsFloat > 0 then
     begin
       f.ShowModal;
       f.Free;
//       Close;
     end
  else
     begin
       MessageDlg('Παρακαλώ Δώστε Ημερομηνία', mtError, [mbOK], 0);
       memWS.Edit;
       f.Free;
     end;
end;

procedure TfrmEnhmTranPrologue.RgEnhmStExit(Sender: TObject);
begin
if RgEnhmSt.ItemIndex = 0 then
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
   end
end;

procedure TfrmEnhmTranPrologue.RgEnhmCustExit(Sender: TObject);
begin
if RgEnhmCust.ItemIndex = 0 then
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
   end;

end;

procedure TfrmEnhmTranPrologue.rgEnhmParakExit(Sender: TObject);
begin
if RgEnhmParak.ItemIndex = 0 then
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
   end;
end;

procedure TfrmEnhmTranPrologue.rgEnhmDiscountExit(Sender: TObject);
begin
  inherited;
if RgEnhmDiscount.ItemIndex = 0 then
   begin
     dblcDisF.Enabled:= True;
     dblcDisT.Enabled:= True;
   end
else
   begin
     dblcDisF.Enabled := False;
     dblcDisT.Enabled := False;
     dblcDisF.KeyValue:= Null;
     dblcDisT.KeyValue:= Null;
   end;

end;

procedure TfrmEnhmTranPrologue.FormCreate(Sender: TObject);
begin
  inherited;
  GeneralDM.qEnhmPECall1.Active := True;
end;

procedure TfrmEnhmTranPrologue.FormDestroy(Sender: TObject);
begin
  inherited;
  GeneralDM.qEnhmPECall1.Active := False;
end;

procedure TfrmEnhmTranPrologue.RDailyEnhmClick(Sender: TObject);
var x,x1:string;
begin
  inherited;
  if Sender is TDBRadioGroup then
  begin
     if TDBRadioGroup(Sender).ItemIndex = 0 then
       begin
         x:=TDBRadioGroup(Sender).Name;
         x:=Copy(x,2,Length(x)-1);
         TcxDBLookupComboBox(Self.FindComponent('F'+x)).Enabled := True;
         TcxDBLookupComboBox(Self.FindComponent('T'+x)).Enabled := True;
       end
     else
       begin
         x:=TDBRadioGroup(Sender).Name;
         x:=Copy(x,2,Length(x)-1);
         TcxDBLookupComboBox(Self.FindComponent('F'+x)).Enabled := False;
         TcxDBLookupComboBox(Self.FindComponent('T'+x)).Enabled := False;

         x1:=TcxDBLookupComboBox(Self.FindComponent('F'+x)).DataBinding.DataField;
         memWS.FieldByName(x1).Value := Null;
//         TField(TcxDBLookupComboBox(Self.FindComponent('R'+x)).DataBinding.DataSource.FindComponent(x1)).Value := null;
         x1:=TcxDBLookupComboBox(Self.FindComponent('T'+x)).DataBinding.DataField;
//         TField(TcxDBLookupComboBox(Self.FindComponent('R'+x)).DataBinding.DataSource.FindComponent(x1)).Value := null;
         memWS.FieldByName(x1).Value := Null;
       end
  end;
end;

procedure TfrmEnhmTranPrologue.rgDailyEnhmExit(Sender: TObject);
begin
  inherited;
if rgDailyEnhm.ItemIndex = 0 then
   begin
     dblcDET.Enabled:= True;
     dblcDEF.Enabled:= True;
   end
else
   begin
     dblcDET.Enabled := False;
     dblcDEF.Enabled := False;
     dblcDET.KeyValue:= Null;
     dblcDEF.KeyValue:= Null;
   end

end;

end.
