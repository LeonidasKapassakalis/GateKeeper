inherited frmExportNewTerminal: TfrmExportNewTerminal
  Left = 416
  Top = 237
  BorderIcons = []
  Caption = #917#957#964#959#955#941#962' '#917#947#954#945#964#940#963#964#945#963#951#962' '#932#949#961#956#945#964#953#954#974#957
  ClientHeight = 223
  ClientWidth = 549
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  ExplicitWidth = 557
  ExplicitHeight = 250
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 48
    Width = 55
    Height = 13
    Caption = #916#953#945#948#953#954#945#963#943#945
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 91
    Width = 3
    Height = 13
    Caption = '-'
  end
  object ProgressBar1: TProgressBar [2]
    Left = 8
    Top = 64
    Width = 537
    Height = 16
    TabOrder = 0
  end
  object ActionToolBar1: TActionToolBar [3]
    Left = 0
    Top = 0
    Width = 549
    Height = 23
    ActionManager = ActionManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  object DBGrid1: TDBGrid [4]
    AlignWithMargins = True
    Left = 8
    Top = 110
    Width = 533
    Height = 105
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  inherited popFilter: TPopupMenu
    Left = 364
    Top = 3
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 432
    Top = 8
    object actCancel: TAction
      Caption = #913#954#973#961#969#963#951
      OnExecute = actCancelExecute
    end
    object actOK: TAction
      Caption = #913#960#959#948#959#967#942
      OnExecute = actOKExecute
      OnUpdate = actOKUpdate
    end
    object actPreview: TAction
      Caption = #917#954#964#973#960#969#963#951
      OnExecute = actPreviewExecute
      OnUpdate = actOKUpdate
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
      OnExecute = UpdateActionsExecute
    end
  end
  object qryTerminal: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = qryTerminalCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Terminal'
      'Where CreateBoolean = 1')
    Left = 144
    Top = 8
    object qryTerminalTERMINAL_ID: TStringField
      FieldKind = fkCalculated
      FieldName = 'TERMINAL_ID'
      Calculated = True
    end
    object qryTerminalBANKMERCH_ID: TStringField
      FieldKind = fkCalculated
      FieldName = 'BANKMERCH_ID'
      Calculated = True
    end
    object qryTerminalTRADE_NAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'TRADE_NAME'
      Calculated = True
    end
    object qryTerminalCOMPANY_NAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'COMPANY_NAME'
      Calculated = True
    end
    object qryTerminalADDRESS: TStringField
      FieldKind = fkCalculated
      FieldName = 'ADDRESS'
      Calculated = True
    end
    object qryTerminalTOWN: TStringField
      FieldKind = fkCalculated
      FieldName = 'TOWN'
      Calculated = True
    end
    object qryTerminalZIP: TStringField
      FieldKind = fkCalculated
      FieldName = 'ZIP'
      Calculated = True
    end
    object qryTerminalTEL: TStringField
      FieldKind = fkCalculated
      FieldName = 'TEL'
      Calculated = True
    end
    object qryTerminalFAX: TStringField
      FieldKind = fkCalculated
      FieldName = 'FAX'
      Calculated = True
    end
    object qryTerminalCONTACT: TStringField
      FieldKind = fkCalculated
      FieldName = 'CONTACT'
      Calculated = True
    end
    object qryTerminalAFM: TStringField
      FieldKind = fkCalculated
      FieldName = 'AFM'
      Calculated = True
    end
    object qryTerminalDOY: TStringField
      FieldKind = fkCalculated
      FieldName = 'DOY'
      Calculated = True
    end
    object qryTerminalTERM_TYPE: TStringField
      FieldKind = fkCalculated
      FieldName = 'TERM_TYPE'
      Size = 0
      Calculated = True
    end
    object qryTerminalSR_NO: TStringField
      FieldKind = fkCalculated
      FieldName = 'SR_NO'
      Calculated = True
    end
    object qryTerminalBANK_NOTE: TStringField
      FieldKind = fkCalculated
      FieldName = 'BANK_NOTE'
      Calculated = True
    end
    object qryTerminalDATE_SEND: TStringField
      FieldKind = fkCalculated
      FieldName = 'DATE_SEND'
      Calculated = True
    end
    object qryTerminalRULE1: TStringField
      FieldKind = fkCalculated
      FieldName = 'RULE1'
      Calculated = True
    end
    object qryTerminalRULE2: TStringField
      FieldKind = fkCalculated
      FieldName = 'RULE2'
      Calculated = True
    end
    object qryTerminalRULE3: TStringField
      FieldKind = fkCalculated
      FieldName = 'RULE3'
      Calculated = True
    end
    object qryTerminalRULE4: TStringField
      FieldKind = fkCalculated
      FieldName = 'RULE4'
      Size = 40
      Calculated = True
    end
    object qryTerminalRULE5: TStringField
      FieldKind = fkCalculated
      FieldName = 'RULE5'
      Calculated = True
    end
    object qryTerminalTerminalid: TAutoIncField
      FieldName = 'Terminalid'
      ReadOnly = True
      Visible = False
    end
    object qryTerminalTerminalCode: TWideStringField
      DisplayLabel = 'TERMINAL_ID'
      FieldName = 'TerminalCode'
      Visible = False
    end
    object qryTerminalLMerchantCode: TStringField
      FieldKind = fkLookup
      FieldName = 'LMerchantCode'
      LookupDataSet = qryMST
      LookupKeyFields = 'Terminal.Terminalid'
      LookupResultField = 'Merchant.MerchantCode'
      KeyFields = 'Terminalid'
      Visible = False
      Lookup = True
    end
    object qryTerminalTerminalSerialNo: TWideStringField
      FieldName = 'TerminalSerialNo'
      Visible = False
      Size = 50
    end
    object qryTerminalTerminalType: TIntegerField
      FieldName = 'TerminalType'
      Visible = False
    end
    object qryTerminalInsDt: TDateTimeField
      FieldName = 'InsDt'
      Visible = False
    end
    object qryTerminalUpdDt: TDateTimeField
      FieldName = 'UpdDt'
      Visible = False
    end
    object qryTerminalInsUsr: TIntegerField
      FieldName = 'InsUsr'
      Visible = False
    end
    object qryTerminalUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
      Visible = False
    end
    object qryTerminalCreateBoolean: TBooleanField
      FieldName = 'CreateBoolean'
      Visible = False
    end
    object qryTerminalPending: TBooleanField
      FieldName = 'Pending'
      Visible = False
    end
    object qryTerminalLStationId: TIntegerField
      FieldKind = fkLookup
      FieldName = 'LStationId'
      LookupDataSet = qryMST
      LookupKeyFields = 'Terminal.Terminalid'
      LookupResultField = 'Station.StationId'
      KeyFields = 'Terminalid'
      Visible = False
      Lookup = True
    end
    object qryTerminalLMERCHANTSAP: TStringField
      FieldKind = fkLookup
      FieldName = 'LMERCHANTSAP'
      LookupDataSet = qryMST
      LookupKeyFields = 'Terminal.Terminalid'
      LookupResultField = 'Merchant.MerchantCode'
      KeyFields = 'Terminalid'
      Visible = False
      Lookup = True
    end
    object qryTerminalLMERCHANTNAME: TStringField
      FieldKind = fkLookup
      FieldName = 'LMERCHANTNAME'
      LookupDataSet = qryMST
      LookupKeyFields = 'Terminal.Terminalid'
      LookupResultField = 'Merchant.Name'
      KeyFields = 'Terminalid'
      Visible = False
      Lookup = True
    end
    object qryTerminalLSTATIONADDR: TStringField
      FieldKind = fkLookup
      FieldName = 'LSTATIONADDR'
      LookupDataSet = qryMST
      LookupKeyFields = 'Terminal.Terminalid'
      LookupResultField = 'Station.Street'
      KeyFields = 'Terminalid'
      Visible = False
      Lookup = True
    end
    object qryTerminalLSTATIONZIP: TStringField
      FieldKind = fkLookup
      FieldName = 'LSTATIONZIP'
      LookupDataSet = qryMST
      LookupKeyFields = 'Terminal.Terminalid'
      LookupResultField = 'Station.ZIP'
      KeyFields = 'Terminalid'
      Visible = False
      Lookup = True
    end
    object qryTerminalLStationCity: TStringField
      FieldKind = fkLookup
      FieldName = 'LStationCity'
      LookupDataSet = qryMST
      LookupKeyFields = 'Terminal.Terminalid'
      LookupResultField = 'Station.City'
      KeyFields = 'TERMINALID'
      Visible = False
      Lookup = True
    end
    object qryTerminalLMerchantDoy: TStringField
      FieldKind = fkLookup
      FieldName = 'LMerchantDoy'
      LookupDataSet = qryMST
      LookupKeyFields = 'Terminal.Terminalid'
      LookupResultField = 'Merchant.DOY'
      KeyFields = 'Terminalid'
      Visible = False
      Lookup = True
    end
    object qryTerminalLMerchantAFM: TStringField
      FieldKind = fkLookup
      FieldName = 'LMerchantAFM'
      LookupDataSet = qryMST
      LookupKeyFields = 'Terminal.Terminalid'
      LookupResultField = 'Merchant.AFM'
      KeyFields = 'Terminalid'
      Visible = False
      Lookup = True
    end
    object qryTerminalLStationTel: TStringField
      FieldKind = fkLookup
      FieldName = 'LStationTel'
      LookupDataSet = qryMST
      LookupKeyFields = 'Terminal.Terminalid'
      LookupResultField = 'LStationTel'
      KeyFields = 'Terminalid'
      Visible = False
      Lookup = True
    end
  end
  object qryMST: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM V_MST_OUTER')
    Left = 488
    object qryMSTMerchantName: TWideStringField
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object qryMSTStationStationId: TIntegerField
      FieldName = 'Station.StationId'
    end
    object qryMSTMerchantMerchantId: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object qryMSTStationStreet: TWideStringField
      FieldName = 'Station.Street'
      Size = 50
    end
    object qryMSTStationCity: TWideStringField
      FieldName = 'Station.City'
      Size = 50
    end
    object qryMSTTerminalTerminalid: TIntegerField
      FieldName = 'Terminal.Terminalid'
    end
    object qryMSTTerminalidTerminalCode: TWideStringField
      FieldName = 'Terminalid.TerminalCode'
    end
    object qryMSTStationName: TWideStringField
      FieldName = 'Station.Name'
      Size = 100
    end
    object qryMSTMerchantSAPCode: TWideStringField
      FieldName = 'Merchant.SAPCode'
      Size = 10
    end
    object qryMSTMerchantInActive: TBooleanField
      FieldName = 'Merchant.InActive'
    end
    object qryMSTMerchantDeleted: TBooleanField
      FieldName = 'Merchant.Deleted'
    end
    object qryMSTMerchantIsTest: TBooleanField
      FieldName = 'Merchant.IsTest'
    end
    object qryMSTMerchantStopSales: TBooleanField
      FieldName = 'Merchant.StopSales'
    end
    object qryMSTStationDeleted: TBooleanField
      FieldName = 'Station.Deleted'
    end
    object qryMSTStationInActive: TBooleanField
      FieldName = 'Station.InActive'
    end
    object qryMSTStationStopSales: TBooleanField
      FieldName = 'Station.StopSales'
    end
    object qryMSTMerchantMerchantCode: TWideStringField
      FieldName = 'Merchant.MerchantCode'
      Size = 50
    end
    object qryMSTStationZIP: TWideStringField
      FieldName = 'Station.ZIP'
      Size = 50
    end
    object qryMSTMerchantAFM: TWideStringField
      FieldName = 'Merchant.AFM'
      Size = 15
    end
    object qryMSTMerchantDOY: TWideStringField
      FieldName = 'Merchant.DOY'
      Size = 50
    end
    object qryMSTLStationTel: TStringField
      FieldKind = fkLookup
      FieldName = 'LStationTel'
      LookupDataSet = qryVStationContacts
      LookupKeyFields = 'Stationid'
      LookupResultField = 'Phone'
      KeyFields = 'Station.StationId'
      Lookup = True
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actCancel
          end
          item
            Action = actOK
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 40
    Top = 16
    StyleName = 'Platform Default'
  end
  object DataSource1: TDataSource
    DataSet = qryTerminal
    Left = 288
    Top = 8
  end
  object scExcelExport1: TscExcelExport
    DataPipe = dpDataSet
    Dataset = qryTerminal
    StyleColumnWidth = cwDefault
    ColumnWidth = 0
    FontHeader.Charset = DEFAULT_CHARSET
    FontHeader.Color = clWindowText
    FontHeader.Height = 1
    FontHeader.Name = 'Tahoma'
    FontHeader.Orientation = 0
    FontHeader.Style = []
    FontHeader.Alignment = haGeneral
    FontHeader.WrapText = False
    BorderHeader.BackAlternateColor = clBlack
    MergeHeaderCells = True
    FontTitles.Charset = DEFAULT_CHARSET
    FontTitles.Color = clWindowText
    FontTitles.Height = 1
    FontTitles.Name = 'Tahoma'
    FontTitles.Orientation = 0
    FontTitles.Style = []
    FontTitles.Alignment = haGeneral
    FontTitles.WrapText = False
    BorderTitles.BackAlternateColor = clBlack
    AutoFilter = False
    FontData.Charset = DEFAULT_CHARSET
    FontData.Color = clWindowText
    FontData.Height = 1
    FontData.Name = 'Tahoma'
    FontData.Orientation = 0
    FontData.Style = []
    FontData.Alignment = haGeneral
    FontData.WrapText = False
    FontSummary.Charset = DEFAULT_CHARSET
    FontSummary.Color = clWindowText
    FontSummary.Height = 1
    FontSummary.Name = 'Tahoma'
    FontSummary.Orientation = 0
    FontSummary.Style = []
    FontSummary.Alignment = haGeneral
    FontSummary.WrapText = False
    BorderSummary.BackAlternateColor = clBlack
    SummarySelection = ssNone
    SummaryCalculation = scSUM
    FontFooter.Charset = DEFAULT_CHARSET
    FontFooter.Color = clWindowText
    FontFooter.Height = 1
    FontFooter.Name = 'Tahoma'
    FontFooter.Orientation = 0
    FontFooter.Style = []
    FontFooter.Alignment = haGeneral
    FontFooter.WrapText = False
    BorderFooter.BackAlternateColor = clBlack
    MergeFooterCells = True
    FontGroup.Charset = DEFAULT_CHARSET
    FontGroup.Color = clWindowText
    FontGroup.Height = 1
    FontGroup.Name = 'Tahoma'
    FontGroup.Orientation = 0
    FontGroup.Style = []
    FontGroup.Alignment = haGeneral
    FontGroup.WrapText = False
    BorderGroup.BackAlternateColor = clBlack
    GroupOptions.ClearContents = True
    GroupOptions.BorderRange = bsRow
    GroupOptions.IntervalFontSize = 2
    Left = 208
    Top = 56
  end
  object qryVStationContacts: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM VStation_Contacts')
    Left = 376
    Top = 64
    object qryVStationContactsContactType_Procedure: TWideStringField
      FieldName = 'ContactType_Procedure'
      Size = 50
    end
    object qryVStationContactsContactsName: TWideStringField
      FieldName = 'Contacts.Name'
      Size = 50
    end
    object qryVStationContactsContactsSurname: TWideStringField
      FieldName = 'Contacts.Surname'
      Size = 50
    end
    object qryVStationContactsemail: TWideStringField
      FieldName = 'email'
      Size = 80
    end
    object qryVStationContactsPhone: TWideStringField
      FieldName = 'Phone'
      Size = 45
    end
    object qryVStationContactsFax: TWideStringField
      FieldName = 'Fax'
      Size = 45
    end
    object qryVStationContactsMobile: TWideStringField
      FieldName = 'Mobile'
      Size = 45
    end
    object qryVStationContactsSendMail: TBooleanField
      FieldName = 'SendMail'
    end
    object qryVStationContactsSendFax: TBooleanField
      FieldName = 'SendFax'
    end
    object qryVStationContactsSendPrint: TBooleanField
      FieldName = 'SendPrint'
    end
    object qryVStationContactsMain: TBooleanField
      FieldName = 'Main'
    end
    object qryVStationContactsAA: TIntegerField
      FieldName = 'AA'
    end
    object qryVStationContactsStationid: TIntegerField
      FieldName = 'Stationid'
    end
    object qryVStationContactsStationName: TWideStringField
      FieldName = 'Station.Name'
      Size = 100
    end
  end
end
