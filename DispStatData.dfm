inherited frmDispStatData: TfrmDispStatData
  Left = 280
  Top = 173
  Caption = #928#961#959#946#959#955#942' '#931#964#959#953#967#949#943#969#957' '#928#961#945#964#951#961#943#959#965
  ClientHeight = 513
  ClientWidth = 775
  OldCreateOrder = True
  OnCreate = FormCreate
  ExplicitWidth = 783
  ExplicitHeight = 540
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 81
    Width = 775
    Height = 10
    Cursor = crVSplit
    Align = alTop
    Visible = False
    ExplicitTop = 87
  end
  object PageControl1: TPageControl [1]
    Left = 0
    Top = 91
    Width = 775
    Height = 422
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = #928#961#945#964#942#961#953#959
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label11: TLabel
        Left = 8
        Top = 16
        Width = 44
        Height = 13
        Caption = #917#964#945#953#961#949#943#945
      end
      object Label12: TLabel
        Left = 8
        Top = 40
        Width = 53
        Height = 13
        Caption = #916#953#949#973#952#965#957#963#951
      end
      object Label14: TLabel
        Left = 8
        Top = 64
        Width = 18
        Height = 13
        Caption = #932'.'#922'.'
      end
      object Label13: TLabel
        Left = 8
        Top = 88
        Width = 25
        Height = 13
        Caption = #913#934#924
      end
      object Label15: TLabel
        Left = 8
        Top = 112
        Width = 22
        Height = 13
        Caption = #916#927#933
      end
      object Label16: TLabel
        Left = 8
        Top = 136
        Width = 24
        Height = 13
        Caption = #928#972#955#951
      end
      object DBEdit6: TDBText
        Left = 88
        Top = 8
        Width = 345
        Height = 18
        Color = clWindow
        DataField = 'Merchant.Name'
        DataSource = DispStatDataDM.dsMerchant
        ParentColor = False
      end
      object DBEdit7: TDBText
        Left = 88
        Top = 32
        Width = 545
        Height = 18
        Color = clWindow
        DataField = 'Station.Street'
        DataSource = DispStatDataDM.dsMerchant
        ParentColor = False
        OnClick = DBEdit7Click
      end
      object DBEdit10: TDBText
        Left = 88
        Top = 80
        Width = 81
        Height = 18
        Color = clWindow
        DataField = 'Merchant.AFM'
        DataSource = DispStatDataDM.dsMerchant
        ParentColor = False
      end
      object DBEdit11: TDBText
        Left = 88
        Top = 104
        Width = 129
        Height = 18
        Color = clWindow
        DataField = 'Merchant.DOY'
        DataSource = DispStatDataDM.dsMerchant
        ParentColor = False
      end
      object DBEdit9: TDBText
        Left = 88
        Top = 128
        Width = 265
        Height = 18
        Color = clWindow
        DataField = 'Station.City'
        DataSource = DispStatDataDM.dsMerchant
        ParentColor = False
      end
      object DBEdit8: TDBText
        Left = 88
        Top = 56
        Width = 81
        Height = 18
        Color = clWindow
        DataField = 'Station.ZIP'
        DataSource = DispStatDataDM.dsMerchant
        ParentColor = False
      end
      object DBText3: TDBText
        Left = 88
        Top = 152
        Width = 81
        Height = 18
        Color = clWindow
        DataField = 'Merchant.SAPCode'
        DataSource = DispStatDataDM.dsMerchant
        ParentColor = False
      end
      object Label1: TLabel
        Left = 12
        Top = 155
        Width = 21
        Height = 13
        Caption = 'SAP'
      end
      object DBCheckBox1: TDBCheckBox
        Left = 12
        Top = 255
        Width = 97
        Height = 17
        Alignment = taLeftJustify
        Caption = #914#949#957#950#943#957#949#962
        DataField = 'HaveGroup1'
        DataSource = DispStatDataDM.dsStation
        ReadOnly = True
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 12
        Top = 278
        Width = 97
        Height = 17
        Alignment = taLeftJustify
        Caption = #928#949#964#961#941#955#945#953#945
        DataField = 'HaveGroup2'
        DataSource = DispStatDataDM.dsStation
        ReadOnly = True
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 12
        Top = 301
        Width = 97
        Height = 17
        Alignment = taLeftJustify
        Caption = #923#953#960#945#957#964#953#954#940
        DataField = 'HaveGroup3'
        DataSource = DispStatDataDM.dsStation
        ReadOnly = True
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 115
        Top = 255
        Width = 97
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Mini Market'
        DataField = 'HaveGroup4'
        DataSource = DispStatDataDM.dsStation
        ReadOnly = True
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox5: TDBCheckBox
        Left = 115
        Top = 278
        Width = 97
        Height = 17
        Alignment = taLeftJustify
        Caption = #928#955#965#957#964#942#961#953#959
        DataField = 'HaveGroup5'
        DataSource = DispStatDataDM.dsStation
        ReadOnly = True
        TabOrder = 4
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox6: TDBCheckBox
        Left = 120
        Top = 301
        Width = 97
        Height = 17
        Alignment = taLeftJustify
        Caption = 'AutoGas'
        DataField = 'HaveGroup6'
        DataSource = DispStatDataDM.dsStation
        ReadOnly = True
        TabOrder = 5
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 416
        Top = 80
        Width = 281
        Height = 129
        DataSource = DispStatDataDM.dtsStationTerminal
        PanelHeight = 43
        PanelWidth = 265
        TabOrder = 6
        object DBText1: TDBText
          Left = 24
          Top = 16
          Width = 65
          Height = 17
          DataField = 'TerminalCode'
          DataSource = DispStatDataDM.dtsStationTerminal
        end
        object DBText2: TDBText
          Left = 112
          Top = 16
          Width = 65
          Height = 17
          DataField = 'TerminalSerialNo'
          DataSource = DispStatDataDM.dtsStationTerminal
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #922#953#957#942#963#949#953#962
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 767
        Height = 394
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          PopupMenu = popFilter
          OnDblClick = actEditTranExecute
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
          DataController.DataSource = DispStatDataDM.dsTran
          DataController.DetailKeyFieldNames = 'TRAN.TRANID'
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
          object cxGrid1DBTableView1MerchantMerchantId: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.MerchantId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1MerchantName: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.Name'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1MerchantStreet: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.Street'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1MerchantZip: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.Zip'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1MerchantCity: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.City'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1MerchantAFM: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.AFM'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1MerchantDOY: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.DOY'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1MerchantIsTest: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.IsTest'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1MerchantAreaId: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.AreaId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1MerchantSAPCode: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.SAPCode'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1MerchantMerchantCode: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.MerchantCode'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1MerchantSalesMenId: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.SalesMenId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1MerchantDeleted: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.Deleted'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1MerchantInActive: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.InActive'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1MerchantStopSales: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.StopSales'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1StationStationId: TcxGridDBColumn
            DataBinding.FieldName = 'Station.StationId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1StationName: TcxGridDBColumn
            DataBinding.FieldName = 'Station.Name'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1StationStreet: TcxGridDBColumn
            DataBinding.FieldName = 'Station.Street'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1StationZIP: TcxGridDBColumn
            DataBinding.FieldName = 'Station.ZIP'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1StationCity: TcxGridDBColumn
            DataBinding.FieldName = 'Station.City'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1StationAreaId: TcxGridDBColumn
            DataBinding.FieldName = 'Station.AreaId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1StationSalesMenId: TcxGridDBColumn
            DataBinding.FieldName = 'Station.SalesMenId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1StationDeleted: TcxGridDBColumn
            DataBinding.FieldName = 'Station.Deleted'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1StationInActive: TcxGridDBColumn
            DataBinding.FieldName = 'Station.InActive'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1StationStopSales: TcxGridDBColumn
            DataBinding.FieldName = 'Station.StopSales'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TerminalTerminalCode: TcxGridDBColumn
            DataBinding.FieldName = 'Terminal.TerminalCode'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TerminalTerminalId: TcxGridDBColumn
            DataBinding.FieldName = 'Terminal.TerminalId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TerminalSerialNo: TcxGridDBColumn
            DataBinding.FieldName = 'Terminal.SerialNo'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CUSTOMERCUSTOMERId: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER.CUSTOMERId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CUSTOMERName: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER.Name'
          end
          object cxGrid1DBTableView1CUSTOMERZip: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER.Zip'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CUSTOMERStreet: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER.Street'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CUSTOMERCity: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER.City'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CUSTOMERAFM: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER.AFM'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CUSTOMERDOY: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER.DOY'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CUSTOMERAreaId: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER.AreaId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CUSTOMERCGroupId: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER.CGroupId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CUSTOMERCClassId: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER.CClassId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CUSTOMERBranchId: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER.BranchId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CUSTOMERSAPCode: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER.SAPCode'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CUSTOMERIsActive: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER.IsActive'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CUSTOMERSalesMenId: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER.SalesMenId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CUSTOMERIsTest: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER.IsTest'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CUSTOMERAreaBId: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER.AreaBId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CUSTOMERHASDETAILEMP: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER.HASDETAILEMP'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CUSTOMERCUSTOMEROFF: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMER.CUSTOMEROFF'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANTRANDATE: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.TRANDATE'
          end
          object cxGrid1DBTableView1TRANACARDID: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.ACARDID'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANMerchantId: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.MerchantId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANStationId: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.StationId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANTerminalId: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.TerminalId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANAmount: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.Amount'
          end
          object cxGrid1DBTableView1TRANSitemId: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.SitemId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANQuantity: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.Quantity'
          end
          object cxGrid1DBTableView1TRANIsAuto: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.IsAuto'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANStationUPD: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.StationUPD'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANACARDUPD: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.ACARDUPD'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANIsVoid: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.IsVoid'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANBatchNo: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.BatchNo'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANCommissionUpd: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.CommissionUpd'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANStationUPDBT: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.StationUPDBT'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANAcardUPDBT: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.AcardUPDBT'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANCommissionUPDBT: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.CommissionUPDBT'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANTranTime: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.TranTime'
          end
          object cxGrid1DBTableView1TRANIsTyped: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.IsTyped'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANDiscountUPD: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.DiscountUPD'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANDiscountUPDBT: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.DiscountUPDBT'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANDisQuantity: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.DisQuantity'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANDisAmount: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.DisAmount'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANPelaDailyUPD: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.PelaDailyUPD'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANPelaDailyUPDBT: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.PelaDailyUPDBT'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1ACARDACARDID: TcxGridDBColumn
            DataBinding.FieldName = 'ACARD.ACARDID'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1ACARDACARDCODE: TcxGridDBColumn
            DataBinding.FieldName = 'ACARD.ACARDCODE'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1ACARDCustimerId: TcxGridDBColumn
            DataBinding.FieldName = 'ACARD.CustimerId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1ACARDVTypeId: TcxGridDBColumn
            DataBinding.FieldName = 'ACARD.VTypeId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1ACARDREGNO: TcxGridDBColumn
            DataBinding.FieldName = 'ACARD.REGNO'
          end
          object cxGrid1DBTableView1ACARDACARDHOLDER: TcxGridDBColumn
            DataBinding.FieldName = 'ACARD.ACARDHOLDER'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1ACARDIsActive: TcxGridDBColumn
            DataBinding.FieldName = 'ACARD.IsActive'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1ACARDEMPLOYEESID: TcxGridDBColumn
            DataBinding.FieldName = 'ACARD.EMPLOYEESID'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1ACARDCostCenterId: TcxGridDBColumn
            DataBinding.FieldName = 'ACARD.CostCenterId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1VTYPEVTYPEID: TcxGridDBColumn
            DataBinding.FieldName = 'VTYPE.VTYPEID'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1VTYPEDescr: TcxGridDBColumn
            DataBinding.FieldName = 'VTYPE.Descr'
          end
          object cxGrid1DBTableView1REGNOSEQREGNOSEQID: TcxGridDBColumn
            DataBinding.FieldName = 'REGNOSEQ.REGNOSEQID'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1REGNOSEQREGNO: TcxGridDBColumn
            DataBinding.FieldName = 'REGNOSEQ.REGNO'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANTRANID: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.TRANID'
          end
          object cxGrid1DBTableView1TRANKMBEFORE: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.KMBEFORE'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANKMAFTER: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.KMAFTER'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1TRANREFSTR: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.REFSTR'
          end
          object cxGrid1DBTableView1TRANUNITPRICE: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.UNITPRICE'
          end
          object cxGrid1DBTableView1SITEMCODEINTERMINAL: TcxGridDBColumn
            DataBinding.FieldName = 'SITEM.CODEINTERMINAL'
          end
          object cxGrid1DBTableView1SITEMDESCR: TcxGridDBColumn
            DataBinding.FieldName = 'SITEM.DESCR'
          end
          object cxGrid1DBTableView1SITEMIGROUPID: TcxGridDBColumn
            DataBinding.FieldName = 'SITEM.IGROUPID'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1IGROUPNAME: TcxGridDBColumn
            DataBinding.FieldName = 'IGROUP.NAME'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CostCenterCCName: TcxGridDBColumn
            DataBinding.FieldName = 'CostCenter.CCName'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1CostCenterCCNameFull: TcxGridDBColumn
            DataBinding.FieldName = 'CostCenter.CCNameFull'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGrid1DBTableView1AcardAcardCodeFull: TcxGridDBColumn
            DataBinding.FieldName = 'Acard.AcardCodeFull'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = #917#947#954#961#943#963#951
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 767
        Height = 394
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView2: TcxGridDBTableView
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
          DataController.DataSource = DispStatDataDM.dsApproval
          DataController.DetailKeyFieldNames = 'APPROVALID'
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
          object cxGridDBTableView2MerchantName: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.Name'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridDBTableView2StationStreet: TcxGridDBColumn
            DataBinding.FieldName = 'Station.Street'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridDBTableView2StationCity: TcxGridDBColumn
            DataBinding.FieldName = 'Station.City'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridDBTableView2APPROVALID: TcxGridDBColumn
            DataBinding.FieldName = 'APPROVALID'
          end
          object cxGridDBTableView2APPROVALAMOUNT: TcxGridDBColumn
            DataBinding.FieldName = 'APPROVALAMOUNT'
          end
          object cxGridDBTableView2APPROVALCODE: TcxGridDBColumn
            DataBinding.FieldName = 'APPROVALCODE'
          end
          object cxGridDBTableView2AcardAcardCodeFull: TcxGridDBColumn
            DataBinding.FieldName = 'Acard.AcardCodeFull'
          end
          object cxGridDBTableView2INSUSR: TcxGridDBColumn
            DataBinding.FieldName = 'INSUSR'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridDBTableView2Name: TcxGridDBColumn
            DataBinding.FieldName = 'Name'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridDBTableView2INSDT: TcxGridDBColumn
            DataBinding.FieldName = 'INSDT'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridDBTableView2MerchantMerchantId: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.MerchantId'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridDBTableView2TerminalTerminalid: TcxGridDBColumn
            DataBinding.FieldName = 'Terminal.Terminalid'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridDBTableView2APPROVALACARDID: TcxGridDBColumn
            DataBinding.FieldName = 'APPROVALACARDID'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridDBTableView2APPROVALSTATIONID: TcxGridDBColumn
            DataBinding.FieldName = 'APPROVALSTATIONID'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Contacts'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 767
        Height = 394
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          PopupMenu = popFilter
          OnDblClick = cxGridDBTableView1DblClick
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
          DataController.DataSource = DispStatDataDM.dtsContacts
          DataController.DetailKeyFieldNames = 'Stationid'
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
          object cxGridDBTableView1ContactType_Procedure: TcxGridDBColumn
            DataBinding.FieldName = 'ContactType_Procedure'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridDBTableView1ContactsName: TcxGridDBColumn
            DataBinding.FieldName = 'Contacts.Name'
          end
          object cxGridDBTableView1ContactsSurname: TcxGridDBColumn
            DataBinding.FieldName = 'Contacts.Surname'
          end
          object cxGridDBTableView1email: TcxGridDBColumn
            DataBinding.FieldName = 'email'
          end
          object cxGridDBTableView1Phone: TcxGridDBColumn
            DataBinding.FieldName = 'Phone'
          end
          object cxGridDBTableView1Fax: TcxGridDBColumn
            DataBinding.FieldName = 'Fax'
          end
          object cxGridDBTableView1Mobile: TcxGridDBColumn
            DataBinding.FieldName = 'Mobile'
          end
          object cxGridDBTableView1SendMail: TcxGridDBColumn
            DataBinding.FieldName = 'SendMail'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridDBTableView1SendFax: TcxGridDBColumn
            DataBinding.FieldName = 'SendFax'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridDBTableView1SendPrint: TcxGridDBColumn
            DataBinding.FieldName = 'SendPrint'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridDBTableView1Main: TcxGridDBColumn
            DataBinding.FieldName = 'Main'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridDBTableView1AA: TcxGridDBColumn
            DataBinding.FieldName = 'AA'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridDBTableView1Stationid: TcxGridDBColumn
            DataBinding.FieldName = 'Stationid'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridDBTableView1StationName: TcxGridDBColumn
            DataBinding.FieldName = 'Station.Name'
            Visible = False
            VisibleForCustomization = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #917#960#953#954#959#953#957#969#957#943#945
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 767
        Height = 394
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView3: TcxGridDBTableView
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
          DataController.DataSource = DispStatDataDM.dtsTRCALLDET
          DataController.DetailKeyFieldNames = 'TRCALLDDATE'
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
          object cxGridDBTableView3TRCALLDDATE: TcxGridDBColumn
            DataBinding.FieldName = 'TRCALLDDATE'
          end
          object cxGridDBTableView3TRCALLDSTATIONID: TcxGridDBColumn
            DataBinding.FieldName = 'TRCALLDSTATIONID'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridDBTableView3TRCALLDSTATUS: TcxGridDBColumn
            DataBinding.FieldName = 'TRCALLDSTATUS'
            Visible = False
            VisibleForCustomization = False
          end
          object cxGridDBTableView3LCallStatus: TcxGridDBColumn
            DataBinding.FieldName = 'LCallStatus'
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 23
    Width = 775
    Height = 58
    Align = alTop
    TabOrder = 1
    object Label5: TLabel
      Left = 16
      Top = 8
      Width = 47
      Height = 13
      Caption = #928#961#945#964#942#961#953#959
    end
    object BlLab: TLabel
      Left = 24
      Top = 36
      Width = 9
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cblc15: TcxDBLookupComboBox
      Left = 96
      Top = 6
      TabStop = False
      DataBinding.DataField = 'StationId'
      DataBinding.DataSource = DispStatDataDM.dsmemStation
      Properties.Alignment.Horz = taLeftJustify
      Properties.ClearKey = 27
      Properties.KeyFieldNames = 'Station.StationId'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'LFullName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DispStatDataDM.dsStationPopUp
      TabOrder = 0
      OnExit = cblc15Exit
      Width = 361
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 96
      Top = 31
      TabStop = False
      DataBinding.DataField = 'StationId'
      DataBinding.DataSource = DispStatDataDM.dsmemStation
      Properties.Alignment.Horz = taLeftJustify
      Properties.ClearKey = 27
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'Station.StationId'
      Properties.ListColumns = <
        item
          FieldName = 'LFullName2'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = DispStatDataDM.dsqryStationPopUp2
      TabOrder = 1
      OnExit = cblc15Exit
      Width = 361
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 624
      Top = 6
      TabStop = False
      DataBinding.DataField = 'DateFrom'
      DataBinding.DataSource = DispStatDataDM.dsmemStation
      TabOrder = 2
      Width = 121
    end
  end
  object ActionToolBar1: TActionToolBar [3]
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
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 680
    Top = 128
    object actMailComp: TAction
      Tag = 1
      Caption = #913#955#955#951#955#959#947#961#945#966#943#945' '#931#964#945#952#956#959#973
      OnExecute = actMailCompExecute
    end
    object actApproval: TAction
      Tag = 1
      Caption = #917#947#954#961#943#963#951
      OnExecute = actApprovalExecute
    end
    object actRefresh: TAction
      Caption = 'Refresh'
      OnExecute = actRefreshExecute
    end
    object actInsError: TAction
      Tag = 1
      Caption = #928#961#972#946#955#951#956#945' '#932#949#961#956#945#964#953#954#959#973
      OnExecute = actInsErrorExecute
    end
    object actInsErrpp: TAction
      Tag = 1
      Caption = #928#961#972#946#955#951#956#945' '#931#965#957#945#955#955#945#947#942#962
      OnExecute = actInsErrppExecute
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
      OnExecute = UpdateActionsExecute
    end
    object actInsertTran: TAction
      Caption = #925#941#945' '#917#947#947#961#945#966#942
      OnExecute = actInsertTranExecute
    end
    object actEditTran: TAction
      Caption = #913#955#955#945#947#942' '#917#947#947#961#945#966#942#962
      OnExecute = actEditTranExecute
    end
  end
  object dxBarManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actApproval
          end
          item
            Action = actRefresh
            Caption = '&Refresh'
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 544
    Top = 80
    StyleName = 'Platform Default'
  end
end
