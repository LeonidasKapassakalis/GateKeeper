unit FMemDev;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FBaseDev, cxGraphics, cxControls, DMemDev,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, Vcl.ImgList, Vcl.Menus,
  Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, cxGridLevel, cxClasses, DBase,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ExtPage, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Gradpan,
  cxGridCustomLayoutView, cxGridCardView, cxGridDBCardView, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.DBLinks,
  VCLTee.Bind.DBLinks, Vcl.Mask, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxCommon,
  cxNavigator;

type
  TfrmMemDev = class(TfrmBaseDev)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    BindingsList1: TBindingsList;
    BindDBChartLinkpanClient021: TBindDBChartLink;
    cxdataLevel4: TcxGridLevel;
    cxdataLevel5: TcxGridLevel;
    cxdataDBTableView4: TcxGridDBTableView;
    cxdataDBTableView5: TcxGridDBTableView;
    cxdataDBTableView5Station_Id: TcxGridDBColumn;
    cxdataDBTableView5Termina_id: TcxGridDBColumn;
    cxdataDBTableView5id: TcxGridDBColumn;
    cxdataDBTableView5TERMINALCODE: TcxGridDBColumn;
    cxdataDBTableView5TERMINALSERIALNO: TcxGridDBColumn;
    cxdataLevel2: TcxGridLevel;
    cxdataDBTableView2: TcxGridDBTableView;
    cxdataDBTableView2id: TcxGridDBColumn;
    cxdataDBTableView2Name: TcxGridDBColumn;
    cxdataDBTableView2Surname: TcxGridDBColumn;
    cxdataDBTableView2email: TcxGridDBColumn;
    cxdataDBTableView2Phone: TcxGridDBColumn;
    cxdataDBTableView2Fax: TcxGridDBColumn;
    cxdataDBTableView2Mobile: TcxGridDBColumn;
    cxdataDBTableView2MailORFax: TcxGridDBColumn;
    cxdataDBTableView2Main: TcxGridDBColumn;
    cxdataDBTableView2AA: TcxGridDBColumn;
    cxdataDBTableView2merchand_id: TcxGridDBColumn;
    cxdataDBTableView2Contact_id: TcxGridDBColumn;
    cxdataDBTableView1Id: TcxGridDBColumn;
    cxdataDBTableView1Name: TcxGridDBColumn;
    cxdataDBTableView1STREET: TcxGridDBColumn;
    cxdataDBTableView1ZIP: TcxGridDBColumn;
    cxdataDBTableView1CITY: TcxGridDBColumn;
    cxdataDBTableView1AFM: TcxGridDBColumn;
    cxdataDBTableView1DOY: TcxGridDBColumn;
    cxdataDBTableView1PHONE1: TcxGridDBColumn;
    cxdataDBTableView1PHONE2: TcxGridDBColumn;
    cxdataDBTableView1MOBILE: TcxGridDBColumn;
    cxdataDBTableView1FAX: TcxGridDBColumn;
    cxdataDBTableView1InsUsr: TcxGridDBColumn;
    cxdataDBTableView1InsDT: TcxGridDBColumn;
    cxdataDBTableView1UpdUsr: TcxGridDBColumn;
    cxdataDBTableView1UpdDT: TcxGridDBColumn;
    cxdataDBTableView1Deleted: TcxGridDBColumn;
    cxdataDBTableView1DelUsr: TcxGridDBColumn;
    cxdataDBTableView1DelDT: TcxGridDBColumn;
    cxdataDBTableView1InActive: TcxGridDBColumn;
    cxdataDBTableView1InActiveUsr: TcxGridDBColumn;
    cxdataDBTableView1InActiveDt: TcxGridDBColumn;
    cxdataDBTableView1Area_Id: TcxGridDBColumn;
    cxdataDBTableView1SGroup_Id: TcxGridDBColumn;
    cxdataDBTableView1SClass_Id: TcxGridDBColumn;
    cxdataDBTableView1SAPCODE: TcxGridDBColumn;
    cxdataDBTableView1SalesMen_Id: TcxGridDBColumn;
    cxdataDBTableView1ISTEST: TcxGridDBColumn;
    cxdataDBTableView1StopSalesUsr: TcxGridDBColumn;
    cxdataDBTableView1StopSales: TcxGridDBColumn;
    cxdataDBTableView1StopSalesDt: TcxGridDBColumn;
    cxdataDBTableView4id: TcxGridDBColumn;
    cxdataDBTableView4Name: TcxGridDBColumn;
    cxdataDBTableView4STREET: TcxGridDBColumn;
    cxdataDBTableView4ZIP: TcxGridDBColumn;
    cxdataDBTableView4CITY: TcxGridDBColumn;
    cxdataDBTableView4AFM: TcxGridDBColumn;
    cxdataDBTableView4DOY: TcxGridDBColumn;
    cxdataDBTableView4PHONE1: TcxGridDBColumn;
    cxdataDBTableView4PHONE2: TcxGridDBColumn;
    cxdataDBTableView4MOBILE: TcxGridDBColumn;
    cxdataDBTableView4FAX: TcxGridDBColumn;
    cxdataDBTableView4Merchant_Id: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    N1231: TMenuItem;
    cxdataDBTableView4id1: TcxGridDBColumn;
    cxdataDBTableView4Name1: TcxGridDBColumn;
    cxdataDBTableView4STREET1: TcxGridDBColumn;
    cxdataDBTableView4ZIP1: TcxGridDBColumn;
    cxdataDBTableView4CITY1: TcxGridDBColumn;
    cxdataDBTableView4AFM1: TcxGridDBColumn;
    cxdataDBTableView4DOY1: TcxGridDBColumn;
    cxdataDBTableView4PHONE11: TcxGridDBColumn;
    cxdataDBTableView4PHONE21: TcxGridDBColumn;
    cxdataDBTableView4MOBILE1: TcxGridDBColumn;
    cxdataDBTableView4FAX1: TcxGridDBColumn;
    cxdataDBTableView4Merchant_Id1: TcxGridDBColumn;
    cxdataDBTableView3: TcxGridDBTableView;
    cxdataDBTableView3Id: TcxGridDBColumn;
    cxdataDBTableView3Name: TcxGridDBColumn;
    cxdataDBTableView3STREET: TcxGridDBColumn;
    cxdataDBTableView3ZIP: TcxGridDBColumn;
    cxdataDBTableView3CITY: TcxGridDBColumn;
    cxdataDBTableView3AFM: TcxGridDBColumn;
    cxdataDBTableView3DOY: TcxGridDBColumn;
    cxdataDBTableView3PHONE1: TcxGridDBColumn;
    cxdataDBTableView3PHONE2: TcxGridDBColumn;
    cxdataDBTableView3MOBILE: TcxGridDBColumn;
    cxdataDBTableView3FAX: TcxGridDBColumn;
    cxdataDBTableView3InsUsr: TcxGridDBColumn;
    cxdataDBTableView3InsDT: TcxGridDBColumn;
    cxdataDBTableView3UpdUsr: TcxGridDBColumn;
    cxdataDBTableView3UpdDT: TcxGridDBColumn;
    cxdataDBTableView3Deleted: TcxGridDBColumn;
    cxdataDBTableView3DelUsr: TcxGridDBColumn;
    cxdataDBTableView3DelDT: TcxGridDBColumn;
    cxdataDBTableView3InActive: TcxGridDBColumn;
    cxdataDBTableView3InActiveUsr: TcxGridDBColumn;
    cxdataDBTableView3InActiveDt: TcxGridDBColumn;
    cxdataDBTableView3Area_Id: TcxGridDBColumn;
    cxdataDBTableView3SGroup_Id: TcxGridDBColumn;
    cxdataDBTableView3SClass_Id: TcxGridDBColumn;
    cxdataDBTableView3SAPCODE: TcxGridDBColumn;
    cxdataDBTableView3SalesMen_Id: TcxGridDBColumn;
    cxdataDBTableView3ISTEST: TcxGridDBColumn;
    cxdataDBTableView3StopSalesUsr: TcxGridDBColumn;
    cxdataDBTableView3StopSales: TcxGridDBColumn;
    cxdataDBTableView3StopSalesDt: TcxGridDBColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    Preview1: TMenuItem;
    procedure popFilterPopup(Sender: TObject);
    procedure N1231Click(Sender: TObject);
    procedure cxdataActiveTabChanged(Sender: TcxCustomGrid;
      ALevel: TcxGridLevel);
    procedure FormCreate(Sender: TObject);
    procedure Preview1Click(Sender: TObject);
  protected
    function GetDM : TDMMemDev;
    function CreateDataModule : TDMBase; override;
  public
    property DM : TDMMemDev read GetDM;
  public
    { Public declarations }
  end;

