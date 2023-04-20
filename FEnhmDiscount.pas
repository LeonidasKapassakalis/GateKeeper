unit FEnhmDiscount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, ActnList, ExtCtrls, Globals, StdCtrls, Math, DEnhmTrans,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  Data.DB, Vcl.ComCtrls, cxNavigator, Vcl.PlatformDefaultStyleActnCtrls,
  FBaseDev0, Vcl.Menus, dxmdaset, SQLMemMain, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmFEnhmDiscount = class(TfrmBaseDev0)
    StatusBar1: TStatusBar;
    dtsTran: TDataSource;
    qryTran: TADOQuery;
    ADOQuery1: TADOQuery;
    dxBarManager1: TActionManager;
    ActionList1: TActionList;
    actEnhmDiscount: TAction;
    actClose: TAction;
    UpdCommandAct: TAction;
    FindStation: TADOQuery;
    FindIGroup: TADOQuery;
    FindIGroupIGROUPID: TAutoIncField;
    FindIGroupDESCR: TWideStringField;
    FindIGroupINSDT: TDateTimeField;
    FindIGroupUPDDT: TDateTimeField;
    FindIGroupINSUSR: TIntegerField;
    FindIGroupUPDUSR: TIntegerField;
    FindIGroupBITNO: TIntegerField;
    FindIGroupPOSOSTO: TFloatField;
    EnhmTrans: TADOQuery;
    qryDeleteTranD: TADOQuery;
    InsTranD: TADOQuery;
    qrySumTranD: TADOQuery;
    qStation: TADOQuery;
    qryACard: TADOQuery;
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
    qryDiscount_OLD: TADOQuery;
    qryDiscount_OLDSITEMID: TIntegerField;
    qryDiscount_OLDCUSTOMERID: TIntegerField;
    qryDiscount_OLDDISCOUNT: TBCDField;
    qryDiscount_OLDINSDT: TDateTimeField;
    qryDiscount_OLDUPDDT: TDateTimeField;
    qryDiscount_OLDINSUSR: TIntegerField;
    qryDiscount_OLDUPDUSR: TIntegerField;
    DataSource1: TDataSource;
    qryDiscount_OLDID: TAutoIncField;
    qryDiscount_OLDFROMDATE: TDateTimeField;
    qrySumTranDDISCOUNTUPDBT: TIntegerField;
    qrySumTranDCUSTOMERID: TIntegerField;
    qrySumTranDEMPLOYEESID: TIntegerField;
    qrySumTranDComp: TADOQuery;
    qrySumTranDCompDISCOUNTUPDBT: TIntegerField;
    qrySumTranDCompCUSTOMERID: TIntegerField;
    InsTranDComp: TADOQuery;
    InsTranDTRANDID: TAutoIncField;
    InsTranDCUSTOMERID: TIntegerField;
    InsTranDEMPLOYEEID: TIntegerField;
    InsTranDTTEXT: TWideStringField;
    InsTranDTRANDDATE: TDateTimeField;
    InsTranDTRANDCID: TIntegerField;
    InsTranDINSDT: TDateTimeField;
    InsTranDUPDDT: TDateTimeField;
    InsTranDINSUSR: TIntegerField;
    InsTranDUPDUSR: TIntegerField;
    InsTranDCompTRANDID: TAutoIncField;
    InsTranDCompCUSTOMERID: TIntegerField;
    InsTranDCompTTEXT: TWideStringField;
    InsTranDCompTRANDDATE: TDateTimeField;
    InsTranDCompTRANDCID: TIntegerField;
    InsTranDCompINSDT: TDateTimeField;
    InsTranDCompUPDDT: TDateTimeField;
    InsTranDCompINSUSR: TIntegerField;
    InsTranDCompUPDUSR: TIntegerField;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DataSource2: TDataSource;
    InsTranC: TADOQuery;
    InsTranCTRANCID: TAutoIncField;
    InsTranCCUSTOMERID: TIntegerField;
    InsTranCTTEXT: TWideStringField;
    InsTranCTRANCDATE: TDateTimeField;
    InsTranCTRANBCID: TIntegerField;
    InsTranCINSDT: TDateTimeField;
    InsTranCUPDDT: TDateTimeField;
    InsTranCINSUSR: TIntegerField;
    InsTranCUPDUSR: TIntegerField;
    InsTranCENHMCOCALLID: TIntegerField;
    InsTranCENHMCOCALLDATE: TDateTimeField;
    InsTranCAUTOUPDATE: TBooleanField;
    InsTranCVALUEDAY: TDateTimeField;
    InsTranCVALUEDAYUPDATED: TBooleanField;
    qryDeleteTranDComp: TADOQuery;
    qryDeleteTranC: TADOQuery;
    Label1: TLabel;
    Label2: TLabel;
    qrySumTranDCompSumOfDISQUANTITY: TFloatField;
    qrySumTranDCompSumOfDISAMOUNT: TFloatField;
    qrySumTranDCompSumOfAMOUNT: TFloatField;
    qrySumTranDCompSumOfQUANTITY: TFloatField;
    InsTranDDEBIT: TBCDField;
    InsTranDCREDIT: TBCDField;
    InsTranDCompDEBIT: TBCDField;
    InsTranDCompCREDIT: TBCDField;
    InsTranCDEBIT: TFloatField;
    InsTranCCREDIT: TFloatField;
    qrySumTranDSumOfDISQUANTITY: TFloatField;
    qrySumTranDSumOfDISAMOUNT: TFloatField;
    qrySumTranDSumOfAMOUNT: TFloatField;
    qrySumTranDSumOfQUANTITY: TFloatField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    ActionToolBar1: TActionToolBar;
    qStationStationid: TIntegerField;
    qStationName: TWideStringField;
    qStationSTREET: TWideStringField;
    qStationZIP: TWideStringField;
    qStationCITY: TWideStringField;
    qStationAreaId: TIntegerField;
    qStationSalesMenId: TIntegerField;
    qStationIGroupId1: TIntegerField;
    qStationPososto1: TFloatField;
    qStationHaveGroup1: TBooleanField;
    qStationIGroupId2: TIntegerField;
    qStationPososto2: TFloatField;
    qStationHaveGroup2: TBooleanField;
    qStationIGroupId3: TIntegerField;
    qStationPososto3: TFloatField;
    qStationHaveGroup3: TBooleanField;
    qStationIGroupId4: TIntegerField;
    qStationPososto4: TFloatField;
    qStationHaveGroup4: TBooleanField;
    qStationIGroupId5: TIntegerField;
    qStationPososto5: TFloatField;
    qStationHaveGroup5: TBooleanField;
    qStationIGroupId6: TIntegerField;
    qStationPososto6: TFloatField;
    qStationHaveGroup6: TBooleanField;
    qStationIGroupId7: TIntegerField;
    qStationPososto7: TFloatField;
    qStationHaveGroup7: TBooleanField;
    qStationIGroupId8: TIntegerField;
    qStationPososto8: TFloatField;
    qStationHaveGroup8: TBooleanField;
    qStationIGroupId9: TIntegerField;
    qStationPososto9: TFloatField;
    qStationHaveGroup9: TBooleanField;
    qStationIGroupId10: TIntegerField;
    qStationPososto10: TFloatField;
    qStationHaveGroup10: TBooleanField;
    qStationDeleted: TBooleanField;
    qStationDelUsr: TIntegerField;
    qStationDelDT: TDateTimeField;
    qStationInActive: TBooleanField;
    qStationInActiveUsr: TIntegerField;
    qStationInActiveDt: TDateTimeField;
    qStationStopSales: TBooleanField;
    qStationStopSalesUsr: TIntegerField;
    qStationStopSalesDt: TDateTimeField;
    qStationIsTest: TBooleanField;
    qStationIsTestUsr: TIntegerField;
    qStationIsTestDt: TDateTimeField;
    qStationEndPending: TBooleanField;
    qStationEndPendingDT: TDateTimeField;
    qStationEndPendingUsr: TIntegerField;
    qryTranAcardCustomerId: TIntegerField;
    qryTranCustomerSapCode: TWideStringField;
    qryTranTranStationId: TIntegerField;
    qryTranCustomerIsTest: TBooleanField;
    qryTranStationIsTest: TBooleanField;
    qryTranMerchantIsTest: TBooleanField;
    qryTranMerchantSAPCode: TWideStringField;
    qryTranTRANMerchantId: TIntegerField;
    qryTranTranTranDate: TDateTimeField;
    qryTranTranAmount: TFloatField;
    qryTranTranSitemId: TIntegerField;
    qryTranTranQuantity: TFloatField;
    qryTranTranPELADAILYUPD: TBooleanField;
    qryTranTranPELADAILYUPDBT: TIntegerField;
    qryTranTranDISCOUNTUPDBT: TIntegerField;
    qryTranTranDISCOUNTUPD: TBooleanField;
    qryTranTranTranTime: TDateTimeField;
    qryTranTranCOMMISSIONUPDBT: TIntegerField;
    qryTranTranACARDUPDBT: TIntegerField;
    qryTranTranSTATIONUPDBT: TIntegerField;
    qryTranTranCOMMISSIONUPD: TBooleanField;
    qryTranTranBatchNo: TIntegerField;
    qryTranTranACARDUPD: TBooleanField;
    qryTranTranSTATIONUPD: TBooleanField;
    qryTranTranIsAuto: TBooleanField;
    qryTranSITEMIGROUPID: TIntegerField;
    qryTranSITEMICLASSID: TIntegerField;
    qryTranTRANACARDID: TIntegerField;
    qryTranTRANDISQUANTITY: TFloatField;
    qryTranTRANDISAMOUNT: TFloatField;
    cxGrid3DBTableView1DISCOUNTUPDBT: TcxGridDBColumn;
    cxGrid3DBTableView1SumOfDISQUANTITY: TcxGridDBColumn;
    cxGrid3DBTableView1SumOfDISAMOUNT: TcxGridDBColumn;
    cxGrid3DBTableView1SumOfAMOUNT: TcxGridDBColumn;
    cxGrid3DBTableView1SumOfQUANTITY: TcxGridDBColumn;
    cxGrid3DBTableView1CUSTOMERID: TcxGridDBColumn;
    ADOQuery1CUSTOMERID: TIntegerField;
    ADOQuery1NAME: TWideStringField;
    ADOQuery1STREET: TWideStringField;
    ADOQuery1ZIP: TWideStringField;
    ADOQuery1CITY: TWideStringField;
    ADOQuery1AFM: TWideStringField;
    ADOQuery1DOY: TWideStringField;
    ADOQuery1STARTDATE: TDateTimeField;
    ADOQuery1AREAID: TIntegerField;
    ADOQuery1LOCATIONID: TIntegerField;
    ADOQuery1CGROUPID: TIntegerField;
    ADOQuery1CCLASSID: TIntegerField;
    ADOQuery1CREDITAMOUNT: TFloatField;
    ADOQuery1INSDT: TDateTimeField;
    ADOQuery1UPDDT: TDateTimeField;
    ADOQuery1INSUSR: TIntegerField;
    ADOQuery1UPDUSR: TIntegerField;
    ADOQuery1PROFESSION: TWideStringField;
    ADOQuery1BRANCHID: TIntegerField;
    ADOQuery1SAPCODE: TWideStringField;
    ADOQuery1ISACTIVE: TBooleanField;
    ADOQuery1SALESMENID: TIntegerField;
    ADOQuery1DIAKID: TIntegerField;
    ADOQuery1ISTEST: TBooleanField;
    ADOQuery1ISCONS: TBooleanField;
    ADOQuery1AREABID: TIntegerField;
    ADOQuery1DATEPHEND: TDateTimeField;
    ADOQuery1DATELOEND: TDateTimeField;
    ADOQuery1HASDETAILEMP: TBooleanField;
    ADOQuery1ALLCARDSTOBL: TBooleanField;
    ADOQuery1ALLCARDSTOBLDATE: TDateTimeField;
    ADOQuery1ALLCARDSTOBLSYSDATE: TDateTimeField;
    ADOQuery1ALLCARDSTOBLUSR: TIntegerField;
    ADOQuery1CUSTOMEROFF: TBooleanField;
    ADOQuery1CUSTOMEROFFDATE: TDateTimeField;
    ADOQuery1CUSTOMEROFFSYSDATE: TDateTimeField;
    ADOQuery1CUSTOMEROFFUSR: TIntegerField;
    ADOQuery1CARDHASEMPNAME: TBooleanField;
    ADOQuery1DATEEND: TDateTimeField;
    ADOQuery1CompanyTypeId: TIntegerField;
    ADOQuery1GarantieId: TIntegerField;
    ADOQuery1GarantieAmount: TFloatField;
    ADOQuery1Comments: TMemoField;
    qryTranTRANTRANID: TIntegerField;
    cxGrid1DBTableView1AcardCustomerId: TcxGridDBColumn;
    cxGrid1DBTableView1CustomerSapCode: TcxGridDBColumn;
    cxGrid1DBTableView1TranStationId: TcxGridDBColumn;
    cxGrid1DBTableView1CustomerIsTest: TcxGridDBColumn;
    cxGrid1DBTableView1StationIsTest: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantIsTest: TcxGridDBColumn;
    cxGrid1DBTableView1MerchantSAPCode: TcxGridDBColumn;
    cxGrid1DBTableView1TRANMerchantId: TcxGridDBColumn;
    cxGrid1DBTableView1TranTranDate: TcxGridDBColumn;
    cxGrid1DBTableView1TranAmount: TcxGridDBColumn;
    cxGrid1DBTableView1TranSitemId: TcxGridDBColumn;
    cxGrid1DBTableView1TranQuantity: TcxGridDBColumn;
    cxGrid1DBTableView1TranPELADAILYUPD: TcxGridDBColumn;
    cxGrid1DBTableView1TranPELADAILYUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView1TranDISCOUNTUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView1TranDISCOUNTUPD: TcxGridDBColumn;
    cxGrid1DBTableView1TranTranTime: TcxGridDBColumn;
    cxGrid1DBTableView1TranCOMMISSIONUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView1TranACARDUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView1TranSTATIONUPDBT: TcxGridDBColumn;
    cxGrid1DBTableView1TranCOMMISSIONUPD: TcxGridDBColumn;
    cxGrid1DBTableView1TranBatchNo: TcxGridDBColumn;
    cxGrid1DBTableView1TranACARDUPD: TcxGridDBColumn;
    cxGrid1DBTableView1TranSTATIONUPD: TcxGridDBColumn;
    cxGrid1DBTableView1TranIsAuto: TcxGridDBColumn;
    cxGrid1DBTableView1SITEMIGROUPID: TcxGridDBColumn;
    cxGrid1DBTableView1SITEMICLASSID: TcxGridDBColumn;
    cxGrid1DBTableView1TRANACARDID: TcxGridDBColumn;
    cxGrid1DBTableView1TRANDISQUANTITY: TcxGridDBColumn;
    cxGrid1DBTableView1TRANDISAMOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1TRANTRANID: TcxGridDBColumn;
    cxGrid2DBTableView1DISCOUNTUPDBT: TcxGridDBColumn;
    cxGrid2DBTableView1SumOfDISQUANTITY: TcxGridDBColumn;
    cxGrid2DBTableView1SumOfDISAMOUNT: TcxGridDBColumn;
    cxGrid2DBTableView1SumOfAMOUNT: TcxGridDBColumn;
    cxGrid2DBTableView1SumOfQUANTITY: TcxGridDBColumn;
    cxGrid2DBTableView1CUSTOMERID: TcxGridDBColumn;
    cxGrid2DBTableView1EMPLOYEESID: TcxGridDBColumn;
    memWS: TdxMemData;
    memWSSITEMID: TIntegerField;
    memWSCUSTOMERID: TIntegerField;
    memWSFROMDATE: TDateTimeField;
    memWSDISCOUNT: TBCDField;
    memWSID: TAutoIncField;
    qryDiscountAll: TADOQuery;
    qryDiscountAllID: TIntegerField;
    qryDiscountAllSITEMID: TAutoIncField;
    qryDiscountAllCustomerID: TIntegerField;
    qryDiscountAllFROMDATE: TDateTimeField;
    qryDiscountAllDISCOUNT: TFloatField;
    TabSheet4: TTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    DataSource3: TDataSource;
    cxGridDBTableView1RecId: TcxGridDBColumn;
    cxGridDBTableView1SITEMID: TcxGridDBColumn;
    cxGridDBTableView1CUSTOMERID: TcxGridDBColumn;
    cxGridDBTableView1FROMDATE: TcxGridDBColumn;
    cxGridDBTableView1DISCOUNT: TcxGridDBColumn;
    cxGridDBTableView1ID: TcxGridDBColumn;
    SQLMemTable1: TSQLMemTable;
    SQLMemTable1Id: TIntegerField;
    SQLMemTable1CustomerId: TIntegerField;
    SQLMemTable1SitemId: TIntegerField;
    SQLMemTable1FromDate: TDateTimeField;
    SQLMemTable1Discount: TFloatField;
    qryDiscount: TSQLMemQuery;
    qryDiscountId: TIntegerField;
    qryDiscountCustomerId: TIntegerField;
    qryDiscountSitemId: TIntegerField;
    qryDiscountFromDate: TDateTimeField;
    qryDiscountDiscount: TFloatField;
    procedure actEnhmDiscountExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    DM: TDMEnhmTrans;
    ToDate: TDateTime;
    SqlParamText: string;
  end;

