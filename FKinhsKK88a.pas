unit FKinhsKK88a;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FBEnForm, Menus, Grids, DBGrids, ExtCtrls, ComCtrls, DB, DConsum,
  ADODB, Math, DMain, Vcl.ActnList, Datasnap.DBClient;

type
  TfrmKinhsKK88a = class(TfrmBEnForm)
    qrySItem: TADOQuery;
    qrySItemSITEMID: TAutoIncField;
    qrySItemDESCR: TWideStringField;
    qrySItemIGROUPID: TIntegerField;
    qrySItemICLASSID: TIntegerField;
    qrySItemPOSOSTO: TFloatField;
    qrySItemCODEINTERMINAL: TIntegerField;
    qrySItemINSDT: TDateTimeField;
    qrySItemUPDDT: TDateTimeField;
    qrySItemINSUSR: TIntegerField;
    qrySItemUPDUSR: TIntegerField;
    dtsTran: TDataSource;
    qryTran: TADOQuery;
    qryTranCountKinhs: TIntegerField;
    qryTranSumAmount: TFloatField;
    qryTranSumQuantity: TFloatField;
    qryTranSITEMDESCR: TStringField;
    qryTranCustomerName: TStringField;
    qryTranLEmp: TStringField;
    qryTranACARDVTYPEID: TIntegerField;
    qryTranLVType: TStringField;
    qryTranLCL: TFloatField;
    qryTranLCE: TFloatField;
    qryTranLKM: TIntegerField;
    qryTranLCnt: TIntegerField;
    qryTranLSi: TIntegerField;
    ADOQuery4: TADOQuery;
    ADOQuery4SITEMID: TAutoIncField;
    ADOQuery4DESCR: TWideStringField;
    ADOQuery4IGROUPID: TIntegerField;
    ADOQuery4ICLASSID: TIntegerField;
    ADOQuery4POSOSTO: TFloatField;
    ADOQuery4CODEINTERMINAL: TIntegerField;
    ADOQuery4INSDT: TDateTimeField;
    ADOQuery4UPDDT: TDateTimeField;
    ADOQuery4INSUSR: TIntegerField;
    ADOQuery4UPDUSR: TIntegerField;
    ADOQuery4MINPRICE: TFloatField;
    ADOQuery4MAXPRICE: TFloatField;
    ADOQuery4CHECKPRICE: TBooleanField;
    QCustomer: TADOQuery;
    ADOQuery1: TADOQuery;
    ADOQuery1REGNOSEQID: TAutoIncField;
    ADOQuery1REGNO: TWideStringField;
    ADOQuery3: TADOQuery;
    ADOQuery3VTYPEID: TAutoIncField;
    ADOQuery3DESCR: TWideStringField;
    ADOQuery3INSDT: TDateTimeField;
    ADOQuery3UPDDT: TDateTimeField;
    ADOQuery3INSUSR: TIntegerField;
    ADOQuery3UPDUSR: TIntegerField;
    ADOQuery2: TADOQuery;
    ADOQuery2Id: TAutoIncField;
    ADOQuery2CustomerId: TIntegerField;
    ADOQuery2MhtrId: TIntegerField;
    ADOQuery2Name: TWideStringField;
    ADOQuery2SurName: TWideStringField;
    ADOQuery2Address: TWideStringField;
    ADOQuery2TK: TWideStringField;
    ADOQuery2Town: TWideStringField;
    ADOQuery2AFM: TWideStringField;
    ADOQuery2DOY: TWideStringField;
    ADOQuery2YpokId: TIntegerField;
    ADOQuery2SendPrint: TBooleanField;
    ADOQuery2SendMail: TBooleanField;
    ADOQuery2MailAddr: TWideStringField;
    ADOQuery2LNameSur: TStringField;
    qryTranCustomerCustomerId: TIntegerField;
    qryTranAcardEmployeesid: TIntegerField;
    qryTranTranSitemId: TIntegerField;
    qryTranAcardACardId: TIntegerField;
    qryTranAcardAcardCodeFull: TWideStringField;
    qryTranACARDREGNO: TWideStringField;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1LVType: TStringField;
    ClientDataSet1LEmp: TStringField;
    ClientDataSet1SITEMDESCR: TStringField;
    ClientDataSet1CountKinhs: TIntegerField;
    ClientDataSet1SumAmount: TFloatField;
    ClientDataSet1SumQuantity: TFloatField;
    ClientDataSet1LCL: TFloatField;
    ClientDataSet1LCE: TFloatField;
    ClientDataSet1LKM: TIntegerField;
    ClientDataSet1LCnt: TIntegerField;
    ClientDataSet1LSi: TIntegerField;
    ClientDataSet1CustomerName: TStringField;
    ClientDataSet1ACARDVTYPEID: TIntegerField;
    ClientDataSet1CustomerCustomerId: TIntegerField;
    ClientDataSet1AcardEmployeesid: TIntegerField;
    ClientDataSet1TranSitemId: TIntegerField;
    ClientDataSet1AcardACardId: TIntegerField;
    ClientDataSet1AcardAcardCodeFull: TWideStringField;
    ClientDataSet1ACARDREGNO: TWideStringField;
    DataSource1: TDataSource;
    QCustomerCUSTOMERID: TAutoIncField;
    QCustomerNAME: TWideStringField;
    QCustomerSTREET: TWideStringField;
    QCustomerZIP: TWideStringField;
    QCustomerCITY: TWideStringField;
    QCustomerAFM: TWideStringField;
    QCustomerDOY: TWideStringField;
    QCustomerSTARTDATE: TDateTimeField;
    QCustomerAREAID: TIntegerField;
    QCustomerLOCATIONID: TIntegerField;
    QCustomerCGROUPID: TIntegerField;
    QCustomerCCLASSID: TIntegerField;
    QCustomerCREDITAMOUNT: TFloatField;
    QCustomerINSDT: TDateTimeField;
    QCustomerUPDDT: TDateTimeField;
    QCustomerINSUSR: TIntegerField;
    QCustomerUPDUSR: TIntegerField;
    QCustomerPROFESSION: TWideStringField;
    QCustomerBRANCHID: TIntegerField;
    QCustomerSAPCODE: TWideStringField;
    QCustomerISACTIVE: TBooleanField;
    QCustomerSALESMENID: TIntegerField;
    QCustomerDIAKID: TIntegerField;
    QCustomerISTEST: TBooleanField;
    QCustomerISCONS: TBooleanField;
    QCustomerAREABID: TIntegerField;
    QCustomerDATEPHEND: TDateTimeField;
    QCustomerDATELOEND: TDateTimeField;
    QCustomerHASDETAILEMP: TBooleanField;
    QCustomerALLCARDSTOBL: TBooleanField;
    QCustomerALLCARDSTOBLDATE: TDateTimeField;
    QCustomerALLCARDSTOBLSYSDATE: TDateTimeField;
    QCustomerALLCARDSTOBLUSR: TIntegerField;
    QCustomerCUSTOMEROFF: TBooleanField;
    QCustomerCUSTOMEROFFDATE: TDateTimeField;
    QCustomerCUSTOMEROFFSYSDATE: TDateTimeField;
    QCustomerCUSTOMEROFFUSR: TIntegerField;
    QCustomerCARDHASEMPNAME: TBooleanField;
    QCustomerDATEEND: TDateTimeField;
    QCustomerCompanyTypeId: TIntegerField;
    QCustomerGarantieId: TIntegerField;
    QCustomerGarantieAmount: TFloatField;
    QCustomerComments: TMemoField;
    qryTranLCalculated: TBooleanField;
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure FormGridTitleClick(Column: TColumn);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    ArrGroups: Array [1 .. 10] of String;
    DM: TDMConsum;
    FUpdate: Boolean;
    procedure SetUpdate(const Value: Boolean);
  public
    FromDate: TDateTime;
    ToDate: TDateTime;
    EnhmMonth: Integer;
    EnhmYear: Integer;
    EnhmFile: Boolean;
    KatanStr: String;

    CntMO: Integer;
    procedure StartSt;
    procedure InitCons;
    property Updated: Boolean read FUpdate write SetUpdate;
  end;

