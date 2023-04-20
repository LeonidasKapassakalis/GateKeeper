unit DWorkPermits;

interface

uses
  System.SysUtils, System.Classes, DBase, DMain, Data.DB, Data.Win.ADODB,
  Forms, Common, FBaseDev1;

type
  TDMWorkPermits = class(TDMBase)
    qryWork_Permit: TADOQuery;
    qryContractors: TADOQuery;
    qryContractorsid: TIntegerField;
    qryContractorsName: TWideStringField;
    qryContractorsCompany: TWideStringField;
    qryContractorsVAT: TWideStringField;
    qryContractorsInsUsr: TIntegerField;
    qryContractorsInsDT: TDateTimeField;
    qryContractorsNotes: TWideStringField;
    dtsContractors: TDataSource;
    qryDepartments: TADOQuery;
    dtsDepartments: TDataSource;
    qryDepartmentsid: TIntegerField;
    qryDepartmentsName: TWideStringField;
    dtsWork_Permit: TDataSource;
    qryWork_PermitLContractor: TStringField;
    qryWork_PermitLDepartment: TStringField;
    qryWork_PermitId: TIntegerField;
    qryWork_PermitDepartment_Id: TIntegerField;
    qryWork_PermitContractor_Id: TIntegerField;
    qryWork_PermitNumber_of_Workers: TIntegerField;
    qryWork_Permit������_��������: TWideStringField;
    qryWork_Permit����������: TWideStringField;
    qryWork_PermitStart_Time: TDateTimeField;
    qryWork_PermitEnd_Time: TDateTimeField;
    qryWork_Permit���������_��������: TWideStringField;
    qryWork_Permit�������: TBooleanField;
    qryWork_Permit�������: TBooleanField;
    qryWork_Permit�������: TBooleanField;
    qryWork_Permit�������_��_�������_����: TBooleanField;
    qryWork_Permit�����_�������: TBooleanField;
    qryWork_Permit������������: TBooleanField;
    qryWork_Permit�����_�������: TBooleanField;
    qryWork_Permit����������_�������_������: TBooleanField;
    qryWork_Permit���������: TBooleanField;
    qryWork_Permit�2S: TBooleanField;
    qryWork_PermitCO: TBooleanField;
    qryWork_PermitO2: TBooleanField;
    qryWork_Permit���������_������: TWideStringField;
    qryWork_Permit�������_�������: TWideStringField;
    qryWork_Permit�����������_����������: TBooleanField;
    qryWork_Permit����_�����������_�����: TBooleanField;
    qryWork_Permit�����������_����������: TBooleanField;
    qryWork_Permit���������������_��������: TBooleanField;
    qryWork_PermitO������_������������: TBooleanField;
    qryWork_Permit���������������_������: TBooleanField;
    qryWork_Permit��������_����������: TBooleanField;
    qryWork_Permit���������_����������: TBooleanField;
    qryWork_Permit����������_�����: TBooleanField;
    qryWork_Permit����������_�����: TBooleanField;
    qryWork_Permit����������_����: TBooleanField;
    qryWork_Permit������_��������: TBooleanField;
    qryWork_Permit��������������_�����: TWideStringField;
    qryWork_Permit���������_���������: TWideStringField;
    qryWork_Permit��������_�������������: TBooleanField;
    qryWork_Permit����������_���: TBooleanField;
    qryWork_Permit��_���������_����������: TWideStringField;
    qryWork_Permit�����_�����_���: TWideStringField;
    qryWork_Permit��������_������: TBooleanField;
    qryWork_Permit�������_�������: TBooleanField;
    qryWork_Permit�������_��_��������_����: TBooleanField;
    qryWork_Permit����������_���_�����_��������: TBooleanField;
    qryWork_Permit��������������_�����_�������: TWideStringField;
    qryWork_Permit������������_��_������_�������: TBooleanField;
    qryWork_Permit��_�������_��������_�����: TWideStringField;
    qryWork_Permit�����_�������_�������_������: TBooleanField;
    qryWork_Permit�����_�����_���_�������_�_�������_���_���: TWideStringField;
    qryWork_Permit�������������_���������: TBooleanField;
    qryWork_Permit�������_��������_������������: TBooleanField;
    qryWork_Permit�������_��������: TBooleanField;
    qryWork_Permit���������_������: TBooleanField;
    qryWork_Permit��������_����������_����������: TBooleanField;
    qryWork_Permit��_����������_����������: TIntegerField;
    qryWork_Permit������������: TWideStringField;
    qryWork_Permit������_������_��������: TBooleanField;
    qryWork_Permit��_�������_������_��������: TWideStringField;
    qryWork_Permit������_������������: TBooleanField;
    qryWork_Permit��_�������_������������: TWideStringField;
    qryWork_Permit������_�������: TBooleanField;
    qryWork_Permit������_��������: TBooleanField;
    qryWork_Permit�������������_������: TBooleanField;
    qryWork_Permit����������: TBooleanField;
    qryWork_Permit���������: TBooleanField;
    qryWork_Permit��������_���������: TBooleanField;
    qryWork_Permit����������: TBooleanField;
    qryWork_Permit�����_��������: TBooleanField;
    qryWork_Permit����_���������_��_����: TBooleanField;
    qryWork_Permit������������_�������: TBooleanField;
    qryWork_Permit����������_�����_��_��_�����: TBooleanField;
    qryWork_Permit��������������_�����_��������_����������: TWideStringField;
    qryWork_Permit�������������: TIntegerField;
    qryWork_Permit�������: TIntegerField;
    qryWork_Permit����_����_����������: TWideStringField;
    qryWork_Permit������_��������: TWideStringField;
    qryWork_Permit���������_��������: TWideStringField;
    qryWork_Permit������������_���: TBooleanField;
    qryWork_Permit������������_�����_���������: TBooleanField;
    qryWork_Permit��_������������: TBooleanField;
    qryWork_Permit�_�������_�������_���_���: TWideStringField;
    qryWork_Permit�_�������_�������_���: TWideStringField;
    qryWork_Permit�����_���������: TWideStringField;
    qryWork_PermitInsUsr: TIntegerField;
    qryWork_PermitInsDT: TDateTimeField;
    qryWork_PermitIssue_Date: TDateTimeField;
    qryForemen: TADOQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    dtsForemen: TDataSource;
    qryWork_Permit���������_Value: TFloatField;
    qryWork_Permit�2S_Value: TFloatField;
    qryWork_PermitCO_Value: TFloatField;
    qryWork_PermitO2_Value: TFloatField;
    qryWork_Permit������_�������: TBooleanField;
    qryWork_Permit��_�������_�������: TWideStringField;
    qryWork_PermitForeman_Id: TIntegerField;
    qryWork_PermitFullFilled: TBooleanField;
    qryWork_PermitFullFilledDT: TDateTimeField;
    qryWork_PermitFullFilledUsr: TIntegerField;
    qryWork_PermitFullFilledCancel: TBooleanField;
    qryWork_Permit�������_��_����: TBooleanField;
    qryWork_Permit�_�����_���_�����_���������_��������: TWideStringField;
    qryWork_Permit�_��������_���������_���_������������: TWideStringField;
    qryWork_Permit����������_�������_�������_������: TBooleanField;
    qryWork_Permit���������_���������: TWideStringField;
    qryWork_Permit��������_������������_�������: TBooleanField;
    qryWork_PermitAirpack: TBooleanField;
    qryWork_Permit��������_10_������: TBooleanField;
    qryWork_Permit���������_���������_��������_��_������: TBooleanField;
    qryWork_Permit�����_������: TBooleanField;
    qryWork_Permit������������: TWideStringField;
    qryWork_Permit�1_����������_����: TBooleanField;
    qryWork_Permit�1_����������_����: TBooleanField;
    qryWork_Permit�1_��������: TBooleanField;
    qryWork_Permit�1_���������: TBooleanField;
    qryWork_Permit�1_����������: TBooleanField;
    qryWork_Permit�1_������: TBooleanField;
    qryWork_Permit�1_��������: TBooleanField;
    qryWork_Permit�1_����������: TBooleanField;
    qryWork_Permit�1_����������_���_���������_����: TBooleanField;
    qryWork_Permit�1_�������_����: TBooleanField;
    qryWork_Permit�1_�������_����: TBooleanField;
    qryWork_Permit�2_�����_���_����: TBooleanField;
    qryWork_Permit�2_�����_�����: TBooleanField;
    qryWork_Permit�2_����������_��������: TBooleanField;
    qryWork_Permit�2_�������_��_�������_����: TBooleanField;
    qryWork_Permit�2_�����_�����������: TBooleanField;
    qryWork_Permit�2_�����������: TBooleanField;
    qryWork_Permit�2_����������_��������: TBooleanField;
    qryWork_Permit�2_������: TBooleanField;
    qryWork_Permit�2_����_: TWideStringField;
    qryWork_Permit�3_������_��_�����������: TBooleanField;
    qryWork_Permit�3_��������_����������_�������_���_����: TBooleanField;
    qryWork_Permit�3_H2S_��������: TBooleanField;
    qryWork_Permit�3_HC_���������������: TBooleanField;
    qryWork_Permit�3_����������_��������_SIMOPS: TBooleanField;
    qryWork_Permit�3_��������: TBooleanField;
    qryWork_Permit�3_�������_������������_����_ATEX: TBooleanField;
    qryWork_Permit�3_�������: TBooleanField;
    qryWork_Permit�3_����_: TWideStringField;
    qryWork_Permit�1_�����������_������_���_����������_����_���_����������: TBooleanField;
    qryWork_Permit�1_�����: TFloatField;
    qryWork_Permit�1_�����������: TFloatField;
    qryWork_Permit�������_����������: TWideStringField;
    qryWork_Permit�������_�������: TWideStringField;
    qryDepartment_Foremen: TADOQuery;
    IntegerField2: TIntegerField;
    WideStringField2: TWideStringField;
    drsDepartment_Foremen: TDataSource;
    qryWork_PermitDepartment_Foreman_Id: TIntegerField;
    spUpdate_Work_Permit_Status: TADOStoredProc;
    qryWork_PermitFrom_Id_Copy: TIntegerField;
    qryWork_PermitVisible_Till: TDateTimeField;
    qryWork_PermitDeleted: TBooleanField;
    qryWork_PermitDelUsr: TIntegerField;
    qryWork_PermitDelDT: TDateTimeField;
    qryWork_Permit��_�������������: TWideStringField;
    qryWork_PermitLFrom_Id_Copy: TStringField;
    qryWork_PermitWorkStopped: TBooleanField;
    qryWork_PermitWorkStoppedUsr: TIntegerField;
    qryWork_PermitWorkStoppedDT: TDateTimeField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryWorkersVisitBeforePost(DataSet: TDataSet);
    procedure qryWorkersVisitAfterPost(DataSet: TDataSet);
    procedure dtsWorkersVisitStateChange(Sender: TObject);
    procedure GenAfterPost(DataSet: TDataSet);
    procedure GenBeforePost(DataSet: TDataSet);
    procedure qryWorkersVisitCalcFields(DataSet: TDataSet);
    procedure qryWork_PermitCalcFields(DataSet: TDataSet);
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

