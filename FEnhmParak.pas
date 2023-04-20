unit FEnhmParak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, ActnList, DB, ComCtrls, cxGraphics, cxControls, DEnhmTrans,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, Common, CommonOut2000,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, FBaseDev0,
  Vcl.PlatformDefaultStyleActnCtrls, cxNavigator, Vcl.Menus, DMain, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmFEnhmParak = class(TfrmBaseDev0)
    dtsTran: TDataSource;
    qryTran: TADOQuery;
    qryTranSumAmount: TFloatField;
    qryTranSumQuantity: TFloatField;
    qryCustomer: TADOQuery;
    qryMerchant: TADOQuery;
    dxBarManager1: TActionManager;
    ActionList1: TActionList;
    actEnhmStation: TAction;
    actClose: TAction;
    EnhmSap: TADOTable;
    qryTranParakPer: TFloatField;
    qryTranParakAmount: TFloatField;
    EnhmSapCode: TIntegerField;
    EnhmSapAmount: TIntegerField;
    EnhmSapTaxCode: TStringField;
    EnhmSapSText: TStringField;
    FindStation: TADOQuery;
    FindIGroup: TADOQuery;
    EnhmTrans: TADOQuery;
    qryDeleteTranP: TADOQuery;
    InsTranP: TADOQuery;
    InsTranPTRANPID: TAutoIncField;
    InsTranPSTATIONID: TIntegerField;
    InsTranPSITEMID: TIntegerField;
    InsTranPDEBIT: TFloatField;
    InsTranPCREDIT: TFloatField;
    InsTranPTTEXT: TWideStringField;
    InsTranPTRANPDATE: TDateTimeField;
    InsTranPTRANBCOID: TIntegerField;
    InsTranPINSDT: TDateTimeField;
    InsTranPUPDDT: TDateTimeField;
    InsTranPINSUSR: TIntegerField;
    InsTranPUPDUSR: TIntegerField;
    StatusBar1: TStatusBar;
    qrySumTranP: TADOQuery;
    qrySumTranPStationId: TIntegerField;
    qrySumTranPTranBCOID: TIntegerField;
    qrySumTranPSumParak: TFloatField;
    qrySumTranPLSapCode: TIntegerField;
    EnhmSapY: TADOTable;
    qryMerchant0: TADOQuery;
    qrySumTranPLStationKY: TIntegerField;
    EnhmSapYCODE: TIntegerField;
    EnhmSapYAMOUNT: TIntegerField;
    EnhmSapYTAXCODE: TStringField;
    EnhmSapYSTEXT: TStringField;
    UpdCommandAct: TAction;
    qrySumTranPLName: TStringField;
    AllStation: TADOQuery;
    ActionToolBar1: TActionToolBar;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qryTranTranMerchantId: TIntegerField;
    qryTranMerchantSapCode: TWideStringField;
    qryTranSitemIGroupID: TIntegerField;
    FindIGroupId: TIntegerField;
    FindIGroupName: TWideStringField;
    FindIGroupBITNO: TIntegerField;
    FindIGroupPOSOSTO: TFloatField;
    FindIGroupInsUsr: TIntegerField;
    FindIGroupInsDT: TDateTimeField;
    FindIGroupUpdUsr: TIntegerField;
    FindIGroupUpdDT: TDateTimeField;
    FindIGroupDeleted: TBooleanField;
    FindIGroupDelUsr: TIntegerField;
    FindIGroupDelDT: TDateTimeField;
    FindIGroupInActive: TBooleanField;
    FindIGroupInActiveUsr: TIntegerField;
    FindIGroupInActiveDt: TDateTimeField;
    qryMerchant0MerchantId: TIntegerField;
    qryMerchant0Name: TWideStringField;
    qryMerchant0Street: TWideStringField;
    qryMerchant0ZIP: TWideStringField;
    qryMerchant0City: TWideStringField;
    qryMerchant0AFM: TWideStringField;
    qryMerchant0DOY: TWideStringField;
    qryMerchant0ISTEST: TBooleanField;
    qryMerchant0AreaId: TIntegerField;
    qryMerchant0SAPCode: TWideStringField;
    qryMerchant0MerchantCode: TWideStringField;
    qryMerchant0SalesMenId: TIntegerField;
    qryMerchant0InsUsr: TIntegerField;
    qryMerchant0InsDT: TDateTimeField;
    qryMerchant0UpdUsr: TIntegerField;
    qryMerchant0UpdDT: TDateTimeField;
    qryMerchant0Deleted: TBooleanField;
    qryMerchant0DelUsr: TIntegerField;
    qryMerchant0DelDT: TDateTimeField;
    qryMerchant0InActive: TBooleanField;
    qryMerchant0InActiveUsr: TIntegerField;
    qryMerchant0InActiveDt: TDateTimeField;
    qryMerchant0StopSales: TBooleanField;
    qryMerchant0StopSalesUsr: TIntegerField;
    qryMerchant0StopSalesDt: TDateTimeField;
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
    EnhmSapK: TADOTable;
    EnhmSapKCODE: TIntegerField;
    EnhmSapKAmount: TIntegerField;
    EnhmSapKTaxCode: TStringField;
    EnhmSapKSText: TStringField;
    AllStationStationid: TIntegerField;
    AllStationName: TWideStringField;
    AllStationSTREET: TWideStringField;
    AllStationZIP: TWideStringField;
    AllStationCITY: TWideStringField;
    AllStationAreaId: TIntegerField;
    AllStationSalesMenId: TIntegerField;
    AllStationIGroupId1: TIntegerField;
    AllStationPososto1: TFloatField;
    AllStationHaveGroup1: TBooleanField;
    AllStationIGroupId2: TIntegerField;
    AllStationPososto2: TFloatField;
    AllStationHaveGroup2: TBooleanField;
    AllStationIGroupId3: TIntegerField;
    AllStationPososto3: TFloatField;
    AllStationHaveGroup3: TBooleanField;
    AllStationIGroupId4: TIntegerField;
    AllStationPososto4: TFloatField;
    AllStationHaveGroup4: TBooleanField;
    AllStationIGroupId5: TIntegerField;
    AllStationPososto5: TFloatField;
    AllStationHaveGroup5: TBooleanField;
    AllStationIGroupId6: TIntegerField;
    AllStationPososto6: TFloatField;
    AllStationHaveGroup6: TBooleanField;
    AllStationIGroupId7: TIntegerField;
    AllStationPososto7: TFloatField;
    AllStationHaveGroup7: TBooleanField;
    AllStationIGroupId8: TIntegerField;
    AllStationPososto8: TFloatField;
    AllStationHaveGroup8: TBooleanField;
    AllStationIGroupId9: TIntegerField;
    AllStationPososto9: TFloatField;
    AllStationHaveGroup9: TBooleanField;
    AllStationIGroupId10: TIntegerField;
    AllStationPososto10: TFloatField;
    AllStationHaveGroup10: TBooleanField;
    AllStationDeleted: TBooleanField;
    AllStationDelUsr: TIntegerField;
    AllStationDelDT: TDateTimeField;
    AllStationInActive: TBooleanField;
    AllStationInActiveUsr: TIntegerField;
    AllStationInActiveDt: TDateTimeField;
    AllStationStopSales: TBooleanField;
    AllStationStopSalesUsr: TIntegerField;
    AllStationStopSalesDt: TDateTimeField;
    AllStationIsTest: TBooleanField;
    AllStationIsTestUsr: TIntegerField;
    AllStationIsTestDt: TDateTimeField;
    AllStationEndPending: TBooleanField;
    AllStationEndPendingDT: TDateTimeField;
    AllStationEndPendingUsr: TIntegerField;
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
    actEnhmStationSingle: TAction;
    cxGrid1DBTableView1TranMerchantId: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantSapCode: TcxGridDBColumn;
    cxGrid1DBTableView1SitemIGroupID: TcxGridDBColumn;
    cxGrid1DBTableView1SumAmount: TcxGridDBColumn;
    cxGrid1DBTableView1SumQuantity: TcxGridDBColumn;
    cxGrid1DBTableView1ParakPer: TcxGridDBColumn;
    cxGrid1DBTableView1ParakAmount: TcxGridDBColumn;
    FindStationIGroupId1: TIntegerField;
    FindStationPososto1: TFloatField;
    FindStationIGroupId2: TIntegerField;
    FindStationPososto2: TFloatField;
    FindStationIGroupId3: TIntegerField;
    FindStationPososto3: TFloatField;
    FindStationIGroupId4: TIntegerField;
    FindStationPososto4: TFloatField;
    FindStationIGroupId5: TIntegerField;
    FindStationPososto5: TFloatField;
    FindStationIGroupId6: TIntegerField;
    FindStationPososto6: TFloatField;
    FindStationIGroupId7: TIntegerField;
    FindStationPososto7: TFloatField;
    FindStationIGroupId8: TIntegerField;
    FindStationPososto8: TFloatField;
    FindStationIGroupId9: TIntegerField;
    FindStationPososto9: TFloatField;
    FindStationIGroupId10: TIntegerField;
    FindStationPososto10: TFloatField;
    qryTranUpdated: TBooleanField;
    cxGrid1DBTableView1Updated: TcxGridDBColumn;
    qryMerchant0BranchId: TIntegerField;
    FindStationMerchantid: TIntegerField;
    procedure qryTranCalcFields(DataSet: TDataSet);
    procedure actCloseExecute(Sender: TObject);
    procedure actEnhmStationSingleExecute(Sender: TObject);
    procedure actEnhmStationMultiExecute(Sender: TObject);
    procedure actEnhmStationMainExecute(var BatchNo: Integer);
    procedure actEnhmStationFooterExecute(var BatchNo: Integer);
    procedure FormCreate(Sender: TObject);
  private
    GenPososto: Array [0 .. 10] of Real;
    CachePelaths: Integer;
    DM: TDMEnhmTrans;
  public
    ToDate: TDateTime;
    VatComm: String;
    function ClearSpaces(InStr: String): string;
  end;

