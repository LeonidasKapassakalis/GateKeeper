inherited frmFEnhmStPel: TfrmFEnhmStPel
  Left = 288
  Top = 182
  Caption = #917#957#951#956#941#961#969#963#951' SAP '#928#961#945#964#942#961#953#945'/'#928#949#955#940#964#949#962
  ClientHeight = 595
  ClientWidth = 731
  OldCreateOrder = True
  OnActivate = FormActivate
  OnCreate = FormCreate
  ExplicitWidth = 739
  ExplicitHeight = 622
  PixelsPerInch = 96
  TextHeight = 13
  object dxPageControl1: TcxPageControl [0]
    Left = 0
    Top = 23
    Width = 731
    Height = 572
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabBrowser
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 572
    ClientRectRight = 731
    ClientRectTop = 24
    object tabBrowser: TcxTabSheet
      Caption = #928#949#955#940#964#949#962'/'#928#961#945#964#942#961#953#945
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object StatusBar1: TStatusBar
        Left = 0
        Top = 529
        Width = 731
        Height = 19
        Panels = <
          item
            Width = 200
          end>
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 731
        Height = 529
        Align = alClient
        TabOrder = 1
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
          DataController.DataSource = dtsTran
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
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfAlwaysVisible
          object cxGrid1DBTableView1AcardCustomerId: TcxGridDBColumn
            DataBinding.FieldName = 'Acard.CustomerId'
          end
          object cxGrid1DBTableView1CustomerSapCode: TcxGridDBColumn
            DataBinding.FieldName = 'Customer.SapCode'
          end
          object cxGrid1DBTableView1TranMerchantId: TcxGridDBColumn
            DataBinding.FieldName = 'Tran.MerchantId'
          end
          object cxGrid1DBTableView1MerchantSapCode: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.SapCode'
          end
          object cxGrid1DBTableView1SumAmount: TcxGridDBColumn
            DataBinding.FieldName = 'SumAmount'
          end
          object cxGrid1DBTableView1SumQuantity: TcxGridDBColumn
            DataBinding.FieldName = 'SumQuantity'
          end
          object cxGrid1DBTableView1LDiak: TcxGridDBColumn
            DataBinding.FieldName = 'LDiak'
          end
          object cxGrid1DBTableView1LDiakSap: TcxGridDBColumn
            DataBinding.FieldName = 'LDiakSap'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object dxTabSheet1: TcxTabSheet
      Caption = #928#949#955#940#964#949#962
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 731
        Height = 548
        Align = alClient
        TabOrder = 0
        object cxGrid2DBTableView1: TcxGridDBTableView
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
          DataController.DetailKeyFieldNames = 'Acard.CustomerId'
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
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          object cxGrid2DBTableView1CustomerDesc: TcxGridDBColumn
            DataBinding.FieldName = 'CustomerDesc'
          end
          object cxGrid2DBTableView1CustomerId: TcxGridDBColumn
            DataBinding.FieldName = 'CustomerId'
          end
          object cxGrid2DBTableView1CustomerSapCode: TcxGridDBColumn
            DataBinding.FieldName = 'Customer.SapCode'
          end
          object cxGrid2DBTableView1SumAmount: TcxGridDBColumn
            DataBinding.FieldName = 'SumAmount'
          end
          object cxGrid2DBTableView1SapAmount: TcxGridDBColumn
            DataBinding.FieldName = 'SapAmount'
          end
          object cxGrid2DBTableView1Status: TcxGridDBColumn
            DataBinding.FieldName = 'Status'
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
    object dxTabSheet2: TcxTabSheet
      Caption = #928#961#945#964#942#961#953#945
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 731
        Height = 548
        Align = alClient
        TabOrder = 0
        object cxGrid3DBTableView1: TcxGridDBTableView
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
          DataController.DataSource = DataSource2
          DataController.DetailKeyFieldNames = 'Station.SapCode'
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
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          object cxGrid3DBTableView1StationDescr: TcxGridDBColumn
            DataBinding.FieldName = 'StationDescr'
          end
          object cxGrid3DBTableView1StationId: TcxGridDBColumn
            DataBinding.FieldName = 'StationId'
          end
          object cxGrid3DBTableView1StationSapCode: TcxGridDBColumn
            DataBinding.FieldName = 'Station.SapCode'
          end
          object cxGrid3DBTableView1SumAmount: TcxGridDBColumn
            DataBinding.FieldName = 'SumAmount'
          end
          object cxGrid3DBTableView1SapAmount: TcxGridDBColumn
            DataBinding.FieldName = 'SapAmount'
          end
          object cxGrid3DBTableView1Status: TcxGridDBColumn
            DataBinding.FieldName = 'Status'
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
        end
      end
    end
    object dxTabSheet3: TcxTabSheet
      Caption = 'Memo'
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 731
        Height = 265
        Align = alTop
        Lines.Strings = (
          '')
        TabOrder = 0
      end
      object Memo2: TMemo
        Left = 0
        Top = 274
        Width = 731
        Height = 274
        Align = alBottom
        Lines.Strings = (
          '')
        TabOrder = 1
      end
    end
  end
  object ActionToolBar1: TActionToolBar [1]
    Left = 0
    Top = 0
    Width = 731
    Height = 23
    ActionManager = dxBarManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  object dxBarManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actClose
          end
          item
            Action = actEnhmStation
          end
          item
            Action = actCheckPelaSap
            Caption = #928#949#955#940#964#949#962' &SAP'
          end
          item
            Action = actCheckPratSap
            Caption = #928#961#945#964#942#961#953#945' S&AP'
          end
          item
            Action = Action1
          end
          item
            Action = Action4
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 584
    StyleName = 'Platform Default'
  end
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT [Acard.CustomerId],'
      '             [Customer.SapCode],'
      '             [Tran.MerchantId],'
      '            [Merchant.SapCode],  '
      '            Sum([Tran.Amount]) AS SumAmount,'
      '            Sum([Tran.Quantity]) AS SumQuantity'
      'FROM V_TRAN_FOR_ENHM'
      '')
    Left = 224
    Top = 304
    object qryTranAcardCustomerId: TIntegerField
      FieldName = 'Acard.CustomerId'
    end
    object qryTranCustomerSapCode: TWideStringField
      FieldName = 'Customer.SapCode'
      Size = 10
    end
    object qryTranTranMerchantId: TIntegerField
      FieldName = 'Tran.MerchantId'
    end
    object qryTranMerchantSapCode: TWideStringField
      FieldName = 'Merchant.SapCode'
      Size = 10
    end
    object qryTranSumAmount: TFloatField
      FieldName = 'SumAmount'
      ReadOnly = True
    end
    object qryTranSumQuantity: TFloatField
      FieldName = 'SumQuantity'
      ReadOnly = True
    end
    object qryTranLDiak: TStringField
      FieldKind = fkLookup
      FieldName = 'LDiak'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'SapCode'
      LookupResultField = 'DiakId'
      KeyFields = 'Customer.SapCode'
      Lookup = True
    end
    object qryTranLDiakSap: TStringField
      FieldKind = fkLookup
      FieldName = 'LDiakSap'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'SapCode'
      LookupResultField = 'LDiakSap'
      KeyFields = 'Customer.SapCode'
      Lookup = True
    end
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 272
    Top = 304
  end
  object qryMerchant: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsTran
    Parameters = <>
    SQL.Strings = (
      'SELECT MerchantId, Name, SAPCode'
      'FROM Merchant'
      '')
    Left = 304
    Top = 216
    object qryMerchantMerchantId: TAutoIncField
      FieldName = 'MerchantId'
      ReadOnly = True
    end
    object qryMerchantName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object qryMerchantSAPCode: TWideStringField
      FieldName = 'SAPCode'
      Size = 10
    end
  end
  object qryCustomer: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsTran
    Parameters = <>
    SQL.Strings = (
      'SELECT CUSTOMERID, NAME, SAPCode, DiakId'
      'FROM CUSTOMER'
      '')
    Left = 216
    Top = 216
    object qryCustomerLDiakSap: TStringField
      FieldKind = fkLookup
      FieldName = 'LDiakSap'
      LookupDataSet = qryDiak
      LookupKeyFields = 'DiakID'
      LookupResultField = 'DiakSAP'
      KeyFields = 'DiakId'
      Lookup = True
    end
    object qryCustomerCUSTOMERID: TAutoIncField
      FieldName = 'CUSTOMERID'
      ReadOnly = True
    end
    object qryCustomerNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object qryCustomerSAPCode: TWideStringField
      FieldName = 'SAPCode'
      Size = 10
    end
    object qryCustomerDiakId: TIntegerField
      FieldName = 'DiakId'
    end
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 240
    Top = 112
    object actEnhmStation: TAction
      Caption = #917#957#951#956#941#961#969#963#951' '#922#953#957#942#963#949#969#957
      OnExecute = actEnhmStationExecute
    end
    object actClose: TAction
      Caption = #917#958#972#948#959#962
      OnExecute = actCloseExecute
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
      OnExecute = UpdateActionsExecute
    end
    object actCheckPelaSap: TAction
      Caption = #928#949#955#940#964#949#962' SAP'
      OnExecute = actCheckPelaSapExecute
    end
    object actCheckPratSap: TAction
      Caption = #928#961#945#964#942#961#953#945' SAP'
      OnExecute = actCheckPratSapExecute
    end
    object Action1: TAction
      Caption = #928#949#955#940#964#949#962'/'#928#961#945#964#942#961#953#945
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = #928#949#955#940#964#949#962' SAP'
      OnExecute = Action2Execute
    end
    object Action3: TAction
      Caption = #928#961#945#964#942#961#953#945' SAP'
      OnExecute = Action3Execute
    end
    object Action4: TAction
      Caption = #917#954#964#973#960#969#963#951
      OnExecute = Action4Execute
    end
  end
  object EnhmSap: TADOTable
    AutoCalcFields = False
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=ToSap' +
      'PelDef'
    CursorType = ctStatic
    TableDirect = True
    TableName = 'ToSapPel.txt'
    Left = 408
    Top = 184
    object EnhmSapCodePrat: TIntegerField
      FieldName = 'CodePrat'
    end
    object EnhmSapCodeCust: TIntegerField
      FieldName = 'CodeCust'
    end
    object EnhmSapAmount: TIntegerField
      FieldName = 'Amount'
    end
    object EnhmSapNeg: TIntegerField
      FieldName = 'Neg'
    end
    object EnhmSapSText: TStringField
      FieldName = 'SText'
      Size = 50
    end
    object EnhmSapLOGARDATE: TStringField
      FieldName = 'LOGARDATE'
      Size = 8
    end
    object EnhmSapDIAK: TIntegerField
      FieldName = 'DIAK'
    end
  end
  object EnhmTrans: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'BTUpd'
        Attributes = [paNullable]
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = True
      end
      item
        Name = 'BTStation'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'UPDATE V_TRAN_FOR_ENHM'
      
        'SET [TRAN.STATIONUPD] = :BTUpd , [TRAN.STATIONUPDBT] = :BTStatio' +
        'n')
    Left = 48
    Top = 192
  end
  object InsTrans: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsTran
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM TRANS')
    Left = 40
    Top = 128
    object InsTransTRANSID: TAutoIncField
      FieldName = 'TRANSID'
      ReadOnly = True
    end
    object InsTransSTATIONID: TIntegerField
      FieldName = 'STATIONID'
    end
    object InsTransDEBIT: TFloatField
      FieldName = 'DEBIT'
    end
    object InsTransCREDIT: TFloatField
      FieldName = 'CREDIT'
    end
    object InsTransTTEXT: TWideStringField
      FieldName = 'TTEXT'
      Size = 50
    end
    object InsTransTRANSDATE: TDateTimeField
      FieldName = 'TRANSDATE'
    end
    object InsTransTRANBSID: TIntegerField
      FieldName = 'TRANBSID'
    end
    object InsTransINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object InsTransUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object InsTransINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object InsTransUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object InsTransCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
  end
  object qryDeleteTranS: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PTranBSID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Delete From TranS '
      'Where TranBSID = :PTranBSID')
    Left = 48
    Top = 256
    object IntegerField3: TIntegerField
      FieldName = 'Acard.CustomerId'
    end
    object WideStringField3: TWideStringField
      FieldName = 'Customer.SapCode'
      Size = 10
    end
    object IntegerField4: TIntegerField
      FieldName = 'Tran.StationId'
    end
    object WideStringField4: TWideStringField
      FieldName = 'Station.SapCode'
      Size = 10
    end
    object FloatField3: TFloatField
      FieldName = 'SumAmount'
    end
    object FloatField4: TFloatField
      FieldName = 'SumQuantity'
    end
    object StringField3: TStringField
      FieldKind = fkLookup
      FieldName = 'CustomerDescr'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'NAME'
      KeyFields = 'Acard.CustomerId'
      Lookup = True
    end
    object StringField4: TStringField
      FieldKind = fkLookup
      FieldName = 'StationDescr'
      LookupDataSet = qryMerchant
      LookupKeyFields = 'STATIONID'
      LookupResultField = 'NAME'
      KeyFields = 'Tran.StationId'
      LookupCache = True
      Lookup = True
    end
  end
  object qrySumPela: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT  [Customer.SapCode] ,'
      '               Sum([Tran.Amount]) AS SumAmount'
      'FROM V_TRAN_FOR_ENHM'
      '')
    Left = 560
    Top = 376
    object qrySumPelaCustomerSapCode: TWideStringField
      FieldName = 'Customer.SapCode'
      Size = 10
    end
    object qrySumPelaSumAmount: TFloatField
      FieldName = 'SumAmount'
      ReadOnly = True
    end
  end
  object qrySumPrat: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT [Merchant.SapCode],'
      '              Sum([Tran.Amount]) AS SumAmount'
      'FROM V_TRAN_FOR_ENHM'
      '')
    Left = 464
    Top = 376
    object qrySumPratMerchantSapCode: TWideStringField
      FieldName = 'Merchant.SapCode'
      Size = 10
    end
    object qrySumPratSumAmount: TFloatField
      FieldName = 'SumAmount'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 240
    Top = 376
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 312
    Top = 376
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FileName = '.\cds1.xml'
    FieldDefs = <
      item
        Name = 'CustomerDescr'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Acard.CustomerId'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'Customer.SapCode'
        Attributes = [faUnNamed]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SumAmount'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'SapAmount'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'Status'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 56
    Top = 376
    object ClientDataSet1LCustomerDesc: TStringField
      FieldKind = fkLookup
      FieldName = 'CustomerDesc'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'SAPCODE'
      LookupResultField = 'NAME'
      KeyFields = 'Customer.SapCode'
      Lookup = True
    end
    object ClientDataSet1CustomerId: TStringField
      DisplayWidth = 5
      FieldKind = fkLookup
      FieldName = 'CustomerId'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'SAPCODE'
      LookupResultField = 'CUSTOMERID'
      KeyFields = 'Customer.SapCode'
      Lookup = True
    end
    object ClientDataSet1CustomerSapCode: TWideStringField
      FieldName = 'Customer.SapCode'
      Size = 10
    end
    object ClientDataSet1SumAmount: TFloatField
      FieldName = 'SumAmount'
      currency = True
    end
    object ClientDataSet1SapAmount: TFloatField
      FieldName = 'SapAmount'
      currency = True
    end
    object ClientDataSet1Status: TIntegerField
      FieldName = 'Status'
    end
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    FileName = '.\cds2.xml'
    FieldDefs = <
      item
        Name = 'StationDescr'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Tran.StationId'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'Station.SapCode'
        Attributes = [faUnNamed]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'SumAmount'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'SapAmount'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'Status'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 160
    Top = 376
    object ClientDataSet2StationDescr: TStringField
      FieldKind = fkLookup
      FieldName = 'StationDescr'
      LookupDataSet = qryMerchant
      LookupKeyFields = 'SAPCode'
      LookupResultField = 'NAME'
      KeyFields = 'Station.SapCode'
      Lookup = True
    end
    object ClientDataSet2StationId: TStringField
      FieldKind = fkLookup
      FieldName = 'StationId'
      LookupDataSet = qryMerchant
      LookupKeyFields = 'SAPCODE'
      LookupResultField = 'MerchantId'
      KeyFields = 'Station.SapCode'
      Size = 5
      Lookup = True
    end
    object ClientDataSet2StationSapCode: TWideStringField
      FieldName = 'Station.SapCode'
      LookupDataSet = qryMerchant
      LookupKeyFields = 'MerchantId'
      LookupResultField = 'SAPCode'
      Size = 10
    end
    object ClientDataSet2SumAmount: TFloatField
      FieldName = 'SumAmount'
      currency = True
    end
    object ClientDataSet2SapAmount: TFloatField
      FieldName = 'SapAmount'
      currency = True
    end
    object ClientDataSet2Status: TIntegerField
      FieldName = 'Status'
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    Version = 0
    Left = 592
    Top = 216
  end
  object qryDiak: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    EnableBCD = False
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'SELECT  *'
      'FROM Diak'
      '')
    Left = 544
    Top = 144
    object qryDiakDiakID: TIntegerField
      FieldName = 'DiakID'
      ReadOnly = True
    end
    object qryDiakDescr: TWideStringField
      FieldName = 'Descr'
    end
    object qryDiakDiakDays: TIntegerField
      FieldName = 'DiakDays'
    end
    object qryDiakDiakSAP: TIntegerField
      FieldName = 'DiakSAP'
    end
    object qryDiakInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryDiakInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryDiakUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qryDiakUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qryDiakDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryDiakDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryDiakDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryDiakInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryDiakInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryDiakInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
end
