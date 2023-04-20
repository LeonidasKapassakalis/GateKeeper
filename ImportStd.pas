Unit ImportStd;

Interface

Uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Clipbrd, Common,
  ComCtrls, DB, ADODB, Menus, dxmdaset, RImport,
  QuickRpt, Globals, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, FBaseDev0, Datasnap.DBClient;

Const
  IMP_ERR_NONE = 0;
  IMP_ERR_SIGNATURE = 1;
  IMP_ERR_NOT_NUMBER = 2;
  IMP_ERR_HDR_DATE = 3;
  IMP_ERR_DATA = 4;
  IMP_ERR_DATA_PRAT = 5;
  IMP_ERR_DATA_CARD = 6;
  IMP_ERR_DATA_MERC = 7;
  IMP_ERR_DATA_ITEM = 8;
  IMP_ERR_DATA_DOUBLE = 9;
  IMP_ERR_DATE_NEXT = 10;

Type
  TCheckPriceRec = Record
    Desc: ShortString;
    MinPrice: Real;
    MaxPrice: Real;
    Check: Boolean;
  End;

Type
  TBINHDR = Record
    Signature: ShortString;
    Version: Integer;
    BlockCount: Integer;
    Year: Integer;
    Month: Integer;
    Day: Integer;
  End;

Type
  TBINBP = Class
  protected
    StationIdx: Integer;
    RecordType: ShortString;
    TransactionCode: ShortString;
    TransactionDay: Integer;
    TransactionMonth: Integer;
    BatchNumber: ShortString;
    MerchantID: ShortString;
    StoreNumber: ShortString;
    TerminalNumber: ShortString;
    BlockingNumber: ShortString;
    CurrencyCode: ShortString;
    AcquirerBankCode: ShortString;
    BDCount: Integer;

    BSRecordType: ShortString;
    BSTransactionCode: ShortString;
    BSStoreNumber: ShortString;
    BSTerminalNumber: ShortString;
    BSMerchantName: ShortString;
    BSCityName: ShortString;
    BSStateCode: ShortString;
    BSMerchantTypeCode: ShortString;
    BSLocationCode: ShortString;
    BSTerminalSerialNumber: ShortString;
    BSPostalCode: ShortString;
    BSCountryCode: ShortString;
    BSSecurityCode: ShortString;

    BTRecordType: ShortString;
    BTTransactionCode: ShortString;
    BTTransactionDate: ShortString;
    BTBatchNumber: ShortString;
    BTBatchRecordCount: Integer;
    BTBatchAmountTotal: ShortString;
  End;

Type
  TBINBD = Class
  protected
    StationIdx: Integer;
    StationLup: Integer;
    RecordType: ShortString;
    TransactionCode: ShortString;
    StoreNumber: ShortString;
    TerminalNumber: ShortString;
    // TransactionDate: AnsiString;
    TransactionDay: Integer;
    TransactionMonth: Integer;
    PrimaryAccountNumber: ShortString;
    NumberOfInstallments: ShortString;
    AccountDataSourceCode: ShortString;
    CardHolderIDCode: ShortString;
    TransactionAmount: Double;
    VoidIndicator: ShortString;
    AuthorisationSourceCode: ShortString;
    ApprovalCode: ShortString;
    POSTransactionNumber: ShortString;
    // TransactionTime: AnsiString;
    TransactionHour: Integer;
    TransactionMin: Integer;
    { AVIN DATA }
    CompanyName: ShortString;
    VehicleNo: ShortString;
    DayFloorLimit: ShortString;
    MonthFloorLimit: ShortString;
    ExpirationDate: ShortString;
    ProductPurchased: Integer;
    VersionOfTheChip: ShortString;
    CurrentDayBalance: ShortString;
    CurrentMonthBalance: ShortString;
    KmCounterBefore: Integer;
    KmCounterAfter: Integer;
    Quantity: Double;
  End;

  {
    AVINCARD1003   20021001                                                                                                         |
    aaaaaaaabbbccccddddeeff123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345
  }
Type
  TPOSHDR = Packed Record
    Signature: Array [1 .. 8] Of ansichar; { 'AVINCARD' }
    Version: Array [1 .. 3] Of ansichar;
    { left aligned padded with right spaceas }
    BlockCount: Array [1 .. 4] Of ansichar;
    { left aligned padded with right spaces } { πλήθος σταθμών ... }
    Year: Array [1 .. 4] Of ansichar; { '2002' }
    Month: Array [1 .. 2] Of ansichar; { left aligned padded with right spaces }
    Day: Array [1 .. 2] Of ansichar; { left aligned padded with right spaces }
    Filler: Array [1 .. 105] Of ansichar;
    CrLf: Array [1 .. 2] Of ansichar;
  End;

  {
    ?????????????????????
    BP016090000101234567        00010001300455039000000000000000000                 14
    BP016090000101234567        00010001300455039000000000000000000                 1234
    aabccccddeeeffffffffffffgggghhhhiiiijjjkkkkkkkkkkkkkkkkkkkkkkkkmmmmmmmmmmmmmmmmmoooo
    ^ ^^   ^ ^  ^           ^   ^   ^   ^  ^                       ^                ^
    | ||   | |  |           |   |   |   |  |                       |                BDCount
    | ||   | |  |           |   |   |   |  |                       Filler2
    | ||   | |  |           |   |   |   |  AcquirerBankCode
    | ||   | |  |           |   |   |   CurrencyCode
    | ||   | |  |           |   |   BlockingNumber
    | ||   | |  |           |   TerminalNumber
    | ||   | |  |           StoreNumber
    | ||   | |  MerchantID
    | ||   | BatchNumber
    | ||   Filler1
    | |TransactionDate
    | TransactionCode
    RecordType
  }

Type
  TPOSBP = Packed Record
    RecordType: Array [1 .. 2] Of ansichar;
    TransactionCode: ansichar;
    TransactionDate: Array [1 .. 4] Of ansichar;
    Filler1: Array [1 .. 2] Of ansichar;
    BatchNumber: Array [1 .. 3] Of ansichar;
    MerchantID: Array [1 .. 12] Of ansichar;
    StoreNumber: Array [1 .. 4] Of ansichar;
    TerminalNumber: Array [1 .. 4] Of ansichar;
    BlockingNumber: Array [1 .. 4] Of ansichar;
    CurrencyCode: Array [1 .. 3] Of ansichar;
    AcquirerBankCode: Array [1 .. 24] Of ansichar;
    Filler2: Array [1 .. 17] Of ansichar;
    { AVIN additional field(s) }
    BDCount: Array [1 .. 4] Of ansichar;
    { left aligned padded with right spaces }
    CrLf: Array [1 .. 2] Of ansichar;
  End;

  {
    BS0    0001AVIN TESTING                          GR0001    09000001     30001234
    aabccccddddeeeeeeeeeeeeeeeeeeeeeeeeefffffffffffffgghhhhjjjjkkkkkkkkmmmmmoooppppp
    ^ ^^   ^   ^                        ^            ^ ^   ^   ^       ^    ^  ^
    | ||   |   |                        |            | |   |   |       |    |  SecurityCode
    | ||   |   |                        |            | |   |   |       |    CountryCode
    | ||   |   |                        |            | |   |   |       PostalCode
    | ||   |   |                        |            | |   |   TerminalSerialNumber
    | ||   |   |                        |            | |   LocationCode
    | ||   |   |                        |            | MerchantTypeCode
    | ||   |   |                        |            StateCode
    | ||   |   |                        CityName
    | ||   |   MerchantName
    | ||   |TerminalNumber
    | |StoreNumber
    | TransactionCode
    RecordType
  }

Type
  TPOSBS = Packed Record
    RecordType: Array [1 .. 2] Of ansichar;
    TransactionCode: ansichar;
    StoreNumber: Array [1 .. 4] Of ansichar;
    TerminalNumber: Array [1 .. 4] Of ansichar;
    MerchantName: Array [1 .. 25] Of ansichar;
    CityName: Array [1 .. 13] Of ansichar;
    StateCode: Array [1 .. 2] Of ansichar;
    MerchantTypeCode: Array [1 .. 4] Of ansichar;
    LocationCode: Array [1 .. 4] Of ansichar;
    TerminalSerialNumber: Array [1 .. 8] Of ansichar;
    PostalCode: Array [1 .. 5] Of ansichar;
    CountryCode: Array [1 .. 3] Of ansichar;
    SecurityCode: Array [1 .. 5] Of ansichar;
    CrLf: Array [1 .. 2] Of ansichar;
  End;
  { ??????
    BD5    000116091405289999999999         D@000000009800V300000000011213FAGE AE                       AA 1234   1234567   7654321   02031 1    1203108   7476910                       0000000900
    aabccccddddeeeefffffffffffffffffffgggghhikmmmmmmmmmmmmopssssssrrrrtttt11111111111111111111111111111122222222223333333333444444444455556677777888888888899999999990000000000aaaaaaaaaabbbbbbbbbb
    ^ ^^   ^   ^   ^                  ^   ^ ^^^           ^^^     ^   ^   ^                             ^         ^         ^         ^   ^ ^    ^         ^         ^         ^         ^
    | ||   |   |   |                  |   | |||           |||     |   |   |                             |         |         |         |   | |    |         |         |         |         Quantity: Array[1..10] Of char;
    | ||   |   |   |                  |   | |||           |||     |   |   |                             |         |         |         |   | |    |         |         |         KmCounterAfter: Array[1..10] Of char;
    | ||   |   |   |                  |   | |||           |||     |   |   |                             |         |         |         |   | |    |         |         KmCounterBefore: Array[1..10] Of char;
    | ||   |   |   |                  |   | |||           |||     |   |   |                             |         |         |         |   | |    |         CurrentMonthBalance: Array[1..10] Of char;
    | ||   |   |   |                  |   | |||           |||     |   |   |                             |         |         |         |   | |    CurrentDayBalance: Array[1..10] Of char;
    | ||   |   |   |                  |   | |||           |||     |   |   |                             |         |         |         |   | VersionOfTheChip: Array[1..5] Of char;
    | ||   |   |   |                  |   | |||           |||     |   |   |                             |         |         |         |   ProductPurchased: Array [1..2] char;
    | ||   |   |   |                  |   | |||           |||     |   |   |                             |         |         |         ExpirationDate: Array[1..4] Of char;
    | ||   |   |   |                  |   | |||           |||     |   |   |                             |         |         MonthFloorLimit: Array[1..10] Of char;
    | ||   |   |   |                  |   | |||           |||     |   |   |                             |         DayFloorLimit: Array[1..10] Of char;
    | ||   |   |   |                  |   | |||           |||     |   |   |                             VehicleNo: Array[1..10] Of char;
    | ||   |   |   |                  |   | |||           |||     |   |   CompanyName: Array[1..30] Of char;
    | ||   |   |   |                  |   | |||           |||     |   TransactionTime: Array[1..4] Of char;
    | ||   |   |   |                  |   | |||           |||     POSTransactionNumber: Array[1..4] Of char;
    | ||   |   |   |                  |   | |||           ||ApprovalCode: Array[1..6] Of char;
    | ||   |   |   |                  |   | |||           |AuthorisationSourceCode: char;
    | ||   |   |   |                  |   | |||           VoidIndicator: char;
    | ||   |   |   |                  |   | ||TransactionAmount: Array[1..12] Of char;
    | ||   |   |   |                  |   | |CardHolderIDCode: char;
    | ||   |   |   |                  |   | AccountDataSourceCode: char;
    | ||   |   |   |                  |   NumberOfInstallments: Array[1..2] Of char;
    | ||   |   |   |                  Filler: Array[1..4] Of char;
    | ||   |   |   PrimaryAccountNumber: Array[1..19] Of char;
    | ||   |   TransactionDate: Array[1..4] Of char;
    | ||   TerminalNumber: Array[1..4] Of char;
    | |StoreNumber: Array[1..4] Of char;
    | TransactionCode: char;
    RecordType: Array[1..2] Of char;
  }

