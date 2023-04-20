unit FWorkersDet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  DWorkersDet, Data.Win.ADODB, Globals, Data.DB,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FBaseDev1, Vcl.ActnList,
  Vcl.Menus, Common,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, DBCtrlsEh, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxSpinEdit,
  cxCheckBox, cxMemo, cxDBExtLookupComboBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMRUEdit, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ImgList,
  cxLabel, cxDBLabel, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, JvBaseDlg, JvCalc, FAddWorker;

type
  TfrmWorkersDet = class(TfrmBaseDev1)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3333: TPanel;
    Label1: TLabel;
    Panel5: TPanel;
    DBText1: TDBText;
    Label9: TLabel;
    Label2: TLabel;
    cxDBCBWithCar: TcxDBCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label8: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBMemo1: TcxDBMemo;
    cxdbtCarNumber: TcxDBMRUEdit;
    lblCarNumber: TLabel;
    PanelBtnCom: TPanel;
    cxDBSpinEdit1: TcxDBTextEdit;
    cxDBLabel1: TcxDBLabel;
    Button1: TButton;
    actSrc: TAction;
    Label10: TLabel;
    cxDBTextEditContractors_Id: TcxDBTextEdit;
    cxDBTextEditContractors_Workers_Id: TcxDBTextEdit;
    cxdbtCompany1: TcxDBLookupComboBox;
    cxdbtReason: TcxDBLookupComboBox;
    cxdbtContactWith: TcxDBLookupComboBox;
    cxdbtName: TcxMRUEdit;
    cxdbtCompany: TcxMRUEdit;
    cxdbtIdentityNo: TcxMRUEdit;
    cxdbtSurname: TcxMRUEdit;
    actAddWorker: TAction;
    Button2: TButton;
    N7: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure actMainOKExecute(Sender: TObject);
    procedure actMainCancelExecute(Sender: TObject);
    procedure actMainUpdateExecute(Sender: TObject);
    procedure actMainInsertExecute(Sender: TObject);
    procedure actMainDeleteExecute(Sender: TObject);
    procedure actMainDispExecute(Sender: TObject);
    procedure actMainOKFFExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBCBWithCarPropertiesChange(Sender: TObject);
    procedure cxdbtCarNumberKeyPress(Sender: TObject; var Key: Char);
    procedure cxdbtNameExit(Sender: TObject);
    procedure actSrcExecute(Sender: TObject);
    procedure cxdbtCompany1Exit(Sender: TObject);
    procedure actAddWorkerExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    DM: TDMWorkersDet;
    procedure ResetColor;
    function CheckFieldBeforefullfill(var tmptxt: string): Boolean;
    function CheckFieldBeforeSave(var tmptxt: string): Boolean;
    { Private declarations }
  public
    function CheckBeforeSave: Boolean;
    function CheckBeforeFull: Boolean;
    function CheckWeight: Boolean;

    procedure AddRec();
    procedure GotoRec(id: Integer);
    procedure EditRec(RecId: Integer);
  end;

var
  frmWorkersDet: TfrmWorkersDet;

implementation

{$R *.dfm}

uses FMain;

procedure TfrmWorkersDet.actAddWorkerExecute(Sender: TObject);
var
  frm: TfrmAddWorker;
begin
  inherited;
  frm  := TfrmAddWorker.CreateSecurity(Self, 101);
  frm.cxdbtCompany.Properties.ListSource := DM.dtsVL_Contractors;
  frm.edtName.Text := cxdbtName.Text;
  frm.edtSurname.Text := cxdbtSurname.Text;
  frm.edtADT.Text := cxdbtIdentityNo.Text;
  frm.cxdbtCompany.Text := cxdbtCompany.Text;
  frm.ShowModal;
  frm.free;
end;

procedure TfrmWorkersDet.actMainCancelExecute(Sender: TObject);
begin
  inherited;
  DM.qryWorkersVisit.Cancel;
  if frmMain.bAutoClose then
    Self.Close;
end;

procedure TfrmWorkersDet.actMainDeleteExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmWorkersDet.actMainDispExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmWorkersDet.actMainInsertExecute(Sender: TObject);
begin
  inherited;
  DM.qryWorkersVisit.Active := False;
  DM.qryWorkersVisit.Parameters.ParamByName('PId').Value := 0;
  DM.qryWorkersVisit.Active := True;

  DM.qryWorkersVisit.Insert;
  DM.qryWorkersVisit.Edit;
  DM.qryWorkersVisitDateTimeIn.AsDateTime := Now();
  DM.qryWorkersVisitWithCar.AsBoolean     := True;
  DM.qryWorkersVisitFullFilled.AsBoolean  := False;
  DM.qryWorkersVisitCardNumber.AsInteger  := 1;
  DM.qryWorkersVisitInUsr.AsInteger       := LoginId;
