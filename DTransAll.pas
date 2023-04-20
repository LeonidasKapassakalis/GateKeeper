unit DTransAll;

interface

uses
  System.SysUtils, System.Classes, Forms, Data.DB, Data.Win.ADODB,
  DBase, Common;

type
  TDMTransAll = class(TDMBase)
    qryTranD0: TADOQuery;
    qryTranD0TRANDID: TAutoIncField;
    qryTranD0CUSTOMERID: TIntegerField;
    qryTranD0EMPLOYEEID: TIntegerField;
    qryTranD0DEBIT: TBCDField;
    qryTranD0CREDIT: TBCDField;
    qryTranD0TTEXT: TWideStringField;
    qryTranD0TRANDDATE: TDateTimeField;
    qryTranD0TRANDCID: TIntegerField;
    qryTranD0INSDT: TDateTimeField;
    qryTranD0UPDDT: TDateTimeField;
    qryTranD0INSUSR: TIntegerField;
    qryTranD0UPDUSR: TIntegerField;
    dtsTranD: TDataSource;
    qryCustomer: TADOQuery;
    dtsCustomer: TDataSource;
    qryCustomerCUSTOMERID: TAutoIncField;
    qryCustomerNAME: TWideStringField;
    qryEmployees: TADOQuery;
    dtsEmployees: TDataSource;
    qryEnhmDisCall: TADOQuery;
    dtsEnhmDisCall: TDataSource;
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
    qryEnhmDisCallENHMDISCALLID: TAutoIncField;
    qryEnhmDisCallENHMDISCALLDATE: TDateTimeField;
    qryEnhmDisCallINSDT: TDateTimeField;
    qryEnhmDisCallUPDDT: TDateTimeField;
    qryEnhmDisCallINSUSR: TIntegerField;
    qryEnhmDisCallUPDUSR: TIntegerField;
    qryTranD0LCustomer: TStringField;
    qryTranD0LEmployee: TStringField;
    qryTranD0LTranDC: TStringField;
    qryTranDL0: TADOQuery;
    dtsTranDL: TDataSource;
    qryTranDL0TRANDLID: TAutoIncField;
    qryTranDL0STATIONID: TIntegerField;
    qryTranDL0CUSTOMERID: TIntegerField;
    qryTranDL0DEBIT: TFloatField;
    qryTranDL0CREDIT: TFloatField;
    qryTranDL0TTEXT: TWideStringField;
    qryTranDL0TRANDLDATE: TDateTimeField;
    qryTranDL0TRANBSID: TIntegerField;
    qryTranDL0INSDT: TDateTimeField;
    qryTranDL0UPDDT: TDateTimeField;
    qryTranDL0INSUSR: TIntegerField;
    qryTranDL0UPDUSR: TIntegerField;
    qryTranDL0LCustomer: TStringField;
    qryMerchant: TADOQuery;
    dtsMerchant: TDataSource;
    qryMerchantMerchantId: TIntegerField;
    qryMerchantName: TWideStringField;
    qryMerchantStreet: TWideStringField;
    qryMerchantZIP: TWideStringField;
    qryMerchantCity: TWideStringField;
    qryMerchantAFM: TWideStringField;
    qryMerchantDOY: TWideStringField;
    qryMerchantISTEST: TBooleanField;
    qryMerchantAreaId: TIntegerField;
    qryMerchantSAPCode: TWideStringField;
    qryMerchantMerchantCode: TWideStringField;
    qryMerchantSalesMenId: TIntegerField;
    qryMerchantInsUsr: TIntegerField;
    qryMerchantInsDT: TDateTimeField;
    qryMerchantUpdUsr: TIntegerField;
    qryMerchantUpdDT: TDateTimeField;
    qryMerchantDeleted: TBooleanField;
    qryMerchantDelUsr: TIntegerField;
    qryMerchantDelDT: TDateTimeField;
    qryMerchantInActive: TBooleanField;
    qryMerchantInActiveUsr: TIntegerField;
    qryMerchantInActiveDt: TDateTimeField;
    qryMerchantStopSales: TBooleanField;
    qryMerchantStopSalesUsr: TIntegerField;
    qryMerchantStopSalesDt: TDateTimeField;
    qryTranDL0LMerchant: TStringField;
    qryTranP: TADOQuery;
    dtsTranP: TDataSource;
    qryTranPTRANPID: TAutoIncField;
    qryTranPSTATIONID: TIntegerField;
    qryTranPSITEMID: TIntegerField;
    qryTranPDEBIT: TFloatField;
    qryTranPCREDIT: TFloatField;
    qryTranPTTEXT: TWideStringField;
    qryTranPTRANPDATE: TDateTimeField;
    qryTranPTRANBCOID: TIntegerField;
    qryTranPINSDT: TDateTimeField;
    qryTranPUPDDT: TDateTimeField;
    qryTranPINSUSR: TIntegerField;
    qryTranPUPDUSR: TIntegerField;
    qrySitem: TADOQuery;
    dtsSitem: TDataSource;
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
    qryTranPLSitem: TStringField;
    qryTranPLStation: TStringField;
    qryEmployeesLCustomer: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Created: Boolean;
    BrowseSqlInit: TStrings;
  end;

var
  DMTransAll: TDMTransAll;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }

uses DMain;

{$R *.dfm}

procedure TDMTransAll.DataModuleCreate(Sender: TObject);
begin
  // BrowseSqlInit:=TStringList.Create;
  // BrowseSqlInit.Text := qryTranD0.SQL.Text;
  Created := False;
  // qryTranD0.InitSql  := qryTranD0.Sql;
  // qryTranDL0.InitSql := qryTranDL0.Sql;
  // qryTranP.InitSql   := qryTranP.Sql;
  DMCreate(TForm(self), 'qryTranD');
  Created := True;
end;

end.
