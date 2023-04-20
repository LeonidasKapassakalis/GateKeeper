inherited frmEnhmTranPrologue: TfrmEnhmTranPrologue
  Left = 299
  Top = 108
  Caption = #917#957#951#956#941#961#969#963#951' '#931#965#963#964#951#956#940#964#969#957
  ClientHeight = 722
  ClientWidth = 466
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 474
  ExplicitHeight = 749
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 23
    Width = 466
    Height = 87
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 34
      Height = 13
      Caption = #919#956'/'#957#943#945
    end
    object Label2: TLabel
      Left = 16
      Top = 40
      Width = 66
      Height = 13
      Caption = #919#956'/'#957#943#945' '#931#965#963#964'.'
    end
    object Label8: TLabel
      Left = 16
      Top = 64
      Width = 54
      Height = 13
      Caption = #937#961#945' '#931#965#963#964'.'
    end
    object dxDBDateEdit1: TcxDBDateEdit
      Left = 88
      Top = 8
      Hint = #913#960#972' '#919#956#949#961#959#956#951#957#943#945
      DataBinding.DataField = 'FrDate'
      DataBinding.DataSource = dtsWS
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Width = 121
    end
    object dxDBDateEdit2: TcxDBDateEdit
      Left = 304
      Top = 32
      Hint = #904#969#962' '#919#956#949#961#959#956#951#957#943#945' '#931#965#963#964#942#956#945#964#959#962
      DataBinding.DataField = 'ToDateIns'
      DataBinding.DataSource = dtsWS
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Width = 121
    end
    object dxDBDateEdit3: TcxDBDateEdit
      Left = 88
      Top = 32
      Hint = #913#960#972' '#919#956#949#961#959#956#951#957#943#945' '#931#965#963#964#942#956#945#964#959#962
      DataBinding.DataField = 'FrDateIns'
      DataBinding.DataSource = dtsWS
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Width = 121
    end
    object dxDBDateEdit4: TcxDBDateEdit
      Left = 304
      Top = 8
      Hint = #917#969#962' '#919#956#949#961#959#956#951#957#943#945
      DataBinding.DataField = 'ToDate'
      DataBinding.DataSource = dtsWS
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Width = 121
    end
    object dxDBTimeEdit1: TcxDBTimeEdit
      Left = 88
      Top = 56
      Hint = #913#960#972' '#937#961#945' '#931#965#963#964#942#956#945#964#959#962
      DataBinding.DataField = 'FrDateIns'
      DataBinding.DataSource = dtsWS
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Width = 121
    end
    object dxDBTimeEdit2: TcxDBTimeEdit
      Left = 304
      Top = 56
      Hint = #904#969#962' '#937#961#945' '#931#965#963#964#942#956#945#964#959#962
      DataBinding.DataField = 'ToDateIns'
      DataBinding.DataSource = dtsWS
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Width = 121
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 110
    Width = 466
    Height = 612
    Align = alClient
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 488
      Width = 45
      Height = 13
      Caption = 'Batch No'
    end
    object RgStatus: TRadioGroup
      Left = 8
      Top = 6
      Width = 449
      Height = 35
      Hint = #913#965#964#972#956#945#964#951' '#942' Manual '
      Caption = 'Status'
      Columns = 3
      Items.Strings = (
        #935#949#953#961#959#954#943#957#951#964#949#962
        'A'#965#964#972#956#945#964#949#962
        #908#955#949#962)
      TabOrder = 0
    end
    object RgEnhmSt: TRadioGroup
      Left = 8
      Top = 150
      Width = 137
      Height = 67
      Caption = #917#957#951#956#941#961#969#963#951' '#928#961#945#964#951#961#943#969#957
      Items.Strings = (
        #925#945#943
        #908#967#953
        #927#955#949#962)
      TabOrder = 1
      OnClick = RgEnhmStExit
      OnExit = RgEnhmStExit
    end
    object RgEnhmCust: TRadioGroup
      Left = 8
      Top = 222
      Width = 137
      Height = 67
      Caption = #917#957#951#956#941#961#969#963#951' '#928#949#955#945#964#974#957
      Items.Strings = (
        #925#945#943
        #908#967#953
        #927#955#949#962)
      TabOrder = 2
      OnClick = RgEnhmCustExit
      OnExit = RgEnhmCustExit
    end
    object dblcStF: TDBLookupComboBox
      Left = 153
      Top = 168
      Width = 145
      Height = 21
      DataField = 'StF'
      DataSource = dtsWS
      Enabled = False
      KeyField = 'ENSCALLID'
      ListField = 'ENSCALLDATE'
      ListSource = GeneralDM.dsEnhmSTCall
      NullValueKey = 27
      TabOrder = 3
    end
    object dblcStT: TDBLookupComboBox
      Left = 304
      Top = 168
      Width = 145
      Height = 21
      DataField = 'StT'
      DataSource = dtsWS
      Enabled = False
      KeyField = 'ENSCALLID'
      ListField = 'ENSCALLDATE'
      ListSource = GeneralDM.dsEnhmSTCall
      NullValueKey = 27
      TabOrder = 4
    end
    object dblcPET: TDBLookupComboBox
      Left = 304
      Top = 232
      Width = 145
      Height = 21
      DataField = 'Pet'
      DataSource = dtsWS
      Enabled = False
      KeyField = 'ENPCALLID'
      ListField = 'ENPCALLDATE'
      ListSource = GeneralDM.dtsEnhmPECall1
      NullValueKey = 27
      TabOrder = 5
    end
    object dblcPEF: TDBLookupComboBox
      Left = 152
      Top = 232
      Width = 145
      Height = 21
      DataField = 'Pef'
      DataSource = dtsWS
      Enabled = False
      KeyField = 'ENPCALLID'
      ListField = 'ENPCALLDATE'
      ListSource = GeneralDM.dtsEnhmPECall1
      NullValueKey = 27
      TabOrder = 6
    end
    object dblcBtTrF: TDBLookupComboBox
      Left = 144
      Top = 480
      Width = 145
      Height = 21
      DataField = 'BatF'
      DataSource = dtsWS
      KeyField = 'TRCALLID'
      ListField = 'TRCALLDATE'
      ListSource = GeneralDM.dtslTrCall
      NullValueKey = 27
      TabOrder = 7
    end
    object dblcBtTrT: TDBLookupComboBox
      Left = 304
      Top = 480
      Width = 145
      Height = 21
      DataField = 'BatT'
      DataSource = dtsWS
      KeyField = 'TRCALLID'
      ListField = 'TRCALLDATE'
      ListSource = GeneralDM.dtslTrCall
      NullValueKey = 27
      TabOrder = 8
    end
    object rgCustomerTest: TRadioGroup
      Left = 3
      Top = 518
      Width = 449
      Height = 35
      Hint = #913#965#964#972#956#945#964#951' '#942' Manual '
      Caption = 'Status '#928#949#955#945#964#974#957
      Columns = 3
      Items.Strings = (
        'Test'
        'Real'
        #908#955#945)
      TabOrder = 9
    end
    object rgStationTest: TRadioGroup
      Left = 3
      Top = 566
      Width = 449
      Height = 35
      Hint = #913#965#964#972#956#945#964#951' '#942' Manual '
      Caption = 'Status '#928#961#945#964#951#961#943#969#957
      Columns = 3
      Items.Strings = (
        'Test'
        'Real'
        #908#955#945)
      TabOrder = 10
    end
    object rgEnhmDiscount: TRadioGroup
      Left = 8
      Top = 382
      Width = 137
      Height = 67
      Caption = #917#957#951#956'.'#917#954#960#964#974#963#951#962
      Items.Strings = (
        #925#945#943
        #908#967#953
        #927#955#949#962)
      TabOrder = 11
      OnClick = rgEnhmDiscountExit
      OnExit = rgEnhmDiscountExit
    end
    object dblcDisF: TDBLookupComboBox
      Left = 152
      Top = 392
      Width = 145
      Height = 21
      DataField = 'DisF'
      DataSource = dtsWS
      Enabled = False
      KeyField = 'ENHMDISCALLID'
      ListField = 'ENHMDISCALLDATE'
      ListSource = GeneralDM.dsEnhmDisCall
      NullValueKey = 27
      TabOrder = 12
    end
    object dblcDisT: TDBLookupComboBox
      Left = 304
      Top = 392
      Width = 145
      Height = 21
      DataField = 'DisT'
      DataSource = dtsWS
      Enabled = False
      KeyField = 'ENHMDISCALLID'
      ListField = 'ENHMDISCALLDATE'
      ListSource = GeneralDM.dsEnhmDisCall
      NullValueKey = 27
      TabOrder = 13
    end
    object rgEnhmParak: TRadioGroup
      Left = 8
      Top = 294
      Width = 137
      Height = 67
      Caption = #917#957#951#956'.'#928#945#961#945#954#961#940#964#951#963#951#962
      Items.Strings = (
        #925#945#943
        #908#967#953
        #927#955#949#962)
      TabOrder = 14
      OnClick = rgEnhmParakExit
      OnExit = rgEnhmParakExit
    end
    object dblcCoT: TDBLookupComboBox
      Left = 304
      Top = 312
      Width = 145
      Height = 21
      DataField = 'Cot'
      DataSource = dtsWS
      Enabled = False
      KeyField = 'ENCCALLID'
      ListField = 'ENCCALLDATE'
      ListSource = GeneralDM.dsEnhmCOCall
      NullValueKey = 27
      TabOrder = 15
    end
    object dblcCoF: TDBLookupComboBox
      Left = 152
      Top = 312
      Width = 145
      Height = 21
      DataField = 'Cof'
      DataSource = dtsWS
      Enabled = False
      KeyField = 'ENCCALLID'
      ListField = 'ENCCALLDATE'
      ListSource = GeneralDM.dsEnhmCOCall
      NullValueKey = 27
      TabOrder = 16
    end
    object rgDailyEnhm: TRadioGroup
      Left = 8
      Top = 62
      Width = 137
      Height = 67
      Caption = #919#956#949#961#942#963#953#945' '#917#957#951#956#941#961#969#963#951
      Items.Strings = (
        #925#945#943
        #908#967#953
        #927#955#949#962)
      TabOrder = 17
      OnClick = rgDailyEnhmExit
      OnExit = rgDailyEnhmExit
    end
    object dblcDEF: TDBLookupComboBox
      Left = 152
      Top = 72
      Width = 145
      Height = 21
      DataField = 'Def'
      DataSource = dtsWS
      Enabled = False
      KeyField = 'ENDLCALLID'
      ListField = 'DispEnhmDL'
      ListSource = GeneralDM.dsEnhmDLCall
      NullValueKey = 27
      TabOrder = 18
    end
    object dblcDET: TDBLookupComboBox
      Left = 304
      Top = 72
      Width = 145
      Height = 21
      DataField = 'Det'
      DataSource = dtsWS
      Enabled = False
      KeyField = 'ENDLCALLID'
      ListField = 'DispEnhmDL'
      ListSource = GeneralDM.dsEnhmDLCall
      NullValueKey = 27
      TabOrder = 19
    end
  end
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 466
    Height = 23
    UseSystemFont = False
    ActionManager = dxBarManager1
    Caption = 'ActionMainMenuBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Spacing = 0
  end
  object dxBarManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actCancel
          end
          item
            Action = actOK
            ShortCut = 13
          end>
        ActionBar = ActionMainMenuBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 232
    Top = 56
    StyleName = 'Platform Default'
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 392
    Top = 88
    object actCancel: TAction
      Caption = #913#954#973#961#969#963#951
      OnExecute = actCancelExecute
    end
    object actOK: TAction
      Caption = #913#960#959#948#959#967#942
      ShortCut = 13
      OnExecute = actOKExecute
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
      OnExecute = UpdateActionsExecute
    end
  end
  object memWS: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 96
    Top = 16
    object memWSFrDate: TDateField
      FieldName = 'FrDate'
    end
    object memWSToDate: TDateField
      FieldName = 'ToDate'
    end
    object memWSFrACardCode: TStringField
      DisplayWidth = 16
      FieldName = 'FrACardCode'
      EditMask = '\1\4\0\5\2\89999999999;1;_'
      Size = 16
    end
    object memWSToACardCode: TStringField
      DisplayWidth = 16
      FieldName = 'ToACardCode'
      EditMask = '\1\4\0\5\2\89999999999;1;_'
      Size = 16
    end
    object memWSFrStation: TStringField
      FieldName = 'FrStation'
      Size = 50
    end
    object memWSToStation: TStringField
      FieldName = 'ToStation'
      Size = 50
    end
    object memWSFrCustomer: TStringField
      FieldName = 'FrCustomer'
      Size = 50
    end
    object memWSToCustomer: TStringField
      FieldName = 'ToCustomer'
    end
    object memWSFrTerminalId: TStringField
      FieldName = 'FrTerminalId'
    end
    object memWSToTerminalId: TStringField
      FieldName = 'ToTerminalId'
    end
    object memWSFrMerchandId: TStringField
      FieldName = 'FrMerchandId'
    end
    object memWSToMerchandId: TStringField
      FieldName = 'ToMerchandId'
    end
    object memWSFrDateIns: TDateTimeField
      FieldName = 'FrDateIns'
    end
    object memWSToDateIns: TDateTimeField
      FieldName = 'ToDateIns'
    end
    object memWSDef: TIntegerField
      FieldName = 'Def'
    end
    object memWSDet: TIntegerField
      FieldName = 'Det'
    end
    object memWSPef: TIntegerField
      FieldName = 'Pef'
    end
    object memWSPet: TIntegerField
      FieldName = 'Pet'
    end
    object memWSCof: TIntegerField
      FieldName = 'Cof'
    end
    object memWSCot: TIntegerField
      FieldName = 'Cot'
    end
    object memWSDisF: TIntegerField
      FieldName = 'DisF'
    end
    object memWSDisT: TIntegerField
      FieldName = 'DisT'
    end
    object memWSStF: TIntegerField
      FieldName = 'StF'
    end
    object memWSStT: TIntegerField
      FieldName = 'StT'
    end
    object memWSBatF: TIntegerField
      FieldName = 'BatF'
    end
    object memWSBatT: TIntegerField
      FieldName = 'BatT'
    end
  end
  object dtsWS: TDataSource
    DataSet = memWS
    Left = 160
    Top = 16
  end
end
