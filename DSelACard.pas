unit DSelACard;

interface

uses
  System.SysUtils, System.Classes, DBase, DMain, Common,
  Forms, Data.DB, Data.Win.ADODB;

type
  TDMSelAcard = class(TDMBase)
    qryACard: TADOQuery;
    dtsACard: TDataSource;
    qryACardACARDACARDID: TIntegerField;
    qryACardACARDACARDCODE: TWideStringField;
    qryACardACARDCUSTOMERID0: TIntegerField;
    qryACardACARDISSUEDATE: TDateTimeField;
    qryACardACARDEXPIREDATE: TDateTimeField;
    qryACardACARDMETERBOOLEAN: TBooleanField;
    qryACardACARDPINBOOLEAN: TBooleanField;
    qryACardACARDINSDT: TDateTimeField;
    qryACardACARDUPDDT: TDateTimeField;
    qryACardACARDINSUSR: TIntegerField;
    qryACardACARDUPDUSR: TIntegerField;
    qryACardACARDSTARTDATE: TDateTimeField;
    qryACardACARDVTYPEID: TIntegerField;
    qryACardACARDCREATEBOOLEAN: TBooleanField;
    qryACardACARDBLACKLISTBOOLEAN: TBooleanField;
    qryACardACARDBLACKLISTDATE: TDateTimeField;
    qryACardACARDBLACKLISTUSR: TIntegerField;
    qryACardACARDBLACKLISTNOTES: TWideStringField;
    qryACardACARDIGROUPID1: TIntegerField;
    qryACardACARDIGROUPID2: TIntegerField;
    qryACardACARDIGROUPID3: TIntegerField;
    qryACardACARDIGROUPID4: TIntegerField;
    qryACardDAYAMOUNT: TFloatField;
    qryACardMONTHAMOUNT: TFloatField;
    qryACardREGNO: TWideStringField;
    qryACardACARDHOLDER: TWideStringField;
    qryACardISACTIVE: TBooleanField;
    qryACardEXPIREPHDATE: TDateTimeField;
    qryACardEXPIRELODATE: TDateTimeField;
    qryACardACARDIGROUPID5: TIntegerField;
    qryACardEMPLOYEESID: TIntegerField;
    qryACardNEWCARDBOOLEAN: TBooleanField;
    qryACardNEWCARDID: TIntegerField;
    qryACardCARDHASEMPNAME: TBooleanField;
    qryACardACARDCODENUM: TIntegerField;
    qryACardINACTIVEDATE: TDateTimeField;
    qryACardINACTIVEUSR: TIntegerField;
    qryACardINACTIVENOTES: TWideStringField;
    qryACardACARDIGROUPID6: TIntegerField;
    qryACardACARDIGROUPID7: TIntegerField;
    qryACardACARDIGROUPID8: TIntegerField;
    qryACardACARDIGROUPID9: TIntegerField;
    qryACardACARDIGROUPID10: TIntegerField;
    qryACardCOSTCENTERID: TIntegerField;
    qryACardVTypeDescr: TWideStringField;
    qryACardCClassDescr: TWideStringField;
    qryACardCUSTOMERDescr: TWideStringField;
    qryACardCUSTOMERName: TWideStringField;
    qryACardCGroupDescr: TWideStringField;
    qryACardAcardCUSTOMERId: TIntegerField;
    qryACardCUSTOMERStreet: TWideStringField;
    qryACardCUSTOMERZip: TWideStringField;
    qryACardCUSTOMERCity: TWideStringField;
    qryACardCUSTOMERSAPCODE: TWideStringField;
    qryACardCUSTOMERHASDETAILEMP: TBooleanField;
    qryACardCUSTOMERCUSTOMERID: TIntegerField;
    qryACardCUSTOMERISTEST: TBooleanField;
    qryACardCostCenterCCName: TWideStringField;
    qryACardName: TWideStringField;
    qryACardSurname: TWideStringField;
    qryACardemail: TWideStringField;
    qryACardPhone: TWideStringField;
    qryACardFax: TWideStringField;
    qryACardMobile: TWideStringField;
    qryACardMailORFax: TIntegerField;
    qryACardACARDPENDING: TBooleanField;
    qryVType: TADOQuery;
    dtsVType: TDataSource;
    qryVTypeVTYPEID: TIntegerField;
    qryVTypeDESCR: TWideStringField;
    qryVTypeINSDT: TDateTimeField;
    qryVTypeUPDDT: TDateTimeField;
    qryVTypeINSUSR: TIntegerField;
    qryVTypeUPDUSR: TIntegerField;
    qryACardLVType: TStringField;
    qryCustomer: TADOQuery;
    dtsCustomer: TDataSource;
    qryCustomerCUSTOMERID: TIntegerField;
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
    qryCustomerGarantieId: TIntegerField;
    qryCustomerGarantieAmount: TFloatField;
    qryCustomerComments: TMemoField;
    qryACardLCustomer: TStringField;
    qryACard_Empty: TADOQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    IntegerField2: TIntegerField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    IntegerField5: TIntegerField;
    BooleanField3: TBooleanField;
    BooleanField4: TBooleanField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    BooleanField5: TBooleanField;
    IntegerField12: TIntegerField;
    BooleanField6: TBooleanField;
    BooleanField7: TBooleanField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    IntegerField22: TIntegerField;
    WideStringField14: TWideStringField;
    BooleanField10: TBooleanField;
    StringField1: TStringField;
    StringField2: TStringField;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1ACARDACARDID: TIntegerField;
    qryACard_EmptyLAcardFull: TStringField;
    ADOQuery1AcardCodeFull000: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }

{$R *.dfm}

procedure TDMSelAcard.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMCreate(TForm(self));
end;

end.
