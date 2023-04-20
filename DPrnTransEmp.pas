unit DPrnTransEmp;

interface

uses
  System.SysUtils, System.Classes, DBase, Data.DB, Data.Win.ADODB, Forms, Common;

type
  TDMPrnTransEmp = class(TDMBase)
    qryCustomer: TADOQuery;
    dtsCustomer: TDataSource;
    qryCustomerCUSTOMERID: TAutoIncField;
    qryCustomerNAME: TWideStringField;
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
    qryMerchant: TADOQuery;
    dtsMerchant: TDataSource;
    qryStation: TADOQuery;
    dtsStation: TDataSource;
    qryTerminal: TADOQuery;
    dtsTerminal: TDataSource;
    qryStationStationid: TAutoIncField;
    qryStationName: TWideStringField;
    qryStationSTREET: TWideStringField;
    qryStationZIP: TWideStringField;
    qryStationCITY: TWideStringField;
    qryStationAreaId: TIntegerField;
    qryStationSalesMenId: TIntegerField;
    qryStationIGroupId1: TIntegerField;
    qryStationPososto1: TFloatField;
    qryStationHaveGroup1: TBooleanField;
    qryStationIGroupId2: TIntegerField;
    qryStationPososto2: TFloatField;
    qryStationHaveGroup2: TBooleanField;
    qryStationIGroupId3: TIntegerField;
    qryStationPososto3: TFloatField;
    qryStationHaveGroup3: TBooleanField;
    qryStationIGroupId4: TIntegerField;
    qryStationPososto4: TFloatField;
    qryStationHaveGroup4: TBooleanField;
    qryStationIGroupId5: TIntegerField;
    qryStationPososto5: TFloatField;
    qryStationHaveGroup5: TBooleanField;
    qryStationIGroupId6: TIntegerField;
    qryStationPososto6: TFloatField;
    qryStationHaveGroup6: TBooleanField;
    qryStationIGroupId7: TIntegerField;
    qryStationPososto7: TFloatField;
    qryStationHaveGroup7: TBooleanField;
    qryStationIGroupId8: TIntegerField;
    qryStationPososto8: TFloatField;
    qryStationHaveGroup8: TBooleanField;
    qryStationIGroupId9: TIntegerField;
    qryStationPososto9: TFloatField;
    qryStationHaveGroup9: TBooleanField;
    qryStationIGroupId10: TIntegerField;
    qryStationPososto10: TFloatField;
    qryStationHaveGroup10: TBooleanField;
    qryStationDeleted: TBooleanField;
    qryStationDelUsr: TIntegerField;
    qryStationDelDT: TDateTimeField;
    qryStationInActive: TBooleanField;
    qryStationInActiveUsr: TIntegerField;
    qryStationInActiveDt: TDateTimeField;
    qryStationStopSales: TBooleanField;
    qryStationStopSalesUsr: TIntegerField;
    qryStationStopSalesDt: TDateTimeField;
    qryTerminalTerminalid: TIntegerField;
    qryTerminalTerminalCode: TWideStringField;
    qryTerminalTerminalSerialNo: TWideStringField;
    qryTerminalTerminalType: TIntegerField;
    qryEnhmDlCall: TADOQuery;
    qryEnhmDlCallENDLCALLID: TAutoIncField;
    qryEnhmDlCallENDLCALLDATE: TDateTimeField;
    qryEnhmDlCallENDLCALLTRY: TIntegerField;
    qryEnhmDlCallINSDT: TDateTimeField;
    qryEnhmDlCallUPDDT: TDateTimeField;
    qryEnhmDlCallINSUSR: TIntegerField;
    qryEnhmDlCallUPDUSR: TIntegerField;
    qryEnhmDlCallENDLCALLFROM: TIntegerField;
    dtsEnhmDlCall: TDataSource;
    qryENHNPECALL: TADOQuery;
    dtsENHMPECALL: TDataSource;
    qryENHNPECALLENPCALLID: TAutoIncField;
    qryENHNPECALLENPCALLDATE: TDateTimeField;
    qryENHNPECALLINSDT: TDateTimeField;
    qryENHNPECALLUPDDT: TDateTimeField;
    qryENHNPECALLINSUSR: TIntegerField;
    qryENHNPECALLUPDUSR: TIntegerField;
    qryENHNPECALLENPCALLFROM: TIntegerField;
    qryENHMCOCALL: TADOQuery;
    dtsENHMCOCALL: TDataSource;
    qryENHMDISCALL: TADOQuery;
    dtsENHMDISCALL: TDataSource;
    qryENHMSTCALL: TADOQuery;
    dtsENHMSTCALL: TDataSource;
    qryENHMCOCALLENCCALLID: TAutoIncField;
    qryENHMCOCALLENCCALLDATE: TDateTimeField;
    qryENHMCOCALLINSDT: TDateTimeField;
    qryENHMCOCALLUPDDT: TDateTimeField;
    qryENHMCOCALLINSUSR: TIntegerField;
    qryENHMCOCALLUPDUSR: TIntegerField;
    qryENHMDISCALLENHMDISCALLID: TAutoIncField;
    qryENHMDISCALLENHMDISCALLDATE: TDateTimeField;
    qryENHMDISCALLINSDT: TDateTimeField;
    qryENHMDISCALLUPDDT: TDateTimeField;
    qryENHMDISCALLINSUSR: TIntegerField;
    qryENHMDISCALLUPDUSR: TIntegerField;
    qryENHMSTCALLENSCALLID: TAutoIncField;
    qryENHMSTCALLENSCALLDATE: TDateTimeField;
    qryENHMSTCALLINSDT: TDateTimeField;
    qryENHMSTCALLUPDDT: TDateTimeField;
    qryENHMSTCALLINSUSR: TIntegerField;
    qryENHMSTCALLUPDUSR: TIntegerField;
    qryENHMSTCALLENSCALLFROM: TIntegerField;
    qryACard: TADOQuery;
    dtsACard: TDataSource;
    qryTrCallDate: TADOQuery;
    dtsTrCallDate: TDataSource;
    qryTrCallDateTRCALLID: TAutoIncField;
    qryTrCallDateTRCALLDATE: TDateTimeField;
    qryTrCallDateTRCALLAUTOUPDATE: TBooleanField;
    qryTrCallDateTRCALLAUTOUPDATECNT: TIntegerField;
    qryTrCallDateTRCALLAUTOUPDATECNTST: TIntegerField;
    qryTrCallDateTRCALLAUTOUPDATECNTST0: TIntegerField;
    qryTrCallDateTRCALLMANUPDATE: TBooleanField;
    qryTrCallDateTRCALLENHMPELA: TBooleanField;
    qryTrCallDateTRCALLENHMPRAT: TBooleanField;
    qryTrCallDateINSDT: TDateTimeField;
    qryTrCallDateUPDDT: TDateTimeField;
    qryTrCallDateINSUSR: TIntegerField;
    qryTrCallDateUPDUSR: TIntegerField;
    qryTrCallDateTRCALLAUTOUPDATECNTDEL: TIntegerField;
    qryMerchantMerchantId: TIntegerField;
    qryMerchantName: TWideStringField;
    qryMerchantSAPCode: TWideStringField;
    qryMerchantStreet: TWideStringField;
    qryMerchantZIP: TWideStringField;
    qryMerchantCity: TWideStringField;
    qryMerchantAFM: TWideStringField;
    qryMerchantDOY: TWideStringField;
    qryMerchantISTEST: TBooleanField;
    qryMerchantAreaId: TIntegerField;
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
    qryEnhmDlCallENDLCALLDATETRY: TStringField;
    qryEmployees: TADOQuery;
    dtsEmployees: TDataSource;
    qryEmployeesId: TIntegerField;
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
    qryEmployeesFName: TStringField;
    qryACardACARDID: TIntegerField;
    qryACardACARDCODE: TWideStringField;
    qryACardREGNO: TWideStringField;
    qryACardAcardCodeFull: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryEmployeesCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }

uses DMain;

{$R *.dfm}

procedure TDMPrnTransEmp.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMCreate(TForm(self));
end;

procedure TDMPrnTransEmp.qryEmployeesCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryEmployeesFName.AsString := Trim(qryEmployeesSurName.AsString) + ' ' + Trim(qryEmployeesName.AsString)
end;

end.
