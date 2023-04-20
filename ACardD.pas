Unit ACardD;

Interface

Uses
  SysUtils, Classes, DB, ADODB, dxmdaset, Dialogs, Variants, Common, Forms, System.StrUtils;

Type
  TACardDM = Class(TDataModule)
    qryBrowser: TADOQuery;
    dtsBrowser: TDataSource;
    qryACard: TADOQuery;
    dtsACard: TDataSource;
    dtsCustomer: TDataSource;
    qryCustomer: TADOQuery;
    qryBlackList: TADOQuery;
    qryBlackListBLACKLISTID: TAutoIncField;
    qryBlackListACARDID: TIntegerField;
    qryBlackListFRDATE: TDateTimeField;
    qryBlackListTODATE: TDateTimeField;
    qryBlackListNOTES: TWideStringField;
    qryBlackListINSDT: TDateTimeField;
    qryBlackListUPDDT: TDateTimeField;
    qryBlackListINSUSR: TIntegerField;
    qryBlackListUPDUSR: TIntegerField;
    dtsBlackList: TDataSource;
    qryAuxACard: TADOQuery;
    qryAuxACardACARDID: TAutoIncField;
    qryAuxACardACARDCODE: TWideStringField;
    qryAuxACardCUSTOMERID: TIntegerField;
    qryAuxACardISSUEDATE: TDateTimeField;
    qryAuxACardEXPIREDATE: TDateTimeField;
    qryAuxACardMETERBOOLEAN: TBooleanField;
    qryAuxACardPINBOOLEAN: TBooleanField;
    qryAuxACardINSDT: TDateTimeField;
    qryAuxACardUPDDT: TDateTimeField;
    qryAuxACardINSUSR: TIntegerField;
    qryAuxACardUPDUSR: TIntegerField;
    qryAuxACardSTARTDATE: TDateTimeField;
    qryAuxACardVTYPEID: TIntegerField;
    qryAuxACardCREATEBOOLEAN: TBooleanField;
    qryAuxACardBLACKLISTBOOLEAN: TBooleanField;
    qryAuxACardBLACKLISTDATE: TDateTimeField;
    qryAuxACardBLACKLISTUSR: TIntegerField;
    qryAuxACardBLACKLISTNOTES: TWideStringField;
    qryAuxACardIGROUPID1: TIntegerField;
    qryAuxACardIGROUPID2: TIntegerField;
    qryAuxACardIGROUPID3: TIntegerField;
    qryAuxACardIGROUPID4: TIntegerField;
    qryAuxACardDAYAMOUNT: TFloatField;
    qryAuxACardMONTHAMOUNT: TFloatField;
    qryAuxACardREGNO: TWideStringField;
    qryRegNoSeq: TADOQuery;
    qryRegNoSeqREGNO: TWideStringField;
    qryACardFullCardNo: TStringField;
    qryRegNoSeqREGNOSEQID: TIntegerField;
    qryRegNoCount: TADOQuery;
    qryRegNoCountRecCount: TIntegerField;
    qryRegNoExceptCount: TADOQuery;
    qryRegNoExc: TADOQuery;
    qryRegNoExcREGNOEXCEPTID: TIntegerField;
    qryRegNoExceptCountRecCount: TIntegerField;
    dtsEmployees: TDataSource;
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
    qryEmployees0: TADOQuery;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    IntegerField3: TIntegerField;
    qryACardCopy: TADOQuery;
    qryNewACard: TADOQuery;
    qryVType: TADOQuery;
    qryVTypeVTYPEID: TAutoIncField;
    qryVTypeDESCR: TWideStringField;
    qryVTypeINSDT: TDateTimeField;
    qryVTypeUPDDT: TDateTimeField;
    qryVTypeINSUSR: TIntegerField;
    qryVTypeUPDUSR: TIntegerField;
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
    qryIGroup: TADOQuery;
    dtsIGroup: TDataSource;
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
    qryIGroupId: TAutoIncField;
    qryIGroupName: TWideStringField;
    dtsCostCenter: TDataSource;
    dtsVType: TDataSource;
    qryCustomerDetail: TADOQuery;
    qryCustomerDetailCustomerId: TAutoIncField;
    qryCustomerDetailHASDETAILEMP: TBooleanField;
    qryCustomerCostCenter: TADOQuery;
    qryCustomerCostCenterCnt: TIntegerField;
    memWS: TdxMemData;
    memWSPCustomerId: TIntegerField;
    dtsmemWS: TDataSource;
    qryBrowserAcardId: TIntegerField;
    qryBrowserACARDACARDID: TIntegerField;
    qryBrowserACARDACARDCODE: TWideStringField;
    qryBrowserACARDCUSTOMERID0: TIntegerField;
    qryBrowserACARDISSUEDATE: TDateTimeField;
    qryBrowserACARDEXPIREDATE: TDateTimeField;
    qryBrowserACARDMETERBOOLEAN: TBooleanField;
    qryBrowserACARDPINBOOLEAN: TBooleanField;
    qryBrowserACARDINSDT: TDateTimeField;
    qryBrowserACARDUPDDT: TDateTimeField;
    qryBrowserACARDINSUSR: TIntegerField;
    qryBrowserACARDUPDUSR: TIntegerField;
    qryBrowserACARDSTARTDATE: TDateTimeField;
    qryBrowserACARDVTYPEID: TIntegerField;
    qryBrowserACARDCREATEBOOLEAN: TBooleanField;
    qryBrowserACARDBLACKLISTBOOLEAN: TBooleanField;
    qryBrowserACARDBLACKLISTDATE: TDateTimeField;
    qryBrowserACARDBLACKLISTUSR: TIntegerField;
    qryBrowserACARDBLACKLISTNOTES: TWideStringField;
    qryBrowserACARDIGROUPID1: TIntegerField;
    qryBrowserACARDIGROUPID2: TIntegerField;
    qryBrowserACARDIGROUPID3: TIntegerField;
    qryBrowserACARDIGROUPID4: TIntegerField;
    qryBrowserDAYAMOUNT: TFloatField;
    qryBrowserMONTHAMOUNT: TFloatField;
    qryBrowserREGNO: TWideStringField;
    qryBrowserACARDHOLDER: TWideStringField;
    qryBrowserISACTIVE: TBooleanField;
    qryBrowserEXPIREPHDATE: TDateTimeField;
    qryBrowserEXPIRELODATE: TDateTimeField;
    qryBrowserACARDIGROUPID5: TIntegerField;
    qryBrowserEMPLOYEESID: TIntegerField;
    qryBrowserNEWCARDBOOLEAN: TBooleanField;
    qryBrowserNEWCARDID: TIntegerField;
    qryBrowserCARDHASEMPNAME: TBooleanField;
    qryBrowserACARDCODENUM: TIntegerField;
    qryBrowserINACTIVEDATE: TDateTimeField;
    qryBrowserINACTIVEUSR: TIntegerField;
    qryBrowserINACTIVENOTES: TWideStringField;
    qryBrowserACARDIGROUPID6: TIntegerField;
    qryBrowserACARDIGROUPID7: TIntegerField;
    qryBrowserACARDIGROUPID8: TIntegerField;
    qryBrowserACARDIGROUPID9: TIntegerField;
    qryBrowserACARDIGROUPID10: TIntegerField;
    qryBrowserCOSTCENTERID: TIntegerField;
    qryBrowserVTypeDescr: TWideStringField;
    qryBrowserCClassDescr: TWideStringField;
    qryBrowserCUSTOMERDescr: TWideStringField;
    qryBrowserCUSTOMERName: TWideStringField;
    qryBrowserCGroupDescr: TWideStringField;
    qryBrowserAcardCUSTOMERId: TIntegerField;
    qryBrowserCUSTOMERStreet: TWideStringField;
    qryBrowserCUSTOMERZip: TWideStringField;
    qryBrowserCUSTOMERCity: TWideStringField;
    qryBrowserCUSTOMERSAPCODE: TWideStringField;
    qryBrowserCUSTOMERHASDETAILEMP: TBooleanField;
    qryBrowserCUSTOMERCUSTOMERID: TIntegerField;
    qryBrowserCUSTOMERISTEST: TBooleanField;
    qryBrowserACARDPENDING: TBooleanField;
    qryBrowserAcardCodeFull: TWideStringField;
    qryACardCopyACARDID: TAutoIncField;
    qryACardCopyACARDCODE: TWideStringField;
    qryACardCopyCUSTOMERID: TIntegerField;
    qryACardCopyISSUEDATE: TDateTimeField;
    qryACardCopyEXPIREDATE: TDateTimeField;
    qryACardCopyMETERBOOLEAN: TBooleanField;
    qryACardCopyPINBOOLEAN: TBooleanField;
    qryACardCopyINSDT: TDateTimeField;
    qryACardCopyUPDDT: TDateTimeField;
    qryACardCopyINSUSR: TIntegerField;
    qryACardCopyUPDUSR: TIntegerField;
    qryACardCopySTARTDATE: TDateTimeField;
    qryACardCopyVTYPEID: TIntegerField;
    qryACardCopyCREATEBOOLEAN: TBooleanField;
    qryACardCopyBLACKLISTBOOLEAN: TBooleanField;
    qryACardCopyBLACKLISTDATE: TDateTimeField;
    qryACardCopyBLACKLISTUSR: TIntegerField;
    qryACardCopyBLACKLISTNOTES: TWideStringField;
    qryACardCopyIGROUPID1: TIntegerField;
    qryACardCopyIGROUPID2: TIntegerField;
    qryACardCopyIGROUPID3: TIntegerField;
    qryACardCopyIGROUPID4: TIntegerField;
    qryACardCopyDAYAMOUNT: TFloatField;
    qryACardCopyMONTHAMOUNT: TFloatField;
    qryACardCopyREGNO: TWideStringField;
    qryACardCopyACARDHOLDER: TWideStringField;
    qryACardCopyISACTIVE: TBooleanField;
    qryACardCopyEXPIREPHDATE: TDateTimeField;
    qryACardCopyEXPIRELODATE: TDateTimeField;
    qryACardCopyIGROUPID5: TIntegerField;
    qryACardCopyEMPLOYEESID: TIntegerField;
    qryACardCopyNEWCARDBOOLEAN: TBooleanField;
    qryACardCopyNEWCARDID: TIntegerField;
    qryACardCopyCARDHASEMPNAME: TBooleanField;
    qryACardCopyACARDCODENUM: TIntegerField;
    qryACardCopyINACTIVEDATE: TDateTimeField;
    qryACardCopyINACTIVEUSR: TIntegerField;
    qryACardCopyINACTIVENOTES: TWideStringField;
    qryACardCopyIGROUPID6: TIntegerField;
    qryACardCopyIGROUPID7: TIntegerField;
    qryACardCopyIGROUPID8: TIntegerField;
    qryACardCopyIGROUPID9: TIntegerField;
    qryACardCopyIGROUPID10: TIntegerField;
    qryACardCopyCOSTCENTERID: TIntegerField;
    qryACardCopyPending: TBooleanField;
    qryACardACARDID: TAutoIncField;
    qryACardACARDCODE: TWideStringField;
    qryACardCUSTOMERID: TIntegerField;
    qryACardISSUEDATE: TDateTimeField;
    qryACardEXPIREDATE: TDateTimeField;
    qryACardMETERBOOLEAN: TBooleanField;
    qryACardPINBOOLEAN: TBooleanField;
    qryACardINSDT: TDateTimeField;
    qryACardUPDDT: TDateTimeField;
    qryACardINSUSR: TIntegerField;
    qryACardUPDUSR: TIntegerField;
    qryACardSTARTDATE: TDateTimeField;
    qryACardVTYPEID: TIntegerField;
    qryACardCREATEBOOLEAN: TBooleanField;
    qryACardBLACKLISTBOOLEAN: TBooleanField;
    qryACardBLACKLISTDATE: TDateTimeField;
    qryACardBLACKLISTUSR: TIntegerField;
    qryACardBLACKLISTNOTES: TWideStringField;
    qryACardIGROUPID1: TIntegerField;
    qryACardIGROUPID2: TIntegerField;
    qryACardIGROUPID3: TIntegerField;
    qryACardIGROUPID4: TIntegerField;
    qryACardDAYAMOUNT: TFloatField;
    qryACardMONTHAMOUNT: TFloatField;
    qryACardREGNO: TWideStringField;
    qryACardACARDHOLDER: TWideStringField;
    qryACardISACTIVE: TBooleanField;
    qryACardEXPIREPHDATE: TDateTimeField;
    qryACardEXPIRELODATE: TDateTimeField;
    qryACardIGROUPID5: TIntegerField;
    qryACardEMPLOYEESID: TIntegerField;
    qryACardNEWCARDBOOLEAN: TBooleanField;
    qryACardNEWCARDID: TIntegerField;
    qryACardCARDHASEMPNAME: TBooleanField;
    qryACardACARDCODENUM: TIntegerField;
    qryACardINACTIVEDATE: TDateTimeField;
    qryACardINACTIVEUSR: TIntegerField;
    qryACardINACTIVENOTES: TWideStringField;
    qryACardIGROUPID6: TIntegerField;
    qryACardIGROUPID7: TIntegerField;
    qryACardIGROUPID8: TIntegerField;
    qryACardIGROUPID9: TIntegerField;
    qryACardIGROUPID10: TIntegerField;
    qryACardCOSTCENTERID: TIntegerField;
    qryACardPending: TBooleanField;
    qryCustomerGarantieId: TIntegerField;
    qryCustomerGarantieAmount: TFloatField;
    qryCustomerComments: TMemoField;
    qryBrowserAcardCodeFull000: TWideStringField;
    dtsSpecCust: TDataSource;
    qrySpecCust: TADOQuery;
    qrySpecCustCUSTOMERID: TAutoIncField;
    qrySpecCustNAME: TWideStringField;
    qrySpecCustSTREET: TWideStringField;
    qrySpecCustZIP: TWideStringField;
    qrySpecCustCITY: TWideStringField;
    qrySpecCustAFM: TWideStringField;
    qrySpecCustDOY: TWideStringField;
    qrySpecCustSTARTDATE: TDateTimeField;
    qrySpecCustAREAID: TIntegerField;
    qrySpecCustLOCATIONID: TIntegerField;
    qrySpecCustCGROUPID: TIntegerField;
    qrySpecCustCCLASSID: TIntegerField;
    qrySpecCustCREDITAMOUNT: TFloatField;
    qrySpecCustINSDT: TDateTimeField;
    qrySpecCustUPDDT: TDateTimeField;
    qrySpecCustINSUSR: TIntegerField;
    qrySpecCustUPDUSR: TIntegerField;
    qrySpecCustPROFESSION: TWideStringField;
    qrySpecCustBRANCHID: TIntegerField;
    qrySpecCustSAPCODE: TWideStringField;
    qrySpecCustISACTIVE: TBooleanField;
    qrySpecCustSALESMENID: TIntegerField;
    qrySpecCustDIAKID: TIntegerField;
    qrySpecCustISTEST: TBooleanField;
    qrySpecCustISCONS: TBooleanField;
    qrySpecCustAREABID: TIntegerField;
    qrySpecCustDATEPHEND: TDateTimeField;
    qrySpecCustDATELOEND: TDateTimeField;
    qrySpecCustHASDETAILEMP: TBooleanField;
    qrySpecCustALLCARDSTOBL: TBooleanField;
    qrySpecCustALLCARDSTOBLDATE: TDateTimeField;
    qrySpecCustALLCARDSTOBLSYSDATE: TDateTimeField;
    qrySpecCustALLCARDSTOBLUSR: TIntegerField;
    qrySpecCustCUSTOMEROFF: TBooleanField;
    qrySpecCustCUSTOMEROFFDATE: TDateTimeField;
    qrySpecCustCUSTOMEROFFSYSDATE: TDateTimeField;
    qrySpecCustCUSTOMEROFFUSR: TIntegerField;
    qrySpecCustCARDHASEMPNAME: TBooleanField;
    qrySpecCustDATEEND: TDateTimeField;
    qrySpecCustCompanyTypeId: TIntegerField;
    qrySpecCustGarantieId: TIntegerField;
    qrySpecCustGarantieAmount: TFloatField;
    qrySpecCustComments: TMemoField;
    qryCustomerPCustomerId: TIntegerField;
    qryEmployeesSendPrint: TBooleanField;
    qryEmployeesSendMail: TBooleanField;
    qryEmployeesMailAddr: TWideStringField;
    qryEmployeesFName: TWideStringField;
    qryACardPendingDT: TDateTimeField;
    qryACardPendingUsr: TIntegerField;
    qryBrowserLEmp: TStringField;
    qryEmployees0SendPrint: TBooleanField;
    qryEmployees0SendMail: TBooleanField;
    qryEmployees0MailAddr: TWideStringField;
    qryEmployees0FName: TWideStringField;
    Procedure qryACardBeforePost(DataSet: TDataSet);
    Procedure DataModuleCreate(Sender: TObject);
    Procedure qryACardNewRecord(DataSet: TDataSet);
    Procedure qryACardISSUEDATEValidate(Sender: TField);
    Procedure qryACardEXPIREDATEValidate(Sender: TField);
    Procedure qryACardREGNOSetText(Sender: TField; Const Text: String);
    Procedure qryACardREGNOValidate(Sender: TField);
    procedure qryBrowserCalcFields(DataSet: TDataSet);
    procedure qryACardCalcFields(DataSet: TDataSet);
    procedure memEmployeesEmpNameChange(Sender: TField);
    procedure qryAcardIGROUPIDValidate(Sender: TField);
    procedure dtsACardStateChange(Sender: TObject);
    procedure qryBrowserAfterScroll(DataSet: TDataSet);
    procedure qryACardAfterPost(DataSet: TDataSet);
    procedure dtsmemWSUpdateData(Sender: TObject);
    procedure qryCustomerCalcFields(DataSet: TDataSet);
  Private
    { Private declarations }
    Created:Boolean;
    Critical: Boolean;
    FCustomerHasDetail: Boolean;
    FCardFindId: Integer;
    FCardId: Integer;
    FCustomerHasCC: Boolean;
    procedure SetCustomerHasDetail(const Value: Boolean);
    procedure SetCardFindId(const Value: Integer);
    procedure SetCardId(const Value: Integer);
    procedure SetCustomerHasCC(const Value: Boolean);
  Public
    { Public declarations }
    State: Integer;
    KeepBlackList: Boolean;
    Procedure DoInsert;
    Procedure DoUpdate;
    Procedure DoDelete;
    Procedure DoPost;
    Procedure DoCopy;
    procedure DoUpdCompany(Cust:Integer);
    procedure DoUpdateCustomerDetail(Cust:Integer);
    property  CardFindId:Integer read FCardFindId write SetCardFindId;
    property  CardId:Integer read FCardId write SetCardId;
    property  CustomerHasDetail:Boolean read FCustomerHasDetail write SetCustomerHasDetail;
    property  CustomerHasCC:Boolean read FCustomerHasCC write SetCustomerHasCC;
  End;

