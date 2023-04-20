inherited frmPrnStationCallendarPro: TfrmPrnStationCallendarPro
  Left = 331
  Top = 202
  Caption = #917#960#953#954#959#953#957#969#957#943#945' '#928#961#945#964#951#961#943#969#957
  ClientHeight = 550
  ClientWidth = 732
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 740
  ExplicitHeight = 577
  PixelsPerInch = 96
  TextHeight = 13
  object dxPageControl1: TcxPageControl [0]
    Left = 0
    Top = 23
    Width = 732
    Height = 527
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabDataPage
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 527
    ClientRectRight = 732
    ClientRectTop = 24
    object tabDataPage: TcxTabSheet
      Caption = #931#964#959#953#967#949#943#945
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 0
        Top = 265
        Width = 732
        Height = 48
        Align = alTop
        TabOrder = 0
        Visible = False
        object CheckBox1: TCheckBox
          Left = 32
          Top = 15
          Width = 97
          Height = 17
          Caption = 'OK'
          TabOrder = 0
        end
        object CheckBox2: TCheckBox
          Left = 160
          Top = 15
          Width = 97
          Height = 17
          Caption = #935#969#961#943#962' '#922#953#957#942#963#949#953#962
          TabOrder = 1
        end
        object CheckBox3: TCheckBox
          Left = 336
          Top = 15
          Width = 97
          Height = 17
          Caption = #935#969#961#943#962' '#917#960#953#954#959#953#957#969#957#943#945
          TabOrder = 2
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 732
        Height = 225
        Align = alTop
        TabOrder = 1
        object lbl3: TLabel
          Left = 0
          Top = 43
          Width = 71
          Height = 13
          Caption = 'Merchant '#922#969#948'.'
        end
        object lbl4: TLabel
          Left = 0
          Top = 62
          Width = 69
          Height = 13
          Caption = 'Merchant SAP'
        end
        object Label2: TLabel
          Left = 3
          Top = 8
          Width = 45
          Height = 13
          Caption = 'Merchant'
        end
        object Label4: TLabel
          Left = 3
          Top = 115
          Width = 47
          Height = 13
          Caption = #928#961#945#964#942#961#953#959
        end
        object Label5: TLabel
          Left = 3
          Top = 196
          Width = 52
          Height = 13
          Caption = 'Terminal Id'
        end
        object Label3: TLabel
          Left = 3
          Top = 142
          Width = 70
          Height = 13
          Caption = #928#961#945#964#942#961#953#959' '#922#969#948
        end
        object cblc14: TcxDBLookupComboBox
          Left = 96
          Top = 5
          DataBinding.DataField = 'FrMerchantName'
          DataBinding.DataSource = dtsWS
          Properties.Alignment.Horz = taLeftJustify
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'Name'
          Properties.ListColumns = <
            item
              FieldName = 'Name'
            end>
          Properties.ListSource = DMPrnStatCall.dtsMerchant
          TabOrder = 0
          Width = 250
        end
        object cblc10: TcxDBLookupComboBox
          Left = 96
          Top = 32
          DataBinding.DataField = 'FrMerchantId'
          DataBinding.DataSource = dtsWS
          Properties.Alignment.Horz = taLeftJustify
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'MerchantId'
          Properties.ListColumns = <
            item
              SortOrder = soAscending
              FieldName = 'MerchantId'
            end
            item
              FieldName = 'Name'
            end>
          Properties.ListSource = DMPrnStatCall.dtsMerchant
          TabOrder = 1
          Width = 145
        end
        object cblc12: TcxDBLookupComboBox
          Left = 96
          Top = 59
          DataBinding.DataField = 'FrMerchantSap'
          DataBinding.DataSource = dtsWS
          Properties.Alignment.Horz = taLeftJustify
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'SAPCode'
          Properties.ListColumns = <
            item
              SortOrder = soAscending
              FieldName = 'SAPCode'
            end
            item
              FieldName = 'Name'
            end>
          Properties.ListSource = DMPrnStatCall.dtsMerchant
          TabOrder = 2
          Width = 145
        end
        object cblc13: TcxDBLookupComboBox
          Left = 384
          Top = 59
          DataBinding.DataField = 'ToMerchantSap'
          DataBinding.DataSource = dtsWS
          Properties.Alignment.Horz = taLeftJustify
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'SAPCode'
          Properties.ListColumns = <
            item
              SortOrder = soAscending
              FieldName = 'SAPCode'
            end
            item
              FieldName = 'Name'
            end>
          Properties.ListSource = DMPrnStatCall.dtsMerchant
          TabOrder = 3
          Width = 145
        end
        object cblc11: TcxDBLookupComboBox
          Left = 384
          Top = 32
          DataBinding.DataField = 'ToMerchantId'
          DataBinding.DataSource = dtsWS
          Properties.Alignment.Horz = taLeftJustify
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'MerchantId'
          Properties.ListColumns = <
            item
              FieldName = 'MerchantId'
            end
            item
              FieldName = 'Name'
            end>
          Properties.ListSource = DMPrnStatCall.dtsMerchant
          TabOrder = 4
          Width = 145
        end
        object cblc17: TcxDBLookupComboBox
          Left = 384
          Top = 5
          DataBinding.DataField = 'ToMerchantName'
          DataBinding.DataSource = dtsWS
          Properties.Alignment.Horz = taLeftJustify
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'Name'
          Properties.ListColumns = <
            item
              FieldName = 'Name'
            end>
          Properties.ListSource = DMPrnStatCall.dtsMerchant
          TabOrder = 5
          Width = 250
        end
        object cblc15: TcxDBLookupComboBox
          Left = 96
          Top = 112
          DataBinding.DataField = 'FrStationName'
          DataBinding.DataSource = dtsWS
          Properties.Alignment.Horz = taLeftJustify
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'Name'
          Properties.ListColumns = <
            item
              FieldName = 'Name'
            end>
          Properties.ListSource = DMPrnStatCall.dtsStation
          TabOrder = 6
          Width = 250
        end
        object cblc18: TcxDBLookupComboBox
          Left = 384
          Top = 112
          DataBinding.DataField = 'ToStationName'
          DataBinding.DataSource = dtsWS
          Properties.Alignment.Horz = taLeftJustify
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'Name'
          Properties.ListColumns = <
            item
              FieldName = 'Name'
            end>
          Properties.ListSource = DMPrnStatCall.dtsStation
          TabOrder = 7
          Width = 250
        end
        object cblc16: TcxDBLookupComboBox
          Left = 96
          Top = 193
          DataBinding.DataField = 'FrTerminalId'
          DataBinding.DataSource = dtsWS
          Properties.Alignment.Horz = taLeftJustify
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'Terminalid'
          Properties.ListColumns = <
            item
              FieldName = 'TerminalCode'
            end>
          Properties.ListSource = DMPrnStatCall.dtsTerminal
          TabOrder = 8
          Width = 145
        end
        object cblc19: TcxDBLookupComboBox
          Left = 384
          Top = 193
          DataBinding.DataField = 'ToTerminalId'
          DataBinding.DataSource = dtsWS
          Properties.Alignment.Horz = taLeftJustify
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'Terminalid'
          Properties.ListColumns = <
            item
              FieldName = 'TerminalCode'
            end>
          Properties.ListSource = DMPrnStatCall.dtsTerminal
          TabOrder = 9
          Width = 145
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 96
          Top = 139
          DataBinding.DataField = 'FrStationId'
          DataBinding.DataSource = dtsWS
          Properties.Alignment.Horz = taLeftJustify
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'Stationid'
          Properties.ListColumns = <
            item
              FieldName = 'Stationid'
            end>
          Properties.ListSource = DMPrnStatCall.dtsStation
          TabOrder = 10
          Width = 121
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 384
          Top = 139
          DataBinding.DataField = 'ToStationId'
          DataBinding.DataSource = dtsWS
          Properties.Alignment.Horz = taLeftJustify
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'Stationid'
          Properties.ListColumns = <
            item
              FieldName = 'Stationid'
            end>
          Properties.ListSource = DMPrnStatCall.dtsStation
          TabOrder = 11
          Width = 121
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 225
        Width = 732
        Height = 40
        Align = alTop
        TabOrder = 2
        object Label1: TLabel
          Left = 24
          Top = 12
          Width = 34
          Height = 13
          Caption = #919#956'/'#957#943#945
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 96
          Top = 8
          DataBinding.DataField = 'FrDate'
          DataBinding.DataSource = dtsWS
          TabOrder = 0
          Width = 121
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 384
          Top = 6
          DataBinding.DataField = 'ToDate'
          DataBinding.DataSource = dtsWS
          TabOrder = 1
          Width = 121
        end
      end
    end
  end
  object ActionToolBar1: TActionToolBar [1]
    Left = 0
    Top = 0
    Width = 732
    Height = 23
    ActionManager = dxBarManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  inherited popFilter: TPopupMenu
    Left = 628
    Top = 11
  end
  inherited ActionMainList: TActionList
    Left = 560
    Top = 8
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 376
    Top = 8
    object actCancel: TAction
      Caption = #913#954#973#961#969#963#951
      OnExecute = actCancelExecute
    end
    object actOK: TAction
      Caption = #913#960#959#948#959#967#942
      OnExecute = actOKExecute
    end
    object actClearAll: TAction
      Caption = #913#954#973#961#969#963#951' '#972#955#969#957
    end
    object actCheckAll: TAction
      Caption = #917#960#953#955#959#947#942' '#972#955#969#957
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
      OnExecute = UpdateActionsExecute
    end
  end
  object dxBarManager1: TActionManager
    ActionBars = <
      item
      end
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
    Left = 288
    Top = 8
    StyleName = 'Platform Default'
  end
  object dtsWS: TDataSource
    DataSet = memWS
    Left = 632
    Top = 112
  end
  object qry1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From stMem2SQL'
      'Where TableId = 300')
    Left = 624
    Top = 344
    object qry1Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
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
    object qry1SqlTextIndex: TIntegerField
      FieldName = 'SqlTextIndex'
    end
  end
  object memWS: TdxMemData
    Active = True
    Indexes = <>
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
    SortOptions = []
    Left = 488
    object memWSFrDate: TDateField
      FieldName = 'FrDate'
    end
    object memWSToDate: TDateField
      FieldName = 'ToDate'
    end
    object memWSFrMerchantId: TIntegerField
      FieldName = 'FrMerchantId'
    end
    object memWSToMerchantId: TIntegerField
      FieldName = 'ToMerchantId'
    end
    object memWSFrMerchantName: TStringField
      FieldName = 'FrMerchantName'
      Size = 100
    end
    object memWSToMerchantName: TStringField
      FieldName = 'ToMerchantName'
      Size = 100
    end
    object memWSFrStationId: TIntegerField
      FieldName = 'FrStationId'
    end
    object memWSToStationId: TIntegerField
      FieldName = 'ToStationId'
    end
    object memWSFrTerminalId: TIntegerField
      FieldName = 'FrTerminalId'
    end
    object memWSToTerminalId: TIntegerField
      FieldName = 'ToTerminalId'
    end
    object memWSFrMerchantSap: TStringField
      FieldName = 'FrMerchantSap'
    end
    object memWSToMerchantSap: TStringField
      FieldName = 'ToMerchantSap'
    end
    object memWSFrStationName: TStringField
      FieldName = 'FrStationName'
      Size = 100
    end
    object memWSToStationName: TStringField
      FieldName = 'ToStationName'
      Size = 100
    end
  end
end