implementation

uses Globals, Station;

{$R *.dfm}

procedure TfrmFEnhmParak.qryTranCalcFields(DataSet: TDataSet);
  function ReturnParakPercent(Merchant: Integer; Group: Integer): Real;
    function FindGenProductPososto(Group: Integer): Real;
    begin
      if GenPososto[Group] > 0 then
        Result := GenPososto[Group]
      else
        Result := GenPososto[0];
    end;

  begin
    if Not(CachePelaths = Merchant) then
      begin
        FindStation.Active                             := False;
        FindStation.Parameters.ParamByName('id').Value := Merchant;
        FindStation.Active                             := True;
        CachePelaths                                   := Merchant;
      end;
    if (Not(FindStation.IsEmpty)) then
      begin
        if FindStationIGroupId1.AsInteger = Group then
          begin
            Result := FindStationPososto1.AsFloat;
            exit;
          end;
        if FindStationIGroupId2.AsInteger = Group then
          begin
            Result := FindStationPososto2.AsFloat;
            exit;
          end;
        if FindStationIGroupId3.AsInteger = Group then
          begin
            Result := FindStationPososto3.AsFloat;
            exit;
          end;
        if FindStationIGroupId4.AsInteger = Group then
          begin
            Result := FindStationPososto4.AsFloat;
            exit;
          end;
        if FindStationIGroupId5.AsInteger = Group then
          begin
            Result := FindStationPososto5.AsFloat;
            exit;
          end;
        Result := FindGenProductPososto(Group);
      end
    else
      Result := FindGenProductPososto(Group);
  end;