Implementation

Uses Globals, //SelectCustomer, SelectEmployees,
     aCARD, DMain;

{$R *.dfm}

Procedure TACardDM.DataModuleCreate(Sender: TObject);
Begin
  Critical := false;
  Created:=False;
  DMCreate(TForm(self));
//  qryBrowser.Active := True;
//  qryACard.Active := True;
//  UpdFromstBrowse('frmACard',qryBrowser);
  qryAuxACard.Active := True;
  Created:=True;
End;

Procedure TACardDM.DoInsert;
Begin
  State := 0;
  qryACard.Insert;
End;

Procedure TACardDM.DoCopy;
var x:Integer;
    xname:string;
Begin
  State := 6;
  qryACard.Insert;
  qryACardCopy.Open;
  qryACard.Edit;

  for x  := 0 to qryACardCopy.FieldCount -1 do
     begin
       xname := qryACardCopy.Fields[x].FieldName;
       try
         qryACard.FieldByName(xname).Value := qryACardCopy.Fields[x].Value;
       except
       end;
     end;

  qryACardISACTIVE.AsBoolean            :=  True;
  qryACardNEWCARDBOOLEAN.AsBoolean      :=  False;
  qryACardNEWCARDID.AsInteger           :=  qryACardCopyACARDID.AsInteger;
  qryACardBLACKLISTBOOLEAN.AsBoolean    :=  False;
  qryACardCREATEBOOLEAN.AsBoolean       :=  True;

  if Not qryACardCopyISSUEDATE.IsNull then
    qryACardISSUEDATE.AsDateTime        :=  qryACardCopyISSUEDATE.AsDateTime;
  if Not qryACardCopyEXPIREDATE.IsNull then
    qryACardEXPIREDATE.AsDateTime         :=  qryACardCopyEXPIREDATE.AsDateTime;

  qryACardISSUEDATE.AsDateTime        :=  now;
  qryACardSTARTDATE.AsDateTime        :=  qryACardCopyEXPIREDATE.AsDateTime + 1 ;
  qryACardEXPIREDATE.AsDateTime       :=  qryCustomerDATEEND.AsDateTime;




