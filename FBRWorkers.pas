unit FBRWorkers;

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
  DMain, FWorkersDet, FFilterEnDev;

type
  TfrmBRWorkers = class(TfrmBaseRep)
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
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView3: TcxGridDBTableView;
    qryMainid: TIntegerField;
    qryMainName: TWideStringField;
    qryMainSurname: TWideStringField;
    qryMainADT: TWideStringField;
    qryMainContact: TWideStringField;
    qryMainReason: TWideStringField;
    qryMainCompany: TWideStringField;
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
    qryMainDTime: TDateTimeField;
    qryMainComments: TWideStringField;
    qryMainContractors_Workers_Id: TIntegerField;
    qryMainReason_Id: TIntegerField;
    qryMainContact_Id: TIntegerField;
    qryMainContractors_Id: TIntegerField;
    qryMainContractors: TWideStringField;
    qryMainVAT: TWideStringField;
    qryMainLDTime: TStringField;
    qryMainLFPassIns: TStringField;
    qryMainLFPassOut: TStringField;
    qryMainLFPassFull: TStringField;
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
    cxGrid1Level3: TcxGridLevel;
    cxGrid1DBTableView2id: TcxGridDBColumn;
    cxGrid1DBTableView2Name: TcxGridDBColumn;
    cxGrid1DBTableView2Surname: TcxGridDBColumn;
    cxGrid1DBTableView2ADT: TcxGridDBColumn;
    cxGrid1DBTableView2Contact: TcxGridDBColumn;
    cxGrid1DBTableView2Reason: TcxGridDBColumn;
    cxGrid1DBTableView2Company: TcxGridDBColumn;
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
    cxGrid1DBTableView2DTime: TcxGridDBColumn;
    cxGrid1DBTableView2Comments: TcxGridDBColumn;
    cxGrid1DBTableView2Contractors_Workers_Id: TcxGridDBColumn;
    cxGrid1DBTableView2Reason_Id: TcxGridDBColumn;
    cxGrid1DBTableView2Contact_Id: TcxGridDBColumn;
    cxGrid1DBTableView2Contractors_Id: TcxGridDBColumn;
    cxGrid1DBTableView2Contractors: TcxGridDBColumn;
    cxGrid1DBTableView2VAT: TcxGridDBColumn;
    cxGrid1DBTableView2LDTime: TcxGridDBColumn;
    cxGrid1DBTableView2LFPassIns: TcxGridDBColumn;
    cxGrid1DBTableView2LFPassOut: TcxGridDBColumn;
    cxGrid1DBTableView2LFPassFull: TcxGridDBColumn;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1Name: TcxGridDBColumn;
    cxGrid1DBTableView1Surname: TcxGridDBColumn;
    cxGrid1DBTableView1ADT: TcxGridDBColumn;
    cxGrid1DBTableView1Contact: TcxGridDBColumn;
    cxGrid1DBTableView1Reason: TcxGridDBColumn;
    cxGrid1DBTableView1Company: TcxGridDBColumn;
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
    cxGrid1DBTableView1DTime: TcxGridDBColumn;
    cxGrid1DBTableView1Comments: TcxGridDBColumn;
    cxGrid1DBTableView1Contractors_Workers_Id: TcxGridDBColumn;
    cxGrid1DBTableView1Reason_Id: TcxGridDBColumn;
    cxGrid1DBTableView1Contact_Id: TcxGridDBColumn;
    cxGrid1DBTableView1Contractors_Id: TcxGridDBColumn;
    cxGrid1DBTableView1Contractors: TcxGridDBColumn;
    cxGrid1DBTableView1VAT: TcxGridDBColumn;
    cxGrid1DBTableView1LDTime: TcxGridDBColumn;
    cxGrid1DBTableView1LFPassIns: TcxGridDBColumn;
    cxGrid1DBTableView1LFPassOut: TcxGridDBColumn;
    cxGrid1DBTableView1LFPassFull: TcxGridDBColumn;
    cxGrid1DBTableView1LContact_Id: TcxGridDBColumn;
    cxGrid1DBTableView2LContact_Id: TcxGridDBColumn;
    qryContractors_Reason: TADOQuery;
    dsqryContractors_Reason: TDataSource;
    qryContractors: TADOQuery;
    dsqryContractors: TDataSource;
    qryContractors_Workers: TADOQuery;
    dsqryContractors_Workers: TDataSource;
    qryContractors_Contact: TADOQuery;
    dsqryContractors_Contact: TDataSource;
    qryContractorsId: TIntegerField;
    qryContractorsCompany: TWideStringField;
    qryContractors_ReasonId: TIntegerField;
    qryContractors_ReasonName: TWideStringField;
    qryContractors_ContactId: TIntegerField;
    qryContractors_ContactName: TWideStringField;
    qryMainLContact: TStringField;
    qryMainLContractor: TStringField;
    qryMainLReason: TStringField;
    cxGrid1DBTableView2LContact: TcxGridDBColumn;
    cxGrid1DBTableView2LContractor: TcxGridDBColumn;
    cxGrid1DBTableView2LReason: TcxGridDBColumn;
    cxGrid1DBTableView1LContact: TcxGridDBColumn;
    cxGrid1DBTableView1LContractor: TcxGridDBColumn;
    cxGrid1DBTableView1LReason: TcxGridDBColumn;
    qryContractors_WorkersId: TIntegerField;
    qryContractors_WorkersContractors_Id: TIntegerField;
    qryContractors_WorkersName: TWideStringField;
    qryContractors_WorkersSurname: TWideStringField;
    qryContractors_WorkersADT: TWideStringField;
    qryContractors_WorkersLCont: TStringField;
    qryContractors_WorkersLFullName: TStringField;
    qryMainLContractor_Worker: TStringField;
    cxGrid1DBTableView1LContractor_Worker: TcxGridDBColumn;
    cxGrid1DBTableView2LContractor_Worker: TcxGridDBColumn;
    qryMainMinDiff: TIntegerField;
    cxGrid1DBTableView1MinDiff: TcxGridDBColumn;
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
    procedure qryContractors_WorkersCalcFields(DataSet: TDataSet);
  private
    IniDate:TDateTime;
    SelDone:Boolean;
    procedure sactEditWorkers(Insert: Boolean = True; Edit: Boolean = False; Id: Integer = 0);
  public
    procedure FormRemoteActivate(SqlText:String;ExcelFileName:String);
  end;

