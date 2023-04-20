unit FBRPersons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FBaseRep, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,  cxGridExportLink,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPSCore, dxPScxCommon, Data.Win.ADODB, Vcl.ActnList, Vcl.Menus, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxCore, DateUtils,
  DMain, FPersonDet, FFilterEnDev;

type
  TfrmBRPersons = class(TfrmBaseRep)
    qryMainid: TIntegerField;
    qryMainName: TWideStringField;
    qryMainCompany: TWideStringField;
    qryMainIdentityNo: TWideStringField;
    qryMainReason: TWideStringField;
    qryMainContactWith: TWideStringField;
    qryMainWithCar: TBooleanField;
    qryMainCarNumber: TWideStringField;
    qryMainCardNumber: TWideStringField;
    qryMainDateTimeIn: TDateTimeField;
    qryMainDateTimeOut: TDateTimeField;
    qryMainInsUsr: TIntegerField;
    qryMainInsDT: TDateTimeField;
    qryMainInUsr: TIntegerField;
    qryMainOutUsr: TIntegerField;
    qryMainFullFilled: TBooleanField;
    qryMainFullFilledDT: TDateTimeField;
    qryMainFullFilledUsr: TIntegerField;
    qryMainComments: TWideStringField;
    VL_FPass: TADOQuery;
    VL_FPassId: TIntegerField;
    VL_FPassLogin: TWideStringField;
    VL_FPassPasswd: TWideStringField;
    VL_FPassGroup: TSmallintField;
    VL_FPassName: TWideStringField;
    VL_FPassAddress: TWideStringField;
    VL_FPassEMAIL: TWideStringField;
    VL_FPassPhone: TWideStringField;
    VL_FPassConn_Time: TFloatField;
    VL_FPassValid_Till: TDateTimeField;
    VL_FPassStath: TIntegerField;
    VL_FPassDeleted: TBooleanField;
    VL_FPassDelUsr: TIntegerField;
    VL_FPassDelDT: TDateTimeField;
    VL_FPassInActive: TBooleanField;
    VL_FPassInActiveUsr: TIntegerField;
    VL_FPassInActiveDt: TDateTimeField;
    VL_FPassMaint_Log: TBooleanField;
    VL_FPassCheck_Serial: TBooleanField;
    VL_FPassSerial1: TIntegerField;
    VL_FPassSerial2: TIntegerField;
    VL_FPassSerial3: TIntegerField;
    dsVL_FPass: TDataSource;
    qryMainLFPassIns: TStringField;
    qryMainLFPassOut: TStringField;
    qryMainLFPassFull: TStringField;
    qryMainLDTime: TStringField;
    qryMainContactId: TIntegerField;
    qryMainDTime: TDateTimeField;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1Name: TcxGridDBColumn;
    cxGrid1DBTableView1Company: TcxGridDBColumn;
    cxGrid1DBTableView1IdentityNo: TcxGridDBColumn;
    cxGrid1DBTableView1Reason: TcxGridDBColumn;
    cxGrid1DBTableView1ContactWith: TcxGridDBColumn;
    cxGrid1DBTableView1WithCar: TcxGridDBColumn;
    cxGrid1DBTableView1CarNumber: TcxGridDBColumn;
    cxGrid1DBTableView1CardNumber: TcxGridDBColumn;
    cxGrid1DBTableView1DateTimeIn: TcxGridDBColumn;
    cxGrid1DBTableView1DateTimeOut: TcxGridDBColumn;
    cxGrid1DBTableView1InsUsr: TcxGridDBColumn;
    cxGrid1DBTableView1InsDT: TcxGridDBColumn;
    cxGrid1DBTableView1InUsr: TcxGridDBColumn;
    cxGrid1DBTableView1OutUsr: TcxGridDBColumn;
    cxGrid1DBTableView1FullFilled: TcxGridDBColumn;
    cxGrid1DBTableView1FullFilledDT: TcxGridDBColumn;
    cxGrid1DBTableView1FullFilledUsr: TcxGridDBColumn;
    cxGrid1DBTableView1Comments: TcxGridDBColumn;
    cxGrid1DBTableView1LDTime: TcxGridDBColumn;
    cxGrid1DBTableView1LFPassIns: TcxGridDBColumn;
    cxGrid1DBTableView1LFPassOut: TcxGridDBColumn;
    cxGrid1DBTableView1LFPassFull: TcxGridDBColumn;
    cxGrid1DBTableView1ContactId: TcxGridDBColumn;
    cxGrid1DBTableView1DTime: TcxGridDBColumn;
    cxGrid1DBTableView2id: TcxGridDBColumn;
    cxGrid1DBTableView2Name: TcxGridDBColumn;
    cxGrid1DBTableView2Company: TcxGridDBColumn;
    cxGrid1DBTableView2IdentityNo: TcxGridDBColumn;
    cxGrid1DBTableView2Reason: TcxGridDBColumn;
    cxGrid1DBTableView2ContactWith: TcxGridDBColumn;
    cxGrid1DBTableView2WithCar: TcxGridDBColumn;
    cxGrid1DBTableView2CarNumber: TcxGridDBColumn;
    cxGrid1DBTableView2CardNumber: TcxGridDBColumn;
    cxGrid1DBTableView2DateTimeIn: TcxGridDBColumn;
    cxGrid1DBTableView2DateTimeOut: TcxGridDBColumn;
    cxGrid1DBTableView2InsUsr: TcxGridDBColumn;
    cxGrid1DBTableView2InsDT: TcxGridDBColumn;
    cxGrid1DBTableView2InUsr: TcxGridDBColumn;
    cxGrid1DBTableView2OutUsr: TcxGridDBColumn;
    cxGrid1DBTableView2FullFilled: TcxGridDBColumn;
    cxGrid1DBTableView2FullFilledDT: TcxGridDBColumn;
    cxGrid1DBTableView2FullFilledUsr: TcxGridDBColumn;
    cxGrid1DBTableView2Comments: TcxGridDBColumn;
    cxGrid1DBTableView2LDTime: TcxGridDBColumn;
    cxGrid1DBTableView2LFPassIns: TcxGridDBColumn;
    cxGrid1DBTableView2LFPassOut: TcxGridDBColumn;
    cxGrid1DBTableView2LFPassFull: TcxGridDBColumn;
    cxGrid1DBTableView2ContactId: TcxGridDBColumn;
    cxGrid1DBTableView2DTime: TcxGridDBColumn;
    qryMain1: TADOQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    BooleanField1: TBooleanField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    IntegerField2: TIntegerField;
    DateTimeField3: TDateTimeField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    BooleanField2: TBooleanField;
    DateTimeField4: TDateTimeField;
    IntegerField5: TIntegerField;
    WideStringField8: TWideStringField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField6: TIntegerField;
    DateTimeField5: TDateTimeField;
    dtsMain1: TDataSource;
    cxGrid1DBTableView3id: TcxGridDBColumn;
    cxGrid1DBTableView3Name: TcxGridDBColumn;
    cxGrid1DBTableView3Company: TcxGridDBColumn;
    cxGrid1DBTableView3IdentityNo: TcxGridDBColumn;
    cxGrid1DBTableView3Reason: TcxGridDBColumn;
    cxGrid1DBTableView3ContactWith: TcxGridDBColumn;
    cxGrid1DBTableView3WithCar: TcxGridDBColumn;
    cxGrid1DBTableView3CarNumber: TcxGridDBColumn;
    cxGrid1DBTableView3CardNumber: TcxGridDBColumn;
    cxGrid1DBTableView3DateTimeIn: TcxGridDBColumn;
    cxGrid1DBTableView3DateTimeOut: TcxGridDBColumn;
    cxGrid1DBTableView3InsUsr: TcxGridDBColumn;
    cxGrid1DBTableView3InsDT: TcxGridDBColumn;
    cxGrid1DBTableView3InUsr: TcxGridDBColumn;
    cxGrid1DBTableView3OutUsr: TcxGridDBColumn;
    cxGrid1DBTableView3FullFilled: TcxGridDBColumn;
    cxGrid1DBTableView3FullFilledDT: TcxGridDBColumn;
    cxGrid1DBTableView3FullFilledUsr: TcxGridDBColumn;
    cxGrid1DBTableView3Comments: TcxGridDBColumn;
    cxGrid1DBTableView3LDTime: TcxGridDBColumn;
    cxGrid1DBTableView3LFPassIns: TcxGridDBColumn;
    cxGrid1DBTableView3LFPassOut: TcxGridDBColumn;
    cxGrid1DBTableView3LFPassFull: TcxGridDBColumn;
    cxGrid1DBTableView3ContactId: TcxGridDBColumn;
    cxGrid1DBTableView3DTime: TcxGridDBColumn;
    qryMainAir_Lift: TBooleanField;
    qryMainMinDiff: TIntegerField;
    cxGrid1DBTableView1MinDiff: TcxGridDBColumn;
    cxGrid1DBTableView2MinDiff: TcxGridDBColumn;
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
      var AHandled: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qryFieldNamesBeforePost(DataSet: TDataSet);
    procedure qryMainCalcFields(DataSet: TDataSet);
    procedure cxGrid1DBTableView2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView3CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    IniDate:TDateTime;
    SelDone:Boolean;
    procedure sactEditPersons(Insert: Boolean = True; Edit: Boolean = False; Id: Integer = 0);
  public
    procedure FormRemoteActivate(SqlText:String;ExcelFileName:String);
  end;

