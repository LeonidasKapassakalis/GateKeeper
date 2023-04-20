unit FEnhmDayPrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FBEnForm, DB, ADODB, DBCtrls, Menus, ActnList, Grids, DBGrids, System.Win.ComObj,
  ExtCtrls, FmtBcd, ComCtrls, StdCtrls, Mask, Globals, ImgList, ToolWin, DateUtils,
  DBase, Datasnap.DBClient;

type
  TfrmEnhmDayPrice = class(TfrmBEnForm)
    dblcDate: TDBLookupComboBox;
    DateIds: TADOQuery;
    dsDateIds: TDataSource;
    dbeDate: TDBEdit;
    DateIdsId: TIntegerField;
    DateIdsDateVal: TDateTimeField;
    ADOQuery1: TADOQuery;
    ADOQuery1DateId: TIntegerField;
    ADOQuery1ProductId: TIntegerField;
    ADOQuery1Price: TBCDField;
    ADOQuery1InsUsr: TIntegerField;
    ADOQuery1InsDT: TDateTimeField;
    ADOQuery1UpdUsr: TIntegerField;
    ADOQuery1UpdDT: TDateTimeField;
    ADOQuery1DelUsr: TIntegerField;
    ADOQuery1DelDT: TDateTimeField;
    ADOQuery1Deleted: TBooleanField;
    DataSource1: TDataSource;
    QProduct: TADOQuery;
    ADOQuery1LProduct: TStringField;
    ADOQuery1LDateId: TStringField;
    ImageList1: TImageList;
    N1: TMenuItem;
    actNewDate1: TMenuItem;
    actDateIdAfter1: TMenuItem;
    actDateIdPost2: TMenuItem;
    actDateIdCancel2: TMenuItem;
    N3: TMenuItem;
    actPricePost2: TMenuItem;
    actPriceCancel2: TMenuItem;
    actUpdatePrice1: TMenuItem;
    QProductPrice: TADOQuery;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton13: TToolButton;
    ToolButton12: TToolButton;
    DateIdsDateValF: TBCDField;
    dtp: TDateTimePicker;
    ADOQuery1Updated: TBooleanField;
    QProductPriceDateId: TIntegerField;
    QProductPriceProductId: TIntegerField;
    QProductPricePrice: TBCDField;
    QProductPriceInsUsr: TIntegerField;
    QProductPriceInsDT: TDateTimeField;
    QProductPriceUpdUsr: TIntegerField;
    QProductPriceUpdDT: TDateTimeField;
    QProductPriceUpdated: TBooleanField;
    QProductPriceDelUsr: TIntegerField;
    QProductPriceDelDT: TDateTimeField;
    QProductPriceDeleted: TBooleanField;
    dsQProduct: TDataSource;
    QProductPriceLProduct: TStringField;
    QProductPriceLDate: TStringField;
    QProductId: TIntegerField;
    QProductProduct: TWideStringField;
    QProductSName: TWideStringField;
    QProductMMId: TIntegerField;
    QProductSAPid: TWideStringField;
    QProductScale: TSmallintField;
    QProductInsUsr: TIntegerField;
    QProductInsDT: TDateTimeField;
    QProductUpdUsr: TIntegerField;
    QProductUpdDT: TDateTimeField;
    QProductDelUsr: TIntegerField;
    QProductDelDT: TDateTimeField;
    QProductDeleted: TBooleanField;
    QProductOldID: TIntegerField;
    QProductOldNB: TIntegerField;
    QProductSortOrder1: TWideStringField;
    QProductSortOrder2: TWideStringField;
    OpenDialog1: TOpenDialog;
    Cds1: TClientDataSet;
    Action11: TMenuItem;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    Cds1CdsF0: TIntegerField;
    Cds1cdsF1: TStringField;
    Cds1cdsF2: TStringField;
    Cds1cdsF3: TBCDField;
    Cds1cdsF4: TBCDField;
    Cds1cdsF5: TBCDField;
    Cds1cdsF6: TBCDField;
    Cds1cdsFRId: TIntegerField;
    Cds1cdsFRF: TBooleanField;
    MovefromExcel1: TMenuItem;
    QProductPriceLSapId: TStringField;
    QProductPriceLPriceName: TStringField;
    QProductExcelFieldName: TWideStringField;
    FontPlus: TMenuItem;
    FontMinus: TMenuItem;
    FontDialog1: TFontDialog;
    actFont: TMenuItem;
    QProductPriceSortOrder1: TWideStringField;
    QProductPriceSortOrder2: TWideStringField;
    QProductPriceSName: TWideStringField;
    QProductA: TADOQuery;
    dsQProductA: TDataSource;
    QProductAId: TIntegerField;
    QProductAProduct: TWideStringField;
    QProductASName: TWideStringField;
    QProductAMMId: TIntegerField;
    QProductASAPid: TWideStringField;
    QProductAScale: TSmallintField;
    QProductAInsUsr: TIntegerField;
    QProductAInsDT: TDateTimeField;
    QProductAUpdUsr: TIntegerField;
    QProductAUpdDT: TDateTimeField;
    QProductADelUsr: TIntegerField;
    QProductADelDT: TDateTimeField;
    QProductADeleted: TBooleanField;
    QProductAOldID: TIntegerField;
    QProductAOldNB: TIntegerField;
    QProductASortOrder1: TWideStringField;
    QProductASortOrder2: TWideStringField;
    QProductAExcelFieldName: TWideStringField;
    Cds1cdsF7: TBCDField;
    Cds1cdsF8: TBCDField;
    QProductASubtractTEAPEP: TBooleanField;
    QProductPriceLSubTEAPEP: TBooleanField;
    QProductSubtractTEAPEP: TBooleanField;
    procedure actNewDateExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DateIdsBeforePost(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure actDateIdPostExecute(Sender: TObject);
    procedure actDateIdCancelExecute(Sender: TObject);
    procedure actPricePostExecute(Sender: TObject);
    procedure actPriceCancelExecute(Sender: TObject);
    procedure dblcDateCloseUp(Sender: TObject);
    procedure actDateIdAfterExecute(Sender: TObject);
    procedure actPriceAfterExecute(Sender: TObject);
    procedure dsDateIdsStateChange(Sender: TObject);
    procedure SetState(const LeoCategory: String);
    procedure RefreshExecute(Sender: TObject);
    procedure actBeforeExecute(Sender: TObject);
    procedure actUpdatePriceExecute(Sender: TObject);
    procedure dblcDateEnter(Sender: TObject);
    procedure QProductPriceBeforePost(DataSet: TDataSet);
    procedure actLoadExcelExecute(Sender: TObject);
    procedure actMovefromExcelExecute(Sender: TObject);
    procedure FontPlusClick(Sender: TObject);
    procedure FontMinusClick(Sender: TObject);
    procedure actFontClick(Sender: TObject);
    procedure QProductPriceAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEnhmDayPrice: TfrmEnhmDayPrice;
  gx:Integer;

implementation

uses DMain;

{$R *.dfm}

procedure TfrmEnhmDayPrice.actNewDateExecute(Sender: TObject);
var LeoDT:TDateTime;
begin
  inherited;
//New Date inserted
  DateIds.Insert;
  LeoDT:=now();
//  LeoDT:=incDay(LeoDT);
  dtp.Date:=LeoDT;
  dtp.Time:=EncodeTime(6,0,0,0);
  DateIdsDateVal.AsDateTime:=dtp.DateTime;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfrmEnhmDayPrice.FontMinusClick(Sender: TObject);
begin
  inherited;
	if (popFilter.PopupComponent is TDBGrid ) then
      TDBGrid(popFilter.PopupComponent).Font.Size := TDBGrid(popFilter.PopupComponent).Font.Size - 2;

end;

procedure TfrmEnhmDayPrice.FontPlusClick(Sender: TObject);
begin
  inherited;
	if (popFilter.PopupComponent is TDBGrid ) then
      TDBGrid(popFilter.PopupComponent).Font.Size := TDBGrid(popFilter.PopupComponent).Font.Size + 2;

end;

procedure TfrmEnhmDayPrice.FormCreate(Sender: TObject);
begin
  inherited;
  DateIds.Active        := True;
  dblcDate.Visible:=True;
  dbeDate.Visible := False;
  QProduct.Active := True;
  QProductA.Active := True;
end;

procedure TfrmEnhmDayPrice.Edit1DblClick(Sender: TObject);
var TempDate:TDateTime;
begin
  inherited;
if TDBEdit(Sender).DataSource.Dataset.state in [dsInsert,dsEdit] then
  begin
    TempDate:=TDBEdit(Sender).Field.AsDateTime;
    if FormDate(self,TempDate,csDateTime) = mrOK then
      begin
       TDBEdit(Sender).Field.AsDateTime:=TempDate;
      end;
  end;

end;

procedure TfrmEnhmDayPrice.Button1Click(Sender: TObject);
begin
  inherited;
  DateIds.Insert;
end;

procedure TfrmEnhmDayPrice.Button2Click(Sender: TObject);
begin
  inherited;
  DateIds.Post;
  DateIds.Requery();

  QProduct.Active:=True;
  ADOQuery1.Active:=True;
  repeat
     AdoQuery1.Insert;
     ADOQuery1DateId.AsInteger           := gx;
     ADOQuery1ProductId.AsInteger        := QProductId.AsInteger;
     ADOQuery1InsDT.AsDateTime           := now();
     ADOQuery1InsUsr.AsInteger           := DMain.LoginId;
     AdoQuery1.Post;
   QProduct.Next;
  until QProduct.Eof;


end;

procedure TfrmEnhmDayPrice.DateIdsBeforePost(DataSet: TDataSet);
begin
  inherited;
//   GenBeforePostWithName(Dataset,'DateId');
	if Dataset.State = dsInsert then
     begin
      gx := CreateKey ( 'DateIds') ;
   		tAdoTable(Dataset).FieldByName('ID').AsInteger := gx;
     end;
     DateIdsDateValF.AsBCD:=DateIdsDateVal.AsBCD;
end;

procedure TfrmEnhmDayPrice.Button3Click(Sender: TObject);
begin
  inherited;
  ADOQuery1.UpdateBatch();
end;

procedure TfrmEnhmDayPrice.Button4Click(Sender: TObject);
begin
  inherited;
  ADOQuery1.Active:=False;
  ADOQuery1.Parameters.ParamByName('PDateId').Value:=dblcDate.KeyValue;
  ADOQuery1.Active:=True;
end;

procedure TfrmEnhmDayPrice.actDateIdPostExecute(Sender: TObject);
begin
  inherited;
  try
   DateIds.Post;
  except
    MessageDlg('Υπάρχει καταχώρηση για αυτήν την ημερομηνία.', mtError, [mbOK], 0);
    exit;
  end;
  DateIds.Requery();

  QProduct.Active:=True;
  ADOQuery1.Active:=True;
  QProduct.First;
  repeat
     if QProductDeleted.AsBoolean = False then
     begin
     AdoQuery1.Insert;
     ADOQuery1DateId.AsInteger           := gx;
     ADOQuery1ProductId.AsInteger        := QProductId.AsInteger;
     ADOQuery1InsDT.AsDateTime           := now();
     ADOQuery1InsUsr.AsInteger           := DMain.LoginId;
     ADOQuery1Deleted.AsBoolean          := False;
     ADOQuery1Updated.AsBoolean          := False;
     try
       AdoQuery1.Post;
     except
       MessageDlg('Error Updating '+QProductId.AsString, mtWarning, [mbOK], 0);
     end;
     end;
   QProduct.Next;
  until QProduct.Eof;

  dblcDate.KeyValue:=gx;
  dblcDate.OnCloseUp(Self);
end;

procedure TfrmEnhmDayPrice.actFontClick(Sender: TObject);
begin
  inherited;
	if (popFilter.PopupComponent is TDBGrid ) then
    begin
    FontDialog1.Font:=TDBGrid(popFilter.PopupComponent).Font;
    if FontDialog1.Execute() then
       TDBGrid(popFilter.PopupComponent).Font:=FontDialog1.Font;
    end;
end;

procedure TfrmEnhmDayPrice.actDateIdCancelExecute(Sender: TObject);
begin
  inherited;
  DateIds.Cancel;
  DateIds.Requery();
end;

procedure TfrmEnhmDayPrice.actPricePostExecute(Sender: TObject);
begin
  inherited;
  QProductPrice.Filter    :='';
  QProductPrice.Filtered  :=False;

  QProductPrice.First;
  repeat
  if QProductPriceUpdDT.AsString >= '' then
    begin
      QProductPrice.Edit;
      QProductPriceUpdDT.AsDateTime := now();
      QProductPriceUpdUsr.AsInteger := LoginId;
      QProductPriceUpdated.AsBoolean:= True;
      QProductPrice.Post;
    end;
  QProductPrice.Next;
  until QProductPrice.Eof;

  QProductPrice.UpdateBatch();
  DataSource1.AutoEdit:=False;

  FormGrid.Options:=FormGrid.Options-[dgEditing];
  FormGrid.Options:=FormGrid.Options+[dgRowSelect];
  SetState('Before');

end;

procedure TfrmEnhmDayPrice.actPriceCancelExecute(Sender: TObject);
begin
  inherited;
  QProductPrice.CancelBatch();
  DataSource1.AutoEdit:=False;

  FormGrid.Options:=FormGrid.Options-[dgEditing];
  FormGrid.Options:=FormGrid.Options+[dgRowSelect];
  SetState('Before');
end;

procedure TfrmEnhmDayPrice.dblcDateCloseUp(Sender: TObject);
begin
  inherited;
if Not(dblcDate.KeyValue = Null) then
  begin
    QProductPrice.Active:=False;
    QProductPrice.Parameters.ParamByName('PDateId').Value:=dblcDate.KeyValue;
    QProductPrice.Active:=True;
  end;

  if QProductPrice.IsEmpty then
  begin
    MessageDlg('Δεν υπάρχουν καταχωρήσεις για την ημερομηνία.', mtError, [mbOK], 0);
    QProductPrice.Active:=False;
    exit;
  end;

  DataSource1.AutoEdit:=False;
  FormGrid.Options:=FormGrid.Options+[dgRowSelect];
  FormGrid.Options:=FormGrid.Options-[dgEditing];
end;

procedure TfrmEnhmDayPrice.actDateIdAfterExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmEnhmDayPrice.actPriceAfterExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmEnhmDayPrice.dsDateIdsStateChange(Sender: TObject);
begin
  inherited;
 if TDataSource(Sender).State in [dsInsert,dsEdit] then
   begin
     dbeDate.Visible:=True;
     dblcDate.Visible:=False;
     SetState('DateIdA')
   end
 else
  begin
     dbeDate.Visible:=False;
     dblcDate.Visible:=True;
     SetState('Before');
     SetStatusText('',0);
  end;

{if Self.Owner is TfrmSubParams then
 if TDataSource(Sender).State in [dsInsert,dsEdit] then
   begin
   TfrmSubParams(self.Owner).Grid.Options:=TfrmSubParams(self.Owner).Grid.Options-[dgRowSelect];
   TfrmSubParams(self.Owner).Grid.Options:=TfrmSubParams(self.Owner).Grid.Options+[dgEditing];
   end
 else
   begin
   TfrmSubParams(self.Owner).Grid.Options:=TfrmSubParams(self.Owner).Grid.Options-[dgEditing];
   TfrmSubParams(self.Owner).Grid.Options:=TfrmSubParams(self.Owner).Grid.Options+[dgRowSelect];
   end;  }

end;

procedure TfrmEnhmDayPrice.SetState(const LeoCategory:String);
var i:Integer;
    LeoS:String;
begin
for i:= 0 to ActionList1.ActionCount -1  do
begin
 if ActionList1.Actions[i].Category=LeoCategory then
  begin
    TCustomAction(ActionList1.Actions[i]).Visible:=True;
    TCustomAction(ActionList1.Actions[i]).Enabled:=True;
  end
 else
  begin
    TCustomAction(ActionList1.Actions[i]).Visible:=False;
    TCustomAction(ActionList1.Actions[i]).Enabled:=False;
  end;
 if ((LoginGroup <> 0) And (ActionList1.Actions[i].Tag = 9999)) then
     TCustomAction(ActionList1.Actions[i]).Visible:=False;
end;
end;


procedure TfrmEnhmDayPrice.RefreshExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmEnhmDayPrice.actBeforeExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmEnhmDayPrice.actUpdatePriceExecute(Sender: TObject);
begin
  inherited;
if Not(LoginGroup = 0) then
  begin
    if QProductPrice.Filter > '' then
       QProductPrice.Filter    :='Updated=False'
    else
       QProductPrice.Filter    :=QProductPrice.Filter+' AND Updated=False';

    QProductPrice.Filtered  :=True;
    QProductPrice.Requery();
  end;

  DataSource1.AutoEdit:=True;
//QProductPrice.Edit;
  SetState('PriceA');
  FormGrid.Options:=FormGrid.Options-[dgRowSelect];
  FormGrid.Options:=FormGrid.Options+[dgEditing];
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfrmEnhmDayPrice.dblcDateEnter(Sender: TObject);
begin
  inherited;
  QProductPrice.Active:=False;
end;

procedure TfrmEnhmDayPrice.QProductPriceAfterPost(DataSet: TDataSet);
begin
  inherited;
  DMMain.TblChanges.UpdateBatch();

end;

procedure TfrmEnhmDayPrice.QProductPriceBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State in [dsEdit] then
    begin
      QProductPriceUpdDT.AsDateTime := now();
      QProductPriceUpdUsr.AsInteger := LoginId;
    end;

//   BeforePost0(Dataset,'ProductPrice');

end;

procedure TfrmEnhmDayPrice.actLoadExcelExecute(Sender: TObject);
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
            Cds1CdsF0.AsInteger := y;
//            Cds1cdsF1.AsString  := Trim(Sheet.Cells[y,1]);
            Cds1cdsF1.AsString  := Trim(Sheet.Cells[y,2]);
            Cds1cdsF2.AsString  := Trim(Sheet.Cells[y,3]);
//Old Excel from SAP
//            Cds1cdsF4.AsCurrency  := (Sheet.Cells[y,10]);
//            Cds1cdsF5.AsCurrency  := (Sheet.Cells[y,12]);
//            Cds1cdsF6.AsCurrency  := (Sheet.Cells[y,14]);

//New Excel from SAP 1/1/2019 Avin
            Cds1cdsF4.AsCurrency  := (Sheet.Cells[y,12]);
            Cds1cdsF5.AsCurrency  := (Sheet.Cells[y,14]);
            Cds1cdsF6.AsCurrency  := (Sheet.Cells[y,16]);
//New Excel from SAP 1/1/2019 Avin

            Cds1cdsF8.AsCurrency  := (Sheet.Cells[y,9]);
//            Cds1cdsF7.AsString  := Trim(Sheet.Cells[y,5]);
//            Cds1cdsf7.AsCurrency := Round(Cds1cdsf7.AsCurrency / 1000);
            if cds1cdsF1.AsString > '' then
               Cds1.Post
            else
               Cds1.Cancel;
        end;

  XLApp.Workbooks.Close;

  Cds1.EnableControls;
  Cds1.First;

  PageControl1.ActivePage := TabSheet2;

end;


procedure TfrmEnhmDayPrice.actMovefromExcelExecute(Sender: TObject);
var S1,S2:Variant;
    TeaPep:Boolean;
begin
  inherited;
  if QProductPrice.IsEmpty then
  begin
    MessageDlg('Δεν υπάρχουν εγγραφές για ενημέρωση.', mtError, [mbOK], 0);
    exit;
  end;

  QProductPrice.First;
  repeat
    S1:=Trim(QProductPriceLSapId.AsString);
    S2:=Trim(QProductPriceLPriceName.AsString);
    TeaPep:=QProductPriceLSubTEAPEP.AsBoolean;
    if ((S1 > '') and (S2 > '')) then
    if cds1.Locate('CdsF1',S1,[]) then
    begin
      QProductPrice.Edit;
      if QProductPriceLSubTEAPEP.AsBoolean = False then
      QProductPricePrice.Value := cds1.FieldByName(S2).Value
      else
      MessageDlg('Error ΤΕΑΠΕΠ is not defined/', mtCustom, [mbOK], 0);
      //QProductPricePrice.Value := cds1.FieldByName(S2).Value-cds1.FieldByName('cdsF8').Value;
      QProductPricePrice.Value := cds1.FieldByName(S2).Value;
      QProductPrice.Post;
    end;

    QProductPrice.Next
  until QProductPrice.Eof;

//
end;

end.
