inherited frmBaseRep: TfrmBaseRep
  Caption = 'frmBaseRep'
  ClientHeight = 540
  ClientWidth = 844
  ExplicitWidth = 852
  ExplicitHeight = 567
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 0
    Top = 0
    Width = 844
    Height = 540
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
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
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
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
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited popFilter: TPopupMenu
    inherited Pedia: TMenuItem
      Visible = False
    end
    inherited dummyVariant: TMenuItem
      Visible = False
    end
    inherited Grid2Prn: TMenuItem
      Visible = False
    end
    object actExcel2: TMenuItem [5]
      Caption = 'Excel+'
      OnClick = actExcel2Click
    end
    object Pr1: TMenuItem
      Caption = #917#954#964#973#960#969#963#951
      OnClick = Pr1Click
    end
    object actExpand: TMenuItem
      Caption = 'Expand'
      OnClick = actExpandClick
    end
    object actCollapse: TMenuItem
      Caption = 'Collapse'
      OnClick = actCollapseClick
    end
    object actGroupBox: TMenuItem
      Caption = 'GroupBox'
      OnClick = actGroupBoxClick
    end
  end
  object qryMain: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 88
    Top = 400
  end
  object dtsMain: TDataSource
    DataSet = qryMain
    Left = 176
    Top = 400
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 320
    Top = 384
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
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
      ReportDocument.CreationDate = 42419.481834039350000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsExpanding.ExpandGroupRows = True
      OptionsFormatting.LookAndFeelKind = lfFlat
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Headers = False
      OptionsOnEveryPage.Caption = False
      OptionsPagination.TopLevelGroup = True
      OptionsSize.AutoWidth = True
      OptionsView.Footers = False
      OptionsView.Headers = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.GroupFooters = False
      BuiltInReportLink = True
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 424
    Top = 384
  end
  object VTableFieldsNames: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM VTableFieldsNamesMore'
      ''
      '')
    Left = 240
    Top = 248
    object VTableFieldsNamesTableName: TWideStringField
      FieldName = 'TableName'
      FixedChar = True
      Size = 50
    end
    object VTableFieldsNamesFieldName: TWideStringField
      FieldName = 'FieldName'
      FixedChar = True
      Size = 50
    end
    object VTableFieldsNamesTableId: TIntegerField
      FieldName = 'TableId'
    end
    object VTableFieldsNamesid: TIntegerField
      FieldName = 'id'
    end
    object VTableFieldsNamesType: TWideStringField
      FieldName = 'Type'
      FixedChar = True
    end
    object VTableFieldsNamesCheckChanges: TBooleanField
      FieldName = 'CheckChanges'
    end
    object VTableFieldsNamesFName: TWideStringField
      FieldName = 'FName'
      ReadOnly = True
      Size = 101
    end
    object VTableFieldsNamesDescription: TWideStringField
      FieldName = 'Description'
      FixedChar = True
      Size = 150
    end
    object VTableFieldsNamesLabel: TWideStringField
      FieldName = 'Label'
      FixedChar = True
      Size = 50
    end
    object VTableFieldsNamesRequired: TBooleanField
      FieldName = 'Required'
    end
    object VTableFieldsNamesGridOrder: TIntegerField
      FieldName = 'GridOrder'
    end
    object VTableFieldsNamesVisible: TBooleanField
      FieldName = 'Visible'
    end
    object VTableFieldsNamesVisibleForCust: TBooleanField
      FieldName = 'VisibleForCust'
    end
    object VTableFieldsNamesWidth: TIntegerField
      FieldName = 'Width'
    end
    object VTableFieldsNamesMinWidth: TIntegerField
      FieldName = 'MinWidth'
    end
    object VTableFieldsNamesBestFitWidth: TIntegerField
      FieldName = 'BestFitWidth'
    end
    object VTableFieldsNamesGrouping: TBooleanField
      FieldName = 'Grouping'
    end
    object VTableFieldsNamesGroupingType: TIntegerField
      FieldName = 'GroupingType'
    end
    object VTableFieldsNamesGroupingOrder: TIntegerField
      FieldName = 'GroupingOrder'
    end
    object VTableFieldsNamesExpr1: TIntegerField
      FieldName = 'Expr1'
    end
    object VTableFieldsNamesSortOrder: TIntegerField
      FieldName = 'SortOrder'
    end
    object VTableFieldsNamesSortIndes: TIntegerField
      FieldName = 'SortIndes'
    end
    object VTableFieldsNamesGroupFooters: TBooleanField
      FieldName = 'GroupFooters'
    end
  end
  object qryFieldNames: TADOQuery
    Tag = 9002
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = qryFieldNamesBeforePost
    Parameters = <>
    SQL.Strings = (
      'Select * From [FieldNames]')
    Left = 120
    Top = 248
    object qryFieldNamesid: TIntegerField
      FieldName = 'id'
    end
    object qryFieldNamesTableId: TIntegerField
      FieldName = 'TableId'
    end
    object qryFieldNamesFieldName: TWideStringField
      FieldName = 'FieldName'
      FixedChar = True
      Size = 50
    end
    object qryFieldNamesDescription: TWideStringField
      FieldName = 'Description'
      FixedChar = True
      Size = 150
    end
    object qryFieldNamesType: TWideStringField
      FieldName = 'Type'
      FixedChar = True
    end
    object qryFieldNamesCheckChanges: TBooleanField
      FieldName = 'CheckChanges'
    end
    object qryFieldNamesLabel: TWideStringField
      FieldName = 'Label'
      FixedChar = True
      Size = 50
    end
    object qryFieldNamesRequired: TBooleanField
      FieldName = 'Required'
    end
    object qryFieldNamesGridOrder: TIntegerField
      FieldName = 'GridOrder'
    end
    object qryFieldNamesVisible: TBooleanField
      FieldName = 'Visible'
    end
    object qryFieldNamesVisibleForCust: TBooleanField
      FieldName = 'VisibleForCust'
    end
    object qryFieldNamesWidth: TIntegerField
      FieldName = 'Width'
    end
    object qryFieldNamesMinWidth: TIntegerField
      FieldName = 'MinWidth'
    end
    object qryFieldNamesBestFitWidth: TIntegerField
      FieldName = 'BestFitWidth'
    end
    object qryFieldNamesGrouping: TBooleanField
      FieldName = 'Grouping'
    end
    object qryFieldNamesGroupingType: TIntegerField
      FieldName = 'GroupingType'
    end
    object qryFieldNamesGroupingOrder: TIntegerField
      FieldName = 'GroupingOrder'
    end
    object qryFieldNamesSortOrder: TIntegerField
      FieldName = 'SortOrder'
    end
    object qryFieldNamesSortIndes: TIntegerField
      FieldName = 'SortIndes'
    end
    object qryFieldNamesGroupFooters: TBooleanField
      FieldName = 'GroupFooters'
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'xls'
    Filter = 'Excel(*.xls)|*.xls|Any|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    OptionsEx = [ofExNoPlacesBar]
    Title = #913#960#959#952#942#954#949#965#963#951' '#969#962
    Left = 512
    Top = 192
  end
end
