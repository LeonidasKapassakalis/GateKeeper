inherited frmImportStd: TfrmImportStd
  Left = 349
  Top = 262
  BorderIcons = []
  Caption = #917#953#963#945#947#969#947#942' '#963#964#959#953#967#949#943#969#957
  ClientHeight = 507
  ClientWidth = 659
  Font.Height = -10
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 667
  ExplicitHeight = 534
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl [0]
    Left = 8
    Top = 32
    Width = 633
    Height = 467
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #916#953#945#948#953#954#945#963#943#945
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 20
        Top = 20
        Width = 34
        Height = 13
        Caption = #913#961#967#949#943#959
      end
      object Label2: TLabel
        Left = 65
        Top = 48
        Width = 32
        Height = 13
        Caption = 'Label2'
      end
      object ProgressBar1: TProgressBar
        Left = 57
        Top = 64
        Width = 552
        Height = 16
        TabOrder = 0
      end
      object ProgressBar2: TProgressBar
        Left = 56
        Top = 80
        Width = 553
        Height = 16
        TabOrder = 1
      end
      object Edit1: TEdit
        Left = 65
        Top = 21
        Width = 528
        Height = 21
        TabOrder = 2
        Text = 'Name'
        OnDblClick = Edit1DblClick
      end
      object Edit2: TEdit
        Left = 20
        Top = 208
        Width = 589
        Height = 21
        TabOrder = 3
        Text = 'Edit2'
        Visible = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = #917#960#949#958#949#961#947#945#963#943#945
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 625
        Height = 439
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = #928#961#959#946#955#942#956#945#964#945
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Memo2: TMemo
        Left = 0
        Top = 0
        Width = 625
        Height = 439
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 0
      end
    end
    object TabSheet4: TTabSheet
      Caption = #932#949#961#956#945#964#953#954#940' 0'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Memo0: TMemo
        Left = 0
        Top = 0
        Width = 625
        Height = 439
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 0
      end
    end
    object TabSheet5: TTabSheet
      Caption = #932#949#961#956#945#964#953#954#940' '#927#922
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object MemoOK: TMemo
        Left = 0
        Top = 0
        Width = 625
        Height = 439
        Align = alClient
        TabOrder = 0
      end
    end
    object TabSheet6: TTabSheet
      Caption = #932#949#961#956#945#964#953#954#940' '#935#969#961#943#962' '#917#960'.'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object MemoNo: TMemo
        Left = 0
        Top = 0
        Width = 625
        Height = 439
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 0
      end
    end
    object TabSheet7: TTabSheet
      Caption = #932#953#956#941#962
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object MemoPrice: TMemo
        Left = 0
        Top = 0
        Width = 625
        Height = 439
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 0
      end
    end
    object TabSheet8: TTabSheet
      Caption = #916#953#960#955#941#962' '#917#947#947#961#945#966#941#962
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object MemoDoubleEn: TMemo
        Left = 0
        Top = 0
        Width = 625
        Height = 439
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 0
      end
    end
    object TabSheet9: TTabSheet
      Caption = #919#956#949#961#959#956#951#957#943#949#962
      ImageIndex = 8
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Memo3: TMemo
        Left = 0
        Top = 0
        Width = 625
        Height = 439
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 0
      end
    end
    object ts1: TTabSheet
      Caption = 'ts1'
      ImageIndex = 9
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object mmoProc: TMemo
        Left = 0
        Top = 0
        Width = 625
        Height = 439
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 0
      end
    end
  end
  object ActionToolBar1: TActionToolBar [1]
    Left = 0
    Top = 0
    Width = 659
    Height = 23
    ActionManager = ActionManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  inherited ActionMainList: TActionList
    Left = 576
    Top = 208
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 584
    Top = 352
    object actClose: TAction
      Caption = #917#960#953#963#964#961#959#966#942
      OnExecute = actCloseExecute
    end
    object actPrint: TAction
      Caption = #917#954#964#973#960#969#963#951
      Enabled = False
      OnExecute = actPrintExecute
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
      OnExecute = UpdateActionsExecute
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'AVN'
    Filter = #931#964#959#953#967#949#943#945' AvinCard (*.txt)| *.txt|'#8217#927#955#945' '#964#945' '#945#961#967#949#943#945' (*.*)|*.*'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = #917#960#953#955#959#947#942' '#945#961#967#949#943#959#965' '#947#953#945' '#949#953#963#945#947#969#947#942
    Left = 168
    Top = 304
  end
  object qryStation: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM V_MST_Outer'
      '')
    Left = 80
    Top = 224
    object qryStationTerminalidTerminalCode: TWideStringField
      FieldName = 'Terminalid.TerminalCode'
    end
    object qryStationStationName: TWideStringField
      FieldName = 'Station.Name'
      Size = 100
    end
    object qryStationMerchantName: TWideStringField
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object qryStationMerchantSAPCode: TWideStringField
      FieldName = 'Merchant.SAPCode'
      Size = 10
    end
    object qryStationTerminalTerminalid: TIntegerField
      FieldName = 'Terminal.Terminalid'
    end
    object qryStationStationStationId: TIntegerField
      FieldName = 'Station.StationId'
    end
    object qryStationMerchantMerchantId: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object qryStationMerchantInActive: TBooleanField
      FieldName = 'Merchant.InActive'
    end
    object qryStationMerchantDeleted: TBooleanField
      FieldName = 'Merchant.Deleted'
    end
    object qryStationMerchantIsTest: TBooleanField
      FieldName = 'Merchant.IsTest'
    end
    object qryStationMerchantStopSales: TBooleanField
      FieldName = 'Merchant.StopSales'
    end
    object qryStationStationDeleted: TBooleanField
      FieldName = 'Station.Deleted'
    end
    object qryStationStationInActive: TBooleanField
      FieldName = 'Station.InActive'
    end
    object qryStationStationStopSales: TBooleanField
      FieldName = 'Station.StopSales'
    end
    object qryStationMerchantMerchantCode: TWideStringField
      FieldName = 'Merchant.MerchantCode'
      Size = 50
    end
    object qryStationStationStreet: TWideStringField
      FieldName = 'Station.Street'
      Size = 50
    end
    object qryStationStationCity: TWideStringField
      FieldName = 'Station.City'
      Size = 50
    end
    object qryStationStationZIP: TWideStringField
      FieldName = 'Station.ZIP'
      Size = 50
    end
  end
  object qryACard: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ACARD')
    Left = 264
    Top = 72
    object qryACardACARDID: TAutoIncField
      FieldName = 'ACARDID'
      ReadOnly = True
    end
    object qryACardACARDCODE: TWideStringField
      FieldName = 'ACARDCODE'
      Size = 50
    end
    object qryACardCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qryACardISSUEDATE: TDateTimeField
      FieldName = 'ISSUEDATE'
    end
    object qryACardEXPIREDATE: TDateTimeField
      FieldName = 'EXPIREDATE'
    end
    object qryACardMETERBOOLEAN: TBooleanField
      FieldName = 'METERBOOLEAN'
    end
    object qryACardPINBOOLEAN: TBooleanField
      FieldName = 'PINBOOLEAN'
    end
    object qryACardINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryACardUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryACardINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryACardUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryACardSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qryACardVTYPEID: TIntegerField
      FieldName = 'VTYPEID'
    end
    object qryACardCREATEBOOLEAN: TBooleanField
      FieldName = 'CREATEBOOLEAN'
    end
    object qryACardBLACKLISTBOOLEAN: TBooleanField
      FieldName = 'BLACKLISTBOOLEAN'
    end
    object qryACardBLACKLISTDATE: TDateTimeField
      FieldName = 'BLACKLISTDATE'
    end
    object qryACardBLACKLISTUSR: TIntegerField
      FieldName = 'BLACKLISTUSR'
    end
    object qryACardBLACKLISTNOTES: TWideStringField
      FieldName = 'BLACKLISTNOTES'
      Size = 200
    end
    object qryACardIGROUPID1: TIntegerField
      FieldName = 'IGROUPID1'
    end
    object qryACardIGROUPID2: TIntegerField
      FieldName = 'IGROUPID2'
    end
    object qryACardIGROUPID3: TIntegerField
      FieldName = 'IGROUPID3'
    end
    object qryACardIGROUPID4: TIntegerField
      FieldName = 'IGROUPID4'
    end
    object qryACardDAYAMOUNT: TFloatField
      FieldName = 'DAYAMOUNT'
    end
    object qryACardMONTHAMOUNT: TFloatField
      FieldName = 'MONTHAMOUNT'
    end
    object qryACardREGNO: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
    object qryACardACARDHOLDER: TWideStringField
      FieldName = 'ACARDHOLDER'
      Size = 30
    end
    object qryACardISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qryACardEXPIREPHDATE: TDateTimeField
      FieldName = 'EXPIREPHDATE'
    end
    object qryACardEXPIRELODATE: TDateTimeField
      FieldName = 'EXPIRELODATE'
    end
    object qryACardIGROUPID5: TIntegerField
      FieldName = 'IGROUPID5'
    end
    object qryACardEMPLOYEESID: TIntegerField
      FieldName = 'EMPLOYEESID'
    end
    object qryACardNEWCARDBOOLEAN: TBooleanField
      FieldName = 'NEWCARDBOOLEAN'
    end
    object qryACardNEWCARDID: TIntegerField
      FieldName = 'NEWCARDID'
    end
  end
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM  [TRAN]'
      'Where TranId = 0')
    Left = 592
    Top = 144
    object qryTranTRANID: TAutoIncField
      FieldName = 'TRANID'
      ReadOnly = True
    end
    object qryTranTRANDATE: TDateTimeField
      FieldName = 'TRANDATE'
    end
    object qryTranACARDID: TIntegerField
      FieldName = 'ACARDID'
    end
    object qryTranSTATIONID: TIntegerField
      FieldName = 'STATIONID'
    end
    object qryTranINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryTranUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryTranINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryTranUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryTranAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object qryTranKMBEFORE: TIntegerField
      FieldName = 'KMBEFORE'
    end
    object qryTranKMAFTER: TIntegerField
      FieldName = 'KMAFTER'
    end
    object qryTranSITEMID: TIntegerField
      FieldName = 'SITEMID'
    end
    object qryTranQUANTITY: TFloatField
      FieldName = 'QUANTITY'
    end
    object qryTranREFSTR: TWideStringField
      FieldName = 'REFSTR'
      Size = 50
    end
    object qryTranISAUTO: TBooleanField
      FieldName = 'ISAUTO'
    end
    object qryTranSTATIONUPD: TBooleanField
      FieldName = 'STATIONUPD'
    end
    object qryTranACARDUPD: TBooleanField
      FieldName = 'ACARDUPD'
    end
    object qryTranBATCHNO: TIntegerField
      FieldName = 'BATCHNO'
    end
    object qryTranISVOID: TBooleanField
      FieldName = 'ISVOID'
    end
    object qryTranCOMMISSIONUPD: TBooleanField
      FieldName = 'COMMISSIONUPD'
    end
    object qryTranSTATIONUPDBT: TIntegerField
      FieldName = 'STATIONUPDBT'
    end
    object qryTranACARDUPDBT: TIntegerField
      FieldName = 'ACARDUPDBT'
    end
    object qryTranCOMMISSIONUPDBT: TIntegerField
      FieldName = 'COMMISSIONUPDBT'
    end
    object qryTranCONSUMUPD: TBooleanField
      FieldName = 'CONSUMUPD'
    end
    object qryTranCONSUMDIVIDER: TFloatField
      FieldName = 'CONSUMDIVIDER'
    end
    object qryTranUNITPRICE: TFloatField
      FieldName = 'UNITPRICE'
    end
    object qryTranTRANTIME: TDateTimeField
      FieldName = 'TRANTIME'
    end
    object qryTranISTYPED: TBooleanField
      FieldName = 'ISTYPED'
    end
    object qryTranTRANPERIOD: TIntegerField
      FieldName = 'TRANPERIOD'
    end
    object qryTranDISCOUNTUPD: TBooleanField
      FieldName = 'DISCOUNTUPD'
    end
    object qryTranDISCOUNTUPDBT: TIntegerField
      FieldName = 'DISCOUNTUPDBT'
    end
    object qryTranMERCHANTID: TIntegerField
      FieldName = 'MERCHANTID'
    end
    object qryTranTERMINALID: TIntegerField
      FieldName = 'TERMINALID'
    end
    object qryTranDISQUANTITY: TFloatField
      FieldName = 'DISQUANTITY'
    end
    object qryTranDISAMOUNT: TFloatField
      FieldName = 'DISAMOUNT'
    end
    object qryTranPELADAILYUPD: TBooleanField
      FieldName = 'PELADAILYUPD'
    end
    object qryTranPELADAILYUPDBT: TIntegerField
      FieldName = 'PELADAILYUPDBT'
    end
  end
  object qrySItem: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SITEM')
    Left = 560
    Top = 288
    object qrySItemSITEMID: TAutoIncField
      FieldName = 'SITEMID'
      ReadOnly = True
    end
    object qrySItemDESCR: TWideStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object qrySItemIGROUPID: TIntegerField
      FieldName = 'IGROUPID'
    end
    object qrySItemICLASSID: TIntegerField
      FieldName = 'ICLASSID'
    end
    object qrySItemCODEINTERMINAL: TIntegerField
      FieldName = 'CODEINTERMINAL'
    end
    object qrySItemPOSOSTO: TFloatField
      FieldName = 'POSOSTO'
    end
    object qrySItemINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qrySItemUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qrySItemINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qrySItemUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qrySItemMINPRICE: TFloatField
      FieldName = 'MINPRICE'
    end
    object qrySItemMAXPRICE: TFloatField
      FieldName = 'MAXPRICE'
    end
    object qrySItemCHECKPRICE: TBooleanField
      FieldName = 'CHECKPRICE'
    end
    object qrySItemDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qrySItemDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qrySItemDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qrySItemInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qrySItemInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qrySItemInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object DelTran: TADOQuery
    Connection = DMMain.ADOConnection
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'BATCHNO'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'DELETE FROM  [TRAN]'
      'WHERE BATCHNO = :BATCHNO')
    Left = 128
    Top = 424
    object AutoIncField1: TAutoIncField
      FieldName = 'TRANID'
      ReadOnly = True
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'TRANDATE'
    end
    object IntegerField1: TIntegerField
      FieldName = 'ACARDID'
    end
    object IntegerField2: TIntegerField
      FieldName = 'STATIONID'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'INSDT'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'UPDDT'
    end
    object IntegerField3: TIntegerField
      FieldName = 'INSUSR'
    end
    object IntegerField4: TIntegerField
      FieldName = 'UPDUSR'
    end
    object FloatField1: TFloatField
      FieldName = 'AMOUNT'
    end
    object IntegerField5: TIntegerField
      FieldName = 'KMBEFORE'
    end
    object IntegerField6: TIntegerField
      FieldName = 'KMAFTER'
    end
    object IntegerField7: TIntegerField
      FieldName = 'SITEMID'
    end
    object FloatField2: TFloatField
      FieldName = 'QUANTITY'
    end
    object WideStringField1: TWideStringField
      FieldName = 'REFSTR'
      Size = 50
    end
    object BooleanField1: TBooleanField
      FieldName = 'ISAUTO'
    end
    object BooleanField2: TBooleanField
      FieldName = 'STATIONUPD'
    end
    object BooleanField3: TBooleanField
      FieldName = 'ACARDUPD'
    end
    object IntegerField8: TIntegerField
      FieldName = 'BATCHNO'
    end
  end
  object QStation: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM V_MST_Outer'
      'Where [Merchant.StopSales] = 0 '
      'or         [Station.StopSales] = 0')
    Left = 464
    Top = 200
    object QStationTerminalidTerminalCode: TWideStringField
      FieldName = 'Terminalid.TerminalCode'
    end
    object QStationStationName: TWideStringField
      FieldName = 'Station.Name'
      Size = 100
    end
    object QStationMerchantName: TWideStringField
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object QStationMerchantSAPCode: TWideStringField
      FieldName = 'Merchant.SAPCode'
      Size = 10
    end
    object QStationTerminalTerminalid: TIntegerField
      FieldName = 'Terminal.Terminalid'
    end
    object QStationStationStationId: TIntegerField
      FieldName = 'Station.StationId'
    end
    object QStationMerchantMerchantId: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object QStationMerchantInActive: TBooleanField
      FieldName = 'Merchant.InActive'
    end
    object QStationMerchantDeleted: TBooleanField
      FieldName = 'Merchant.Deleted'
    end
    object QStationMerchantIsTest: TBooleanField
      FieldName = 'Merchant.IsTest'
    end
    object QStationMerchantStopSales: TBooleanField
      FieldName = 'Merchant.StopSales'
    end
    object QStationStationDeleted: TBooleanField
      FieldName = 'Station.Deleted'
    end
    object QStationStationInActive: TBooleanField
      FieldName = 'Station.InActive'
    end
    object QStationStationStopSales: TBooleanField
      FieldName = 'Station.StopSales'
    end
    object QStationMerchantMerchantCode: TWideStringField
      FieldName = 'Merchant.MerchantCode'
      Size = 50
    end
  end
  object dxStation: TdxMemData
    Indexes = <>
    SortOptions = []
    SortedField = 'Key'
    Left = 168
    Top = 208
    object dxStationKey: TIntegerField
      FieldName = 'Key'
    end
    object dxStationMerchandId: TStringField
      FieldName = 'MerchandId'
    end
    object dxStationMerchandName: TStringField
      FieldKind = fkLookup
      FieldName = 'MerchandName'
      LookupDataSet = qryStation
      LookupKeyFields = 'Merchant.MerchantCode'
      LookupResultField = 'Merchant.Name'
      KeyFields = 'MerchandId'
      Lookup = True
    end
    object dxStationMerchandAddress: TStringField
      FieldKind = fkLookup
      FieldName = 'MerchandAddress'
      LookupDataSet = qryStation
      LookupKeyFields = 'Merchant.MerchantCode'
      LookupResultField = 'Station.Street'
      KeyFields = 'MerchandId'
      Lookup = True
    end
    object dxStationMerchandPhone: TStringField
      FieldKind = fkLookup
      FieldName = 'MerchandPhone'
      LookupDataSet = qryStation
      LookupKeyFields = 'Merchant.MerchantCode'
      LookupResultField = 'Terminalid.TerminalCode'
      KeyFields = 'MerchandId'
      Lookup = True
    end
  end
  object UpdTrCallDet: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TRCALLDET'
      'Where TRCALLDSTATIONID = 0')
    Left = 416
    Top = 160
    object UpdTrCallDetTRCALLDDATE: TDateTimeField
      FieldName = 'TRCALLDDATE'
    end
    object UpdTrCallDetTRCALLDSTATIONID: TIntegerField
      FieldName = 'TRCALLDSTATIONID'
    end
    object UpdTrCallDetTRCALLDSTATUS: TIntegerField
      FieldName = 'TRCALLDSTATUS'
    end
  end
  object TransCntUpd: TADOQuery
    Connection = DMMain.ADOConnection
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'BATCHNO'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'Select Count([Tran].StationUpd) AS UPDSTATION, Count([Tran].Acar' +
        'dUpd) AS UPDCARD FROM [TRAN]'
      'WHERE BATCHNO = :BATCHNO'
      'AND ( [Tran].StationUpd = 1'
      'OR [Tran].AcardUpd = 1 )')
    Left = 280
    Top = 424
    object TransCntUpdUPDSTATION: TIntegerField
      FieldName = 'UPDSTATION'
    end
    object TransCntUpdUPDCARD: TIntegerField
      FieldName = 'UPDCARD'
    end
  end
  object DelTrCallDet: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TrCallDDate'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 36526d
      end>
    SQL.Strings = (
      'Delete FROM TRCALLDET '
      'Where TrCallDDate = :TrCallDDate')
    Left = 48
    Top = 424
  end
  object FindMerchand: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'PTerminalId'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM V_MST_Outer'
      '--Where [Terminal.TerminalId] = :PTerminalId')
    Left = 448
    Top = 328
    object FindMerchandTerminalidTerminalCode: TWideStringField
      FieldName = 'Terminalid.TerminalCode'
    end
    object FindMerchandStationName: TWideStringField
      FieldName = 'Station.Name'
      Size = 100
    end
    object FindMerchandMerchantName: TWideStringField
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object FindMerchandMerchantSAPCode: TWideStringField
      FieldName = 'Merchant.SAPCode'
      Size = 10
    end
    object FindMerchandTerminalTerminalid: TIntegerField
      FieldName = 'Terminal.Terminalid'
    end
    object FindMerchandStationStationId: TIntegerField
      FieldName = 'Station.StationId'
    end
    object FindMerchandMerchantMerchantId: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object FindMerchandMerchantInActive: TBooleanField
      FieldName = 'Merchant.InActive'
    end
    object FindMerchandMerchantDeleted: TBooleanField
      FieldName = 'Merchant.Deleted'
    end
    object FindMerchandMerchantIsTest: TBooleanField
      FieldName = 'Merchant.IsTest'
    end
    object FindMerchandMerchantStopSales: TBooleanField
      FieldName = 'Merchant.StopSales'
    end
    object FindMerchandStationDeleted: TBooleanField
      FieldName = 'Station.Deleted'
    end
    object FindMerchandStationInActive: TBooleanField
      FieldName = 'Station.InActive'
    end
    object FindMerchandStationStopSales: TBooleanField
      FieldName = 'Station.StopSales'
    end
    object FindMerchandMerchantMerchantCode: TWideStringField
      FieldName = 'Merchant.MerchantCode'
      Size = 50
    end
  end
  object ADOSPFindTransEntry: TADOStoredProc
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'FindTransEntry;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@PACard'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@PMerchant'
        DataType = ftInteger
        Value = 0
      end
      item
        Name = '@PStation'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@PTerminal'
        DataType = ftInteger
        Value = 0
      end
      item
        Name = '@PTranDateTime'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@PSItem'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@PAmount'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 0.000000000000000000
      end
      item
        Name = '@PRefStr'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end>
    Prepared = True
    Left = 64
    Top = 168
    object ADOSPFindTransEntryTRANID: TAutoIncField
      FieldName = 'TRANID'
      ReadOnly = True
    end
    object ADOSPFindTransEntryTRANDATE: TDateTimeField
      FieldName = 'TRANDATE'
    end
    object ADOSPFindTransEntryACARDID: TIntegerField
      FieldName = 'ACARDID'
    end
    object ADOSPFindTransEntrySTATIONID: TIntegerField
      FieldName = 'STATIONID'
    end
    object ADOSPFindTransEntryAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object ADOSPFindTransEntryKMBEFORE: TIntegerField
      FieldName = 'KMBEFORE'
    end
    object ADOSPFindTransEntryKMAFTER: TIntegerField
      FieldName = 'KMAFTER'
    end
    object ADOSPFindTransEntrySITEMID: TIntegerField
      FieldName = 'SITEMID'
    end
    object ADOSPFindTransEntryQUANTITY: TFloatField
      FieldName = 'QUANTITY'
    end
    object ADOSPFindTransEntryREFSTR: TWideStringField
      FieldName = 'REFSTR'
      Size = 50
    end
    object ADOSPFindTransEntryISAUTO: TBooleanField
      FieldName = 'ISAUTO'
    end
    object ADOSPFindTransEntryINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object ADOSPFindTransEntryUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object ADOSPFindTransEntryINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object ADOSPFindTransEntryUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object ADOSPFindTransEntrySTATIONUPD: TBooleanField
      FieldName = 'STATIONUPD'
    end
    object ADOSPFindTransEntryACARDUPD: TBooleanField
      FieldName = 'ACARDUPD'
    end
    object ADOSPFindTransEntryISVOID: TBooleanField
      FieldName = 'ISVOID'
    end
    object ADOSPFindTransEntryBATCHNO: TIntegerField
      FieldName = 'BATCHNO'
    end
    object ADOSPFindTransEntryCOMMISSIONUPD: TBooleanField
      FieldName = 'COMMISSIONUPD'
    end
    object ADOSPFindTransEntrySTATIONUPDBT: TIntegerField
      FieldName = 'STATIONUPDBT'
    end
    object ADOSPFindTransEntryACARDUPDBT: TIntegerField
      FieldName = 'ACARDUPDBT'
    end
    object ADOSPFindTransEntryCOMMISSIONUPDBT: TIntegerField
      FieldName = 'COMMISSIONUPDBT'
    end
    object ADOSPFindTransEntryCONSUMUPD: TBooleanField
      FieldName = 'CONSUMUPD'
    end
    object ADOSPFindTransEntryCONSUMDIVIDER: TFloatField
      FieldName = 'CONSUMDIVIDER'
    end
    object ADOSPFindTransEntryUNITPRICE: TFloatField
      FieldName = 'UNITPRICE'
    end
    object ADOSPFindTransEntryTRANTIME: TDateTimeField
      FieldName = 'TRANTIME'
    end
    object ADOSPFindTransEntryISTYPED: TBooleanField
      FieldName = 'ISTYPED'
    end
    object ADOSPFindTransEntryTRANPERIOD: TIntegerField
      FieldName = 'TRANPERIOD'
    end
    object ADOSPFindTransEntryDISCOUNTUPD: TBooleanField
      FieldName = 'DISCOUNTUPD'
    end
    object ADOSPFindTransEntryDISCOUNTUPDBT: TIntegerField
      FieldName = 'DISCOUNTUPDBT'
    end
    object ADOSPFindTransEntryDISQUANTITY: TFloatField
      FieldName = 'DISQUANTITY'
    end
    object ADOSPFindTransEntryDISAMOUNT: TFloatField
      FieldName = 'DISAMOUNT'
    end
    object ADOSPFindTransEntryPELADAILYUPD: TBooleanField
      FieldName = 'PELADAILYUPD'
    end
    object ADOSPFindTransEntryPELADAILYUPDBT: TIntegerField
      FieldName = 'PELADAILYUPDBT'
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actClose
          end
          item
            Action = actPrint
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 592
    Top = 80
    StyleName = 'Platform Default'
  end
  object qryTrCall: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM  TrCall'
      '')
    Left = 64
    Top = 304
    object qryTrCallTRCALLID: TAutoIncField
      FieldName = 'TRCALLID'
      ReadOnly = True
    end
    object qryTrCallTRCALLDATE: TDateTimeField
      FieldName = 'TRCALLDATE'
    end
    object qryTrCallTRCALLAUTOUPDATE: TBooleanField
      FieldName = 'TRCALLAUTOUPDATE'
    end
    object qryTrCallTRCALLAUTOUPDATECNT: TIntegerField
      FieldName = 'TRCALLAUTOUPDATECNT'
    end
    object qryTrCallTRCALLAUTOUPDATECNTST: TIntegerField
      FieldName = 'TRCALLAUTOUPDATECNTST'
    end
    object qryTrCallTRCALLAUTOUPDATECNTST0: TIntegerField
      FieldName = 'TRCALLAUTOUPDATECNTST0'
    end
    object qryTrCallTRCALLMANUPDATE: TBooleanField
      FieldName = 'TRCALLMANUPDATE'
    end
    object qryTrCallTRCALLENHMPELA: TBooleanField
      FieldName = 'TRCALLENHMPELA'
    end
    object qryTrCallTRCALLENHMPRAT: TBooleanField
      FieldName = 'TRCALLENHMPRAT'
    end
    object qryTrCallINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryTrCallUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryTrCallINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryTrCallUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryTrCallTRCALLAUTOUPDATECNTDEL: TIntegerField
      FieldName = 'TRCALLAUTOUPDATECNTDEL'
    end
  end
  object DelTrCall: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TrCallId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Delete FROM TRCALL'
      'Where TrCallId = :TrCallId')
    Left = 208
    Top = 424
  end
  object CDSMST: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Terminalid.TerminalCode'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'Station.Name'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'Merchant.Name'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'Merchant.SAPCode'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'Terminal.Terminalid'
        DataType = ftInteger
      end
      item
        Name = 'Station.StationId'
        DataType = ftInteger
      end
      item
        Name = 'Merchant.MerchantId'
        DataType = ftInteger
      end
      item
        Name = 'Merchant.InActive'
        DataType = ftBoolean
      end
      item
        Name = 'Merchant.Deleted'
        DataType = ftBoolean
      end
      item
        Name = 'Merchant.IsTest'
        DataType = ftBoolean
      end
      item
        Name = 'Merchant.StopSales'
        DataType = ftBoolean
      end
      item
        Name = 'Station.Deleted'
        DataType = ftBoolean
      end
      item
        Name = 'Station.InActive'
        DataType = ftBoolean
      end
      item
        Name = 'Station.StopSales'
        DataType = ftBoolean
      end
      item
        Name = 'Merchant.MerchantCode'
        DataType = ftWideString
        Size = 50
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 448
    Top = 384
    Data = {
      DB0100009619E0BD01000000180000000F000000000003000000DB0117546572
      6D696E616C69642E5465726D696E616C436F646501004A000000010005574944
      54480200020028000C53746174696F6E2E4E616D6501004A0000000100055749
      44544802000200C8000D4D65726368616E742E4E616D6501004A000000010005
      574944544802000200C800104D65726368616E742E534150436F646501004A00
      00000100055749445448020002001400135465726D696E616C2E5465726D696E
      616C696404000100000000001153746174696F6E2E53746174696F6E49640400
      010000000000134D65726368616E742E4D65726368616E744964040001000000
      0000114D65726368616E742E496E4163746976650200030000000000104D6572
      6368616E742E44656C6574656402000300000000000F4D65726368616E742E49
      73546573740200030000000000124D65726368616E742E53746F7053616C6573
      02000300000000000F53746174696F6E2E44656C657465640200030000000000
      1053746174696F6E2E496E41637469766502000300000000001153746174696F
      6E2E53746F7053616C65730200030000000000154D65726368616E742E4D6572
      6368616E74436F646501004A00000001000557494454480200020064000000}
    object CDSMSTTerminalidTerminalCode: TWideStringField
      FieldName = 'Terminalid.TerminalCode'
    end
    object CDSMSTStationName: TWideStringField
      FieldName = 'Station.Name'
      Size = 100
    end
    object CDSMSTMerchantName: TWideStringField
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object CDSMSTMerchantSAPCode: TWideStringField
      FieldName = 'Merchant.SAPCode'
      Size = 10
    end
    object CDSMSTTerminalTerminalid: TIntegerField
      FieldName = 'Terminal.Terminalid'
    end
    object CDSMSTStationStationId: TIntegerField
      FieldName = 'Station.StationId'
    end
    object CDSMSTMerchantMerchantId: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object CDSMSTMerchantInActive: TBooleanField
      FieldName = 'Merchant.InActive'
    end
    object CDSMSTMerchantDeleted: TBooleanField
      FieldName = 'Merchant.Deleted'
    end
    object CDSMSTMerchantIsTest: TBooleanField
      FieldName = 'Merchant.IsTest'
    end
    object CDSMSTMerchantStopSales: TBooleanField
      FieldName = 'Merchant.StopSales'
    end
    object CDSMSTStationDeleted: TBooleanField
      FieldName = 'Station.Deleted'
    end
    object CDSMSTStationInActive: TBooleanField
      FieldName = 'Station.InActive'
    end
    object CDSMSTStationStopSales: TBooleanField
      FieldName = 'Station.StopSales'
    end
    object CDSMSTMerchantMerchantCode: TWideStringField
      FieldName = 'Merchant.MerchantCode'
      Size = 50
    end
  end
end