End;

Procedure TACardDM.DoUpdate;
Begin
  State := 1;
  qryACard.Edit;
  KeepBlackList := qryACardBLACKLISTBOOLEAN.AsBoolean;
End;

procedure TACardDM.qryACardAfterPost(DataSet: TDataSet);
begin
  CardFindId:=qryAuxACardACARDID.AsInteger;
end;

Procedure TACardDM.qryACardBeforePost(DataSet: TDataSet);
Begin
//  GeneralDM.InsUpdFields(qryACardINSDT, qryACardUPDDT, qryACardINSUSR, qryACardUPDUSR);
  If (qryACardBLACKLISTBOOLEAN.AsBoolean = false) Then Begin
    qryACardBLACKLISTDATE.Clear;
    qryACardBLACKLISTUSR.Clear;
    qryACardBLACKLISTNOTES.Clear;
  End;
  if (qryACardIGROUPID1.AsInteger = 0) then qryACardIGROUPID1.Clear;
  if (qryACardIGROUPID2.AsInteger = 0) then qryACardIGROUPID2.Clear;
  if (qryACardIGROUPID3.AsInteger = 0) then qryACardIGROUPID3.Clear;
  if (qryACardIGROUPID4.AsInteger = 0) then qryACardIGROUPID4.Clear;
