unit DWorkersDet;

interface

uses
  System.SysUtils, System.Classes, DBase, DMain, Data.DB, Data.Win.ADODB,
  Forms, Common, FBaseDev1;

type
  TDMWorkersDet = class(TDMBase)
    qryWorkersVisit: TADOQuery;
    dtsWorkersVisit: TDataSource;
    VL_ReasonContractors: TADOQuery;
    VL_Contractors: TADOQuery;
    VL_CarNumberContractors: TADOQuery;
    VL_ContactContractors: TADOQuery;
    VL_CarNumberContractorsCarNumber: TWideStringField;
    VL_ContractorsCompany: TWideStringField;
    qryWorkers: TADOQuery;
    dsWorkers: TDataSource;
    qryWorkersId: TIntegerField;
    qryWorkersContractors_Id: TIntegerField;
    qryWorkersName: TWideStringField;
    qryWorkersSurname: TWideStringField;
    qryWorkersADT: TWideStringField;
    qryWorkersInsUsr: TIntegerField;
    qryWorkersInsDT: TDateTimeField;
    qryWorkersActive: TBooleanField;
    VL_ContractorsName: TWideStringField;
    dtsVL_Contractors: TDataSource;
    dts_ReasonContractors: TDataSource;
    VL_ReasonContractorsId: TIntegerField;
    VL_ReasonContractorsName: TWideStringField;
    VL_ReasonContractorsActive: TBooleanField;
    qryWorkersVisitid: TIntegerField;
    qryWorkersVisitContractors_Workers_Id: TIntegerField;
    qryWorkersVisitContractors_Id: TIntegerField;
    qryWorkersVisitReason_Id: TIntegerField;
    qryWorkersVisitContact_Id: TIntegerField;
    qryWorkersVisitWithCar: TBooleanField;
    qryWorkersVisitCarNumber: TWideStringField;
    qryWorkersVisitCardNumber: TWideStringField;
    qryWorkersVisitDateTimeIn: TDateTimeField;
    qryWorkersVisitDateTimeOut: TDateTimeField;
    qryWorkersVisitInsUsr: TIntegerField;
    qryWorkersVisitInsDT: TDateTimeField;
    qryWorkersVisitInUsr: TIntegerField;
    qryWorkersVisitOutUsr: TIntegerField;
    qryWorkersVisitFullFilled: TBooleanField;
    qryWorkersVisitFullFilledDT: TDateTimeField;
    qryWorkersVisitFullFilledUsr: TIntegerField;
    qryWorkersVisitDTime: TDateTimeField;
    qryWorkersVisitComments: TWideStringField;
    VL_ContactContractorsName: TWideStringField;
    VL_ContactContractorsId: TIntegerField;
    VL_ContactContractorsActive: TBooleanField;
    VL_ContactContractorsContractors_Id: TIntegerField;
    dts_ContactContractors: TDataSource;
    VL_Contractorsid: TIntegerField;
    qryWorkersVisitPContractors_Id: TIntegerField;
    fnHelpWorkerWithId: TADOStoredProc;
    fnHelpWorkerWithIdName: TWideStringField;
    fnHelpWorkerWithIdSurName: TWideStringField;
    fnHelpWorkerWithIdCompany: TWideStringField;
    fnHelpWorkerWithIdADT: TWideStringField;
    fnHelpWorkerWithIdContractor_Id: TIntegerField;
    fnHelpWorkerWithIdWorker_Id: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryWorkersVisitBeforePost(DataSet: TDataSet);
    procedure qryWorkersVisitAfterPost(DataSet: TDataSet);
    procedure dtsWorkersVisitStateChange(Sender: TObject);
    procedure GenAfterPost(DataSet: TDataSet);
    procedure GenBeforePost(DataSet: TDataSet);
    procedure qryWorkersVisitCalcFields(DataSet: TDataSet);
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

procedure TDMWorkersDet.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMCreate(TForm(self),'qryWorkersVisit');
end;

procedure TDMWorkersDet.dtsWorkersVisitStateChange(Sender: TObject);
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

procedure TDMWorkersDet.qryWorkersVisitAfterPost(DataSet: TDataSet);
begin
  inherited;
  DMMain.TblChanges.UpdateBatch();
end;

procedure TDMWorkersDet.qryWorkersVisitBeforePost(DataSet: TDataSet);
begin
  inherited;
  BeforePost0(DataSet, 'WorkersVisit');
end;

procedure TDMWorkersDet.qryWorkersVisitCalcFields(DataSet: TDataSet);
begin
  inherited;
//  qryWorkersVisitPContractors_Id.AsInteger := 1;//qryWorkersVisitContractors_Id.AsInteger;
end;

procedure TDMWorkersDet.GenAfterPost(DataSet: TDataSet);
begin
  inherited;
  DMMain.TblChanges.UpdateBatch();
end;


procedure TDMWorkersDet.GenBeforePost(DataSet: TDataSet);
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

procedure TDMWorkersDet.CheckUpdateParam;
var PName,PCompany,PIdentity:string;
begin
//  PName     :=frmMain.String2Pho(qryPersonsVisitName.Text);
//  PCompany  :=frmMain.String2Pho(qryPersonsVisitCompany.Text);
//  PIdentity :=frmMain.String2Pho(qryPersonsVisitIdentityNo.Text);
//  qryPersons.Insert;
//  qryPersons.Edit;
//  qryPersonsPerson.AsString       := qryPersonsVisitName.Text;
//  qryPersonsPhoPerson.AsString    := PName;
//  qryPersonsCompany.AsString      := qryPersonsVisitCompany.Text;
//  qryPersonsPhoCompany.AsString   := PCompany;
//  qryPersonsIdentityNo.AsString   := qryPersonsVisitIdentityNo.Text;
//  qryPersonsPhoIdentityNo.AsString:= PIdentity;
//  qryPersons.Post;
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