Type
  TPOSBD = Packed Record
    RecordType: Array [1 .. 2] Of ansichar;
    TransactionCode: ansichar;
    StoreNumber: Array [1 .. 4] Of ansichar;
    TerminalNumber: Array [1 .. 4] Of ansichar;
    TransactionDate: Array [1 .. 4] Of ansichar;
    PrimaryAccountNumber: Array [1 .. 19] Of ansichar;
    Filler: Array [1 .. 4] Of ansichar;
    NumberOfInstallments: Array [1 .. 2] Of ansichar;
    AccountDataSourceCode: ansichar;
    CardHolderIDCode: ansichar;
    TransactionAmount: Array [1 .. 12] Of ansichar;
    VoidIndicator: ansichar;
    AuthorisationSourceCode: ansichar;
    ApprovalCode: Array [1 .. 6] Of ansichar;
    POSTransactionNumber: Array [1 .. 4] Of ansichar;
    TransactionTime: Array [1 .. 4] Of ansichar;
    { AVIN DATA }
    CompanyName: Array [1 .. 30] Of ansichar;
    VehicleNo: Array [1 .. 10] Of ansichar;
    DayFloorLimit: Array [1 .. 10] Of ansichar;
    MonthFloorLimit: Array [1 .. 10] Of ansichar;
    ExpirationDate: Array [1 .. 4] Of ansichar;
    ProductPurchased: Array [1 .. 2] Of ansichar;
    VersionOfTheChip: Array [1 .. 5] Of ansichar;
    CurrentDayBalance: Array [1 .. 10] Of ansichar;
    CurrentMonthBalance: Array [1 .. 10] Of ansichar;
    KmCounterBefore: Array [1 .. 10] Of ansichar;
    KmCounterAfter: Array [1 .. 10] Of ansichar;
    Quantity: Array [1 .. 10] Of ansichar;
    CrLf: Array [1 .. 2] Of ansichar;
  End;

  {
    BT016090000100000000900000000000580000000000000000000000000000000000000000000000
    BT016090000100000000900000000000580000000000000000000000000000000000000000000000
    aabccccddeeefffffffffgggggggggggggggg1234567890123456789012345678901234567890123
    ^ ^^   ^ ^  ^        ^               ^
    | ||   | |  |        |               Filler2: Array[1..43] Of char;
    | ||   | |  |        BatchAmountTotal: Array[1..16] Of char;
    | ||   | |  BatchRecordCount: Array[1..9] Of char;
    | ||   | BatchNumber: Array[1..3] Of char;
    | ||   Filler1: Array[1..2] Of char;
    | |TransactionDate: Array[1..4] Of char;
    | TransactionCode: char;
    RecordType: Array[1..2] Of char;
  }

Type
  TPOSBT = Packed Record
    RecordType: Array [1 .. 2] Of ansichar;
    TransactionCode: ansichar;
    TransactionDate: Array [1 .. 4] Of ansichar;
    Filler1: Array [1 .. 2] Of ansichar;
    BatchNumber: Array [1 .. 3] Of ansichar;
    BatchRecordCount: Array [1 .. 9] Of ansichar;
    BatchAmountTotal: Array [1 .. 16] Of ansichar;
    Filler2: Array [1 .. 43] Of ansichar;
    CrLf: Array [1 .. 2] Of ansichar;
  End;