implementation

uses FPrnTranEmp; // , PrnStat ;

{$R *.dfm}

procedure TfrmKinhsKK88a.SetUpdate(const Value: Boolean);
begin
  FUpdate := Value;
end;

procedure TfrmKinhsKK88a.StartSt;
var
  D0, M0, Y0, D1, M1, Y1: Word;
begin
  inherited;

  DM := TDMConsum.Create(Self);

  if Self.Owner is TfrmPrnTranEmp then
    begin
      if TfrmPrnTranEmp(Self.Owner).ToDate > 0 then
        ToDate := TfrmPrnTranEmp(Self.Owner).ToDate;
      if TfrmPrnTranEmp(Self.Owner).FrDate > 0 then
        FromDate := TfrmPrnTranEmp(Self.Owner).FrDate;
    end;

  // if self.Owner is TfrmPrnStat then
  // begin
  // if TfrmPrnStat(Self.Owner).ToDateSt > 0 then
  // ToDate  :=TfrmPrnStat(Self.Owner).ToDateSt;
  // if TfrmPrnStat(Self.Owner).FrDateSt > 0 then
  // FromDate:=TfrmPrnStat(Self.Owner).FrDateSt;
  // end;

  if Self.Owner is TfrmPrnTranEmp then
    begin
      KatanStr := 'Κατανάλωση από ' + datetostr(TfrmPrnTranEmp(Self.Owner).FrDateSt) + ' έως ' + datetostr(TfrmPrnTranEmp(Self.Owner).ToDateSt)
    end
  else
    KatanStr := '';

  if Self.Owner is TfrmPrnTranEmp then
    begin
      if TfrmPrnTranEmp(Self.Owner).ToDateSt > 0 then
        ToDate := TfrmPrnTranEmp(Self.Owner).ToDateSt;
      if TfrmPrnTranEmp(Self.Owner).FrDateSt > 0 then
        FromDate := TfrmPrnTranEmp(Self.Owner).FrDateSt;
    end;

  DecodeDate(FromDate, Y0, M0, D0);
  DecodeDate(ToDate, Y1, M1, D1);

  if ((Y0 = Y1) and (M0 = M1)) then
    begin
      EnhmFile  := FALSE;
      EnhmMonth := M0;
      EnhmYear  := Y0;
    end
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

