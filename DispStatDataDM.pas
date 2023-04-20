unit DispStatDataDM;

interface

uses
  SysUtils, Classes, DB, ADODB, dxmdaset, DMain, Common, Forms;

type
  TDispStatDataDM = class(TDataModule)
    dsStation: TDataSource;
    dsTran: TDataSource;
    dsApproval: TDataSource;
    dsmemStation: TDataSource;
    memStation: TdxMemData;
    qryStationPopUp: TADOQuery;
    qryStationPopUpStationStationId: TIntegerField;
    qryStationPopUpMerchantMerchantId: TIntegerField;
    qryStationPopUpStationStreet: TWideStringField;
    qryStationPopUpStationCity: TWideStringField;
    qryStationPopUpMerchantName: TWideStringField;
    dsStationPopUp: TDataSource;
    memStationStationId: TIntegerField;
    memStationLMerchantId: TIntegerField;
    qryMerchant: TADOQuery;
    dsMerchant: TDataSource;
    qryTrans: TADOQuery;
    qTranMerchantMerchantId: TIntegerField;
    qTranMerchantName: TWideStringField;
    qTranMerchantStreet: TWideStringField;
    qTranMerchantZip: TWideStringField;
    qTranMerchantCity: TWideStringField;
    qTranMerchantAFM: TWideStringField;
    qTranMerchantDOY: TWideStringField;
    qTranMerchantIsTest: TBooleanField;
    qTranMerchantAreaId: TIntegerField;
    qTranMerchantSAPCode: TWideStringField;
    qTranMerchantMerchantCode: TWideStringField;
    qTranMerchantSalesMenId: TIntegerField;
    qTranMerchantDeleted: TBooleanField;
    qTranMerchantInActive: TBooleanField;
    qTranMerchantStopSales: TBooleanField;
    qTranStationStationId: TIntegerField;
    qTranStationName: TWideStringField;
    qTranStationStreet: TWideStringField;
    qTranStationZIP: TWideStringField;
    qTranStationCity: TWideStringField;
    qTranStationAreaId: TIntegerField;
    qTranStationSalesMenId: TIntegerField;
    qTranStationDeleted: TBooleanField;
    qTranStationInActive: TBooleanField;
    qTranStationStopSales: TBooleanField;
    qTranTerminalTerminalCode: TWideStringField;
    qTranTerminalTerminalId: TIntegerField;
    qTranTerminalSerialNo: TWideStringField;
    qTranCUSTOMERCUSTOMERId: TIntegerField;
    qTranCUSTOMERName: TWideStringField;
    qTranCUSTOMERZip: TWideStringField;
    qTranCUSTOMERStreet: TWideStringField;
    qTranCUSTOMERCity: TWideStringField;
    qTranCUSTOMERAFM: TWideStringField;
    qTranCUSTOMERDOY: TWideStringField;
    qTranCUSTOMERAreaId: TIntegerField;
    qTranCUSTOMERCGroupId: TIntegerField;
    qTranCUSTOMERCClassId: TIntegerField;
    qTranCUSTOMERBranchId: TIntegerField;
    qTranCUSTOMERSAPCode: TWideStringField;
    qTranCUSTOMERIsActive: TBooleanField;
    qTranCUSTOMERSalesMenId: TIntegerField;
    qTranCUSTOMERIsTest: TBooleanField;
    qTranCUSTOMERAreaBId: TIntegerField;
    qTranCUSTOMERHASDETAILEMP: TBooleanField;
    qTranCUSTOMERCUSTOMEROFF: TBooleanField;
    qTranTRANTRANDATE: TDateTimeField;
    qTranTRANACARDID: TIntegerField;
    qTranTRANMerchantId: TIntegerField;
    qTranTRANStationId: TIntegerField;
    qTranTRANTerminalId: TIntegerField;
    qTranTRANAmount: TFloatField;
    qTranTRANSitemId: TIntegerField;
    qTranTRANQuantity: TFloatField;
    qTranTRANIsAuto: TBooleanField;
    qTranTRANStationUPD: TBooleanField;
    qTranTRANACARDUPD: TBooleanField;
    qTranTRANIsVoid: TBooleanField;
    qTranTRANBatchNo: TIntegerField;
    qTranTRANCommissionUpd: TBooleanField;
    qTranTRANStationUPDBT: TIntegerField;
    qTranTRANAcardUPDBT: TIntegerField;
    qTranTRANCommissionUPDBT: TIntegerField;
    qTranTRANTranTime: TDateTimeField;
    qTranTRANIsTyped: TBooleanField;
    qTranTRANDiscountUPD: TBooleanField;
    qTranTRANDiscountUPDBT: TIntegerField;
    qTranTRANDisQuantity: TFloatField;
    qTranTRANDisAmount: TFloatField;
    qTranTRANPelaDailyUPD: TBooleanField;
    qTranTRANPelaDailyUPDBT: TIntegerField;
    qTranACARDACARDID: TIntegerField;
    qTranACARDACARDCODE: TWideStringField;
    qTranACARDCustimerId: TIntegerField;
    qTranACARDVTypeId: TIntegerField;
    qTranACARDREGNO: TWideStringField;
    qTranACARDACARDHOLDER: TWideStringField;
    qTranACARDIsActive: TBooleanField;
    qTranACARDEMPLOYEESID: TIntegerField;
    qTranACARDCostCenterId: TIntegerField;
    qTranVTYPEVTYPEID: TIntegerField;
    qTranVTYPEDescr: TWideStringField;
    qTranREGNOSEQREGNOSEQID: TIntegerField;
    qTranREGNOSEQREGNO: TWideStringField;
    qTranTRANTRANID: TIntegerField;
    qTranTRANKMBEFORE: TIntegerField;
    qTranTRANKMAFTER: TIntegerField;
    qTranTRANREFSTR: TWideStringField;
    qTranTRANUNITPRICE: TFloatField;
    qTranSITEMCODEINTERMINAL: TIntegerField;
    qTranSITEMDESCR: TWideStringField;
    qTranSITEMIGROUPID: TIntegerField;
    qTranIGROUPNAME: TWideStringField;
    qTranCostCenterCCName: TWideStringField;
    qTranCostCenterCCNameFull: TWideStringField;
    qryStationPopUpLFullName: TStringField;
    qryApproval: TADOQuery;
    qryApprovalMerchantName: TWideStringField;
    qryApprovalStationStreet: TWideStringField;
    qryApprovalStationCity: TWideStringField;
    qryApprovalAPPROVALID: TIntegerField;
    qryApprovalAPPROVALAMOUNT: TFloatField;
    qryApprovalAPPROVALCODE: TWideStringField;
    qryApprovalAcardAcardCodeFull: TWideStringField;
    qryApprovalINSUSR: TIntegerField;
    qryApprovalName: TWideStringField;
    qryApprovalINSDT: TDateTimeField;
    qryApprovalMerchantMerchantId: TIntegerField;
    qryApprovalTerminalTerminalid: TIntegerField;
    qryApprovalAPPROVALACARDID: TIntegerField;
    qryApprovalAPPROVALSTATIONID: TIntegerField;
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
    qryContactsStationid: TIntegerField;
    qryContactsStationName: TWideStringField;
    qryTRCALLDET: TADOQuery;
    dtsTRCALLDET: TDataSource;
    qryTRCALLDETTRCALLDDATE: TDateTimeField;
    qryTRCALLDETTRCALLDSTATIONID: TIntegerField;
    qryTRCALLDETTRCALLDSTATUS: TIntegerField;
    qryTRCALLDETLCallStatus: TStringField;
    qryTransAcardAcardCodeFull: TWideStringField;
    qryStationPopUpLFullName2: TStringField;
    qryStationPopUpStationName: TWideStringField;
    qryStationPopUp2: TADOQuery;
    qryStationPopUp2LFullName: TStringField;
    qryStationPopUp2LFullName2: TStringField;
    dsqryStationPopUp2: TDataSource;
    qryStationPopUp2StationStationId: TIntegerField;
    qryStationPopUp2MerchantMerchantId: TIntegerField;
    qryStationPopUp2StationStreet: TWideStringField;
    qryStationPopUp2StationCity: TWideStringField;
    qryStationPopUp2MerchantName: TWideStringField;
    qryStationPopUp2StationName: TWideStringField;
    dtsStationTerminal: TDataSource;
    qryStationTerminal: TADOQuery;
    qryStationTerminalStationId: TIntegerField;
    qryStationTerminalTerminalCode: TWideStringField;
    qryStationTerminalTerminalid: TIntegerField;
    qryStationTerminalTerminalSerialNo: TWideStringField;
    memStationDateFrom: TDateTimeField;
    qryStation: TADOQuery;
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
    qryStationIsTest: TBooleanField;
    qryStationIsTestUsr: TIntegerField;
    qryStationIsTestDt: TDateTimeField;
    qryStationEndPending: TBooleanField;
    qryStationEndPendingDT: TDateTimeField;
    qryStationEndPendingUsr: TIntegerField;
    memStationStationMak: TIntegerField;
    qryMerchantTerminalidTerminalCode: TWideStringField;
    qryMerchantStationName: TWideStringField;
    qryMerchantMerchantName: TWideStringField;
    qryMerchantMerchantSAPCode: TWideStringField;
    qryMerchantTerminalTerminalid: TIntegerField;
    qryMerchantStationStationId2: TIntegerField;
    qryMerchantMerchantMerchantId: TIntegerField;
    qryMerchantMerchantInActive: TBooleanField;
    qryMerchantMerchantDeleted: TBooleanField;
    qryMerchantMerchantIsTest: TBooleanField;
    qryMerchantMerchantStopSales: TBooleanField;
    qryMerchantStationDeleted: TBooleanField;
    qryMerchantStationInActive: TBooleanField;
    qryMerchantStationStopSales: TBooleanField;
    qryMerchantMerchantMerchantCode: TWideStringField;
    qryMerchantStationStreet: TWideStringField;
    qryMerchantStationCity: TWideStringField;
    qryMerchantStationZIP: TWideStringField;
    qryMerchantMerchantAFM: TWideStringField;
    qryMerchantMerchantDOY: TWideStringField;
    procedure qACardCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryStationPopUpCalcFields(DataSet: TDataSet);
    procedure qryTRCALLDETCalcFields(DataSet: TDataSet);
    procedure qryStationPopUp2CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
  end;

