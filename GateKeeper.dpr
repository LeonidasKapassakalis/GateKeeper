program GateKeeper;

// .\$(Platform)\$(Config)





uses
  FastMM4,
  Forms,
  SysUtils,
  Windows,
  Vcl.Dialogs,
  about in 'about.pas' {AboutBox},
  DBase in 'DBase.pas' {DMBase: TDataModule},
  Globals in 'Globals.pas',
  FSubParams in 'FSubParams.pas' {frmSubParams},
  DMain in 'DMain.pas' {DMMain: TDataModule},
  DSubParams in 'DSubParams.pas' {DMSubParams: TDataModule},
  FFilter in 'FFilter.pas' {frmFilter},
  RSubParams in 'RSubParams.pas' {RptSubParams: TQuickRep},
  FPasswordDlg in 'FPasswordDlg.pas' {frmPasswordDlg},
  FMain in 'FMain.pas' {frmMain},
  FTableIds in 'FTableIds.pas' {FrmTableIds},
  FGParams in 'FGParams.pas' {frmGParams},
  FSplash in 'FSplash.pas' {frmSplash},
  FSearch in 'FSearch.pas' {frmSearch},
  FSearchDisplay in 'FSearchDisplay.pas' {frmSearchDisplay},
  FBaseSearch in 'FBaseSearch.pas' {frmBaseSearch},
  FDialogWEdit in 'FDialogWEdit.pas' {FrmDialogWEdit},
  RBaseAdo in 'RBaseAdo.pas' {rptBaseAdo: TQuickRep},
  FCall in 'FCall.pas' {frmCall},
  FBForm in 'FBForm.pas' {frmBForm},
  RBase in 'RBase.pas' {rptBase: TQuickRep},
  FBEnForm in 'FBEnForm.pas' {frmBEnForm},
  FDefineQOrder in 'FDefineQOrder.pas' {frmDefineQOrder},
  FFilterEn in 'FFilterEn.pas' {frmFilterEn},
  FDispImage in 'FDispImage.pas' {frmDispImage},
  RImage in 'RImage.pas' {repImage: TQuickRep},
  FSubParamsNo in 'FSubParamsNo.pas' {frmSubParamsNo},
  FSubParamsNoEh in 'FSubParamsNoEh.pas' {frmSubParamsNoEh},
  FFilterEn2 in 'FFilterEn2.pas' {frmFilterEn2},
  FSearch2 in 'FSearch2.pas' {frmSearch2},
  FBEnFormQ in 'FBEnFormQ.pas' {frmBEnFormQ},
  FLUpOnom in 'FLUpOnom.pas' {frmLUpOnom},
  FSearchDev2 in 'FSearchDev2.pas' {frmSearchDev2},
  FFilterEnDev in 'FFilterEnDev.pas' {frmFilterEnDev},
  FSubParamEdit in 'FSubParamEdit.pas' {frmSubParamEdit},
  FSubParamsNoDev in 'FSubParamsNoDev.pas' {frmSubParamsNoDev},
  childwin in 'childwin.pas' {MDIChild},
  Common in 'Common.pas',
  Globals0 in 'Globals0.pas',
  DSysSubParams in 'DSysSubParams.pas' {DMSysSubParams: TDataModule},
  FBaseDev0 in 'FBaseDev0.pas' {frmBaseDev0},
  CustomerD in 'CustomerD.pas' {CustomerDM: TDataModule},
  TerminalD in 'TerminalD.pas' {TerminalDM: TDataModule},
  Terminal in 'Terminal.pas' {frmTerminal},
  StationD in 'StationD.pas' {StationDM: TDataModule},
  MerchantD in 'MerchantD.pas' {MerchantDM: TDataModule},
  Merchant in 'Merchant.pas' {frmMerchant},
  DMerStaCustSubs in 'DMerStaCustSubs.pas' {DMMerStaCust: TDataModule},
  Customer in 'Customer.pas',
  UDBLookupComboBoxLeo in 'UDBLookupComboBoxLeo.pas',
  ACard in 'ACard.pas' {frmACard},
  Tran in 'Tran.pas' {frmTran},
  TranD in 'TranD.pas' {TranDM: TDataModule},
  UserDialog in 'UserDialog.pas' {UserDialog},
  ImportStd in 'ImportStd.pas' {frmImportStd},
  Station in 'Station.pas' {frmStation},
  SPGetSid in 'SPGetSid.pas',
  FGenMaintDev in 'FGenMaintDev.pas' {frmGenMaintDev},
  DTransAll in 'DTransAll.pas' {DMTransAll: TDataModule},
  ExportBlackList in 'ExportBlackList.pas',
  ExportNew in 'ExportNew.pas' {frmExportNew},
  RNewCards in 'RNewCards.pas' {rptNewCards: TQuickRep},
  FPrnBase in 'FPrnBase.pas' {FrmPrnBase},
  FPrnTran in 'FPrnTran.pas' {frmPrnTran},
  DPrnTrans in 'DPrnTrans.pas' {DMPrnTrans: TDataModule},
  RBaseAvinCard in 'RBaseAvinCard.pas' {rptBaseAvinCard: TQuickRep},
  FEnhmTranPro in 'FEnhmTranPro.pas',
  DEnhmTrans in 'DEnhmTrans.pas' {DMEnhmTrans: TDataModule},
  FEnhmDaily in 'FEnhmDaily.pas' {frmFEnhmDaily},
  FEnhmTran in 'FEnhmTran.pas' {frmFEnhmTran},
  CommonOut2000 in 'CommonOut2000.pas',
  FEnhmTransCom in 'FEnhmTransCom.pas' {frmEnhmTransCom},
  FEnhmTransComPro in 'FEnhmTransComPro.pas',
  FEnhmEmployees in 'FEnhmEmployees.pas' {frmEnhmEmployees},
  DSelCust in 'DSelCust.pas' {DMSelCust: TDataModule},
  DSelACard in 'DSelACard.pas' {DMSelAcard: TDataModule},
  FPrnCustomer in 'FPrnCustomer.pas' {frmPrnCustomer},
  rCustomer1 in 'rCustomer1.pas' {rptCustomer1: TQuickRep},
  rCustomer2 in 'rCustomer2.pas' {rptCustomer2: TQuickRep},
  FPrnACard in 'FPrnACard.pas' {frmPrnACard},
  rApostolhDet in 'rApostolhDet.pas' {rptApostolhDet: TQuickRep},
  rApostolh in 'rApostolh.pas' {rptApostolh: TQuickRep},
  rApostolh00 in 'rApostolh00.pas' {rptApostolh00: TQuickRep},
  rAcardGrComp in 'rAcardGrComp.pas' {rptAcardGrComp: TQuickRep},
  rAcardGrComp1 in 'rAcardGrComp1.pas' {rptAcardGrComp1: TQuickRep},
  rKinhs1 in 'rKinhs1.pas' {rptKinhs1: TQuickRep},
  rKinhs3 in 'rKinhs3.pas' {rptKinhs3: TQuickRep},
  RKinhs9 in 'RKinhs9.pas' {rptKinhs9: TQuickRep},
  rKinhs4 in 'rKinhs4.pas' {rptKinhs4: TQuickRep},
  rKinhs8 in 'rKinhs8.pas' {rptKinhs8: TQuickRep},
  rKinhs6 in 'rKinhs6.pas' {rptKinhs6: TQuickRep},
  DConsum in 'DConsum.pas' {DMConsum: TDataModule},
  RLastCallDate in 'RLastCallDate.pas' {rptLastCallDate: TQuickRep},
  FPrnStationCalendarPro in 'FPrnStationCalendarPro.pas' {frmPrnStationCallendarPro},
  DPrnStatCall in 'DPrnStatCall.pas' {DMPrnStatCall: TDataModule},
  FInsApproval in 'FInsApproval.pas' {frmInsApproval},
  DispCardData in 'DispCardData.pas' {FrmDispCardData},
  DispCardDataDM in 'DispCardDataDM.pas' {DispCardDataDM: TDataModule},
  DispStatDataDM in 'DispStatDataDM.pas' {DispStatDataDM: TDataModule},
  DispStatData in 'DispStatData.pas' {frmDispStatData},
  DispCompDataDM in 'DispCompDataDM.pas' {DMDispCompData: TDataModule},
  DispCompData in 'DispCompData.pas' {frmDispCompData},
  ExportNewTerminal in 'ExportNewTerminal.pas' {frmExportNewTerminal},
  FEnhmStPel in 'FEnhmStPel.pas' {frmFEnhmStPel},
  FEnhmParak in 'FEnhmParak.pas' {frmFEnhmParak},
  FEnhmDiscount in 'FEnhmDiscount.pas' {frmFEnhmDiscount},
  uAutoComplete in 'uAutoComplete.pas',
  FPrnTranEmpPro in 'FPrnTranEmpPro.pas' {frmPrnTranEmpPrologue},
  FPrnTranEmp in 'FPrnTranEmp.pas' {frmPrnTranEmp},
  DPrnTransEmp in 'DPrnTransEmp.pas' {DMPrnTransEmp: TDataModule},
  RKinhs13 in 'RKinhs13.pas' {rptKinhs13: TQuickRep},
  RKinhs12 in 'RKinhs12.pas' {rptKinhs12: TQuickRep},
  rKinhs16 in 'rKinhs16.pas' {rptkinhs16: TQuickRep},
  rKinhs22 in 'rKinhs22.pas' {rptKinhs22: TQuickRep},
  DCheckTools in 'DCheckTools.pas' {DMCheckTools: TDataModule},
  rKinhs11 in 'rKinhs11.pas' {rptKinhs11: TQuickRep},
  rKinhs32 in 'rKinhs32.pas' {rptKinhs32: TQuickRep},
  rKinhs32In in 'rKinhs32In.pas' {rptKinhs32In: TQuickRep},
  rKinhsKK88 in 'rKinhsKK88.pas' {rptKinhsKK88: TQuickRep},
  rKinhsKK22 in 'rKinhsKK22.pas' {rptKinhsKK22: TQuickRep},
  RKinhsKK9 in 'RKinhsKK9.pas' {rptKinhsKK9: TQuickRep},
  rKinhsKK3 in 'rKinhsKK3.pas' {rptKinhsKK3: TQuickRep},
  rKinhsKK8 in 'rKinhsKK8.pas' {rptKinhsKK8: TQuickRep},
  FKinhsKK88a in 'FKinhsKK88a.pas' {frmKinhsKK88a},
  FViewPdf in 'FViewPdf.pas' {frmViewPdf},
  XMLSerializer in 'XMLSerializer.pas',
  FInsertVariant in 'FInsertVariant.pas' {frmInsertVariant},
  FSelectVariant in 'FSelectVariant.pas' {frmSelectVariant},
  FBasePrnDev0 in 'FBasePrnDev0.pas' {frmBasePrnDev0},
  rKinhs15 in 'rKinhs15.pas' {rptKinhs15: TQuickRep},
  RImport in 'RImport.pas' {rptImport: TQuickRep},
  rKinhs3Mer in 'rKinhs3Mer.pas' {rptKinhs3Mer: TQuickRep},
  FEnhmParakStation in 'FEnhmParakStation.pas' {frmFEnhmParakStation},
  RKinhsMisth in 'RKinhsMisth.pas' {rptKinhsMisth: TQuickRep},
  PrnStationCalendar in 'PrnStationCalendar.pas' {frmPrnStationCalendar},
  RTrCallDet0 in 'RTrCallDet0.pas' {rptTrCallDet0: TQuickRep},
  RTrCallDet1 in 'RTrCallDet1.pas' {rptTrCallDet1: TQuickRep},
  DSubParams11 in 'DSubParams11.pas' {DMSubParams11: TDataModule},
  DSubParams00 in 'DSubParams00.pas' {DMSubParams00: TDataModule},
  ImportStdTrCall in 'ImportStdTrCall.pas' {frmImportStdTrCall},
  FPopUp in 'FPopUp.pas' {frmPopUp},
  rKinhs5 in 'rKinhs5.pas' {rptKinhs5: TQuickRep},
  rKinhs43 in 'rKinhs43.pas',
  FDummy in 'FDummy.pas' {frmDummy},
  ApplicationInfo in 'ApplicationInfo.pas',
  fGMapMain in 'fGMapMain.pas' {frmGMapMain},
  DMainScreen in 'DMainScreen.pas' {DMMainScreen: TDataModule},
  FPersonDet in 'FPersonDet.pas' {frmPersonDet},
  FOurCarsDet in 'FOurCarsDet.pas' {frmOurCarsDet},
  FOtherCarsDet in 'FOtherCarsDet.pas' {frmOtherCarsDet},
  FBaseDev1 in 'FBaseDev1.pas' {frmBaseDev1},
  DPersonDet in 'DPersonDet.pas' {DMPersonDet: TDataModule},
  DOurCarsDet in 'DOurCarsDet.pas' {DMOurCarsDet: TDataModule},
  DOtherCarsDet in 'DOtherCarsDet.pas' {DMOtherCarsDet: TDataModule},
  FSelectLib in 'FSelectLib.pas' {frmSelectLib},
  FBaseRep in 'FBaseRep.pas' {frmBaseRep},
  FBRPersons in 'FBRPersons.pas' {frmBRPersons},
  FBROur in 'FBROur.pas' {frmBROur},
  FMainScreen in 'FMainScreen.pas' {frmMainScreen},
  Vcl.Themes,
  Vcl.Styles,
  FPrnTranPro in 'FPrnTranPro.pas' {frmPrnTranPrologue},
  FBaseSel in 'FBaseSel.pas' {frmBaseSel},
  FMembersSel in 'FMembersSel.pas' {frmMembersSel},
  FSelPersons in 'FSelPersons.pas' {frmSelPersons},
  FSelOther in 'FSelOther.pas' {frmSelOther},
  FSelOur in 'FSelOur.pas' {frmSelOur},
  FBROther in 'FBROther.pas' {frmBROther},
  FChangePass in 'FChangePass.pas' {frmChangePass},
  Calculator in 'Calculator.pas',
  CCALC in 'execalc(1)\CCALC.PAS',
  CCALC2 in 'execalc(1)\CCALC2.PAS' {TheCalculator},
  FSelectPersons in 'FSelectPersons.pas' {frmSelectPersons},
  FSelectOur in 'FSelectOur.pas',
  FSelectOther in 'FSelectOther.pas' {frmSelectOther},
  FBrLibro in 'FBrLibro.pas' {frmBrLibro},
  FBrLibro0 in 'FBrLibro0.pas' {frmBrLibro0},
  FCheckLib in 'FCheckLib.pas' {frmCheckLib},
  DWorkersDet in 'DWorkersDet.pas' {DMWorkersDet: TDataModule},
  FWorkersDet in 'FWorkersDet.pas' {frmWorkersDet},
  FBRWorkers in 'FBRWorkers.pas' {frmBRWorkers},
  FSelectWorkers in 'FSelectWorkers.pas' {frmSelectWorkers},
  DSubParams22 in 'DSubParams22.pas' {DMSubParams22: TDataModule},
  DSubParams33 in 'DSubParams33.pas' {DMSubParams33: TDataModule},
  FDailyReport in 'FDailyReport.pas' {FrmDailyReport},
  FInsertDailyReport in 'FInsertDailyReport.pas' {frmInsertDailyReport},
  rDailyReport in 'rDailyReport.pas' {rptDailyReport: TQuickRep},
  FAddWorker in 'FAddWorker.pas' {frmAddWorker},
  FAddWorkersBatch in 'FAddWorkersBatch.pas' {frmAddWorkersBatch},
  FWorkPermits in 'FWorkPermits.pas' {frmWorkPermits},
  DWorkPermits in 'DWorkPermits.pas' {DMWorkPermits: TDataModule},
  RWorkPermitReport in 'RWorkPermitReport.pas' {rptWorkPermitReport: TQuickRep},
  FBRWorkPermits in 'FBRWorkPermits.pas' {frmBRWorkPermits};