End;

Procedure TACardDM.qryACardNewRecord(DataSet: TDataSet);
Var
  Dt: TDateTime;
Begin
  Dt := Now;
  ReplaceTime(Dt, 0);
  qryACardSTARTDATE.AsDateTime := Dt;
  qryACardISSUEDATE.AsDateTime := LastDateOfMonth(Now) + 1;
  Dt := LastDateOfMonth(qryACardISSUEDATE.AsDateTime);
  qryACardCREATEBOOLEAN.AsBoolean := true;
End;

Procedure TACardDM.qryACardISSUEDATEValidate(Sender: TField);
Begin
  If (Critical = false) Then Begin
    Critical := true;
    Try
      If (CheckDateRange(qryACardISSUEDATE, qryACardEXPIREDATE) = false) Then Abort;
    Finally
      Critical := false;
    End;
  End;
End;

Procedure TACardDM.qryACardEXPIREDATEValidate(Sender: TField);
Begin
  If (Critical = false) Then Begin
    Critical := true;
    Try
      If (CheckDateRange(qryACardISSUEDATE, qryACardEXPIREDATE) = false) Then Abort;
    Finally
      Critical := false;
    End;
  End;
End;

Procedure TACardDM.DoUpdCompany(Cust:Integer);
begin
//    qryCustomerDetail.active := False;
//    qryCustomerDetail.Parameters.ParamByName('PCustomerId').Value:= Cust;
//    qryCustomerDetail.active := True;

    SetCustomerHasDetail(qryCustomerDetailHASDETAILEMP.AsBoolean);

