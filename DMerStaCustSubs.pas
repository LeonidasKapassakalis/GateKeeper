unit DMerStaCustSubs;

interface

uses
  System.SysUtils, System.Classes, DBase, Data.DB, Data.Win.ADODB, Common, Forms;

type
  TDMMerStaCust = class(TDMBase)
    qryQTown: TADOQuery;
    qryQTownArea00_Name: TWideStringField;
    qryQTownArea01_Name: TWideStringField;
    qryQTownArea02_Name: TWideStringField;
    qryQTownArea03_Name: TWideStringField;
    qryQTownArea02_Id: TIntegerField;
    qryQTownArea03_Id: TAutoIncField;
    qryQTownArea01_Id: TIntegerField;
    qryQTownArea00_Id: TIntegerField;
    qryQTownWholeDescr: TWideStringField;
    dtsQTown: TDataSource;
    qryBranch: TADOQuery;
    qryBranchBRANCHID: TAutoIncField;
    qryBranchDESCR: TWideStringField;
    qryBranchINSDT: TDateTimeField;
    qryBranchUPDDT: TDateTimeField;
    qryBranchINSUSR: TIntegerField;
    qryBranchUPDUSR: TIntegerField;
    dtsBranch: TDataSource;
    qrySalesMen: TADOQuery;
    qrySalesMenSALESMENID: TAutoIncField;
    qrySalesMenDESCR: TWideStringField;
    qrySalesMenSAPID: TIntegerField;
    qrySalesMenINSDT: TDateTimeField;
    qrySalesMenUPDDT: TDateTimeField;
    qrySalesMenINSUSR: TIntegerField;
    qrySalesMenUPDUSR: TIntegerField;
    dtsSalesMen: TDataSource;
    qryDiak: TADOQuery;
    qryDiakDiakID: TAutoIncField;
    qryDiakDescr: TWideStringField;
    qryDiakDiakDays: TIntegerField;
    qryDiakDiakSAP: TIntegerField;
    qryDiakInsUsr: TIntegerField;
    qryDiakInsDT: TDateTimeField;
    qryDiakUpdUsr: TIntegerField;
    qryDiakUpdDT: TDateTimeField;
    qryDiakDeleted: TBooleanField;
    qryDiakDelUsr: TIntegerField;
    qryDiakDelDT: TDateTimeField;
    qryDiakInActive: TBooleanField;
    qryDiakInActiveUsr: TIntegerField;
    qryDiakInActiveDt: TDateTimeField;
    dtsDiak: TDataSource;
    dsContactType: TDataSource;
    qryContactType: TADOQuery;
    qryContactTypeContactTypeId: TAutoIncField;
    qryContactTypeContactType_Name: TWideStringField;
    qryContactTypeContactType_Procedure: TWideStringField;
    qryContactTypeInsUsr: TIntegerField;
    qryContactTypeInsDT: TDateTimeField;
    qryContactTypeUpdUsr: TIntegerField;
    qryContactTypeUpdDT: TDateTimeField;
    qryContactTypeDeleted: TBooleanField;
    qryContactTypeDelUsr: TIntegerField;
    qryContactTypeDelDT: TDateTimeField;
    qryContactTypeInActive: TBooleanField;
    qryContactTypeInActiveUsr: TIntegerField;
    qryContactTypeInActiveDt: TDateTimeField;
    dtsContacts: TDataSource;
    qryContacts: TADOQuery;
    qryContactsid: TIntegerField;
    qryContactsType: TIntegerField;
    qryContactsType_id: TIntegerField;
    qryContactsName: TWideStringField;
    qryContactsSurname: TWideStringField;
    qryContactsemail: TWideStringField;
    qryContactsPhone: TWideStringField;
    qryContactsFax: TWideStringField;
    qryContactsMobile: TWideStringField;
    qryContactsMailORFax: TIntegerField;
    qryContactsWhole: TStringField;
    qryCostCenter: TADOQuery;
    qryCostCenterCostCenterId: TAutoIncField;
    qryCostCenterCustomerId: TIntegerField;
    qryCostCenterCustomerAA: TIntegerField;
    qryCostCenterCCName: TWideStringField;
    qryCostCenterCCNameFull: TWideStringField;
    qryCostCenterInsUsr: TIntegerField;
    qryCostCenterInsDT: TDateTimeField;
    qryCostCenterUpdUsr: TIntegerField;
    qryCostCenterUpdDT: TDateTimeField;
    qryCostCenterDeleted: TBooleanField;
    qryCostCenterDelUsr: TIntegerField;
    qryCostCenterDelDT: TDateTimeField;
    qryCostCenterInActive: TBooleanField;
    qryCostCenterInActiveUsr: TIntegerField;
    qryCostCenterInActiveDt: TDateTimeField;
    dtsCostCenter: TDataSource;
    qryCustomer: TADOQuery;
    qryCustomerCUSTOMERID: TAutoIncField;
    qryCustomerNAME: TWideStringField;
    qryCostCenterLCustomer: TStringField;
    dtsCustomer: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }

{$R *.dfm}

procedure TDMMerStaCust.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMCreate(TForm(self));
end;

end.
