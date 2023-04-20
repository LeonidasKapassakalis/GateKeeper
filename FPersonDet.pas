unit FPersonDet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  DPersonDet, Data.Win.ADODB, Globals, Data.DB,
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
  dxSkinXmas2008Blue, JvBaseDlg, JvCalc;

type
  TfrmPersonDet = class(TfrmBaseDev1)
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
    Label10: TLabel;
    cxDBMemo1: TcxDBMemo;
    cxdbtName: TcxDBMRUEdit;
    cxdbtIdentityNo: TcxDBMRUEdit;
    cxdbtCarNumber: TcxDBMRUEdit;
    cxdbtContactWith: TcxDBMRUEdit;
    cxdbtReason: TcxDBMRUEdit;
    cxdbtCompany: TcxDBMRUEdit;
    lblCarNumber: TLabel;
    PanelBtnCom: TPanel;
    cxDBSpinEdit1: TcxDBTextEdit;
    cxDBLabel1: TcxDBLabel;
    Button1: TButton;
    actSrc: TAction;
    cxDBCBAir_Lift: TcxDBCheckBox;
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
    procedure cxDBCBAir_LiftClick(Sender: TObject);
  private
    DM: TDMPersonDet;
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
  frmPersonDet: TfrmPersonDet;

implementation

{$R *.dfm}

uses FMain;

procedure TfrmPersonDet.actMainCancelExecute(Sender: TObject);
begin
  inherited;
  DM.qryPersonsVisit.Cancel;
  if frmMain.bAutoClose then
    Self.Close;
end;

procedure TfrmPersonDet.actMainDeleteExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmPersonDet.actMainDispExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmPersonDet.actMainInsertExecute(Sender: TObject);
begin
  inherited;
  DM.qryPersonsVisit.Active := False;
  DM.qryPersonsVisit.Parameters.ParamByName('PId').Value := 0;
  DM.qryPersonsVisit.Active := True;

  DM.qryPersonsVisit.Insert;
  DM.qryPersonsVisit.Edit;
  DM.qryPersonsVisitDateTimeIn.AsDateTime := Now();
  DM.qryPersonsVisitWithCar.AsBoolean     := True;
  DM.qryPersonsVisitAir_Lift.AsBoolean     := False;
  DM.qryPersonsVisitFullFilled.AsBoolean  := False;
  DM.qryPersonsVisitCardNumber.AsInteger  := 1;
  DM.qryPersonsVisitInUsr.AsInteger       := LoginId;
end;

procedure TfrmPersonDet.actMainOKExecute(Sender: TObject);
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

procedure TfrmPersonDet.actMainOKFFExecute(Sender: TObject);
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

procedure TfrmPersonDet.actMainUpdateExecute(Sender: TObject);
begin
  inherited;
  if SelectMainData.FieldByName('FullFilled').AsBoolean = True then
    begin
      MessageDlg('Έχει γίνει ολοκλήρωση.' + #13 + #10 + 'Δεν επιτρέπονται μεταβολές', mtError, [mbOK], 0);
    end
  else
    begin
      DM.qryPersonsVisit.Edit;
//Leonidas 29122020 Dont Update if not fullfiled
//      if DM.qryPersonsVisitDateTimeOut.IsNull then
//        DM.qryPersonsVisitDateTimeOut.AsDateTime := Now();
//      DM.qryPersonsVisitOutUsr.AsInteger         := LoginId;
    end;
end;

procedure TfrmPersonDet.actSrcExecute(Sender: TObject);
var t1,t2,t3,t4:string;
begin
  inherited;
  t1:=cxdbtName.Text;
  t2:=cxdbtCompany.Text;
  t3:=cxdbtIdentityNo.Text;
if frmMain.GetHelpPerson(t1,t2,t3,t4) then
begin
  cxdbtName.Text:=t1;
  cxdbtCompany.Text:=t2;
  cxdbtIdentityNo.Text:=t3;
  cxdbtContactWith.Text:=t4;
end;
end;

procedure TfrmPersonDet.AddRec;
begin
  actMainInsert.Execute;
end;

procedure TfrmPersonDet.cxDBCBAir_LiftClick(Sender: TObject);
begin
  inherited;
  if DM.qryPersonsVisit.State in [dsinsert,dsEdit] then
    if TcxDBCheckBox(Sender).Checked then
      begin
        DM.qryPersonsVisitContactWith.AsString := 'Ε/Κ';
        DM.qryPersonsVisitCompany.AsString := 'AIR-LIFT';
        DM.qryPersonsVisitReason.AsString := '-';
     end;
end;

procedure TfrmPersonDet.cxDBCBWithCarPropertiesChange(Sender: TObject);
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


procedure TfrmPersonDet.cxdbtCarNumberKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPersonDet.cxdbtNameExit(Sender: TObject);
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

procedure TfrmPersonDet.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfrmPersonDet.FormCreate(Sender: TObject);
var x:Integer;
begin
  inherited;
  Created := False;
  DM      := TDMPersonDet.Create(Self);
  PrimDM  := DM;
  SecDM   := DM;

  SelectMainData := DM.qryPersonsVisit;

  SetDBLookupSort;

  LoadMru(cxdbtReason, DM.VL_Reason);
  LoadMru(cxdbtName, DM.VL_PVPersons);
  LoadMru(cxdbtCompany, DM.VL_PVCompany);
  LoadMru(cxdbtContactWith,DM.VL_PVContact);
  LoadMru(cxdbtCarNumber, DM.VL_PVCarNumber);

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



  Created := True;
end;

procedure TfrmPersonDet.GotoRec(id: Integer);
begin
  DM.qryPersonsVisit.Active := False;
  DM.qryPersonsVisit.Parameters.ParamByName('PId').Value := id;
  DM.qryPersonsVisit.Active := True;
end;

procedure TfrmPersonDet.EditRec(RecId: Integer);
begin
  GotoRec(RecId);
  actMainUpdateExecute(Self);
  // cxDBCBWithCarExit(Self);
end;

function TfrmPersonDet.CheckBeforeFull: Boolean;
begin

end;

function TfrmPersonDet.CheckBeforeSave: Boolean;
begin

end;

function TfrmPersonDet.CheckWeight: Boolean;
begin

end;

function TfrmPersonDet.CheckFieldBeforeSave(Var tmptxt: string): Boolean;
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

function TfrmPersonDet.CheckFieldBeforefullfill(Var tmptxt: string): Boolean;
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

procedure TfrmPersonDet.ResetColor;
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