var
  Leo: Real;
begin
  if qryTranUpdated.asBoolean = False then
    begin
      try
        qryTranParakPer.AsFloat := ReturnParakPercent(qryTranTranMerchantId.AsInteger, qryTranSitemIGroupID.AsInteger);
      except
        qryTranParakPer.AsFloat := 0;
      end;
      Leo                        := qryTranSumAmount.AsInteger * qryTranParakPer.AsFloat / 100;
      Leo                        := (round((Leo * 100)) / 100);
      qryTranParakAmount.AsFloat := Leo;
      qryTranUpdated.asBoolean   := True;
    end;

end;

procedure TfrmFEnhmParak.actCloseExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmFEnhmParak.actEnhmStationMultiExecute(Sender: TObject);
var
  Batch: Integer;
begin
  EnhmSapY.Active           := False;
  EnhmSapY.ConnectionString := ReadApplicationIni(INI_ADO_SECTION, INI_EXPORT_SAP_PARAKRATY);
  EnhmSapY.Active           := True;

  EnhmSapY.Active := True;
  if Not(EnhmSapY.IsEmpty) then
    begin
      MessageDlg('Υπάρχει ήδη Αρχείο(Υποκ.)!' + #13 + #10 + 'Πρέπει να Διαγραφεί', mtError, [mbOK], 0);
      exit;
    end;

  EnhmSapK.Active           := False;
  EnhmSapK.ConnectionString := ReadApplicationIni(INI_ADO_SECTION, INI_EXPORT_SAP_PARAKRATK);
  EnhmSapK.Active           := True;

  EnhmSapK.Active := True;
  if Not(EnhmSapK.IsEmpty) then
    begin
      MessageDlg('Υπάρχει ήδη Αρχείο(Κεντρικο)!' + #13 + #10 + 'Πρέπει να Διαγραφεί', mtError, [mbOK], 0);
      exit;
    end;

  actEnhmStationMainExecute(Batch);

  if EnhmSapK.IsEmpty then
    begin
      qrySumTranP.First;
      repeat
        if qrySumTranPLStationKY.AsInteger = 1 then
          begin
            EnhmSapK.Append;
            EnhmSapKCODE.AsInteger   := qrySumTranPLSapCode.AsInteger;
            EnhmSapKAmount.AsFloat   := qrySumTranPSumParak.AsFloat * 100;
            EnhmSapKSText.AsString   := 'Ενημ.Παρακ.AVINCARD ' + ClearSpaces(qrySumTranPLName.AsString);
            EnhmSapKTaxCode.AsString := VatComm;
            if EnhmSapKAmount.AsInteger > 0 then
              EnhmSapK.Post
            else
              EnhmSapK.Cancel;
          end
        else
          begin
            EnhmSapY.Append;
            EnhmSapYCODE.AsInteger   := qrySumTranPLSapCode.AsInteger;
            EnhmSapYAMOUNT.AsFloat   := qrySumTranPSumParak.AsFloat * 100;
            EnhmSapYSTEXT.AsString   := 'Ενημ.Παρακ.AVINCARD ' + ClearSpaces(qrySumTranPLName.AsString);
            EnhmSapYTAXCODE.AsString := VatComm;
            if EnhmSapYAMOUNT.AsInteger > 0 then
              EnhmSapY.Post
            else
              EnhmSapY.Cancel;
          end;
        qrySumTranP.Next;
      until qrySumTranP.Eof;

    end;

  actEnhmStationFooterExecute(Batch);

end;

procedure TfrmFEnhmParak.actEnhmStationSingleExecute(Sender: TObject);
var
  Batch: Integer;
begin
  inherited;
  EnhmSap.Active           := False;
  EnhmSap.ConnectionString := ReadApplicationIni(INI_ADO_SECTION, INI_EXPORT_SAP_PARAKRAT);
  EnhmSap.Active           := True;

  EnhmSap.Active := True;
  if Not(EnhmSap.IsEmpty) then
    begin
      MessageDlg('Υπάρχει ήδη Αρχείο!' + #13 + #10 + 'Πρέπει να Διαγραφεί', mtError, [mbOK], 0);
      exit;
    end;

  actEnhmStationMainExecute(Batch);
  if EnhmSap.IsEmpty then
    begin
      qrySumTranP.First;
      repeat
        EnhmSap.Append;
        EnhmSapCode.AsInteger   := qrySumTranPLSapCode.AsInteger;
        EnhmSapAmount.AsFloat   := qrySumTranPSumParak.AsFloat * 100;
        EnhmSapSText.AsString   := 'Ενημ.Παρακ.AVINCARD ' + ClearSpaces(qrySumTranPLName.AsString);
        EnhmSapTaxCode.AsString := VatComm;
        if EnhmSapAmount.AsInteger > 0 then
          EnhmSap.Post
        else
          EnhmSap.Cancel;
        qrySumTranP.Next;
      until qrySumTranP.Eof;

    end;

  actEnhmStationFooterExecute(Batch);

end;

procedure TfrmFEnhmParak.actEnhmStationMainExecute(var BatchNo: Integer);
var
  x: Integer;
  CallVar: Variant;
  // BatchNo:Integer;
  YY, MM, DD: Word;
  aaa: string;
begin
  aaa := ClearSpaces('Male     1234');
  Assert(aaa = 'Male 1234', 'Wrong Exec');

  DecodeDate(ToDate, YY, MM, DD);
  CallVar := ToDate;

  // Requery Data from Server to find last Enhm

  DM.qryEnhmCOCall.close;
  DM.qryEnhmCOCall.Open;

  if DM.qryEnhmCOCall.Locate('EnCCallDate', CallVar, []) then
    begin
      if MessageDlg('Εχετε ήδη Ενημερώσει για την Ημερομηνία.' + chr(13) + 'Nα διαγραφούν οι εγγραφές;', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          qryDeleteTranP.Parameters.ParamByName('PTranBCOID').Value := DM.qryEnhmCOCallENCCALLID.AsInteger;
          qryDeleteTranP.ExecSQL;
          self.Refresh;
        end
      else
        exit;
    end
  else
    begin
      DM.qryEnhmCOCall.Insert;
      DM.qryEnhmCOCall.Edit;
      DM.qryEnhmCOCall.FieldByName('EnCCallDate').AsDateTime := ToDate;
      DM.qryEnhmCOCall.Post;
    end;
  if DM.qryEnhmCOCall.Locate('EnCCallDate', CallVar, []) then
    begin
      BatchNo := DM.qryEnhmCOCallENCCALLID.AsInteger;
    end
  else
    begin
      ShowMessage('Πρόβλημα στην Ενημέρωση');
      exit;
    end;

  qryTran.First;
  StatusBar1.Panels[0].Text := ' ';
  repeat
    InsTranP.Active := True;
    InsTranP.Insert;
    InsTranP.Edit;
    InsTranPSTATIONID.AsInteger := qryTranTranMerchantId.AsInteger;
    InsTranPTRANBCOID.AsInteger := BatchNo;
    InsTranPSITEMID.AsInteger   := qryTranSitemIGroupID.AsInteger;
    InsTranPDEBIT.AsFloat       := qryTranParakAmount.AsFloat;
    InsTranPTTEXT.AsString      := Format('Αξία : %f  Ποσοστό : %f', [qryTranSumAmount.AsFloat, qryTranParakPer.AsFloat]);
    StatusBar1.Panels[0].Text   := Format('Αξία : %f  Ποσοστό : %f', [qryTranSumAmount.AsFloat, qryTranParakPer.AsFloat]);
    StatusBar1.Refresh;
    InsTranPTRANPDATE.AsDateTime := ToDate;
    InsTranPINSDT.AsDateTime     := now();
    InsTranPUPDDT.AsDateTime     := now();
    InsTranPINSUSR.AsInteger     := gUUserId;
    InsTranPUPDUSR.AsInteger     := gUUserId;
    InsTranP.Post;
    qryTran.Next;
  until qryTran.Eof;

  StatusBar1.Panels[0].Text := ' ';
  StatusBar1.Refresh;

  qrySumTranP.Active                                    := False;
  qrySumTranP.Parameters.ParamByName('PTranBCID').Value := BatchNo;
  qrySumTranP.Active                                    := True;

  if qrySumTranP.IsEmpty then
    begin
      StatusBar1.Panels[0].Text := ' ';
      MessageDlg('Δεν Υπάρχουν Κινήσεις Παρακράτησης!', mtInformation, [mbOK], 0);
    end;

{$REGION 'Old Code Obsolete'}
  // if EnhmSap.IsEmpty then
  // begin
  // qrySumTranP.First;
  // repeat
  // if qrySumTranPLStationKY.AsInteger = 1 then
  // begin
  // EnhmSap.Append;
  // EnhmSapCode.AsInteger       :=qrySumTranPLSapCode.AsInteger;
  // EnhmSapAmount.AsFloat       :=qrySumTranPSumParak.asFloat * 100;
  /// / 10/2/2009
  /// /         EnhmSapSText.AsString       :='Ενημέρωση Παρακράτησης AVINCARD';
  // EnhmSapSText.AsString       :='Ενημ.Παρακ.AVINCARD ' + ClearSpaces(qrySumTranPLName.AsString);
  /// / FPA 19%
  /// /       EnhmSapTaxCode.AsString     :='99';
  /// /       EnhmSapTaxCode.AsString     :='95';
  /// /         EnhmSapTaxCode.AsString     :='C4';
  /// / FPA from Ini Value
  // EnhmSapTaxCode.AsString     :=VatComm;
  //
  // if EnhmSapAmount.AsInteger > 0 then
  // EnhmSap.Post
  // else
  // EnhmSap.Cancel;
  // end
  // else
  // begin
  // EnhmSapY.Append;
  // EnhmSapYCode.AsInteger       :=qrySumTranPLSapCode.AsInteger;
  // EnhmSapYAmount.AsFloat       :=qrySumTranPSumParak.asFloat * 100;
  /// / 10/2/2009
  /// /         EnhmSapYSText.AsString       :='Ενημέρωση Παρακράτησης AVINCARD';
  // EnhmSapYSText.AsString       :='Ενημ.Παρακ.AVINCARD ' + ClearSpaces(qrySumTranPLName.AsString);
  /// / FPA 19%
  /// /       EnhmSapYTaxCode.AsString     :='99';
  /// /       EnhmSapYTaxCode.AsString     :='95';
  /// /         EnhmSapYTaxCode.AsString     :='C4';
  /// / FPA from Ini Value
  // EnhmSapYTaxCode.AsString     :=VatComm;
  //
  // if EnhmSapYAmount.AsInteger > 0 then
  // EnhmSapY.Post
  // else
  // EnhmSapY.Cancel;
  // end;
  // qrySumTranP.Next;
  // until qrySumTranP.Eof;
{$ENDREGION}
end;

procedure TfrmFEnhmParak.actEnhmStationFooterExecute(var BatchNo: Integer);
begin

  CreateDraftMail(ReadApplicationIni(INI_ADO_SECTION, MAIL_TO), ReadApplicationIni(INI_ADO_SECTION, MAIL_CC), ReadApplicationIni(INI_ADO_SECTION, MAIL_BCC),
    'Ενημέρωση Αρχείου Παρακράτησης AVINCARD', 'Ενημέρωση Αρχείου Παρακράτησης AVINCARD ' + DatetoStr(ToDate));

  // qryTransDet.First;
  // repeat

  EnhmTrans.Parameters.ParamByName('BTCommission').Value := BatchNo;
  EnhmTrans.Parameters.ParamByName('BTUpd').Value        := True;
  EnhmTrans.ExecSQL;

  // EnhmTrans.Parameters.ParamByName('Id').Value     :=qryTransDetTranId.AsInteger;
  // StatusBar1.Panels[0].Text   :='Ενημέρωση Trans id: '+ qryTransDetTranId.AsString;
  // StatusBar1.Refresh;
  // qryTransDet.Next;
  // until qryTransDet.Eof;

  StatusBar1.Panels[0].Text := '';
  MessageDlg('Ολοκλήρωση Διαδικασίας!', mtInformation, [mbOK], 0);

end;

function TfrmFEnhmParak.ClearSpaces(InStr: String): string;
var
  x, y: Integer;
begin
  y       := Length(InStr);
  for x   := 0 to y do
    InStr := StringReplace(InStr, '  ', ' ', []);
  Result  := InStr;
end;

procedure TfrmFEnhmParak.FormCreate(Sender: TObject);
var
  x: Integer;
begin
  for x           := 0 to 10 do
    GenPososto[x] := 0;

  FindIGroup.Active := False;
  FindIGroup.Active := True;
  FindIGroup.First;
  repeat
    // CRITICAL Wrong Index
    // GenPososto[FindIGroupID.AsInteger]:=FindIGroupPOSOSTO.AsFloat;
    // Wrong Index
    GenPososto[FindIGroupBITNO.AsInteger] := FindIGroupPOSOSTO.AsFloat;
    FindIGroup.Next;
  until FindIGroup.Eof;

  GenPososto[0] := 1;

  VatComm := ReadApplicationIni(INI_ADO_SECTION, INI_VAT_CODE_COMMISSION);

  if VatComm = '' then
    VatComm := 'C4';

  DM := TDMEnhmTrans.Create(self);

end;

end.
