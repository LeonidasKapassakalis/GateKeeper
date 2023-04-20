unit rKinhsKK22;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, DB, ADODB, QRCtrls, QuickRpt, ExtCtrls, DConsum,
  QRExport, QRWebFilt, QRPDFFilt, QRXMLSFilt, DMain;

type
  TrptKinhsKK22 = class(TrptBaseAvinCard)
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
    QRLabel3: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRExpr24: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr25: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr23: TQRExpr;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    dtsTran: TDataSource;
    qryTran: TADOQuery;
    qryTranAcc1: TFloatField;
    qryTranAcc2: TFloatField;
    qryTranAcc3: TFloatField;
    qryTranAcc4: TFloatField;
    qryTranAcc5: TFloatField;
    qryTranAcc6: TFloatField;
    qryTranPos1: TFloatField;
    qryTranPos2: TFloatField;
    qryTranPos3: TFloatField;
    qryTranPos4: TFloatField;
    qryTranPos5: TFloatField;
    qryTranPos6: TFloatField;
    qryTranKm1: TIntegerField;
    qryTranKm2: TIntegerField;
    qryTranKm6: TIntegerField;
    qrySItem: TADOQuery;
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
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
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
    QRDBText12: TQRDBText;
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
    qryTranEMPLOYEESNAME: TWideStringField;
    qryTranEMPLOYEESMhtrId: TIntegerField;
    qryTranEMPLOYEESSurName: TWideStringField;
    qryTranEMPLOYEESAddress: TWideStringField;
    qryTranEMPLOYEESTK: TWideStringField;
    qryTranEMPLOYEESTOWN: TWideStringField;
    qryTranEMPLOYEESAFM: TWideStringField;
    qryTranEMPLOYEESDOY: TWideStringField;
    qryTranEMPLOYEESSendPrint: TBooleanField;
    qryTranEMPLOYEESSendMail: TBooleanField;
    qryTranEMPLOYEESMailAddr: TWideStringField;
    qryTranCostCenterCCName: TWideStringField;
    qryTranCostCenterCCNameFull: TWideStringField;
    qryTranAcardAcardCodeFull: TWideStringField;
    QRLabel29: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel23Print(sender: TObject; var Value: String);
    procedure QuickRepBeforePrint(sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel25Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRLabel28Print(sender: TObject; var Value: String);
    procedure QRExpr14Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: string);
    procedure QRExpr15Print(sender: TObject; var Value: string);
  private
    ArrGroups: Array [1 .. 10] of String;
    DM: TDMConsum;
  public
    FromDate: TDateTime;
    ToDate: TDateTime;
    EnhmMonth: Integer;
    EnhmYear: Integer;
    EnhmFile: Boolean;
    KatanStr: String;
    function Milieage(Card: Integer; FromDT, ToDT: TDateTime; Product: Integer; ProductGroup: Integer): String;
  end;

implementation

uses FPrnTranEmp; // , PrnStat ;

{$R *.dfm}

procedure TrptKinhsKK22.qryTranCalcFields(DataSet: TDataSet);
begin
  inherited;
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
end;

procedure TrptKinhsKK22.QRLabel17Print(sender: TObject; var Value: String);
begin
  inherited;
  if self.Owner is TfrmPrnTranEmp then
    if TfrmPrnTranEmp(self.Owner).ToDate > 0 then
      // Value := 'Κινήσεις από '+ datetostr(TfrmPrnTranEmp(Self.Owner).FrDate) + ' έως ' + datetostr(TfrmPrnTran(Self.Owner).ToDate)
      Value := 'Κινήσεις έως ' + datetostr(TfrmPrnTranEmp(self.Owner).ToDate)
    else
      Value := ' '
  else
    Value := ' ';
end;

function TrptKinhsKK22.Milieage(Card: Integer; FromDT, ToDT: TDateTime; Product, ProductGroup: Integer): String;
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

procedure TrptKinhsKK22.QRLabel23Print(sender: TObject; var Value: String);
var
  CL, CE: Real;
  KM: Integer;
  SText: String;
begin
  inherited;
  if DM.ReturnConsumptionGroup(qryTranTRANACARDID.AsInteger, FromDate, ToDate, 1, CL, CE, KM, SText) then
    begin
      Value := SText;
      // if EnhmFile then
      // begin
      // AdoQuery2.Append;
      // ADOQuery2.Edit;
      // ADOQuery2ACARDID.AsInteger:=qryTranACARDID.AsInteger;
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

procedure TrptKinhsKK22.QuickRepBeforePrint(sender: TCustomQuickRep; var PrintReport: Boolean);
var
  D0, M0, Y0, D1, M1, Y1: Word;
