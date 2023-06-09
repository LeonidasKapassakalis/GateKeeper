unit DSubParams11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, DBase, ADODB, ExtDlgs, Common;

type
  TDMSubParams11 = class(TDMBase)
    dsArea00: TDataSource;
    Area00: TADOTable;
    Area00Id: TAutoIncField;
    Area00AREA00_NAME: TWideStringField;
    Area00InsUsr: TIntegerField;
    Area00InsDT: TDateTimeField;
    Area00UpdUsr: TIntegerField;
    Area00UpdDT: TDateTimeField;
    Area00Deleted: TBooleanField;
    Area00DelUsr: TIntegerField;
    Area00DelDT: TDateTimeField;
    Area00InActive: TBooleanField;
    Area00InActiveUsr: TIntegerField;
    Area00InActiveDt: TDateTimeField;
    dsArea01: TDataSource;
    Area01: TADOTable;
    dsArea02: TDataSource;
    Area02: TADOTable;
    dsArea03: TDataSource;
    Area03: TADOTable;
    Area01Id: TAutoIncField;
    Area01Area00_Id: TIntegerField;
    Area01Area01_Name: TWideStringField;
    Area01InsUsr: TIntegerField;
    Area01InsDT: TDateTimeField;
    Area01UpdUsr: TIntegerField;
    Area01UpdDT: TDateTimeField;
    Area01Deleted: TBooleanField;
    Area01DelUsr: TIntegerField;
    Area01DelDT: TDateTimeField;
    Area01InActive: TBooleanField;
    Area01InActiveUsr: TIntegerField;
    Area01InActiveDt: TDateTimeField;
    Area02Id: TIntegerField;
    Area02Area01_Id: TIntegerField;
    Area02Area02_Name: TWideStringField;
    Area02InsUsr: TIntegerField;
    Area02InsDT: TDateTimeField;
    Area02UpdUsr: TIntegerField;
    Area02UpdDT: TDateTimeField;
    Area02Deleted: TBooleanField;
    Area02DelUsr: TIntegerField;
    Area02DelDT: TDateTimeField;
    Area02InActive: TBooleanField;
    Area02InActiveUsr: TIntegerField;
    Area02InActiveDt: TDateTimeField;
    Area03Id: TIntegerField;
    Area03Area02_Id: TIntegerField;
    Area03Area03_Name: TWideStringField;
    Area03InsUsr: TIntegerField;
    Area03InsDT: TDateTimeField;
    Area03UpdUsr: TIntegerField;
    Area03UpdDT: TDateTimeField;
    Area03Deleted: TBooleanField;
    Area03DelUsr: TIntegerField;
    Area03DelDT: TDateTimeField;
    Area03InActive: TBooleanField;
    Area03InActiveUsr: TIntegerField;
    Area03InActiveDt: TDateTimeField;
    Area01LuArea00: TStringField;
    Area02LuArea01_Id: TStringField;
    dsCCLASS: TDataSource;
    CCLASS: TADOTable;
    dsCGROUP: TDataSource;
    CGROUP: TADOTable;
    dsICLASS: TDataSource;
    ICLASS: TADOTable;
    dsIGROUP: TDataSource;
    IGROUP: TADOTable;
    CGROUPDescr: TWideStringField;
    CGROUPInsUsr: TIntegerField;
    CGROUPInsDT: TDateTimeField;
    CGROUPUpdUsr: TIntegerField;
    CGROUPUpdDT: TDateTimeField;
    CGROUPDeleted: TBooleanField;
    CGROUPDelUsr: TIntegerField;
    CGROUPDelDT: TDateTimeField;
    CGROUPInActive: TBooleanField;
    CGROUPInActiveUsr: TIntegerField;
    CGROUPInActiveDt: TDateTimeField;
    CCLASSDescr: TWideStringField;
    CCLASSInsUsr: TIntegerField;
    CCLASSInsDT: TDateTimeField;
    CCLASSUpdUsr: TIntegerField;
    CCLASSUpdDT: TDateTimeField;
    CCLASSDeleted: TBooleanField;
    CCLASSDelUsr: TIntegerField;
    CCLASSDelDT: TDateTimeField;
    CCLASSInActive: TBooleanField;
    CCLASSInActiveUsr: TIntegerField;
    CCLASSInActiveDt: TDateTimeField;
    ICLASSInsUsr: TIntegerField;
    ICLASSInsDT: TDateTimeField;
    ICLASSUpdUsr: TIntegerField;
    ICLASSUpdDT: TDateTimeField;
    ICLASSDeleted: TBooleanField;
    ICLASSDelUsr: TIntegerField;
    ICLASSDelDT: TDateTimeField;
    ICLASSInActive: TBooleanField;
    ICLASSInActiveUsr: TIntegerField;
    ICLASSInActiveDt: TDateTimeField;
    IGROUPName: TWideStringField;
    IGROUPBITNO: TIntegerField;
    IGROUPPOSOSTO: TFloatField;
    IGROUPInsUsr: TIntegerField;
    IGROUPInsDT: TDateTimeField;
    IGROUPUpdUsr: TIntegerField;
    IGROUPUpdDT: TDateTimeField;
    IGROUPDeleted: TBooleanField;
    IGROUPDelUsr: TIntegerField;
    IGROUPDelDT: TDateTimeField;
    IGROUPInActive: TBooleanField;
    IGROUPInActiveUsr: TIntegerField;
    IGROUPInActiveDt: TDateTimeField;
    Area03LuArea02_id: TStringField;
    dsContacts: TDataSource;
    Contacts: TADOTable;
    Contactsid: TIntegerField;
    ContactsName: TWideStringField;
    ContactsSurname: TWideStringField;
    Contactsemail: TWideStringField;
    ContactsPhone: TWideStringField;
    ContactsFax: TWideStringField;
    ContactsMobile: TWideStringField;
    dsMerchant_Contacts: TDataSource;
    Merchant_Contacts: TADOTable;
    Merchant_ContactsLContacts: TStringField;
    CCLASSCClassID: TAutoIncField;
    CGROUPCGroupId: TAutoIncField;
    ICLASSIClassId: TAutoIncField;
    ICLASSDescr: TWideStringField;
    IGROUPId: TAutoIncField;
    dsSITEM: TDataSource;
    SITEM: TADOTable;
    SITEMSITEMID: TAutoIncField;
    SITEMDescr: TWideStringField;
    SITEMIGROUPID: TIntegerField;
    SITEMICLASSID: TIntegerField;
    SITEMPososto: TFloatField;
    SITEMCODEINTERMINAL: TIntegerField;
    SITEMMINPRICE: TFloatField;
    SITEMMAXPRICE: TFloatField;
    SITEMCHECKPRICE: TBooleanField;
    SITEMInsUsr: TIntegerField;
    SITEMInsDT: TDateTimeField;
    SITEMUpdUsr: TIntegerField;
    SITEMUpdDT: TDateTimeField;
    SITEMDeleted: TBooleanField;
    SITEMDelUsr: TIntegerField;
    SITEMDelDT: TDateTimeField;
    SITEMInActive: TBooleanField;
    SITEMInActiveUsr: TIntegerField;
    SITEMInActiveDt: TDateTimeField;
    SITEMLIGroupId: TStringField;
    SITEMLIClassId: TStringField;
    dsSITEMDISCOUNT: TDataSource;
    SITEMDISCOUNT: TADOTable;
    SITEMDISCOUNTID: TIntegerField;
    SITEMDISCOUNTSITEMID: TAutoIncField;
    SITEMDISCOUNTCustomerID: TIntegerField;
    SITEMDISCOUNTFROMDATE: TDateTimeField;
    SITEMDISCOUNTDISCOUNT: TFloatField;
    SITEMDISCOUNTInsUsr: TIntegerField;
    SITEMDISCOUNTInsDT: TDateTimeField;
    SITEMDISCOUNTUpdUsr: TIntegerField;
    SITEMDISCOUNTUpdDT: TDateTimeField;
    SITEMDISCOUNTDeleted: TBooleanField;
    SITEMDISCOUNTDelUsr: TIntegerField;
    SITEMDISCOUNTDelDT: TDateTimeField;
    SITEMDISCOUNTInActive: TBooleanField;
    SITEMDISCOUNTInActiveUsr: TIntegerField;
    SITEMDISCOUNTInActiveDt: TDateTimeField;
    SITEMDISCOUNTLSitemId: TStringField;
    SITEMDISCOUNTLCustomer: TStringField;
    dsContactType: TDataSource;
    ContactType: TADOTable;
    ContactTypeContactTypeId: TAutoIncField;
    ContactTypeContactType_Name: TWideStringField;
    ContactTypeContactType_Procedure: TWideStringField;
    ContactTypeInsUsr: TIntegerField;
    ContactTypeInsDT: TDateTimeField;
    ContactTypeUpdUsr: TIntegerField;
    ContactTypeUpdDT: TDateTimeField;
    ContactTypeDeleted: TBooleanField;
    ContactTypeDelUsr: TIntegerField;
    ContactTypeDelDT: TDateTimeField;
    ContactTypeInActive: TBooleanField;
    ContactTypeInActiveUsr: TIntegerField;
    ContactTypeInActiveDt: TDateTimeField;
    Merchant_ContactsMerchantContactsId: TAutoIncField;
    Merchant_ContactsMerchantId: TIntegerField;
    Merchant_ContactsContactId: TIntegerField;
    Merchant_ContactsContactTypeId: TIntegerField;
    Merchant_ContactsMain: TBooleanField;
    Merchant_ContactsAA: TIntegerField;
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
    qryENHNPECALLENPCALLID: TAutoIncField;
    qryENHNPECALLENPCALLDATE: TDateTimeField;
    qryENHNPECALLINSDT: TDateTimeField;
    qryENHNPECALLUPDDT: TDateTimeField;
    qryENHNPECALLINSUSR: TIntegerField;
    qryENHNPECALLUPDUSR: TIntegerField;
    qryENHNPECALLENPCALLFROM: TIntegerField;
    dtsENHMPECALL: TDataSource;
    qryENHMCOCALL: TADOQuery;
    qryENHMCOCALLENCCALLID: TAutoIncField;
    qryENHMCOCALLENCCALLDATE: TDateTimeField;
    qryENHMCOCALLINSDT: TDateTimeField;
    qryENHMCOCALLUPDDT: TDateTimeField;
    qryENHMCOCALLINSUSR: TIntegerField;
    qryENHMCOCALLUPDUSR: TIntegerField;
    dtsENHMCOCALL: TDataSource;
    qryENHMDISCALL: TADOQuery;
    qryENHMDISCALLENHMDISCALLID: TAutoIncField;
    qryENHMDISCALLENHMDISCALLDATE: TDateTimeField;
    qryENHMDISCALLINSDT: TDateTimeField;
    qryENHMDISCALLUPDDT: TDateTimeField;
    qryENHMDISCALLINSUSR: TIntegerField;
    qryENHMDISCALLUPDUSR: TIntegerField;
    dtsENHMDISCALL: TDataSource;
    qryENHMSTCALL: TADOQuery;
    qryENHMSTCALLENSCALLID: TAutoIncField;
    qryENHMSTCALLENSCALLDATE: TDateTimeField;
    qryENHMSTCALLINSDT: TDateTimeField;
    qryENHMSTCALLUPDDT: TDateTimeField;
    qryENHMSTCALLINSUSR: TIntegerField;
    qryENHMSTCALLUPDUSR: TIntegerField;
    qryENHMSTCALLENSCALLFROM: TIntegerField;
    dtsENHMSTCALL: TDataSource;
    qryTrCallDate: TADOQuery;
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
    dtsTrCallDate: TDataSource;
    ContactsSendMail: TBooleanField;
    ContactsSendFax: TBooleanField;
    ContactsSendPrint: TBooleanField;
    qryContacts2MSC: TADOQuery;
    qryContacts2MSCStationStationId: TIntegerField;
    qryContacts2MSCCUSTOMERCUSTOMERID: TIntegerField;
    qryContacts2MSCCUSTOMERNAME: TWideStringField;
    qryContacts2MSCCUSTOMERSTREET: TWideStringField;
    qryContacts2MSCCUSTOMERZIP: TWideStringField;
    qryContacts2MSCCUSTOMERCITY: TWideStringField;
    qryContacts2MSCCUSTOMERAFM: TWideStringField;
    qryContacts2MSCCUSTOMERDOY: TWideStringField;
    qryContacts2MSCStationName: TWideStringField;
    qryContacts2MSCStationStreet: TWideStringField;
    qryContacts2MSCStationZIP: TWideStringField;
    qryContacts2MSCStationCity: TWideStringField;
    qryContacts2MSCMerchantMerchantId: TIntegerField;
    qryContacts2MSCMerchantName: TWideStringField;
    qryContacts2MSCMerchantStreet: TWideStringField;
    qryContacts2MSCMerchantZIP: TWideStringField;
    qryContacts2MSCMerchantCity: TWideStringField;
    qryContacts2MSCMerchantAFM: TWideStringField;
    qryContacts2MSCMerchantDOY: TWideStringField;
    qryContacts2MSCContactsId: TIntegerField;
    qryContacts2MSCContactsType: TIntegerField;
    qryContacts2MSCContactsType_id: TIntegerField;
    qryContacts2MSCContactsSurname: TWideStringField;
    qryContacts2MSCContactsName: TWideStringField;
    qryContacts2MSCContactsemail: TWideStringField;
    qryContacts2MSCContactsPhone: TWideStringField;
    qryContacts2MSCContactsFAX: TWideStringField;
    qryContacts2MSCContactsMobile: TWideStringField;
    qryContacts2MSCContactsSendMail: TBooleanField;
    qryContacts2MSCContactsSendFax: TBooleanField;
    qryContacts2MSCContactsSendPrint: TBooleanField;
    dsContacts2MSC: TDataSource;
    dtsGarantie: TDataSource;
    Garantie: TADOTable;
    GarantieGarantieId: TAutoIncField;
    GarantieGarantieName: TWideStringField;
    GarantieInsUsr: TIntegerField;
    GarantieInsDT: TDateTimeField;
    GarantieUpdUsr: TIntegerField;
    GarantieUpdDT: TDateTimeField;
    GarantieDeleted: TBooleanField;
    GarantieDelUsr: TIntegerField;
    GarantieDelDT: TDateTimeField;
    GarantieInActive: TBooleanField;
    GarantieInActiveUsr: TIntegerField;
    GarantieInActiveDt: TDateTimeField;
    dtsSALESMEN: TDataSource;
    SALESMEN: TADOTable;
    dtsDIAK: TDataSource;
    DIAK: TADOTable;
    qryENHMLOCALL: TADOQuery;
    dtsENHMLOCALL: TDataSource;
    qryENHMLOCALLENHMLOCALLID: TAutoIncField;
    qryENHMLOCALLENHMLOCALLFR: TDateTimeField;
    qryENHMLOCALLENHMLOCALLTO: TDateTimeField;
    qryENHMLOCALLENHMLOCALLIS: TDateTimeField;
    qryENHMLOCALLINSDT: TDateTimeField;
    qryENHMLOCALLUPDDT: TDateTimeField;
    qryENHMLOCALLINSUSR: TIntegerField;
    qryENHMLOCALLUPDUSR: TIntegerField;
    qryENHMLOCALLTEXT: TWideStringField;
    qryENHMEMCALL: TADOQuery;
    dtsENHMEMCALL: TDataSource;
    qryENHMEMCALLENCCALLID: TAutoIncField;
    qryENHMEMCALLCOMPANY: TDateTimeField;
    qryENHMEMCALLPELATESENHMFR: TIntegerField;
    qryENHMEMCALLINSDT: TDateTimeField;
    qryENHMEMCALLUPDDT: TDateTimeField;
    qryENHMEMCALLINSUSR: TIntegerField;
    qryENHMEMCALLUPDUSR: TIntegerField;
    dtsCompanyType: TDataSource;
    CompanyType: TADOTable;
    ContactsOldCode: TIntegerField;
    ContactsOldType: TIntegerField;
    ContactsComments: TMemoField;
    qryAcardGroupMain: TADOQuery;
    qryAcardGroupMainAcardGroupId: TIntegerField;
    qryAcardGroupMainDescr: TWideStringField;
    qryAcardGroupMainPAcardGroupId: TIntegerField;
    qryAcardGroupDetail: TADOQuery;
    qryAcardGroupDetailAcardGroupId: TIntegerField;
    qryAcardGroupDetailAcardId: TIntegerField;
    dtsAcardGroupMain: TDataSource;
    dtsAcardGroupDetail: TDataSource;
    qryAcardGroupDetailLAcardGroupDescr: TStringField;
    qryAcardGroupDetailLACardCode: TStringField;
    qryVAcard: TADOQuery;
    qryVAcardACARDID: TIntegerField;
    qryVAcardACARDCODE: TWideStringField;
    qryVAcardCUSTOMERID: TIntegerField;
    qryVAcardISSUEDATE: TDateTimeField;
    qryVAcardEXPIREDATE: TDateTimeField;
    qryVAcardMETERBOOLEAN: TBooleanField;
    qryVAcardPINBOOLEAN: TBooleanField;
    qryVAcardINSDT: TDateTimeField;
    qryVAcardUPDDT: TDateTimeField;
    qryVAcardINSUSR: TIntegerField;
    qryVAcardUPDUSR: TIntegerField;
    qryVAcardSTARTDATE: TDateTimeField;
    qryVAcardVTYPEID: TIntegerField;
    qryVAcardCREATEBOOLEAN: TBooleanField;
    qryVAcardBLACKLISTBOOLEAN: TBooleanField;
    qryVAcardBLACKLISTDATE: TDateTimeField;
    qryVAcardBLACKLISTUSR: TIntegerField;
    qryVAcardBLACKLISTNOTES: TWideStringField;
    qryVAcardIGROUPID1: TIntegerField;
    qryVAcardIGROUPID2: TIntegerField;
    qryVAcardIGROUPID3: TIntegerField;
    qryVAcardIGROUPID4: TIntegerField;
    qryVAcardDAYAMOUNT: TFloatField;
    qryVAcardMONTHAMOUNT: TFloatField;
    qryVAcardREGNO: TWideStringField;
    qryVAcardACARDHOLDER: TWideStringField;
    qryVAcardISACTIVE: TBooleanField;
    qryVAcardEXPIREPHDATE: TDateTimeField;
    qryVAcardEXPIRELODATE: TDateTimeField;
    qryVAcardIGROUPID5: TIntegerField;
    qryVAcardEMPLOYEESID: TIntegerField;
    qryVAcardNEWCARDBOOLEAN: TBooleanField;
    qryVAcardNEWCARDID: TIntegerField;
    qryVAcardCOSTCENTERID: TIntegerField;
    qryVAcardAcardCodeFull: TWideStringField;
    qryVAcardPending: TBooleanField;
    qryVAcardAcardCodeFull000: TWideStringField;
    qryVAcardCARDHASEMPNAME: TBooleanField;
    qryVAcardACARDCODENUM: TIntegerField;
    qryVAcardINACTIVEDATE: TDateTimeField;
    qryVAcardINACTIVEUSR: TIntegerField;
    qryVAcardINACTIVENOTES: TWideStringField;
    qryVAcardIGROUPID6: TIntegerField;
    qryVAcardIGROUPID7: TIntegerField;
    qryVAcardIGROUPID8: TIntegerField;
    qryVAcardIGROUPID9: TIntegerField;
    qryVAcardIGROUPID10: TIntegerField;
    dtsVAcard: TDataSource;
    qryAcardRNGroupMain: TADOQuery;
    qryAcardRNGroupDetail: TADOQuery;
    dtsAcardRNGroupMain: TDataSource;
    dtsAcardRNGroupDetail: TDataSource;
    qryAcardRNGroupMainAcardRNGroupId: TAutoIncField;
    qryAcardRNGroupMainDescr: TWideStringField;
    qryAcardRNGroupDetailAcardRGGroupId: TIntegerField;
    qryAcardRNGroupDetailRegNo: TWideStringField;
    qryAcardRNGroupDetailLAcardRNGroupDescr: TStringField;
    qryACardRNGroupView: TADOQuery;
    dtsACardRNGroupView: TDataSource;
    qryACardRNGroupViewACARDACARDID: TIntegerField;
    qryACardRNGroupViewAcardRNGroupMainDescr: TWideStringField;
    qryACardRNGroupViewACARDACARDCODE: TWideStringField;
    qryACardRNGroupViewACARDEXPIREDATE: TDateTimeField;
    qryACardRNGroupViewACARDBLACKLISTBOOLEAN: TBooleanField;
    qryACardRNGroupViewACARDDAYAMOUNT: TFloatField;
    qryACardRNGroupViewACARDMONTHAMOUNT: TFloatField;
    qryACardRNGroupViewACARDACARDHOLDER: TWideStringField;
    qryACardRNGroupViewACARDISACTIVE: TBooleanField;
    qryACardRNGroupViewACARDEMPLOYEESID: TIntegerField;
    qryACardRNGroupViewAcardRNGroupMainAcardRNGroupId: TIntegerField;
    qryACardRNGroupViewAcardRNGroupDetailRegNo: TWideStringField;
    qryACardRNGroupViewAcardRNGroupDetailAcardRGGroupId: TIntegerField;
    qryACardRNGroupViewAcardAcardCodeFull: TWideStringField;
    qryMSTOuter: TADOQuery;
    dtsMSTOuter: TDataSource;
    qryMSTOuterMerchantName: TWideStringField;
    qryMSTOuterStationStreet: TWideStringField;
    qryMSTOuterStationCity: TWideStringField;
    qryMSTOuterStationZIP: TWideStringField;
    qryMSTOuterTerminalidTerminalCode: TWideStringField;
    qryMSTOuterFax: TWideStringField;
    qryMSTOuterPhone: TWideStringField;
    qryView_2Contacts2: TADOQuery;
    qryView_2Contacts2ConParid: TIntegerField;
    qryView_2Contacts2ParId: TIntegerField;
    qryView_2Contacts2ContactId: TIntegerField;
    qryView_2Contacts2FromWhere: TIntegerField;
    qryView_2Contacts2FromWhere0: TIntegerField;
    qryView_2Contacts2Name: TWideStringField;
    qryView_2Contacts2Surname: TWideStringField;
    qryView_2Contacts2email: TWideStringField;
    qryView_2Contacts2Phone: TWideStringField;
    qryView_2Contacts2Fax: TWideStringField;
    qryView_2Contacts2Mobile: TWideStringField;
    qryView_2Contacts2Name0: TWideStringField;
    qryView_2Contacts2CUSTOMERID0: TIntegerField;
    dtsView_2Contacts2: TDataSource;
    procedure DMSubParamsCreate(Sender: TObject);
    procedure GenBeforePost(DataSet: TDataSet);
    procedure dsCountryStateChange(Sender: TObject);
    procedure ConnUPIPFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
  public
    MainTable: TTable;
    procedure DeleteRecord; override;
    procedure DeleteNamedRecord(DataSet: TDataSet); override;
    procedure InsertRecord; override;
    procedure SelectImage(dlg: TOpenPictureDialog; field: TBlobField);
  end;

