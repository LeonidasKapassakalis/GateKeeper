unit DispCompDataDM;

interface

uses
  SysUtils, Classes, dxmdaset, DB, ADODB, DBClient, DMain, Common, Forms;

type
  TDMDispCompData = class(TDataModule)
    qryStation: TADOQuery;
    dsStation: TDataSource;
    dsACard: TDataSource;
    qACard: TADOQuery;
    dtsmemCustomer: TDataSource;
    memCustomer: TdxMemData;
    qCustomer: TADOQuery;
    dsCustomer: TDataSource;
    qryTranC: TADOQuery;
    dsTran: TDataSource;
    qryTranCTRANCID: TAutoIncField;
    qryTranCCUSTOMERID: TIntegerField;
    qryTranCDEBIT: TFloatField;
    qryTranCCREDIT: TFloatField;
    qryTranCTTEXT: TWideStringField;
    qryTranCTRANCDATE: TDateTimeField;
    qryTranCTRANBCID: TIntegerField;
    qryTranCINSDT: TDateTimeField;
    qryTranCUPDDT: TDateTimeField;
    qryTranCINSUSR: TIntegerField;
    qryTranCUPDUSR: TIntegerField;
    qryTranCCYpol: TCurrencyField;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1COMP_CODE: TStringField;
    ClientDataSet1CUSTOMER: TStringField;
    ClientDataSet1SP_GL_IND: TStringField;
    ClientDataSet1CLEAR_DATE: TDateField;
    ClientDataSet1CLR_DOC_NO: TStringField;
    ClientDataSet1ALLOC_NUMR: TStringField;
    ClientDataSet1FISC_YEAR: TIntegerField;
    ClientDataSet1DOC_NO: TStringField;
    ClientDataSet1ITEM_NUM: TIntegerField;
    ClientDataSet1PSTNG_DATE: TDateField;
    ClientDataSet1DOC_DATE: TDateField;
    ClientDataSet1ENTRY_DATE: TDateField;
    ClientDataSet1CURRENCY: TStringField;
    ClientDataSet1LOC_CURR: TStringField;
    ClientDataSet1REF_DOC_NUM: TStringField;
    ClientDataSet1DOC_TYPE: TStringField;
    ClientDataSet1FIS_PERIOD: TIntegerField;
    ClientDataSet1POST_KEY: TStringField;
    ClientDataSet1DB_CR_IND: TStringField;
    ClientDataSet1BUS_AREA: TStringField;
    ClientDataSet1TAX_CODE: TStringField;
    ClientDataSet1LC_AMOUNT: TCurrencyField;
    ClientDataSet1AMT_DOCCUR: TCurrencyField;
    ClientDataSet1LC_TAX: TCurrencyField;
    ClientDataSet1TX_DOC_CUR: TCurrencyField;
    ClientDataSet1ITEM_TEXT: TStringField;
    ClientDataSet1BRANCH: TStringField;
    ClientDataSet1BLINE_DATE: TDateField;
    ClientDataSet1PMNTTRMS: TStringField;
    ClientDataSet1DSCT_DAYS1: TIntegerField;
    ClientDataSet1DSCT_DAYS2: TIntegerField;
    ClientDataSet1AMOUNT: TCurrencyField;
    ClientDataSet1NET_AMOUNT: TCurrencyField;
    ClientDataSet1T_CURRENCY: TStringField;
    ClientDataSet1INV_REF: TStringField;
    ClientDataSet1INV_YEAR: TIntegerField;
    ClientDataSet1INV_ITEM: TIntegerField;
    DataSource1: TDataSource;
    ClientDataSet2: TClientDataSet;
    ClientDataSet2BlartDate: TDateField;
    ClientDataSet2Credit: TCurrencyField;
    ClientDataSet2Debit: TCurrencyField;
    DataSource2: TDataSource;
    ClientDataSet1SumofAmount: TAggregateField;
    ClientDataSet1CountAmount: TAggregateField;
    ClientDataSet1Credit: TCurrencyField;
    ClientDataSet1Debit: TCurrencyField;
    ClientDataSet2DueDate: TDateField;
    ClientDataSet2Payment: TIntegerField;
    ClientDataSet2TotAmount: TCurrencyField;
    ClientDataSet2OverDue: TIntegerField;
    qCustomerCUSTOMERID: TAutoIncField;
    qCustomerNAME: TWideStringField;
    qCustomerSTREET: TWideStringField;
    qCustomerZIP: TWideStringField;
    qCustomerCITY: TWideStringField;
    qCustomerAFM: TWideStringField;
    qCustomerDOY: TWideStringField;
    qCustomerSTARTDATE: TDateTimeField;
    qCustomerAREAID: TIntegerField;
    qCustomerLOCATIONID: TIntegerField;
    qCustomerCGROUPID: TIntegerField;
    qCustomerCCLASSID: TIntegerField;
    qCustomerCREDITAMOUNT: TFloatField;
    qCustomerINSDT: TDateTimeField;
    qCustomerUPDDT: TDateTimeField;
    qCustomerINSUSR: TIntegerField;
    qCustomerUPDUSR: TIntegerField;
    qCustomerPROFESSION: TWideStringField;
    qCustomerBRANCHID: TIntegerField;
    qCustomerSAPCODE: TWideStringField;
    qCustomerISACTIVE: TBooleanField;
    qCustomerSALESMENID: TIntegerField;
    qCustomerDIAKID: TIntegerField;
    qCustomerISTEST: TBooleanField;
    qCustomerISCONS: TBooleanField;
    qCustomerAREABID: TIntegerField;
    qCustomerDATEPHEND: TDateTimeField;
    qCustomerDATELOEND: TDateTimeField;
    qCustomerHASDETAILEMP: TBooleanField;
    qCustomerALLCARDSTOBL: TBooleanField;
    qCustomerALLCARDSTOBLDATE: TDateTimeField;
    qCustomerALLCARDSTOBLSYSDATE: TDateTimeField;
    qCustomerALLCARDSTOBLUSR: TIntegerField;
    qCustomerCUSTOMEROFF: TBooleanField;
    qCustomerCUSTOMEROFFDATE: TDateTimeField;
    qCustomerCUSTOMEROFFSYSDATE: TDateTimeField;
    qCustomerCUSTOMEROFFUSR: TIntegerField;
    qCustomerCARDHASEMPNAME: TBooleanField;
    qCustomerDATEEND: TDateTimeField;
    qCustomerCompanyTypeId: TIntegerField;
    qCustomerGarantieId: TIntegerField;
    qCustomerGarantieAmount: TBCDField;
    qCustomerComments: TMemoField;
    memCustomerCustomerId: TIntegerField;
    memCustomerLSAPCode: TStringField;
    qryStationCUSTOMERID: TAutoIncField;
    qryStationNAME: TWideStringField;
    qryStationSTREET: TWideStringField;
    qryStationZIP: TWideStringField;
    qryStationCITY: TWideStringField;
    qryStationAFM: TWideStringField;
    qryStationDOY: TWideStringField;
    qryStationSTARTDATE: TDateTimeField;
    qryStationAREAID: TIntegerField;
    qryStationLOCATIONID: TIntegerField;
    qryStationCGROUPID: TIntegerField;
    qryStationCCLASSID: TIntegerField;
    qryStationCREDITAMOUNT: TFloatField;
    qryStationINSDT: TDateTimeField;
    qryStationUPDDT: TDateTimeField;
    qryStationINSUSR: TIntegerField;
    qryStationUPDUSR: TIntegerField;
    qryStationPROFESSION: TWideStringField;
    qryStationBRANCHID: TIntegerField;
    qryStationSAPCODE: TWideStringField;
    qryStationISACTIVE: TBooleanField;
    qryStationSALESMENID: TIntegerField;
    qryStationDIAKID: TIntegerField;
    qryStationISTEST: TBooleanField;
    qryStationISCONS: TBooleanField;
    qryStationAREABID: TIntegerField;
    qryStationDATEPHEND: TDateTimeField;
    qryStationDATELOEND: TDateTimeField;
    qryStationHASDETAILEMP: TBooleanField;
    qryStationALLCARDSTOBL: TBooleanField;
    qryStationALLCARDSTOBLDATE: TDateTimeField;
    qryStationALLCARDSTOBLSYSDATE: TDateTimeField;
    qryStationALLCARDSTOBLUSR: TIntegerField;
    qryStationCUSTOMEROFF: TBooleanField;
    qryStationCUSTOMEROFFDATE: TDateTimeField;
    qryStationCUSTOMEROFFSYSDATE: TDateTimeField;
    qryStationCUSTOMEROFFUSR: TIntegerField;
    qryStationCARDHASEMPNAME: TBooleanField;
    qryStationDATEEND: TDateTimeField;
    qryStationCompanyTypeId: TIntegerField;
    qryStationGarantieId: TIntegerField;
    qryStationGarantieAmount: TBCDField;
    qryStationComments: TMemoField;
    qACardACARDID: TAutoIncField;
    qACardACARDCODE: TWideStringField;
    qACardCUSTOMERID: TIntegerField;
    qACardISSUEDATE: TDateTimeField;
    qACardEXPIREDATE: TDateTimeField;
    qACardMETERBOOLEAN: TBooleanField;
    qACardPINBOOLEAN: TBooleanField;
    qACardINSDT: TDateTimeField;
    qACardUPDDT: TDateTimeField;
    qACardINSUSR: TIntegerField;
    qACardUPDUSR: TIntegerField;
    qACardSTARTDATE: TDateTimeField;
    qACardVTYPEID: TIntegerField;
    qACardCREATEBOOLEAN: TBooleanField;
    qACardBLACKLISTBOOLEAN: TBooleanField;
    qACardBLACKLISTDATE: TDateTimeField;
    qACardBLACKLISTUSR: TIntegerField;
    qACardBLACKLISTNOTES: TWideStringField;
    qACardIGROUPID1: TIntegerField;
    qACardIGROUPID2: TIntegerField;
    qACardIGROUPID3: TIntegerField;
    qACardIGROUPID4: TIntegerField;
    qACardDAYAMOUNT: TFloatField;
    qACardMONTHAMOUNT: TFloatField;
    qACardREGNO: TWideStringField;
    qACardACARDHOLDER: TWideStringField;
    qACardISACTIVE: TBooleanField;
    qACardEXPIREPHDATE: TDateTimeField;
    qACardEXPIRELODATE: TDateTimeField;
    qACardIGROUPID5: TIntegerField;
    qACardEMPLOYEESID: TIntegerField;
    qACardNEWCARDBOOLEAN: TBooleanField;
    qACardNEWCARDID: TIntegerField;
    qACardCARDHASEMPNAME: TBooleanField;
    qACardACARDCODENUM: TIntegerField;
    qACardINACTIVEDATE: TDateTimeField;
    qACardINACTIVEUSR: TIntegerField;
    qACardINACTIVENOTES: TWideStringField;
    qACardIGROUPID6: TIntegerField;
    qACardIGROUPID7: TIntegerField;
    qACardIGROUPID8: TIntegerField;
    qACardIGROUPID9: TIntegerField;
    qACardIGROUPID10: TIntegerField;
    qACardCOSTCENTERID: TIntegerField;
    qACardAcardCodeFull: TWideStringField;
    dtsContacts: TDataSource;
    qryContacts: TADOQuery;
    qryContactsContactType_Procedure: TWideStringField;
    qryContactsContactsName: TWideStringField;
    qryContactsContactsSurname: TWideStringField;
    qryContactsemail: TWideStringField;
    qryContactsPhone: TWideStringField;
    qryContactsFax: TWideStringField;
    qryContactsMobile: TWideStringField;
    qryContactsSendMail: TBooleanField;
    qryContactsSendFax: TBooleanField;
    qryContactsSendPrint: TBooleanField;
    qryContactsMain: TBooleanField;
    qryContactsAA: TIntegerField;
    qryContactsCUSTOMERID: TIntegerField;
    qryContactsContactTypeId: TIntegerField;
    qryContactsCustomerName: TWideStringField;
    memCustomerDateFrom: TDateTimeField;
    procedure qACardCalcFields(DataSet: TDataSet);
    procedure qryTranCCalcFields(DataSet: TDataSet);
    procedure ClientDataSet1SumofAmountGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure ClientDataSet1CountAmountGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure ClientDataSet1CalcFields(DataSet: TDataSet);
    procedure qryTranCBeforeScroll(DataSet: TDataSet);
    procedure qryTranCBeforeOpen(DataSet: TDataSet);
    procedure qryTranCBeforeRefresh(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    CalcCredit, CalcDebit: Currency;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TDMDispCompData.qACardCalcFields(DataSet: TDataSet);
begin
  // QACardFullCardNo.AsString:=GeneralDm.ReturnFullIdNo(qACardAcardCode.AsInteger);
end;

procedure TDMDispCompData.qryTranCCalcFields(DataSet: TDataSet);
begin
  // CalcCredit := CalcCredit + qTranCCREDIT.AsCurrency;
  // CalcDebit   := CalcDebit  + qTranCDebit.AsCurrency;
  // if qTranCCYpol.IsNull then
  // qTranCCYpol.AsCurrency:=CalcDebit - CalcCredit;
end;

procedure TDMDispCompData.ClientDataSet1SumofAmountGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if gbLast in ClientDataSet1.GetGroupState(1) then
    try
      Text := floattostr(Sender.Value)
    except
      Text := ''
    end
  else
    Text := '';
end;

procedure TDMDispCompData.DataModuleCreate(Sender: TObject);
begin
  DMCreate(TForm(self));
  memCustomer.Active := True;
end;

procedure TDMDispCompData.ClientDataSet1CountAmountGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if gbLast in ClientDataSet1.GetGroupState(1) then
    try
      Text := inttostr(Sender.Value)
    except
      Text := ''
    end
  else
    Text := '';
end;

procedure TDMDispCompData.ClientDataSet1CalcFields(DataSet: TDataSet);
begin
  if ClientDataSet1DB_CR_IND.AsString = 'S' then
    begin
      ClientDataSet1Debit.AsCurrency  := ClientDataSet1AMOUNT.AsCurrency;
      ClientDataSet1Credit.AsCurrency := 0;
    end
  else
    begin
      ClientDataSet1Debit.AsCurrency  := 0;
      ClientDataSet1Credit.AsCurrency := ClientDataSet1AMOUNT.AsCurrency;
    end;
end;

procedure TDMDispCompData.qryTranCBeforeScroll(DataSet: TDataSet);
begin
  CalcCredit := 0;
  CalcDebit  := 0;
end;

procedure TDMDispCompData.qryTranCBeforeOpen(DataSet: TDataSet);
begin
  CalcCredit := 0;
  CalcDebit  := 0;
end;

procedure TDMDispCompData.qryTranCBeforeRefresh(DataSet: TDataSet);
begin
  CalcCredit := 0;
  CalcDebit  := 0;
end;

end.