implementation

uses DMain;

{$R *.dfm}

procedure TfrmFEnhmDiscount.actEnhmDiscountExecute(Sender: TObject);
var
  x: Integer;
  CallVar: Variant;
  CardVar: Variant;
  DiscountAmount: Real;
  BatchNo, BatchLogNo, CustomerNo: Integer;
  YY, MM, DD: Word;
begin
  DecodeDate(ToDate, YY, MM, DD);
  CallVar := ToDate;

  // Requery Data from Server to find last Enhm
  DM.qryEnhmDisCall.Close;
  DM.qryEnhmDisCall.Open;

  if DM.qryEnhmDisCall.Locate('EnhmDisCallDate', CallVar, []) then
    begin
      if MessageDlg('Εχετε ήδη Ενημερώσει για την Ημερομηνία.' + chr(13) + 'Nα διαγραφούν οι εγγραφές;', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          qryDeleteTranD.Parameters.ParamByName('PTranDCoID').Value := DM.qryEnhmDisCallENHMDISCALLID.AsInteger;
          qryDeleteTranD.ExecSQL;
          self.Refresh;
          MessageDlg('Οι κινήσεις στο TRAND έχουν διαγραφεί.', mtInformation, [mbOK], 0);
          qryDeleteTranDComp.Parameters.ParamByName('PTranDCoID').Value := DM.qryEnhmDisCallENHMDISCALLID.AsInteger;
          qryDeleteTranDComp.ExecSQL;
          self.Refresh;
          MessageDlg('Οι κινήσεις στο TRANDCOMP έχουν διαγραφεί.', mtInformation, [mbOK], 0);
          self.Refresh;
        end
      else
        exit;
    end
  else
    begin
      DM.qryEnhmDisCall.Insert;
      DM.qryEnhmDisCall.Edit;
      DM.qryEnhmDisCall.FieldByName('EnhmDisCallDate').AsDateTime := ToDate;
      DM.qryEnhmDisCall.Post;
    end;
  if DM.qryEnhmDisCall.Locate('EnhmDisCallDate', CallVar, []) then
    begin
      BatchNo := DM.qryEnhmDisCallENHMDISCALLID.AsInteger;
    end
  else
    begin
      ShowMessage('Πρόβλημα στην Ενημέρωση');
      exit;
    end;

  if DM.qryEnhmPECall.Locate('EnPCallDate;EnPCallFrom', VarArrayOf([Inttostr(DD) + '/' + Inttostr(MM) + '/' + Inttostr(YY), '5']), []) then
    begin
      if MessageDlg('Εχετε ήδη Ενημερώσει για την Ημερομηνία.' + chr(13) + 'Nα διαγραφούν οι εγγραφές;', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          qryDeleteTranC.Parameters.ParamByName('PTranDCoID').Value := DM.qryEnhmPECallENPCALLID.AsInteger;
          qryDeleteTranC.ExecSQL;
          MessageDlg('Οι κινήσεις στο TRANC έχουν διαγραφεί.', mtInformation, [mbOK], 0);
          self.Refresh;
        end
      else
        exit;
    end
  else
    begin
      DM.qryEnhmPECall.Insert;
      DM.qryEnhmPECall.Edit;
      DM.qryEnhmPECall.FieldByName('EnPCallDate').AsDateTime := ToDate;
      DM.qryEnhmPECall.FieldByName('EnPCallFrom').AsInteger := 5;
      DM.qryEnhmPECall.Post;
    end;
  if DM.qryEnhmPECall.Locate('EnPCallDate;EnPCallFrom', VarArrayOf([Inttostr(DD) + '/' + Inttostr(MM) + '/' + Inttostr(YY), '5']), []) then
    begin
      BatchLogNo := DM.qryEnhmPECallENPCALLID.AsInteger;
    end
  else
    begin
      ShowMessage('Πρόβλημα στην Ενημέρωση');
      exit;
    end;

  qryTran.First;
  ProgressBar1.Max          := qryTran.RecordCount;
  StatusBar1.Panels[0].Text := ' ';
  Label1.Caption            := Inttostr(qryTran.RecordCount);
  repeat
    Label2.Caption := Inttostr(qryTran.RecNo);

    // Calculate Discount of each Item.
    CardVar := qryTranTRANACARDID.AsVariant;
    if qryACard.Locate('AcardId', CardVar, []) then
      begin
        CustomerNo                                       := qryACardCUSTOMERID.AsInteger;
        qryDiscount.Active                               := False;
        qryDiscount.Params.ParamByName('PSITEMID').Value := qryTranTranSitemId.AsInteger;
        qryDiscount.Params.ParamByName('PCUSTOMERID').Value := CustomerNo;
        qryDiscount.Params.ParamByName('PFROMDATE').Value := qryTranTranTranDate.AsDateTime;
        try
          qryDiscount.Active := True;
        except
          DiscountAmount := 0;
          MessageDlg('Error Finding Discount.!', mtError, [mbOK], 0);
        end;

        if qryDiscount.IsEmpty then
          DiscountAmount := 0
        else
          DiscountAmount := qryDiscountDiscount.AsFloat;

        qryTran.Edit;
        qryTranTranDISCOUNTUPD.AsBoolean   := True;
        qryTranTranDISCOUNTUPDBT.AsInteger := BatchNo;
        qryTranTRANDISQUANTITY.AsFloat     := qryTranTranQuantity.AsFloat;
        qryTranTRANDISAMOUNT.AsFloat       := RoundTo((qryTranTranQuantity.AsFloat * DiscountAmount), -4);
        try
          qryTran.Post;
        except
          MessageDlg('Error', mtWarning, [mbOK], 0);
        end;
      end;
    qryTran.Next;
    Application.ProcessMessages;
    ProgressBar1.Position := ProgressBar1.Position + 1;
    // self.Refresh;
  until qryTran.Eof;
  qryTran.UpdateBatch();

  StatusBar1.Panels[0].Text := ' ';
  StatusBar1.Refresh;

  qrySumTranD.Active                                    := False;
  qrySumTranD.Parameters.ParamByName('PDisUPDBT').Value := BatchNo;
  qrySumTranD.Active                                    := True;

  qrySumTranD.Active                                    := False;
  qrySumTranD.Parameters.ParamByName('PDISUPDBT').Value := BatchNo;
  qrySumTranD.Active                                    := True;

  InsTranD.Active := True;

  if qrySumTranD.IsEmpty then
    begin
      StatusBar1.Panels[0].Text := ' ';
      MessageDlg('Δεν Υπάρχουν Κινήσεις Εκπτώσης!', mtInformation, [mbOK], 0);
    end
  else
    begin
      ProgressBar1.Max := qrySumTranD.RecordCount;
      qrySumTranD.First;
      Label1.Caption := Inttostr(qryTran.RecordCount);
      repeat
        Label2.Caption := Inttostr(qryTran.RecNo);

        InsTranD.Insert;
        InsTranD.Edit;
        InsTranDCUSTOMERID.AsInteger := qrySumTranDCUSTOMERID.AsInteger;
        InsTranDEMPLOYEEID.AsInteger := qrySumTranDEMPLOYEESID.AsInteger;
        InsTranDCREDIT.AsFloat       := RoundTo(qrySumTranDSumOfDISAMOUNT.AsFloat, -2);
        InsTranDTTEXT.AsString       := 'Έκπτωση ' + datetostr(ToDate);
        InsTranDTRANDCID.AsInteger   := BatchNo;
        InsTranDTRANDDATE.AsDateTime := ToDate;
        InsTranDDEBIT.AsFloat        := 0;
        InsTranDINSDT.AsDateTime     := now;
        InsTranDINSUSR.AsInteger     := gUUserID;

        if (Not(InsTranDCREDIT.AsFloat = 0)) then
          InsTranD.Post
        else
          InsTranD.Cancel;

        qrySumTranD.Next;
        Application.ProcessMessages;
        ProgressBar1.Position := ProgressBar1.Position + 1;
        self.Refresh;
      until qrySumTranD.Eof;
    end;
  InsTranD.UpdateBatch();

  qrySumTranDComp.Active := False;
  qrySumTranDComp.Parameters.ParamByName('PDISUPDBT').Value := BatchNo;
  qrySumTranDComp.Active := True;

  InsTranDComp.Active := True;

  if qrySumTranDComp.IsEmpty then
    begin
      StatusBar1.Panels[0].Text := ' ';
      MessageDlg('Δεν Υπάρχουν Κινήσεις Εκπτώσης!', mtInformation, [mbOK], 0);
    end
  else
    begin
      ProgressBar1.Max := qrySumTranDComp.RecordCount;
      qrySumTranDComp.First;
      Label1.Caption := Inttostr(qryTran.RecordCount);
      repeat
        Label2.Caption := Inttostr(qryTran.RecNo);

        InsTranDComp.Insert;
        InsTranDComp.Edit;
        InsTranDCompCUSTOMERID.AsInteger := qrySumTranDCompCUSTOMERID.AsInteger;
        InsTranDCompCREDIT.AsFloat       := RoundTo(qrySumTranDCompSumOfDISAMOUNT.AsFloat, -2);
        InsTranDCompTTEXT.AsString       := 'Έκπτωση ' + datetostr(ToDate);
        InsTranDCompTRANDCID.AsInteger   := BatchNo;
        InsTranDCompTRANDDATE.AsDateTime := ToDate;
        InsTranDCompDEBIT.AsFloat        := 0;
        InsTranDCompINSDT.AsDateTime     := now;
        InsTranDCompINSUSR.AsInteger     := gUUserID;

        if (Not(InsTranDCompCREDIT.AsFloat = 0)) then
          InsTranDComp.Post
        else
          InsTranDComp.Cancel;

        qrySumTranDComp.Next;
        Application.ProcessMessages;
        ProgressBar1.Position := ProgressBar1.Position + 1;
        self.Refresh;
      until qrySumTranDComp.Eof;
    end;
  InsTranDComp.UpdateBatch();

  InsTranC.Active := True;

  if qrySumTranDComp.IsEmpty then
    begin
      StatusBar1.Panels[0].Text := ' ';
      MessageDlg('Δεν Υπάρχουν Κινήσεις Εκπτώσης!', mtInformation, [mbOK], 0);
    end
  else
    begin
      ProgressBar1.Max := qrySumTranDComp.RecordCount;
      qrySumTranDComp.First;
      repeat
        InsTranC.Insert;
        InsTranC.Edit;
        InsTranCCUSTOMERID.AsInteger := qrySumTranDCompCUSTOMERID.AsInteger;
        InsTranCCREDIT.AsFloat       := RoundTo(qrySumTranDCompSumOfDISAMOUNT.AsFloat, -2);
        InsTranCTTEXT.AsString       := 'Έκπτωση ' + datetostr(ToDate);
        InsTranCTRANBCID.AsInteger   := BatchLogNo;
        InsTranCTRANCDATE.AsDateTime := ToDate;
        InsTranCDEBIT.AsFloat        := 0;
        InsTranCINSDT.AsDateTime     := now;
        InsTranCINSUSR.AsInteger     := gUUserID;

        if (Not(InsTranCCREDIT.AsFloat = 0)) then
          InsTranC.Post
        else
          InsTranC.Cancel;

        qrySumTranDComp.Next;
        Application.ProcessMessages;
        ProgressBar1.Position := ProgressBar1.Position + 1;
      until qrySumTranDComp.Eof;
    end;
  InsTranC.UpdateBatch();

  // GeneralDM.ADOConnection.BeginTrans;
  EnhmTrans.Parameters.ParamByName('BTCommission').Value := BatchNo;
  EnhmTrans.Parameters.ParamByName('BTUPD').Value        := True;
  try
    EnhmTrans.ExecSQL;
    // GeneralDM.ADOConnection.CommitTrans;
  except
    // GeneralDM.ADOConnection.RollbackTrans;
  end;

  // qryTransDet.First;
  // repeat
  // EnhmTrans.Parameters.ParamByName('Id').Value     :=qryTransDetTranId.AsInteger;
  // StatusBar1.Panels[0].Text   :='Ενημέρωση Trans id: '+ qryTransDetTranId.AsString;
  // StatusBar1.Refresh;
  // qryTransDet.Next;
  // until qryTransDet.Eof;

  StatusBar1.Panels[0].Text := '';
  MessageDlg('Ολοκλήρωση Διαδικασίας!', mtInformation, [mbOK], 0);
end;

procedure TfrmFEnhmDiscount.actCloseExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmFEnhmDiscount.FormCreate(Sender: TObject);
begin
  inherited;
  DM := TDMEnhmTrans.Create(self);

  qryACard.Active       := True;
  qryDiscountAll.Active := True;
  memWS.Active          := True;
  SQLMemTable1.Active   := True;

  qryDiscountAll.First;
  repeat
    memWS.Append;
    memWS.Edit;
    memWSSITEMID.Value    := qryDiscountAllSITEMID.Value;
    memWSCUSTOMERID.Value := qryDiscountAllCustomerID.Value;
    memWSFROMDATE.Value   := qryDiscountAllFROMDATE.Value;
    memWSDISCOUNT.Value   := qryDiscountAllDISCOUNT.Value;
    memWSID.Value         := qryDiscountAllID.Value;
    memWS.Post;
    qryDiscountAll.Next;
  until qryDiscountAll.Eof;

  qryDiscountAll.First;
  repeat
    SQLMemTable1.Append;
    SQLMemTable1.Edit;
    SQLMemTable1SitemId.Value    := qryDiscountAllSITEMID.Value;
    SQLMemTable1CustomerId.Value := qryDiscountAllCustomerID.Value;
    SQLMemTable1FromDate.Value   := qryDiscountAllFROMDATE.Value;
    SQLMemTable1Discount.Value   := qryDiscountAllDISCOUNT.Value;
    SQLMemTable1Id.Value         := qryDiscountAllID.Value;
    SQLMemTable1.Post;
    qryDiscountAll.Next;
  until qryDiscountAll.Eof;

  SetRoundMode(rmUp);
end;

end.