implementation

{$R *.dfm}

uses FMain;

procedure TfrmBRWorkers.cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
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
  sactEditWorkers(False, False, Id);
end;

procedure TfrmBRWorkers.cxGrid1DBTableView2CellDblClick(
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
  sactEditWorkers(False, False, Id);

end;

procedure TfrmBRWorkers.cxGrid1DBTableView3CellDblClick(
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
  sactEditWorkers(False, False, Id);
end;

procedure TfrmBRWorkers.FormActivate(Sender: TObject);
var frm:TfrmFilterEnDev;
    TmpSql:string;
begin
  inherited;
  if SelDone then
     exit;

  TmpSql:=qryMain.SQL.Text;
  qryMain.SQL.Add(' Where id = 0');
  qryMain.Active:=True;
//  if cxgrid1Level3.visible then
//     qryMaincompany.required := False;

  frm:=TfrmFilterEnDev.CreateWithParam(Self,cxGrid1DBTableView1,TDataModule(Self),True,'Κριτήρια Εκτύπωσης Εργολάβων');
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
//        qryMain1.Active:=False;
//        qryMain1.SQL.Add(' Where '+frm.Ksleo);
//        qryMain1.Active:=True;
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
    if MessageDlg('Θα εμφανιστουν ΟΛΕΣ οι Καταχωρήσεις.', mtInformation, [mbYes, mbNo], 0) =mrYes then
      if cxgrid1Level3.visible then
      begin
//        qryMain1.Active:=False;
//        qryMain1.Active:=True;
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

procedure TfrmBRWorkers.FormCreate(Sender: TObject);
begin
  inherited;
  SelDone:=False;
  VL_FPass.Active:=True;

  if frmMain.EnhmGridTables then
    begin
      EnhmTableFields(qryMain,90041);
      EnhmcxGridFields(cxGrid1DBTableView1,90042);
      EnhmcxGridFields(cxGrid1DBTableView2,90043);
      EnhmcxGridFields(cxGrid1DBTableView3,90044);
    end;
 if frmMain.EnhmGridFromTables then
    begin
      EnhmFieldsFromTable(qryMain,90041);
      EnhmcxGridFromTable(cxGrid1DBTableView1,90042);
      EnhmcxGridFromTable(cxGrid1DBTableView2,90043);
//      EnhmcxGridFromTable(cxGrid1DBTableView3,90044);
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

procedure TfrmBRWorkers.qryContractors_WorkersCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryContractors_WorkersLFullName.Value := Dataset.FieldByName('Surname').AsString + ' ' +
                                           Dataset.FieldByName('Name').AsString + ' ' +
                                           Dataset.FieldByName('ADT').AsString + ' ' +
                                           Dataset.FieldByName('LCont').AsString;

end;

procedure TfrmBRWorkers.qryFieldNamesBeforePost(DataSet: TDataSet);
begin
  inherited;
  TADOQuery(DataSet).FieldByName('ID').AsInteger := CreateKey('FieldNames');
end;

procedure TfrmBRWorkers.qryMainCalcFields(DataSet: TDataSet);
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
        DataSet.FieldByName('LDTime').AsString := Format('%d Ημέρες %d Ώρες %d Λεπτά', [d, m div 60, m mod 60])
      else
        if m > 60 then
           DataSet.FieldByName('LDTime').AsString := Format('%d Ώρες %d Λεπτά', [m div 60, m mod 60])
        else
           DataSet.FieldByName('LDTime').AsString := Format('%d Λεπτά', [m mod 60])
    end;
end;

procedure TfrmBRWorkers.sactEditWorkers(Insert: Boolean = True; Edit: Boolean = False; Id: Integer = 0);
var
  frm: TfrmWorkersDet;
begin
  if DMMain.FindSecurity('TfrmOurCarsDet', LoginGroup, FormID) then
    begin
      frm := TfrmWorkersDet.CreateSecurity(self, FormID);
      try
        if Insert then
          frm.AddRec
        Else
          frm.EditRec(Id);
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmOurCarsDet');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

procedure TfrmBRWorkers.FormRemoteActivate(SqlText:String;ExcelFileName:String);
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
//        qryMain1.Active:=False;
//        qryMain1.SQL.Add(' Where '+ SqlText);
//        qryMain1.Active:=True;
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
//        qryMain1.Active:=False;
//        qryMain1.Active:=True;
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
