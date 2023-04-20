unit rKinhs22;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, DB, ADODB, QRCtrls, QuickRpt, ExtCtrls,
  DConsum, Common, QRExport, QRWebFilt, QRPDFFilt, QRXMLSFilt;

type
  TrptKinhs22 = class(TrptBaseAvinCard)
    QRGroup1: TQRGroup;
    QRImage1: TQRImage;
    QRSysData5: TQRSysData;
    QRSysData8: TQRSysData;
    QRGroup2: TQRGroup;
    QRDBText8: TQRDBText;
    QRLabel13: TQRLabel;
    QRBand3: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand4: TQRBand;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    dtsTran: TDataSource;
    qryTran: TADOQuery;
    // Calc Fields
    qryTranAcc1: TFloatField;
    qryTranAcc2: TFloatField;
    qryTranAcc3: TFloatField;
    qryTranAcc4: TFloatField;
    qryTranAcc5: TFloatField;
    qryTranAcc6: TFloatField;
    qryTranAcc7: TFloatField;
    qryTranAcc8: TFloatField;
    qryTranAcc9: TFloatField;
    qryTranAcc10: TFloatField;
    qryTranPos1: TFloatField;
    qryTranPos2: TFloatField;
    qryTranPos3: TFloatField;
    qryTranPos4: TFloatField;
    qryTranPos5: TFloatField;
    qryTranPos6: TFloatField;
    qryTranPos7: TFloatField;
    qryTranPos8: TFloatField;
    qryTranPos9: TFloatField;
    qryTranPos10: TFloatField;
    qryTranKm1: TIntegerField;
    qryTranKm2: TIntegerField;
    qryTranKm3: TIntegerField;
    qryTranKm4: TIntegerField;
    qryTranKm5: TIntegerField;
    qryTranKm6: TIntegerField;
    qryTranKm7: TIntegerField;
    qryTranKm8: TIntegerField;
    qryTranKm9: TIntegerField;
    qryTranKm10: TIntegerField;
    // Calc Fields
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    ADOQuery1: TADOQuery;
    ADOQuery1ACARDID: TIntegerField;
    ADOQuery1CONSGMONTH: TIntegerField;
    ADOQuery1CONSGYEAR: TIntegerField;
    ADOQuery1IGROUPID: TIntegerField;
    ADOQuery1PERIG: TWideStringField;
    ADOQuery1KM: TIntegerField;
    ADOQuery1MKL: TFloatField;
    ADOQuery1MKE: TFloatField;
    ADOQuery1INSDT: TDateTimeField;
    ADOQuery1UPDDT: TDateTimeField;
    ADOQuery1INSUSR: TIntegerField;
    ADOQuery1UPDUSR: TIntegerField;
    ADOQuery2: TADOQuery;
    ADOQuery2ACARDID: TIntegerField;
    ADOQuery2CONSGMONTH: TIntegerField;
    ADOQuery2CONSGYEAR: TIntegerField;
    ADOQuery2IGROUPID: TIntegerField;
    ADOQuery2PERIG: TWideStringField;
    ADOQuery2KM: TIntegerField;
    ADOQuery2MKL: TFloatField;
    ADOQuery2MKE: TFloatField;
    ADOQuery2INSDT: TDateTimeField;
    ADOQuery2UPDDT: TDateTimeField;
    ADOQuery2INSUSR: TIntegerField;
    ADOQuery2UPDUSR: TIntegerField;
    QRLabel28: TQRLabel;
    qryTranMerchantMerchantId: TIntegerField;
    qryTranMerchantName: TWideStringField;
    qryTranMerchantStreet: TWideStringField;
    qryTranMerchantZip: TWideStringField;
    qryTranMerchantCity: TWideStringField;
    qryTranMerchantAFM: TWideStringField;
    qryTranMerchantDOY: TWideStringField;
    qryTranMerchantIsTest: TBooleanField;
    qryTranMerchantAreaId: TIntegerField;
    qryTranMerchantSAPCode: TWideStringField;
    qryTranMerchantMerchantCode: TWideStringField;
    qryTranMerchantSalesMenId: TIntegerField;
    qryTranMerchantDeleted: TBooleanField;
    qryTranMerchantInActive: TBooleanField;
    qryTranMerchantStopSales: TBooleanField;
    qryTranStationStationId: TIntegerField;
    qryTranStationName: TWideStringField;
    qryTranStationStreet: TWideStringField;
    qryTranStationZIP: TWideStringField;
    qryTranStationCity: TWideStringField;
    qryTranStationAreaId: TIntegerField;
    qryTranStationSalesMenId: TIntegerField;
    qryTranStationDeleted: TBooleanField;
    qryTranStationInActive: TBooleanField;
    qryTranStationStopSales: TBooleanField;
    qryTranTerminalTerminalCode: TWideStringField;
    qryTranTerminalTerminalId: TIntegerField;
    qryTranTerminalSerialNo: TWideStringField;
    qryTranCUSTOMERCUSTOMERId: TIntegerField;
    qryTranCUSTOMERName: TWideStringField;
    qryTranCUSTOMERZip: TWideStringField;
    qryTranCUSTOMERStreet: TWideStringField;
    qryTranCUSTOMERCity: TWideStringField;
    qryTranCUSTOMERAFM: TWideStringField;
    qryTranCUSTOMERDOY: TWideStringField;
    qryTranCUSTOMERAreaId: TIntegerField;
    qryTranCUSTOMERCGroupId: TIntegerField;
    qryTranCUSTOMERCClassId: TIntegerField;
    qryTranCUSTOMERBranchId: TIntegerField;
    qryTranCUSTOMERSAPCode: TWideStringField;
    qryTranCUSTOMERIsActive: TBooleanField;
    qryTranCUSTOMERSalesMenId: TIntegerField;
    qryTranCUSTOMERIsTest: TBooleanField;
    qryTranCUSTOMERAreaBId: TIntegerField;
    qryTranCUSTOMERHASDETAILEMP: TBooleanField;
    qryTranCUSTOMERCUSTOMEROFF: TBooleanField;
    qryTranTRANTRANDATE: TDateTimeField;
    qryTranTRANACARDID: TIntegerField;
    qryTranTRANMerchantId: TIntegerField;
    qryTranTRANStationId: TIntegerField;
    qryTranTRANTerminalId: TIntegerField;
    qryTranTRANAmount: TFloatField;
    qryTranTRANSitemId: TIntegerField;
    qryTranTRANQuantity: TFloatField;
    qryTranTRANIsAuto: TBooleanField;
    qryTranTRANStationUPD: TBooleanField;
    qryTranTRANACARDUPD: TBooleanField;
    qryTranTRANIsVoid: TBooleanField;
    qryTranTRANBatchNo: TIntegerField;
    qryTranTRANCommissionUpd: TBooleanField;
    qryTranTRANStationUPDBT: TIntegerField;
    qryTranTRANAcardUPDBT: TIntegerField;
    qryTranTRANCommissionUPDBT: TIntegerField;
    qryTranTRANTranTime: TDateTimeField;
    qryTranTRANIsTyped: TBooleanField;
    qryTranTRANDiscountUPD: TBooleanField;
    qryTranTRANDiscountUPDBT: TIntegerField;
    qryTranTRANDisQuantity: TFloatField;
    qryTranTRANDisAmount: TFloatField;
    qryTranTRANPelaDailyUPD: TBooleanField;
    qryTranTRANPelaDailyUPDBT: TIntegerField;
    qryTranACARDACARDID: TIntegerField;
    qryTranACARDACARDCODE: TWideStringField;
    qryTranACARDCustimerId: TIntegerField;
    qryTranACARDVTypeId: TIntegerField;
    qryTranACARDREGNO: TWideStringField;
    qryTranACARDACARDHOLDER: TWideStringField;
    qryTranACARDIsActive: TBooleanField;
    qryTranACARDEMPLOYEESID: TIntegerField;
    qryTranACARDCostCenterId: TIntegerField;
    qryTranVTYPEVTYPEID: TIntegerField;
    qryTranVTYPEDescr: TWideStringField;
    qryTranREGNOSEQREGNOSEQID: TIntegerField;
    qryTranREGNOSEQREGNO: TWideStringField;
    qryTranTRANTRANID: TIntegerField;
    qryTranTRANKMBEFORE: TIntegerField;
    qryTranTRANKMAFTER: TIntegerField;
    qryTranTRANREFSTR: TWideStringField;
    qryTranTRANUNITPRICE: TFloatField;
    qryTranSITEMCODEINTERMINAL: TIntegerField;
    qryTranSITEMDESCR: TWideStringField;
    qryTranSITEMIGROUPID: TIntegerField;
    qryTranIGROUPNAME: TWideStringField;
    ChildBand1: TQRChildBand;
    ChildBand2: TQRChildBand;
    ChildBand3: TQRChildBand;
    ChildBand4: TQRChildBand;
    ChildBand5: TQRChildBand;
    QRLabel3: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRLabel16: TQRLabel;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRLabel5: TQRLabel;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRLabel6: TQRLabel;
    QRExpr11: TQRExpr;
    QRExpr14: TQRExpr;
    QRLabel7: TQRLabel;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    ChildBand6: TQRChildBand;
    QRLabel29: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    ChildBand7: TQRChildBand;
    QRLabel12: TQRLabel;
    QRExpr17: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    ChildBand8: TQRChildBand;
    ChildBand9: TQRChildBand;
    ChildBand10: TQRChildBand;
    ChildBand11: TQRChildBand;
    ChildBand12: TQRChildBand;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    ChildBand13: TQRChildBand;
    QRLabel27: TQRLabel;
    qryTranCostCenterCCName: TWideStringField;
    qryTranCostCenterCCNameFull: TWideStringField;
    qryTranAcardAcardCodeFull: TWideStringField;
    qryIGroup: TADOQuery;
    qryIGroupId: TAutoIncField;
    qryIGroupName: TWideStringField;
    qryIGroupBITNO: TIntegerField;
    qryIGroupPOSOSTO: TFloatField;
    qryIGroupInsUsr: TIntegerField;
    qryIGroupInsDT: TDateTimeField;
    qryIGroupUpdUsr: TIntegerField;
    qryIGroupUpdDT: TDateTimeField;
    qryIGroupDeleted: TBooleanField;
    qryIGroupDelUsr: TIntegerField;
    qryIGroupDelDT: TDateTimeField;
    qryIGroupInActive: TBooleanField;
    qryIGroupInActiveUsr: TIntegerField;
    qryIGroupInActiveDt: TDateTimeField;
    qryIGroupUseKM: TBooleanField;
    qryIGroupUseQuantity: TBooleanField;
    qryIGroupCalcCons: TBooleanField;
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel22Print(sender: TObject; var Value: String);
    procedure QuickRepBeforePrint(sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRLabel28Print(sender: TObject; var Value: String);
    procedure QRExpr6Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: string);
    procedure QRLoopBand1BeforePrint(sender: TQRCustomBand; var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRGroup1BeforePrint(sender: TQRCustomBand; var PrintBand: Boolean);
    procedure ChildBand7AfterPrint(sender: TQRCustomBand; BandPrinted: Boolean);
    procedure qryTranBeforeOpen(DataSet: TDataSet);
    procedure QRLabel3Print(sender: TObject; var Value: string);
    procedure QRExpr5Print(sender: TObject; var Value: string);
  private
    ArrGroups: Array [1 .. 10] of String;
    DM: TDMConsum;
  public
    FromDate: TDateTime;
    ToDate: TDateTime;
    EnhmMonth: Integer;
    EnhmYear: Integer;
    EnhmFile: Boolean;
    PrnBand: array [1 .. 10] of Boolean;
    KatanStr: String;
    procedure IntReport;
    function Milieage(Card: Integer; FromDT, ToDT: TDateTime; Product: Integer; ProductGroup: Integer): String;
  end;

implementation

uses DMain, FPrnTran;
// , PrnStat ;

{$R *.dfm}

procedure TrptKinhs22.qryTranBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  InitiateAction;
end;

procedure TrptKinhs22.qryTranCalcFields(DataSet: TDataSet);
var
  Category: string;
  CategoryV: Variant;
  FldAcc, FldPos, FldKm: TField;
  UpDKm, UpdPos: Boolean;
begin
  inherited;
  // qryTranFullCardNo.AsString:=ReturnFullIdNo(qryTranAcardAcardCode.AsInteger);
  case qryTranSITEMIGROUPID.AsInteger of
    1:
      begin
        qryTranAcc1.AsFloat  := qryTranTRANAmount.AsFloat;
        qryTranPos1.AsFloat  := qryTranTRANQuantity.AsFloat;
        qryTranKm1.AsInteger := qryTranTRANKMAFTER.AsInteger - qryTranTRANKMBEFORE.AsInteger;
      end;
    2:
      begin
        qryTranAcc2.AsFloat  := qryTranTRANAmount.AsFloat;
        qryTranPos2.AsFloat  := qryTranTRANQuantity.AsFloat;
        qryTranKm2.AsInteger := qryTranTRANKMAFTER.AsInteger - qryTranTRANKMBEFORE.AsInteger;
      end;
    3:
      begin
        qryTranAcc3.AsFloat := qryTranTRANAmount.AsFloat;
        qryTranPos3.AsFloat := qryTranTRANQuantity.AsFloat;
      end;
    4:
      begin
        qryTranAcc4.AsFloat := qryTranTRANAmount.AsFloat;
        qryTranPos4.AsFloat := 0;
      end;
    5:
      begin
        qryTranAcc5.AsFloat := qryTranTRANAmount.AsFloat;
        qryTranPos5.AsFloat := 0;
      end;
    6:
      begin
        qryTranAcc6.AsFloat  := qryTranTRANAmount.AsFloat;
        qryTranPos6.AsFloat  := qryTranTRANQuantity.AsFloat;
        qryTranKm6.AsInteger := qryTranTRANKMAFTER.AsInteger - qryTranTRANKMBEFORE.AsInteger;
      end;
  end;


  //
  // Category:=qryTranSITEMIGROUPID.AsString;
  // CategoryV:=qryTranSITEMIGROUPID.AsVariant;
  // if qryIGroup.Locate('Id',CategoryV,[]) then
  // begin
  // UpDKm := qryIGroupUseKM.AsBoolean;
  // UpdPos:= qryIGroupUseQuantity.AsBoolean;
  // end
  // else
  // begin
  // UpDKm := False;
  // UpdPos:= False;
  // end;
  //
  //
  // FldAcc:=DataSet.FieldByName('Acc'+Category);
  // FldPos:=DataSet.FieldByName('Pos'+Category);
  // FldKm :=DataSet.FieldByName('Km'+Category);
  // if Assigned(FldAcc) then
  // begin
  // FldAcc.AsFloat := qryTranTranAmount.AsFloat;
  // if UpdPos then
  // FldPos.AsFloat := qryTranTranQUANTITY.AsFloat;
  // if UpDKm then
  // FldKm.AsInteger:= qryTranTRANKMAFTER.AsInteger - qryTranTranKMBEFORE.AsInteger;
  // end;
  // if qryTranTranAmount.AsFloat > 0 then
  // PrnBand[StrToInt(Category)] := True;

end;

procedure TrptKinhs22.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  if self.Owner is TfrmPrnTran then
    if TfrmPrnTran(self.Owner).ToDate > 0 then
      // Value := 'Κινήσεις από '+ datetostr(TfrmPrnTran(Self.Owner).FrDate) + ' έως ' + datetostr(TfrmPrnTran(Self.Owner).ToDate)
      Value := 'Κινήσεις έως ' + datetostr(TfrmPrnTran(self.Owner).ToDate)
    else
      Value := ' '
  else
    Value := ' ';
end;

procedure TrptKinhs22.ChildBand1BeforePrint(sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  PrintBand := PrnBand[sender.Tag];
end;

procedure TrptKinhs22.ChildBand7AfterPrint(sender: TQRCustomBand; BandPrinted: Boolean);
var
  x: Integer;
begin
  inherited;
  for x        := 1 to 10 do
    PrnBand[x] := False;
end;

function TrptKinhs22.Milieage(Card: Integer; FromDT, ToDT: TDateTime; Product, ProductGroup: Integer): String;
var
  Quant, Quant1, Quant2, PQuant, Mil: Real;
  Amount, Amount1, Amount2, PAmount, MilAmount: Real;
  Km1, Km2, PKm: Integer;
  Proced2: Boolean;
begin
  { try
    SPSumfromtoGR.Active:=False;
    SPSumfromtoGR.Parameters.ParamByName(':PACard').Value   :=Card;
    SPSumfromtoGR.Parameters.ParamByName(':PProductGroup').Value :=Product;
    SPSumfromtoGR.Parameters.ParamByName(':PDateFrom').Value:=FromDt;
    SPSumfromtoGR.Parameters.ParamByName(':PDateTo').Value  :=ToDT;
    SPSumfromtoGR.Active:=True;
    Quant:=SPSumfromtoGRSumQuantity.AsFloat;
    Amount:=SPSumfromtoGRSumAmount.AsFloat;
    if SPSumFromToGr.IsEmpty then
    begin
    Milieage:='';
    exit;
    end;
    if (Not(Quant>0)) then
    begin
    Milieage:='';
    exit;
    end;
    except
    Quant:=0;
    Amount:=0;
    end;

    SPSumfromtoGR.Active:=False;

    try
    AdoStoredProc2.Active:=False;
    AdoStoredProc2.Parameters.ParamByName('PACard').Value        :=Card;
    AdoStoredProc2.Parameters.ParamByName('PProductGroup').Value :=Product;
    AdoStoredProc2.Parameters.ParamByName('PDateFrom').Value     :=FromDt;
    AdoStoredProc2.Active:=True;
    if AdoStoredProc2.IsEmpty then
    begin
    Quant2 :=1;
    Amount2:=0;
    KM2    :=1;
    Proced2:=False;
    end
    else
    begin
    AdoStoredProc2.First;
    Quant2 :=ADOStoredProc2Quantity.AsFloat;
    Amount2:=ADOStoredProc2Amount.AsFloat;
    KM2    :=ADOStoredProc2KMAfter.AsInteger;
    Proced2:=True;
    end;
    except
    Quant2 :=0;
    Amount2:=0;
    KM2    :=0;
    Proced2:=False;
    end;

    AdoStoredProc2.Active:=False;

    try
    AdoStoredProc3.Active:=False;
    AdoStoredProc3.Parameters.ParamByName('PACard').Value   :=Card;
    AdoStoredProc3.Parameters.ParamByName('PProductGroup').Value :=Product;
    AdoStoredProc3.Parameters.ParamByName('PDateFrom').Value:=FromDt;
    AdoStoredProc3.Parameters.ParamByName('PDateTo').Value  :=ToDT;
    AdoStoredProc3.Active:=True;
    if AdoStoredProc3.IsEmpty then
    begin
    Quant1 :=1;
    Amount1:=0;
    KM1    :=1;
    end
    else
    begin
    AdoStoredProc3.First;
    Quant1:=ADOStoredProc3Quantity.AsFloat;
    Amount1:=ADOStoredProc3Amount.AsFloat;
    KM1   :=ADOStoredProc3KMAfter.AsInteger;
    end;
    except
    Quant1 :=0;
    Amount1:=0;
    KM1    :=0;
    end;

    AdoStoredProc3.Active:=False;

    if Proced2 = False then
    begin
    try
    AdoStoredProc4.Active:=False;
    AdoStoredProc4.Parameters.ParamByName('PACard').Value        :=Card;
    AdoStoredProc4.Parameters.ParamByName('PProductGroup').Value :=Product;
    AdoStoredProc4.Parameters.ParamByName('PDateFrom').Value     :=FromDt;
    AdoStoredProc4.Active:=True;
    if AdoStoredProc4.IsEmpty then
    begin
    Quant2 :=0;
    Amount2:=0;
    KM2    :=0;
    end
    else
    begin
    AdoStoredProc4.First;
    Quant2 :=ADOStoredProc4Quantity.AsFloat;
    Amount2:=ADOStoredProc4Amount.AsFloat;
    KM2    :=ADOStoredProc4KMAfter.AsInteger;
    Quant2 :=0;
    Amount2:=0;
    end;
    except
    Quant2 :=0;
    Amount2:=0;
    KM2    :=0;
    end;
    end;


    PQuant :=Quant-Quant1+Quant2;
    PAmount:=Amount-Amount1+Amount2;
    PKm    :=Km1-Km2;

    try
    Mil:=(((Quant-Quant1+Quant2)/(Pkm/100)));
    MilAmount:=(((Amount-Amount1+Amount2)/(PKm/100)));
    except
    Mil:=0;
    MilAmount:=0;
    end;

    Mil      :=Mil;
    MilAmount:=MilAmount;

    if ((PQuant > 0) OR (PKm > 0) OR (Mil > 0)) then
    if PKm > 0 then
    begin
    //        Milieage:='Υπολογισμός Κατανάλωσης ' + ArrGroups[ProductGroup] + ' ' + Format('%.4f Lt/100Km , %d KM, %.4f €/100Km',[Mil,PKm,MilAmount])
    Milieage:='Υπολογισμός Κατανάλωσης ' + Format('%.2f Lt/100Km , %.2f €/100Km  Kαταναλωση για %d Km',[Mil,MilAmount,PKm]);
    end
    else
    if PKm = 0 then
    Milieage:=''
    else
    Milieage:='Πρόβλημα στην Καταχώρηση Km'
    //        Milieage:='Κατανάλωση ' + ArrGroups[ProductGroup] + ' ' + Format('%.4f Lt/100Km , %f Lt, %d KM, %f € , %.4f €/100Km',[Mil,PQuant,PKm,PAmount,MilAmount])
    else
    Milieage:='';

    if (PQuant < 1 ) then
    Milieage:='Πρόβλημα στην Καταχώρηση Km' }

end;

procedure TrptKinhs22.QRLabel22Print(sender: TObject; var Value: String);
var
  CL, CE: Real;
  KM: Integer;
  SText: String;
begin
  inherited;
  if DM.ReturnConsumptionGroup(qryTranACARDACARDID.AsInteger, FromDate, ToDate, 1, CL, CE, KM, SText) then
    begin
      Value := SText;
      // if EnhmFile then
      // begin
      // AdoQuery2.Append;
      // ADOQuery2.Edit;
      // ADOQuery2ACARDID.AsInteger:=qryTranACARDACARDID.AsInteger;
      // ADOQuery2CONSGMONTH.AsInteger:=EnhmMonth;
      // ADOQuery2CONSGYEAR.AsInteger:=EnhmYear;
      // ADOQuery2IGROUPID.AsInteger:=1;
      // ADOQuery2KM.AsInteger:=KM;
      // ADOQuery2MKE.AsFloat:=CE;
      // ADOQuery2MKL.AsFloat:=CL;
      // ADOQuery2PERIG.AsString:=SText;
      // try
      // ADOQuery2.Post;
      // except
      // MessageDlg('Error', mtWarning, [mbOK], 0);
      // end;
      // end;
    end
  else
    Value := '';
  // Value:=Milieage(qryTranACARDID.AsInteger,FromDate,ToDate,1,1);
end;

procedure TrptKinhs22.QuickRepBeforePrint(sender: TCustomQuickRep; var PrintReport: Boolean);
var
  D0, M0, Y0, D1, M1, Y1: Word;
begin
  inherited;
  if self.Owner is TfrmPrnTran then
    begin
      if TfrmPrnTran(self.Owner).ToDate > 0 then
        ToDate := TfrmPrnTran(self.Owner).ToDate;
      if TfrmPrnTran(self.Owner).FrDate > 0 then
        FromDate := TfrmPrnTran(self.Owner).FrDate;
    end;


  // QRLoopBand1.PrintCount := 10;

  // Fix Check
  // if self.Owner is TfrmPrnStat then
  // begin
  // if TfrmPrnStat(Self.Owner).ToDateSt > 0 then
  // ToDate  :=TfrmPrnStat(Self.Owner).ToDateSt;
  // if TfrmPrnStat(Self.Owner).FrDateSt > 0 then
  // FromDate:=TfrmPrnStat(Self.Owner).FrDateSt;
  // end;

  if self.Owner is TfrmPrnTran then
    if ((TfrmPrnTran(self.Owner).ToDateSt > 0) and (TfrmPrnTran(self.Owner).FrDateSt > 0)) then
      begin
        KatanStr := 'Κατανάλωση από ' + datetostr(TfrmPrnTran(self.Owner).FrDateSt) + ' έως ' + datetostr(TfrmPrnTran(self.Owner).ToDateSt)
      end
    else
      KatanStr := '';

  if self.Owner is TfrmPrnTran then
    begin
      if TfrmPrnTran(self.Owner).ToDateSt > 0 then
        ToDate := TfrmPrnTran(self.Owner).ToDateSt;
      if TfrmPrnTran(self.Owner).FrDateSt > 0 then
        FromDate := TfrmPrnTran(self.Owner).FrDateSt;
    end;

  DecodeDate(FromDate, Y0, M0, D0);
  DecodeDate(ToDate, Y1, M1, D1);

  // if ((Y0 = Y1) and (M0 = M1)) then
  // begin
  // EnhmFile:=FALSE;
  // EnhmMonth:=M0;
  // EnhmYear:=Y0;
  // end
  // else
  // begin
  // EnhmFile:=False;
  // MessageDlg('Δεν θα ενημερωθεί το αρχείο Καταναλώσεων', mtInformation, [mbOK], 0);
  // end;
  //
  // if EnhmFile then
  // if MessageDlg('Να ενημρωθεί το αρχείο Καταναλώσεων', mtConfirmation, [mbYes,mbNo], 0)= mrNo then
  // EnhmFile:=False;


  // Fix Insert IGroup to DConSum
  // GeneralDM.tblIGroup.First;
  // repeat
  // ArrGroups[GeneralDM.tblIGroupIGROUPID.AsInteger]:=GeneralDM.tblIGroupDESCR.AsString;
  // GeneralDM.tblIGroup.Next;
  // until GeneralDM.tblIGroup.Eof;

  DM := TDMConsum.Create(self);

end;

procedure TrptKinhs22.QRLabel23Print(sender: TObject; var Value: String);
var
  CL, CE: Real;
  KM: Integer;
  SText: String;
begin
  inherited;
  if DM.ReturnConsumptionGroup(qryTranACARDACARDID.AsInteger, FromDate, ToDate, 2, CL, CE, KM, SText) then
    begin
      Value := SText;
      // if EnhmFile then
      // begin
      // AdoQuery2.Append;
      // ADOQuery2.Edit;
      // ADOQuery2ACARDID.AsInteger:=qryTranACARDACARDID.AsInteger;
      // ADOQuery2CONSGMONTH.AsInteger:=EnhmMonth;
      // ADOQuery2CONSGYEAR.AsInteger:=EnhmYear;
      // ADOQuery2IGROUPID.AsInteger:=2;
      // ADOQuery2KM.AsInteger:=KM;
      // ADOQuery2MKE.AsFloat:=CE;
      // ADOQuery2MKL.AsFloat:=CL;
      // ADOQuery2PERIG.AsString:=SText;
      // try
      // ADOQuery2.Post;
      // except
      // MessageDlg('Error', mtError, [mbOK], 0);
      // end;
      // end;
    end
  else
    Value := '';
end;

procedure TrptKinhs22.QRLabel24Print(sender: TObject; var Value: String);
var
  CL, CE: Real;
  KM: Integer;
  SText: String;
begin
  inherited;
  if DM.ReturnConsumptionGroup(qryTranACARDACARDID.AsInteger, FromDate, ToDate, 3, CL, CE, KM, SText) then
    begin
      Value := SText;
      // if EnhmFile then
      // begin
      // AdoQuery2.Append;
      // ADOQuery2.Edit;
      // ADOQuery2ACARDID.AsInteger:=qryTranACARDACARDID.AsInteger;
      // ADOQuery2CONSGMONTH.AsInteger:=EnhmMonth;
      // ADOQuery2CONSGYEAR.AsInteger:=EnhmYear;
      // ADOQuery2IGROUPID.AsInteger:=3;
      // ADOQuery2KM.AsInteger:=KM;
      // ADOQuery2MKE.AsFloat:=CE;
      // ADOQuery2MKL.AsFloat:=CL;
      // ADOQuery2PERIG.AsString:=SText;
      // try
      // ADOQuery2.Post;
      // except
      // MessageDlg('Error', mtError, [mbOK], 0);
      // end;
      // end;
    end
  else
    Value := '';
end;

procedure TrptKinhs22.QRLabel25Print(sender: TObject; var Value: String);
var
  CL, CE: Real;
  KM: Integer;
  SText: String;
begin
  inherited;
  if DM.ReturnConsumptionGroup(qryTranACARDACARDID.AsInteger, FromDate, ToDate, 4, CL, CE, KM, SText) then
    begin
      Value := SText;
      // if EnhmFile then
      // begin
      // AdoQuery2.Append;
      // ADOQuery2.Edit;
      // ADOQuery2ACARDID.AsInteger:=qryTranACARDACARDID.AsInteger;
      // ADOQuery2CONSGMONTH.AsInteger:=EnhmMonth;
      // ADOQuery2CONSGYEAR.AsInteger:=EnhmYear;
      // ADOQuery2IGROUPID.AsInteger:=4;
      // ADOQuery2KM.AsInteger:=KM;
      // ADOQuery2MKE.AsFloat:=CE;
      // ADOQuery2MKL.AsFloat:=CL;
      // ADOQuery2PERIG.AsString:=SText;
      // try
      // ADOQuery2.Post;
      // except
      // MessageDlg('Error', mtError, [mbOK], 0);
      // end;
      // end;
    end
  else
    Value := '';
end;

procedure TrptKinhs22.QRLabel26Print(sender: TObject; var Value: String);
var
  CL, CE: Real;
  KM: Integer;
  SText: String;
begin
  inherited;
  if DM.ReturnConsumptionGroup(qryTranACARDACARDID.AsInteger, FromDate, ToDate, 5, CL, CE, KM, SText) then
    begin
      Value := SText;
      // if EnhmFile then
      // begin
      // AdoQuery2.Append;
      // ADOQuery2.Edit;
      // ADOQuery2ACARDID.AsInteger:=qryTranACARDACARDID.AsInteger;
      // ADOQuery2CONSGMONTH.AsInteger:=EnhmMonth;
      // ADOQuery2CONSGYEAR.AsInteger:=EnhmYear;
      // ADOQuery2IGROUPID.AsInteger:=5;
      // ADOQuery2KM.AsInteger:=KM;
      // ADOQuery2MKE.AsFloat:=CE;
      // ADOQuery2MKL.AsFloat:=CL;
      // ADOQuery2PERIG.AsString:=SText;
      // try
      // ADOQuery2.Post;
      // except
      // MessageDlg('Error', mtError, [mbOK], 0);
      // end;
      // end;
    end
  else
    Value := '';
end;

procedure TrptKinhs22.QRLabel28Print(sender: TObject; var Value: String);
begin
  inherited;
  if KatanStr > ' ' then
    Value := KatanStr
  else
    Value := '';
end;

procedure TrptKinhs22.QRLabel3Print(sender: TObject; var Value: string);
var
  x: Variant;
begin
  inherited;
  x := TQRLabel(sender).Tag;
  if qryIGroup.Locate('Id', x, []) then
    Value := qryIGroupName.AsString;
end;

procedure TrptKinhs22.QRLabel27Print(sender: TObject; var Value: string);
var
  CL, CE: Real;
  KM: Integer;
  SText: String;
begin
  inherited;
  if DM.ReturnConsumptionGroup(qryTranACARDACARDID.AsInteger, FromDate, ToDate, 6, CL, CE, KM, SText) then
    begin
      Value := SText;
      // if EnhmFile then
      // begin
      // AdoQuery2.Append;
      // ADOQuery2.Edit;
      // ADOQuery2ACARDID.AsInteger:=qryTranACARDACARDID.AsInteger;
      // ADOQuery2CONSGMONTH.AsInteger:=EnhmMonth;
      // ADOQuery2CONSGYEAR.AsInteger:=EnhmYear;
      // ADOQuery2IGROUPID.AsInteger:=6;
      // ADOQuery2KM.AsInteger:=KM;
      // ADOQuery2MKE.AsFloat:=CE;
      // ADOQuery2MKL.AsFloat:=CL;
      // ADOQuery2PERIG.AsString:=SText;
      // try
      // ADOQuery2.Post;
      // except
      // MessageDlg('Error', mtError, [mbOK], 0);
      // end;
      // end;
    end
  else
    Value := '';
end;

procedure TrptKinhs22.QRLoopBand1BeforePrint(sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  // if QRLoopBand1.Count > 0 then
  // begin
  // QRExpr6.Expression := 'SUM(qryTran.Pos'+inttostr(QRLoopBand1.Count)+')';
  // QRExpr5.Expression := 'SUM(qryTran.Acc'+inttostr(QRLoopBand1.Count)+')';
  // QRLabel31.Caption  := 'SUM(qryTran.Acc'+inttostr(QRLoopBand1.Count)+')';
  // end;
  //
end;

procedure TrptKinhs22.QRExpr5Print(sender: TObject; var Value: string);
begin
  inherited;
  try
    Value := format('%.2f', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure TrptKinhs22.QRExpr6Print(sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%m', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure TrptKinhs22.QRGroup1BeforePrint(sender: TQRCustomBand; var PrintBand: Boolean);
var
  x: Integer;
begin
  inherited;
  // for x := 1  to 10 do
  // PrnBand[x] := False;
end;

procedure TrptKinhs22.IntReport;
var
  x: Integer;
begin
  inherited;
  for x        := 1 to 10 do
    PrnBand[x] := False;
end;

end.