begin
  inherited;
  if self.Owner is TfrmPrnTranEmp then
    begin
      if TfrmPrnTranEmp(self.Owner).ToDate > 0 then
        ToDate := TfrmPrnTranEmp(self.Owner).ToDate;
      if TfrmPrnTranEmp(self.Owner).FrDate > 0 then
        FromDate := TfrmPrnTranEmp(self.Owner).FrDate;
    end;

  { TODO -cCheck : Check }
  // if self.Owner is TfrmPrnStat then
  // begin
  // if TfrmPrnStat(Self.Owner).ToDateSt > 0 then
  // ToDate  :=TfrmPrnStat(Self.Owner).ToDateSt;
  // if TfrmPrnStat(Self.Owner).FrDateSt > 0 then
  // FromDate:=TfrmPrnStat(Self.Owner).FrDateSt;
  // end;

  if self.Owner is TfrmPrnTranEmp then
    begin
      KatanStr := 'Κατανάλωση από ' + datetostr(TfrmPrnTranEmp(self.Owner).FrDateSt) + ' έως ' + datetostr(TfrmPrnTranEmp(self.Owner).ToDateSt)
    end
  else
    KatanStr := '';

  if self.Owner is TfrmPrnTranEmp then
    begin
      if TfrmPrnTranEmp(self.Owner).ToDateSt > 0 then
        ToDate := TfrmPrnTranEmp(self.Owner).ToDateSt;
      if TfrmPrnTranEmp(self.Owner).FrDateSt > 0 then
        FromDate := TfrmPrnTranEmp(self.Owner).FrDateSt;
    end;

  DecodeDate(FromDate, Y0, M0, D0);
  DecodeDate(ToDate, Y1, M1, D1);

  if ((Y0 = Y1) and (M0 = M1)) then
    begin
      EnhmFile  := FALSE;
      EnhmMonth := M0;
      EnhmYear  := Y0;
    end;
  { TODO -cCheck : Check }
  // else
  // begin
  // EnhmFile:=False;
  // MessageDlg('Δεν θα ενημερωθεί το αρχείο Καταναλώσεων', mtInformation, [mbOK], 0);
  // end;
  //
  // if EnhmFile then
  // if MessageDlg('Να ενημρωθεί το αρχείο Καταναλώσεων', mtConfirmation, [mbYes,mbNo], 0)= mrNo then
  // EnhmFile:=False;
  //
  // GeneralDM.tblIGroup.First;
  // repeat
  // ArrGroups[GeneralDM.tblIGroupIGROUPID.AsInteger]:=GeneralDM.tblIGroupDESCR.AsString;
  // GeneralDM.tblIGroup.Next;
  // until GeneralDM.tblIGroup.Eof;

  DM := TDMConsum.Create(self);

end;

procedure TrptKinhsKK22.QRLabel24Print(sender: TObject; var Value: String);
var
  CL, CE: Real;
  KM: Integer;
  SText: String;
begin
  inherited;
  if DM.ReturnConsumptionGroup(qryTranTRANACARDID.AsInteger, FromDate, ToDate, 2, CL, CE, KM, SText) then
    begin
      Value := SText;
      // if EnhmFile then
      // begin
      // AdoQuery2.Append;
      // ADOQuery2.Edit;
      // ADOQuery2ACARDID.AsInteger:=qryTranACARDID.AsInteger;
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

procedure TrptKinhsKK22.QRLabel25Print(sender: TObject; var Value: String);
var
  CL, CE: Real;
  KM: Integer;
  SText: String;
begin
  inherited;
  if DM.ReturnConsumptionGroup(qryTranTRANACARDID.AsInteger, FromDate, ToDate, 3, CL, CE, KM, SText) then
    begin
      Value := SText;
      // if EnhmFile then
      // begin
      // AdoQuery2.Append;
      // ADOQuery2.Edit;
      // ADOQuery2ACARDID.AsInteger:=qryTranACARDID.AsInteger;
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

procedure TrptKinhsKK22.QRLabel26Print(sender: TObject; var Value: String);
var
  CL, CE: Real;
  KM: Integer;
  SText: String;
begin
  inherited;
  if DM.ReturnConsumptionGroup(qryTranTRANACARDID.AsInteger, FromDate, ToDate, 4, CL, CE, KM, SText) then
    begin
      Value := SText;
      // if EnhmFile then
      // begin
      // AdoQuery2.Append;
      // ADOQuery2.Edit;
      // ADOQuery2ACARDID.AsInteger:=qryTranACARDID.AsInteger;
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

procedure TrptKinhsKK22.QRLabel27Print(sender: TObject; var Value: String);
var
  CL, CE: Real;
  KM: Integer;
  SText: String;
begin
  inherited;
  if DM.ReturnConsumptionGroup(qryTranTRANACARDID.AsInteger, FromDate, ToDate, 5, CL, CE, KM, SText) then
    begin
      Value := SText;
      // if EnhmFile then
      // begin
      // AdoQuery2.Append;
      // ADOQuery2.Edit;
      // ADOQuery2ACARDID.AsInteger:=qryTranACARDID.AsInteger;
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

procedure TrptKinhsKK22.QRLabel28Print(sender: TObject; var Value: String);
begin
  inherited;
  if KatanStr > ' ' then
    Value := KatanStr
  else
    Value := '';
end;

procedure TrptKinhsKK22.QRExpr14Print(sender: TObject; var Value: String);
begin
  inherited;
  try
    Value := format('%m', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure TrptKinhsKK22.QRExpr15Print(sender: TObject; var Value: string);
begin
  inherited;
  try
    Value := format('%.2f', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

procedure TrptKinhsKK22.QRExpr1Print(sender: TObject; var Value: string);
begin
  inherited;
  try
    Value := format('%.2f', [(strtofloat(Value))]);
  except
    Value := Value;
  end;

end;

end.