implementation

{$R *.dfm}

uses FMain;

procedure TfrmBRPersons.cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
var
  I, Id: Integer;
begin
  inherited;
  Caption := ACellViewInfo.Item.Caption;
  I       := ACellViewInfo.Item.Index;
//  I       := cxGrid1DBTableView1.FindItemByName('cxGrid1DBTableView1id').Index;
  I       := cxGrid1DBTableView1.FindItemByName('cxGrid1DBTableView1id').Index;
  Id      := ACellViewInfo.GridRecord.Values[I];
  sactEditPersons(False, False, Id);
end;

procedure TfrmBRPersons.cxGrid1DBTableView2CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  I, Id: Integer;
begin
  inherited;
  Caption := ACellViewInfo.Item.Caption;
  I       := ACellViewInfo.Item.Index;
  I       := cxGrid1DBTableView2.FindItemByName('cxGrid1DBTableView2id').Index;
  Id      := ACellViewInfo.GridRecord.Values[I];
  sactEditPersons(False, False, Id);

end;

procedure TfrmBRPersons.cxGrid1DBTableView3CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  I, Id: Integer;
begin
  inherited;
  Caption := ACellViewInfo.Item.Caption;
  I       := ACellViewInfo.Item.Index;
  I       := cxGrid1DBTableView3.FindItemByName('cxGrid1DBTableView3id').Index;
  Id      := ACellViewInfo.GridRecord.Values[I];
  sactEditPersons(False, False, Id);