implementation

{$R *.dfm}

procedure TDispStatDataDM.DataModuleCreate(Sender: TObject);
begin
  DMCreate(TForm(self));
  memStation.Active := True;
end;

procedure TDispStatDataDM.qACardCalcFields(DataSet: TDataSet);
begin
  // QACardFullCardNo.AsString:=ReturnFullIdNo(qACardAcardCode.AsInteger);
end;

procedure TDispStatDataDM.qryStationPopUp2CalcFields(DataSet: TDataSet);
begin
  qryStationPopUp2LFullName.AsString  := Trim(qryStationPopUp2MerchantName.AsString) + ' ' + Trim(qryStationPopUp2StationStreet.AsString);
  qryStationPopUp2LFullName2.AsString := Trim(qryStationPopUp2StationName.AsString) + ' ' + Trim(qryStationPopUp2MerchantName.AsString);

end;

procedure TDispStatDataDM.qryStationPopUpCalcFields(DataSet: TDataSet);
begin
  qryStationPopUpLFullName.AsString  := Trim(qryStationPopUpMerchantName.AsString) + ' ' + Trim(qryStationPopUpStationStreet.AsString);
  qryStationPopUpLFullName2.AsString := Trim(qryStationPopUpStationName.AsString) + ' ' + Trim(qryStationPopUpMerchantName.AsString);

end;

procedure TDispStatDataDM.qryTRCALLDETCalcFields(DataSet: TDataSet);
begin
  case qryTRCALLDETTRCALLDSTATUS.AsInteger of
    1:
      qryTRCALLDETLCallStatus.AsString := 'OK';
    2:
      qryTRCALLDETLCallStatus.AsString := 'Χωρίς Κινήσεις';
    3:
      qryTRCALLDETLCallStatus.AsString := 'Χωρίς Επικοινωνία';
  end;
end;

end.
