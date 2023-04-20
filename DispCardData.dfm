inherited FrmDispCardData: TFrmDispCardData
  Left = 296
  Top = 317
  Caption = #928#961#959#946#959#955#942' '#931#964#959#953#967#949#943#969#957' '#922#940#961#964#945#962
  ClientHeight = 462
  ClientWidth = 723
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  ExplicitWidth = 731
  ExplicitHeight = 489
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = -8
    Top = 102
    Width = 723
    Height = 10
    Align = alNone
    Visible = False
  end
  object PageControl1: TPageControl [1]
    Left = 0
    Top = 106
    Width = 723
    Height = 356
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #922#940#961#964#945
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label7: TLabel
        Left = 16
        Top = 16
        Width = 43
        Height = 13
        Caption = #928#961#972#953#959#957' 1'
      end
      object Label8: TLabel
        Left = 16
        Top = 40
        Width = 43
        Height = 13
        Caption = #928#961#972#953#959#957' 2'
      end
      object Label9: TLabel
        Left = 16
        Top = 64
        Width = 43
        Height = 13
        Caption = #928#961#972#953#959#957' 3'
      end
      object Label10: TLabel
        Left = 16
        Top = 83
        Width = 43
        Height = 13
        Caption = #928#961#972#953#959#957' 4'
      end
      object Label1: TLabel
        Left = 12
        Top = 146
        Width = 55
        Height = 13
        Caption = #168#927#961#953#959' '#924#942#957#945
      end
      object Label6: TLabel
        Left = 248
        Top = 147
        Width = 38
        Height = 13
        Caption = #919#956#941#961#945#962
      end
      object Label3: TLabel
        Left = 12
        Top = 224
        Width = 36
        Height = 13
        Caption = #917#957#940#961#958#951
      end
      object Label4: TLabel
        Left = 16
        Top = 256
        Width = 24
        Height = 13
        Caption = #923#942#958#951
      end
      object Label17: TLabel
        Left = 16
        Top = 112
        Width = 43
        Height = 13
        Caption = #928#961#972#953#959#957' 5'
      end
      object DBEdit1: TDBText
        Left = 100
        Top = 146
        Width = 85
        Height = 18
        Alignment = taRightJustify
        Color = clWindow
        DataField = 'MONTHAMOUNT'
        DataSource = DispCardDataDM.dsACard
        ParentColor = False
      end
      object DBEdit5: TDBText
        Left = 312
        Top = 146
        Width = 81
        Height = 18
        Alignment = taRightJustify
        Color = clWindow
        DataField = 'DAYAMOUNT'
        DataSource = DispCardDataDM.dsACard
        ParentColor = False
      end
      object DBEdit3: TDBText
        Left = 96
        Top = 221
        Width = 89
        Height = 18
        Color = clWindow
        DataField = 'ISSUEDATE'
        DataSource = DispCardDataDM.dsACard
        ParentColor = False
      end
      object DBEdit4: TDBText
        Left = 100
        Top = 248
        Width = 85
        Height = 18
        Color = clWindow
        DataField = 'EXPIREDATE'
        DataSource = DispCardDataDM.dsACard
        ParentColor = False
      end
      object DBLookupComboBox1: TDBText
        Left = 96
        Top = 8
        Width = 161
        Height = 18
        Color = clWindow
        DataField = 'LProd1'
        DataSource = DispCardDataDM.dsACard
        ParentColor = False
      end
      object DBLookupComboBox6: TDBText
        Left = 96
        Top = 32
        Width = 161
        Height = 18
        Color = clWindow
        DataField = 'LProd2'
        DataSource = DispCardDataDM.dsACard
        ParentColor = False
      end
      object DBLookupComboBox7: TDBText
        Left = 96
        Top = 56
        Width = 161
        Height = 18
        Color = clWindow
        DataField = 'LProd3'
        DataSource = DispCardDataDM.dsACard
        ParentColor = False
      end
      object DBLookupComboBox8: TDBText
        Left = 96
        Top = 80
        Width = 161
        Height = 18
        Color = clWindow
        DataField = 'LProd4'
        DataSource = DispCardDataDM.dsACard
        ParentColor = False
      end
      object DBLookupComboBox2: TDBText
        Left = 96
        Top = 104
        Width = 161
        Height = 18
        Color = clWindow
        DataField = 'LProd5'
        DataSource = DispCardDataDM.dsACard
        ParentColor = False
      end
      object DBText1: TDBText
        Left = 292
        Top = 11
        Width = 161
        Height = 18
        Color = clWindow
        DataField = 'LProd6'
        DataSource = DispCardDataDM.dsACard
        ParentColor = False
      end
      object DBText2: TDBText
        Left = 292
        Top = 35
        Width = 161
        Height = 18
        Color = clWindow
        DataField = 'LProd7'
        DataSource = DispCardDataDM.dsACard
        ParentColor = False
      end
      object DBText3: TDBText
        Left = 292
        Top = 59
        Width = 161
        Height = 18
        Color = clWindow
        DataField = 'LProd8'
        DataSource = DispCardDataDM.dsACard
        ParentColor = False
      end
      object DBText4: TDBText
        Left = 292
        Top = 83
        Width = 161
        Height = 18
        Color = clWindow
        DataField = 'LProd9'
        DataSource = DispCardDataDM.dsACard
        ParentColor = False
      end
      object DBText5: TDBText
        Left = 292
        Top = 107
        Width = 161
        Height = 18
        Color = clWindow
        DataField = 'LProd10'
        DataSource = DispCardDataDM.dsACard
        ParentColor = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = #917#964#945#953#961#949#943#945
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
        Width = 273
        Height = 18
        Color = clWindow
        DataField = 'NAME'
        DataSource = DispCardDataDM.dsCust
        ParentColor = False
      end
      object DBEdit7: TDBText
        Left = 88
        Top = 32
        Width = 273
        Height = 18
        Color = clWindow
        DataField = 'STREET'
        DataSource = DispCardDataDM.dsCust
        ParentColor = False
      end
      object DBEdit10: TDBText
        Left = 88
        Top = 80
        Width = 109
        Height = 18
        Color = clWindow
        DataField = 'AFM'
        DataSource = DispCardDataDM.dsCust
        ParentColor = False
      end
      object DBEdit11: TDBText
        Left = 88
        Top = 104
        Width = 137
        Height = 18
        Color = clWindow
        DataField = 'DOY'
        DataSource = DispCardDataDM.dsCust
        ParentColor = False
      end
      object DBEdit8: TDBText
        Left = 88
        Top = 56
        Width = 273
        Height = 18
        Color = clWindow
        DataField = 'ZIP'
        DataSource = DispCardDataDM.dsCust
        ParentColor = False
      end
      object DBEdit9: TDBText
        Left = 88
        Top = 128
        Width = 273
        Height = 18
        Color = clWindow
        DataField = 'CITY'
        DataSource = DispCardDataDM.dsCust
        ParentColor = False
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
        Width = 715
        Height = 328
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
          DataController.DataSource = DispCardDataDM.dsTran
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
          object cxGrid1DBTableView1MerchantMerchantId: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.MerchantId'
            Visible = False
          end
          object cxGrid1DBTableView1MerchantName: TcxGridDBColumn
            DataBinding.FieldName = 'Merchant.Name'
            Width = 81
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
            Visible = False
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
            Visible = False
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
            Visible = False
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
          object cxGrid1DBTableView1TRANAmount: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.Amount'
          end
          object cxGrid1DBTableView1TRANSitemId: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.SitemId'
            Visible = False
          end
          object cxGrid1DBTableView1TRANQuantity: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.Quantity'
          end
          object cxGrid1DBTableView1TRANIsAuto: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.IsAuto'
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
          object cxGrid1DBTableView1TRANTranTime: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.TranTime'
          end
          object cxGrid1DBTableView1TRANIsTyped: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.IsTyped'
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
            Visible = False
          end
          object cxGrid1DBTableView1ACARDIsActive: TcxGridDBColumn
            DataBinding.FieldName = 'ACARD.IsActive'
            Visible = False
          end
          object cxGrid1DBTableView1ACARDEMPLOYEESID: TcxGridDBColumn
            DataBinding.FieldName = 'ACARD.EMPLOYEESID'
            Visible = False
          end
          object cxGrid1DBTableView1ACARDCostCenterId: TcxGridDBColumn
            DataBinding.FieldName = 'ACARD.CostCenterId'
            Visible = False
          end
          object cxGrid1DBTableView1VTYPEVTYPEID: TcxGridDBColumn
            DataBinding.FieldName = 'VTYPE.VTYPEID'
            Visible = False
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
          object cxGrid1DBTableView1TRANTRANID: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.TRANID'
          end
          object cxGrid1DBTableView1TRANKMBEFORE: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.KMBEFORE'
            Visible = False
          end
          object cxGrid1DBTableView1TRANKMAFTER: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.KMAFTER'
          end
          object cxGrid1DBTableView1TRANREFSTR: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.REFSTR'
          end
          object cxGrid1DBTableView1TRANUNITPRICE: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.UNITPRICE'
          end
          object cxGrid1DBTableView1SITEMCODEINTERMINAL: TcxGridDBColumn
            DataBinding.FieldName = 'SITEM.CODEINTERMINAL'
            Visible = False
          end
          object cxGrid1DBTableView1SITEMDESCR: TcxGridDBColumn
            DataBinding.FieldName = 'SITEM.DESCR'
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
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #913#955'.'#922#940#961#964#945#962
      ImageIndex = 3
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object TabSheet5: TTabSheet
      Caption = #913#955'.'#917#964#945#953#961#949#943#945#962
      ImageIndex = 4
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object TabSheet6: TTabSheet
      Caption = #917#947#954#961#943#963#951
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 715
        Height = 328
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
          DataController.DataSource = DispCardDataDM.dsApproval
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
          object cxGridDBTableView1APPROVALID: TcxGridDBColumn
            DataBinding.FieldName = 'APPROVALID'
            Visible = False
          end
          object cxGridDBTableView1APPROVALACARDID: TcxGridDBColumn
            DataBinding.FieldName = 'APPROVALACARDID'
            Visible = False
          end
          object cxGridDBTableView1APPROVALSTATIONID: TcxGridDBColumn
            DataBinding.FieldName = 'APPROVALSTATIONID'
            Visible = False
          end
          object cxGridDBTableView1APPROVALAMOUNT: TcxGridDBColumn
            DataBinding.FieldName = 'APPROVALAMOUNT'
          end
          object cxGridDBTableView1APPROVALCODE: TcxGridDBColumn
            DataBinding.FieldName = 'APPROVALCODE'
          end
          object cxGridDBTableView1INSDT: TcxGridDBColumn
            DataBinding.FieldName = 'INSDT'
          end
          object cxGridDBTableView1UPDDT: TcxGridDBColumn
            DataBinding.FieldName = 'UPDDT'
            Visible = False
          end
          object cxGridDBTableView1INSUSR: TcxGridDBColumn
            DataBinding.FieldName = 'INSUSR'
            Visible = False
          end
          object cxGridDBTableView1UPDUSR: TcxGridDBColumn
            DataBinding.FieldName = 'UPDUSR'
            Visible = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = #922#945#964#945#957#940#955#969#963#951
      ImageIndex = 6
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object TabError: TTabSheet
      Caption = 'TabError'
      ImageIndex = 7
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object BlLab: TLabel
        Left = 24
        Top = 22
        Width = 52
        Height = 37
        Caption = '123'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -32
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 23
    Width = 723
    Height = 73
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 40
      Width = 41
      Height = 13
      Caption = #925#959'.'#922#965#954#955'.'
    end
    object Label5: TLabel
      Left = 16
      Top = 8
      Width = 32
      Height = 13
      Caption = #922#940#961#964#945
    end
    object DBText6: TDBText
      Left = 280
      Top = 8
      Width = 193
      Height = 17
      DataField = 'AcardCodeFull'
      DataSource = DispCardDataDM.dsACard
    end
    object cblcAcard: TcxDBLookupComboBox
      Left = 296
      Top = 33
      DataBinding.DataField = 'CardKey'
      DataBinding.DataSource = DispCardDataDM.dsmemStation
      Properties.Alignment.Horz = taLeftJustify
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'Acard.AcardId'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'Acard.AcardCodeFull'
        end>
      Properties.ListSource = DispCardDataDM.DataSource1
      TabOrder = 0
      Visible = False
      Width = 209
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 104
      Top = 33
      DataBinding.DataField = 'CardKey'
      DataBinding.DataSource = DispCardDataDM.dsmemStation
      Properties.Alignment.Horz = taLeftJustify
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'Acard.AcardId'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'Acard.REGNO'
        end>
      Properties.ListSource = DispCardDataDM.DataSource1
      TabOrder = 1
      OnExit = cxDBLookupComboBox1Exit
      Width = 105
    end
    object MaskEdit1: TMaskEdit
      Left = 104
      Top = 6
      Width = 137
      Height = 21
      EditMask = '\1\4\0\5 \2\800 0000 0000;1;_'
      MaxLength = 19
      TabOrder = 2
      Text = '1405 28            '
      OnExit = MaskEdit1Exit
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 578
      Top = 6
      DataBinding.DataField = 'DateFrom'
      DataBinding.DataSource = DispCardDataDM.dsmemStation
      TabOrder = 3
      Width = 121
    end
  end
  object ActionToolBar1: TActionToolBar [3]
    Left = 0
    Top = 0
    Width = 723
    Height = 23
    ActionManager = ActionManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  inherited popFilter: TPopupMenu
    Left = 388
    Top = 43
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 432
    Top = 16
    object actPin: TAction
      Tag = 1
      Caption = 'Pin'
      OnExecute = actPinExecute
    end
    object actPukk: TAction
      Tag = 1
      Caption = 'Pukk'
      OnExecute = actPukkExecute
    end
    object actMailCard: TAction
      Tag = 1
      Caption = #913#955#955#951#955#959#947#961#945#966#943#945' '#922#940#961#964#945
      OnExecute = actMailCardExecute
    end
    object actMailComp: TAction
      Tag = 1
      Caption = #913#955#955#951#955#959#947#961#945#966#943#945' '#917#964#945#953#961#949#943#945
      OnExecute = actMailCompExecute
    end
    object actApproval: TAction
      Tag = 1
      Caption = #917#947#954#961#943#963#951
      OnExecute = actApprovalExecute
    end
    object actRefresh: TAction
      Caption = #917#973#961#949#963#951
      OnExecute = actRefreshExecute
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
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actPin
            Caption = '&Pin'
          end
          item
            Action = actPukk
            Caption = 'P&ukk'
          end
          item
            Action = actApproval
          end
          item
            Action = actPin
            Caption = 'P&in'
          end>
      end
      item
        Items = <
          item
            Action = actPin
            Caption = '&Pin'
          end
          item
            Action = actPukk
            Caption = 'P&ukk'
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 528
    Top = 16
    StyleName = 'Platform Default'
  end
end