//    qryCustomerCostCenter.active := False;
//    qryCustomerCostCenter.Parameters.ParamByName('PCustomerId').Value:= Cust;
//    qryCustomerCostCenter.active := True;

    SetCustomerHasCC((qryCustomerCostCenterCnt.AsInteger > 0));
end;

procedure TACardDM.dtsACardStateChange(Sender: TObject);
var st:string;
begin
  if Created then
  begin
  if TDataSource(Sender).State in [dsEdit,dsInsert] then
     st := 'UPD'
  else
     st := 'Browse';
  ExecMethodStrParam(Self.Owner,'MainStateChange0',st);
  end;
end;

procedure TACardDM.dtsmemWSUpdateData(Sender: TObject);
begin
//  if Created then
//    DoUpdCompany(0);
end;

Procedure TACardDM.DoDelete;
Begin
 Exit;
 raise Exception.Create('Please dont Delete this Record');
{ TODO : transaction control must be added }
  qryBlackList.Close;
  qryBlackList.SQL.Clear;
  qryBlackList.SQL.Add('SELECT * FROM BLACKLIST WHERE ACARDID = ' + IntToStr(qryACardACARDID.AsInteger));
  qryBlackList.Open;
  If (qryBlackList.RecordCount > 0) Then Begin
    qryBlackList.First;
    While (qryBlackList.Eof) Do Begin
      qryBlackList.Delete;
    End;
  End;
  qryACard.Delete;
