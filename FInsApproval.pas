unit FInsApproval;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DB, dxmdaset, DBCtrls, Common, Globals,
  ADODB, ActnList, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, FBaseDev0,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.PlatformDefaultStyleActnCtrls, Vcl.Menus, DMain,
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
  TfrmInsApproval = class(TfrmBaseDev0)
    memStation: TdxMemData;
    dsmemStation: TDataSource;
    memStationNameKey: TIntegerField;
    memStationCardKey: TIntegerField;
    dbeAmount: TDBEdit;
    memStationAmount: TCurrencyField;
    dsAcard: TDataSource;
    qryACard: TADOQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ActionList1: TActionList;
    actCancel: TAction;
    actOK: TAction;
    dxBarManager1: TActionManager;
    InsApproval: TADOQuery;
    InsApprovalAPPROVALID: TAutoIncField;
    InsApprovalAPPROVALACARDID: TIntegerField;
    InsApprovalAPPROVALSTATIONID: TIntegerField;
    InsApprovalAPPROVALAMOUNT: TFloatField;
    InsApprovalAPPROVALCODE: TWideStringField;
    InsApprovalINSDT: TDateTimeField;
    InsApprovalUPDDT: TDateTimeField;
    InsApprovalINSUSR: TIntegerField;
    InsApprovalUPDUSR: TIntegerField;
    UpdCommandAct: TAction;
    ActionToolBar1: TActionToolBar;
    cblc14: TcxDBLookupComboBox;
    cblcAcard: TcxDBLookupComboBox;
    qryACardAcardAcardId: TAutoIncField;
    qryACardAcardREGNO: TWideStringField;
    qryACardAcardAcardCode: TWideStringField;
    qryACardAcardAcardCodeFull: TWideStringField;
    dsStation: TDataSource;
    qryStation: TADOQuery;
    qryStationMerchantName: TWideStringField;
    qryStationStationStationId: TIntegerField;
    qryStationMerchantMerchantId: TIntegerField;
    qryStationStationStreet: TWideStringField;
    qryStationStationCity: TWideStringField;
    qryStationTerminalTerminalid: TIntegerField;
    memStationAcardCode: TIntegerField;
    MaskEdit1: TMaskEdit;
    qryStationFName: TWideStringField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    qryStationFName2: TStringField;
    qryStation2: TADOQuery;
    WideStringField1: TWideStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    IntegerField3: TIntegerField;
    WideStringField4: TWideStringField;
    StringField1: TStringField;
    dsStation2: TDataSource;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure actOKExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure qryStationCalcFields(DataSet: TDataSet);
    procedure MaskEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  Public
    constructor CreateNew(aowner: TComponent; CardCode: Integer; CardDisp: String);
    constructor CreateNewParam(aowner: TComponent; PratCode: Integer; CardCode: Integer);
  end;

implementation

{$R *.dfm}

procedure TfrmInsApproval.FormCreate(Sender: TObject);
begin
  // f1:=Tfield.Create(Self);
  // f2:=Tfield.Create(Self);
  qryACard.Active   := True;
  qryStation.Active := True;
  memStation.Active := True;
end;

procedure TfrmInsApproval.MaskEdit1Exit(Sender: TObject);
var
  LeoCard: Integer;
begin
  inherited;
  try
    strtoint64(StringReplace(MaskEdit1.Text, ' ', '', [rfReplaceAll]));
  except
    exit
  end;

  LeoCard := ReturnCardIdFromFullNo(MaskEdit1.Text);

  if LeoCard > 0 then
    begin
      memStation.Edit;
      memStationCardKey.AsInteger := LeoCard;
      memStation.Post;
      MaskEdit1.Color := clWhite;
    end
  else
    begin
      MessageDlg('Δεν υπάρχει η Κάρτα.', mtError, [mbOK], 0);
      MaskEdit1.Color := clRed;
    end;
end;

procedure TfrmInsApproval.qryStationCalcFields(DataSet: TDataSet);
begin
  inherited;
  // qryStationLFull.AsString := Trim(qryStationMerchantName.AsString) + ' ' +
  // Trim(qryStationStationStreet.AsString)+ ' ' +
  // Trim(qryStationStationCity.AsString);
end;

procedure TfrmInsApproval.actOKExecute(Sender: TObject);

  function AddDigits(Card: String): Integer;
  var
    x, y: Integer;
    h, m, s, ms: Word;
  begin
    DecodeTime(now(), h, m, s, ms);
    y := ms * m;
    Randomize;
    for x := 1 to length(Card) do
      if Random(1) = 1 then
        y := y + Ord(Card[x])
      else
        y := y - Ord(Card[x]);
    if m = 0 then
      m := 1;
    if Random(1) = 1 then
      Result := y + (h div m)
    else
      Result := y - (h div m);
    if Result < 0 then
      Result := Result * -1;
  end;

var
  f1, f2, x, y, stCardn: Integer;
  st, stCard, stName: String;
begin
  try
    strtoint64(StringReplace(MaskEdit1.Text, ' ', '', [rfReplaceAll]));
  except
    MessageDlg('Πρόβλημα σε κάρτα', mtError, [mbOK], 0);
    exit;
  end;

  InsApproval.Active := True;
  InsApproval.Insert;
  memStation.Post;
  InsApprovalAPPROVALAMOUNT.AsCurrency   := memStationAmount.AsCurrency;
  InsApprovalAPPROVALSTATIONID.AsInteger := memStationNameKey.AsInteger;
  InsApprovalAPPROVALACARDID.AsInteger   := memStationCardKey.AsInteger;
  InsApprovalINSDT.AsDateTime            := now();
  InsApprovalUPDDT.AsDateTime            := now();
  InsApprovalINSUSR.AsInteger            := guUserId;
  InsApprovalUPDUSR.AsInteger            := guUserId;
  stCard                                 := ReturnFullIdNo(memStationAcardCode.AsInteger);
  stCardn                                := ReturnCardIdFromFullNo(MaskEdit1.Text);
  if stCardn = 0 then
    begin
      MessageDlg('Δεν υπάρχει η Κάρτα', mtError, [mbOK], 0);
      InsApproval.Cancel;
      exit;
    end;

  // st                                      := inttostr(AddDigits(
  // memStationFullCardNo.AsString+memStationNAME.AsString+
  // memStationCard.AsString));
  st                               := inttostr(AddDigits(stCard));
  InsApprovalAPPROVALCODE.AsString := st;
  InsApproval.Post;
  ShowMessage(st);
  Self.Close;
end;

procedure TfrmInsApproval.actCancelExecute(Sender: TObject);
begin
  Self.Close;
end;

constructor TfrmInsApproval.CreateNew(aowner: TComponent; CardCode: Integer; CardDisp: String);
begin
  inherited Create(aowner);
  memStation.Active := True;
  memStation.Edit;
  // memStationCard.AsString:=CardDisp;
  memStationCardKey.AsInteger := CardCode;
  // memStationCard.ReadOnly:=True;
end;

constructor TfrmInsApproval.CreateNewParam(aowner: TComponent; PratCode: Integer; CardCode: Integer);
begin
  inherited Create(aowner);
  memStation.Active := True;
  memStation.Edit;
  if CardCode > 0 then
    memStationCardKey.AsInteger := CardCode;
  if PratCode > 0 then
    memStationNameKey.AsInteger := PratCode;
end;

end.
