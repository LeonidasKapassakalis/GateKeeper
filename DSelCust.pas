unit DSelCust;

interface

uses
  System.SysUtils, System.Classes, DBase, DMain, Common,
  Forms, Data.DB, Data.Win.ADODB;

type
  TDMSelCust = class(TDMBase)
    qryCustomer: TADOQuery;
    qryCustomerCUSTOMERID: TAutoIncField;
    qryCustomerNAME: TWideStringField;
    dtsCustomer: TDataSource;
    qryEmployees: TADOQuery;
    qryEmployeesId: TAutoIncField;
    qryEmployeesCustomerId: TIntegerField;
    qryEmployeesMhtrId: TIntegerField;
    qryEmployeesName: TWideStringField;
    qryEmployeesSurName: TWideStringField;
    qryEmployeesAddress: TWideStringField;
    qryEmployeesTK: TWideStringField;
    qryEmployeesTown: TWideStringField;
    qryEmployeesAFM: TWideStringField;
    qryEmployeesDOY: TWideStringField;
    qryEmployeesYpokId: TIntegerField;
    qryEmployeesSendPrint: TBooleanField;
    qryEmployeesSendMail: TBooleanField;
    qryEmployeesMailAddr: TWideStringField;
    qryEmployeesLCustomer: TStringField;
    dtsEmployees: TDataSource;
    qrySitem: TADOQuery;
    qrySitemSITEMID: TAutoIncField;
    qrySitemDescr: TWideStringField;
    qrySitemIGROUPID: TIntegerField;
    qrySitemICLASSID: TIntegerField;
    qrySitemPososto: TFloatField;
    qrySitemCODEINTERMINAL: TIntegerField;
    qrySitemMINPRICE: TFloatField;
    qrySitemMAXPRICE: TFloatField;
    qrySitemCHECKPRICE: TBooleanField;
    qrySitemInsUsr: TIntegerField;
    qrySitemInsDT: TDateTimeField;
    qrySitemUpdUsr: TIntegerField;
    qrySitemUpdDT: TDateTimeField;
    qrySitemDeleted: TBooleanField;
    qrySitemDelUsr: TIntegerField;
    qrySitemDelDT: TDateTimeField;
    qrySitemInActive: TBooleanField;
    qrySitemInActiveUsr: TIntegerField;
    qrySitemInActiveDt: TDateTimeField;
    dtsSitem: TDataSource;
    qryCustomerSTREET: TWideStringField;
    qryCustomerZIP: TWideStringField;
    qryCustomerCITY: TWideStringField;
    qryCustomerAFM: TWideStringField;
    qryCustomerDOY: TWideStringField;
    qryCustomerSTARTDATE: TDateTimeField;
    qryCustomerAREAID: TIntegerField;
    qryCustomerLOCATIONID: TIntegerField;
    qryCustomerCGROUPID: TIntegerField;
    qryCustomerCCLASSID: TIntegerField;
    qryCustomerCREDITAMOUNT: TFloatField;
    qryCustomerINSDT: TDateTimeField;
    qryCustomerUPDDT: TDateTimeField;
    qryCustomerINSUSR: TIntegerField;
    qryCustomerUPDUSR: TIntegerField;
    qryCustomerPROFESSION: TWideStringField;
    qryCustomerBRANCHID: TIntegerField;
    qryCustomerSAPCODE: TWideStringField;
    qryCustomerISACTIVE: TBooleanField;
    qryCustomerSALESMENID: TIntegerField;
    qryCustomerDIAKID: TIntegerField;
    qryCustomerISTEST: TBooleanField;
    qryCustomerISCONS: TBooleanField;
    qryCustomerAREABID: TIntegerField;
    qryCustomerDATEPHEND: TDateTimeField;
    qryCustomerDATELOEND: TDateTimeField;
    qryCustomerHASDETAILEMP: TBooleanField;
    qryCustomerALLCARDSTOBL: TBooleanField;
    qryCustomerALLCARDSTOBLDATE: TDateTimeField;
    qryCustomerALLCARDSTOBLSYSDATE: TDateTimeField;
    qryCustomerALLCARDSTOBLUSR: TIntegerField;
    qryCustomerCUSTOMEROFF: TBooleanField;
    qryCustomerCUSTOMEROFFDATE: TDateTimeField;
    qryCustomerCUSTOMEROFFSYSDATE: TDateTimeField;
    qryCustomerCUSTOMEROFFUSR: TIntegerField;
    qryCustomerCARDHASEMPNAME: TBooleanField;
    qryCustomerDATEEND: TDateTimeField;
    qryCustomerCompanyTypeId: TIntegerField;
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
    dtsCustomer_Contacts: TDataSource;
    qryCustomer_Contacts: TADOQuery;
    qryCustomer_ContactsCustomerid: TIntegerField;
    qryCustomer_ContactsContactid: TIntegerField;
    qryCustomer_ContactsMain: TBooleanField;
    qryCustomer_ContactsAA: TIntegerField;
    qryCustomer_ContactsLCont: TStringField;
    qryCustomer_ContactsLResr: TStringField;
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
    dtsContacts: TDataSource;
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
    qryCustomerLCC: TStringField;
    qryCustomerLBranch: TStringField;
    qryCustomerLSalesMen: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMSelCust: TDMSelCust;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }

{$R *.dfm}

procedure TDMSelCust.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMCreate(TForm(self));
end;

end.