End;

Procedure TACardDM.DoPost;
var TempCode,x:Integer;
    EditText:String;
Begin
  CardFindId:=qryACardACARDID.AsInteger;

  try
    If (State = 1) And (KeepBlackList = true) And (qryACardBLACKLISTBOOLEAN.AsBoolean = false) Then Begin
      qryBlackList.Insert;
      qryBlackListACARDID.AsInteger := qryACardACARDID.AsInteger;
      qryBlackListFRDATE.AsDateTime := qryACardBLACKLISTDATE.AsDateTime;
      qryBlackListTODATE.AsDateTime := NowDateOnly;
      qryBlackListNOTES.AsString := qryACardBLACKLISTNOTES.AsString;
      qryBlackListINSDT.AsDateTime := qryACardBLACKLISTDATE.AsDateTime;
      qryBlackListUPDDT.AsDateTime := Now;
      qryBlackListINSUSR.AsInteger := qryACardBLACKLISTUSR.AsInteger;
      qryBlackListUPDUSR.AsInteger := gUUserID;
      qryBlackList.Post;
    End;

    if ((State = 0) Or (State = 6)) then begin
//!!!   qryRegNoSeq.Close;
//      qryRegNoSeq.SQL.Clear;
//      qryRegNoSeq.SQL.Add('SELECT * FROM REGNOSEQ WHERE REGNOSEQID = 0');
//      qryRegNoSeq.Open;
      qryRegNoSeq.Insert;
      TfrmACard(self.owner).dxDBEdit4.SetFocus;
