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
    ExplicitWidth = 444
    ExplicitHeight = 279
    ClientRectBottom = 527
    ClientRectRight = 732
    ClientRectTop = 24
    object tabDataPage: TcxTabSheet
      Caption = #931#964#959#953#967#949#943#945
      ExplicitWidth = 444
      ExplicitHeight = 255
      object Panel2: TPanel
        Left = 0
        Top = 217
        Width = 732
        Height = 40
        Align = alTop
        TabOrder = 0
        ExplicitTop = 113
        ExplicitWidth = 444
        object Label3: TLabel
          Left = 24
          Top = 12
          Width = 34
          Height = 13
          Caption = #919#956'/'#957#943#945
        end
        object dxDBDateEdit1: TcxDBDateEdit
          Left = 96
          Top = 8
          DataBinding.DataField = 'FRINSDATE'
          DataBinding.DataSource = dtsWS
          TabOrder = 0
          Width = 121
        end
        object dxDBDateEdit2: TcxDBDateEdit
          Left = 304
          Top = 8
          DataBinding.DataField = 'TOINSDATE'
          DataBinding.DataSource = dtsWS
          TabOrder = 1
          Width = 121
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 732
        Height = 217
        Align = alTop
        TabOrder = 1
        object lbl3: TLabel
          Left = 0
          Top = 40
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
          Top = 188
          Width = 52
          Height = 13
          Caption = 'Terminal Id'
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
          Properties.ListSource = DMPrnTrans.dtsMerchant
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
              FieldName = 'Name'
            end>
          Properties.ListSource = DMPrnTrans.dtsMerchant
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
              FieldName = 'Name'
            end>
          Properties.ListSource = DMPrnTrans.dtsMerchant
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
              FieldName = 'Name'
            end>
          Properties.ListSource = DMPrnTrans.dtsMerchant
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
              FieldName = 'Name'
            end>
          Properties.ListSource = DMPrnTrans.dtsMerchant
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
          Properties.ListSource = DMPrnTrans.dtsMerchant
          TabOrder = 5
          Width = 250
        end
        object cblc15: TcxDBLookupComboBox
          Left = 96
          Top = 112
          DataBinding.DataField = 'FrStationId'
          DataBinding.DataSource = dtsWS
          Properties.Alignment.Horz = taLeftJustify
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'Stationid'
          Properties.ListColumns = <
            item
              FieldName = 'Name'
            end>
          Properties.ListSource = DMPrnTrans.dtsStation
          TabOrder = 6
          Width = 145
        end
        object cblc18: TcxDBLookupComboBox
          Left = 384
          Top = 112
          DataBinding.DataField = 'toStationId'
          DataBinding.DataSource = dtsWS
          Properties.Alignment.Horz = taLeftJustify
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'Stationid'
          Properties.ListColumns = <
            item
              FieldName = 'Name'
            end>
          Properties.ListSource = DMPrnTrans.dtsStation
          TabOrder = 7
          Width = 145
        end
        object cblc16: TcxDBLookupComboBox
          Left = 96
          Top = 185
          DataBinding.DataField = 'FrTerminalId'
          DataBinding.DataSource = dtsWS
          Properties.Alignment.Horz = taLeftJustify
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'Terminalid'
          Properties.ListColumns = <
            item
              FieldName = 'TerminalCode'
            end>
          Properties.ListSource = DMPrnTrans.dtsTerminal
          TabOrder = 8
          Width = 145
        end
        object cblc19: TcxDBLookupComboBox
          Left = 384
          Top = 180
          DataBinding.DataField = 'ToTerminalId'
          DataBinding.DataSource = dtsWS
          Properties.Alignment.Horz = taLeftJustify
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'Terminalid'
          Properties.ListColumns = <
            item
              FieldName = 'TerminalCode'
            end>
          Properties.ListSource = DMPrnTrans.dtsTerminal
          TabOrder = 9
          Width = 145
        end
      end
      object CheckBox1: TCheckBox
        Left = 32
        Top = 376
        Width = 97
        Height = 17
        Caption = 'OK'
        TabOrder = 2
      end
      object CheckBox2: TCheckBox
        Left = 32
        Top = 408
        Width = 97
        Height = 17
        Caption = #935#969#961#943#962' '#922#953#957#942#963#949#953#962
        TabOrder = 3
      end
      object CheckBox3: TCheckBox
        Left = 32
        Top = 440
        Width = 97
        Height = 17
        Caption = #935#969#961#943#962' '#917#960#953#954#959#953#957#969#957#943#945
        TabOrder = 4
      end
    end
    object dxTabSheet1: TcxTabSheet
      Caption = #922#945#964#940#963#964#951#956#945
      ExplicitWidth = 444
      ExplicitHeight = 255
      object clbBranch: TCheckListBox
        Left = 0
        Top = 0
        Width = 732
        Height = 503
        Align = alClient
        ItemHeight = 13
        TabOrder = 0
        ExplicitWidth = 444
        ExplicitHeight = 255
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
    ExplicitWidth = 444
  end
  inherited popFilter: TPopupMenu
    Left = 596
    Top = 147
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 336
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
          end
          item
            Action = UpdCommandAct
            Caption = '&UpdCommandAct'
            ShortCut = 40968
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
  object memWS: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 152
    Top = 8
    object memWSFRNAME: TStringField
      FieldName = 'FRNAME'
      Size = 50
    end
    object memWSTONAME: TStringField
      FieldName = 'TONAME'
      Size = 50
    end
    object memWSFRINSDATE: TDateTimeField
      FieldName = 'FRINSDATE'
    end
    object memWSTOINSDATE: TDateTimeField
      FieldName = 'TOINSDATE'
    end
    object memWSFRCODE: TIntegerField
      FieldName = 'FRCODE'
    end
    object memWSTOCODE: TIntegerField
      FieldName = 'TOCODE'
    end
    object memWSFRMerchandID: TStringField
      FieldName = 'FRMerchandID'
    end
    object memWSTOMerchandID: TStringField
      FieldName = 'TOMerchandID'
    end
    object memWSFRStationID: TStringField
      FieldName = 'FRStationID'
    end
    object memWSTOStationID: TStringField
      FieldName = 'TOStationID'
    end
  end
  object dtsWS: TDataSource
    DataSet = memWS
    Left = 224
    Top = 8
  end
  object qry1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From stMem2SQL'
      'Where TableId = 300')
    Left = 408
    Top = 248
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
  end
end
