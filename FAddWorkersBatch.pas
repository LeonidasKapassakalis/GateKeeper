unit FAddWorkersBatch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FBForm, Vcl.ComCtrls, DMain,
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
  cxGrid, Vcl.ExtCtrls, DSubParams33, System.Win.ComObj, Datasnap.DBClient,
  Vcl.ActnList;

type
  TfrmAddWorkersBatch = class(TfrmBForm)
    DataSource1: TDataSource;
    fnHelpCompanyVAT: TADOStoredProc;
    Panel1: TPanel;
    fnHelpWorkerADT: TADOStoredProc;
    DataSource2: TDataSource;
    ActionList1: TActionList;
    actLoadExcel: TAction;
    OpenDialog1: TOpenDialog;
    Cds1: TClientDataSet;
    ADOTable1: TADOTable;
    ADOTable1ID: TAutoIncField;
    ADOTable1��: TFloatField;
    ADOTable1���������: TWideStringField;
    ADOTable1������������������: TDateTimeField;
    ADOTable1�����������������: TWideStringField;
    ADOTable1���_���������: TFloatField;
    ADOTable1������������: TFloatField;
    ADOTable1�������: TWideStringField;
    ADOTable1�����: TWideStringField;
    ADOTable1Field9: TWideStringField;
    DataSource3: TDataSource;
    Cds1ID: TAutoIncField;
    Cds1��: TFloatField;
    Cds1���������: TWideStringField;
    Cds1������������������: TDateTimeField;
    Cds1�����������������: TWideStringField;
    Cds1���_���������: TFloatField;
    Cds1������������: TFloatField;
    Cds1�������: TWideStringField;
    Cds1�����: TWideStringField;
    Cds1Field9: TWideStringField;
    Panel2: TPanel;
    Panel4: TPanel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1DBColumn: TcxGridDBColumn;
    cxGridDBTableView1DBColumn1: TcxGridDBColumn;
    cxGridDBTableView1DBColumn2: TcxGridDBColumn;
    cxGridDBTableView1DBColumn3: TcxGridDBColumn;
    cxGridDBTableView1_: TcxGridDBColumn;
    cxGridDBTableView1DBColumn4: TcxGridDBColumn;
    cxGridDBTableView1DBColumn5: TcxGridDBColumn;
    cxGridDBTableView1DBColumn6: TcxGridDBColumn;
    cxGridDBTableView1Field9: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    actCheckVatExist: TAction;
    fnHelpCompanyVATId: TIntegerField;
    Cds1Contractor_Id: TIntegerField;
    Cds1ContractorFound: TBooleanField;
    Cds1WorkerADTFound: TBooleanField;
    cxGridDBTableView1Contractor_Id: TcxGridDBColumn;
    cxGridDBTableView1ContractorFound: TcxGridDBColumn;
    cxGridDBTableView1WorkerADTFound: TcxGridDBColumn;
    fnHelpWorkerADTName: TWideStringField;
    fnHelpWorkerADTSurname: TWideStringField;
    fnHelpWorkerADTCompany: TWideStringField;
    fnHelpWorkerADTADT: TWideStringField;
    fnHelpWorkerADTContractor_Id: TIntegerField;
    fnHelpWorkerADTWorker_Id: TIntegerField;
    actUpdate2DB: TAction;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure actLoadExcelExecute(Sender: TObject);
    procedure actCheckVatExistExecute(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure actUpdate2DBExecute(Sender: TObject);
  private
    ErrorsFound : Boolean;
    CheckDone : Boolean;
  public
    DM : TDMSubParams33;
    { Public declarations }
  end;

var
  frmAddWorkersBatch: TfrmAddWorkersBatch;

implementation

{$R *.dfm}


procedure TfrmAddWorkersBatch.FormCreate(Sender: TObject);
begin
  inherited;
  DM := TDMSubParams33.Create(self);
  self.CheckDone := False;
end;

procedure TfrmAddWorkersBatch.actCheckVatExistExecute(Sender: TObject);
var tmpVat,tmpADT:String;
var ErrorsFound,WorkerFound:Boolean;
begin
  inherited;
  ErrorsFound := False;
  WorkerFound := False;
  cds1.First;
  repeat
    tmpVat :=Trim(Cds1���_���������.AsString);
    tmpADT :=Trim(Cds1������������.AsString);
    if ((tmpVat > '') and (tmpADT > '')) then
    begin
      fnHelpCompanyVAT.Active := False;
      fnHelpCompanyVAT.Parameters.ParamByName('@PVAT').value := tmpVat;
      fnHelpCompanyVAT.Active := True;
      if fnHelpCompanyVAT.RecordCount <> 1 then
      begin
          Cds1.Edit;
          Cds1ContractorFound.AsBoolean := False;
          ErrorsFound := True;
          Cds1.Post;
      end
      else
      begin
          Cds1.Edit;
          Cds1Contractor_Id.AsInteger := fnHelpCompanyVATId.AsInteger;
          Cds1ContractorFound.AsBoolean := True;
          Cds1.Post;
      end;
    end;
    if Cds1ContractorFound.AsBoolean then
    begin
      fnHelpWorkerADT.Active := False;
      fnHelpWorkerADT.Parameters.ParamByName('@PADT').value := tmpADT;
      fnHelpWorkerADT.Parameters.ParamByName('@PConId').value := Cds1Contractor_Id.AsInteger;
      fnHelpWorkerADT.Active := True;
      if fnHelpWorkerADT.RecordCount > 0 then
      begin
          Cds1.Edit;
          Cds1WorkerADTFound.AsBoolean := True;
          WorkerFound := True;
          Cds1.Post;
      end
      else
      begin
          Cds1.Edit;
          Cds1WorkerADTFound.AsBoolean := False;
          Cds1.Post;
      end;
    end;
    cds1.Next
  until cds1.Eof;

  self.CheckDone := True;
  self.ErrorsFound := ErrorsFound;

  if ErrorsFound then
     MessageDlg('��� �������� ������� ���������.', mtError, [mbOK], 0);
  if WorkerFound then
     MessageDlg('�������� ������� ����������� ���.', mtError, [mbOK], 0);


end;

procedure TfrmAddWorkersBatch.actLoadExcelExecute(Sender: TObject);
var x,i,y,DispFCnt:Integer;
    Sheet: Variant;
    XLApp: Variant;
begin
  if OpenDialog1.Execute = False then
     exit;

  Cds1.Active:=True;

  Cds1.First;
  repeat
    try
      Cds1.Delete;
    except
    end;
  until Cds1.Eof;

  XLApp:= CreateOleObject('Excel.Application');
  XLApp.Workbooks.Open(OpenDialog1.FileName);

  Sheet := XLApp.Workbooks[1].WorkSheets[1];

  Cds1.DisableControls;
     for y:=2 to 500 do
        begin
            Cds1.Insert;
            Cds1��.AsInteger := y;
//            Cds1cdsF1.AsString  := Trim(Sheet.Cells[y,1]);
            Cds1���������.AsString  := Trim(Sheet.Cells[y,2]);
            Cds1������������������.AsString  := Trim(Sheet.Cells[y,3]);
            Cds1�����������������.AsString  := Trim(Sheet.Cells[y,4]);
            Cds1���_���������.AsString  := Trim(Sheet.Cells[y,5]);
            Cds1�������.AsString  := Trim(Sheet.Cells[y,6]);
            Cds1�����.AsString  := Trim(Sheet.Cells[y,7]);
            Cds1������������.AsString  := Trim(Sheet.Cells[y,8]);

            if Cds1���������.AsString > '' then
               Cds1.Post
            else
               Cds1.Cancel;
        end;

  XLApp.Workbooks.Close;

  Cds1.EnableControls;
  Cds1.First;

  self.CheckDone := False;
end;


procedure TfrmAddWorkersBatch.actUpdate2DBExecute(Sender: TObject);
var UpdatesCount:Integer;
begin
  inherited;
  UpdatesCount := 0;

  if self.CheckDone = False then
  begin
     MessageDlg('��� ���� ����� �������.'+#13+#10+'������� � ��������.', mtWarning, [mbOK], 0);
     exit;
  end;
  if self.ErrorsFound = True then
  begin
    MessageDlg('�������� ����������� ����� ��������.'+#13+#10+'������� � ��������.', mtError, [mbOK], 0);
    exit;
  end;

  cds1.First;
  repeat
    if Cds1ContractorFound.AsBoolean = True then
        if Cds1WorkerADTFound.AsBoolean = False then
    begin
    DM.qryContractors_Workers.Insert;
    DM.qryContractors_WorkersActive.AsBoolean := True;
    DM.qryContractors_WorkersName.AsString := Cds1�����.AsString;
    DM.qryContractors_WorkersSurname.AsString := Cds1�������.AsString;
    DM.qryContractors_WorkersADT.AsString := Cds1������������.AsString;
    DM.qryContractors_WorkersContractors_Id.AsInteger := Cds1Contractor_Id.AsInteger;
    try
        DM.qryContractors_Workers.Post;
        UpdatesCount := UpdatesCount + 1;
    except
          on E: Exception do
            begin
            end;
    end;
    end;
    cds1.Next;
  until cds1.Eof;
  MessageDlg('������ '+inttostr(UpdatesCount) + ' �����������.', mtError, [mbOK], 0);
  self.Close;
end;

procedure TfrmAddWorkersBatch.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var xxx:Variant;
begin
  inherited;
if Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 1) = False  then
    ACanvas.Brush.Color := clRed;
if Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 2) = True  then
    ACanvas.Brush.Color := clRed;
end;

end.
