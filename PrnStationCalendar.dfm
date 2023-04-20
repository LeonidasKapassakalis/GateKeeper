object frmPrnStationCalendar: TfrmPrnStationCalendar
  Left = 241
  Top = 107
  BorderIcons = [biSystemMenu]
  Caption = #919#956#949#961#959#955#972#947#953#959' '#917#960#953#954#959#953#957#969#957#943#945#962' '#932#949#961#956#945#964#953#954#974#957
  ClientHeight = 513
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ActionToolBar1: TActionToolBar
    Left = 0
    Top = 0
    Width = 775
    Height = 23
    ActionManager = dxBarManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 23
    Width = 775
    Height = 490
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      PopupMenu = FrmPrnBase.popFilter
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
      DataController.DataModeController.DetailInSQLMode = True
      DataController.DataSource = dtsStation
      DataController.DetailKeyFieldNames = 'TrCallDStationID'
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
      object cxGrid1DBTableView1TerminalidTerminalCode: TcxGridDBColumn
        DataBinding.FieldName = 'Terminalid.TerminalCode'
      end
      object cxGrid1DBTableView1StationName: TcxGridDBColumn
        DataBinding.FieldName = 'Station.Name'
      end
      object cxGrid1DBTableView1MerchantName: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.Name'
      end
      object cxGrid1DBTableView1MerchantSAPCode: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.SAPCode'
      end
      object cxGrid1DBTableView1TerminalTerminalid: TcxGridDBColumn
        DataBinding.FieldName = 'Terminal.Terminalid'
      end
      object cxGrid1DBTableView1StationStationId: TcxGridDBColumn
        DataBinding.FieldName = 'Station.StationId'
      end
      object cxGrid1DBTableView1MerchantMerchantId: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.MerchantId'
      end
      object cxGrid1DBTableView1MerchantInActive: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.InActive'
      end
      object cxGrid1DBTableView1MerchantDeleted: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.Deleted'
      end
      object cxGrid1DBTableView1MerchantIsTest: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.IsTest'
      end
      object cxGrid1DBTableView1MerchantStopSales: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.StopSales'
      end
      object cxGrid1DBTableView1StationDeleted: TcxGridDBColumn
        DataBinding.FieldName = 'Station.Deleted'
      end
      object cxGrid1DBTableView1StationInActive: TcxGridDBColumn
        DataBinding.FieldName = 'Station.InActive'
      end
      object cxGrid1DBTableView1StationStopSales: TcxGridDBColumn
        DataBinding.FieldName = 'Station.StopSales'
      end
      object cxGrid1DBTableView1MerchantMerchantCode: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.MerchantCode'
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
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
      DataController.DataModeController.DetailInSQLMode = True
      DataController.DataSource = dtsTrCallDet
      DataController.DetailKeyFieldNames = 'TRCALLDSTATIONID'
      DataController.Filter.IgnoreOrigin = False
      DataController.MasterKeyFieldNames = 'Station.StationId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.BestFitMaxRecordCount = 10
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
      OptionsView.Indicator = True
      object cxGrid1DBTableView2TRCALLDDATE: TcxGridDBColumn
        DataBinding.FieldName = 'TRCALLDDATE'
      end
      object cxGrid1DBTableView2TRCALLDSTATIONID: TcxGridDBColumn
        DataBinding.FieldName = 'TRCALLDSTATIONID'
        Visible = False
      end
      object cxGrid1DBTableView2TRCALLDSTATUS: TcxGridDBColumn
        DataBinding.FieldName = 'TRCALLDSTATUS'
        Visible = False
      end
      object cxGrid1DBTableView2LStatus: TcxGridDBColumn
        DataBinding.FieldName = 'LStatus'
      end
    end
    object cxGrid1DBTableView3: TcxGridDBTableView
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
      DataController.DataSource = dtsTrCallDet
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.BestFitMaxRecordCount = 10
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
      OptionsView.Indicator = True
      object cxGrid1DBTableView3TRCALLDDATE: TcxGridDBColumn
        DataBinding.FieldName = 'TRCALLDDATE'
      end
      object cxGrid1DBTableView3TRCALLDSTATIONID: TcxGridDBColumn
        DataBinding.FieldName = 'TRCALLDSTATIONID'
      end
      object cxGrid1DBTableView3TRCALLDSTATUS: TcxGridDBColumn
        DataBinding.FieldName = 'TRCALLDSTATUS'
      end
      object cxGrid1DBTableView3LStatus: TcxGridDBColumn
        DataBinding.FieldName = 'LStatus'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
      object cxGrid1Level2: TcxGridLevel
        GridView = cxGrid1DBTableView2
      end
    end
  end
  object dxBarManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actClose
          end
          item
            Action = actPreview
          end
          item
            Action = actPrint0
          end
          item
            Action = actPrint1
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 600
    Top = 160
    StyleName = 'Platform Default'
  end
  object ActionList1: TActionList
    Left = 560
    Top = 112
    object actClose: TAction
      Caption = #917#960#953#963#964#961#959#966#942
      OnExecute = actCloseExecute
    end
    object actPreview: TAction
      Caption = #917#954#964#973#960#969#963#951
      OnExecute = actPreviewExecute
    end
    object actPrint0: TAction
      Caption = #913#957#940' '#928#961#945#964#942#961#953#959
      OnExecute = actPrint0Execute
    end
    object actPrint1: TAction
      Caption = #913#957#940' '#919#956#949#961#959#956#951#957#943#945
      OnExecute = actPrint1Execute
    end
  end
  object qryStation: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryStationCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM V_MST_OUTER')
    Left = 264
    Top = 136
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
    object qryStationTrCallDStationID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TrCallDStationID'
      Calculated = True
    end
  end
  object dtsStation: TDataSource
    AutoEdit = False
    DataSet = qryStation
    Left = 264
    Top = 208
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PrintTitle = 'AvinCard - '#931#964#945#952#956#959#943
    Version = 0
    Left = 136
    Top = 64
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = cxGrid1
      PageNumberFormat = pnfNumeral
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
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
  object qryTrCallDet: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTrCallDetCalcFields
    Parameters = <
      item
        Name = 'TrCallDStationID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM TRCALLDET'
      'WHERE TrCallDStationID = :TrCallDStationID '
      '')
    Left = 344
    Top = 136
    object qryTrCallDetTRCALLDDATE: TDateTimeField
      DisplayLabel = #919#956#949#961#959#956#951#957#943#945
      FieldName = 'TRCALLDDATE'
    end
    object qryTrCallDetTRCALLDSTATIONID: TIntegerField
      FieldName = 'TRCALLDSTATIONID'
    end
    object qryTrCallDetTRCALLDSTATUS: TIntegerField
      FieldName = 'TRCALLDSTATUS'
    end
    object qryTrCallDetLStatus: TStringField
      DisplayLabel = #922#945#964#940#963#964#945#963#951
      FieldKind = fkCalculated
      FieldName = 'LStatus'
      Calculated = True
    end
  end
  object dtsTrCallDet: TDataSource
    AutoEdit = False
    DataSet = qryTrCallDet
    Left = 344
    Top = 216
  end
end
