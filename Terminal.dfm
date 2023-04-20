inherited frmTerminal: TfrmTerminal
  Left = 328
  Top = 127
  Caption = 'Terminal'
  ClientHeight = 478
  ClientWidth = 510
  Font.Height = -10
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 518
  ExplicitHeight = 505
  PixelsPerInch = 96
  TextHeight = 13
  object dxPageControl1: TcxPageControl [0]
    Left = 0
    Top = 23
    Width = 510
    Height = 455
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabBrowser
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 455
    ClientRectRight = 510
    ClientRectTop = 0
    object tabBrowser: TcxTabSheet
      Caption = '[Browse]'
      TabVisible = False
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 510
        Height = 455
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          PopupMenu = popFilter
          OnDblClick = cxGrid1DBTableView1DblClick
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
          DataController.DataSource = TerminalDM.dtsBrowser
          DataController.Filter.AutoDataSetFilter = True
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skCount
              FieldName = 'NAME'
              Sorted = True
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'NAME'
              Sorted = True
            end>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnFilteredItemsList = True
          FilterRow.SeparatorWidth = 15
          FilterRow.Visible = True
          FilterRow.ApplyInputDelay = 100
          OptionsBehavior.AlwaysShowEditor = True
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
          object cxGrid1DBTableView1Terminalid1: TcxGridDBColumn
            DataBinding.FieldName = 'Terminalid'
          end
          object cxGrid1DBTableView1TerminalCode1: TcxGridDBColumn
            DataBinding.FieldName = 'TerminalCode'
            Width = 87
          end
          object cxGrid1DBTableView1TerminalType1: TcxGridDBColumn
            DataBinding.FieldName = 'TerminalType'
          end
          object cxGrid1DBTableView1LTerminalType1: TcxGridDBColumn
            DataBinding.FieldName = 'LTerminalType'
          end
          object cxGrid1DBTableView1TerminalSerialNo1: TcxGridDBColumn
            DataBinding.FieldName = 'TerminalSerialNo'
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
      object Label2: TLabel
        Left = 32
        Top = 26
        Width = 52
        Height = 13
        Caption = 'Terminal Id'
        FocusControl = cxDBTextEdit1
      end
      object Label3: TLabel
        Left = 32
        Top = 81
        Width = 43
        Height = 13
        Caption = 'Serial No'
        FocusControl = cxDBTextEdit2
      end
      object Label4: TLabel
        Left = 32
        Top = 108
        Width = 87
        Height = 13
        Caption = #917#943#948#959#962' '#932#949#961#956#945#964#953#954#959#973
      end
      object Label1: TLabel
        Left = 32
        Top = 54
        Width = 68
        Height = 13
        Caption = 'Terminal Code'
        FocusControl = cxDBTextEdit1
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 140
        Top = 51
        DataBinding.DataField = 'TERMINALCODE'
        DataBinding.DataSource = TerminalDM.dtsTERMINAL
        TabOrder = 0
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 140
        Top = 78
        DataBinding.DataField = 'TERMINALSERIALNO'
        DataBinding.DataSource = TerminalDM.dtsTERMINAL
        TabOrder = 1
        Width = 121
      end
      object cxDBLabel1: TcxDBLabel
        Left = 140
        Top = 24
        DataBinding.DataField = 'Terminalid'
        DataBinding.DataSource = TerminalDM.dtsTERMINAL
        Properties.LabelEffect = cxleFun
        Properties.LabelStyle = cxlsOutLine
        Height = 21
        Width = 65
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 140
        Top = 105
        DataBinding.DataField = 'TerminalType'
        DataBinding.DataSource = TerminalDM.dtsTERMINAL
        Properties.KeyFieldNames = 'TerminalTypeId'
        Properties.ListColumns = <
          item
            FieldName = 'TerminalType_Name'
          end>
        Properties.ListSource = TerminalDM.dtsTerminalType
        TabOrder = 3
        OnDblClick = cxDbLCDblClick
        Width = 145
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 208
        Width = 510
        Height = 247
        Align = alBottom
        TabOrder = 4
        LookAndFeel.Kind = lfUltraFlat
        object cxGridDBTableView1: TcxGridDBTableView
          PopupMenu = popFilter
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
          Navigator.Visible = True
          DataController.DataSource = CustomerDM.dtsBrowser
          DataController.DetailKeyFieldNames = 'Id'
          DataController.Filter.AutoDataSetFilter = True
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoInsertOnNewItemRowFocusing]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnFilteredItemsList = True
          OptionsBehavior.AlwaysShowEditor = True
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsSelection.CellSelect = False
          OptionsView.Footer = True
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfAlwaysVisible
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Id'
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'CustomerId'
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'CustomerAA'
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'CCName'
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'CCNameFull'
          end
          object cxGridDBColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'InsUsr'
          end
          object cxGridDBColumn7: TcxGridDBColumn
            DataBinding.FieldName = 'InsDT'
          end
          object cxGridDBColumn8: TcxGridDBColumn
            DataBinding.FieldName = 'UpdUsr'
          end
          object cxGridDBColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'UpdDT'
          end
          object cxGridDBColumn10: TcxGridDBColumn
            DataBinding.FieldName = 'Deleted'
          end
          object cxGridDBColumn11: TcxGridDBColumn
            DataBinding.FieldName = 'DelUsr'
          end
          object cxGridDBColumn12: TcxGridDBColumn
            DataBinding.FieldName = 'DelDT'
          end
          object cxGridDBColumn13: TcxGridDBColumn
            DataBinding.FieldName = 'InActive'
          end
          object cxGridDBColumn14: TcxGridDBColumn
            DataBinding.FieldName = 'InActiveUsr'
          end
          object cxGridDBColumn15: TcxGridDBColumn
            DataBinding.FieldName = 'InActiveDt'
          end
        end
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Visible = False
          DataController.DataSource = TerminalDM.dtsStation_Terminal
          DataController.KeyFieldNames = 'StationTerminalId'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnFilteredItemsList = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnHiding = True
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Appending = True
          OptionsData.CancelOnExit = False
          OptionsView.Footer = True
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfAlwaysVisible
          object cxGridDBTableView2StationTerminalId1: TcxGridDBColumn
            DataBinding.FieldName = 'StationTerminalId'
            Visible = False
          end
          object cxGridDBTableView2Terminalid1: TcxGridDBColumn
            DataBinding.FieldName = 'Terminalid'
            Visible = False
          end
          object cxGridDBTableView2StartDate1: TcxGridDBColumn
            DataBinding.FieldName = 'StartDate'
            Visible = False
          end
          object cxGridDBTableView2StationId1: TcxGridDBColumn
            Caption = #922'.'#928#961#945#964#942#961#953#959
            DataBinding.FieldName = 'StationId'
          end
          object cxGridDBTableView2LStation1: TcxGridDBColumn
            Caption = #928#961#945#964#942#961#953#959
            DataBinding.FieldName = 'LStation'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
      object cxDBCBDeleted: TcxDBCheckBox
        Left = 32
        Top = 132
        TabStop = False
        Caption = #915#953#945' '#917#957#951#956'.'#916#951#956#953#959#965#961#947#943#945#962
        DataBinding.DataField = 'CreateBoolean'
        DataBinding.DataSource = TerminalDM.dtsTERMINAL
        Properties.Alignment = taRightJustify
        Properties.AllowGrayed = True
        TabOrder = 5
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 32
        Top = 159
        TabStop = False
        Caption = #931#949' '#913#957#945#956#959#957#942' '#917#947#954#945#964#940#963#964'.'
        DataBinding.DataField = 'Pending'
        DataBinding.DataSource = TerminalDM.dtsTERMINAL
        Properties.Alignment = taRightJustify
        Properties.AllowGrayed = True
        TabOrder = 6
      end
    end
  end
  object ActionToolBar1: TActionToolBar [1]
    Left = 0
    Top = 0
    Width = 510
    Height = 23
    ActionManager = ActionManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  inherited popFilter: TPopupMenu
    Left = 436
    Top = 35
  end
  inherited ActionMainList: TActionList
    Left = 464
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 378
    Top = 96
    object actClose: TAction
      Category = 'Browse'
      Caption = #917#960#953#963#964#961#959#966#942
      OnExecute = actCloseExecute
    end
    object actInsert: TAction
      Category = 'Browse'
      Caption = #917#953#963#945#947#969#947#942
      OnExecute = actInsertExecute
    end
    object actUpdate: TAction
      Category = 'Browse'
      Caption = #924#949#964#945#946#959#955#942
      OnExecute = actUpdateExecute
    end
    object actDelete: TAction
      Category = 'Browse'
      Caption = #916#953#945#947#961#945#966#942
      OnExecute = actDeleteExecute
    end
    object actOK: TAction
      Category = 'UPD'
      Caption = #913#960#959#948#959#967#942
      OnExecute = actOKExecute
    end
    object actCancel: TAction
      Category = 'UPD'
      Caption = #913#954#973#961#969#963#951
      OnExecute = actCancelExecute
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
      OnExecute = UpdateActionsExecute
    end
    object actGridPrint: TAction
      Caption = #917#954#964'.Grid'
    end
    object actDisplay: TAction
      Category = 'Browse'
      Caption = #917#956#966#940#957#953#963#951
      ShortCut = 123
      OnExecute = actDisplayExecute
    end
    object actNext: TAction
      Tag = 9100
      Caption = 'actNext'
      ShortCut = 16424
      OnExecute = actNextExecute
    end
    object actPrev: TAction
      Tag = 9100
      Caption = 'actPrev'
      ShortCut = 16422
      OnExecute = actPrevExecute
    end
    object actFirst: TAction
      Tag = 9100
      Caption = 'actFirst'
      ShortCut = 16420
      OnExecute = actFirstExecute
    end
    object actLast: TAction
      Tag = 9100
      Caption = 'actLast'
      ShortCut = 16419
      OnExecute = actLastExecute
    end
    object actStat: TAction
      Category = 'Browse'
      Caption = #931#964#945#964#953#963#964#953#954#940
      OnExecute = actStatExecute
    end
    object actMaxTerminal: TAction
      Category = 'Browse'
      Caption = 'Max Terminal'
      OnExecute = actMaxTerminalExecute
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actDisplay
            ShortCut = 123
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
            Action = actStat
          end
          item
            Action = actCancel
          end
          item
            Action = actOK
          end
          item
            Action = actMaxTerminal
            Caption = '&Max Terminal'
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 378
    Top = 40
    StyleName = 'Platform Default'
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 386
    Top = 152
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = cxGrid1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  object memWS: TdxMemData
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
    Left = 464
    Top = 144
    object memWSComponentName: TStringField
      FieldName = 'ComponentName'
    end
    object memWSComponentValueInt: TIntegerField
      FieldName = 'ComponentValueInt'
    end
    object memWSComponentValueDT: TDateTimeField
      FieldName = 'ComponentValueDT'
    end
  end
end
