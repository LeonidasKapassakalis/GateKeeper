unit DPersonDet;

interface

uses
  System.SysUtils, System.Classes, DBase, DMain, Data.DB, Data.Win.ADODB,
  Forms, Common, FBaseDev1;

type
  TDMPersonDet = class(TDMBase)
    qryPersonsVisit: TADOQuery;
    dtsPersonsVisit: TDataSource;
    qryPersonsVisitid: TIntegerField;
    qryPersonsVisitName: TWideStringField;
    qryPersonsVisitCompany: TWideStringField;
    qryPersonsVisitIdentityNo: TWideStringField;
    qryPersonsVisitReason: TWideStringField;
    qryPersonsVisitContactWith: TWideStringField;
    qryPersonsVisitWithCar: TBooleanField;
    qryPersonsVisitCarNumber: TWideStringField;
    qryPersonsVisitDateTimeIn: TDateTimeField;
    qryPersonsVisitDateTimeOut: TDateTimeField;
    qryPersonsVisitInsUsr: TIntegerField;
    qryPersonsVisitInsDT: TDateTimeField;
    qryPersonsVisitInUsr: TIntegerField;
    qryPersonsVisitOutUsr: TIntegerField;
    qryPersonsVisitFullFilled: TBooleanField;
    qryPersonsVisitFullFilledDT: TDateTimeField;
    VL_PVPersons: TADOQuery;
    VL_Reason: TADOQuery;
    VL_PVCompany: TADOQuery;
    VL_PVPersonsName: TWideStringField;
    VL_PVCarNumber: TADOQuery;
    VL_PVContact: TADOQuery;
    VL_PVCarNumberCarNumber: TWideStringField;
    VL_ReasonReason: TWideStringField;
    VL_PVCompanyCompany: TWideStringField;
    qryPersonsVisitCardNumber: TWideStringField;
    qryPersonsVisitFullFilledUsr: TIntegerField;
    qryPersonsVisitDTime: TDateTimeField;
    VL_PVContactName: TWideStringField;
    qryPersonsVisitContactId: TIntegerField;
    qryPersonsVisitComments: TWideStringField;
    qryPersons: TADOQuery;
    qryPersonsId: TIntegerField;
    qryPersonsPerson: TWideStringField;
    qryPersonsCompany: TWideStringField;
    qryPersonsIdentityNo: TWideStringField;
    qryPersonsPhoPerson: TWideStringField;
    qryPersonsPhoCompany: TWideStringField;
    qryPersonsPhoIdentityNo: TWideStringField;
    dsPersons: TDataSource;
    qryPersonsVisitAir_Lift: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryPersonsVisitBeforePost(DataSet: TDataSet);
    procedure qryPersonsVisitAfterPost(DataSet: TDataSet);
    procedure dtsPersonsVisitStateChange(Sender: TObject);
    procedure GenAfterPost(DataSet: TDataSet);
    procedure GenBeforePost(DataSet: TDataSet);
  private


    { Private declarations }
  public
    procedure CheckUpdateParam;
    { Public declarations }
  end;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }

uses FMain;

{$R *.dfm}

procedure TDMPersonDet.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMCreate(TForm(self),'qryPersonsVisit');
end;

procedure TDMPersonDet.dtsPersonsVisitStateChange(Sender: TObject);
begin
  inherited;
  if self.Owner is TfrmBaseDev1 then
    if TDataSource(Sender).State in [dsInsert, dsEdit] then
      begin
        TfrmBaseDev1(self.Owner).SetState('UPD')
      end
    else
      begin
        TfrmBaseDev1(self.Owner).SetState('Browse');
      end;

end;

procedure TDMPersonDet.qryPersonsVisitAfterPost(DataSet: TDataSet);
begin
  inherited;
  DMMain.TblChanges.UpdateBatch();
end;

procedure TDMPersonDet.qryPersonsVisitBeforePost(DataSet: TDataSet);
begin
  inherited;
  BeforePost0(DataSet, 'PersonsVisit');
end;

procedure TDMPersonDet.GenAfterPost(DataSet: TDataSet);
begin
  inherited;
  DMMain.TblChanges.UpdateBatch();
end;


procedure TDMPersonDet.GenBeforePost(DataSet: TDataSet);
var nStr:string;
begin
//  BeforePost(DataSet);
  DataSet.FieldByName('PhoPerson').Value:=frmMain.String2Pho(DataSet.FieldByName('Person').Value);

  if DataSet is TADOQuery then
  begin
    nStr:=StringReplace(DataSet.Name,'qry','',[]);
    BeforePost0(DataSet, nStr);
  end
  else
  begin
  BeforePost0(DataSet);
  end;
//  BeforePost0(DataSet, 'CarsVisitOther');
end;

procedure TDMPersonDet.CheckUpdateParam;
var PName,PCompany,PIdentity:string;
begin
  PName     :=frmMain.String2Pho(qryPersonsVisitName.Text);
  PCompany  :=frmMain.String2Pho(qryPersonsVisitCompany.Text);
  PIdentity :=frmMain.String2Pho(qryPersonsVisitIdentityNo.Text);
  qryPersons.Insert;
  qryPersons.Edit;
  qryPersonsPerson.AsString       := qryPersonsVisitName.Text;
  qryPersonsPhoPerson.AsString    := PName;
  qryPersonsCompany.AsString      := qryPersonsVisitCompany.Text;
  qryPersonsPhoCompany.AsString   := PCompany;
  qryPersonsIdentityNo.AsString   := qryPersonsVisitIdentityNo.Text;
  qryPersonsPhoIdentityNo.AsString:= PIdentity;
  qryPersons.Post;
end;

//var PName:string;
//begin
//  inherited;
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



end.
