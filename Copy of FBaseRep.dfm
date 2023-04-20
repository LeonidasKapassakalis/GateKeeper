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
    ExplicitLeft = 80
    ExplicitTop = 104
    ExplicitWidth = 250
    ExplicitHeight = 200
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
      DataController.DataSource = DataSource1
      DataController.DetailKeyFieldNames = 'id'
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
      object cxGrid1DBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGrid1DBTableView1Name: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
      end
      object cxGrid1DBTableView1Company: TcxGridDBColumn
        DataBinding.FieldName = 'Company'
      end
      object cxGrid1DBTableView1IdentityNo: TcxGridDBColumn
        DataBinding.FieldName = 'IdentityNo'
      end
      object cxGrid1DBTableView1Reason: TcxGridDBColumn
        DataBinding.FieldName = 'Reason'
      end
      object cxGrid1DBTableView1ContactWith: TcxGridDBColumn
        DataBinding.FieldName = 'ContactWith'
      end
      object cxGrid1DBTableView1WithCar: TcxGridDBColumn
        DataBinding.FieldName = 'WithCar'
      end
      object cxGrid1DBTableView1CarNumber: TcxGridDBColumn
        DataBinding.FieldName = 'CarNumber'
      end
      object cxGrid1DBTableView1CardNumber: TcxGridDBColumn
        DataBinding.FieldName = 'CardNumber'
      end
      object cxGrid1DBTableView1DateTimeIn: TcxGridDBColumn
        DataBinding.FieldName = 'DateTimeIn'
        Visible = False
        DateTimeGrouping = dtgByDate
        GroupIndex = 0
      end
      object cxGrid1DBTableView1DateTimeOut: TcxGridDBColumn
        DataBinding.FieldName = 'DateTimeOut'
      end
      object cxGrid1DBTableView1InsUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InsUsr'
      end
      object cxGrid1DBTableView1InsDT: TcxGridDBColumn
        DataBinding.FieldName = 'InsDT'
      end
      object cxGrid1DBTableView1InUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InUsr'
      end
      object cxGrid1DBTableView1OutUsr: TcxGridDBColumn
        DataBinding.FieldName = 'OutUsr'
      end
      object cxGrid1DBTableView1FullFilled: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilled'
      end
      object cxGrid1DBTableView1FullFilledDT: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledDT'
      end
      object cxGrid1DBTableView1FullFilledUsr: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledUsr'
      end
      object cxGrid1DBTableView1Comments: TcxGridDBColumn
        DataBinding.FieldName = 'Comments'
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
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
      DataController.DataSource = DataSource1
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
      object cxGrid1DBTableView2id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGrid1DBTableView2Name: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
      end
      object cxGrid1DBTableView2Company: TcxGridDBColumn
        DataBinding.FieldName = 'Company'
      end
      object cxGrid1DBTableView2IdentityNo: TcxGridDBColumn
        DataBinding.FieldName = 'IdentityNo'
      end
      object cxGrid1DBTableView2Reason: TcxGridDBColumn
        DataBinding.FieldName = 'Reason'
      end
      object cxGrid1DBTableView2ContactWith: TcxGridDBColumn
        DataBinding.FieldName = 'ContactWith'
        Visible = False
        GroupIndex = 0
      end
      object cxGrid1DBTableView2WithCar: TcxGridDBColumn
        DataBinding.FieldName = 'WithCar'
      end
      object cxGrid1DBTableView2CarNumber: TcxGridDBColumn
        DataBinding.FieldName = 'CarNumber'
      end
      object cxGrid1DBTableView2CardNumber: TcxGridDBColumn
        DataBinding.FieldName = 'CardNumber'
      end
      object cxGrid1DBTableView2DateTimeIn: TcxGridDBColumn
        DataBinding.FieldName = 'DateTimeIn'
      end
      object cxGrid1DBTableView2DateTimeOut: TcxGridDBColumn
        DataBinding.FieldName = 'DateTimeOut'
      end
      object cxGrid1DBTableView2InsUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InsUsr'
      end
      object cxGrid1DBTableView2InsDT: TcxGridDBColumn
        DataBinding.FieldName = 'InsDT'
      end
      object cxGrid1DBTableView2InUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InUsr'
      end
      object cxGrid1DBTableView2OutUsr: TcxGridDBColumn
        DataBinding.FieldName = 'OutUsr'
      end
      object cxGrid1DBTableView2FullFilled: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilled'
      end
      object cxGrid1DBTableView2FullFilledDT: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledDT'
      end
      object cxGrid1DBTableView2FullFilledUsr: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledUsr'
      end
      object cxGrid1DBTableView2Comments: TcxGridDBColumn
        DataBinding.FieldName = 'Comments'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
    object cxGrid1Level2: TcxGridLevel
      GridView = cxGrid1DBTableView2
    end
  end
  inherited popFilter: TPopupMenu
    object Pr1: TMenuItem
      Caption = 'Pr'
      OnClick = Pr1Click
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [PersonsVisit]')
    Left = 88
    Top = 392
    object ADOQuery1id: TIntegerField
      FieldName = 'id'
    end
    object ADOQuery1Name: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object ADOQuery1Company: TWideStringField
      FieldName = 'Company'
      Size = 50
    end
    object ADOQuery1IdentityNo: TWideStringField
      FieldName = 'IdentityNo'
      Size = 50
    end
    object ADOQuery1Reason: TWideStringField
      FieldName = 'Reason'
      Size = 50
    end
    object ADOQuery1ContactWith: TWideStringField
      FieldName = 'ContactWith'
      Size = 50
    end
    object ADOQuery1WithCar: TBooleanField
      FieldName = 'WithCar'
    end
    object ADOQuery1CarNumber: TWideStringField
      FieldName = 'CarNumber'
      Size = 50
    end
    object ADOQuery1CardNumber: TWideStringField
      FieldName = 'CardNumber'
      Size = 50
    end
    object ADOQuery1DateTimeIn: TDateTimeField
      FieldName = 'DateTimeIn'
    end
    object ADOQuery1DateTimeOut: TDateTimeField
      FieldName = 'DateTimeOut'
    end
    object ADOQuery1InsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object ADOQuery1InsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object ADOQuery1InUsr: TIntegerField
      FieldName = 'InUsr'
    end
    object ADOQuery1OutUsr: TIntegerField
      FieldName = 'OutUsr'
    end
    object ADOQuery1FullFilled: TBooleanField
      FieldName = 'FullFilled'
    end
    object ADOQuery1FullFilledDT: TDateTimeField
      FieldName = 'FullFilledDT'
    end
    object ADOQuery1FullFilledUsr: TIntegerField
      FieldName = 'FullFilledUsr'
    end
    object ADOQuery1Comments: TWideStringField
      FieldName = 'Comments'
      Size = 250
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
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
      ReportDocument.CreationDate = 42345.395407407410000000
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
    Left = 384
    Top = 384
  end
end