end;

procedure TfrmWorkersDet.actMainOKExecute(Sender: TObject);
var
  ErrorTxt: string;
  InsertState: Boolean;
begin
  inherited;
  InsertState := SelectMainData.State in [dsInsert];
  if CheckFieldBeforeSave(ErrorTxt) then
    begin
      try
        DM.CheckUpdateParam;
        SelectMainData.Post;
        MessageDlg('Καταχωρήθηκε.', mtInformation, [mbOK], 0);
        if frmMain.bAutoClose then
          Self.Close;
      except
        on E: Exception do
          MessageDlg('Πρόβλημα ' + E.Message, mtWarning, [mbOK], 0);
      end;
    end
  else
    begin
      MessageDlg(ErrorTxt, mtError, [mbOK], 0);
    end;
end;

procedure TfrmWorkersDet.actMainOKFFExecute(Sender: TObject);
var
  ErrorTxt: string;
begin
  inherited;
  if CheckFieldBeforefullfill(ErrorTxt) then
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
          Self.Close;
      except
        on E: Exception do
          MessageDlg('Πρόβλημα ' + E.Message, mtWarning, [mbOK], 0);
      end;
    end
  else
    begin
      MessageDlg(ErrorTxt, mtError, [mbOK], 0);
    end;
end;

procedure TfrmWorkersDet.actMainUpdateExecute(Sender: TObject);
begin
  inherited;
  if SelectMainData.FieldByName('FullFilled').AsBoolean = True then
    begin
      MessageDlg('Έχει γίνει ολοκλήρωση.' + #13 + #10 + 'Δεν επιτρέπονται μεταβολές', mtError, [mbOK], 0);
    end
  else
    begin
      DM.qryWorkersVisit.Edit;
//Leonidas 29122020 Dont Update if not fullfiled
//      if DM.qryPersonsVisitDateTimeOut.IsNull then
//        DM.qryPersonsVisitDateTimeOut.AsDateTime := Now();
//      DM.qryPersonsVisitOutUsr.AsInteger         := LoginId;
    end;
end;

procedure TfrmWorkersDet.actSrcExecute(Sender: TObject);
var t1,t2,t3,t4,t5:string;
var t6,t7:Integer;
begin
  inherited;
  t1:=cxdbtName.Text;
  t2:=cxdbtSurname.Text;
  t3:=cxdbtCompany.Text;
  t4:=cxdbtIdentityNo.Text;
if frmMain.GetHelpWorker(t1,t2,t3,t4,t5,t6,t7) then
begin
  cxdbtName.Text:=t1;
  cxdbtSurname.Text:=t2;
  cxdbtCompany.Text:=t3;
  cxdbtIdentityNo.Text:=t4;

  cxDBTextEditContractors_Id.Text := IntToStr(t6);
  cxDBTextEditContractors_Workers_Id.Text := IntToStr(t7);

  DM.qryWorkersVisitContractors_Id.AsInteger := t6;
  DM.qryWorkersVisitContractors_Workers_Id.AsInteger := t7;

  DM.VL_ReasonContractors.Active := False;
  DM.VL_ReasonContractors.Parameters.ParamByName('PContractors_Id').Value := t6;
  DM.VL_ReasonContractors.Active := True;

  DM.VL_ContactContractors.Active := False;
  DM.VL_ContactContractors.Parameters.ParamByName('PContractors_Id').Value := t6;
  DM.VL_ContactContractors.Active := True;

  actAddWorker.Enabled := False;
  actAddWorker.Visible := False;
end
else
begin
  actAddWorker.Enabled := True;
  actAddWorker.Visible := True;
  actAddWorker.Execute;

end;
end;

procedure TfrmWorkersDet.AddRec;
begin
  actMainInsert.Execute;
end;

procedure TfrmWorkersDet.cxDBCBWithCarPropertiesChange(Sender: TObject);
begin
  inherited;
  if Created then
    if cxDBCBWithCar.Checked then
      begin
        lblCarNumber.Enabled           := True;
        cxdbtCarNumber.Enabled         := True;
        cxDBCBWithCar.Style.Font.Style := [fsBold];
      end
    else
      begin
        lblCarNumber.Enabled           := False;
        cxdbtCarNumber.Enabled         := False;
        cxdbtCarNumber.EditValue       := Null;
        cxDBCBWithCar.Style.Font.Style := [];
      end;

end;


procedure TfrmWorkersDet.cxdbtCompany1Exit(Sender: TObject);
begin
  inherited;
//  DM.VL_ReasonContractors.Active := False;
//  DM.VL_ReasonContractors.Active := True;
end;

procedure TfrmWorkersDet.cxdbtCarNumberKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmWorkersDet.cxdbtNameExit(Sender: TObject);
var PName:string;
begin
  inherited;
//  PName:=frmMain.String2Pho(cxdbtName.Text);
//  if DM.qryPersons.Locate('PhoName',PName,[]) then
//
//  else
//    begin
//      DM.qryPersons.Insert;
//      DM.qryPersons.Edit;
//      DM.qryPersonsPerson.AsString    := cxdbtName.Text;
//      DM.qryPersonsPhoPerson.AsString := PName;
//      DM.qryPersons.Post;
//    end;
end;

procedure TfrmWorkersDet.FormActivate(Sender: TObject);
begin
  inherited;
  actAddWorker.Enabled := False;
  actAddWorker.Visible := False;
end;

procedure TfrmWorkersDet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
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

procedure TfrmWorkersDet.FormCreate(Sender: TObject);
var x:Integer;
begin
  inherited;
  Created := False;
  DM      := TDMWorkersDet.Create(Self);
  PrimDM  := DM;
  SecDM   := DM;

  SelectMainData := DM.qryWorkersVisit;

  SetDBLookupSort;

  LoadMruEdt(cxdbtCompany, DM.VL_Contractors);
//  LoadMru(cxdbtContactWith,DM.VL_ContactContractors);
//  LoadMru(cxdbtReason, DM.VL_ReasonContractors);
  LoadMru(cxdbtCarNumber, DM.VL_CarNumberContractors);

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

  if frmMain.chkSmallPerson.Checked then
  begin
  Panel5.Height:=120;
  Panel5.Top:=285;
  cxDBMemo1.Height:=80;
  Self.Height:=  Self.Height-80;
  end
  else
  begin
  end;

  actAddWorker.Enabled := False;
  actAddWorker.Visible := False;

  Created := True;
end;

procedure TfrmWorkersDet.GotoRec(id: Integer);
begin
  DM.qryWorkersVisit.Active := False;
  DM.qryWorkersVisit.Parameters.ParamByName('PId').Value := id;
  DM.qryWorkersVisit.Active := True;
end;

procedure TfrmWorkersDet.EditRec(RecId: Integer);
begin
  GotoRec(RecId);
  actMainUpdateExecute(Self);
    DM.fnHelpWorkerWithId.Active := False;
  DM.fnHelpWorkerWithId.Parameters.ParamByName('@PId').Value := DM.qryWorkersVisitContractors_Workers_Id.AsInteger;
  DM.fnHelpWorkerWithId.Active := True;

  if DM.fnHelpWorkerWithId.RecordCount > 0 then
  begin
    cxdbtName.Text := DM.fnHelpWorkerWithIdName.AsString;
    cxdbtSurname.Text :=  DM.fnHelpWorkerWithIdSurName.AsString;
    cxdbtCompany.Text :=  DM.fnHelpWorkerWithIdCompany.AsString;
    cxdbtIdentityNo.Text := DM.fnHelpWorkerWithIdADT.AsString;
  end
  else
  begin
    MessageDlg('Error Worker not found,', mtError, [mbOK], 0);
  end;

  DM.VL_ReasonContractors.Active := False;
  DM.VL_ReasonContractors.Parameters.ParamByName('PContractors_Id').Value := DM.qryWorkersVisitContractors_Id.AsInteger;
  DM.VL_ReasonContractors.Active := True;

  DM.VL_ContactContractors.Active := False;
  DM.VL_ContactContractors.Parameters.ParamByName('PContractors_Id').Value := DM.qryWorkersVisitContractors_Id.AsInteger;
  DM.VL_ContactContractors.Active := True;

  // cxDBCBWithCarExit(Self);
end;

function TfrmWorkersDet.CheckBeforeFull: Boolean;
begin

end;

function TfrmWorkersDet.CheckBeforeSave: Boolean;
begin

end;

function TfrmWorkersDet.CheckWeight: Boolean;
begin

end;

function TfrmWorkersDet.CheckFieldBeforeSave(Var tmptxt: string): Boolean;
var
  tmpError: Boolean;
  tmpSl: TStringList;
begin
  tmpError := False;
  ResetColor;
  tmpSl := TStringList.Create;

  if cxdbtName.Text = '' then
    begin
      cxdbtName.Style.BorderColor := clRed;
      cxdbtName.Style.BorderStyle := ebsThick;
      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Όνομα');
    end;
  if cxdbtContactWith.Text = '' then
    begin
      cxdbtContactWith.Style.BorderColor := clRed;
      cxdbtContactWith.Style.BorderStyle := ebsThick;
      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Συνάντηση Με');
    end;
  if cxdbtCompany.Text = '' then
    begin
      cxdbtCompany.Style.BorderColor := clRed;
      cxdbtCompany.Style.BorderStyle := ebsThick;
      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Εταιρεία');
    end;
  if cxdbtReason.Text = '' then
    begin
      cxdbtReason.Style.BorderColor := clRed;
      cxdbtReason.Style.BorderStyle := ebsThick;
      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Σκοπός');
    end;
//  if ((cxdbtCarNumber.Enabled) and (cxdbtCarNumber.Text = '')) then
//    begin
//      cxdbtCarNumber.Style.BorderColor := clRed;
//      cxdbtCarNumber.Style.BorderStyle := ebsThick;
//      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Αριθμός Κυκλοφορίας');
//    end;

  if tmpSl.Count > 0 then
    begin
      tmptxt := tmpSl.CommaText;
      tmptxt := StringReplace(tmptxt, ',', Chr(13) + Chr(10), [rfReplaceAll]);
      result := False;
    end
  else
    begin
      result := True;
    end;
end;

function TfrmWorkersDet.CheckFieldBeforefullfill(Var tmptxt: string): Boolean;
var
  tmpError: Boolean;
  tmpSl: TStringList;
begin
  tmpError := False;
  ResetColor;
  tmpSl := TStringList.Create;

  if cxdbtName.Text = '' then
    begin
      cxdbtName.Style.BorderColor := clRed;
      cxdbtName.Style.BorderStyle := ebsThick;
      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Όνομα');
    end;
  if cxdbtContactWith.Text = '' then
    begin
      cxdbtContactWith.Style.BorderColor := clRed;
      cxdbtContactWith.Style.BorderStyle := ebsThick;
      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Συνάντηση Με');
    end;
  if cxdbtCompany.Text = '' then
    begin
      cxdbtCompany.Style.BorderColor := clRed;
      cxdbtCompany.Style.BorderStyle := ebsThick;
      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Εταιρεία');
    end;
//  if cxdbtReason.Text = '' then
//    begin
//      cxdbtReason.Style.BorderColor := clRed;
//      cxdbtReason.Style.BorderStyle := ebsThick;
//      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Σκοπός');
//    end;
//  if (cxdbtCarNumber.Enabled) and (cxdbtCarNumber.Text = '') then
//    begin
//      cxdbtCarNumber.Style.BorderColor := clRed;
//      cxdbtCarNumber.Style.BorderStyle := ebsThick;
//      tmpSl.Append('Δεν υπάρχει καταχώρηση σε Αριθμός Κυκλοφορίας');
//    end;

  if tmpSl.Count > 0 then
    begin
      tmptxt := tmpSl.CommaText;
      tmptxt := StringReplace(tmptxt, ',', Chr(13) + Chr(10), [rfReplaceAll]);
      result := False;
    end
  else
    begin
      result := True;
    end;
end;

procedure TfrmWorkersDet.ResetColor;
begin
  cxdbtName.Style.BorderColor        := clWindowFrame;
  cxdbtName.Style.BorderStyle        := ebsUltraFlat;
  cxdbtContactWith.Style.BorderColor := clWindowFrame;
  cxdbtContactWith.Style.BorderStyle := ebsUltraFlat;
  cxdbtCompany.Style.BorderColor     := clWindowFrame;
  cxdbtCompany.Style.BorderStyle     := ebsUltraFlat;
  cxdbtReason.Style.BorderColor      := clWindowFrame;
  cxdbtReason.Style.BorderStyle      := ebsUltraFlat;
  cxdbtCarNumber.Style.BorderColor   := clWindowFrame;
  cxdbtCarNumber.Style.BorderStyle   := ebsUltraFlat;
end;

end.