Type
  TfrmImportStd = Class(TfrmBaseDev0)
    ActionList1: TActionList;
    actClose: TAction;
    OpenDialog1: TOpenDialog;
    qryStation: TADOQuery;
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
    qryACardDAYAMOUNT: TFloatField;
    qryACardMONTHAMOUNT: TFloatField;
    qryACardREGNO: TWideStringField;
    qryTran: TADOQuery;
    qryTranTRANID: TAutoIncField;
    qryTranTRANDATE: TDateTimeField;
    qryTranACARDID: TIntegerField;
    qryTranSTATIONID: TIntegerField;
    qryTranINSDT: TDateTimeField;
    qryTranUPDDT: TDateTimeField;
    qryTranINSUSR: TIntegerField;
    qryTranUPDUSR: TIntegerField;
    qryTranAMOUNT: TFloatField;
    qryTranKMBEFORE: TIntegerField;
    qryTranKMAFTER: TIntegerField;
    qryTranSITEMID: TIntegerField;
    qryTranQUANTITY: TFloatField;
    qryTranREFSTR: TWideStringField;
    qryTranISAUTO: TBooleanField;
    qrySItem: TADOQuery;
    qrySItemSITEMID: TAutoIncField;
    qrySItemDESCR: TWideStringField;
    qrySItemIGROUPID: TIntegerField;
    qrySItemICLASSID: TIntegerField;
    qrySItemCODEINTERMINAL: TIntegerField;
    qryTranSTATIONUPD: TBooleanField;
    qryTranACARDUPD: TBooleanField;
    qryTranBATCHNO: TIntegerField;
    DelTran: TADOQuery;
    AutoIncField1: TAutoIncField;
    DateTimeField1: TDateTimeField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    FloatField1: TFloatField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    FloatField2: TFloatField;
    WideStringField1: TWideStringField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    BooleanField3: TBooleanField;
    IntegerField8: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Memo2: TMemo;
    Memo1: TMemo;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    Label2: TLabel;
    TabSheet4: TTabSheet;
    Memo0: TMemo;
    TabSheet5: TTabSheet;
    MemoOK: TMemo;
    TabSheet6: TTabSheet;
    MemoNo: TMemo;
    QStation: TADOQuery;
    dxStation: TdxMemData;
    dxStationKey: TIntegerField;
    dxStationMerchandId: TStringField;
    dxStationMerchandName: TStringField;
    dxStationMerchandAddress: TStringField;
    dxStationMerchandPhone: TStringField;
    actPrint: TAction;
    qryTranISVOID: TBooleanField;
    qryTranCOMMISSIONUPD: TBooleanField;
    qryTranSTATIONUPDBT: TIntegerField;
    qryTranACARDUPDBT: TIntegerField;
    qryTranCOMMISSIONUPDBT: TIntegerField;
    qryTranCONSUMUPD: TBooleanField;
    qryTranCONSUMDIVIDER: TFloatField;
    qryTranUNITPRICE: TFloatField;
    qryTranTRANTIME: TDateTimeField;
    qryTranISTYPED: TBooleanField;
    UpdTrCallDet: TADOQuery;
    UpdTrCallDetTRCALLDDATE: TDateTimeField;
    UpdTrCallDetTRCALLDSTATIONID: TIntegerField;
    UpdTrCallDetTRCALLDSTATUS: TIntegerField;
    TransCntUpd: TADOQuery;
    TransCntUpdUPDSTATION: TIntegerField;
    TransCntUpdUPDCARD: TIntegerField;
    DelTrCallDet: TADOQuery;
    qrySItemPOSOSTO: TFloatField;
    qrySItemINSDT: TDateTimeField;
    qrySItemUPDDT: TDateTimeField;
    qrySItemINSUSR: TIntegerField;
    qrySItemUPDUSR: TIntegerField;
    qrySItemMINPRICE: TFloatField;
    qrySItemMAXPRICE: TFloatField;
    qrySItemCHECKPRICE: TBooleanField;
    TabSheet7: TTabSheet;
    MemoPrice: TMemo;
    FindMerchand: TADOQuery;
    UpdCommandAct: TAction;
    qryTranTRANPERIOD: TIntegerField;
    qryACardACARDHOLDER: TWideStringField;
    qryACardISACTIVE: TBooleanField;
    qryACardEXPIREPHDATE: TDateTimeField;
    qryACardEXPIRELODATE: TDateTimeField;
    qryACardIGROUPID5: TIntegerField;
    qryACardEMPLOYEESID: TIntegerField;
    qryACardNEWCARDBOOLEAN: TBooleanField;
    qryACardNEWCARDID: TIntegerField;
    qryTranDISCOUNTUPD: TBooleanField;
    qryTranDISCOUNTUPDBT: TIntegerField;
    ADOSPFindTransEntry: TADOStoredProc;
    ADOSPFindTransEntryTRANID: TAutoIncField;
    ADOSPFindTransEntryTRANDATE: TDateTimeField;
    ADOSPFindTransEntryACARDID: TIntegerField;
    ADOSPFindTransEntrySTATIONID: TIntegerField;
    ADOSPFindTransEntryAMOUNT: TFloatField;
    ADOSPFindTransEntryKMBEFORE: TIntegerField;
    ADOSPFindTransEntryKMAFTER: TIntegerField;
    ADOSPFindTransEntrySITEMID: TIntegerField;
    ADOSPFindTransEntryQUANTITY: TFloatField;
    ADOSPFindTransEntryREFSTR: TWideStringField;
    ADOSPFindTransEntryISAUTO: TBooleanField;
    ADOSPFindTransEntryINSDT: TDateTimeField;
    ADOSPFindTransEntryUPDDT: TDateTimeField;
    ADOSPFindTransEntryINSUSR: TIntegerField;
    ADOSPFindTransEntryUPDUSR: TIntegerField;
    ADOSPFindTransEntrySTATIONUPD: TBooleanField;
    ADOSPFindTransEntryACARDUPD: TBooleanField;
    ADOSPFindTransEntryISVOID: TBooleanField;
    ADOSPFindTransEntryBATCHNO: TIntegerField;
    ADOSPFindTransEntryCOMMISSIONUPD: TBooleanField;
    ADOSPFindTransEntrySTATIONUPDBT: TIntegerField;
    ADOSPFindTransEntryACARDUPDBT: TIntegerField;
    ADOSPFindTransEntryCOMMISSIONUPDBT: TIntegerField;
    ADOSPFindTransEntryCONSUMUPD: TBooleanField;
    ADOSPFindTransEntryCONSUMDIVIDER: TFloatField;
    ADOSPFindTransEntryUNITPRICE: TFloatField;
    ADOSPFindTransEntryTRANTIME: TDateTimeField;
    ADOSPFindTransEntryISTYPED: TBooleanField;
    ADOSPFindTransEntryTRANPERIOD: TIntegerField;
    ADOSPFindTransEntryDISCOUNTUPD: TBooleanField;
    ADOSPFindTransEntryDISCOUNTUPDBT: TIntegerField;
    ADOSPFindTransEntryDISQUANTITY: TFloatField;
    ADOSPFindTransEntryDISAMOUNT: TFloatField;
    ADOSPFindTransEntryPELADAILYUPD: TBooleanField;
    ADOSPFindTransEntryPELADAILYUPDBT: TIntegerField;
    TabSheet8: TTabSheet;
    MemoDoubleEn: TMemo;
    ActionManager1: TActionManager;
    ActionToolBar1: TActionToolBar;
    Edit1: TEdit;
    TabSheet9: TTabSheet;
    Memo3: TMemo;
    qryTrCall: TADOQuery;
    qryTrCallTRCALLID: TAutoIncField;
    qryTrCallTRCALLDATE: TDateTimeField;
    qryTrCallTRCALLAUTOUPDATE: TBooleanField;
    qryTrCallTRCALLAUTOUPDATECNT: TIntegerField;
    qryTrCallTRCALLAUTOUPDATECNTST: TIntegerField;
    qryTrCallTRCALLAUTOUPDATECNTST0: TIntegerField;
    qryTrCallTRCALLMANUPDATE: TBooleanField;
    qryTrCallTRCALLENHMPELA: TBooleanField;
    qryTrCallTRCALLENHMPRAT: TBooleanField;
    qryTrCallINSDT: TDateTimeField;
    qryTrCallUPDDT: TDateTimeField;
    qryTrCallINSUSR: TIntegerField;
    qryTrCallUPDUSR: TIntegerField;
    qryTrCallTRCALLAUTOUPDATECNTDEL: TIntegerField;
    qryTranMERCHANTID: TIntegerField;
    qryTranTERMINALID: TIntegerField;
    qryTranDISQUANTITY: TFloatField;
    qryTranDISAMOUNT: TFloatField;
    qryTranPELADAILYUPD: TBooleanField;
    qryTranPELADAILYUPDBT: TIntegerField;
    qrySItemDeleted: TBooleanField;
    qrySItemDelUsr: TIntegerField;
    qrySItemDelDT: TDateTimeField;
    qrySItemInActive: TBooleanField;
    qrySItemInActiveUsr: TIntegerField;
    qrySItemInActiveDt: TDateTimeField;
    ts1: TTabSheet;
    mmoProc: TMemo;
    DelTrCall: TADOQuery;
    qryStationTerminalidTerminalCode: TWideStringField;
    qryStationStationName: TWideStringField;
    qryStationMerchantName: TWideStringField;
    qryStationMerchantSAPCode: TWideStringField;
    qryStationTerminalTerminalid: TIntegerField;
    qryStationStationStationId: TIntegerField;
    qryStationMerchantMerchantId: TIntegerField;
    qryStationMerchantInActive: TBooleanField;
    qryStationMerchantDeleted: TBooleanField;
    qryStationMerchantIsTest: TBooleanField;
    qryStationMerchantStopSales: TBooleanField;
    qryStationStationDeleted: TBooleanField;
    qryStationStationInActive: TBooleanField;
    qryStationStationStopSales: TBooleanField;
    qryStationMerchantMerchantCode: TWideStringField;
    QStationTerminalidTerminalCode: TWideStringField;
    QStationStationName: TWideStringField;
    QStationMerchantName: TWideStringField;
    QStationMerchantSAPCode: TWideStringField;
    QStationTerminalTerminalid: TIntegerField;
    QStationStationStationId: TIntegerField;
    QStationMerchantMerchantId: TIntegerField;
    QStationMerchantInActive: TBooleanField;
    QStationMerchantDeleted: TBooleanField;
    QStationMerchantIsTest: TBooleanField;
    QStationMerchantStopSales: TBooleanField;
    QStationStationDeleted: TBooleanField;
    QStationStationInActive: TBooleanField;
    QStationStationStopSales: TBooleanField;
    QStationMerchantMerchantCode: TWideStringField;
    FindMerchandTerminalidTerminalCode: TWideStringField;
    FindMerchandStationName: TWideStringField;
    FindMerchandMerchantName: TWideStringField;
    FindMerchandMerchantSAPCode: TWideStringField;
    FindMerchandTerminalTerminalid: TIntegerField;
    FindMerchandStationStationId: TIntegerField;
    FindMerchandMerchantMerchantId: TIntegerField;
    FindMerchandMerchantInActive: TBooleanField;
    FindMerchandMerchantDeleted: TBooleanField;
    FindMerchandMerchantIsTest: TBooleanField;
    FindMerchandMerchantStopSales: TBooleanField;
    FindMerchandStationDeleted: TBooleanField;
    FindMerchandStationInActive: TBooleanField;
    FindMerchandStationStopSales: TBooleanField;
    FindMerchandMerchantMerchantCode: TWideStringField;
    Edit2: TEdit;
    CDSMST: TClientDataSet;
    CDSMSTTerminalidTerminalCode: TWideStringField;
    CDSMSTStationName: TWideStringField;
    CDSMSTMerchantName: TWideStringField;
    CDSMSTMerchantSAPCode: TWideStringField;
    CDSMSTTerminalTerminalid: TIntegerField;
    CDSMSTStationStationId: TIntegerField;
    CDSMSTMerchantMerchantId: TIntegerField;
    CDSMSTMerchantInActive: TBooleanField;
    CDSMSTMerchantDeleted: TBooleanField;
    CDSMSTMerchantIsTest: TBooleanField;
    CDSMSTMerchantStopSales: TBooleanField;
    CDSMSTStationDeleted: TBooleanField;
    CDSMSTStationInActive: TBooleanField;
    CDSMSTStationStopSales: TBooleanField;
    CDSMSTMerchantMerchantCode: TWideStringField;
    qryStationStationStreet: TWideStringField;
    qryStationStationCity: TWideStringField;
    qryStationStationZIP: TWideStringField;
    Procedure actCloseExecute(Sender: TObject);
    Procedure dxButtonEdit1ButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    Procedure FormCreate(Sender: TObject);
    Procedure FormDestroy(Sender: TObject);
    Procedure FormShow(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure Edit1DblClick(Sender: TObject);
  Private
    { Private declarations }
    InitialApplicationDir: string;

    Stream: TFileStream;
    POSHDR: TPOSHDR;
    POSBP: TPOSBP;
    POSBS: TPOSBS;
    POSBD: TPOSBD;
    POSBT: TPOSBT;
    BINHDR: TBINHDR;
    StationList: TList;
    TransList: TList;
    Station0List: TStringList;
    StationOKList: TStringList;
    StationNoList: TStringList;
    Checking: Boolean;
    ErrorID: Integer;
    HdrYear: Integer;
    HdrMonth: Integer;
    HdrDay: Integer;
    BatchNo: Integer;
    Station0: Integer;
    StationV: Integer;
    PriceSt: Integer;
    NextDate: Integer;
    SameEntry: Integer;
    CheckPriceAr: Array [1 .. 10] of TCheckPriceRec;
    FReadState: Integer;
    Procedure Process(FileName: ShortString);
    Function ReadPosHDR(Const Year, Month, Day: Integer): Boolean;
    Procedure FillBinHDR;
    Procedure FillBinBP(BinBP: TBINBP);
    Procedure FillBinBS(BinBP: TBINBP);
    Procedure FillBinBD(BinBD: TBINBD);
    Procedure FillBinBT(BinBP: TBINBP);
    Procedure ReadStationData;
    Procedure ReadTransData(StationIdx: Integer);
    Function GetPosString(a: ShortString): ShortString;
    Function GetPosInteger(a: ShortString): Integer;
    Procedure ReadFromStream;
    Procedure ReportError;
    Procedure DoInsert;
    procedure SetReadState(const Value: Integer);
    function POSBPToString: ShortString;
    function POSBSToString: ShortString;
    function POSBDToString: ShortString;
    function POSBTToString: ShortString;
    procedure DisplayErrorLine(Num: Integer = 0);
    function MerchandName(Code: Integer): String;
    function CheckSameEntry(Card, Merchand, Sitem: Integer; TTDate, TTTime: TDateTime; Amount: Double; RefStr: String): Boolean;
    // 122013
    function CheckTrCallForRerun(DateTr: Variant; var BatchNo: Integer): Boolean;
    function CheckIfTransUpdatePelStat(BatchNo: Integer): Boolean;
    function DeleteTransOfDay(BatchNo: Integer; CallDDate: TDate): Boolean;
    function UpdateTrCallForDate(CallDDate: TDateTime; var BatchNo: Integer): Boolean;
    function DeleteTrBatch(DateTr: Variant): Boolean;
  Public
    CallVar: Variant;
    property ReadState: Integer read FReadState write SetReadState;
  End;

Implementation

Uses
  DMain, FMain;

{$R *.dfm}

Procedure TfrmImportStd.actCloseExecute(Sender: TObject);
Begin
  Close;
End;

// Leonidas
Procedure TfrmImportStd.dxButtonEdit1ButtonClick(Sender: TObject; AbsoluteIndex: Integer);
Begin
  InitialApplicationDir  := ExtractFilePath(Application.ExeName);
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  // !!!
  // OpenDialog1.InitialDir:=frmMain.GetIniPath('IMPORT_DIR_STD');

  If ((OpenDialog1.Execute) And (Station0List.Count = 0) And (StationOKList.Count = 0) And (StationNoList.Count = 0)) Then
    Begin
      /// /    dxButtonEdit1.Text := OpenDialog1.FileName;
      Process(OpenDialog1.FileName);
      // Close;
    End;
  OpenDialog1.InitialDir := InitialApplicationDir;
End;

procedure TfrmImportStd.Edit1DblClick(Sender: TObject);
begin
  // OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  InitialApplicationDir  := ExtractFilePath(Application.ExeName);
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  // !!!!
  // OpenDialog1.InitialDir:=frmMain.GetIniPath('IMPORT_DIR_STD');
  If ((OpenDialog1.Execute) And (Station0List.Count = 0) And (StationOKList.Count = 0) And (StationNoList.Count = 0)) Then
    Begin
      Edit1.Text := OpenDialog1.FileName;
      Process(OpenDialog1.FileName);
      // Close;
    End;
  OpenDialog1.InitialDir := InitialApplicationDir;
end;

Procedure TfrmImportStd.FillBinBD(BinBD: TBINBD);
var
  DStr, MStr, HrStr, MiStr: ShortString;
Begin
  SetReadState(3);

  BinBD.RecordType := GetPosString(POSBD.RecordType);
  if not(BinBD.RecordType = 'BD') then
    begin
      DisplayErrorLine(33);
      // MessageDlg(tmp, mtWarning, [mbOK], 0);
      Close;
      Exit;
    end;

  BinBD.TransactionCode := POSBD.TransactionCode;
  BinBD.StoreNumber     := GetPosString(POSBD.StoreNumber);
  BinBD.TerminalNumber  := GetPosString(POSBD.TerminalNumber);
  // BinBD.TransactionDate := GetPosString(POSBD.TransactionDate);
  DStr                          := Copy(POSBD.TransactionDate, 1, 2);
  MStr                          := Copy(POSBD.TransactionDate, 3, 2);
  BinBD.TransactionDay          := GetPosInteger(DStr);
  BinBD.TransactionMonth        := GetPosInteger(MStr);
  BinBD.PrimaryAccountNumber    := GetPosString(POSBD.PrimaryAccountNumber);
  BinBD.NumberOfInstallments    := GetPosString(POSBD.NumberOfInstallments);
  BinBD.AccountDataSourceCode   := POSBD.AccountDataSourceCode;
  BinBD.CardHolderIDCode        := POSBD.CardHolderIDCode;
  BinBD.TransactionAmount       := GetPosInteger(POSBD.TransactionAmount) / 100;
  BinBD.VoidIndicator           := POSBD.VoidIndicator;
  BinBD.AuthorisationSourceCode := POSBD.AuthorisationSourceCode;
  BinBD.ApprovalCode            := GetPosString(POSBD.ApprovalCode);
  BinBD.POSTransactionNumber    := GetPosString(POSBD.POSTransactionNumber);
  // BinBD.TransactionTime := GetPosString(POSBD.TransactionTime);
  HrStr                     := Copy(POSBD.TransactionTime, 1, 2);
  MiStr                     := Copy(POSBD.TransactionTime, 3, 2);
  BinBD.TransactionHour     := GetPosInteger(HrStr);
  BinBD.TransactionMin      := GetPosInteger(MiStr);
  BinBD.CompanyName         := GetPosString(POSBD.CompanyName);
  BinBD.VehicleNo           := GetPosString(POSBD.VehicleNo);
  BinBD.DayFloorLimit       := GetPosString(POSBD.DayFloorLimit);
  BinBD.MonthFloorLimit     := GetPosString(POSBD.MonthFloorLimit);
  BinBD.ExpirationDate      := GetPosString(POSBD.ExpirationDate);
  BinBD.ProductPurchased    := GetPosInteger(POSBD.ProductPurchased);
  BinBD.VersionOfTheChip    := GetPosString(POSBD.VersionOfTheChip);
  BinBD.CurrentDayBalance   := GetPosString(POSBD.CurrentDayBalance);
  BinBD.CurrentMonthBalance := GetPosString(POSBD.CurrentMonthBalance);
  BinBD.KmCounterBefore     := GetPosInteger(POSBD.KmCounterBefore);
  BinBD.KmCounterAfter      := GetPosInteger(POSBD.KmCounterAfter);
  BinBD.Quantity            := GetPosInteger(POSBD.Quantity) / 100;
End;

Procedure TfrmImportStd.FillBinBP(BinBP: TBINBP);
Var
  DStr, MStr: ShortString;
Begin
  SetReadState(1);

  BinBP.RecordType       := POSBP.RecordType;
  BinBP.TransactionCode  := GetPosString(POSBP.TransactionCode);
  DStr                   := Copy(POSBP.TransactionDate, 1, 2);
  MStr                   := Copy(POSBP.TransactionDate, 3, 2);
  BinBP.TransactionDay   := GetPosInteger(DStr);
  BinBP.TransactionMonth := GetPosInteger(MStr);
  BinBP.BatchNumber      := GetPosString(POSBP.BatchNumber);
  BinBP.MerchantID       := GetPosString(POSBP.MerchantID);
  BinBP.StoreNumber      := GetPosString(POSBP.StoreNumber);
  BinBP.TerminalNumber   := GetPosString(POSBP.TerminalNumber);
  BinBP.BlockingNumber   := GetPosString(POSBP.BlockingNumber);
  BinBP.CurrencyCode     := GetPosString(POSBP.CurrencyCode);
  BinBP.AcquirerBankCode := GetPosString(POSBP.AcquirerBankCode);
  BinBP.BDCount          := GetPosInteger(POSBP.BDCount);
End;

Procedure TfrmImportStd.FillBinBS(BinBP: TBINBP);
Begin
  SetReadState(2);

  BinBP.BSRecordType           := GetPosString(POSBS.RecordType);
  BinBP.BSTransactionCode      := GetPosString(POSBS.TransactionCode);
  BinBP.BSStoreNumber          := GetPosString(POSBS.StoreNumber);
  BinBP.BSTerminalNumber       := GetPosString(POSBS.TerminalNumber);
  BinBP.BSMerchantName         := GetPosString(POSBS.MerchantName);
  BinBP.BSCityName             := GetPosString(POSBS.CityName);
  BinBP.BSStateCode            := GetPosString(POSBS.StateCode);
  BinBP.BSMerchantTypeCode     := GetPosString(POSBS.MerchantTypeCode);
  BinBP.BSLocationCode         := GetPosString(POSBS.LocationCode);
  BinBP.BSTerminalSerialNumber := GetPosString(POSBS.TerminalSerialNumber);
  BinBP.BSPostalCode           := GetPosString(POSBS.PostalCode);
  BinBP.BSCountryCode          := GetPosString(POSBS.CountryCode);
  BinBP.BSSecurityCode         := GetPosString(POSBS.SecurityCode);
End;

Procedure TfrmImportStd.FillBinBT(BinBP: TBINBP);
Begin
  SetReadState(4);

  BinBP.BTRecordType       := GetPosString(POSBT.RecordType);
  BinBP.BTTransactionCode  := GetPosString(POSBT.TransactionCode);
  BinBP.BTTransactionDate  := GetPosString(POSBT.TransactionDate);
  BinBP.BTBatchNumber      := GetPosString(POSBT.BatchNumber);
  BinBP.BTBatchRecordCount := GetPosInteger(POSBT.BatchRecordCount);
  BinBP.BTBatchAmountTotal := GetPosString(POSBT.BatchAmountTotal);
End;

Procedure TfrmImportStd.FillBinHDR;
Begin
  SetReadState(99);
  // Leonidas Check
  BINHDR.Signature := GetPosString(POSHDR.Signature);
  If (BINHDR.Signature <> 'AVINCARD') Then
    ErrorID         := IMP_ERR_SIGNATURE;
  BINHDR.Version    := GetPosInteger(POSHDR.Version);
  BINHDR.BlockCount := GetPosInteger(POSHDR.BlockCount);
  BINHDR.Year       := GetPosInteger(POSHDR.Year);
  BINHDR.Month      := GetPosInteger(POSHDR.Month);
  BINHDR.Day        := GetPosInteger(POSHDR.Day);
End;

Procedure TfrmImportStd.Process(FileName: ShortString);
Var
  F: ShortString;
  Y, M, D, i, x: Integer;
  Found: Boolean;
  // Defined as Global 24062014
  // CallVar: Variant;
  // BatchNo: Integer;
Begin
  F := ExtractFileName(FileName);
  Y := StrToInt(Trim(Copy(F, 1, 4))); { TODO : on error ??? }
  M := StrToInt(Trim(Copy(F, 5, 2))); { TODO : on error ??? }
  D := StrToInt(Trim(Copy(F, 7, 2))); { TODO : on error ??? }

  Stream   := TFileStream.Create(FileName, fmOpenRead);
  Checking := true;
  ErrorID  := IMP_ERR_NONE;
  CallVar  := Inttostr(D) + '/' + Inttostr(M) + '/' + Inttostr(Y);

  if CheckTrCallForRerun(CallVar, BatchNo) then
    if MessageDlg('Εχετε ήδη καταχωρήση για την Ημερομηνία.' + chr(13) + 'Nα διαγραφούν οι εγγραφές;', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      if CheckIfTransUpdatePelStat(BatchNo) then
        begin
          Close;
          Stream.Free;
          Exit;
        end
      else
        begin
          DeleteTransOfDay(BatchNo, EncodeDate(Y, M, D));
        end
    else
      begin
        Close;
        Stream.Free;
        Exit;
      end;

  if Not UpdateTrCallForDate(EncodeDate(Y, M, D), BatchNo) then
    begin
      ShowMessage('Πρόβλημα στην Ενημέρωση');
      Stream.Free;
      Exit;
    end;

  If (ReadPosHDR(Y, M, D) = true) Then
    ReadFromStream;
  If (ErrorID = IMP_ERR_NONE) Then
    Begin
      ErrorID  := IMP_ERR_NONE;
      Checking := true;
      Stream.Seek(0, soFromBeginning);
      Begin
        If (ErrorID = IMP_ERR_NONE) Then
          begin
            HdrYear  := Y;
            HdrMonth := M;
            HdrDay   := D;
            Checking := true;
            DoInsert;
          end
        Else
          begin
            ReportError;
            DeleteTrBatch(CallVar);
            Stream.Free;
            Exit;
          end;
        If (ErrorID = IMP_ERR_NONE) Then
          begin
            HdrYear  := Y;
            HdrMonth := M;
            HdrDay   := D;
            Checking := False;
            DoInsert;
          end
        Else
          begin
            ReportError;
            DeleteTrBatch(CallVar);
            Stream.Free;
            Exit;
          end;
      End;
    End
  Else
    begin
      ReportError;
      DeleteTrBatch(CallVar);
      Stream.Free;
      Exit;
    end;

  dxStation.Active    := true;
  UpdTrCallDet.Active := true;
  QStation.First;
  repeat
    Found := False;
    for i := 0 to StationOKList.Count - 1 do
      // Fix 10062014
      // if StationOKList.Strings[i] = QStationMerchantMerchantCode.AsString then
      if StationOKList.Strings[i] = QStationTerminalidTerminalCode.AsString then
        begin
          Found := true;
          dxStation.Append;
          dxStation.Edit;
          dxStationKey.AsInteger := 1;
          // Fix 10062014
          // dxStationMerchandId.AsString := QStationMerchantMerchantCode.AsString;
          dxStationMerchandId.AsString := QStationTerminalidTerminalCode.AsString;
          dxStation.Post;
          UpdTrCallDet.Append;
          UpdTrCallDet.Edit;
          UpdTrCallDetTRCALLDSTATIONID.AsInteger := QStationStationStationId.AsInteger;
          UpdTrCallDetTRCALLDSTATUS.AsInteger    := 1;
          UpdTrCallDetTRCALLDDATE.AsDateTime     := EncodeDate(Y, M, D);
          try
            UpdTrCallDet.Post;
          except
            UpdTrCallDet.Cancel;
          end;
        end;
    if Found = False then
      for i := 0 to Station0List.Count - 1 do
        // if Station0List.Strings[i] = QStationMerchantMerchantCode.AsString then
        if Station0List.Strings[i] = QStationTerminalidTerminalCode.AsString then
          begin
            if Station0List.Strings[i] = '09000034' then
              MessageDlg('', mtError, [mbOK], 0);

            Found := true;
            dxStation.Append;
            dxStation.Edit;
            dxStationKey.AsInteger := 2;
            // dxStationMerchandId.AsString := QStationMerchantMerchantCode.AsString;
            dxStationMerchandId.AsString := QStationTerminalidTerminalCode.AsString;
            dxStation.Post;
            UpdTrCallDet.Append;
            UpdTrCallDet.Edit;
            UpdTrCallDetTRCALLDSTATIONID.AsInteger := QStationStationStationId.AsInteger;
            UpdTrCallDetTRCALLDSTATUS.AsInteger    := 2;
            UpdTrCallDetTRCALLDDATE.AsDateTime     := EncodeDate(Y, M, D);
            try
              UpdTrCallDet.Post;
            except
              UpdTrCallDet.Cancel;
            end;

          end;
    if Found = False then
      begin
        // StationNoList.Add(QStationMerchantMerchantCode.AsString);
        StationNoList.Add(QStationTerminalidTerminalCode.AsString);
        dxStation.Append;
        dxStation.Edit;
        dxStationKey.AsInteger := 3;
        // dxStationMerchandId.AsString := QStationMerchantMerchantCode.AsString;
        dxStationMerchandId.AsString := QStationTerminalidTerminalCode.AsString;
        dxStation.Post;
        UpdTrCallDet.Append;
        UpdTrCallDet.Edit;
        UpdTrCallDetTRCALLDSTATIONID.AsInteger := QStationStationStationId.AsInteger;
        UpdTrCallDetTRCALLDSTATUS.AsInteger    := 3;
        UpdTrCallDetTRCALLDDATE.AsDateTime     := EncodeDate(Y, M, D);
        try
          UpdTrCallDet.Post;
        except
          UpdTrCallDet.Cancel;
        end;
      end;
    QStation.Next;
  until QStation.Eof;

  Memo0.Lines  := Station0List;
  MemoOK.Lines := StationOKList;
  MemoNo.Lines := StationNoList;

  Stream.Free;

  UpdTrCallDet.UpdateBatch();
  actPrint.Enabled := true;
End;

Procedure TfrmImportStd.ReadFromStream;
Var
  i: Integer;
Begin
  For i := 1 To BINHDR.BlockCount Do
    Begin
      ReadStationData;
    End;
End;

Function TfrmImportStd.ReadPosHDR(Const Year, Month, Day: Integer): Boolean;
Begin
  Result := true;
  try
    Stream.ReadBuffer(POSHDR, sizeof(TPOSHDR));
  except
    MessageDlg('Error in Header', mtError, [mbOK], 0);
  end;
  FillBinHDR;
  If (ErrorID = IMP_ERR_NONE) Then
    Begin
      If (BINHDR.Year <> Year) Or (BINHDR.Month <> Month) Or (BINHDR.Day <> Day) Then
        Begin
          ErrorID := IMP_ERR_HDR_DATE;
        End;
    End;
End;

Procedure TfrmImportStd.ReadStationData;
Var
  i: Integer;
  BinBP: TBINBP;
Begin
  try
    Stream.ReadBuffer(POSBP, sizeof(TPOSBP));
  except
    MessageDlg('Error in Header BP', mtError, [mbOK], 0);
  end;
  BinBP := TBINBP.Create;
  StationList.Add(BinBP);
  FillBinBP(BinBP);
  If (ErrorID = IMP_ERR_NONE) Then
    Begin
      try
        Stream.ReadBuffer(POSBS, sizeof(TPOSBS));
      except
        MessageDlg('Error in Header BS', mtError, [mbOK], 0);
      end;
      FillBinBS(BinBP);
      If BinBP.BDCount = 0 then
        begin
          Inc(Station0);
          Station0List.Add(BinBP.MerchantID);
        end
      else
        begin
          StationOKList.Add(BinBP.MerchantID);
        end;
      BinBP.StationIdx := StationList.Count - 1;
      For i            := 1 To BinBP.BDCount Do
        Begin
          ReadTransData(StationList.Count - 1);
        End;
      try
        Stream.ReadBuffer(POSBT, sizeof(TPOSBT));
      except
        MessageDlg('Error in Header BT', mtError, [mbOK], 0);
      end;
      FillBinBT(BinBP);
    End;
End;

Procedure TfrmImportStd.ReadTransData(StationIdx: Integer);
Var
  BinBD: TBINBD;
Begin
  try
    Stream.ReadBuffer(POSBD, sizeof(TPOSBD));
  except
    MessageDlg('Error in Detail BD', mtError, [mbOK], 0);
  end;
  BinBD            := TBINBD.Create;
  BinBD.StationIdx := StationIdx;
  TransList.Add(BinBD);
  FillBinBD(BinBD);
End;

Procedure TfrmImportStd.FormCreate(Sender: TObject);
var
  x: Integer;
Begin
  StationList := TList.Create;
  TransList   := TList.Create;

  Station0List        := TStringList.Create;
  Station0List.Sorted := true;

  StationOKList        := TStringList.Create;
  StationOKList.Sorted := true;

  StationNoList        := TStringList.Create;
  StationNoList.Sorted := true;

  Station0  := 0;
  StationV  := 0;
  PriceSt   := 0;
  NextDate  := 0;
  SameEntry := 0;

  qrySItem.Active := true;
  qrySItem.First;
  repeat
    CheckPriceAr[qrySItemSITEMID.AsInteger].Desc     := qrySItemDESCR.AsString;
    CheckPriceAr[qrySItemSITEMID.AsInteger].MinPrice := qrySItemMINPRICE.AsFloat;
    CheckPriceAr[qrySItemSITEMID.AsInteger].MaxPrice := qrySItemMAXPRICE.AsFloat;
    CheckPriceAr[qrySItemSITEMID.AsInteger].Check    := qrySItemCHECKPRICE.AsBoolean;
    qrySItem.Next;
  until qrySItem.Eof;

  CDSMST.Active       := true;
  FindMerchand.Active := true;
  FindMerchand.First;
  repeat
    CDSMST.Append;
    for x                    := 0 to FindMerchand.FieldCount - 1 do
      CDSMST.Fields[x].Value := FindMerchand.Fields[x].Value;
    CDSMST.Post;
    FindMerchand.Next;
  until (FindMerchand.Eof);

End;

Procedure TfrmImportStd.FormDestroy(Sender: TObject);
Var
  BinBP: TBINBP;
  BinBD: TBINBD;
  i: Integer;
Begin
  If (Assigned(StationList) = true) Then
    Begin
      For i := (StationList.Count - 1) Downto 0 Do
        Begin
          BinBP := TBINBP(StationList.Items[i]);
          BinBP.Free;
          StationList.Delete(i);
        End;
      StationList.Free;
    End;
  If (Assigned(TransList) = true) Then
    Begin
      For i := (TransList.Count - 1) Downto 0 Do
        Begin
          BinBD := TBINBD(TransList.Items[i]);
          BinBD.Free;
          TransList.Delete(i);
        End;
      TransList.Free;
    End;

End;

Function TfrmImportStd.GetPosString(a: ShortString): ShortString;
Begin
  Result := Trim(a);
End;

Function TfrmImportStd.GetPosInteger(a: ShortString): Integer;
Var
  tmp: ShortString;
  i: Integer;
Begin
  tmp := '';
  tmp := Trim(a);
  If (Length(tmp) <> 0) Then
    Begin
      If (Checking = true) Then
        Begin
          For i := 1 To Length(tmp) Do
            Begin
              { TODO -cCritical : Please Check }
              { If (IsNumber(tmp[i]) = false) Then Begin
                ErrorID := IMP_ERR_NOT_NUMBER;
                DisplayErrorLine;
                Result := 0; { αυθαίρετο !!!
                Exit;
                End; }
            End;
        End;
      try
        Result := StrToInt64(tmp);
      except
        DisplayErrorLine;
        MessageDlg(tmp, mtWarning, [mbOK], 0);
      end;
    End
  Else
    Result := 0;
End;

Procedure TfrmImportStd.ReportError;
var
  x: String;
Begin
  Case ErrorID Of
    IMP_ERR_SIGNATURE:
      // MessageDlg('Το αρχείο δεν έχει την σωστή γραμμογράφηση', mtError, [mbOK], 0);
      ShowMessage('Το αρχείο δεν έχει την σωστή γραμμογράφηση');
    IMP_ERR_NOT_NUMBER:
      // MessageDlg('Το αρχείο περιέχει μη-αριθμητικούς χαρακτήρες', mtError, [mbOK], 0);
      ShowMessage('Το αρχείο περιέχει μη-αριθμητικούς χαρακτήρες');
    IMP_ERR_HDR_DATE:
      // MessageDlg('Δεν συμφωνεί η ημερομηνία του αρχείου και του header', mtError, [mbOK], 0);
      ShowMessage('Δεν συμφωνεί η ημερομηνία του αρχείου και του header');
    IMP_ERR_DATA:
      // MessageDlg('Πρόβλημα σε εύρεση', mtError, [mbOK], 0);
      ShowMessage('Πρόβλημα σε εύρεση');
    IMP_ERR_DATA_CARD:
      // MessageDlg('Πρόβλημα σε εύρεση Κάρτας', mtError, [mbOK], 0);
      ShowMessage('Πρόβλημα σε εύρεση Κάρτας');
    IMP_ERR_DATA_ITEM:
      // MessageDlg('Πρόβλημα σε εύρεση Εμπόρου+++', mtError, [mbOK], 0);
      ShowMessage('Πρόβλημα σε εύρεση Εμπόρου+++');
    IMP_ERR_DATA_MERC:
      // MessageDlg('Πρόβλημα σε εύρεση Εμπόρου', mtError, [mbOK], 0);
      ShowMessage('Πρόβλημα σε εύρεση Εμπόρου');
    IMP_ERR_DATA_PRAT:
      // MessageDlg('Πρόβλημα σε εύρεση Πρατηρίου', mtError, [mbOK], 0);
      ShowMessage('Πρόβλημα σε εύρεση Πρατηρίου');
    IMP_ERR_DATA_DOUBLE:
      ShowMessage('Πρόβλημα.Διπλή Εγγραφή');
    IMP_ERR_DATE_NEXT:
      ShowMessage('Πρόβλημα με ημερομηνία κινήσεων.');
  End;
End;

Procedure TfrmImportStd.FormShow(Sender: TObject);
Begin
  Label2.Caption       := '';
  Label2.Visible       := False;
  ProgressBar1.Visible := False;
  ProgressBar2.Visible := False;
End;

Procedure TfrmImportStd.DoInsert;
  function CheckACard(CardNo: Integer; var CardCode: Integer; var KmTrue: Boolean): Boolean;
  begin
    If (qryACard.Locate('ACARDCODE', CardNo, []) = true) then
      begin
        Result   := true;
        CardCode := qryACardACARDID.AsInteger;
        KmTrue   := qryACardMETERBOOLEAN.AsBoolean;
        if Checking then
          Memo1.Lines.Append('Κάρτα ' + ReturnFullIdNo(CardNo) + ' / ' + Inttostr(CardNo) + ' Κωδικός ' + Inttostr(CardCode));
      end
    else
      begin
        Result   := False;
        CardCode := -1;
        if Checking then
          begin
            Memo2.Lines.Append('Κάρτα ' + ReturnFullIdNo(CardNo) + ' / ' + Inttostr(CardNo) + ' Δεν βρέθεικε');
            ErrorID := IMP_ERR_DATA_CARD;
            ReportError;
          end;
      end;

  end;

  function CheckTerminalId(TerminalId: String; var TerminalCode: Integer): Boolean;
  begin
    if (qryStation.Locate('TERMINALCODE', TerminalId, [loCaseInsensitive]) = true) then
      begin
        Result       := true;
        TerminalCode := qryStationTerminalTerminalid.AsInteger;
        if Checking then
          Memo1.Lines.Append('Πρατήριο ' + TerminalId + ' Κωδικός ' + Inttostr(TerminalCode));
      end
    else
      begin
        Result       := False;
        TerminalCode := -1;
        if Checking then
          begin
            Memo2.Lines.Append('Πρατήριο ' + TerminalId + ' Δεν βρέθεικε');
            ErrorID := IMP_ERR_DATA_PRAT;
            ReportError;
          end;
      end;
  end;

  function CheckMerchand(MerchandId: String; var MerchandCode, StationCode, TerminalCode: Integer): Boolean;
  begin
    // if (qryStation.Locate('MERCHANTCODE', MerchandId, [loCaseInsensitive])
    if (qryStation.Locate('TerminalId.TerminalCode', MerchandId, [loCaseInsensitive]) = true) then
      begin
        Result       := true;
        MerchandCode := qryStationMerchantMerchantId.AsInteger;
        StationCode  := qryStationStationStationId.AsInteger;
        TerminalCode := qryStationTerminalTerminalid.AsInteger;
        if Checking then
          Memo1.Lines.Append('Τερματικό ' + MerchandId + ' Κωδικός ' + Inttostr(MerchandCode) + ' / ' + Inttostr(StationCode) + ' / ' + Inttostr(TerminalCode))
      end
    else
      begin
        Result       := False;
        MerchandCode := -1;
        StationCode  := -1;
        TerminalCode := -1;
        if Checking then
          begin
            Memo2.Lines.Append('Τερματικό ' + MerchandId + ' Δεν βρέθεικε');
            ErrorID := IMP_ERR_DATA_MERC;
            ReportError;
          end;
      end;
  end;

  function CheckSitem(SitemId: Integer; var SitemCode: Integer): Boolean;
  begin
    if (qrySItem.Locate('CODEINTERMINAL', SitemId, []) = true) then
      begin
        Result    := true;
        SitemCode := qrySItemSITEMID.AsInteger;
        if Checking then
          Memo1.Lines.Append('Προίον ' + Inttostr(SitemId) + ' Κωδικός ' + Inttostr(SitemCode));
      end
    else
      begin
        Result    := False;
        SitemCode := -1;
        if Checking then
          begin
            Memo2.Lines.Append('Πρόιον ' + Inttostr(SitemId) + ' Δεν βρέθεικε');
            ErrorID := IMP_ERR_DATA_ITEM;
            ReportError;
          end;
      end;
  end;

  function CheckNextDate(MMonth: Integer; DDay: Integer): Boolean;
  begin
    if ((MMonth > HdrMonth) or ((MMonth = HdrMonth) and (DDay > HdrDay))) then
      begin
        Result := False;
        if Checking then
          begin
            Memo3.Lines.Append('Πρόβλημα στην ημερομηνία κίνησης ' + Inttostr(DDay) + '/' + Inttostr(MMonth));
            NextDate := NextDate + 1;
            // ErrorID:=IMP_ERR_DATE_NEXT;
            // ReportError;
          end;
      end
    else
      begin
        Result := true;
        if Checking then
          Memo1.Lines.Append('Hμερομηνία κίνησης ' + Inttostr(DDay) + '/' + Inttostr(MMonth));
      end;
  end;

  function CheckSitemPrice(SitemCode: Integer; Merchand: Integer; UnitPrice: Real): Boolean;
  // function MerchandName(Code: Integer): String;
  // begin
  // FindMerchand.Active                              := False;
  // FindMerchand.Parameters.ParamByName('PTerminalId').Value := Code;
  // FindMerchand.Active                              := true;
  // if FindMerchand.IsEmpty then
  // Result := '****'
  // else
  /// /        Result            := FindMerchandMerchantName.AsString + '-' +FindMerchandStationName.AsString;
  // Result            := Trim(FindMerchandStationName.AsString);
  // FindMerchand.Active := False;
  // end;

  begin
    if CheckPriceAr[SitemCode].Check then
      begin
        if UnitPrice > CheckPriceAr[SitemCode].MaxPrice then
          begin
            if Checking then
              begin
                MemoPrice.Lines.Append('Τιμή Προϊόντος ' + CheckPriceAr[SitemCode].Desc + ' > απο Αρχείο σε Πρατήριο ' + MerchandName(Merchand));
                // MemoPrice.Lines.Append('Τιμή Προϊόντος ' + CheckPriceAr[SitemCode].Desc +  ' > απο Αρχείο σε Πρατήριο ' + inttostr(Merchand));
                PriceSt := 1;
              end;
          end;
        if UnitPrice < CheckPriceAr[SitemCode].MinPrice then
          begin
            if Checking then
              begin
                MemoPrice.Lines.Append('Τιμή Προϊόντος ' + CheckPriceAr[SitemCode].Desc + ' < απο Αρχείο σε Πρατήριο ' + MerchandName(Merchand));
                // MemoPrice.Lines.Append('Τιμή Προϊόντος ' + CheckPriceAr[SitemCode].Desc +  ' < απο Αρχείο σε Πρατήριο ' + inttostr(Merchand));
                PriceSt := 1;
              end;
          end;
      end;
  end;

Var
  BinBP: TBINBP;
  BinBD: TBINBD;
  i, k, Y: Integer;
  CardCode, MerchandCode, StationCode, TerminalCode, SitemCode: Integer;
  st: String;
  KmTrue: Boolean;
  x0, y0, z0: Word;
Begin
  Label2.Caption       := 'Παρακαλώ περιμένετε';
  Label2.Visible       := true;
  ProgressBar1.Visible := true;
  ProgressBar2.Visible := true;

  ProgressBar1.Min      := 0;
  ProgressBar1.Max      := StationList.Count;
  ProgressBar1.Position := 0;

  { TODO : cursor to SQLWait }

  qryStation.Close;
  qryStation.Open;
  qryACard.Close;
  qryACard.Open;
  qryTran.Close;
  qryTran.Open;
  qrySItem.Close;
  qrySItem.Open;
  QStation.Close;
  QStation.Open;

  { TODO : προσδιόρισε τις ημερομηνίες κινήσεων που περιέχονται στο αρχείο και
    διέγραψε τις αυτόματες κινήσεις από το TRAN (που δεν έχουν γίνει
    εκκαθάριση !!!) }

  Application.ProcessMessages;

  For i := 0 To (StationList.Count - 1) Do
    Begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      BinBP                 := TBINBP(StationList.Items[i]);

      if CheckMerchand(BinBP.MerchantID, MerchandCode, StationCode, TerminalCode) = true then
        Begin
          ProgressBar2.Min      := 0;
          ProgressBar2.Max      := TransList.Count;
          ProgressBar2.Position := 0;
          Edit2.Text            := POSBPToString();
          For k                 := 0 To (TransList.Count - 1) Do
            Begin
              Edit2.Text := POSBDToString();
              Edit2.Repaint;
              ProgressBar2.Position := ProgressBar2.Position + 1;
              BinBD                 := TBINBD(TransList.Items[k]);
              Y                     := ReturnCardCode(BinBD.PrimaryAccountNumber);
              if (BinBD.StationIdx = BinBP.StationIdx) then
                begin
                  If CheckACard(Y, CardCode, KmTrue) = true then
                    Begin
                      If CheckSitem(BinBD.ProductPurchased, SitemCode) = true then
                        begin
                          qryTran.Append;
                          If CheckNextDate(BinBD.TransactionMonth, BinBD.TransactionDay) = true then
                            begin
                              qryTranTRANDATE.AsDateTime := EncodeDate(HdrYear, BinBD.TransactionMonth, BinBD.TransactionDay);
                            end
                          else
                            begin
                              qryTranTRANDATE.AsDateTime := EncodeDate(HdrYear - 1, BinBD.TransactionMonth, BinBD.TransactionDay);
                            end;
                          qryTranTRANTIME.AsDateTime := EncodeTime(BinBD.TransactionHour, BinBD.TransactionMin, 0, 0);

                          qryTranACARDID.AsInteger := CardCode;
                          { TODO -cCritical : Change Ref to New Schema }
                          qryTranSTATIONID.AsInteger  := StationCode;
                          qryTranMERCHANTID.AsInteger := MerchandCode;
                          qryTranTERMINALID.AsInteger := TerminalCode;
                          if BinBD.KmCounterBefore = 0 then
                            qryTranKMBEFORE.AsInteger := BinBD.KmCounterAfter
                          else
                            qryTranKMBEFORE.AsInteger := BinBD.KmCounterBefore;
                          qryTranKMAFTER.AsInteger    := BinBD.KmCounterAfter;
                          if KmTrue = False then
                            begin
                              qryTranKMBEFORE.AsInteger := 0;
                              qryTranKMAFTER.AsInteger  := 0;
                            end;
                          qryTranSITEMID.AsInteger := SitemCode;
                          qryTranREFSTR.AsString   := BinBD.POSTransactionNumber;
                          qryTranISAUTO.AsBoolean  := true;
                          qryTranAMOUNT.AsFloat    := BinBD.TransactionAmount;
                          qryTranINSDT.AsDateTime  := now();
                          qryTranINSUSR.AsInteger  := gUGroupID;

                          DecodeDate(qryTranTRANDATE.AsDateTime, x0, y0, z0);
                          qryTranTRANPERIOD.AsInteger := (x0 * 100) + y0;

                          if BinBD.AccountDataSourceCode = 'D' then
                            qryTranISTYPED.AsBoolean := False
                          else
                            qryTranISTYPED.AsBoolean := true;
                          if Checking then
                            if BinBD.AccountDataSourceCode = 'T' then
                              MessageDlg('Contains Typed Entries', mtWarning, [mbOK], 0);
                          // if BinBD.ProductPurchased < 6 then
                          if BinBD.ProductPurchased in [1, 2, 3, 4, 5, 8] then
                            qryTranQUANTITY.AsFloat := BinBD.Quantity
                          else
                            qryTranQUANTITY.AsFloat := 0;
                          // if BinBD.ProductPurchased < 6 then
                          if BinBD.ProductPurchased in [1, 2, 3, 4, 5, 8] then
                            begin
                              try
                                qryTranUNITPRICE.AsFloat := BinBD.TransactionAmount / BinBD.Quantity;
                              except
                                MessageDlg('Διαίρεση με Μηδεν.', mtError, [mbOK], 0);
                                qryTranUNITPRICE.AsFloat := 0;
                              end;
                              CheckSitemPrice(SitemCode, MerchandCode, qryTranUNITPRICE.AsFloat);
                            end;
                          // 18062008
                          if Checking then
                            if CheckSameEntry(CardCode, MerchandCode, SitemCode, qryTranTRANDATE.AsDateTime, qryTranTRANTIME.AsDateTime, BinBD.TransactionAmount,
                              BinBD.POSTransactionNumber) = False then
                              Inc(SameEntry);
                          qryTranBATCHNO.AsInteger := BatchNo;
                          if (Not Checking) then
                            if (BinBD.StationIdx = BinBP.StationIdx) then
                              if BinBD.VoidIndicator = 'V' then
                                begin
                                  qryTran.Cancel;
                                  Inc(StationV)
                                end
                              else
                                qryTranISVOID.AsBoolean := False
                            else
                              qryTran.Cancel
                          else
                            qryTran.Cancel;
                        end
                    end
                end;
            End;
          ProgressBar2.Position := TransList.Count;
          Edit2.Repaint;
        End
    End;
  ProgressBar1.Position := StationList.Count;
  ProgressBar1.Visible  := False;
  ProgressBar2.Visible  := False;
  Label2.Caption        := 'Ενημέρωση κινήσεων ... παρακαλώ περιμένετε';
  qryTran.UpdateBatch;

  Label2.Caption := '';
  Label2.Visible := False;

  qryTrCall.Edit;
  qryTrCallTRCALLAUTOUPDATECNT.AsInteger    := TransList.Count;
  qryTrCallTRCALLAUTOUPDATECNTDEL.AsInteger := StationV;
  qryTrCallTRCALLAUTOUPDATECNTST.AsInteger  := StationList.Count;
  qryTrCallTRCALLAUTOUPDATECNTST0.AsInteger := Station0;
  qryTrCall.Post;

  if ((Checking) And (PriceSt > 0)) then
    MessageDlg('Πρόβλημα στις Τιμές Προϊόντων', mtInformation, [mbOK], 0);

  if ((Checking) And (NextDate > 0)) then
    MessageDlg('Πρόβλημα με ημερομηνία κινήσεων.(Καταχώρηση σε προηγούμενη Χρονία.)', mtInformation, [mbOK], 0);

  if ((Checking) And (SameEntry > 0)) then
    begin
      MessageDlg('Πρόβλημα στις Κινήσεις.Διπλές Εγγραφές', mtInformation, [mbOK], 0);
      PageControl1.ActivePage := TabSheet8;
    end;
  if (Not Checking) then
    MessageDlg('Πλήθος εγγραφών ' + Inttostr(TransList.Count) + #13#10 + 'Πλήθος άκυρων εγγραφών ' + Inttostr(StationV), mtInformation, [mbOK], 0);
End;

procedure TfrmImportStd.actPrintExecute(Sender: TObject);
var
  frm: TQuickRep;
begin
  try
    frm             := TRptImport.Create(self);
    frm.ReportTitle := frm.ReportTitle + Inttostr(BINHDR.Day) + '/' + Inttostr(BINHDR.Month) + '/' + Inttostr(BINHDR.Year);
    frm.PreviewModal;
  finally
    frm.Free;
  end;
end;

procedure TfrmImportStd.SetReadState(const Value: Integer);
begin
  FReadState := Value;
end;

procedure TfrmImportStd.DisplayErrorLine(Num: Integer = 0);
var
  tmp: Integer;
begin
  if Num > 0 then
    tmp := Num
  else
    tmp := ReadState;

  Case tmp of
    1:
      begin;
        MessageDlg(POSBPToString(), mtInformation, [mbOK], 0);
        Clipboard.AsText := POSBPToString();
      end;
    2:
      begin
        MessageDlg(POSBSToString(), mtInformation, [mbOK], 0);
        Clipboard.AsText := POSBSToString();
      end;
    3:
      begin
        MessageDlg(POSBDToString(), mtInformation, [mbOK], 0);
        Clipboard.AsText := POSBDToString();
      end;
    4:
      begin
        MessageDlg(POSBSToString(), mtInformation, [mbOK], 0);
        Clipboard.AsText := POSBSToString();
      end;
    33:
      begin
        MessageDlg('Error in Sequence (BD)', mtInformation, [mbOK], 0);
        Clipboard.AsText := POSBSToString();
      end;

  end;
end;

function TfrmImportStd.POSBDToString(): ShortString;
var
  x: String;
begin
  x      := '';
  x      := x + POSBD.RecordType;
  x      := x + POSBD.TransactionCode;
  x      := x + POSBD.StoreNumber;
  x      := x + POSBD.TerminalNumber;
  x      := x + POSBD.TransactionDate;
  x      := x + POSBD.PrimaryAccountNumber;
  x      := x + POSBD.Filler;
  x      := x + POSBD.NumberOfInstallments;
  x      := x + POSBD.AccountDataSourceCode;
  x      := x + POSBD.CardHolderIDCode;
  x      := x + POSBD.TransactionAmount;
  x      := x + POSBD.VoidIndicator;
  x      := x + POSBD.AuthorisationSourceCode;
  x      := x + POSBD.ApprovalCode;
  x      := x + POSBD.POSTransactionNumber;
  x      := x + POSBD.TransactionTime;
  x      := x + POSBD.CompanyName;
  x      := x + POSBD.VehicleNo;
  x      := x + POSBD.DayFloorLimit;
  x      := x + POSBD.MonthFloorLimit;
  x      := x + POSBD.ExpirationDate;
  x      := x + POSBD.ProductPurchased;
  x      := x + POSBD.VersionOfTheChip;
  x      := x + POSBD.CurrentDayBalance;
  x      := x + POSBD.CurrentMonthBalance;
  x      := x + POSBD.KmCounterBefore;
  x      := x + POSBD.KmCounterAfter;
  x      := x + POSBD.Quantity;
  x      := x + POSBD.CrLf;
  Result := x;
end;

function TfrmImportStd.POSBPToString: ShortString;
var
  x: String;
begin
  x      := '';
  x      := x + POSBP.RecordType;
  x      := x + POSBP.TransactionCode;
  x      := x + POSBP.TransactionDate;
  x      := x + POSBP.Filler1;
  x      := x + POSBP.BatchNumber;
  x      := x + POSBP.MerchantID;
  x      := x + POSBP.StoreNumber;
  x      := x + POSBP.TerminalNumber;
  x      := x + POSBP.BlockingNumber;
  x      := x + POSBP.CurrencyCode;
  x      := x + POSBP.AcquirerBankCode;
  x      := x + POSBP.Filler2;
  x      := x + POSBP.BDCount;
  x      := x + POSBP.CrLf;
  Result := x;
end;

function TfrmImportStd.POSBSToString: ShortString;
var
  x: String;
begin
  x      := '';
  x      := x + POSBS.RecordType;
  x      := x + POSBS.TransactionCode;
  x      := x + POSBS.StoreNumber;
  x      := x + POSBS.TerminalNumber;
  x      := x + POSBS.MerchantName;
  x      := x + POSBS.CityName;
  x      := x + POSBS.StateCode;
  x      := x + POSBS.MerchantTypeCode;
  x      := x + POSBS.LocationCode;
  x      := x + POSBS.TerminalSerialNumber;
  x      := x + POSBS.PostalCode;
  x      := x + POSBS.CountryCode;
  x      := x + POSBS.SecurityCode;
  x      := x + POSBS.CrLf;
  Result := x;
end;

function TfrmImportStd.POSBTToString: ShortString;
var
  x: String;
begin
  x      := '';
  x      := x + POSBT.RecordType;
  x      := x + POSBT.TransactionCode;
  x      := x + POSBT.TransactionDate;
  x      := x + POSBT.Filler1;
  x      := x + POSBT.BatchNumber;
  x      := x + POSBT.BatchRecordCount;
  x      := x + POSBT.BatchAmountTotal;
  x      := x + POSBT.Filler2;
  x      := x + POSBT.CrLf;
  Result := x;
end;

function TfrmImportStd.CheckSameEntry(Card, Merchand, Sitem: Integer; TTDate, TTTime: TDateTime; Amount: Double; RefStr: String): Boolean;
begin
  ADOSPFindTransEntry.Active := False;

  ADOSPFindTransEntry.Parameters.ParamByName('@PAcard').Value := Card;
  ADOSPFindTransEntry.Parameters.ParamByName('@PStation').Value := Merchand;
  ADOSPFindTransEntry.Parameters.ParamByName('@PTranDateTime').Value := TTDate;
  ADOSPFindTransEntry.Parameters.ParamByName('@PSitem').Value := Sitem;
  ADOSPFindTransEntry.Parameters.ParamByName('@PAmount').Value := Amount;
  ADOSPFindTransEntry.Parameters.ParamByName('@PRefStr').Value := RefStr;

  ADOSPFindTransEntry.Active := true;

  if ADOSPFindTransEntry.RecordCount > 0 then
    begin
      Result := False;
      MemoDoubleEn.Lines.Append('Card:' + Inttostr(Card) + ' Merchand:' + Inttostr(Merchand) + ' ' + MerchandName(Merchand) + ' Date:' + datetostr(TTDate) + ' Sitem:' +
        Inttostr(Sitem) + ' Amount:' + floattostr(Amount) + ' RefStr:' + RefStr);
      ErrorID := IMP_ERR_DATA_DOUBLE;
      ReportError;
    end
  else
    Result := true;
end;

function TfrmImportStd.MerchandName(Code: Integer): String;
var
  vCode: Variant;
begin
  // FindMerchand.Active                              := False;
  // FindMerchand.Parameters.ParamByName('PTerminal').Value := Code;
  // FindMerchand.Active                              := true;
  // if FindMerchand.IsEmpty then
  // Result := '****'
  // else
  // Result            := FindMerchandMerchantName.AsString;
  // FindMerchand.Active := False;
  vCode := Code;
  if CDSMST.Locate('Terminal.Terminalid', vCode, []) then
    Result := CDSMSTMerchantName.AsString
  else
    Result := '****'
end;

function TfrmImportStd.CheckTrCallForRerun(DateTr: Variant; var BatchNo: Integer): Boolean;
begin
  qryTrCall.Active := true;
  BatchNo          := -1;

  if qryTrCall.Locate('TrCallDate', DateTr, []) then
    if qryTrCallTRCALLAUTOUPDATE.AsBoolean then
      begin
        BatchNo := qryTrCallTRCALLID.AsInteger;
        Result  := true
      end
    else
      Result := False
  else
    Result := False;
end;

function TfrmImportStd.DeleteTrBatch(DateTr: Variant): Boolean;
begin
  qryTrCall.Active := False;
  qryTrCall.Active := true;

  if qryTrCall.Locate('TrCallDate', DateTr, []) then
    begin
      qryTrCall.Delete;
      Result := true
    end
  else
    begin
      Result := False
    end;

  MessageDlg('Το αρχειο έχει προβληματα και δεν έχει γίνει Ενημέρωση κίνησεων.', mtError, [mbOK], 0);

end;

function TfrmImportStd.CheckIfTransUpdatePelStat(BatchNo: Integer): Boolean;
begin
  TransCntUpd.Active                                  := False;
  TransCntUpd.Parameters.ParamByName('BatchNo').Value := BatchNo;
  TransCntUpd.Active                                  := true;
  if ((TransCntUpdUPDCARD.AsInteger > 0) or (TransCntUpdUPDSTATION.AsInteger > 0)) then
    begin
      MessageDlg('Εχετε ήδη ενημερώσει Σταθμούς ή Πελάτες', mtConfirmation, [mbOK], 0);
      Result := true;
    end
  else
    begin
      Result := False;
    end;
end;

function TfrmImportStd.DeleteTransOfDay(BatchNo: Integer; CallDDate: TDate): Boolean;
begin
  try
    DelTran.Parameters.ParamByName('BatchNo').Value := BatchNo;
    DelTran.ExecSQL;
    DelTrCallDet.Parameters.ParamByName('TrCallDDate').Value := CallDDate;
    DelTrCallDet.ExecSQL;
    DelTrCall.Parameters.ParamByName('TrCallId').Value := BatchNo;
    DelTrCall.ExecSQL;
    Result := true;
  except
    Result := False;
  end;
end;

function TfrmImportStd.UpdateTrCallForDate(CallDDate: TDateTime; var BatchNo: Integer): Boolean;
var
  CallVar: Variant;
begin
  qryTrCall.Insert;
  qryTrCall.Edit;
  qryTrCall.FieldByName('TrCallDate').AsDateTime      := CallDDate;
  qryTrCall.FieldByName('TrCallAutoUpdate').AsBoolean := true;
  try
    qryTrCall.Post;
  except
    Result := False;
  end;
  qryTrCall.Requery();

  CallVar := CallDDate;
  if qryTrCall.Locate('TrCallDate', CallVar, []) then
    begin
      BatchNo := qryTrCallTRCALLID.AsInteger;
      Result  := true;
    end
  else
    begin
      BatchNo := -1;
      Result  := False;
    end
end;

End.