var
  frmMemDev: TfrmMemDev;

implementation

{$R *.dfm}

function TfrmMemDev.CreateDataModule : TDMBase;
Begin
  Result := TDMMemDev.Create( Self );
end;

procedure TfrmMemDev.cxdataActiveTabChanged(Sender: TcxCustomGrid;
  ALevel: TcxGridLevel);
begin
  inherited;
{  MessageDlg(cxdata.ActiveLevel.Name, mtWarning, [mbOK], 0);
  MessageDlg(cxdata.ActiveView.Name, mtWarning, [mbOK], 0);
  MessageDlg(ALevel.Name, mtWarning, [mbOK], 0);}
end;



procedure TfrmMemDev.FormCreate(Sender: TObject);
var x:integer;
    fldName:String;
begin
  inherited;
  for x  := 0 to cxdataDBTableView1.ColumnCount -1 do
      begin
         fldName:=cxdataDBTableView1.Columns[x].DataBinding.FieldName;
         cxdataDBTableView1.Columns[x].Caption:=DM.QMerchant.FieldByName(fldName).DisplayName;
         cxdataDBTableView1.Columns[x].Visible:=DM.QMerchant.FieldByName(fldName).Visible;
      end;
  for x  := 0 to cxdataDBTableView2.ColumnCount -1 do
      begin
         fldName:=cxdataDBTableView2.Columns[x].DataBinding.FieldName;
         cxdataDBTableView2.Columns[x].Caption:=DM.QQMechantContactsFull.FieldByName(fldName).DisplayName;
         cxdataDBTableView2.Columns[x].Visible:=DM.QQMechantContactsFull.FieldByName(fldName).Visible;
      end;
  for x  := 0 to cxdataDBTableView4.ColumnCount -1 do
      begin
         fldName:=cxdataDBTableView4.Columns[x].DataBinding.FieldName;
         cxdataDBTableView4.Columns[x].Caption:=DM.QMechantStationFull.FieldByName(fldName).DisplayName;
         cxdataDBTableView4.Columns[x].Visible:=DM.QMechantStationFull.FieldByName(fldName).Visible;
      end;
  for x  := 0 to cxdataDBTableView5.ColumnCount -1 do
      begin
         fldName:=cxdataDBTableView5.Columns[x].DataBinding.FieldName;
         cxdataDBTableView5.Columns[x].Caption:=DM.QStationTerminalFull.FieldByName(fldName).DisplayName;
         cxdataDBTableView5.Columns[x].Visible:=DM.QStationTerminalFull.FieldByName(fldName).Visible;
      end;