//    qryACard.Refresh;
//!!!--ERROR IF NOT
      qryACardREGNOSetText(qryACardREGNO,TfrmACard(self.owner).dxDBEdit4.Text);
      qryRegNoSeqREGNO.AsString := qryACardREGNO.AsString;

{      EditText:=TFRMAcard(self.Owner).Edit1.Text;
      try
        TempCode:=strtoint(EditText);
      except On EConvertError do
        MessageDlg('Error Converting', mtError, [mbOK], 0);
      end;}

// If no Number is given then select next Num from RegNo


      TempCode:=99999;
      try
        TempCode:=strtoint(TFRMAcard(self.Owner).Edit1.Text);
        qryRegNoExc.Open;
        qryRegNoExc.Insert;
        qryRegNoExcREGNOEXCEPTID.AsInteger := TempCode;
      except
        qryRegNoCount.Active:=True;
        TempCode:=qryRegNoCountRecCount.AsInteger + 1;
        qryRegNoCount.Active:=False;

        qryRegNoExceptCount.Active:=False;
        qryRegNoExceptCount.Parameters.ParamByName('PID').Value:=TempCode-1+5;
        qryRegNoExceptCount.Active:=True;
        x:=qryRegNoExceptCountRecCount.AsInteger;
        qryRegNoExceptCount.Active:=False;

        TempCode:=TempCode - x + 4 ;
      end;

      if TempCode = 0 then
      begin
        qryRegNoCount.Active:=True;
        TempCode:=qryRegNoCountRecCount.AsInteger + 1;
        qryRegNoCount.Active:=False;

        qryRegNoExceptCount.Active:=False;
        qryRegNoExceptCount.Parameters.ParamByName('PID').Value:=TempCode-1;
        qryRegNoExceptCount.Active:=True;
        x:=qryRegNoExceptCountRecCount.AsInteger;
        qryRegNoExceptCount.Active:=False;

        TempCode:=TempCode - x + 4;

      end;

//!!!
//      qryRegNoSeq.Active := True;
//      qryRegNoSeq.Insert;
      qryRegNoSeqREGNOSEQID.AsInteger :=TempCode;
      try
        qryRegNoSeq.Post;
      except
        MessageDlg('Υπάρχει η Κάρτα! Ακύρωση Καταχώρησης'+qryRegNoSeqREGNOSEQID.AsString, mtError, [mbOK], 0);
//!!
//        GeneralDM.ADOConnection.RollbackTrans;
        exit;
      end;
      qryACardACARDCODE.AsString := IntToStr(qryRegNoSeqREGNOSEQID.AsInteger);

//    end;
    if qryRegNoExc.State in [dsInsert,dsEdit] then
       qryRegNoExc.Post;
    end;

    qryACardACARDCODENUM.AsInteger := qryACardACARDCODE.AsInteger;
//    try
      qryACard.Post;
//    except
//      MessageDlg('Error Posting', mtError, [mbOK], 0);
//    end;

    CardFindId:=qryACardACARDID.AsInteger;

    if (State = 6) then
      begin
        qryNewACard.Parameters.ParamByName('PACardId').Value:=qryACardNEWCARDID.AsInteger;
        qryNewACard.ExecSQL;
      end;
//!!!
//    GeneralDM.ADOConnection.CommitTrans;
//  except
//    GeneralDM.ADOConnection.RollbackTrans;
//  end;

////////////    end;
  finally

  end;

End;

Procedure TACardDM.qryACardREGNOSetText(Sender: TField;
  Const Text: String);
Begin
if TFRMAcard(self.Owner).CheckBox1.Checked then
  Sender.AsString := Text
else
  Sender.AsString := RegNoConvert(Text);
End;

Procedure TACardDM.qryACardREGNOValidate(Sender: TField);
Begin
  If (Critical = false) Then Begin
    Critical := true;
    Try
      If (RegNoCheck(qryACardREGNO.AsString) = false) Then
         If (AskUserNo('Δεν συμφωνεί ο αριθμός κυκλοφορίας.  Θέλετε να συνεχίσετε;') = false) Then Abort;
        qryAuxACard.Close;
        qryAuxACard.SQL.Clear;
        qryAuxACard.SQL.Add('SELECT * FROM ACARD WHERE REGNO = ' + QuotedStr(qryACardREGNO.AsString));
        qryAuxACard.Open;
        If (qryAuxACard.Bof = false) Or (qryAuxACard.Eof = false) Then Begin { at least one row in dataset }
          qryAuxACard.First;
          while (qryAuxACard.Eof = false) do begin
            if (qryAuxACardBLACKLISTBOOLEAN.AsBoolean = false) then
             if (State = 6) then
                begin
