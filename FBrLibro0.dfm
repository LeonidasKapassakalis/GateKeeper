inherited frmBrLibro0: TfrmBrLibro0
  Caption = #917#954#964#965#960#974#963#951' '#918#965#947#943#963#949#969#957
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid1: TcxGrid
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      DataController.DataModeController.DetailInSQLMode = True
      DataController.DataSource = dtsMain
      object cxGrid1DBTableView1Id: TcxGridDBColumn
        DataBinding.FieldName = 'Id'
      end
      object cxGrid1DBTableView1DateStart: TcxGridDBColumn
        Caption = #904#957#945#961#958#951
        DataBinding.FieldName = 'DateStart'
      end
      object cxGrid1DBTableView1DateEnd: TcxGridDBColumn
        Caption = #923#942#958#951
        DataBinding.FieldName = 'DateEnd'
      end
      object cxGrid1DBTableView1Calc: TcxGridDBColumn
        Caption = #913#960#972#954#955#951#963#951
        DataBinding.FieldName = 'Calc'
      end
    end
    object TcxGridDBTableView [1]
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object TcxGridDBTableView [2]
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1DBTableView2: TcxGridDBTableView [3]
      PopupMenu = popFilter
      OnDblClick = cxGrid1DBTableView2DblClick
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
      OnCellDblClick = cxGrid1DBTableView2CellDblClick
      DataController.DataSource = DataSource2
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
      object cxGrid1DBTableView2GId: TcxGridDBColumn
        DataBinding.FieldName = 'GId'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView2LibId: TcxGridDBColumn
        Caption = 'Id'
        DataBinding.FieldName = 'LibId'
        SortIndex = 0
        SortOrder = soAscending
      end
      object cxGrid1DBTableView2LibDateTime: TcxGridDBColumn
        Caption = #919#956#949#961#959#956#951#957#943#945
        DataBinding.FieldName = 'LibDateTime'
      end
      object cxGrid1DBTableView2LibRegNo: TcxGridDBColumn
        Caption = #913#961'.'#922#965#954#955'.'
        DataBinding.FieldName = 'LibRegNo'
      end
      object cxGrid1DBTableView2LibWeight: TcxGridDBColumn
        Caption = #914#940#961#959#962
        DataBinding.FieldName = 'LibWeight'
      end
      object cxGrid1DBTableView2LibWeight1: TcxGridDBColumn
        DataBinding.FieldName = 'LibWeight1'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView2LibWeight2: TcxGridDBColumn
        DataBinding.FieldName = 'LibWeight2'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView2LibWeight0: TcxGridDBColumn
        DataBinding.FieldName = 'LibWeight0'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView2ArThes: TcxGridDBColumn
        DataBinding.FieldName = 'ArThes'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView2Error: TcxGridDBColumn
        DataBinding.FieldName = 'Error'
        Visible = False
      end
      object cxGrid1DBTableView2Used: TcxGridDBColumn
        Caption = #931#949' '#967#961#942#963#951
        DataBinding.FieldName = 'Used'
      end
    end
    object cxGrid1DBTableView3: TcxGridDBTableView [4]
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
      DataController.DataSource = DataSource3
      DataController.DetailKeyFieldNames = 'ACDay'
      DataController.MasterKeyFieldNames = 'Day'
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
      object cxGrid1DBTableView3GId: TcxGridDBColumn
        DataBinding.FieldName = 'GId'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView3LibId: TcxGridDBColumn
        Caption = 'Id'
        DataBinding.FieldName = 'LibId'
        SortIndex = 0
        SortOrder = soAscending
      end
      object cxGrid1DBTableView3LibDateTime: TcxGridDBColumn
        Caption = #919#956#949#961#959#956#951#957#943#945
        DataBinding.FieldName = 'LibDateTime'
      end
      object cxGrid1DBTableView3LibRegNo: TcxGridDBColumn
        Caption = #913#961'.'#922#965#954#955
        DataBinding.FieldName = 'LibRegNo'
      end
      object cxGrid1DBTableView3LibWeight: TcxGridDBColumn
        Caption = #914#940#961#960#962
        DataBinding.FieldName = 'LibWeight'
      end
      object cxGrid1DBTableView3LibWeight1: TcxGridDBColumn
        DataBinding.FieldName = 'LibWeight1'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView3LibWeight2: TcxGridDBColumn
        DataBinding.FieldName = 'LibWeight2'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView3LibWeight0: TcxGridDBColumn
        DataBinding.FieldName = 'LibWeight0'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView3ArThes: TcxGridDBColumn
        DataBinding.FieldName = 'ArThes'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView3Error: TcxGridDBColumn
        DataBinding.FieldName = 'Error'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView3Used: TcxGridDBColumn
        Caption = #931#949' '#967#961#942#963#951
        DataBinding.FieldName = 'Used'
      end
      object cxGrid1DBTableView3ACDay: TcxGridDBColumn
        DataBinding.FieldName = 'ACDay'
        Visible = False
        VisibleForCustomization = False
      end
    end
    inherited cxGrid1Level1: TcxGridLevel
      object cxGrid1Level3: TcxGridLevel
        GridView = cxGrid1DBTableView3
      end
    end
    object cxGrid1Level2: TcxGridLevel
      GridView = cxGrid1DBTableView2
    end
  end
  inherited qryMain: TADOQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM [TRawLib]'
      '--ORDER BY LibDateTime,LibId')
    Left = 80
    Top = 336
    object qryMainGId: TGuidField
      FieldName = 'GId'
      FixedChar = True
      Size = 38
    end
    object qryMainLibId: TIntegerField
      FieldName = 'LibId'
    end
    object qryMainLibDateTime: TDateTimeField
      FieldName = 'LibDateTime'
    end
    object qryMainLibRegNo: TWideStringField
      FieldName = 'LibRegNo'
      Size = 50
    end
    object qryMainLibWeight: TIntegerField
      FieldName = 'LibWeight'
    end
    object qryMainLibWeight1: TIntegerField
      FieldName = 'LibWeight1'
    end
    object qryMainLibWeight2: TIntegerField
      FieldName = 'LibWeight2'
    end
    object qryMainLibWeight0: TIntegerField
      FieldName = 'LibWeight0'
    end
    object qryMainArThes: TIntegerField
      FieldName = 'ArThes'
    end
    object qryMainError: TBooleanField
      FieldName = 'Error'
    end
    object qryMainUsed: TBooleanField
      FieldName = 'Used'
    end
  end
  inherited dtsMain: TDataSource
    DataSet = ClientDataSet1
    Left = 224
    Top = 128
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 42430.670886493060000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
  object VL_FPass: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [stFPass]'
      '')
    Left = 640
    Top = 96
    object VL_FPassId: TIntegerField
      FieldName = 'Id'
    end
    object VL_FPassLogin: TWideStringField
      FieldName = 'Login'
      Size = 30
    end
    object VL_FPassPasswd: TWideStringField
      FieldName = 'Passwd'
    end
    object VL_FPassGroup: TSmallintField
      FieldName = 'Group'
    end
    object VL_FPassName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object VL_FPassAddress: TWideStringField
      FieldName = 'Address'
      Size = 50
    end
    object VL_FPassEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object VL_FPassPhone: TWideStringField
      FieldName = 'Phone'
      Size = 30
    end
    object VL_FPassConn_Time: TFloatField
      FieldName = 'Conn_Time'
    end
    object VL_FPassValid_Till: TDateTimeField
      FieldName = 'Valid_Till'
    end
    object VL_FPassStath: TIntegerField
      FieldName = 'Stath'
    end
    object VL_FPassDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object VL_FPassDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object VL_FPassDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object VL_FPassInActive: TBooleanField
      FieldName = 'InActive'
    end
    object VL_FPassInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object VL_FPassInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object VL_FPassMaint_Log: TBooleanField
      FieldName = 'Maint_Log'
    end
    object VL_FPassCheck_Serial: TBooleanField
      FieldName = 'Check_Serial'
    end
    object VL_FPassSerial1: TIntegerField
      FieldName = 'Serial1'
    end
    object VL_FPassSerial2: TIntegerField
      FieldName = 'Serial2'
    end
    object VL_FPassSerial3: TIntegerField
      FieldName = 'Serial3'
    end
  end
  object dsVL_FPass: TDataSource
    AutoEdit = False
    DataSet = VL_FPass
    Left = 728
    Top = 96
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Id'
        DataType = ftInteger
      end
      item
        Name = 'DateStart'
        DataType = ftDateTime
      end
      item
        Name = 'DateEnd'
        DataType = ftDateTime
      end
      item
        Name = 'Calc'
        DataType = ftInteger
      end
      item
        Name = 'Day'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'ClientDataSet1Index1'
        Fields = 'Id'
      end>
    IndexName = 'ClientDataSet1Index1'
    Params = <>
    StoreDefs = True
    Left = 152
    Top = 128
    Data = {
      600000009619E0BD010000001800000005000000000003000000600002496404
      000100000000000944617465537461727408000800000000000744617465456E
      6408000800000000000443616C63040001000000000003446179040001000000
      00000000}
    object ClientDataSet1Id: TIntegerField
      FieldName = 'Id'
    end
    object ClientDataSet1DateStart: TDateTimeField
      FieldName = 'DateStart'
    end
    object ClientDataSet1DateEnd: TDateTimeField
      FieldName = 'DateEnd'
    end
    object ClientDataSet1Calc: TIntegerField
      FieldName = 'Calc'
    end
    object ClientDataSet1Day: TIntegerField
      FieldName = 'Day'
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsMain
    Parameters = <
      item
        Name = 'DateStart'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'DateEnd'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select [dbo].[FindLibNotUsed]( :DateStart, :DateEnd) As Res')
    Left = 320
    Top = 120
    object ADOQuery1Res: TLargeintField
      FieldName = 'Res'
      ReadOnly = True
    end
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsMain
    Parameters = <
      item
        Name = 'DateStart'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Value = Null
      end
      item
        Name = 'DateEnd'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Value = Null
      end>
    SQL.Strings = (
      'Select * From TRawLib'
      'Where LibDateTime >= :DateStart And LibDateTime <= :DateEnd')
    Left = 320
    Top = 184
    object ADOQuery2GId: TGuidField
      FieldName = 'GId'
      FixedChar = True
      Size = 38
    end
    object ADOQuery2LibId: TIntegerField
      FieldName = 'LibId'
    end
    object ADOQuery2LibDateTime: TDateTimeField
      FieldName = 'LibDateTime'
    end
    object ADOQuery2LibRegNo: TWideStringField
      FieldName = 'LibRegNo'
      Size = 50
    end
    object ADOQuery2LibWeight: TIntegerField
      FieldName = 'LibWeight'
    end
    object ADOQuery2LibWeight1: TIntegerField
      FieldName = 'LibWeight1'
    end
    object ADOQuery2LibWeight2: TIntegerField
      FieldName = 'LibWeight2'
    end
    object ADOQuery2LibWeight0: TIntegerField
      FieldName = 'LibWeight0'
    end
    object ADOQuery2ArThes: TIntegerField
      FieldName = 'ArThes'
    end
    object ADOQuery2Error: TBooleanField
      FieldName = 'Error'
    end
    object ADOQuery2Used: TBooleanField
      FieldName = 'Used'
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 400
    Top = 184
  end
  object ADOQuery3: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ACDay'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'Select * From VDayRawLib'
      'Where ACDay = :ACDay')
    Left = 320
    Top = 248
    object ADOQuery3GId: TGuidField
      FieldName = 'GId'
      FixedChar = True
      Size = 38
    end
    object ADOQuery3LibId: TIntegerField
      FieldName = 'LibId'
    end
    object ADOQuery3LibDateTime: TDateTimeField
      FieldName = 'LibDateTime'
    end
    object ADOQuery3LibRegNo: TWideStringField
      FieldName = 'LibRegNo'
      Size = 50
    end
    object ADOQuery3LibWeight: TIntegerField
      FieldName = 'LibWeight'
    end
    object ADOQuery3LibWeight1: TIntegerField
      FieldName = 'LibWeight1'
    end
    object ADOQuery3LibWeight2: TIntegerField
      FieldName = 'LibWeight2'
    end
    object ADOQuery3LibWeight0: TIntegerField
      FieldName = 'LibWeight0'
    end
    object ADOQuery3ArThes: TIntegerField
      FieldName = 'ArThes'
    end
    object ADOQuery3Error: TBooleanField
      FieldName = 'Error'
    end
    object ADOQuery3Used: TBooleanField
      FieldName = 'Used'
    end
    object ADOQuery3ACDay: TFloatField
      FieldName = 'ACDay'
      ReadOnly = True
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 400
    Top = 256
  end
end