end;

function TfrmMemDev.GetDM : TDMMemDev;
begin
	Result := TDMMemDev(FDM);
end;

procedure TfrmMemDev.N1231Click(Sender: TObject);
var x,xx,xy:integer;
begin
  inherited;
{    MessageDlg(cxdata.ActiveLevel.GridView.Name, mtWarning, [mbOK], 0);
  for x := 0 to cxdata.ActiveLevel.Count - 1 do
  begin
    xx:=cxdata.ActiveLevel.Items[x].Count;
    MessageDlg(inttostr(xx), mtWarning, [mbOK], 0);
    if cxdata.ActiveLevel.Items[x].Active then
      begin
        MessageDlg(cxdata.ActiveView.Name, mtWarning, [mbOK], 0);
        MessageDlg(cxdata.ActiveLevel.Name, mtWarning, [mbOK], 0);
      end;
    for xy := 0 to cxdata.ActiveLevel.Items[x].Count - 1 do
    if cxdata.ActiveLevel.Items[xy].Visible then
      begin
        MessageDlg(cxdata.ActiveLevel.Items[xy].Name, mtWarning, [mbOK], 0);
        MessageDlg(cxdata.ActiveLevel.Name, mtWarning, [mbOK], 0);
      end;
  end;}
end;

procedure TfrmMemDev.popFilterPopup(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmMemDev.Preview1Click(Sender: TObject);
begin
  inherited;
dxComponentPrinter1.Preview();
end;

end.
