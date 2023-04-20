inherited frmEnhmTranPrologue: TfrmEnhmTranPrologue
  Left = 299
  Top = 108
  Caption = #917#957#951#956#941#961#969#963#951' '#931#965#963#964#951#956#940#964#969#957
  ClientHeight = 722
  ClientWidth = 465
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 473
  ExplicitHeight = 749
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 23
    Width = 465
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
      DataBinding.DataSource = dsmemWS
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
      DataBinding.DataSource = dsmemWS
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
      DataBinding.DataSource = dsmemWS
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
      DataBinding.DataSource = dsmemWS
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
      DataBinding.DataSource = dsmemWS
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
      DataBinding.DataSource = dsmemWS
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Width = 121
    end
  end
  object Panel5: TPanel [1]
    Left = 0
    Top = 110
    Width = 465
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
    object RgStatus: TDBRadioGroup
      Left = 8
      Top = 6
      Width = 449
      Height = 35
      Hint = #913#965#964#972#956#945#964#951' '#942' Manual '
      Caption = 'Status'
      Columns = 3
      DataField = 'RgManualAuto'
      DataSource = dsmemWS
      Items.Strings = (
        #935#949#953#961#959#954#943#957#951#964#949#962
        'A'#965#964#972#956#945#964#949#962
        #908#955#949#962)
      ParentBackground = True
      TabOrder = 0
      Values.Strings = (
        '0'
        '1'
        '-1')
    end
    object REnhmSt: TDBRadioGroup
      Left = 8
      Top = 150
      Width = 137
      Height = 67
      Caption = #917#957#951#956#941#961#969#963#951' '#928#961#945#964#951#961#943#969#957
      DataField = 'RgEnhmPrat'
      DataSource = dsmemWS
      Items.Strings = (
        #925#945#943
        #908#967#953
        #927#955#949#962)
      ParentBackground = True
      TabOrder = 1
      Values.Strings = (
        '1'
        '0'
        '-1')
      OnClick = RDailyEnhmClick
      OnExit = RDailyEnhmClick
    end
    object REnhmCust: TDBRadioGroup
      Left = 8
      Top = 222
      Width = 137
      Height = 67
      Caption = #917#957#951#956#941#961#969#963#951' '#928#949#955#945#964#974#957
      DataField = 'RgEnhmPela'
      DataSource = dsmemWS
      Items.Strings = (
        #925#945#943
        #908#967#953
        #927#955#949#962)
      ParentBackground = True
      TabOrder = 2
      Values.Strings = (
        '1'
        '0'
        '-1')
      OnClick = RDailyEnhmClick
      OnExit = RDailyEnhmClick
    end
    object FEnhmSt: TcxDBLookupComboBox
      Left = 153
      Top = 168
      DataBinding.DataField = 'FrEnhmPrat'
      DataBinding.DataSource = dsmemWS
      Enabled = False
      Properties.KeyFieldNames = 'ENSCALLID'
      Properties.ListColumns = <
        item
          FieldName = 'ENSCALLDATE'
        end>
      Properties.ListSource = DMEnhmTrans.dtsENHMSTCALL
      TabOrder = 3
      OnKeyDown = FGenKeyDown
      Width = 145
    end
    object TEnhmSt: TcxDBLookupComboBox
      Left = 304
      Top = 168
      DataBinding.DataField = 'ToEnhmPrat'
      DataBinding.DataSource = dsmemWS
      Enabled = False
      Properties.KeyFieldNames = 'ENSCALLID'
      Properties.ListColumns = <
        item
          FieldName = 'ENSCALLDATE'
        end>
      Properties.ListSource = DMEnhmTrans.dtsENHMSTCALL
      TabOrder = 4
      OnKeyDown = FGenKeyDown
      Width = 145
    end
    object TEnhmCust: TcxDBLookupComboBox
      Left = 304
      Top = 232
      DataBinding.DataField = 'ToEnhmPela'
      DataBinding.DataSource = dsmemWS
      Enabled = False
      Properties.KeyFieldNames = 'ENPCALLID'
      Properties.ListColumns = <
        item
          FieldName = 'ENPCALLDATE'
        end>
      Properties.ListSource = DMEnhmTrans.dtsEnhmPeCall
      TabOrder = 5
      OnKeyDown = FGenKeyDown
      Width = 145
    end
    object FEnhmCust: TcxDBLookupComboBox
      Left = 152
      Top = 232
      DataBinding.DataField = 'FrEnhmPela'
      DataBinding.DataSource = dsmemWS
      Enabled = False
      Properties.KeyFieldNames = 'ENPCALLID'
      Properties.ListColumns = <
        item
          FieldName = 'ENPCALLDATE'
        end>
      Properties.ListSource = DMEnhmTrans.dtsEnhmPeCall
      TabOrder = 6
      OnKeyDown = FGenKeyDown
      Width = 145
    end
    object dblcBtTrF: TcxDBLookupComboBox
      Left = 144
      Top = 480
      DataBinding.DataField = 'FrBatch'
      DataBinding.DataSource = dsmemWS
      Properties.KeyFieldNames = 'TRCALLID'
      Properties.ListColumns = <
        item
          FieldName = 'TRCALLDATE'
        end>
      Properties.ListSource = DMEnhmTrans.dtsTrCallDate
      TabOrder = 7
      OnKeyDown = FGenKeyDown
      Width = 145
    end
    object dblcBtTrT: TcxDBLookupComboBox
      Left = 304
      Top = 480
      DataBinding.DataField = 'ToBatch'
      DataBinding.DataSource = dsmemWS
      Properties.KeyFieldNames = 'TRCALLID'
      Properties.ListColumns = <
        item
          FieldName = 'TRCALLDATE'
        end>
      Properties.ListSource = DMEnhmTrans.dtsTrCallDate
      TabOrder = 8
      OnKeyDown = FGenKeyDown
      Width = 145
    end
    object rgCustomerTest: TDBRadioGroup
      Left = 3
      Top = 518
      Width = 449
      Height = 35
      Hint = #913#965#964#972#956#945#964#951' '#942' Manual '
      Caption = 'Status '#928#949#955#945#964#974#957
      Columns = 3
      DataField = 'RgPelaStatus'
      DataSource = dsmemWS
      Items.Strings = (
        'Test'
        'Real'
        #908#955#945)
      ParentBackground = True
      TabOrder = 9
      Values.Strings = (
        '1'
        '0'
        '-1')
    end
    object rgStationTest: TDBRadioGroup
      Left = 3
      Top = 566
      Width = 449
      Height = 35
      Hint = #913#965#964#972#956#945#964#951' '#942' Manual '
      Caption = 'Status '#928#961#945#964#951#961#943#969#957
      Columns = 3
      DataField = 'RgPratStatus'
      DataSource = dsmemWS
      Items.Strings = (
        'Test'
        'Real'
        #908#955#945)
      ParentBackground = True
      TabOrder = 10
      Values.Strings = (
        '1'
        '0'
        '-1')
    end
    object REnhmDiscount: TDBRadioGroup
      Left = 9
      Top = 382
      Width = 137
      Height = 67
      Caption = #917#957#951#956'.'#917#954#960#964#974#963#951#962
      DataField = 'RgEnhmDisc'
      DataSource = dsmemWS
      Items.Strings = (
        #925#945#943
        #908#967#953
        #927#955#949#962)
      ParentBackground = True
      TabOrder = 11
      Values.Strings = (
        '1'
        '0'
        '-1')
      OnClick = RDailyEnhmClick
      OnExit = RDailyEnhmClick
    end
    object FEnhmDiscount: TcxDBLookupComboBox
      Left = 152
      Top = 392
      DataBinding.DataField = 'FrEnhmDisc'
      DataBinding.DataSource = dsmemWS
      Enabled = False
      Properties.KeyFieldNames = 'ENHMDISCALLID'
      Properties.ListColumns = <
        item
          FieldName = 'ENHMDISCALLDATE'
        end>
      Properties.ListSource = DMEnhmTrans.dtsENHMDISCALL
      TabOrder = 12
      OnKeyDown = FGenKeyDown
      Width = 145
    end
    object TEnhmDiscount: TcxDBLookupComboBox
      Left = 304
      Top = 392
      DataBinding.DataField = 'ToEnhmDisc'
      DataBinding.DataSource = dsmemWS
      Enabled = False
      Properties.KeyFieldNames = 'ENHMDISCALLID'
      Properties.ListColumns = <
        item
          FieldName = 'ENHMDISCALLDATE'
        end>
      Properties.ListSource = DMEnhmTrans.dtsENHMDISCALL
      TabOrder = 13
      OnKeyDown = FGenKeyDown
      Width = 145
    end
    object REnhmParak: TDBRadioGroup
      Left = 8
      Top = 294
      Width = 137
      Height = 67
      Caption = #917#957#951#956'.'#928#945#961#945#954#961#940#964#951#963#951#962
      DataField = 'RgEnhmParak'
      DataSource = dsmemWS
      Items.Strings = (
        #925#945#943
        #908#967#953
        #927#955#949#962)
      ParentBackground = True
      TabOrder = 14
      Values.Strings = (
        '1'
        '0'
        '-1')
      OnClick = RDailyEnhmClick
      OnExit = RDailyEnhmClick
    end
    object TEnhmParak: TcxDBLookupComboBox
      Left = 304
      Top = 312
      DataBinding.DataField = 'ToEnhmParak'
      DataBinding.DataSource = dsmemWS
      Enabled = False
      Properties.KeyFieldNames = 'ENCCALLID'
      Properties.ListColumns = <
        item
          FieldName = 'ENCCALLDATE'
        end>
      Properties.ListSource = DMEnhmTrans.dtsENHMCOCALL
      TabOrder = 15
      OnKeyDown = FGenKeyDown
      Width = 145
    end
    object FEnhmParak: TcxDBLookupComboBox
      Left = 152
      Top = 312
      DataBinding.DataField = 'FrEnhmParak'
      DataBinding.DataSource = dsmemWS
      Enabled = False
      Properties.KeyFieldNames = 'ENCCALLID'
      Properties.ListColumns = <
        item
          FieldName = 'ENCCALLDATE'
        end>
      Properties.ListSource = DMEnhmTrans.dtsENHMCOCALL
      TabOrder = 16
      OnKeyDown = FGenKeyDown
      Width = 145
    end
    object RDailyEnhm: TDBRadioGroup
      Left = 8
      Top = 62
      Width = 137
      Height = 67
      Caption = #919#956#949#961#942#963#953#945' '#917#957#951#956#941#961#969#963#951
      DataField = 'RgEnhmDaily'
      DataSource = dsmemWS
      Items.Strings = (
        #925#945#943
        #908#967#953
        #927#955#949#962)
      ParentBackground = True
      TabOrder = 17
      Values.Strings = (
        '1'
        '0'
        '-1')
      OnClick = RDailyEnhmClick
      OnExit = RDailyEnhmClick
    end
    object FDailyEnhm: TcxDBLookupComboBox
      Left = 152
      Top = 72
      DataBinding.DataField = 'FrEnhmDaily'
      DataBinding.DataSource = dsmemWS
      Enabled = False
      Properties.KeyFieldNames = 'ENDLCALLID'
      Properties.ListColumns = <
        item
          MinWidth = 150
          Sorting = False
          FieldName = 'ENDLCALLDATETRY'
        end
        item
          MinWidth = 0
          SortOrder = soDescending
          FieldName = 'ENDLCALLDATE'
        end>
      Properties.ListSource = DMEnhmTrans.dtsEnhmDlCall
      TabOrder = 18
      OnKeyDown = FGenKeyDown
      Width = 145
    end
    object TDailyEnhm: TcxDBLookupComboBox
      Left = 303
      Top = 72
      DataBinding.DataField = 'ToEnhmDaily'
      DataBinding.DataSource = dsmemWS
      Enabled = False
      Properties.KeyFieldNames = 'ENDLCALLID'
      Properties.ListColumns = <
        item
          MinWidth = 150
          Sorting = False
          FieldName = 'ENDLCALLDATETRY'
        end
        item
          MinWidth = 0
          SortOrder = soDescending
          FieldName = 'ENDLCALLDATE'
        end>
      Properties.ListSource = DMEnhmTrans.dtsEnhmDlCall
      TabOrder = 19
      OnKeyDown = FGenKeyDown
      Width = 145
    end
  end
  object ActionMainMenuBar1: TActionMainMenuBar [2]
    Left = 0
    Top = 0
    Width = 465
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
  inherited popFilter: TPopupMenu
    Left = 228
    Top = 11
  end
  inherited ActionMainList: TActionList
    Left = 376
    Top = 224
    inherited actDispAllActions: TAction
      ShortCut = 8315
    end
  end
  inherited memWS: TdxMemData
    Active = True
    Persistent.Data = {
      5665728FC2F5285C8FFE3F240000000400000009000700467244617465000400
      000009000700546F44617465001000000001000C0046724143617264436F6465
      001000000001000C00546F4143617264436F6465000400000003000C00467253
      746174696F6E4964000400000003000C00546F53746174696F6E496400040000
      0003000D0046724D65726368616E744964000400000003000D00546F4D657263
      68616E744964000A00000001000E0046724D65726368616E74536170000A0000
      0001000E00546F4D65726368616E74536170000A00000001000E004672437573
      746F6D6572536170001400000001000E00546F437573746F6D65725361700032
      00000001000B004672437573746F6D6572003200000001000B00546F43757374
      6F6D6572000400000003000D0046725465726D696E616C496400040000000300
      0D00546F5465726D696E616C496400080000000B000A00467244617465496E73
      00080000000B000A00546F44617465496E73000400000003000F004672437573
      746F6D6572436F6465000400000003000F00546F437573746F6D6572436F6465
      0004000000090009004672446174655374000400000009000900546F44617465
      5374000400000003000400446566000400000003000400446574000400000003
      000900456E686D50656C46000400000003000900456E686D50656C5400040000
      0003000900456E686D436F6D46000400000003000900456E686D436F6D540004
      00000003000A00456E686D4469736346000400000003000A00456E686D446973
      6354000400000003000A00456E686D5374617446000400000003000A00456E68
      6D53746174540004000000030007004261746368460004000000030007004261
      74636854000200000005000B00456E686D4461696C7947000200000005000A00
      456E686D50656C614700}
    Left = 368
    Top = 112
    object memWSFrDate: TDateField
      FieldName = 'FrDate'
    end
    object memWSToDate: TDateField
      FieldName = 'ToDate'
    end
    object memWSFrDateIns: TDateTimeField
      FieldName = 'FrDateIns'
    end
    object memWSToDateIns: TDateTimeField
      FieldName = 'ToDateIns'
    end
    object memWSRgEnhmDaily: TIntegerField
      FieldName = 'RgEnhmDaily'
    end
    object memWSFrEnhmDaily: TIntegerField
      FieldName = 'FrEnhmDaily'
    end
    object memWSToEnhmDaily: TIntegerField
      FieldName = 'ToEnhmDaily'
    end
    object memWSRgEnhmPela: TIntegerField
      FieldName = 'RgEnhmPela'
    end
    object memWSFrEnhmPela: TIntegerField
      FieldName = 'FrEnhmPela'
    end
    object memWSToEnhmPela: TIntegerField
      FieldName = 'ToEnhmPela'
    end
    object memWSRgEnhmPrat: TIntegerField
      FieldName = 'RgEnhmPrat'
    end
    object memWSFrEnhmPrat: TIntegerField
      FieldName = 'FrEnhmPrat'
    end
    object memWSToEnhmPrat: TIntegerField
      FieldName = 'ToEnhmPrat'
    end
    object memWSRgEnhmParak: TIntegerField
      FieldName = 'RgEnhmParak'
    end
    object memWSFrEnhmParak: TIntegerField
      FieldName = 'FrEnhmParak'
    end
    object memWSToEnhmParak: TIntegerField
      FieldName = 'ToEnhmParak'
    end
    object memWSRgEnhmDisc: TIntegerField
      FieldName = 'RgEnhmDisc'
    end
    object memWSFrEnhmDisc: TIntegerField
      FieldName = 'FrEnhmDisc'
    end
    object memWSToEnhmDisc: TIntegerField
      FieldName = 'ToEnhmDisc'
    end
    object memWSFrBatch: TIntegerField
      FieldName = 'FrBatch'
    end
    object memWSToBatch: TIntegerField
      FieldName = 'ToBatch'
    end
    object memWSRgManualAuto: TIntegerField
      FieldName = 'RgManualAuto'
    end
    object memWSRgPelaStatus: TIntegerField
      FieldName = 'RgPelaStatus'
    end
    object memWSRgPratStatus: TIntegerField
      FieldName = 'RgPratStatus'
    end
  end
  inherited dsmemWS: TDataSource
    Left = 200
    Top = 168
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
          end
          item
            Action = actClearMemWs
            Caption = '&Clear'
          end
          item
            Action = actSaveVariants
            Caption = #925#941#945' &Variant'
          end
          item
            Action = actLoadVariants
            Caption = #913#957#940#954#955#951#963#951' V&ariant'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end
      item
        ActionList = ActionMainList
        Caption = 'ActionMainList'
      end>
    Left = 240
    Top = 64
    StyleName = 'Platform Default'
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 280
    Top = 8
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
  object qry1: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From stMem2SQL'
      'Where TableId = 200')
    Left = 272
    Top = 224
    object qry1Id: TAutoIncField
      FieldName = 'Id'
    end
    object qry1TableId: TIntegerField
      FieldName = 'TableId'
    end
    object qry1FieldName: TWideStringField
      FieldName = 'FieldName'
      Size = 100
    end
    object qry1SqlName: TWideStringField
      FieldName = 'SqlName'
      Size = 100
    end
    object qry1SqlGroup: TIntegerField
      FieldName = 'SqlGroup'
    end
    object qry1AliasSql: TWideStringField
      FieldName = 'AliasSql'
      Size = 100
    end
    object qry1SQLVar: TBooleanField
      FieldName = 'SQLVar'
    end
    object qry1TreatAs: TIntegerField
      FieldName = 'TreatAs'
    end
  end
end