end;

procedure TfrmBRPersons.FormActivate(Sender: TObject);
var frm:TfrmFilterEnDev;
    TmpSql:string;
begin
  inherited;
  if SelDone then
     exit;

  TmpSql:=qryMain.SQL.Text;
  qryMain.SQL.Add(' Where id = 0');
  qryMain.Active:=True;
  if cxgrid1Level3.visible then
     qryMaincompany.required := False;

  frm:=TfrmFilterEnDev.CreateWithParam(Self,cxGrid1DBTableView1,TDataModule(Self),True,'�������� ��������� ����������');
  frm.ShowModal;
  if frm.ModalResult = mrCancel then
    begin
      frm.Free;
      Self.Close;
      Exit;
    end;
//  frm.ShowModal;
  SelDone:=True;
  if frm.KSleo > '' then
    begin
      if cxgrid1Level3.visible then
      begin
        qryMain1.Active:=False;
        qryMain1.SQL.Add(' Where '+frm.Ksleo);
        qryMain1.Active:=True;
      end
      else
      begin
        qryMain.Active:=False;
        qryMain.SQL.Clear;
        qryMain.SQL.Add(TmpSql+' Where '+frm.Ksleo);
        qryMain.Active:=True;
      end;
    end
  else
    begin
    if MessageDlg('�� ����������� ���� �� ������������.', mtInformation, [mbYes, mbNo], 0) =mrYes then
      if cxgrid1Level3.visible then
      begin
        qryMain1.Active:=False;
        qryMain1.Active:=True;
      end
      else
       begin
         qryMain.Active:=False;
         qryMain.SQL.Clear;
         qryMain.SQL.Add(TmpSql);
         qryMain.Active:=True;
       end;
    end;
  frm.Free;

  cxGrid1DBTableView1.DataController.Groups.FullCollapse;
  cxGrid1DBTableView2.DataController.Groups.FullCollapse;
  cxGrid1DBTableView3.DataController.Groups.FullCollapse;
  cxGrid1DBTableView3.DataController.Groups.FullExpand;

end;

