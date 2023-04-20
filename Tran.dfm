inherited frmTran: TfrmTran
  Left = 463
  Top = 271
  BorderIcons = [biMinimize, biMaximize]
  Caption = #922#953#957#942#963#949#953#962
  ClientHeight = 456
  ClientWidth = 678
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 686
  ExplicitHeight = 483
  PixelsPerInch = 96
  TextHeight = 13
  object dxPageControl1: TcxPageControl [0]
    Left = 0
    Top = 23
    Width = 678
    Height = 433
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tabBrowser
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 433
    ClientRectRight = 678
    ClientRectTop = 0
    object tabBrowser: TcxTabSheet
      Caption = '[Browser]'
      TabVisible = False
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 678
        Height = 433
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          PopupMenu = popFilter
          OnDblClick = actMainDispExecute
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          DataController.DataSource = TranDM.dtsBrowser
          DataController.DetailKeyFieldNames = 'TRANID'
          DataController.Filter.AutoDataSetFilter = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnFilteredItemsList = True
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.Footer = True
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfAlwaysVisible
          object cxGrid1DBTableView1TRANID: TcxGridDBColumn
            DataBinding.FieldName = 'TRANID'
            Width = 43
          end
          object cxGrid1DBTableView1TRANDATE: TcxGridDBColumn
            DataBinding.FieldName = 'TRANDATE'
            Width = 63
          end
          object cxGrid1DBTableView1TRANTIME: TcxGridDBColumn
            DataBinding.FieldName = 'TRANTIME'
            Width = 55
          end
          object cxGrid1DBTableView1LMerchant: TcxGridDBColumn
            DataBinding.FieldName = 'LMerchant'
            Width = 67
          end
          object cxGrid1DBTableView1MERCHANTID: TcxGridDBColumn
            DataBinding.FieldName = 'MERCHANTID'
            Visible = False
          end
          object cxGrid1DBTableView1LStation: TcxGridDBColumn
            DataBinding.FieldName = 'LStation'
            Width = 65
          end
          object cxGrid1DBTableView1STATIONID: TcxGridDBColumn
            DataBinding.FieldName = 'STATIONID'
            Visible = False
          end
          object cxGrid1DBTableView1LTerminal: TcxGridDBColumn
            DataBinding.FieldName = 'LTerminal'
            Width = 74
          end
          object cxGrid1DBTableView1TERMINALID: TcxGridDBColumn
            DataBinding.FieldName = 'TERMINALID'
            Visible = False
          end
          object cxGrid1DBTableView1LCustomer: TcxGridDBColumn
            Caption = #928#949#955#940#964#951#962
            DataBinding.FieldName = 'LCustomer'
          end
          object cxGrid1DBTableView1ACARDID: TcxGridDBColumn
            DataBinding.FieldName = 'ACARDID'
            Visible = False
          end
          object cxGrid1DBTableView1LSitem: TcxGridDBColumn
            DataBinding.FieldName = 'LSitem'
          end
          object cxGrid1DBTableView1SITEMID: TcxGridDBColumn
            DataBinding.FieldName = 'SITEMID'
            Visible = False
          end
          object cxGrid1DBTableView1AMOUNT: TcxGridDBColumn
            DataBinding.FieldName = 'AMOUNT'
          end
          object cxGrid1DBTableView1QUANTITY: TcxGridDBColumn
            DataBinding.FieldName = 'QUANTITY'
          end
          object cxGrid1DBTableView1REFSTR: TcxGridDBColumn
            DataBinding.FieldName = 'REFSTR'
          end
          object cxGrid1DBTableView1ISAUTO: TcxGridDBColumn
            DataBinding.FieldName = 'ISAUTO'
          end
          object cxGrid1DBTableView1ISVOID: TcxGridDBColumn
            DataBinding.FieldName = 'ISVOID'
          end
          object cxGrid1DBTableView1BATCHNO: TcxGridDBColumn
            DataBinding.FieldName = 'BATCHNO'
          end
          object cxGrid1DBTableView1UNITPRICE: TcxGridDBColumn
            DataBinding.FieldName = 'UNITPRICE'
          end
          object cxGrid1DBTableView1ISTYPED: TcxGridDBColumn
            DataBinding.FieldName = 'ISTYPED'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object tabData: TcxTabSheet
      Caption = '[Data]'
      TabVisible = False
      object Label1: TLabel
        Left = 40
        Top = 12
        Width = 34
        Height = 13
        Caption = #919#956'/'#957#943#945
      end
      object Label2: TLabel
        Left = 42
        Top = 36
        Width = 32
        Height = 13
        Caption = #922#940#961#964#945
      end
      object Label3: TLabel
        Left = 27
        Top = 60
        Width = 45
        Height = 13
        Caption = 'Merchant'
      end
      object Label4: TLabel
        Left = 48
        Top = 180
        Width = 26
        Height = 13
        Caption = #928#959#963#972
      end
      object Label5: TLabel
        Left = 32
        Top = 228
        Width = 42
        Height = 13
        Caption = #935#955#956' '#960#961#953#957
      end
      object Label6: TLabel
        Left = 28
        Top = 252
        Width = 46
        Height = 13
        Caption = #935#955#956' '#956#949#964#940
      end
      object Label7: TLabel
        Left = 40
        Top = 128
        Width = 35
        Height = 13
        Caption = #928#961#959#970#972#957
      end
      object Label8: TLabel
        Left = 24
        Top = 152
        Width = 51
        Height = 13
        Caption = #928#959#963#972#964#951#964#945
      end
      object Label9: TLabel
        Left = 7
        Top = 200
        Width = 67
        Height = 13
        Caption = #913#961'.'#945#960#972#948#949#953#958#951#962
      end
      object dbtxtMerchantId: TDBText
        Left = 248
        Top = 304
        Width = 65
        Height = 17
        DataField = 'MerchantId'
        DataSource = TranDM.dtsStation
        Visible = False
      end
      object dbtxtMerchantId1: TDBText
        Left = 248
        Top = 327
        Width = 65
        Height = 17
        DataField = 'StationId'
        DataSource = TranDM.dtsTerminal
        Visible = False
      end
      object lbl1: TLabel
        Left = 27
        Top = 84
        Width = 47
        Height = 13
        Caption = #928#961#945#964#942#961#953#959
      end
      object lbl2: TLabel
        Left = 27
        Top = 108
        Width = 51
        Height = 13
        Caption = #932#949#961#956#945#964#953#954#972
      end
      object dbtxtStationId: TDBText
        Left = 248
        Top = 179
        Width = 65
        Height = 17
        DataField = 'UNITPRICE'
        DataSource = TranDM.dtsTran
      end
      object DBText1: TDBText
        Left = 328
        Top = 35
        Width = 42
        Height = 13
        AutoSize = True
        DataField = 'LCustomer'
        DataSource = TranDM.dtsTran
      end
      object dxDBDateEdit1: TcxDBDateEdit
        Left = 96
        Top = 8
        DataBinding.DataField = 'TRANDATE'
        DataBinding.DataSource = TranDM.dtsTran
        TabOrder = 0
        Width = 121
      end
      object dxDBEdit1: TcxDBTextEdit
        Left = 96
        Top = 296
        DataBinding.DataField = 'ACARDCODE'
        DataBinding.DataSource = TranDM.dtsACard
        TabOrder = 11
        Visible = False
        OnExit = dxDBEdit1Exit
        Width = 121
      end
      object dxDBEdit2: TcxDBTextEdit
        Left = 96
        Top = 320
        DataBinding.DataField = 'NAME'
        DataBinding.DataSource = TranDM.dtsStation
        TabOrder = 12
        Visible = False
        OnExit = dxDBEdit2Exit
        Width = 121
      end
      object dxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 96
        Top = 176
        DataBinding.DataField = 'AMOUNT'
        DataBinding.DataSource = TranDM.dtsTran
        Properties.ReadOnly = False
        TabOrder = 7
        OnExit = dxDBCurrencyEdit1Exit
        Width = 121
      end
      object dxDBEdit3: TcxDBTextEdit
        Left = 96
        Top = 224
        DataBinding.DataField = 'KMBEFORE'
        DataBinding.DataSource = TranDM.dtsTran
        TabOrder = 9
        Width = 121
      end
      object dxDBEdit4: TcxDBTextEdit
        Left = 96
        Top = 248
        DataBinding.DataField = 'KMAFTER'
        DataBinding.DataSource = TranDM.dtsTran
        TabOrder = 10
        Width = 121
      end
      object dxDBCurrencyEdit2: TcxDBCurrencyEdit
        Left = 96
        Top = 152
        DataBinding.DataField = 'QUANTITY'
        DataBinding.DataSource = TranDM.dtsTran
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ',0.0000;-,0.0000'
        TabOrder = 6
        Width = 121
      end
      object dxDBLookupEdit1: TcxDBLookupComboBox
        Left = 96
        Top = 128
        DataBinding.DataField = 'SITEMDESCR'
        DataBinding.DataSource = TranDM.dtsTran
        Properties.KeyFieldNames = 'SITEMID'
        Properties.ListColumns = <
          item
            FieldName = 'DESCR'
          end>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 5
        OnDblClick = cxDbLCDblClick
        Width = 121
      end
      object dxDBEdit5: TcxDBTextEdit
        Left = 96
        Top = 200
        DataBinding.DataField = 'REFSTR'
        DataBinding.DataSource = TranDM.dtsTran
        TabOrder = 8
        Width = 121
      end
      object cblcAcard: TcxDBLookupComboBox
        Left = 96
        Top = 32
        DataBinding.DataField = 'ACARDID'
        DataBinding.DataSource = TranDM.dtsTran
        Properties.Alignment.Horz = taLeftJustify
        Properties.GridMode = True
        Properties.KeyFieldNames = 'ACARDID'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'AcardCodeFull000'
          end>
        Properties.ListOptions.AnsiSort = True
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = TranDM.dsACardAll
        TabOrder = 1
        OnExit = cblcAcardExit
        OnKeyDown = cblcKeyDown
        Width = 177
      end
      object cblcMerchant: TcxDBLookupComboBox
        Left = 96
        Top = 56
        DataBinding.DataField = 'MERCHANTID'
        DataBinding.DataSource = TranDM.dtsTran
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'MerchantId'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'Name'
          end>
        Properties.ListOptions.AnsiSort = True
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = TranDM.dtsMerchant
        TabOrder = 2
        OnKeyDown = cblcKeyDown
        Width = 313
      end
      object cblcTerminal: TcxDBLookupComboBox
        Left = 96
        Top = 104
        DataBinding.DataField = 'TERMINALID'
        DataBinding.DataSource = TranDM.dtsTran
        Properties.GridMode = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'Terminalid'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'TerminalCode'
          end>
        Properties.ListOptions.AnsiSort = True
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = TranDM.dtsTerminal
        TabOrder = 4
        OnDblClick = cxDbLCDblClick
        Width = 177
      end
      object cblcStation: TcxDBLookupComboBox
        Left = 96
        Top = 80
        DataBinding.DataField = 'STATIONID'
        DataBinding.DataSource = TranDM.dtsTran
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'Stationid'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'Name'
          end>
        Properties.ListOptions.AnsiSort = True
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = TranDM.dtsStation
        TabOrder = 3
        OnDblClick = cxDbLCDblClick
        Width = 249
      end
      object cxDBLabel1: TcxDBLabel
        Left = 248
        Top = 152
        Height = 21
        Width = 121
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 424
        Top = 104
        DataBinding.DataField = 'Terminal'
        DataBinding.DataSource = TranDM.DataSource1
        Properties.GridMode = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'Terminal.Terminalid'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'Terminalid.TerminalCode'
          end>
        Properties.ListOptions.AnsiSort = True
        Properties.ListOptions.ShowHeader = False
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = TranDM.dtsVMST
        TabOrder = 14
        Visible = False
        OnDblClick = cxDBLookupComboBox1DblClick
        Width = 177
      end
    end
  end
  object ActionToolBar1: TActionToolBar [1]
    Left = 0
    Top = 0
    Width = 678
    Height = 23
    ActionManager = actmgr1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  inherited popFilter: TPopupMenu
    Left = 580
    Top = 43
  end
  inherited ActionMainList: TActionList
    Left = 576
    Top = 208
    object act1: TAction
      Category = 'Browse'
      Caption = #922#961#953#964#942#961#953#945
      OnExecute = act1Execute
    end
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 616
    Top = 176
    object actClose: TAction
      Category = 'Browse'
      Caption = #917#960#953#963#964#961#959#966#942
      OnExecute = actCloseExecute
      OnUpdate = UpdateBrowserToolBar
    end
    object actInsert: TAction
      Category = 'Browse'
      Caption = #917#953#963#945#947#969#947#942
      OnExecute = actInsertExecute
      OnUpdate = UpdateBrowserToolBar
    end
    object actUpdate: TAction
      Category = 'Browse'
      Caption = #924#949#964#945#946#959#955#942
      OnExecute = actUpdateExecute
      OnUpdate = UpdateBrowserToolBar
    end
    object actDelete: TAction
      Category = 'Browse'
      Caption = #916#953#945#947#961#945#966#942
      OnExecute = actDeleteExecute
      OnUpdate = UpdateBrowserToolBar
    end
    object actCancel: TAction
      Category = 'UPD'
      Caption = #913#954#973#961#969#963#951
      OnExecute = actCancelExecute
      OnUpdate = UpdateDataToolBar
    end
    object actOK: TAction
      Category = 'UPD'
      Caption = #913#960#959#948#959#967#942
      OnExecute = actOKExecute
      OnUpdate = UpdateDataToolBar
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
      OnExecute = UpdateActionsExecute
      OnUpdate = UpdateBrowserToolBar
    end
    object actSelectCriteria: TAction
      Caption = #922#961#953#964#942#961#953#945
      OnExecute = actSelectCriteriaExecute
      OnUpdate = UpdateBrowserToolBar
    end
    object actDisp0: TAction
      Category = 'Browse'
      Caption = #917#956#966#940#957#953#963#951
      OnExecute = actMainDispExecute
      OnUpdate = UpdateBrowserToolBar
    end
    object actFindFromTermId: TAction
      Category = 'UPD'
      Caption = #917#973#961#949#963#951' '#956#949' Terminal Id'
      OnExecute = actFindFromTermIdExecute
    end
  end
  object actmgr1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actClose
          end
          item
            Action = actInsert
          end
          item
            Action = actUpdate
          end
          item
            Action = actDelete
          end
          item
            Action = actDisp0
          end
          item
            Action = actCancel
          end
          item
            Action = actOK
          end
          item
            Action = actFindFromTermId
            Caption = #917#973#961#949#963#951' '#956#949' &Terminal Id'
          end>
        ActionBar = ActionToolBar1
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
    Left = 576
    Top = 272
    StyleName = 'Platform Default'
  end
end
