unit FAddWorker;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FBForm, Vcl.ComCtrls, DMain, DWorkersDet,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, Data.Win.ADODB, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.ExtCtrls, DSubParams33;

type
  TfrmAddWorker = class(TfrmBForm)
    DataSource1: TDataSource;
    fnHelpPerson: TADOStoredProc;
    fnHelpPersonName: TWideStringField;
    fnHelpPersonSurName: TWideStringField;
    fnHelpPersonCompany: TWideStringField;
    fnHelpPersonADT: TWideStringField;
    fnHelpPersonContractor_Id: TIntegerField;
    fnHelpPersonWorker_Id: TIntegerField;
    Panel1: TPanel;
    Button1: TButton;
    cxdbtCompany: TcxLookupComboBox;
    Label4: TLabel;
    edtADT: TEdit;
    Label3: TLabel;
    edtSurname: TEdit;
    Label2: TLabel;
    edtName: TEdit;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Name: TcxGridDBColumn;
    cxGridDBTableView1SurName: TcxGridDBColumn;
    cxGridDBTableView1Company: TcxGridDBColumn;
    cxGridDBTableView1ADT: TcxGridDBColumn;
    cxGridDBTableView1Contractor_Id: TcxGridDBColumn;
    cxGridDBTableView1Worker_Id: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    fnHelpPerson1: TADOStoredProc;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DataSource2: TDataSource;
    cxGridDBTableView2Name: TcxGridDBColumn;
    cxGridDBTableView2SurName: TcxGridDBColumn;
    cxGridDBTableView2Company: TcxGridDBColumn;
    cxGridDBTableView2ADT: TcxGridDBColumn;
    cxGridDBTableView2Contractor_Id: TcxGridDBColumn;
    cxGridDBTableView2Worker_Id: TcxGridDBColumn;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    DM : TDMSubParams33;
    { Public declarations }
  end;

var
  frmAddWorker: TfrmAddWorker;

implementation

{$R *.dfm}

procedure TfrmAddWorker.Button1Click(Sender: TObject);
var Mes:String;

begin
  inherited;

  if ((edtName.Text > '') and (edtSurname.Text > '') and (cxdbtCompany.Text > '') and (edtADT.Text > '')) then
  else
  begin
     MessageDlg('Παρακαλώ καταχωρήστε Ολά τα πεδία', mtError, [mbOK], 0);
     exit;
  end;

  fnHelpPerson.Active := False;
//  fnHelpPerson.Parameters.ParamByName('@PName').value := edtName.Text + '%';
//  fnHelpPerson.Parameters.ParamByName('@PSurname').value := edtSurname.Text + '%';
  fnHelpPerson.Parameters.ParamByName('@PCompany').value := cxdbtCompany.Text + '%';
  fnHelpPerson.Parameters.ParamByName('@PIdentity').value := edtADT.Text + '%';
  fnHelpPerson.Active := True;

  fnHelpPerson1.Active := False;
  fnHelpPerson1.Parameters.ParamByName('@PName').value := edtName.Text + '%';
  fnHelpPerson1.Parameters.ParamByName('@PSurname').value := edtSurname.Text + '%';
//  fnHelpPerson1.Parameters.ParamByName('@PCompany').value := cxdbtCompany.Text + '%';
  fnHelpPerson1.Parameters.ParamByName('@PIdentity').value := edtADT.Text + '%';
  fnHelpPerson1.Active := True;


  if fnHelpPerson.IsEmpty and fnHelpPerson1.IsEmpty then
  begin
     Button2.Visible := True;
     MessageDlg('Μπορεί να γίνει καταχώρηση του Νέου Εργαζομένου.', mtInformation, [mbOK], 0);
  end
  else
  begin
    Mes := '';
    if Not fnHelpPerson.IsEmpty then
       Mes := 'Υπάρχει Εργαζόμενος με αυτή την Ταυτότητα.';
    if Not fnHelpPerson1.IsEmpty then
       Mes := Mes + '#13#10' + 'Υπάρχει Εργαζόμενος με αυτά τα στοιψεία.';
    MessageDlg(Mes, mtError, [mbOK], 0);
    Button2.Visible := False;
  end;
end;

procedure TfrmAddWorker.Button2Click(Sender: TObject);
begin
  inherited;
  DM.qryContractors_Workers.Insert;
  DM.qryContractors_WorkersADT.AsString := edtADT.Text;
  DM.qryContractors_WorkersName.AsString := edtName.Text;
  DM.qryContractors_WorkersSurname.AsString := edtSurname.Text;
  DM.qryContractors_WorkersContractors_Id.AsInteger := cxdbtCompany.EditingValue;
  DM.qryContractors_WorkersManualInsert.AsBoolean := True;
  DM.qryContractors_WorkersActive.AsBoolean := True;
  try
    DM.qryContractors_Workers.Post;
    MessageDlg('OK', mtConfirmation, [mbOK], 0);
  except
    on E: Exception do
      MessageDlg('Πρόβλημα ' + E.Message, mtWarning, [mbOK], 0);
  end;
  self.Close;
end;

procedure TfrmAddWorker.FormCreate(Sender: TObject);
begin
  inherited;
  DM := TDMSubParams33.Create(self);
  self.ActiveControl := edtName;
end;

end.