{$R *.RES}

var
  frmSplash: TfrmSplash;
  Mutex: THandle;

begin
  { if Not ( FindCmdLineSwitch('nosplash',['/','-'], True)) then
    begin
    Splash:= TfrmSplash.Create(Application);
    Splash.Show;
    Splash.Update;
    end;
    Application.Initialize;
    Application.Title := 'Προσημειώσεις';
    Application.CreateForm(TfrmMain, frmMain);
    if Not ( FindCmdLineSwitch('nosplash',['/','-'], True)) then
    begin
    Splash.Hide;
    end;
    Application.Run; }

  /// ////////////////////////////

  (*
    Mutex := CreateMutex(nil, True, 'b7e1cfdd-1406-46f7-9358-c7be36101068');
    if (Mutex = 0) OR (GetLastError = ERROR_ALREADY_EXISTS) then
    begin
    MessageDlg('Instance Allready Running', mtError, [mbOK], 0);
    Exit;
    end;
  *)

  Application.Initialize;

  frmSplash := TfrmSplash.Create(Application);
  frmSplash.Show;
  frmSplash.Update;

  Application.Title := 'LPC GateControl';
  frmSplash.ReadApplicationIni;
  If (Length(gADOConStr) <> 0) Then
    Begin
      Try
      Finally
        { TODO : error message to user }
      End;
    End;
  Sleep(1000);
  frmSplash.Hide;
  frmSplash.Close;
  frmSplash.Free;

  Application.CreateForm(TDMMain, DMMain);
  Application.CreateForm(TfrmMain, frmMain);
  If (Assigned(DMMain) = true) And (DMMain.ADOConnection.Connected = true) And (gADOError = ADO_ERR_NONE) Then
    begin
      Application.Run;
      (*
        if Mutex <> 0 then
        CloseHandle(Mutex);
        eo
      *) end;

end.
