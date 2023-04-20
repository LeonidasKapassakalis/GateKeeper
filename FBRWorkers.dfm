inherited frmBRWorkers: TfrmBRWorkers
  Caption = #917#954#964#973#960#969#963#951' '#917#961#947#959#955#940#946#969#957' '#917#961#947#945#950#959#956#941#957#969#957' '
  OnActivate = FormActivate
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid1: TcxGrid
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      DataController.DataSource = dtsMain
      DataController.DetailKeyFieldNames = 'id'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      object cxGrid1DBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGrid1DBTableView1Name: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
      end
      object cxGrid1DBTableView1Surname: TcxGridDBColumn
        DataBinding.FieldName = 'Surname'
      end
      object cxGrid1DBTableView1ADT: TcxGridDBColumn
        DataBinding.FieldName = 'ADT'
      end
      object cxGrid1DBTableView1Contact: TcxGridDBColumn
        DataBinding.FieldName = 'Contact'
      end
      object cxGrid1DBTableView1Reason: TcxGridDBColumn
        DataBinding.FieldName = 'Reason'
      end
      object cxGrid1DBTableView1Company: TcxGridDBColumn
        DataBinding.FieldName = 'Company'
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
      object cxGrid1DBTableView1DTime: TcxGridDBColumn
        DataBinding.FieldName = 'DTime'
      end
      object cxGrid1DBTableView1Comments: TcxGridDBColumn
        DataBinding.FieldName = 'Comments'
      end
      object cxGrid1DBTableView1Contractors_Workers_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Contractors_Workers_Id'
      end
      object cxGrid1DBTableView1Reason_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Reason_Id'
      end
      object cxGrid1DBTableView1Contact_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Contact_Id'
      end
      object cxGrid1DBTableView1Contractors_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Contractors_Id'
      end
      object cxGrid1DBTableView1Contractors: TcxGridDBColumn
        DataBinding.FieldName = 'Contractors'
      end
      object cxGrid1DBTableView1VAT: TcxGridDBColumn
        DataBinding.FieldName = 'VAT'
      end
      object cxGrid1DBTableView1LDTime: TcxGridDBColumn
        DataBinding.FieldName = 'LDTime'
      end
      object cxGrid1DBTableView1LFPassIns: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassIns'
      end
      object cxGrid1DBTableView1LFPassOut: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassOut'
      end
      object cxGrid1DBTableView1LFPassFull: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassFull'
      end
      object cxGrid1DBTableView1LContact_Id: TcxGridDBColumn
        DataBinding.FieldName = 'LContact_Id'
      end
      object cxGrid1DBTableView1LContractor: TcxGridDBColumn
        DataBinding.FieldName = 'LContractor'
      end
      object cxGrid1DBTableView1LContractor_Worker: TcxGridDBColumn
        DataBinding.FieldName = 'LContractor_Worker'
      end
      object cxGrid1DBTableView1LReason: TcxGridDBColumn
        DataBinding.FieldName = 'LReason'
      end
      object cxGrid1DBTableView1LContact: TcxGridDBColumn
        DataBinding.FieldName = 'LContact'
      end
      object cxGrid1DBTableView1MinDiff: TcxGridDBColumn
        DataBinding.FieldName = 'MinDiff'
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView [1]
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
      OnCellDblClick = cxGrid1DBTableView2CellDblClick
      DataController.DataSource = dtsMain
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
      object cxGrid1DBTableView2id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGrid1DBTableView2Name: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
      end
      object cxGrid1DBTableView2Surname: TcxGridDBColumn
        DataBinding.FieldName = 'Surname'
      end
      object cxGrid1DBTableView2ADT: TcxGridDBColumn
        DataBinding.FieldName = 'ADT'
      end
      object cxGrid1DBTableView2Contact: TcxGridDBColumn
        DataBinding.FieldName = 'Contact'
      end
      object cxGrid1DBTableView2Reason: TcxGridDBColumn
        DataBinding.FieldName = 'Reason'
      end
      object cxGrid1DBTableView2Company: TcxGridDBColumn
        DataBinding.FieldName = 'Company'
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
      object cxGrid1DBTableView2DTime: TcxGridDBColumn
        DataBinding.FieldName = 'DTime'
      end
      object cxGrid1DBTableView2Comments: TcxGridDBColumn
        DataBinding.FieldName = 'Comments'
      end
      object cxGrid1DBTableView2Contractors_Workers_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Contractors_Workers_Id'
      end
      object cxGrid1DBTableView2Reason_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Reason_Id'
      end
      object cxGrid1DBTableView2Contact_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Contact_Id'
      end
      object cxGrid1DBTableView2Contractors_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Contractors_Id'
      end
      object cxGrid1DBTableView2Contractors: TcxGridDBColumn
        DataBinding.FieldName = 'Contractors'
      end
      object cxGrid1DBTableView2VAT: TcxGridDBColumn
        DataBinding.FieldName = 'VAT'
      end
      object cxGrid1DBTableView2LDTime: TcxGridDBColumn
        DataBinding.FieldName = 'LDTime'
      end
      object cxGrid1DBTableView2LFPassIns: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassIns'
      end
      object cxGrid1DBTableView2LFPassOut: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassOut'
      end
      object cxGrid1DBTableView2LFPassFull: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassFull'
      end
      object cxGrid1DBTableView2LContact_Id: TcxGridDBColumn
        DataBinding.FieldName = 'LContact_Id'
      end
      object cxGrid1DBTableView2LContractor: TcxGridDBColumn
        DataBinding.FieldName = 'LContractor'
      end
      object cxGrid1DBTableView2LContractor_Worker: TcxGridDBColumn
        DataBinding.FieldName = 'LContractor_Worker'
      end
      object cxGrid1DBTableView2LReason: TcxGridDBColumn
        DataBinding.FieldName = 'LReason'
      end
      object cxGrid1DBTableView2LContact: TcxGridDBColumn
        DataBinding.FieldName = 'LContact'
      end
    end
    object cxGrid1DBTableView3: TcxGridDBTableView [2]
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
      OnCellDblClick = cxGrid1DBTableView3CellDblClick
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
      object cxGrid1DBTableView3id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGrid1DBTableView3Name: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
      end
      object cxGrid1DBTableView3Company: TcxGridDBColumn
        DataBinding.FieldName = 'Company'
      end
      object cxGrid1DBTableView3IdentityNo: TcxGridDBColumn
        DataBinding.FieldName = 'IdentityNo'
      end
      object cxGrid1DBTableView3Reason: TcxGridDBColumn
        DataBinding.FieldName = 'Reason'
      end
      object cxGrid1DBTableView3ContactWith: TcxGridDBColumn
        DataBinding.FieldName = 'ContactWith'
      end
      object cxGrid1DBTableView3WithCar: TcxGridDBColumn
        DataBinding.FieldName = 'WithCar'
      end
      object cxGrid1DBTableView3CarNumber: TcxGridDBColumn
        DataBinding.FieldName = 'CarNumber'
      end
      object cxGrid1DBTableView3CardNumber: TcxGridDBColumn
        DataBinding.FieldName = 'CardNumber'
      end
      object cxGrid1DBTableView3DateTimeIn: TcxGridDBColumn
        DataBinding.FieldName = 'DateTimeIn'
      end
      object cxGrid1DBTableView3DateTimeOut: TcxGridDBColumn
        DataBinding.FieldName = 'DateTimeOut'
      end
      object cxGrid1DBTableView3InsUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InsUsr'
      end
      object cxGrid1DBTableView3InsDT: TcxGridDBColumn
        DataBinding.FieldName = 'InsDT'
      end
      object cxGrid1DBTableView3InUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InUsr'
      end
      object cxGrid1DBTableView3OutUsr: TcxGridDBColumn
        DataBinding.FieldName = 'OutUsr'
      end
      object cxGrid1DBTableView3FullFilled: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilled'
      end
      object cxGrid1DBTableView3FullFilledDT: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledDT'
      end
      object cxGrid1DBTableView3FullFilledUsr: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledUsr'
      end
      object cxGrid1DBTableView3Comments: TcxGridDBColumn
        DataBinding.FieldName = 'Comments'
      end
      object cxGrid1DBTableView3LDTime: TcxGridDBColumn
        DataBinding.FieldName = 'LDTime'
      end
      object cxGrid1DBTableView3LFPassIns: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassIns'
      end
      object cxGrid1DBTableView3LFPassOut: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassOut'
      end
      object cxGrid1DBTableView3LFPassFull: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassFull'
      end
      object cxGrid1DBTableView3ContactId: TcxGridDBColumn
        DataBinding.FieldName = 'ContactId'
      end
      object cxGrid1DBTableView3DTime: TcxGridDBColumn
        DataBinding.FieldName = 'DTime'
      end
    end
    object cxGrid1Level2: TcxGridLevel
      GridView = cxGrid1DBTableView2
    end
    object cxGrid1Level3: TcxGridLevel
    end
  end
  inherited qryMain: TADOQuery
    OnCalcFields = qryMainCalcFields
    SQL.Strings = (
      'SELECT *'
      'FROM [V_WorkersVisit]'
      '')
    Left = 24
    Top = 88
    object qryMainid: TIntegerField
      FieldName = 'id'
    end
    object qryMainName: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
    object qryMainSurname: TWideStringField
      FieldName = 'Surname'
      Size = 30
    end
    object qryMainADT: TWideStringField
      FieldName = 'ADT'
      FixedChar = True
      Size = 10
    end
    object qryMainContact: TWideStringField
      FieldName = 'Contact'
      Size = 30
    end
    object qryMainReason: TWideStringField
      FieldName = 'Reason'
      Size = 30
    end
    object qryMainCompany: TWideStringField
      FieldName = 'Company'
      Size = 100
    end
    object qryMainWithCar: TBooleanField
      FieldName = 'WithCar'
    end
    object qryMainCarNumber: TWideStringField
      FieldName = 'CarNumber'
      Size = 50
    end
    object qryMainCardNumber: TWideStringField
      FieldName = 'CardNumber'
      Size = 50
    end
    object qryMainDateTimeIn: TDateTimeField
      FieldName = 'DateTimeIn'
    end
    object qryMainDateTimeOut: TDateTimeField
      FieldName = 'DateTimeOut'
    end
    object qryMainInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryMainInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryMainInUsr: TIntegerField
      FieldName = 'InUsr'
    end
    object qryMainOutUsr: TIntegerField
      FieldName = 'OutUsr'
    end
    object qryMainFullFilled: TBooleanField
      FieldName = 'FullFilled'
    end
    object qryMainFullFilledDT: TDateTimeField
      FieldName = 'FullFilledDT'
    end
    object qryMainFullFilledUsr: TIntegerField
      FieldName = 'FullFilledUsr'
    end
    object qryMainDTime: TDateTimeField
      FieldName = 'DTime'
    end
    object qryMainComments: TWideStringField
      FieldName = 'Comments'
      Size = 500
    end
    object qryMainContractors_Workers_Id: TIntegerField
      FieldName = 'Contractors_Workers_Id'
    end
    object qryMainReason_Id: TIntegerField
      FieldName = 'Reason_Id'
    end
    object qryMainContact_Id: TIntegerField
      FieldName = 'Contact_Id'
    end
    object qryMainContractors_Id: TIntegerField
      FieldName = 'Contractors_Id'
    end
    object qryMainContractors: TWideStringField
      FieldName = 'Contractors'
      Size = 100
    end
    object qryMainVAT: TWideStringField
      FieldName = 'VAT'
      FixedChar = True
      Size = 10
    end
    object qryMainLDTime: TStringField
      DisplayLabel = #916#953#940#961#954#949#953#945' '#917#958#972#948#959#965
      FieldKind = fkCalculated
      FieldName = 'LDTime'
      Calculated = True
    end
    object qryMainLFPassIns: TStringField
      FieldKind = fkLookup
      FieldName = 'LFPassIns'
      LookupDataSet = VL_FPass
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'InUsr'
      Lookup = True
    end
    object qryMainLFPassOut: TStringField
      FieldKind = fkLookup
      FieldName = 'LFPassOut'
      LookupDataSet = VL_FPass
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'OutUsr'
      Lookup = True
    end
    object qryMainLFPassFull: TStringField
      FieldKind = fkLookup
      FieldName = 'LFPassFull'
      LookupDataSet = VL_FPass
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'FullFilledUsr'
      Lookup = True
    end
    object qryMainLContractor: TStringField
      DisplayLabel = #917#961#947#959#955#940#946#959#962
      FieldKind = fkLookup
      FieldName = 'LContractor'
      LookupDataSet = qryContractors
      LookupKeyFields = 'Id'
      LookupResultField = 'Company'
      KeyFields = 'Contractors_Id'
      Size = 0
      Lookup = True
    end
    object qryMainLContractor_Worker: TStringField
      DisplayLabel = #917#961#947#945#950#972#956#949#957#959#962
      FieldKind = fkLookup
      FieldName = 'LContractor_Worker'
      LookupDataSet = qryContractors_Workers
      LookupKeyFields = 'Id'
      LookupResultField = 'LFullName'
      KeyFields = 'Contractors_Workers_Id'
      Lookup = True
    end
    object qryMainLReason: TStringField
      DisplayLabel = #913#953#964#943#945
      FieldKind = fkLookup
      FieldName = 'LReason'
      LookupDataSet = qryContractors_Reason
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'Reason_Id'
      Lookup = True
    end
    object qryMainLContact: TStringField
      FieldKind = fkLookup
      FieldName = 'LContact'
      LookupDataSet = qryContractors_Contact
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'Contact_Id'
      Lookup = True
    end
    object qryMainMinDiff: TIntegerField
      FieldName = 'MinDiff'
      ReadOnly = True
    end
  end
  inherited dtsMain: TDataSource
    Top = 352
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 42345.494841504630000000
      BuiltInReportLink = True
    end
  end
  object VL_FPass: TADOQuery [7]
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [stFPass]'
      '')
    Left = 704
    Top = 80
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
  object dsVL_FPass: TDataSource [8]
    AutoEdit = False
    DataSet = VL_FPass
    Left = 792
    Top = 80
  end
  object qryContractors_Reason: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT [Id]'
      '      ,[Name]'
      'FROM Contractors_Reason')
    Left = 656
    Top = 296
    object qryContractors_ReasonId: TIntegerField
      FieldName = 'Id'
    end
    object qryContractors_ReasonName: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
  end
  object dsqryContractors_Reason: TDataSource
    AutoEdit = False
    DataSet = qryContractors_Reason
    Left = 768
    Top = 296
  end
  object qryContractors: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Id,Company'
      'FROM [Contractors]'
      'WHERE Id > 0')
    Left = 656
    Top = 176
    object qryContractorsId: TIntegerField
      FieldName = 'Id'
    end
    object qryContractorsCompany: TWideStringField
      FieldName = 'Company'
      Size = 100
    end
  end
  object dsqryContractors: TDataSource
    AutoEdit = False
    DataSet = qryContractors
    Left = 768
    Top = 176
  end
  object qryContractors_Workers: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryContractors_WorkersCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Contractors_Workers')
    Left = 656
    Top = 248
    object qryContractors_WorkersId: TIntegerField
      FieldName = 'Id'
    end
    object qryContractors_WorkersContractors_Id: TIntegerField
      FieldName = 'Contractors_Id'
    end
    object qryContractors_WorkersName: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
    object qryContractors_WorkersSurname: TWideStringField
      FieldName = 'Surname'
      Size = 30
    end
    object qryContractors_WorkersADT: TWideStringField
      FieldName = 'ADT'
      FixedChar = True
      Size = 10
    end
    object qryContractors_WorkersLCont: TStringField
      FieldKind = fkLookup
      FieldName = 'LCont'
      LookupDataSet = qryContractors
      LookupKeyFields = 'Id'
      LookupResultField = 'Company'
      KeyFields = 'Contractors_Id'
      Lookup = True
    end
    object qryContractors_WorkersLFullName: TStringField
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'LFullName'
      LookupCache = True
      Size = 50
      Calculated = True
    end
  end
  object dsqryContractors_Workers: TDataSource
    AutoEdit = False
    DataSet = qryContractors_Workers
    Left = 768
    Top = 248
  end
  object qryContractors_Contact: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Contractors_Contact'
      '')
    Left = 656
    Top = 356
    object qryContractors_ContactId: TIntegerField
      FieldName = 'Id'
    end
    object qryContractors_ContactName: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
  end
  object dsqryContractors_Contact: TDataSource
    AutoEdit = False
    DataSet = qryContractors_Contact
    Left = 768
    Top = 356
  end
end
