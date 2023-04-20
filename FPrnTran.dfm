inherited frmPrnTran: TfrmPrnTran
  Left = 257
  Top = 169
  Caption = #917#954#964#973#960#969#963#951' '#954#953#957#942#963#949#969#957
  ClientHeight = 541
  ClientWidth = 824
  OldCreateOrder = True
  Position = poDesigned
  OnShow = FormShow
  ExplicitWidth = 832
  ExplicitHeight = 568
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 23
    Width = 824
    Height = 518
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    object StatusBar1: TStatusBar
      Left = 1
      Top = 498
      Width = 822
      Height = 19
      Panels = <
        item
          Width = 150
        end
        item
          Width = 250
        end
        item
          Width = 50
        end>
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 822
      Height = 497
      ActivePage = TsGrid
      Align = alClient
      TabOrder = 0
      object TsGrid: TTabSheet
        Caption = 'TsGrid'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 814
          Height = 469
          Align = alClient
          TabOrder = 0
          OnEnter = cxGrid1Enter
          LevelTabs.CaptionAlignment = taLeftJustify
          LevelTabs.ImageBorder = 10
          LevelTabs.Style = 3
          RootLevelOptions.DetailTabsPosition = dtpTop
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
            OnCellDblClick = cxGrid1DBTableView1CellDblClick
            DataController.DataSource = dtsTran
            DataController.DetailKeyFieldNames = 'TRAN.TRANID'
            DataController.Filter.AutoDataSetFilter = True
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
            object cxGrid1DBTableView1TRANTRANID: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.TRANID'
              Visible = False
            end
            object cxGrid1DBTableView1MerchantMerchantId: TcxGridDBColumn
              DataBinding.FieldName = 'Merchant.MerchantId'
              Visible = False
            end
            object cxGrid1DBTableView1MerchantName: TcxGridDBColumn
              DataBinding.FieldName = 'Merchant.Name'
            end
            object cxGrid1DBTableView1MerchantStreet: TcxGridDBColumn
              DataBinding.FieldName = 'Merchant.Street'
              Visible = False
            end
            object cxGrid1DBTableView1MerchantZip: TcxGridDBColumn
              DataBinding.FieldName = 'Merchant.Zip'
              Visible = False
            end
            object cxGrid1DBTableView1MerchantCity: TcxGridDBColumn
              DataBinding.FieldName = 'Merchant.City'
              Visible = False
            end
            object cxGrid1DBTableView1MerchantAFM: TcxGridDBColumn
              DataBinding.FieldName = 'Merchant.AFM'
              Visible = False
            end
            object cxGrid1DBTableView1MerchantDOY: TcxGridDBColumn
              DataBinding.FieldName = 'Merchant.DOY'
              Visible = False
            end
            object cxGrid1DBTableView1MerchantIsTest: TcxGridDBColumn
              DataBinding.FieldName = 'Merchant.IsTest'
              Visible = False
            end
            object cxGrid1DBTableView1MerchantAreaId: TcxGridDBColumn
              DataBinding.FieldName = 'Merchant.AreaId'
              Visible = False
            end
            object cxGrid1DBTableView1MerchantSAPCode: TcxGridDBColumn
              DataBinding.FieldName = 'Merchant.SAPCode'
              Visible = False
            end
            object cxGrid1DBTableView1MerchantMerchantCode: TcxGridDBColumn
              DataBinding.FieldName = 'Merchant.MerchantCode'
              Visible = False
            end
            object cxGrid1DBTableView1MerchantSalesMenId: TcxGridDBColumn
              DataBinding.FieldName = 'Merchant.SalesMenId'
              Visible = False
            end
            object cxGrid1DBTableView1MerchantDeleted: TcxGridDBColumn
              DataBinding.FieldName = 'Merchant.Deleted'
              Visible = False
            end
            object cxGrid1DBTableView1MerchantInActive: TcxGridDBColumn
              DataBinding.FieldName = 'Merchant.InActive'
              Visible = False
            end
            object cxGrid1DBTableView1MerchantStopSales: TcxGridDBColumn
              DataBinding.FieldName = 'Merchant.StopSales'
              Visible = False
            end
            object cxGrid1DBTableView1StationStationId: TcxGridDBColumn
              DataBinding.FieldName = 'Station.StationId'
              Visible = False
            end
            object cxGrid1DBTableView1StationName: TcxGridDBColumn
              DataBinding.FieldName = 'Station.Name'
              Visible = False
            end
            object cxGrid1DBTableView1StationStreet: TcxGridDBColumn
              DataBinding.FieldName = 'Station.Street'
            end
            object cxGrid1DBTableView1StationZIP: TcxGridDBColumn
              DataBinding.FieldName = 'Station.ZIP'
              Visible = False
            end
            object cxGrid1DBTableView1StationCity: TcxGridDBColumn
              DataBinding.FieldName = 'Station.City'
              Visible = False
            end
            object cxGrid1DBTableView1StationAreaId: TcxGridDBColumn
              DataBinding.FieldName = 'Station.AreaId'
              Visible = False
            end
            object cxGrid1DBTableView1StationSalesMenId: TcxGridDBColumn
              DataBinding.FieldName = 'Station.SalesMenId'
              Visible = False
            end
            object cxGrid1DBTableView1StationDeleted: TcxGridDBColumn
              DataBinding.FieldName = 'Station.Deleted'
              Visible = False
            end
            object cxGrid1DBTableView1StationInActive: TcxGridDBColumn
              DataBinding.FieldName = 'Station.InActive'
              Visible = False
            end
            object cxGrid1DBTableView1StationStopSales: TcxGridDBColumn
              DataBinding.FieldName = 'Station.StopSales'
              Visible = False
            end
            object cxGrid1DBTableView1TerminalTerminalCode: TcxGridDBColumn
              DataBinding.FieldName = 'Terminal.TerminalCode'
            end
            object cxGrid1DBTableView1TerminalTerminalId: TcxGridDBColumn
              DataBinding.FieldName = 'Terminal.TerminalId'
              Visible = False
            end
            object cxGrid1DBTableView1TerminalSerialNo: TcxGridDBColumn
              DataBinding.FieldName = 'Terminal.SerialNo'
              Visible = False
            end
            object cxGrid1DBTableView1CUSTOMERCUSTOMERId: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.CUSTOMERId'
              Visible = False
            end
            object cxGrid1DBTableView1CUSTOMERName: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.Name'
            end
            object cxGrid1DBTableView1CUSTOMERZip: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.Zip'
              Visible = False
            end
            object cxGrid1DBTableView1CUSTOMERStreet: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.Street'
              Visible = False
            end
            object cxGrid1DBTableView1CUSTOMERCity: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.City'
              Visible = False
            end
            object cxGrid1DBTableView1CUSTOMERAFM: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.AFM'
              Visible = False
            end
            object cxGrid1DBTableView1CUSTOMERDOY: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.DOY'
              Visible = False
            end
            object cxGrid1DBTableView1CUSTOMERAreaId: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.AreaId'
              Visible = False
            end
            object cxGrid1DBTableView1CUSTOMERCGroupId: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.CGroupId'
              Visible = False
            end
            object cxGrid1DBTableView1CUSTOMERCClassId: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.CClassId'
              Visible = False
            end
            object cxGrid1DBTableView1CUSTOMERBranchId: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.BranchId'
              Visible = False
            end
            object cxGrid1DBTableView1CUSTOMERSAPCode: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.SAPCode'
            end
            object cxGrid1DBTableView1CUSTOMERIsActive: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.IsActive'
              Visible = False
            end
            object cxGrid1DBTableView1CUSTOMERSalesMenId: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.SalesMenId'
              Visible = False
            end
            object cxGrid1DBTableView1CUSTOMERIsTest: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.IsTest'
              Visible = False
            end
            object cxGrid1DBTableView1CUSTOMERAreaBId: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.AreaBId'
              Visible = False
            end
            object cxGrid1DBTableView1CUSTOMERHASDETAILEMP: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.HASDETAILEMP'
              Visible = False
            end
            object cxGrid1DBTableView1CUSTOMERCUSTOMEROFF: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.CUSTOMEROFF'
              Visible = False
            end
            object cxGrid1DBTableView1TRANTRANDATE: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.TRANDATE'
            end
            object cxGrid1DBTableView1TRANTranTime: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.TranTime'
            end
            object cxGrid1DBTableView1TRANACARDID: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.ACARDID'
              Visible = False
            end
            object cxGrid1DBTableView1TRANMerchantId: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.MerchantId'
              Visible = False
            end
            object cxGrid1DBTableView1TRANStationId: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.StationId'
              Visible = False
            end
            object cxGrid1DBTableView1TRANTerminalId: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.TerminalId'
              Visible = False
            end
            object cxGrid1DBTableView1TRANSitemId: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.SitemId'
              Visible = False
            end
            object cxGrid1DBTableView1SITEMDESCR: TcxGridDBColumn
              DataBinding.FieldName = 'SITEM.DESCR'
            end
            object cxGrid1DBTableView1TRANAmount: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.Amount'
            end
            object cxGrid1DBTableView1TRANQuantity: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.Quantity'
            end
            object cxGrid1DBTableView1TRANIsAuto: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.IsAuto'
              Visible = False
            end
            object cxGrid1DBTableView1TRANStationUPD: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.StationUPD'
              Visible = False
            end
            object cxGrid1DBTableView1TRANACARDUPD: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.ACARDUPD'
              Visible = False
            end
            object cxGrid1DBTableView1TRANIsVoid: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.IsVoid'
              Visible = False
            end
            object cxGrid1DBTableView1TRANBatchNo: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.BatchNo'
              Visible = False
            end
            object cxGrid1DBTableView1TRANCommissionUpd: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.CommissionUpd'
              Visible = False
            end
            object cxGrid1DBTableView1TRANStationUPDBT: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.StationUPDBT'
              Visible = False
            end
            object cxGrid1DBTableView1TRANAcardUPDBT: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.AcardUPDBT'
              Visible = False
            end
            object cxGrid1DBTableView1TRANCommissionUPDBT: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.CommissionUPDBT'
              Visible = False
            end
            object cxGrid1DBTableView1TRANIsTyped: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.IsTyped'
              Visible = False
            end
            object cxGrid1DBTableView1TRANDiscountUPD: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.DiscountUPD'
              Visible = False
            end
            object cxGrid1DBTableView1TRANDiscountUPDBT: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.DiscountUPDBT'
              Visible = False
            end
            object cxGrid1DBTableView1TRANDisQuantity: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.DisQuantity'
              Visible = False
            end
            object cxGrid1DBTableView1TRANDisAmount: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.DisAmount'
              Visible = False
            end
            object cxGrid1DBTableView1TRANPelaDailyUPD: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.PelaDailyUPD'
              Visible = False
            end
            object cxGrid1DBTableView1TRANPelaDailyUPDBT: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.PelaDailyUPDBT'
              Visible = False
            end
            object cxGrid1DBTableView1AcardAcardCodeFull: TcxGridDBColumn
              Caption = #913#961'.'#922#940#961#964#945#962
              DataBinding.FieldName = 'Acard.AcardCodeFull'
            end
            object cxGrid1DBTableView1ACARDACARDID: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.ACARDID'
              Visible = False
            end
            object cxGrid1DBTableView1ACARDACARDCODE: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.ACARDCODE'
              Visible = False
            end
            object cxGrid1DBTableView1ACARDCustimerId: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.CustimerId'
              Visible = False
            end
            object cxGrid1DBTableView1ACARDVTypeId: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.VTypeId'
              Visible = False
            end
            object cxGrid1DBTableView1ACARDREGNO: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.REGNO'
            end
            object cxGrid1DBTableView1ACARDACARDHOLDER: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.ACARDHOLDER'
            end
            object cxGrid1DBTableView1ACARDIsActive: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.IsActive'
            end
            object cxGrid1DBTableView1ACARDEMPLOYEESID: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.EMPLOYEESID'
            end
            object cxGrid1DBTableView1ACARDCostCenterId: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.CostCenterId'
            end
            object cxGrid1DBTableView1VTYPEVTYPEID: TcxGridDBColumn
              DataBinding.FieldName = 'VTYPE.VTYPEID'
            end
            object cxGrid1DBTableView1VTYPEDescr: TcxGridDBColumn
              DataBinding.FieldName = 'VTYPE.Descr'
            end
            object cxGrid1DBTableView1REGNOSEQREGNOSEQID: TcxGridDBColumn
              DataBinding.FieldName = 'REGNOSEQ.REGNOSEQID'
              Visible = False
            end
            object cxGrid1DBTableView1REGNOSEQREGNO: TcxGridDBColumn
              DataBinding.FieldName = 'REGNOSEQ.REGNO'
              Visible = False
            end
            object cxGrid1DBTableView1TRANKMBEFORE: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.KMBEFORE'
            end
            object cxGrid1DBTableView1TRANKMAFTER: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.KMAFTER'
            end
            object cxGrid1DBTableView1TRANREFSTR: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.REFSTR'
            end
            object cxGrid1DBTableView1TRANUNITPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'TRAN.UNITPRICE'
              Visible = False
            end
            object cxGrid1DBTableView1SITEMCODEINTERMINAL: TcxGridDBColumn
              DataBinding.FieldName = 'SITEM.CODEINTERMINAL'
              Visible = False
            end
            object cxGrid1DBTableView1SITEMIGROUPID: TcxGridDBColumn
              DataBinding.FieldName = 'SITEM.IGROUPID'
              Visible = False
            end
            object cxGrid1DBTableView1IGROUPNAME: TcxGridDBColumn
              DataBinding.FieldName = 'IGROUP.NAME'
            end
            object cxGrid1DBTableView1CostCenterCCName: TcxGridDBColumn
              DataBinding.FieldName = 'CostCenter.CCName'
            end
            object cxGrid1DBTableView1CostCenterCCNameFull: TcxGridDBColumn
              DataBinding.FieldName = 'CostCenter.CCNameFull'
            end
          end
          object cxGrid1DBChartView1: TcxGridDBChartView
            DataController.DataSource = dtsTran
            DataController.DetailKeyFieldNames = 'TRAN.TRANID'
            DiagramColumn.Active = True
            Title.Text = #923#949#969#957#943#948#945#962
            ToolBox.CustomizeButton = True
            ToolBox.DiagramSelector = True
            object cxGrid1DBChartView1DataGroup2: TcxGridDBChartDataGroup
              DataBinding.FieldName = 'CUSTOMER.Name'
              DisplayText = #928#949#955#940#964#951#962
            end
            object cxGrid1DBChartView1DataGroup5: TcxGridDBChartDataGroup
              DataBinding.FieldName = 'Merchant.Name'
              DisplayText = #917#956#960#972#961#959#962
            end
            object cxGrid1DBChartView1DataGroup3: TcxGridDBChartDataGroup
              DataBinding.FieldName = 'Station.Name'
              DisplayText = #928#961#945#964#942#961#953#959
            end
            object cxGrid1DBChartView1DataGroup4: TcxGridDBChartDataGroup
              DataBinding.FieldName = 'SITEM.DESCR'
              DisplayText = #917#943#948#959#962
            end
            object cxGrid1DBChartView1DataGroup1: TcxGridDBChartDataGroup
              DataBinding.FieldName = 'ACARD.REGNO'
              DisplayText = #913#961'.'#922#965#954
            end
            object cxGrid1DBChartView1Series3: TcxGridDBChartSeries
              DataBinding.FieldName = 'TRAN.TRANID'
              DisplayText = #928#955#942#952#959#962
              GroupSummaryKind = skCount
            end
            object cxGrid1DBChartView1Series2: TcxGridDBChartSeries
              DataBinding.FieldName = 'TRAN.Quantity'
              DisplayText = #928#959#963#972#964#951#964#945
            end
            object cxGrid1DBChartView1Series1: TcxGridDBChartSeries
              DataBinding.FieldName = 'TRAN.Amount'
              DisplayText = #913#958#943#945
            end
          end
          object cxGrid1Level1: TcxGridLevel
            Caption = 'Grid'
            GridView = cxGrid1DBTableView1
          end
          object cxGrid1Level2: TcxGridLevel
            Caption = 'Chart'
            GridView = cxGrid1DBChartView1
          end
        end
      end
      object TsMemo: TTabSheet
        Caption = 'TsMemo'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Memo1: TMemo
          Left = 0
          Top = 0
          Width = 814
          Height = 444
          Align = alClient
          TabOrder = 0
        end
        object Button1: TButton
          Left = 0
          Top = 444
          Width = 814
          Height = 25
          Align = alBottom
          Caption = 'Activate Query'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object TsSendCustomer: TTabSheet
        Caption = #928#949#955#940#964#949#962
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object PanRestSend: TPanel
          Left = 0
          Top = 384
          Width = 814
          Height = 85
          Align = alBottom
          TabOrder = 1
          object DBText1: TDBText
            Left = 24
            Top = 16
            Width = 65
            Height = 17
            DataField = 'CUSTOMERID'
            DataSource = DataSource1
          end
          object DBText2: TDBText
            Left = 24
            Top = 48
            Width = 42
            Height = 13
            AutoSize = True
            DataField = 'Main'
            DataSource = DataSource1
          end
          object dbtxtCUSTOMERCUSTOMERID: TDBText
            Left = 167
            Top = 17
            Width = 114
            Height = 13
            DataField = 'Customer.Name'
            DataSource = DataSource1
          end
          object DBText7: TDBText
            Left = 352
            Top = 16
            Width = 65
            Height = 17
            DataField = 'CUSTOMERID'
            DataSource = DataSource2
          end
          object ProgressBar1: TProgressBar
            Left = 24
            Top = 66
            Width = 761
            Height = 16
            TabOrder = 3
          end
          object Edit1: TEdit
            Left = 512
            Top = 6
            Width = 121
            Height = 21
            TabOrder = 1
            Text = 'Filename1'
            OnDblClick = EditFileDblClick
          end
          object Edit2: TEdit
            Left = 655
            Top = 5
            Width = 121
            Height = 21
            TabOrder = 0
            Text = 'Filename2'
            OnDblClick = EditFileDblClick
          end
          object Edit3: TEdit
            Left = 512
            Top = 33
            Width = 264
            Height = 21
            TabOrder = 2
            Text = 'AvinCard'
          end
        end
        object PanGridSend: TPanel
          Left = 0
          Top = 0
          Width = 814
          Height = 384
          Align = alClient
          TabOrder = 0
          object DBGrid1: TDBGrid
            Left = 1
            Top = 1
            Width = 812
            Height = 187
            Align = alLeft
            DataSource = DataSource1
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = popFilter
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object Memo2: TMemo
            Left = 1
            Top = 288
            Width = 812
            Height = 95
            Align = alBottom
            Lines.Strings = (
              '')
            TabOrder = 2
          end
          object Memo3: TMemo
            Left = 1
            Top = 188
            Width = 812
            Height = 100
            Align = alBottom
            Lines.Strings = (
              '')
            TabOrder = 1
          end
        end
      end
      object tsSendStation: TTabSheet
        Caption = #928#961#945#964#942#961#953#945
        ImageIndex = 3
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 814
          Height = 469
          Align = alClient
          TabOrder = 0
          object DBGrid2: TDBGrid
            Left = 1
            Top = 1
            Width = 812
            Height = 193
            Align = alClient
            DataSource = DataSource1St
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = popFilter
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object Memo2St: TMemo
            Left = 1
            Top = 294
            Width = 812
            Height = 89
            Align = alBottom
            Lines.Strings = (
              '')
            TabOrder = 2
          end
          object Memo3St: TMemo
            Left = 1
            Top = 194
            Width = 812
            Height = 100
            Align = alBottom
            Lines.Strings = (
              '')
            TabOrder = 1
          end
          object Panel3: TPanel
            Left = 1
            Top = 383
            Width = 812
            Height = 85
            Align = alBottom
            TabOrder = 3
            object dbtxtStationStationId1: TDBText
              Left = 24
              Top = 16
              Width = 65
              Height = 17
              DataField = 'Stationid'
              DataSource = DataSource1St
            end
            object dbtxtStationStationId: TDBText
              Left = 24
              Top = 48
              Width = 98
              Height = 13
              AutoSize = True
              DataField = 'SendFax'
              DataSource = DataSource1St
            end
            object DBText6: TDBText
              Left = 95
              Top = 17
              Width = 42
              Height = 13
              AutoSize = True
              DataField = 'AA'
              DataSource = DataSource1St
            end
            object DBText8: TDBText
              Left = 352
              Top = 16
              Width = 65
              Height = 17
              DataField = 'Stationid'
              DataSource = DataSource2St
            end
            object ProgressBar1St: TProgressBar
              Left = 24
              Top = 66
              Width = 761
              Height = 16
              TabOrder = 3
            end
            object Edit1St: TEdit
              Left = 512
              Top = 6
              Width = 121
              Height = 21
              TabOrder = 1
              Text = 'Filename1'
              OnDblClick = EditFileDblClick
            end
            object Edit2St: TEdit
              Left = 655
              Top = 5
              Width = 121
              Height = 21
              TabOrder = 0
              Text = 'Filename2'
              OnDblClick = EditFileDblClick
            end
            object Edit3St: TEdit
              Left = 512
              Top = 33
              Width = 264
              Height = 21
              TabOrder = 2
              Text = 'AvinCard'
            end
          end
        end
      end
      object TsSendMerchant: TTabSheet
        Caption = 'Merchant'
        ImageIndex = 4
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 814
          Height = 469
          Align = alClient
          TabOrder = 0
          object DBGrid3: TDBGrid
            Left = 1
            Top = 1
            Width = 812
            Height = 193
            Align = alClient
            DataSource = DataSource1Merchant
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = popFilter
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
          object Memo4: TMemo
            Left = 1
            Top = 294
            Width = 812
            Height = 89
            Align = alBottom
            Lines.Strings = (
              '')
            TabOrder = 2
          end
          object Memo5: TMemo
            Left = 1
            Top = 194
            Width = 812
            Height = 100
            Align = alBottom
            Lines.Strings = (
              '')
            TabOrder = 1
          end
          object Panel5: TPanel
            Left = 1
            Top = 383
            Width = 812
            Height = 85
            Align = alBottom
            TabOrder = 3
            object DBText3: TDBText
              Left = 24
              Top = 16
              Width = 65
              Height = 17
              DataField = 'MerchantId'
              DataSource = DataSource1Merchant
            end
            object DBText4: TDBText
              Left = 24
              Top = 48
              Width = 42
              Height = 13
              AutoSize = True
              DataField = 'SendMail'
              DataSource = DataSource1Merchant
            end
            object DBText5: TDBText
              Left = 95
              Top = 17
              Width = 42
              Height = 13
              AutoSize = True
              DataField = 'Contacts.Name'
              DataSource = DataSource1Merchant
            end
            object DBText9: TDBText
              Left = 343
              Top = 17
              Width = 42
              Height = 13
              AutoSize = True
              DataField = 'MerchantId'
              DataSource = DataSource2Merchant
            end
            object ProgressBar1Merchant: TProgressBar
              Left = 24
              Top = 66
              Width = 761
              Height = 16
              TabOrder = 3
            end
            object Edit1Me: TEdit
              Left = 512
              Top = 6
              Width = 121
              Height = 21
              TabOrder = 1
              Text = 'Filename1'
              OnDblClick = EditFileDblClick
            end
            object Edit2Me: TEdit
              Left = 655
              Top = 5
              Width = 121
              Height = 21
              TabOrder = 0
              Text = 'Filename2'
              OnDblClick = EditFileDblClick
            end
            object Edit3Me: TEdit
              Left = 512
              Top = 33
              Width = 264
              Height = 21
              TabOrder = 2
              Text = 'AvinCard'
            end
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = #928#961#959#946#955#942#956#945#964#945' '#963#949' Contacts'
        ImageIndex = 5
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label1: TLabel
          Left = 264
          Top = 417
          Width = 153
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #916#949#957' '#933#960#940#961#967#949#953' Contact'
          Color = clRed
          ParentColor = False
        end
        object Label2: TLabel
          Left = 264
          Top = 436
          Width = 153
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = #916#949#957' '#965#960#940#961#967#949#953' '#917#957#941#961#947#949#953#945
          Color = clGray
          ParentColor = False
        end
        object DBGrid4: TDBGrid
          Left = 0
          Top = 274
          Width = 814
          Height = 137
          Align = alTop
          Anchors = []
          DataSource = DataSource2Merchant
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = popFilter
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid6DrawColumnCell
          OnDblClick = DBGrid4DblClick
        end
        object DBGrid5: TDBGrid
          Left = 0
          Top = 137
          Width = 814
          Height = 137
          Align = alTop
          Anchors = []
          DataSource = DataSource2St
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = popFilter
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid6DrawColumnCell
          OnDblClick = DBGrid5DblClick
        end
        object DBGrid6: TDBGrid
          Left = 0
          Top = 0
          Width = 814
          Height = 137
          Align = alTop
          Anchors = []
          DataSource = DataSource2
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = popFilter
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid6DrawColumnCell
          OnDblClick = DBGrid6DblClick
        end
        object Button2: TButton
          Left = 3
          Top = 432
          Width = 193
          Height = 25
          Caption = #917#957#951#956#941#961#969#963#951' '#913#955#955#945#947#974#957
          TabOrder = 3
          OnClick = Button2Click
        end
        object UpDown1: TUpDown
          Left = 601
          Top = 424
          Width = 15
          Height = 21
          Associate = Edit4
          Position = 5
          TabOrder = 4
        end
        object Edit4: TEdit
          Left = 536
          Top = 424
          Width = 65
          Height = 21
          TabOrder = 5
          Text = '5'
        end
      end
    end
  end
  object ActionMainMenuBar1: TActionMainMenuBar [1]
    Left = 0
    Top = 0
    Width = 824
    Height = 23
    UseSystemFont = False
    ActionManager = dxBarManager1
    Caption = 'ActionMainMenuBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Spacing = 0
  end
  inherited popFilter: TPopupMenu
    Left = 44
    object Temp: TMenuItem
      OnClick = TempClick
    end
  end
  object ActionList1: TActionList [3]
    Left = 144
    Top = 184
    object actClose: TAction
      Caption = #917#960#953#963#964#961#959#966#942
      OnExecute = actCloseExecute
    end
    object actPreview: TAction
      Caption = #917#954#964#973#960#969#963#951
      OnExecute = actPreviewExecute
    end
    object actPrint: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #931#973#957#959#955#945' '#945#957#940' '#928#961#945#964#942#961#953#959'/'#919#956#949#961#959#956#951#957#943#945'/'#928#961#972#970#959#957
      Checked = True
      OnExecute = actPrintExecute
    end
    object actPrint1: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #913#957#945#955#965#964#953#954#940' '#931#964#959#953#967#949#943#945' '#945#957#940' '#922#940#961#964#945'/'#919#956#949#961#959#956#951#957#943#945
      OnExecute = actPrint1Execute
    end
    object actPrint2: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #913#957#945#955#965#964#953#954#940' '#931#964#959#953#967#949#943#945' '#945#957#940' '#928#961#945#964#942#961#953#959'/'#919#956#949#961#959#956#951#957#943#945
      Checked = True
      OnExecute = actPrint2Execute
    end
    object actPrint3: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #913#957#940' '#928#961#945#964#942#961#953#959'/'#919#956#949#961#959#956#951#957#943#945'/'#928#961#972#970#959#957
      Checked = True
      OnExecute = actPrint3Execute
    end
    object actPrint4: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #922#953#957#942#963#949#953#962' '#945#957#940' '#917#964#945#953#961#949#943#945'/'#919#956#949#961#959#956#951#957#943#945'/'#922#940#961#964#945
      Checked = True
      OnExecute = actPrint4Execute
    end
    object actPrint5: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #931#973#957#959#955#945' '#945#957#940' '#928#961#945#964#942#961#953#959'/'#917#964#945#953#961#949#943#945'('#915'.'#923'.)'
      OnExecute = actPrint5Execute
    end
    object actPrint6: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #931#965#957#972#955#945' '#945#957#940' '#917#964#945#953#961#949#943#945'/'#922#940#961#964#945'/'#928#961#959#943#959#957
      OnExecute = actPrint6Execute
    end
    object actPrint7: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #931#965#957#972#955#945' '#945#957#940' '#917#964#945#953#961#949#943#945'/'#928#961#959#943#959#957'/'#922#940#961#964#945
      Checked = True
      OnExecute = actPrint7Execute
    end
    object actPrint8: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #913#957#945#955#965#964#953#954#940' '#931#964#959#953#967#949#943#945' '#913#957#940' '#917#964#945#953#961#949#943#945'/'#919#956#949#961#959#956#951#957#943#945
      Checked = True
      OnExecute = actPrint8Execute
    end
    object actPrint9: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #915#961#940#966#951#956#945' '#913#958#943#945#962' '#931#965#957#945#955#955#945#947#974#957' '#945#957#940' '#908#967#951#956#945
      OnExecute = actPrint9Execute
    end
    object actPrint10: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #931#973#957#959#955#945' '#945#957#940' '#928#961#945#964#942#961#953#959'/'#919#956#949#961#959#956#951#957#943#945'/'#928#961#959#970#972#957
      Checked = True
      OnExecute = actPrint10Execute
    end
    object actPrint12: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #931#973#957#959#955#945' '#945#957#940' '#928#961#945#964#942#961#953#959'/'#917#964#945#953#961#949#943#945'/'#928#961#959#943#959#957
      OnExecute = actPrint12Execute
    end
    object actPrint14: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #931#964#945#964#953#963#964#953#954#940' '#913#957#940' '#917#964#945#953#961#949#943#945
      OnExecute = actPrint14Execute
    end
    object actPrint22: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #913#957#945#955#965#964#953#954#940' '#931#964#959#953#967#949#943#945' '#945#957#940' '#922#940#961#964#945
      OnExecute = actPrint22Execute
    end
    object actPrint15: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #913#957#945' '#928#961#945#964#942#961#953#959' & '#928#961#959#943#959#957
      OnExecute = actPrint15Execute
    end
    object actPrint16: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #927#947#954#972#962' '#945#957#945' '#928#949#961#953#959#967#942
      Checked = True
      OnExecute = actPrint16Execute
    end
    object actPrint17: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #931#973#957#959#955#945' '#945#957#945' '#928#949#955#940#964#951
      OnExecute = actPrint17Execute
    end
    object actPrint18: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #915#961#940#966#951#956#945' '#945#957#945' '#928#961#972#953#959#957
      OnExecute = actPrint18Execute
    end
    object actPrint32: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #917#954#964#973#960#969#963#951' '#928#961#959#963#969#960#953#954#959#973
      OnExecute = actPrint32Execute
    end
    object actPrint40: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #931#965#947#954#961#953#964#953#954#972#962' '#928#943#957#945#954#945#962' '#931#965#957#945#955#955#945#947#974#957' '#945#957#945' '#928#949#955#940#964#951'('#913#958#943#945')'
      OnExecute = actPrint40Execute
    end
    object actPrint41: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #931#965#947#954#961#953#964#953#954#972#962' '#928#943#957#945#954#945#962' '#931#965#957#945#955#955#945#947#974#957' '#945#957#945' '#928#949#955#940#964#951'('#928#959#963#972#964#951#964#945')'
      OnExecute = actPrint41Execute
    end
    object actPrint42: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #924#951#957#953#945#943#949#962' '#931#965#957#945#955#955#945#947#941#962' '#945#957#940' '#928#949#955#940#964#951
      OnExecute = actPrint42Execute
    end
    object actPrint42a: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #924#951#957#953#945#943#949#962' '#931#965#957#945#955#955#945#947#941#962' '#945#957#940' '#928#949#955#940#964#951' Grid'
      OnExecute = actPrint42aExecute
    end
    object act1: TAction
      Caption = 'act1'
      OnExecute = act1Execute
    end
    object Action1: TAction
      Caption = 'Action1'
      OnExecute = Action1Execute
    end
    object actOutFolder: TAction
      Caption = '-'
      OnExecute = actOutFolderExecute
    end
    object actQrDesign: TAction
      Caption = 'Report Designer'
      OnExecute = actQrDesignExecute
    end
    object actPrint43: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #913#957#945#955#965#964#953#954#940' '#940#957#945' '#917#964#945#953#961#949#943#945'/'#922#940#961#964#945'/'#919#956#949#961#959#956#951#957#943#945
      Checked = True
      OnExecute = actPrint43Execute
    end
    object actToExcel: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = 'actToExcel'
      OnExecute = actToExcelExecute
    end
  end
  object qryTran: TADOQuery [4]
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    OnCalcFields = qryTranCalcFields
    CommandTimeout = 120
    Parameters = <>
    SQL.Strings = (
      'Select * From'
      'V_TRA_STA_ACA_CUS'
      '--Where [Tran.TranId] = 0')
    Left = 168
    Top = 72
    object qryTranMerchantMerchantId: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object qryTranMerchantName: TWideStringField
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object qryTranMerchantStreet: TWideStringField
      FieldName = 'Merchant.Street'
      Size = 50
    end
    object qryTranMerchantZip: TWideStringField
      FieldName = 'Merchant.Zip'
      Size = 50
    end
    object qryTranMerchantCity: TWideStringField
      FieldName = 'Merchant.City'
      Size = 50
    end
    object qryTranMerchantAFM: TWideStringField
      FieldName = 'Merchant.AFM'
      Size = 15
    end
    object qryTranMerchantDOY: TWideStringField
      FieldName = 'Merchant.DOY'
      Size = 50
    end
    object qryTranMerchantIsTest: TBooleanField
      FieldName = 'Merchant.IsTest'
    end
    object qryTranMerchantAreaId: TIntegerField
      FieldName = 'Merchant.AreaId'
    end
    object qryTranMerchantSAPCode: TWideStringField
      FieldName = 'Merchant.SAPCode'
      Size = 10
    end
    object qryTranMerchantMerchantCode: TWideStringField
      FieldName = 'Merchant.MerchantCode'
      Size = 50
    end
    object qryTranMerchantSalesMenId: TIntegerField
      FieldName = 'Merchant.SalesMenId'
    end
    object qryTranMerchantDeleted: TBooleanField
      FieldName = 'Merchant.Deleted'
    end
    object qryTranMerchantInActive: TBooleanField
      FieldName = 'Merchant.InActive'
    end
    object qryTranMerchantStopSales: TBooleanField
      FieldName = 'Merchant.StopSales'
    end
    object qryTranStationStationId: TIntegerField
      FieldName = 'Station.StationId'
    end
    object qryTranStationName: TWideStringField
      FieldName = 'Station.Name'
      FixedChar = True
      Size = 100
    end
    object qryTranStationStreet: TWideStringField
      FieldName = 'Station.Street'
      Size = 50
    end
    object qryTranStationZIP: TWideStringField
      FieldName = 'Station.ZIP'
      Size = 50
    end
    object qryTranStationCity: TWideStringField
      FieldName = 'Station.City'
      Size = 50
    end
    object qryTranStationAreaId: TIntegerField
      FieldName = 'Station.AreaId'
    end
    object qryTranStationSalesMenId: TIntegerField
      FieldName = 'Station.SalesMenId'
    end
    object qryTranStationDeleted: TBooleanField
      FieldName = 'Station.Deleted'
    end
    object qryTranStationInActive: TBooleanField
      FieldName = 'Station.InActive'
    end
    object qryTranStationStopSales: TBooleanField
      FieldName = 'Station.StopSales'
    end
    object qryTranTerminalTerminalCode: TWideStringField
      FieldName = 'Terminal.TerminalCode'
    end
    object qryTranTerminalTerminalId: TIntegerField
      FieldName = 'Terminal.TerminalId'
    end
    object qryTranTerminalSerialNo: TWideStringField
      FieldName = 'Terminal.SerialNo'
      Size = 50
    end
    object qryTranCUSTOMERCUSTOMERId: TIntegerField
      FieldName = 'CUSTOMER.CUSTOMERId'
    end
    object qryTranCUSTOMERName: TWideStringField
      FieldName = 'CUSTOMER.Name'
      Size = 50
    end
    object qryTranCUSTOMERZip: TWideStringField
      FieldName = 'CUSTOMER.Zip'
      Size = 50
    end
    object qryTranCUSTOMERStreet: TWideStringField
      FieldName = 'CUSTOMER.Street'
      Size = 50
    end
    object qryTranCUSTOMERCity: TWideStringField
      FieldName = 'CUSTOMER.City'
      Size = 50
    end
    object qryTranCUSTOMERAFM: TWideStringField
      FieldName = 'CUSTOMER.AFM'
      Size = 15
    end
    object qryTranCUSTOMERDOY: TWideStringField
      FieldName = 'CUSTOMER.DOY'
      Size = 50
    end
    object qryTranCUSTOMERAreaId: TIntegerField
      FieldName = 'CUSTOMER.AreaId'
    end
    object qryTranCUSTOMERCGroupId: TIntegerField
      FieldName = 'CUSTOMER.CGroupId'
    end
    object qryTranCUSTOMERCClassId: TIntegerField
      FieldName = 'CUSTOMER.CClassId'
    end
    object qryTranCUSTOMERBranchId: TIntegerField
      FieldName = 'CUSTOMER.BranchId'
    end
    object qryTranCUSTOMERSAPCode: TWideStringField
      FieldName = 'CUSTOMER.SAPCode'
      Size = 10
    end
    object qryTranCUSTOMERIsActive: TBooleanField
      FieldName = 'CUSTOMER.IsActive'
    end
    object qryTranCUSTOMERSalesMenId: TIntegerField
      FieldName = 'CUSTOMER.SalesMenId'
    end
    object qryTranCUSTOMERIsTest: TBooleanField
      FieldName = 'CUSTOMER.IsTest'
    end
    object qryTranCUSTOMERAreaBId: TIntegerField
      FieldName = 'CUSTOMER.AreaBId'
    end
    object qryTranCUSTOMERHASDETAILEMP: TBooleanField
      FieldName = 'CUSTOMER.HASDETAILEMP'
    end
    object qryTranCUSTOMERCUSTOMEROFF: TBooleanField
      FieldName = 'CUSTOMER.CUSTOMEROFF'
    end
    object qryTranTRANTRANDATE: TDateTimeField
      FieldName = 'TRAN.TRANDATE'
      DisplayFormat = 'ddddd'
    end
    object qryTranTRANACARDID: TIntegerField
      FieldName = 'TRAN.ACARDID'
    end
    object qryTranTRANMerchantId: TIntegerField
      FieldName = 'TRAN.MerchantId'
    end
    object qryTranTRANStationId: TIntegerField
      FieldName = 'TRAN.StationId'
    end
    object qryTranTRANTerminalId: TIntegerField
      FieldName = 'TRAN.TerminalId'
    end
    object qryTranTRANAmount: TFloatField
      FieldName = 'TRAN.Amount'
      currency = True
    end
    object qryTranTRANSitemId: TIntegerField
      FieldName = 'TRAN.SitemId'
    end
    object qryTranTRANQuantity: TFloatField
      FieldName = 'TRAN.Quantity'
      DisplayFormat = ',0.00;-,0.00'
    end
    object qryTranTRANIsAuto: TBooleanField
      FieldName = 'TRAN.IsAuto'
    end
    object qryTranTRANStationUPD: TBooleanField
      FieldName = 'TRAN.StationUPD'
    end
    object qryTranTRANACARDUPD: TBooleanField
      FieldName = 'TRAN.ACARDUPD'
    end
    object qryTranTRANIsVoid: TBooleanField
      FieldName = 'TRAN.IsVoid'
    end
    object qryTranTRANBatchNo: TIntegerField
      FieldName = 'TRAN.BatchNo'
    end
    object qryTranTRANCommissionUpd: TBooleanField
      FieldName = 'TRAN.CommissionUpd'
    end
    object qryTranTRANStationUPDBT: TIntegerField
      FieldName = 'TRAN.StationUPDBT'
    end
    object qryTranTRANAcardUPDBT: TIntegerField
      FieldName = 'TRAN.AcardUPDBT'
    end
    object qryTranTRANCommissionUPDBT: TIntegerField
      FieldName = 'TRAN.CommissionUPDBT'
    end
    object qryTranTRANTranTime: TDateTimeField
      FieldName = 'TRAN.TranTime'
      DisplayFormat = 't'
    end
    object qryTranTRANIsTyped: TBooleanField
      FieldName = 'TRAN.IsTyped'
    end
    object qryTranTRANDiscountUPD: TBooleanField
      FieldName = 'TRAN.DiscountUPD'
    end
    object qryTranTRANDiscountUPDBT: TIntegerField
      FieldName = 'TRAN.DiscountUPDBT'
    end
    object qryTranTRANDisQuantity: TFloatField
      FieldName = 'TRAN.DisQuantity'
    end
    object qryTranTRANDisAmount: TFloatField
      FieldName = 'TRAN.DisAmount'
    end
    object qryTranTRANPelaDailyUPD: TBooleanField
      FieldName = 'TRAN.PelaDailyUPD'
    end
    object qryTranTRANPelaDailyUPDBT: TIntegerField
      FieldName = 'TRAN.PelaDailyUPDBT'
    end
    object qryTranACARDACARDID: TIntegerField
      FieldName = 'ACARD.ACARDID'
    end
    object qryTranACARDACARDCODE: TWideStringField
      FieldName = 'ACARD.ACARDCODE'
      Size = 50
    end
    object qryTranACARDCustimerId: TIntegerField
      FieldName = 'ACARD.CustimerId'
    end
    object qryTranACARDVTypeId: TIntegerField
      FieldName = 'ACARD.VTypeId'
    end
    object qryTranACARDREGNO: TWideStringField
      FieldName = 'ACARD.REGNO'
      Size = 50
    end
    object qryTranACARDACARDHOLDER: TWideStringField
      FieldName = 'ACARD.ACARDHOLDER'
      Size = 30
    end
    object qryTranACARDIsActive: TBooleanField
      FieldName = 'ACARD.IsActive'
    end
    object qryTranACARDEMPLOYEESID: TIntegerField
      FieldName = 'ACARD.EMPLOYEESID'
    end
    object qryTranACARDCostCenterId: TIntegerField
      FieldName = 'ACARD.CostCenterId'
    end
    object qryTranVTYPEVTYPEID: TIntegerField
      FieldName = 'VTYPE.VTYPEID'
    end
    object qryTranVTYPEDescr: TWideStringField
      FieldName = 'VTYPE.Descr'
      Size = 50
    end
    object qryTranREGNOSEQREGNOSEQID: TIntegerField
      FieldName = 'REGNOSEQ.REGNOSEQID'
    end
    object qryTranREGNOSEQREGNO: TWideStringField
      FieldName = 'REGNOSEQ.REGNO'
      Size = 50
    end
    object qryTranTRANTRANID: TIntegerField
      FieldName = 'TRAN.TRANID'
    end
    object qryTranTRANKMBEFORE: TIntegerField
      FieldName = 'TRAN.KMBEFORE'
    end
    object qryTranTRANKMAFTER: TIntegerField
      FieldName = 'TRAN.KMAFTER'
    end
    object qryTranTRANREFSTR: TWideStringField
      FieldName = 'TRAN.REFSTR'
      Size = 50
    end
    object qryTranTRANUNITPRICE: TFloatField
      FieldName = 'TRAN.UNITPRICE'
      DisplayFormat = '0.000'
    end
    object qryTranSITEMCODEINTERMINAL: TIntegerField
      FieldName = 'SITEM.CODEINTERMINAL'
    end
    object qryTranSITEMDESCR: TWideStringField
      FieldName = 'SITEM.DESCR'
      Size = 50
    end
    object qryTranSITEMIGROUPID: TIntegerField
      FieldName = 'SITEM.IGROUPID'
    end
    object qryTranIGROUPNAME: TWideStringField
      FieldName = 'IGROUP.NAME'
      Size = 50
    end
    object qryTranCostCenterCCName: TWideStringField
      FieldName = 'CostCenter.CCName'
      Size = 50
    end
    object qryTranCostCenterCCNameFull: TWideStringField
      FieldName = 'CostCenter.CCNameFull'
      Size = 100
    end
    object qryTranAcardAcardCodeFull: TWideStringField
      FieldName = 'Acard.AcardCodeFull'
      ReadOnly = True
      Size = 19
    end
  end
  object dtsTran: TDataSource [5]
    DataSet = qryTran
    Left = 120
    Top = 72
  end
  object dxComponentPrinter1: TdxComponentPrinter [6]
    CurrentLink = dxComponentPrinter1Link2
    Version = 0
    Left = 360
    Top = 40
    object dxComponentPrinter1Link2: TdxGridReportLink
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
  object SaveDialog1: TSaveDialog [7]
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 712
    Top = 240
  end
  object qry1Customer: TADOQuery [8]
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qry1CustomerCalcFields
    Parameters = <>
    SQL.Strings = (
      '--Select Distinct([Customer.CustomerId]) From'
      '--V_TRA_STA_ACA_CUS'
      'SELECT    *'
      'FROM         dbo.VCustomer_Contacts'
      'WHERE     (CUSTOMERID IN'
      '                  (SELECT DISTINCT [CUSTOMER.CUSTOMERId]'
      '                    FROM          dbo.V_TRA_STA_ACA_CUS'
      '--))')
    Left = 56
    Top = 352
    object qry1CustomerCUSTOMERID: TIntegerField
      DisplayWidth = 5
      FieldName = 'CUSTOMERID'
    end
    object qry1CustomerCustomerName: TWideStringField
      FieldName = 'Customer.Name'
    end
    object qry1CustomerContactsSurname: TWideStringField
      FieldName = 'Contacts.Surname'
    end
    object qry1CustomerContactsName: TWideStringField
      FieldName = 'Contacts.Name'
      Size = 10
    end
    object qry1Customeremail: TWideStringField
      DisplayWidth = 15
      FieldName = 'email'
      Size = 80
    end
    object qry1CustomerPhone: TWideStringField
      DisplayWidth = 15
      FieldName = 'Phone'
      Visible = False
      Size = 45
    end
    object qry1CustomerFax: TWideStringField
      DisplayWidth = 15
      FieldName = 'Fax'
      Size = 45
    end
    object qry1CustomerMobile: TWideStringField
      FieldName = 'Mobile'
      Visible = False
      Size = 45
    end
    object qry1CustomerContactType_Procedure: TWideStringField
      DisplayWidth = 10
      FieldName = 'ContactType_Procedure'
      FixedChar = True
      Size = 15
    end
    object qry1CustomerSendMail: TBooleanField
      DisplayWidth = 5
      FieldName = 'SendMail'
      DisplayValues = #925#945#953';'#927#967#953
    end
    object qry1CustomerSendFax: TBooleanField
      DisplayWidth = 5
      FieldName = 'SendFax'
      DisplayValues = #925#945#953';'#927#967#953
    end
    object qry1CustomerSendPrint: TBooleanField
      DisplayWidth = 5
      FieldName = 'SendPrint'
      DisplayValues = #925#945#953';'#927#967#953
    end
    object qry1CustomerMain: TBooleanField
      FieldName = 'Main'
      Visible = False
    end
    object qry1CustomerAA: TIntegerField
      FieldName = 'AA'
      Visible = False
    end
    object qry1CustomerContactTypeId: TIntegerField
      FieldName = 'ContactTypeId'
      Visible = False
    end
    object qry1CustomerMailORFax: TIntegerField
      FieldName = 'MailORFax'
      Visible = False
    end
    object qry1CustomerCustomerCustomerId: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Customer.CustomerId'
      Calculated = True
    end
    object qry1CustomerLCustSAPId: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustSAPId'
      LookupDataSet = qCustSapId
      LookupKeyFields = 'CustomerId'
      LookupResultField = 'SapCode'
      KeyFields = 'CUSTOMERID'
      Lookup = True
    end
    object qry1CustomerNoAction: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'NoAction'
      Calculated = True
    end
  end
  object DataSource1: TDataSource [9]
    DataSet = qry1Customer
    Left = 56
    Top = 400
  end
  object SaveDialog10: TJvSelectDirectory [10]
    ClassicDialog = False
    Title = #922#945#964#940#955#959#947#959#962' '#947#953#945' '#945#960#959#952#942#954#949#965#963#951' PDF'
    Left = 712
    Top = 296
  end
  object qry1Station: TADOQuery [11]
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qry1StationCalcFields
    Parameters = <>
    SQL.Strings = (
      '--Select Distinct([Station.StationId])'
      '--From V_TRA_STA_ACA_CUS'
      'SELECT    *'
      'FROM         dbo.VStation_Contacts'
      'WHERE     (STATIONID IN'
      '                  (SELECT DISTINCT [TRAN.STATIONID]'
      '                    FROM          dbo.V_TRA_STA_ACA_CUS'
      '--))')
    Left = 136
    Top = 352
    object qry1StationStationid: TIntegerField
      DisplayWidth = 5
      FieldName = 'Stationid'
    end
    object qry1StationStationName: TWideStringField
      DisplayWidth = 20
      FieldName = 'Station.Name'
      Size = 100
    end
    object qry1StationContactsSurname: TWideStringField
      DisplayWidth = 20
      FieldName = 'Contacts.Surname'
      Size = 50
    end
    object qry1StationContactsName: TWideStringField
      DisplayWidth = 10
      FieldName = 'Contacts.Name'
      Size = 50
    end
    object qry1Stationemail: TWideStringField
      DisplayWidth = 15
      FieldName = 'email'
      Size = 80
    end
    object qry1StationPhone: TWideStringField
      FieldName = 'Phone'
      Visible = False
      Size = 45
    end
    object qry1StationFax: TWideStringField
      DisplayWidth = 15
      FieldName = 'Fax'
      Size = 45
    end
    object qry1StationMobile: TWideStringField
      FieldName = 'Mobile'
      Visible = False
      Size = 45
    end
    object qry1StationContactType_Procedure: TWideStringField
      DisplayWidth = 10
      FieldName = 'ContactType_Procedure'
      FixedChar = True
      Size = 15
    end
    object qry1StationSendMail: TBooleanField
      FieldName = 'SendMail'
      DisplayValues = #925#945#953';'#927#967#953
    end
    object qry1StationSendFax: TBooleanField
      FieldName = 'SendFax'
      DisplayValues = #925#945#953';'#927#967#953
    end
    object qry1StationSendPrint: TBooleanField
      FieldName = 'SendPrint'
      DisplayValues = #925#945#953';'#927#967#953
    end
    object qry1StationMain: TBooleanField
      FieldName = 'Main'
      Visible = False
    end
    object qry1StationAA: TIntegerField
      FieldName = 'AA'
      Visible = False
    end
    object qry1StationStationStationId: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Station.StationId'
      Calculated = True
    end
    object qry1StationNoAction: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'NoAction'
      Calculated = True
    end
  end
  object DataSource1St: TDataSource [12]
    DataSet = qry1Station
    Left = 136
    Top = 400
  end
  object qry1Merchant: TADOQuery [13]
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qry1MerchantCalcFields
    Parameters = <>
    SQL.Strings = (
      '--Select Distinct([Merchant.MerchantId])'
      '--From V_TRA_STA_ACA_CUS'
      'SELECT    *'
      'FROM         dbo.VMerchant_Contacts'
      'WHERE     (MERCHANTID IN'
      '                  (SELECT DISTINCT [TRAN.MERCHANTID]'
      '                    FROM          dbo.V_TRA_STA_ACA_CUS'
      '--))')
    Left = 216
    Top = 352
    object qry1MerchantMerchantId: TIntegerField
      DisplayWidth = 5
      FieldName = 'MerchantId'
    end
    object qry1MerchantMerchantName: TWideStringField
      DisplayWidth = 20
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object qry1MerchantContactsSurname: TWideStringField
      DisplayWidth = 20
      FieldName = 'Contacts.Surname'
      Size = 50
    end
    object qry1MerchantContactsName: TWideStringField
      DisplayWidth = 10
      FieldName = 'Contacts.Name'
      Size = 50
    end
    object qry1Merchantemail: TWideStringField
      DisplayWidth = 15
      FieldName = 'email'
      Size = 80
    end
    object qry1MerchantPhone: TWideStringField
      FieldName = 'Phone'
      Visible = False
      Size = 45
    end
    object qry1MerchantFax: TWideStringField
      DisplayWidth = 15
      FieldName = 'Fax'
      Size = 45
    end
    object qry1MerchantMobile: TWideStringField
      FieldName = 'Mobile'
      Visible = False
      Size = 45
    end
    object qry1MerchantContactType_Procedure: TWideStringField
      DisplayWidth = 10
      FieldName = 'ContactType_Procedure'
      FixedChar = True
      Size = 15
    end
    object qry1MerchantSendMail: TBooleanField
      FieldName = 'SendMail'
      DisplayValues = #925#945#953';'#927#967#953
    end
    object qry1MerchantSendFax: TBooleanField
      FieldName = 'SendFax'
      DisplayValues = #925#945#953';'#927#967#953
    end
    object qry1MerchantSendPrint: TBooleanField
      FieldName = 'SendPrint'
      DisplayValues = #925#945#953';'#927#967#953
    end
    object qry1MerchantMain: TBooleanField
      FieldName = 'Main'
      Visible = False
    end
    object qry1MerchantAA: TIntegerField
      FieldName = 'AA'
      Visible = False
    end
    object qry1MerchantMerchantMerchantId: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Merchant.MerchantId'
      Calculated = True
    end
    object qry1MerchantNoAction: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'NoAction'
      Calculated = True
    end
  end
  object DataSource1Merchant: TDataSource [14]
    DataSet = qry1Merchant
    Left = 224
    Top = 400
  end
  object RwMAPISession1: TRwMAPISession [15]
    LogonInfo.UseExtendedMAPI = False
    LogonInfo.Shared = False
    LogonInfo.ProfileRequired = False
    LogonInfo.ForceDownload = False
    LogonInfo.ShowLogonDialog = False
    LogonInfo.NewSession = False
    LogonInfo.NoMail = False
    LogonInfo.NTService = False
    LogonInfo.ShowPasswordDialog = False
    LogonInfo.ShowServiceDialog = False
    LogonInfo.ShortTimeOut = False
    LogonInfo.MultiThreadedNotifications = False
    LogoffInfo.Shared = False
    LogoffInfo.ShowLogoffDialog = False
    Left = 536
    Top = 48
  end
  object dxBarManager1: TActionManager [16]
    ActionBars = <
      item
        ContextItems = <
          item
            Action = actPrint
          end>
        Items = <
          item
            Action = actClose
          end
          item
            Action = actPrint10
          end
          item
            Action = actPrint9
          end
          item
            Action = actPrint8
          end
          item
            Action = actPrint7
          end
          item
            Action = actPrint6
          end
          item
            Action = actPrint5
          end
          item
            Action = actPrint4
          end
          item
            Action = actPrint3
          end
          item
            Action = actPrint2
          end
          item
            Action = actPrint1
          end
          item
            Action = actPrint
          end
          item
            Action = actPreview
          end>
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
        Items = <
          item
            Action = actPrint
          end
          item
            Action = actPrint1
          end
          item
            Action = actPrint2
          end
          item
            Action = actPrint3
          end
          item
            Action = actPrint4
          end
          item
            Action = actPrint5
          end
          item
            Action = actPrint6
          end
          item
            Action = actPrint7
          end
          item
            Action = actPrint8
          end
          item
            Action = actPrint9
          end
          item
            Action = actPrint10
          end>
      end
      item
        ContextItems = <
          item
            Caption = 'ActionClientItem0'
          end>
      end
      item
        Items = <
          item
            Action = actClose
          end
          item
            Action = actPreview
          end
          item
            Items = <
              item
                Action = actPrint
              end
              item
                Action = actPrint1
              end
              item
                Action = actPrint2
              end
              item
                Action = actPrint3
              end
              item
                Action = actPrint4
              end
              item
                Action = actPrint5
              end
              item
                Action = actPrint6
              end
              item
                Action = actPrint7
              end
              item
                Action = actPrint8
              end
              item
                Action = actPrint9
              end
              item
                Action = actPrint10
              end
              item
                Action = actPrint12
              end
              item
                Action = actPrint14
              end
              item
                Action = actPrint22
              end
              item
                Action = actPrint15
              end
              item
                Action = actPrint16
              end
              item
                Action = actPrint17
              end
              item
                Action = actPrint18
              end
              item
                Action = actPrint32
              end
              item
                Action = actPrint40
              end
              item
                Action = actPrint41
              end
              item
                Action = actPrint43
              end
              item
                Action = actPrint42
              end
              item
                Action = actPrint42a
                Caption = #924#951#957#953#945#943#949#962' '#931#965#957#945#955#955#945#947#941#962' '#945#957#940' '#928#949#955#940#964#951' &Grid'
              end>
            Caption = #917#954#964#965#960#974#963#949#953#962
          end
          item
            Items = <
              item
                Action = actCreateFolder
              end
              item
                Action = actPrint7PDF
              end
              item
                Action = actPrint22PDF
              end
              item
                Action = actPrint4Pdf
              end
              item
                Action = actPrint8PDF
              end
              item
                Action = actPrnSend
                Caption = #924#945#950#953#954#942' '#917#954#964#973#960#969#963#951'/'#913#960#959#963#964#959#955#942' &Mail Fax'
              end
              item
                Action = ActSendMail
                Caption = #913#960#959#963#964#959#955#942' M&ail'
              end
              item
                Action = ActSendFax
                Caption = #913#960#959#963#964#959#955#942' &Fax'
              end
              item
                Action = actPrintPDF
                Caption = #917#954#964#973#960#969#963#951' &PDF'
              end
              item
                Action = actPrnSend0
                Caption = 'a&ctPrnSend0'
              end
              item
                Action = actMailSpecific
                Caption = 'ac&tMailSpecific'
              end>
            Caption = '&PDF Customer'
          end
          item
            Items = <
              item
                Action = actCreateFolderSt
              end
              item
                Action = actPrint2PDF
              end
              item
                Action = actPrnSendSt
                Caption = #924#945#950#953#954#942' '#917#954#964#973#960#969#963#951'/'#913#960#959#963#964#959#955#942' &Mail Fax'
              end
              item
                Action = ActSendMailSt
                Caption = #913#960#959#963#964#959#955#942' M&ail St'
              end
              item
                Action = ActSendFaxSt
                Caption = #913#960#959#963#964#959#955#942' &Fax St'
              end
              item
                Action = actPrintPDFSt
                Caption = #917#954#964#973#960#969#963#951' &PDF St'
              end
              item
                Action = actPrnSend0St
                Caption = 'a&ctPrnSend0St'
              end
              item
                Action = actMailSpecificSt
                Caption = 'ac&tMailSpecificSt'
              end>
            Caption = 'P&DF Station'
          end
          item
            Items = <
              item
                Action = actCreateFolderMer
              end
              item
                Action = actPrint2merPdf
              end
              item
                Action = actMerPrnSend
                Caption = #924#945#950#953#954#942' '#917#954#964#973#960#969#963#951'/'#913#960#959#963#964#959#955#942' Ma&il Fax'
              end
              item
                Action = actMerSendMail
                Caption = #913#960#959#963#964#959#955#942' &Mail Merchant'
              end
              item
                Action = actMerSendFax
                Caption = #913#960#959#963#964#959#955#942' &Fax Merchant'
              end
              item
                Action = actMerPrintPDF
                Caption = #917#954#964#973#960#969#963#951' &PDF Merchant'
              end
              item
                Action = actMailSpecificMe
                Caption = '&actMailSpecificMe'
              end>
            Caption = 'PD&F Merchant'
          end
          item
            Action = actOutFolder
          end>
        ActionBar = ActionMainMenuBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 696
    Top = 88
    StyleName = 'Platform Default'
  end
  object OpenDialog1: TOpenDialog [17]
    Filter = 'Adobe Acrobat|*.pdf|Word|*.doc|Pdf Word|*.pdf;*.doc'
    FilterIndex = 3
    Options = [ofNoChangeDir, ofExtensionDifferent, ofFileMustExist, ofNoTestFileCreate, ofNoNetworkButton, ofEnableSizing]
    Title = #917#960#953#955#959#947#942' '#945#961#967#949#943#959#965' '#947#953#945' '#945#960#959#963#964#959#955#942
    Left = 632
    Top = 48
  end
  object qCustSapId: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qry1CustomerCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT    CustomerId, SapCode'
      'FROM         Customer')
    Left = 56
    Top = 272
    object qCustSapIdCustomerId: TAutoIncField
      FieldName = 'CustomerId'
      ReadOnly = True
    end
    object qCustSapIdSapCode: TWideStringField
      FieldName = 'SapCode'
      Size = 10
    end
  end
  object qry101Customer: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT [CUSTOMER.CUSTOMERId] AS CustomerId'
      '                    FROM          dbo.V_TRA_STA_ACA_CUS'
      '')
    Left = 384
    Top = 352
    object qry101CustomerCustomerId: TIntegerField
      DisplayLabel = #928#949#955#940#964#951#962
      FieldName = 'CustomerId'
    end
    object qry101CustomerLCustContExist: TBooleanField
      FieldKind = fkLookup
      FieldName = 'LContExist'
      LookupDataSet = qry1Customer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'Customer.CustomerId'
      KeyFields = 'CustomerId'
      Lookup = True
    end
    object qry101CustomerLCustomerName: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustomerName'
      LookupDataSet = qryCust
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'NAME'
      KeyFields = 'CustomerId'
      Size = 60
      Lookup = True
    end
    object qry101CustomerLNoAction: TBooleanField
      FieldKind = fkLookup
      FieldName = 'LNoAction'
      LookupDataSet = qry1Customer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'NoAction'
      KeyFields = 'CustomerId'
      Lookup = True
    end
  end
  object qry101Station: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT [TRAN.STATIONID] AS StationId'
      '                FROM          dbo.V_TRA_STA_ACA_CUS')
    Left = 464
    Top = 352
    object qry101StationStationId: TIntegerField
      DisplayLabel = #928#961#945#964#942#961#953#959
      FieldName = 'StationId'
    end
    object qry101StationLStaContExist: TBooleanField
      FieldKind = fkLookup
      FieldName = 'LContExist'
      LookupDataSet = qry1Station
      LookupKeyFields = 'Stationid'
      LookupResultField = 'Station.StationId'
      KeyFields = 'StationId'
      Lookup = True
    end
    object qry101StationLSrationName: TStringField
      FieldKind = fkLookup
      FieldName = 'LSrationName'
      LookupDataSet = qryStat
      LookupKeyFields = 'Stationid'
      LookupResultField = 'Name'
      KeyFields = 'StationId'
      Size = 60
      Lookup = True
    end
    object qry101StationLNoAction: TBooleanField
      FieldKind = fkLookup
      FieldName = 'LNoAction'
      LookupDataSet = qry1Station
      LookupKeyFields = 'Stationid'
      LookupResultField = 'NoAction'
      KeyFields = 'StationId'
      Lookup = True
    end
  end
  object qry101Merchant: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT [TRAN.MERCHANTID] AS MerchantId'
      '               FROM          dbo.V_TRA_STA_ACA_CUS')
    Left = 544
    Top = 352
    object qry101MerchantMerchantId: TIntegerField
      DisplayLabel = #904#956#960#959#961#959#962
      FieldName = 'MerchantId'
    end
    object qry101MerchantLMerContExist: TBooleanField
      FieldKind = fkLookup
      FieldName = 'LContExist'
      LookupDataSet = qry1Merchant
      LookupKeyFields = 'MerchantId'
      LookupResultField = 'Merchant.MerchantId'
      KeyFields = 'MerchantId'
      Lookup = True
    end
    object qry101MerchantLMerchantName: TStringField
      FieldKind = fkLookup
      FieldName = 'LMerchantName'
      LookupDataSet = qryMerc
      LookupKeyFields = 'MerchantId'
      LookupResultField = 'Name'
      KeyFields = 'MerchantId'
      Size = 60
      Lookup = True
    end
    object qry101MerchantLNoAction: TBooleanField
      FieldKind = fkLookup
      FieldName = 'LNoAction'
      LookupDataSet = qry1Merchant
      LookupKeyFields = 'MerchantId'
      LookupResultField = 'NoAction'
      KeyFields = 'MerchantId'
      Lookup = True
    end
  end
  object DataSource2: TDataSource
    AutoEdit = False
    DataSet = qry101Customer
    Left = 376
    Top = 408
  end
  object DataSource2St: TDataSource
    AutoEdit = False
    DataSet = qry101Station
    Left = 464
    Top = 408
  end
  object DataSource2Merchant: TDataSource
    AutoEdit = False
    DataSet = qry101Merchant
    Left = 608
    Top = 288
  end
  object qryCust: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CUSTOMER'
      '')
    Left = 384
    Top = 208
    object qryCustCUSTOMERID: TAutoIncField
      FieldName = 'CUSTOMERID'
      ReadOnly = True
    end
    object qryCustNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object qryCustSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object qryCustZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryCustCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryCustAFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object qryCustDOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object qryCustSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qryCustAREAID: TIntegerField
      FieldName = 'AREAID'
    end
    object qryCustLOCATIONID: TIntegerField
      FieldName = 'LOCATIONID'
    end
    object qryCustCGROUPID: TIntegerField
      FieldName = 'CGROUPID'
    end
    object qryCustCCLASSID: TIntegerField
      FieldName = 'CCLASSID'
    end
    object qryCustCREDITAMOUNT: TFloatField
      FieldName = 'CREDITAMOUNT'
    end
    object qryCustINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryCustUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryCustINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryCustUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryCustPROFESSION: TWideStringField
      FieldName = 'PROFESSION'
      Size = 50
    end
    object qryCustBRANCHID: TIntegerField
      FieldName = 'BRANCHID'
    end
    object qryCustSAPCODE: TWideStringField
      FieldName = 'SAPCODE'
      Size = 10
    end
    object qryCustISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qryCustSALESMENID: TIntegerField
      FieldName = 'SALESMENID'
    end
    object qryCustDIAKID: TIntegerField
      FieldName = 'DIAKID'
    end
    object qryCustISTEST: TBooleanField
      FieldName = 'ISTEST'
    end
    object qryCustISCONS: TBooleanField
      FieldName = 'ISCONS'
    end
    object qryCustAREABID: TIntegerField
      FieldName = 'AREABID'
    end
    object qryCustDATEPHEND: TDateTimeField
      FieldName = 'DATEPHEND'
    end
    object qryCustDATELOEND: TDateTimeField
      FieldName = 'DATELOEND'
    end
    object qryCustHASDETAILEMP: TBooleanField
      FieldName = 'HASDETAILEMP'
    end
    object qryCustALLCARDSTOBL: TBooleanField
      FieldName = 'ALLCARDSTOBL'
    end
    object qryCustALLCARDSTOBLDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLDATE'
    end
    object qryCustALLCARDSTOBLSYSDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLSYSDATE'
    end
    object qryCustALLCARDSTOBLUSR: TIntegerField
      FieldName = 'ALLCARDSTOBLUSR'
    end
    object qryCustCUSTOMEROFF: TBooleanField
      FieldName = 'CUSTOMEROFF'
    end
    object qryCustCUSTOMEROFFDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFDATE'
    end
    object qryCustCUSTOMEROFFSYSDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFSYSDATE'
    end
    object qryCustCUSTOMEROFFUSR: TIntegerField
      FieldName = 'CUSTOMEROFFUSR'
    end
    object qryCustCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object qryCustDATEEND: TDateTimeField
      FieldName = 'DATEEND'
    end
    object qryCustCompanyTypeId: TIntegerField
      FieldName = 'CompanyTypeId'
    end
    object qryCustGarantieId: TIntegerField
      FieldName = 'GarantieId'
    end
    object qryCustGarantieAmount: TFloatField
      FieldName = 'GarantieAmount'
    end
    object qryCustComments: TMemoField
      FieldName = 'Comments'
      BlobType = ftMemo
    end
  end
  object qryStat: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM STATION'
      '')
    Left = 456
    Top = 208
    object qryStatStationid: TAutoIncField
      FieldName = 'Stationid'
      ReadOnly = True
    end
    object qryStatName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object qryStatSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object qryStatZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryStatCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryStatAreaId: TIntegerField
      FieldName = 'AreaId'
    end
    object qryStatSalesMenId: TIntegerField
      FieldName = 'SalesMenId'
    end
    object qryStatIGroupId1: TIntegerField
      FieldName = 'IGroupId1'
    end
    object qryStatPososto1: TFloatField
      FieldName = 'Pososto1'
    end
    object qryStatHaveGroup1: TBooleanField
      FieldName = 'HaveGroup1'
    end
    object qryStatIGroupId2: TIntegerField
      FieldName = 'IGroupId2'
    end
    object qryStatPososto2: TFloatField
      FieldName = 'Pososto2'
    end
    object qryStatHaveGroup2: TBooleanField
      FieldName = 'HaveGroup2'
    end
    object qryStatIGroupId3: TIntegerField
      FieldName = 'IGroupId3'
    end
    object qryStatPososto3: TFloatField
      FieldName = 'Pososto3'
    end
    object qryStatHaveGroup3: TBooleanField
      FieldName = 'HaveGroup3'
    end
    object qryStatIGroupId4: TIntegerField
      FieldName = 'IGroupId4'
    end
    object qryStatPososto4: TFloatField
      FieldName = 'Pososto4'
    end
    object qryStatHaveGroup4: TBooleanField
      FieldName = 'HaveGroup4'
    end
    object qryStatIGroupId5: TIntegerField
      FieldName = 'IGroupId5'
    end
    object qryStatPososto5: TFloatField
      FieldName = 'Pososto5'
    end
    object qryStatHaveGroup5: TBooleanField
      FieldName = 'HaveGroup5'
    end
    object qryStatIGroupId6: TIntegerField
      FieldName = 'IGroupId6'
    end
    object qryStatPososto6: TFloatField
      FieldName = 'Pososto6'
    end
    object qryStatHaveGroup6: TBooleanField
      FieldName = 'HaveGroup6'
    end
    object qryStatIGroupId7: TIntegerField
      FieldName = 'IGroupId7'
    end
    object qryStatPososto7: TFloatField
      FieldName = 'Pososto7'
    end
    object qryStatHaveGroup7: TBooleanField
      FieldName = 'HaveGroup7'
    end
    object qryStatIGroupId8: TIntegerField
      FieldName = 'IGroupId8'
    end
    object qryStatPososto8: TFloatField
      FieldName = 'Pososto8'
    end
    object qryStatHaveGroup8: TBooleanField
      FieldName = 'HaveGroup8'
    end
    object qryStatIGroupId9: TIntegerField
      FieldName = 'IGroupId9'
    end
    object qryStatPososto9: TFloatField
      FieldName = 'Pososto9'
    end
    object qryStatHaveGroup9: TBooleanField
      FieldName = 'HaveGroup9'
    end
    object qryStatIGroupId10: TIntegerField
      FieldName = 'IGroupId10'
    end
    object qryStatPososto10: TFloatField
      FieldName = 'Pososto10'
    end
    object qryStatHaveGroup10: TBooleanField
      FieldName = 'HaveGroup10'
    end
    object qryStatDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryStatDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryStatDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryStatInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryStatInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryStatInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object qryStatStopSales: TBooleanField
      FieldName = 'StopSales'
    end
    object qryStatStopSalesUsr: TIntegerField
      FieldName = 'StopSalesUsr'
    end
    object qryStatStopSalesDt: TDateTimeField
      FieldName = 'StopSalesDt'
    end
    object qryStatIsTest: TBooleanField
      FieldName = 'IsTest'
    end
    object qryStatIsTestUsr: TIntegerField
      FieldName = 'IsTestUsr'
    end
    object qryStatIsTestDt: TDateTimeField
      FieldName = 'IsTestDt'
    end
    object qryStatEndPending: TBooleanField
      FieldName = 'EndPending'
    end
    object qryStatEndPendingDT: TDateTimeField
      FieldName = 'EndPendingDT'
    end
    object qryStatEndPendingUsr: TIntegerField
      FieldName = 'EndPendingUsr'
    end
  end
  object qryMerc: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM MERCHANT'
      '')
    Left = 528
    Top = 208
    object qryMercMerchantId: TAutoIncField
      FieldName = 'MerchantId'
      ReadOnly = True
    end
    object qryMercName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object qryMercStreet: TWideStringField
      FieldName = 'Street'
      Size = 50
    end
    object qryMercZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryMercCity: TWideStringField
      FieldName = 'City'
      Size = 50
    end
    object qryMercAFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object qryMercDOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object qryMercISTEST: TBooleanField
      FieldName = 'ISTEST'
    end
    object qryMercAreaId: TIntegerField
      FieldName = 'AreaId'
    end
    object qryMercSAPCode: TWideStringField
      FieldName = 'SAPCode'
      Size = 10
    end
    object qryMercMerchantCode: TWideStringField
      FieldName = 'MerchantCode'
      Size = 50
    end
    object qryMercSalesMenId: TIntegerField
      FieldName = 'SalesMenId'
    end
    object qryMercInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryMercInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryMercUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qryMercUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qryMercDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryMercDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryMercDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryMercInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryMercInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryMercInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object qryMercStopSales: TBooleanField
      FieldName = 'StopSales'
    end
    object qryMercStopSalesUsr: TIntegerField
      FieldName = 'StopSalesUsr'
    end
    object qryMercStopSalesDt: TDateTimeField
      FieldName = 'StopSalesDt'
    end
    object qryMercBranchId: TIntegerField
      FieldName = 'BranchId'
    end
    object qryMercIGroupId1: TIntegerField
      FieldName = 'IGroupId1'
    end
    object qryMercPososto1: TFloatField
      FieldName = 'Pososto1'
    end
    object qryMercIGroupId2: TIntegerField
      FieldName = 'IGroupId2'
    end
    object qryMercPososto2: TFloatField
      FieldName = 'Pososto2'
    end
    object qryMercIGroupId3: TIntegerField
      FieldName = 'IGroupId3'
    end
    object qryMercPososto3: TFloatField
      FieldName = 'Pososto3'
    end
    object qryMercIGroupId4: TIntegerField
      FieldName = 'IGroupId4'
    end
    object qryMercPososto4: TFloatField
      FieldName = 'Pososto4'
    end
    object qryMercIGroupId5: TIntegerField
      FieldName = 'IGroupId5'
    end
    object qryMercPososto5: TFloatField
      FieldName = 'Pososto5'
    end
    object qryMercIGroupId6: TIntegerField
      FieldName = 'IGroupId6'
    end
    object qryMercPososto6: TFloatField
      FieldName = 'Pososto6'
    end
    object qryMercIGroupId7: TIntegerField
      FieldName = 'IGroupId7'
    end
    object qryMercPososto7: TFloatField
      FieldName = 'Pososto7'
    end
    object qryMercIGroupId8: TIntegerField
      FieldName = 'IGroupId8'
    end
    object qryMercPososto8: TFloatField
      FieldName = 'Pososto8'
    end
    object qryMercIGroupId9: TIntegerField
      FieldName = 'IGroupId9'
    end
    object qryMercPososto9: TFloatField
      FieldName = 'Pososto9'
    end
    object qryMercIGroupId10: TIntegerField
      FieldName = 'IGroupId10'
    end
    object qryMercPososto10: TFloatField
      FieldName = 'Pososto10'
    end
  end
  object ActionList2: TActionList
    OnExecute = ActionList2Execute
    Left = 240
    Top = 184
    object actCreateFolderMer: TAction
      Category = 'PDF Merchant'
      Caption = #917#960#953#955#959#947#942' '#922#945#964#945#955#972#947#959#965
      OnExecute = actCreateFolderExecute
    end
    object actMailSpecificMe: TAction
      Category = 'PDF Merchant'
      Caption = 'actMailSpecificMe'
      OnExecute = actMailSpecificMeExecute
    end
    object actPrint7PDF: TAction
      Category = 'PDF Customer'
      Caption = #931#965#957#972#955#945' '#945#957#940' '#917#964#945#953#961#949#943#945'/'#928#961#959#943#959#957'/'#922#940#961#964#945
      OnExecute = actPrintSplit7Execute
    end
    object actPrint22PDF: TAction
      Category = 'PDF Customer'
      Caption = #913#957#945#955#965#964#953#954#940' '#931#964#959#953#967#949#943#945' '#945#957#940' '#922#940#961#964#945
      OnExecute = actPrint22PDFExecute
    end
    object actPrint4Pdf: TAction
      Category = 'PDF Customer'
      Caption = #922#953#957#942#963#949#953#962' '#945#957#940' '#917#964#945#953#961#949#943#945'/'#919#956#949#961#959#956#951#957#943#945'/'#922#940#961#964#945
      OnExecute = actPrint4PdfExecute
    end
    object actCreateFolder: TAction
      Category = 'PDF Customer'
      Caption = #917#960#953#955#959#947#942' '#922#945#964#945#955#972#947#959#965
      OnExecute = actCreateFolderExecute
    end
    object actPrnSend: TAction
      Category = 'PDF Customer'
      Caption = #924#945#950#953#954#942' '#917#954#964#973#960#969#963#951'/'#913#960#959#963#964#959#955#942' Mail Fax'
      OnExecute = actPrnSendExecute
    end
    object actPrint8PDF: TAction
      Category = 'PDF Customer'
      Caption = #913#957#945#955#965#964#953#954#940' '#931#964#959#953#967#949#943#945' '#913#957#940' '#917#964#945#953#961#949#943#945'/'#919#956#949#961#959#956#951#957#943#945
      OnExecute = actPrint8PDFExecute
    end
    object actPrintPDF: TAction
      Category = 'PDF Customer'
      Caption = #917#954#964#973#960#969#963#951' PDF'
      OnExecute = actPrintPDFExecute
    end
    object ActSendMail: TAction
      Category = 'PDF Customer'
      Caption = #913#960#959#963#964#959#955#942' Mail'
      OnExecute = ActSendMailExecute
    end
    object ActSendFax: TAction
      Category = 'PDF Customer'
      Caption = #913#960#959#963#964#959#955#942' Fax'
      OnExecute = ActSendFaxExecute
    end
    object actPrnSend0: TAction
      Category = 'PDF Customer'
      Caption = 'actPrnSend0'
    end
    object actMailSpecific: TAction
      Category = 'PDF Customer'
      Caption = 'actMailSpecific'
      OnExecute = actMailSpecificExecute
    end
    object actCreateFolderSt: TAction
      Category = 'PDF Station'
      Caption = #917#960#953#955#959#947#942' '#922#945#964#945#955#972#947#959#965
      OnExecute = actCreateFolderExecute
    end
    object actPrnSendSt: TAction
      Category = 'PDF Station'
      Caption = #924#945#950#953#954#942' '#917#954#964#973#960#969#963#951'/'#913#960#959#963#964#959#955#942' Mail Fax'
      OnExecute = actPrnSendStExecute
    end
    object actPrintPDFSt: TAction
      Category = 'PDF Station'
      Caption = #917#954#964#973#960#969#963#951' PDF St'
      OnExecute = actPrintPDFStExecute
    end
    object ActSendMailSt: TAction
      Category = 'PDF Station'
      Caption = #913#960#959#963#964#959#955#942' Mail St'
      OnExecute = ActSendMailStExecute
    end
    object ActSendFaxSt: TAction
      Category = 'PDF Station'
      Caption = #913#960#959#963#964#959#955#942' Fax St'
      OnExecute = ActSendFaxStExecute
    end
    object actPrnSend0St: TAction
      Category = 'PDF Station'
      Caption = 'actPrnSend0St'
    end
    object actMailSpecificSt: TAction
      Category = 'PDF Station'
      Caption = 'actMailSpecificSt'
      OnExecute = actMailSpecificStExecute
    end
    object actPrint2PDF: TAction
      Category = 'PDF Station'
      Caption = #913#957#945#955#965#964#953#954#940' '#931#964#959#953#967#949#943#945' '#945#957#940' '#928#961#945#964#942#961#953#959'/'#919#956#949#961#959#956#951#957#943#945
      OnExecute = actPrint2PDFExecute
    end
    object actPrint2merPdf: TAction
      Category = 'PDF Merchant'
      Caption = #913#957#945#955#965#964#953#954#940' '#931#964#959#953#967#949#943#945' '#945#957#940' '#904#956#960#959#961#959'/'#928#961#945#964#942#961#953#959'/'#919#956#949#961#959#956#951#957#943#945
      OnExecute = actPrint2merPdfExecute
    end
    object actMerSendFax: TAction
      Category = 'PDF Merchant'
      Caption = #913#960#959#963#964#959#955#942' Fax Merchant'
      OnExecute = actMerSendFaxExecute
    end
    object actMerSendMail: TAction
      Category = 'PDF Merchant'
      Caption = #913#960#959#963#964#959#955#942' Mail Merchant'
      OnExecute = actMerSendMailExecute
    end
    object actMerPrnSend: TAction
      Category = 'PDF Merchant'
      Caption = #924#945#950#953#954#942' '#917#954#964#973#960#969#963#951'/'#913#960#959#963#964#959#955#942' Mail Fax'
      OnExecute = actMerPrnSendExecute
    end
    object actMerPrintPDF: TAction
      Category = 'PDF Merchant'
      Caption = #917#954#964#973#960#969#963#951' PDF Merchant'
      OnExecute = actMerPrintPDFExecute
    end
  end
end