end;

procedure TfrmKinhsKK88a.qryTranCalcFields(DataSet: TDataSet);
var
  CL, CE: Real;
  KM: Integer;
  SText: String;
begin
  if qryTranLCalculated.AsBoolean = True then
    Exit;

  CL := 0;
  CE := 0;
  KM := 0;
  if qryTranTranSitemId.AsInteger in [1, 2, 3, 4, 5] then
    if DM.ReturnConsumptionGroup(qryTranAcardACardId.AsInteger, FromDate, ToDate, qryTranLSi.AsInteger, CL, CE, KM, SText) then
      begin
        qryTranLCL.Value             := CL;
        qryTranLCE.Value             := CE;
        qryTranLKM.Value             := KM;
        qryTranLCnt.Value            := 1;
        qryTranLCalculated.AsBoolean := True;
      end
    else
      begin
        qryTranLCnt.Value            := 0;
        qryTranLCalculated.AsBoolean := True;
      end
  else
    begin
      qryTranLCnt.Value            := 0;
      qryTranLCalculated.AsBoolean := True;
    end;
end;

procedure TfrmKinhsKK88a.InitCons;
begin

end;

procedure TfrmKinhsKK88a.FormActivate(Sender: TObject);
var
  x: Integer;
begin
  inherited;
  if Updated then
    Exit;
  qryTran.First;
  ClientDataSet1.Active := True;
  repeat
    ClientDataSet1.Append;
    ClientDataSet1.Edit;
    for x                            := 0 to qryTran.FieldCount - 1 do
      ClientDataSet1.Fields[x].Value := qryTran.Fields[x].Value;
    ClientDataSet1.Post;
    qryTran.Next;
  until qryTran.Eof;
  Updated := True;

  // ClientDataSet1.LoadFromStream();
end;

procedure TfrmKinhsKK88a.FormCreate(Sender: TObject);
begin
  inherited;
  Updated := FALSE;
end;

procedure TfrmKinhsKK88a.FormGridTitleClick(Column: TColumn);
begin
  // inherited;

end;

end.
