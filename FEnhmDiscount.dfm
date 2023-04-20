inherited frmFEnhmDiscount: TfrmFEnhmDiscount
  Caption = #917#957#951#956#941#961#969#963#951' '#917#954#960#964#974#963#951#962
  ClientHeight = 602
  ClientWidth = 830
  OldCreateOrder = True
  OnCreate = FormCreate
  ExplicitWidth = 838
  ExplicitHeight = 629
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar [0]
    Left = 0
    Top = 583
    Width = 830
    Height = 19
    Panels = <
      item
        Width = 200
      end>
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 528
    Width = 830
    Height = 55
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 3
      Height = 13
    end
    object Label2: TLabel
      Left = 88
      Top = 16
      Width = 3
      Height = 13
    end
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 38
      Width = 828
      Height = 16
      Align = alBottom
      TabOrder = 0
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 23
    Width = 830
    Height = 505
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 828
      Height = 503
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #913#957#945#955#965#964#953#954#940' '#931#964#959#953#967#949#943#945
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 820
          Height = 475
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
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
            DataController.DetailKeyFieldNames = 'TRAN.TRANID'
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
            object cxGrid1DBTableView1AcardCustomerId: TcxGridDBColumn
              DataBinding.FieldName = 'Acard.CustomerId'
            end
            object cxGrid1DBTableView1CustomerSapCode: TcxGridDBColumn
              DataBinding.FieldName = 'Customer.SapCode'
            end
            object cxGrid1DBTableView1TranStationId: TcxGridDBColumn
              DataBinding.FieldName = 'Tran.StationId'
            end
            object cxGrid1DBTableView1CustomerIsTest: TcxGridDBColumn
              DataBinding.FieldName = 'Customer.IsTest'
            end
            object cxGrid1DBTableView1StationIsTest: TcxGridDBColumn
              DataBinding.FieldName = 'Station.IsTest'
            end
            object cxGrid1DBTableView1MerchantIsTest: TcxGridDBColumn
              DataBinding.FieldName = 'Merchant.IsTest'
            end
            object cxGrid1DBTableView1MerchantSAPCode: TcxGridDBColumn
              DataBinding.FieldName = 'Merchant.SAPCode'
            end
            object cxGrid1DBTableView1TRANMerchantId: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.MerchantId'
            end
            object cxGrid1DBTableView1TranTranDate: TcxGridDBColumn
              DataBinding.FieldName = 'Tran.TranDate'
            end
            object cxGrid1DBTableView1TranAmount: TcxGridDBColumn
              DataBinding.FieldName = 'Tran.Amount'
            end
            object cxGrid1DBTableView1TranSitemId: TcxGridDBColumn
              DataBinding.FieldName = 'Tran.SitemId'
            end
            object cxGrid1DBTableView1TranQuantity: TcxGridDBColumn
              DataBinding.FieldName = 'Tran.Quantity'
            end
            object cxGrid1DBTableView1TranPELADAILYUPD: TcxGridDBColumn
              DataBinding.FieldName = 'Tran.PELADAILYUPD'
            end
            object cxGrid1DBTableView1TranPELADAILYUPDBT: TcxGridDBColumn
              DataBinding.FieldName = 'Tran.PELADAILYUPDBT'
            end
            object cxGrid1DBTableView1TranDISCOUNTUPDBT: TcxGridDBColumn
              DataBinding.FieldName = 'Tran.DISCOUNTUPDBT'
            end
            object cxGrid1DBTableView1TranDISCOUNTUPD: TcxGridDBColumn
              DataBinding.FieldName = 'Tran.DISCOUNTUPD'
            end
            object cxGrid1DBTableView1TranTranTime: TcxGridDBColumn
              DataBinding.FieldName = 'Tran.TranTime'
            end
            object cxGrid1DBTableView1TranCOMMISSIONUPDBT: TcxGridDBColumn
              DataBinding.FieldName = 'Tran.COMMISSIONUPDBT'
            end
            object cxGrid1DBTableView1TranACARDUPDBT: TcxGridDBColumn
              DataBinding.FieldName = 'Tran.ACARDUPDBT'
            end
            object cxGrid1DBTableView1TranSTATIONUPDBT: TcxGridDBColumn
              DataBinding.FieldName = 'Tran.STATIONUPDBT'
            end
            object cxGrid1DBTableView1TranCOMMISSIONUPD: TcxGridDBColumn
              DataBinding.FieldName = 'Tran.COMMISSIONUPD'
            end
            object cxGrid1DBTableView1TranBatchNo: TcxGridDBColumn
              DataBinding.FieldName = 'Tran.BatchNo'
            end
            object cxGrid1DBTableView1TranACARDUPD: TcxGridDBColumn
              DataBinding.FieldName = 'Tran.ACARDUPD'
            end
            object cxGrid1DBTableView1TranSTATIONUPD: TcxGridDBColumn
              DataBinding.FieldName = 'Tran.STATIONUPD'
            end
            object cxGrid1DBTableView1TranIsAuto: TcxGridDBColumn
              DataBinding.FieldName = 'Tran.IsAuto'
            end
            object cxGrid1DBTableView1SITEMIGROUPID: TcxGridDBColumn
              DataBinding.FieldName = 'SITEM.IGROUPID'
            end
            object cxGrid1DBTableView1SITEMICLASSID: TcxGridDBColumn
              DataBinding.FieldName = 'SITEM.ICLASSID'
            end
            object cxGrid1DBTableView1TRANACARDID: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.ACARDID'
            end
            object cxGrid1DBTableView1TRANDISQUANTITY: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.DISQUANTITY'
            end
            object cxGrid1DBTableView1TRANDISAMOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.DISAMOUNT'
            end
            object cxGrid1DBTableView1TRANTRANID: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.TRANID'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Tran D'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 820
          Height = 475
          Align = alClient
          TabOrder = 0
          object cxGrid2DBTableView1: TcxGridDBTableView
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
            DataController.DetailKeyFieldNames = 'EMPLOYEESID'
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
            object cxGrid2DBTableView1DISCOUNTUPDBT: TcxGridDBColumn
              DataBinding.FieldName = 'DISCOUNTUPDBT'
            end
            object cxGrid2DBTableView1SumOfDISQUANTITY: TcxGridDBColumn
              DataBinding.FieldName = 'SumOfDISQUANTITY'
            end
            object cxGrid2DBTableView1SumOfDISAMOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'SumOfDISAMOUNT'
            end
            object cxGrid2DBTableView1SumOfAMOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'SumOfAMOUNT'
            end
            object cxGrid2DBTableView1SumOfQUANTITY: TcxGridDBColumn
              DataBinding.FieldName = 'SumOfQUANTITY'
            end
            object cxGrid2DBTableView1CUSTOMERID: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMERID'
            end
            object cxGrid2DBTableView1EMPLOYEESID: TcxGridDBColumn
              DataBinding.FieldName = 'EMPLOYEESID'
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Tran C'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid3: TcxGrid
          Left = 0
          Top = 0
          Width = 820
          Height = 475
          Align = alClient
          TabOrder = 0
          object cxGrid3DBTableView1: TcxGridDBTableView
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
            DataController.DetailKeyFieldNames = 'CUSTOMERID'
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
            object cxGrid3DBTableView1DISCOUNTUPDBT: TcxGridDBColumn
              DataBinding.FieldName = 'DISCOUNTUPDBT'
            end
            object cxGrid3DBTableView1SumOfDISQUANTITY: TcxGridDBColumn
              DataBinding.FieldName = 'SumOfDISQUANTITY'
            end
            object cxGrid3DBTableView1SumOfDISAMOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'SumOfDISAMOUNT'
            end
            object cxGrid3DBTableView1SumOfAMOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'SumOfAMOUNT'
            end
            object cxGrid3DBTableView1SumOfQUANTITY: TcxGridDBColumn
              DataBinding.FieldName = 'SumOfQUANTITY'
            end
            object cxGrid3DBTableView1CUSTOMERID: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMERID'
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBTableView1
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = #917#954#960#964#974#963#949#953#962
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid4: TcxGrid
          Left = 0
          Top = 0
          Width = 820
          Height = 475
          Align = alClient
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
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
            DataController.DataSource = DataSource3
            DataController.DetailKeyFieldNames = 'ID'
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
            object cxGridDBTableView1RecId: TcxGridDBColumn
              DataBinding.FieldName = 'RecId'
              Visible = False
            end
            object cxGridDBTableView1SITEMID: TcxGridDBColumn
              DataBinding.FieldName = 'SITEMID'
            end
            object cxGridDBTableView1CUSTOMERID: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMERID'
            end
            object cxGridDBTableView1FROMDATE: TcxGridDBColumn
              DataBinding.FieldName = 'FROMDATE'
            end
            object cxGridDBTableView1DISCOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'DISCOUNT'
            end
            object cxGridDBTableView1ID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
  end
  object ActionToolBar1: TActionToolBar [3]
    Left = 0
    Top = 0
    Width = 830
    Height = 23
    ActionManager = dxBarManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  inherited popFilter: TPopupMenu
    Left = 372
    Top = 123
  end
  inherited ActionMainList: TActionList
    inherited actDispAllActions: TAction
      ShortCut = 8315
    end
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 376
  end
  object qryTran: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT     *'
      'FROM        V_TRAN_FOR_ENHM')
    Left = 432
    object qryTranAcardCustomerId: TIntegerField
      FieldName = 'Acard.CustomerId'
    end
    object qryTranCustomerSapCode: TWideStringField
      FieldName = 'Customer.SapCode'
      Size = 10
    end
    object qryTranTranStationId: TIntegerField
      FieldName = 'Tran.StationId'
    end
    object qryTranCustomerIsTest: TBooleanField
      FieldName = 'Customer.IsTest'
    end
    object qryTranStationIsTest: TBooleanField
      FieldName = 'Station.IsTest'
    end
    object qryTranMerchantIsTest: TBooleanField
      FieldName = 'Merchant.IsTest'
    end
    object qryTranMerchantSAPCode: TWideStringField
      FieldName = 'Merchant.SAPCode'
      Size = 10
    end
    object qryTranTRANMerchantId: TIntegerField
      FieldName = 'TRAN.MerchantId'
    end
    object qryTranTranTranDate: TDateTimeField
      FieldName = 'Tran.TranDate'
    end
    object qryTranTranAmount: TFloatField
      FieldName = 'Tran.Amount'
    end
    object qryTranTranSitemId: TIntegerField
      FieldName = 'Tran.SitemId'
    end
    object qryTranTranQuantity: TFloatField
      FieldName = 'Tran.Quantity'
    end
    object qryTranTranPELADAILYUPD: TBooleanField
      FieldName = 'Tran.PELADAILYUPD'
    end
    object qryTranTranPELADAILYUPDBT: TIntegerField
      FieldName = 'Tran.PELADAILYUPDBT'
    end
    object qryTranTranDISCOUNTUPDBT: TIntegerField
      FieldName = 'Tran.DISCOUNTUPDBT'
    end
    object qryTranTranDISCOUNTUPD: TBooleanField
      FieldName = 'Tran.DISCOUNTUPD'
    end
    object qryTranTranTranTime: TDateTimeField
      FieldName = 'Tran.TranTime'
    end
    object qryTranTranCOMMISSIONUPDBT: TIntegerField
      FieldName = 'Tran.COMMISSIONUPDBT'
    end
    object qryTranTranACARDUPDBT: TIntegerField
      FieldName = 'Tran.ACARDUPDBT'
    end
    object qryTranTranSTATIONUPDBT: TIntegerField
      FieldName = 'Tran.STATIONUPDBT'
    end
    object qryTranTranCOMMISSIONUPD: TBooleanField
      FieldName = 'Tran.COMMISSIONUPD'
    end
    object qryTranTranBatchNo: TIntegerField
      FieldName = 'Tran.BatchNo'
    end
    object qryTranTranACARDUPD: TBooleanField
      FieldName = 'Tran.ACARDUPD'
    end
    object qryTranTranSTATIONUPD: TBooleanField
      FieldName = 'Tran.STATIONUPD'
    end
    object qryTranTranIsAuto: TBooleanField
      FieldName = 'Tran.IsAuto'
    end
    object qryTranSITEMIGROUPID: TIntegerField
      FieldName = 'SITEM.IGROUPID'
    end
    object qryTranSITEMICLASSID: TIntegerField
      FieldName = 'SITEM.ICLASSID'
    end
    object qryTranTRANACARDID: TIntegerField
      FieldName = 'TRAN.ACARDID'
    end
    object qryTranTRANDISQUANTITY: TFloatField
      FieldName = 'TRAN.DISQUANTITY'
    end
    object qryTranTRANDISAMOUNT: TFloatField
      FieldName = 'TRAN.DISAMOUNT'
    end
    object qryTranTRANTRANID: TIntegerField
      FieldName = 'TRAN.TRANID'
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = dtsTran
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM CUSTOMER'
      '')
    Left = 536
    Top = 104
    object ADOQuery1CUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
      ReadOnly = True
    end
    object ADOQuery1NAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object ADOQuery1STREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object ADOQuery1ZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object ADOQuery1CITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object ADOQuery1AFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object ADOQuery1DOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object ADOQuery1STARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object ADOQuery1AREAID: TIntegerField
      FieldName = 'AREAID'
    end
    object ADOQuery1LOCATIONID: TIntegerField
      FieldName = 'LOCATIONID'
    end
    object ADOQuery1CGROUPID: TIntegerField
      FieldName = 'CGROUPID'
    end
    object ADOQuery1CCLASSID: TIntegerField
      FieldName = 'CCLASSID'
    end
    object ADOQuery1CREDITAMOUNT: TFloatField
      FieldName = 'CREDITAMOUNT'
    end
    object ADOQuery1INSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object ADOQuery1UPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object ADOQuery1INSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object ADOQuery1UPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object ADOQuery1PROFESSION: TWideStringField
      FieldName = 'PROFESSION'
      Size = 50
    end
    object ADOQuery1BRANCHID: TIntegerField
      FieldName = 'BRANCHID'
    end
    object ADOQuery1SAPCODE: TWideStringField
      FieldName = 'SAPCODE'
      Size = 10
    end
    object ADOQuery1ISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object ADOQuery1SALESMENID: TIntegerField
      FieldName = 'SALESMENID'
    end
    object ADOQuery1DIAKID: TIntegerField
      FieldName = 'DIAKID'
    end
    object ADOQuery1ISTEST: TBooleanField
      FieldName = 'ISTEST'
    end
    object ADOQuery1ISCONS: TBooleanField
      FieldName = 'ISCONS'
    end
    object ADOQuery1AREABID: TIntegerField
      FieldName = 'AREABID'
    end
    object ADOQuery1DATEPHEND: TDateTimeField
      FieldName = 'DATEPHEND'
    end
    object ADOQuery1DATELOEND: TDateTimeField
      FieldName = 'DATELOEND'
    end
    object ADOQuery1HASDETAILEMP: TBooleanField
      FieldName = 'HASDETAILEMP'
    end
    object ADOQuery1ALLCARDSTOBL: TBooleanField
      FieldName = 'ALLCARDSTOBL'
    end
    object ADOQuery1ALLCARDSTOBLDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLDATE'
    end
    object ADOQuery1ALLCARDSTOBLSYSDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLSYSDATE'
    end
    object ADOQuery1ALLCARDSTOBLUSR: TIntegerField
      FieldName = 'ALLCARDSTOBLUSR'
    end
    object ADOQuery1CUSTOMEROFF: TBooleanField
      FieldName = 'CUSTOMEROFF'
    end
    object ADOQuery1CUSTOMEROFFDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFDATE'
    end
    object ADOQuery1CUSTOMEROFFSYSDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFSYSDATE'
    end
    object ADOQuery1CUSTOMEROFFUSR: TIntegerField
      FieldName = 'CUSTOMEROFFUSR'
    end
    object ADOQuery1CARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object ADOQuery1DATEEND: TDateTimeField
      FieldName = 'DATEEND'
    end
    object ADOQuery1CompanyTypeId: TIntegerField
      FieldName = 'CompanyTypeId'
    end
    object ADOQuery1GarantieId: TIntegerField
      FieldName = 'GarantieId'
    end
    object ADOQuery1GarantieAmount: TFloatField
      FieldName = 'GarantieAmount'
    end
    object ADOQuery1Comments: TMemoField
      FieldName = 'Comments'
      BlobType = ftMemo
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
            Action = actEnhmDiscount
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 456
    Top = 120
    StyleName = 'Platform Default'
  end
  object ActionList1: TActionList
    Left = 304
    Top = 120
    object actEnhmDiscount: TAction
      Caption = #917#957#951#956#941#961#969#963#951' '#922#953#957#942#963#949#969#957
      OnExecute = actEnhmDiscountExecute
    end
    object actClose: TAction
      Caption = #917#958#972#948#959#962
      OnExecute = actCloseExecute
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
    end
  end
  object FindStation: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'Id'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM STATION'
      'Where StationID = Id'
      '')
    Left = 32
    Top = 128
  end
  object FindIGroup: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM IGroup'
      'Order By IGroupID'
      '')
    Left = 112
    Top = 128
    object FindIGroupIGROUPID: TAutoIncField
      FieldName = 'IGROUPID'
      ReadOnly = True
    end
    object FindIGroupDESCR: TWideStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object FindIGroupINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object FindIGroupUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object FindIGroupINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object FindIGroupUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object FindIGroupBITNO: TIntegerField
      FieldName = 'BITNO'
    end
    object FindIGroupPOSOSTO: TFloatField
      FieldName = 'POSOSTO'
    end
  end
  object EnhmTrans: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'BTUPD'
        Attributes = [paNullable]
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = True
      end
      item
        Name = 'BTCommission'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'UPDATE V_TRAN_FOR_ENHM'
      
        'SET [Tran.DISCOUNTUPD] = :BTUPD , [Tran.DISCOUNTUPDBT] = :BTComm' +
        'ission')
    Left = 64
    Top = 264
  end
  object qryDeleteTranD: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PTranDCoID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Delete From TranD '
      'Where TranDCID = :PTranDCoID')
    Left = 64
    Top = 344
  end
  object InsTranD: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM TRAND')
    Left = 576
    Top = 224
    object InsTranDTRANDID: TAutoIncField
      FieldName = 'TRANDID'
      ReadOnly = True
    end
    object InsTranDCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object InsTranDEMPLOYEEID: TIntegerField
      FieldName = 'EMPLOYEEID'
    end
    object InsTranDDEBIT: TBCDField
      FieldName = 'DEBIT'
      Precision = 19
    end
    object InsTranDCREDIT: TBCDField
      FieldName = 'CREDIT'
      Precision = 19
    end
    object InsTranDTTEXT: TWideStringField
      FieldName = 'TTEXT'
      Size = 50
    end
    object InsTranDTRANDDATE: TDateTimeField
      FieldName = 'TRANDDATE'
    end
    object InsTranDTRANDCID: TIntegerField
      FieldName = 'TRANDCID'
    end
    object InsTranDINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object InsTranDUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object InsTranDINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object InsTranDUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object qrySumTranD: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PDISUPDBT'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT [TRAN].DISCOUNTUPDBT    As [DISCOUNTUPDBT],'
      '       Sum([TRAN].DISQUANTITY) As SumOfDISQUANTITY,'
      '       Sum([TRAN].DISAMOUNT)   As SumOfDISAMOUNT,'
      '       Sum([TRAN].AMOUNT)      As SumOfAMOUNT,'
      '       Sum([TRAN].QUANTITY)    As SumOfQUANTITY,'
      '       ACARD.CUSTOMERID        As [CUSTOMERID],'
      '       EMPLOYEESID             As [EMPLOYEESID]'
      'FROM [TRAN] INNER JOIN ACARD ON [TRAN].ACARDID=ACARD.ACARDID'
      'WHERE [TRAN].DISCOUNTUPDBT = :PDISUPDBT'
      
        'GROUP BY [TRAN].DISCOUNTUPDBT, ACARD.CUSTOMERID, ACARD.EMPLOYEES' +
        'ID;')
    Left = 384
    Top = 312
    object qrySumTranDDISCOUNTUPDBT: TIntegerField
      FieldName = 'DISCOUNTUPDBT'
    end
    object qrySumTranDSumOfDISQUANTITY: TFloatField
      FieldName = 'SumOfDISQUANTITY'
    end
    object qrySumTranDSumOfDISAMOUNT: TFloatField
      FieldName = 'SumOfDISAMOUNT'
    end
    object qrySumTranDSumOfAMOUNT: TFloatField
      FieldName = 'SumOfAMOUNT'
    end
    object qrySumTranDSumOfQUANTITY: TFloatField
      FieldName = 'SumOfQUANTITY'
    end
    object qrySumTranDCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qrySumTranDEMPLOYEESID: TIntegerField
      FieldName = 'EMPLOYEESID'
    end
  end
  object qStation: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM STATION'
      ''
      '')
    Left = 192
    Top = 128
    object qStationStationid: TIntegerField
      FieldName = 'Stationid'
      ReadOnly = True
    end
    object qStationName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object qStationSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object qStationZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qStationCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qStationAreaId: TIntegerField
      FieldName = 'AreaId'
    end
    object qStationSalesMenId: TIntegerField
      FieldName = 'SalesMenId'
    end
    object qStationIGroupId1: TIntegerField
      FieldName = 'IGroupId1'
    end
    object qStationPososto1: TFloatField
      FieldName = 'Pososto1'
    end
    object qStationHaveGroup1: TBooleanField
      FieldName = 'HaveGroup1'
    end
    object qStationIGroupId2: TIntegerField
      FieldName = 'IGroupId2'
    end
    object qStationPososto2: TFloatField
      FieldName = 'Pososto2'
    end
    object qStationHaveGroup2: TBooleanField
      FieldName = 'HaveGroup2'
    end
    object qStationIGroupId3: TIntegerField
      FieldName = 'IGroupId3'
    end
    object qStationPososto3: TFloatField
      FieldName = 'Pososto3'
    end
    object qStationHaveGroup3: TBooleanField
      FieldName = 'HaveGroup3'
    end
    object qStationIGroupId4: TIntegerField
      FieldName = 'IGroupId4'
    end
    object qStationPososto4: TFloatField
      FieldName = 'Pososto4'
    end
    object qStationHaveGroup4: TBooleanField
      FieldName = 'HaveGroup4'
    end
    object qStationIGroupId5: TIntegerField
      FieldName = 'IGroupId5'
    end
    object qStationPososto5: TFloatField
      FieldName = 'Pososto5'
    end
    object qStationHaveGroup5: TBooleanField
      FieldName = 'HaveGroup5'
    end
    object qStationIGroupId6: TIntegerField
      FieldName = 'IGroupId6'
    end
    object qStationPososto6: TFloatField
      FieldName = 'Pososto6'
    end
    object qStationHaveGroup6: TBooleanField
      FieldName = 'HaveGroup6'
    end
    object qStationIGroupId7: TIntegerField
      FieldName = 'IGroupId7'
    end
    object qStationPososto7: TFloatField
      FieldName = 'Pososto7'
    end
    object qStationHaveGroup7: TBooleanField
      FieldName = 'HaveGroup7'
    end
    object qStationIGroupId8: TIntegerField
      FieldName = 'IGroupId8'
    end
    object qStationPososto8: TFloatField
      FieldName = 'Pososto8'
    end
    object qStationHaveGroup8: TBooleanField
      FieldName = 'HaveGroup8'
    end
    object qStationIGroupId9: TIntegerField
      FieldName = 'IGroupId9'
    end
    object qStationPososto9: TFloatField
      FieldName = 'Pososto9'
    end
    object qStationHaveGroup9: TBooleanField
      FieldName = 'HaveGroup9'
    end
    object qStationIGroupId10: TIntegerField
      FieldName = 'IGroupId10'
    end
    object qStationPososto10: TFloatField
      FieldName = 'Pososto10'
    end
    object qStationHaveGroup10: TBooleanField
      FieldName = 'HaveGroup10'
    end
    object qStationDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qStationDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qStationDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qStationInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qStationInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qStationInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object qStationStopSales: TBooleanField
      FieldName = 'StopSales'
    end
    object qStationStopSalesUsr: TIntegerField
      FieldName = 'StopSalesUsr'
    end
    object qStationStopSalesDt: TDateTimeField
      FieldName = 'StopSalesDt'
    end
    object qStationIsTest: TBooleanField
      FieldName = 'IsTest'
    end
    object qStationIsTestUsr: TIntegerField
      FieldName = 'IsTestUsr'
    end
    object qStationIsTestDt: TDateTimeField
      FieldName = 'IsTestDt'
    end
    object qStationEndPending: TBooleanField
      FieldName = 'EndPending'
    end
    object qStationEndPendingDT: TDateTimeField
      FieldName = 'EndPendingDT'
    end
    object qStationEndPendingUsr: TIntegerField
      FieldName = 'EndPendingUsr'
    end
  end
  object qryACard: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM ACard'
      '')
    Left = 752
    Top = 200
    object qryACardACARDID: TAutoIncField
      FieldName = 'ACARDID'
      ReadOnly = True
    end
    object qryACardACARDCODE: TWideStringField
      FieldName = 'ACARDCODE'
      Size = 50
    end
    object qryACardCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qryACardISSUEDATE: TDateTimeField
      FieldName = 'ISSUEDATE'
    end
    object qryACardEXPIREDATE: TDateTimeField
      FieldName = 'EXPIREDATE'
    end
    object qryACardMETERBOOLEAN: TBooleanField
      FieldName = 'METERBOOLEAN'
    end
    object qryACardPINBOOLEAN: TBooleanField
      FieldName = 'PINBOOLEAN'
    end
    object qryACardINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryACardUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryACardINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryACardUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryACardSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qryACardVTYPEID: TIntegerField
      FieldName = 'VTYPEID'
    end
    object qryACardCREATEBOOLEAN: TBooleanField
      FieldName = 'CREATEBOOLEAN'
    end
    object qryACardBLACKLISTBOOLEAN: TBooleanField
      FieldName = 'BLACKLISTBOOLEAN'
    end
    object qryACardBLACKLISTDATE: TDateTimeField
      FieldName = 'BLACKLISTDATE'
    end
    object qryACardBLACKLISTUSR: TIntegerField
      FieldName = 'BLACKLISTUSR'
    end
    object qryACardBLACKLISTNOTES: TWideStringField
      FieldName = 'BLACKLISTNOTES'
      Size = 200
    end
    object qryACardIGROUPID1: TIntegerField
      FieldName = 'IGROUPID1'
    end
    object qryACardIGROUPID2: TIntegerField
      FieldName = 'IGROUPID2'
    end
    object qryACardIGROUPID3: TIntegerField
      FieldName = 'IGROUPID3'
    end
    object qryACardIGROUPID4: TIntegerField
      FieldName = 'IGROUPID4'
    end
    object qryACardDAYAMOUNT: TFloatField
      FieldName = 'DAYAMOUNT'
    end
    object qryACardMONTHAMOUNT: TFloatField
      FieldName = 'MONTHAMOUNT'
    end
    object qryACardREGNO: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
    object qryACardACARDHOLDER: TWideStringField
      FieldName = 'ACARDHOLDER'
      Size = 30
    end
    object qryACardISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qryACardEXPIREPHDATE: TDateTimeField
      FieldName = 'EXPIREPHDATE'
    end
    object qryACardEXPIRELODATE: TDateTimeField
      FieldName = 'EXPIRELODATE'
    end
    object qryACardIGROUPID5: TIntegerField
      FieldName = 'IGROUPID5'
    end
    object qryACardEMPLOYEESID: TIntegerField
      FieldName = 'EMPLOYEESID'
    end
    object qryACardNEWCARDBOOLEAN: TBooleanField
      FieldName = 'NEWCARDBOOLEAN'
    end
    object qryACardNEWCARDID: TIntegerField
      FieldName = 'NEWCARDID'
    end
    object qryACardCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
  end
  object qryDiscount_OLD: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PSITEMID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PCUSTOMERID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PFROMDATE'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 0d
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM SITEMDISCOUNT'
      'WHERE SITEMID = :PSITEMID'
      'AND      CUSTOMERID     = :PCUSTOMERID'
      'AND      FROMDATE       <= :PFROMDATE')
    Left = 752
    Top = 128
    object qryDiscount_OLDSITEMID: TIntegerField
      FieldName = 'SITEMID'
    end
    object qryDiscount_OLDCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qryDiscount_OLDFROMDATE: TDateTimeField
      FieldName = 'FROMDATE'
    end
    object qryDiscount_OLDDISCOUNT: TBCDField
      FieldName = 'DISCOUNT'
      Precision = 19
    end
    object qryDiscount_OLDINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryDiscount_OLDUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryDiscount_OLDINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryDiscount_OLDUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryDiscount_OLDID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = qrySumTranD
    Left = 384
    Top = 376
  end
  object qrySumTranDComp: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PDISUPDBT'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT [TRAN].DISCOUNTUPDBT     As [DISCOUNTUPDBT],'
      '       Sum([TRAN].DISQUANTITY)  As SumOfDISQUANTITY,'
      '       Sum([TRAN].DISAMOUNT)    As SumOfDISAMOUNT,'
      '       Sum([TRAN].AMOUNT)       As SumOfAMOUNT,'
      '       Sum([TRAN].QUANTITY)     As SumOfQUANTITY,'
      '       ACARD.CUSTOMERID         As [CUSTOMERID]'
      'FROM [TRAN] INNER JOIN ACARD ON [TRAN].ACARDID=ACARD.ACARDID'
      'WHERE [TRAN].DISCOUNTUPDBT = :PDISUPDBT'
      'GROUP BY [TRAN].DISCOUNTUPDBT, ACARD.CUSTOMERID;')
    Left = 472
    Top = 304
    object qrySumTranDCompDISCOUNTUPDBT: TIntegerField
      FieldName = 'DISCOUNTUPDBT'
    end
    object qrySumTranDCompSumOfDISQUANTITY: TFloatField
      FieldName = 'SumOfDISQUANTITY'
    end
    object qrySumTranDCompSumOfDISAMOUNT: TFloatField
      FieldName = 'SumOfDISAMOUNT'
    end
    object qrySumTranDCompSumOfAMOUNT: TFloatField
      FieldName = 'SumOfAMOUNT'
    end
    object qrySumTranDCompSumOfQUANTITY: TFloatField
      FieldName = 'SumOfQUANTITY'
    end
    object qrySumTranDCompCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
  end
  object InsTranDComp: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM TRANDCOMP')
    Left = 576
    Top = 280
    object InsTranDCompTRANDID: TAutoIncField
      FieldName = 'TRANDID'
      ReadOnly = True
    end
    object InsTranDCompCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object InsTranDCompDEBIT: TBCDField
      FieldName = 'DEBIT'
      Precision = 19
    end
    object InsTranDCompCREDIT: TBCDField
      FieldName = 'CREDIT'
      Precision = 19
    end
    object InsTranDCompTTEXT: TWideStringField
      FieldName = 'TTEXT'
      Size = 50
    end
    object InsTranDCompTRANDDATE: TDateTimeField
      FieldName = 'TRANDDATE'
    end
    object InsTranDCompTRANDCID: TIntegerField
      FieldName = 'TRANDCID'
    end
    object InsTranDCompINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object InsTranDCompUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object InsTranDCompINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object InsTranDCompUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object DataSource2: TDataSource
    DataSet = qrySumTranDComp
    Left = 456
    Top = 376
  end
  object InsTranC: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM TRANC')
    Left = 576
    Top = 344
    object InsTranCTRANCID: TAutoIncField
      FieldName = 'TRANCID'
      ReadOnly = True
    end
    object InsTranCCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object InsTranCTTEXT: TWideStringField
      FieldName = 'TTEXT'
      Size = 50
    end
    object InsTranCTRANCDATE: TDateTimeField
      FieldName = 'TRANCDATE'
    end
    object InsTranCTRANBCID: TIntegerField
      FieldName = 'TRANBCID'
    end
    object InsTranCINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object InsTranCUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object InsTranCINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object InsTranCUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object InsTranCENHMCOCALLID: TIntegerField
      FieldName = 'ENHMCOCALLID'
    end
    object InsTranCENHMCOCALLDATE: TDateTimeField
      FieldName = 'ENHMCOCALLDATE'
    end
    object InsTranCAUTOUPDATE: TBooleanField
      FieldName = 'AUTOUPDATE'
    end
    object InsTranCVALUEDAY: TDateTimeField
      FieldName = 'VALUEDAY'
    end
    object InsTranCVALUEDAYUPDATED: TBooleanField
      FieldName = 'VALUEDAYUPDATED'
    end
    object InsTranCDEBIT: TFloatField
      FieldName = 'DEBIT'
    end
    object InsTranCCREDIT: TFloatField
      FieldName = 'CREDIT'
    end
  end
  object qryDeleteTranDComp: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PTranDCoID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Delete From TranDComp '
      'Where TranDCID = :PTranDCoID')
    Left = 64
    Top = 416
  end
  object qryDeleteTranC: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PTranDCoID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Delete From TranC'
      'Where TranBCID = :PTranDCoID')
    Left = 160
    Top = 344
  end
  object memWS: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F090000000400000003000800534954454D49440004
      00000003000B00435553544F4D4552494400080000000B00090046524F4D4441
      5445002200000008000900444953434F554E5400080000000B000600494E5344
      5400080000000B0006005550444454000400000003000700494E535553520004
      0000000300070055504455535200040000000C000300494400}
    SortOptions = []
    Left = 240
    Top = 248
    object memWSSITEMID: TIntegerField
      FieldName = 'SITEMID'
    end
    object memWSCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object memWSFROMDATE: TDateTimeField
      FieldName = 'FROMDATE'
    end
    object memWSDISCOUNT: TBCDField
      FieldName = 'DISCOUNT'
    end
    object memWSID: TAutoIncField
      FieldName = 'ID'
    end
  end
  object qryDiscountAll: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM SITEMDISCOUNT'
      '')
    Left = 672
    Top = 216
    object qryDiscountAllID: TIntegerField
      FieldName = 'ID'
    end
    object qryDiscountAllSITEMID: TAutoIncField
      FieldName = 'SITEMID'
      ReadOnly = True
    end
    object qryDiscountAllCustomerID: TIntegerField
      FieldName = 'CustomerID'
    end
    object qryDiscountAllFROMDATE: TDateTimeField
      FieldName = 'FROMDATE'
    end
    object qryDiscountAllDISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
    end
  end
  object DataSource3: TDataSource
    DataSet = SQLMemTable1
    Left = 320
    Top = 192
  end
  object SQLMemTable1: TSQLMemTable
    CurrentVersion = '5.00 '
    StoreDefs = True
    DatabaseName = 'MEMORY'
    ReadOnly = False
    AutoCalcFields = False
    CaseInsensitive = False
    FieldDefs = <
      item
        Name = 'Id'
        DataType = ftInteger
      end
      item
        Name = 'CustomerId'
        DataType = ftInteger
      end
      item
        Name = 'SitemId'
        DataType = ftInteger
      end
      item
        Name = 'FromDate'
        DataType = ftDateTime
      end
      item
        Name = 'Discount'
        DataType = ftFloat
      end>
    TableName = 'LeoDisc'
    Exclusive = False
    MemoryTableAllocBy = 1000
    Left = 248
    Top = 192
    object SQLMemTable1Id: TIntegerField
      FieldName = 'Id'
    end
    object SQLMemTable1CustomerId: TIntegerField
      FieldName = 'CustomerId'
    end
    object SQLMemTable1SitemId: TIntegerField
      FieldName = 'SitemId'
    end
    object SQLMemTable1FromDate: TDateTimeField
      FieldName = 'FromDate'
    end
    object SQLMemTable1Discount: TFloatField
      FieldName = 'Discount'
    end
  end
  object qryDiscount: TSQLMemQuery
    CurrentVersion = '5.00 '
    DatabaseName = 'MEMORY'
    ReadOnly = True
    CaseInsensitive = False
    SQL.Text = 
      'SELECT *'#13#10'FROM LeoDisc'#13#10'WHERE SITEMID = :PSITEMID'#13#10'AND      CUST' +
      'OMERID     = :PCUSTOMERID'#13#10'AND      FROMDATE       <= :PFROMDATE' +
      #13#10#13#10#13#10#13#10#13#10
    Left = 320
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PSITEMID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PCUSTOMERID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PFROMDATE'
        ParamType = ptUnknown
      end>
    object qryDiscountId: TIntegerField
      FieldName = 'Id'
    end
    object qryDiscountCustomerId: TIntegerField
      FieldName = 'CustomerId'
    end
    object qryDiscountSitemId: TIntegerField
      FieldName = 'SitemId'
    end
    object qryDiscountFromDate: TDateTimeField
      FieldName = 'FromDate'
    end
    object qryDiscountDiscount: TFloatField
      FieldName = 'Discount'
    end
  end
end