implementation

uses DMain;

{$R *.DFM}

procedure TDMSubParams11.InsertRecord;
begin
end;

procedure TDMSubParams11.DMSubParamsCreate(Sender: TObject);
begin
  DMCreate(TForm(self));
end;

procedure TDMSubParams11.GenBeforePost(DataSet: TDataSet);
begin
  BeforePost(DataSet);
end;

procedure TDMSubParams11.DeleteRecord;
begin
end;

procedure TDMSubParams11.ConnUPIPFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept := True;

end;

procedure TDMSubParams11.DeleteNamedRecord(DataSet: TDataSet);
begin
  DataSet.Delete;
end;

procedure TDMSubParams11.dsCountryStateChange(Sender: TObject);
begin
  ParamStateChange(Sender);
end;

procedure TDMSubParams11.SelectImage(dlg: TOpenPictureDialog; field: TBlobField);
var
  stream: TBlobStream;
  image: TPicture;
  ds: TDataSet;
begin
  image  := nil;
  stream := nil;
  ds     := field.DataSet;
  try
    if dlg.Execute then
      begin
        if (ds.State = dsBrowse) then
          if ds.Eof and ds.Bof then
            ds.Insert
          else
            ds.Edit;
        image           := TPicture.Create;
        stream          := TBlobStream.Create(field, bmWrite);
        stream.Position := 0;
        image.LoadFromFile(dlg.FileName);
        image.Graphic.SaveToStream(stream);
      end;
  finally
    image.Free;
    stream.Free;
  end;
end;

end.