procedure TfrmBRPersons.FormCreate(Sender: TObject);
begin
  inherited;
  SelDone:=False;
  VL_FPass.Active:=True;

  if frmMain.EnhmGridTables then
    begin
      EnhmTableFields(qryMain,90021);
      EnhmcxGridFields(cxGrid1DBTableView1,90022);
      EnhmcxGridFields(cxGrid1DBTableView2,90023);
      EnhmcxGridFields(cxGrid1DBTableView3,90024);
    end;
 if frmMain.EnhmGridFromTables then
    begin
      EnhmFieldsFromTable(qryMain,90021);
      EnhmcxGridFromTable(cxGrid1DBTableView1,90022);
      EnhmcxGridFromTable(cxGrid1DBTableView2,90023);
      EnhmcxGridFromTable(cxGrid1DBTableView3,90024);
    end;

    cxGrid1DBTableView1.OptionsView.GroupByBox := False;
    cxGrid1DBTableView2.OptionsView.GroupByBox := False;
    cxGrid1DBTableView3.OptionsView.GroupByBox := False;

    cxGrid1DBTableView1.OptionsView.Indicator := False;
    cxGrid1DBTableView2.OptionsView.Indicator := False;
    cxGrid1DBTableView3.OptionsView.Indicator := False;

    cxGrid1DBTableView1.DataController.Groups.FullExpand;
    cxGrid1DBTableView2.DataController.Groups.FullExpand;
    cxGrid1DBTableView3.DataController.Groups.FullExpand;

end;

procedure TfrmBRPersons.qryFieldNamesBeforePost(DataSet: TDataSet);
begin
  inherited;
  TADOQuery(DataSet).FieldByName('ID').AsInteger := CreateKey('FieldNames');
end;

procedure TfrmBRPersons.qryMainCalcFields(DataSet: TDataSet);
var
  m, d, s: Integer;
  mf: Real;
begin
  inherited;
  if DataSet.FieldByName('DTime').IsNull then
  else
    begin
//      mf := DataSet.FieldByName('DTime').AsDateTime;
//      m  := Round(mf);
      m  := MinutesBetween(IniDate,DataSet.FieldByName('DTime').AsDateTime);
      s  := m;
      d  := m div 1440;
      m  := m mod 1440;
      if d > 0 then
        DataSet.FieldByName('LDTime').AsString := Format('%d ������ %d ���� %d �����', [d, m div 60, m mod 60])
      else
        if m > 60 then
           DataSet.FieldByName('LDTime').AsString := Format('%d ���� %d �����', [m div 60, m mod 60])
        else
           DataSet.FieldByName('LDTime').AsString := Format('%d �����', [m mod 60])
    end;
end;

procedure TfrmBRPersons.sactEditPersons(Insert: Boolean = True; Edit: Boolean = False; Id: Integer = 0);
var
  frm: TfrmPersonDet;
  FormId: Integer;
begin
  if DMMain.FindSecurity('TfrmPersonDet', LoginGroup, FormId) then
    begin
      frm := TfrmPersonDet.CreateSecurity(self, FormId);
      try
        if Insert then
          frm.AddRec
        else if Edit then
          frm.EditRec(Id)
        else
          frm.GotoRec(Id);
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmPersonDet');
      end;
    end
  else
    MessageDlg('��� ����� �������� ', mtError, [mbOK], 0)
end;

procedure TfrmBRPersons.FormRemoteActivate(SqlText:String;ExcelFileName:String);
var TmpSql:string;
begin
  inherited;

  TmpSql:=qryMain.SQL.Text;
  qryMain.SQL.Add(' Where id = 0');
  qryMain.Active:=True;
  if cxgrid1Level3.visible then
     qryMaincompany.required := False;

  if SqlText > '' then
    begin
      if cxgrid1Level3.visible then
      begin
        qryMain1.Active:=False;
        qryMain1.SQL.Add(' Where '+ SqlText);
        qryMain1.Active:=True;
      end
      else
      begin
        qryMain.Active:=False;
        qryMain.SQL.Clear;
        qryMain.SQL.Add(TmpSql+' Where '+ SqlText);
        qryMain.Active:=True;
      end;
    end
  else
    begin
      if cxgrid1Level3.visible then
      begin
        qryMain1.Active:=False;
        qryMain1.Active:=True;
      end
      else
       begin
         qryMain.Active:=False;
         qryMain.SQL.Clear;
         qryMain.SQL.Add(TmpSql);
         qryMain.Active:=True;
       end;
    end;
  cxGrid1DBTableView1.DataController.Groups.FullCollapse;
  cxGrid1DBTableView2.DataController.Groups.FullCollapse;
  cxGrid1DBTableView3.DataController.Groups.FullCollapse;
  cxGrid1DBTableView3.DataController.Groups.FullExpand;

 ExportGridToExcel(ExcelFileName,cxGrid1);

end;



end.