procedure TDMWorkPermits.DataModuleCreate(Sender: TObject);
begin
  inherited;
  spUpdate_Work_Permit_Status.ExecProc();
  DMCreate(TForm(self),'qryWorkersVisit');
end;

procedure TDMWorkPermits.dtsWorkersVisitStateChange(Sender: TObject);
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

procedure TDMWorkPermits.qryWorkersVisitAfterPost(DataSet: TDataSet);
begin
  inherited;
  DMMain.TblChanges.UpdateBatch();
end;

procedure TDMWorkPermits.qryWorkersVisitBeforePost(DataSet: TDataSet);
begin
  inherited;
  BeforePost0(DataSet, 'WorkersVisit');
end;

procedure TDMWorkPermits.qryWorkersVisitCalcFields(DataSet: TDataSet);
begin
  inherited;
//  qryWorkersVisitPContractors_Id.AsInteger := 1;//qryWorkersVisitContractors_Id.AsInteger;
end;

procedure TDMWorkPermits.qryWork_PermitCalcFields(DataSet: TDataSet);
begin
  inherited;
  if qryWork_PermitFrom_Id_Copy.AsInteger > 0 then
     qryWork_PermitLFrom_Id_Copy.AsString := '(' + inttostr(qryWork_PermitFrom_Id_Copy.AsInteger) + ')'
  else
    qryWork_PermitLFrom_Id_Copy.AsString := '';


end;

procedure TDMWorkPermits.GenAfterPost(DataSet: TDataSet);
begin
  inherited;
//  DMMain.TblChanges.UpdateBatch();
end;


procedure TDMWorkPermits.GenBeforePost(DataSet: TDataSet);
var nStr:string;
begin

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

procedure TDMWorkPermits.CheckUpdateParam;
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