//                  ShowMessage('Yπάρχει ενεργή κάρτα');
                end
              else
                begin
                  ShowMessage('Δεν επιτρέπεται υπάρχει άλλη ενεργή κάρτα');
                  Abort;
                end;
            qryAuxACard.Next;
          end;
        End;
    Finally
      Critical := false;
    End;
  End;
End;

procedure TACardDM.qryBrowserAfterScroll(DataSet: TDataSet);
begin
 if Created then
    TfrmAcard(Self.Owner).actToBlackListUpdate;
end;

procedure TACardDM.qryBrowserCalcFields(DataSet: TDataSet);
begin
//  QryBrowserFullCardNo.AsString:=ReturnFullIdNo(qryBrowserAcardCode.AsInteger);
    qryBrowserAcardId.AsInteger := qryBrowserACARDACARDID.AsInteger;
end;

procedure TACardDM.qryCustomerCalcFields(DataSet: TDataSet);
begin
   qryCustomerPCustomerId.Value := qryCustomerCustomerId.Value;
end;

procedure TACardDM.qryACardCalcFields(DataSet: TDataSet);
begin
if Not qryACardAcardCode.IsNull then
   QryACardFullCardNo.AsString:=ReturnFullIdNo(qryACardAcardCode.AsInteger)
else
   QryACardFullCardNo.AsString:='140528';
end;

procedure TACardDM.memEmployeesEmpNameChange(Sender: TField);
begin
{  If (Critical = false) Then Begin
    Try
      Critical := true;
      If (ZoomEmployees(TField(memEmployeesEmpNAME), TField(qryACardEmployeesID),qryACardCUSTOMERID.AsInteger,
        false) <= 0) Then Abort
      Else Begin
        If (State = 0) Then Begin { εισαγωγή }
{          qryEmployees.Close;
          qryEmployees.SQL.Clear;
          qryEmployees.SQL.Add('SELECT * FROM EMPLOYEES WHERE ID = ' + IntToStr(qryACardCustomerID.AsInteger));
          qryEmployees.Open;
        End
        ELSE
        Begin { εισαγωγή }
{          qryEmployees.Close;
          qryEmployees.SQL.Clear;
          qryEmployees.SQL.Add('SELECT * FROM EMPLOYEES WHERE ID = ' + IntToStr(qryACardCustomerID.AsInteger));
          qryEmployees.Open;
        End;
      End;
    Finally
      Critical := false;
    End;
  End;}
end;

procedure TACardDM.SetCustomerHasCC(const Value: Boolean);
begin
  FCustomerHasCC := Value;
end;

procedure TACardDM.SetCustomerHasDetail(const Value: Boolean);
begin
  FCustomerHasDetail := Value;
end;

procedure TACardDM.DoUpdateCustomerDetail(Cust:Integer);
begin
  DoUpdCompany(Cust);

//  if  Created then
//   SetCustomerHasDetail(qryCustomerDetailHASDETAILEMP.AsBoolean);
end;

procedure TACardDM.SetCardFindId(const Value: Integer);
begin
  FCardFindId := Value;
end;

procedure TACardDM.SetCardId(const Value: Integer);
begin
  FCardId := Value;
end;

Procedure TACardDM.qryAcardIGROUPIDValidate(Sender: TField);
var x: Integer;
    Nam:String;
begin
  Nam:='IGROUPID';
  If (Sender.IsNull = false) Then
    begin
    for x := 1 to 10 do
       begin
         Nam:='IGROUPID'+inttostr(x);
         if Not (Nam = Sender.FieldName) then
            begin
            if qryACard.FieldByName(Nam).AsInteger = Sender.AsInteger then
               begin
                 MessageDlg('Πρόβλημα στην καταχώρηση του πεδίου Ομάδα '+inttostr(x) , mtError, [mbOK], 0);
//                 Abort;
//                 raise ERangeError.CreateFmt('Πρόβλημα στην καταχώρηση του πεδίου %s', [Nam]);
               end;
             end;
       end;
//    If (qryCustomerIGROUPID1.AsInteger = qryCustomerIGROUPID2.AsInteger) Or
//      (qryCustomerIGROUPID1.AsInteger = qryCustomerIGROUPID3.AsInteger) Or
//      (qryCustomerIGROUPID1.AsInteger = qryCustomerIGROUPID4.AsInteger) Then
//      Abort;
  End;
End;


End.

