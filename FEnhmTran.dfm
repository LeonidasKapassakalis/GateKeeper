inherited frmFEnhmTran: TfrmFEnhmTran
  Left = 244
  Caption = #917#957#951#956#941#961#969#963#951' '#931#965#963#964#951#956#940#964#969#957
  ClientHeight = 513
  ClientWidth = 775
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 783
  ExplicitHeight = 540
  PixelsPerInch = 96
  TextHeight = 13
  object ActionMainMenuBar1: TActionMainMenuBar [0]
    Left = 0
    Top = 0
    Width = 775
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
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 23
    Width = 775
    Height = 471
    Align = alClient
    TabOrder = 1
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
      DataController.DataSource = dtsTran
      DataController.DetailKeyFieldNames = 'TRANID'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skCount
          FieldName = 'TRANID'
          DisplayText = #928#955#942#952#959#962
        end>
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
      DataController.DataSource = dtsTranDet
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
      object cxGrid1DBTableView2FullCardNo: TcxGridDBColumn
        DataBinding.FieldName = 'FullCardNo'
      end
      object cxGrid1DBTableView2LSitem: TcxGridDBColumn
        DataBinding.FieldName = 'LSitem'
      end
      object cxGrid1DBTableView2MerchantMerchantId: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.MerchantId'
        Visible = False
      end
      object cxGrid1DBTableView2MerchantName: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.Name'
      end
      object cxGrid1DBTableView2MerchantStreet: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.Street'
        Visible = False
      end
      object cxGrid1DBTableView2MerchantZip: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.Zip'
        Visible = False
      end
      object cxGrid1DBTableView2MerchantCity: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.City'
        Visible = False
      end
      object cxGrid1DBTableView2MerchantAFM: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.AFM'
        Visible = False
      end
      object cxGrid1DBTableView2MerchantDOY: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.DOY'
        Visible = False
      end
      object cxGrid1DBTableView2MerchantIsTest: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.IsTest'
        Visible = False
      end
      object cxGrid1DBTableView2MerchantAreaId: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.AreaId'
        Visible = False
      end
      object cxGrid1DBTableView2MerchantSAPCode: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.SAPCode'
        Visible = False
      end
      object cxGrid1DBTableView2MerchantMerchantCode: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.MerchantCode'
        Visible = False
      end
      object cxGrid1DBTableView2MerchantSalesMenId: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.SalesMenId'
        Visible = False
      end
      object cxGrid1DBTableView2MerchantDeleted: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.Deleted'
        Visible = False
      end
      object cxGrid1DBTableView2MerchantInActive: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.InActive'
        Visible = False
      end
      object cxGrid1DBTableView2MerchantStopSales: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.StopSales'
        Visible = False
      end
      object cxGrid1DBTableView2StationStationId: TcxGridDBColumn
        DataBinding.FieldName = 'Station.StationId'
      end
      object cxGrid1DBTableView2StationName: TcxGridDBColumn
        DataBinding.FieldName = 'Station.Name'
      end
      object cxGrid1DBTableView2StationStreet: TcxGridDBColumn
        DataBinding.FieldName = 'Station.Street'
        Visible = False
      end
      object cxGrid1DBTableView2StationZIP: TcxGridDBColumn
        DataBinding.FieldName = 'Station.ZIP'
        Visible = False
      end
      object cxGrid1DBTableView2StationCity: TcxGridDBColumn
        DataBinding.FieldName = 'Station.City'
        Visible = False
      end
      object cxGrid1DBTableView2StationAreaId: TcxGridDBColumn
        DataBinding.FieldName = 'Station.AreaId'
        Visible = False
      end
      object cxGrid1DBTableView2StationSalesMenId: TcxGridDBColumn
        DataBinding.FieldName = 'Station.SalesMenId'
        Visible = False
      end
      object cxGrid1DBTableView2StationDeleted: TcxGridDBColumn
        DataBinding.FieldName = 'Station.Deleted'
        Visible = False
      end
      object cxGrid1DBTableView2StationInActive: TcxGridDBColumn
        DataBinding.FieldName = 'Station.InActive'
        Visible = False
      end
      object cxGrid1DBTableView2StationStopSales: TcxGridDBColumn
        DataBinding.FieldName = 'Station.StopSales'
        Visible = False
      end
      object cxGrid1DBTableView2TerminalTerminalCode: TcxGridDBColumn
        DataBinding.FieldName = 'Terminal.TerminalCode'
      end
      object cxGrid1DBTableView2TerminalTerminalId: TcxGridDBColumn
        DataBinding.FieldName = 'Terminal.TerminalId'
        Visible = False
      end
      object cxGrid1DBTableView2TerminalSerialNo: TcxGridDBColumn
        DataBinding.FieldName = 'Terminal.SerialNo'
        Visible = False
      end
      object cxGrid1DBTableView2CUSTOMERCUSTOMERId: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.CUSTOMERId'
      end
      object cxGrid1DBTableView2CUSTOMERName: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.Name'
      end
      object cxGrid1DBTableView2CUSTOMERZip: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.Zip'
        Visible = False
      end
      object cxGrid1DBTableView2CUSTOMERStreet: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.Street'
        Visible = False
      end
      object cxGrid1DBTableView2CUSTOMERCity: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.City'
      end
      object cxGrid1DBTableView2CUSTOMERAFM: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.AFM'
        Visible = False
      end
      object cxGrid1DBTableView2CUSTOMERDOY: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.DOY'
        Visible = False
      end
      object cxGrid1DBTableView2CUSTOMERAreaId: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.AreaId'
        Visible = False
      end
      object cxGrid1DBTableView2CUSTOMERCGroupId: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.CGroupId'
        Visible = False
      end
      object cxGrid1DBTableView2CUSTOMERCClassId: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.CClassId'
        Visible = False
      end
      object cxGrid1DBTableView2CUSTOMERBranchId: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.BranchId'
        Visible = False
      end
      object cxGrid1DBTableView2CUSTOMERSAPCode: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.SAPCode'
      end
      object cxGrid1DBTableView2CUSTOMERIsActive: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.IsActive'
        Visible = False
      end
      object cxGrid1DBTableView2CUSTOMERSalesMenId: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.SalesMenId'
        Visible = False
      end
      object cxGrid1DBTableView2CUSTOMERIsTest: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.IsTest'
        Visible = False
      end
      object cxGrid1DBTableView2CUSTOMERAreaBId: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.AreaBId'
        Visible = False
      end
      object cxGrid1DBTableView2CUSTOMERHASDETAILEMP: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.HASDETAILEMP'
        Visible = False
      end
      object cxGrid1DBTableView2CUSTOMERCUSTOMEROFF: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.CUSTOMEROFF'
        Visible = False
      end
      object cxGrid1DBTableView2TRANTRANDATE: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.TRANDATE'
      end
      object cxGrid1DBTableView2TRANACARDID: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.ACARDID'
        Visible = False
      end
      object cxGrid1DBTableView2TRANMerchantId: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.MerchantId'
        Visible = False
      end
      object cxGrid1DBTableView2TRANStationId: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.StationId'
        Visible = False
      end
      object cxGrid1DBTableView2TRANTerminalId: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.TerminalId'
        Visible = False
      end
      object cxGrid1DBTableView2TRANAmount: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.Amount'
      end
      object cxGrid1DBTableView2TRANSitemId: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.SitemId'
        Visible = False
      end
      object cxGrid1DBTableView2TRANQuantity: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.Quantity'
      end
      object cxGrid1DBTableView2TRANIsAuto: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.IsAuto'
      end
      object cxGrid1DBTableView2TRANStationUPD: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.StationUPD'
        Visible = False
      end
      object cxGrid1DBTableView2TRANACARDUPD: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.ACARDUPD'
        Visible = False
      end
      object cxGrid1DBTableView2TRANIsVoid: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.IsVoid'
        Visible = False
      end
      object cxGrid1DBTableView2TRANBatchNo: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.BatchNo'
        Visible = False
      end
      object cxGrid1DBTableView2TRANCommissionUpd: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.CommissionUpd'
        Visible = False
      end
      object cxGrid1DBTableView2TRANStationUPDBT: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.StationUPDBT'
        Visible = False
      end
      object cxGrid1DBTableView2TRANAcardUPDBT: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.AcardUPDBT'
        Visible = False
      end
      object cxGrid1DBTableView2TRANCommissionUPDBT: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.CommissionUPDBT'
        Visible = False
      end
      object cxGrid1DBTableView2TRANTranTime: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.TranTime'
      end
      object cxGrid1DBTableView2TRANIsTyped: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.IsTyped'
        Visible = False
      end
      object cxGrid1DBTableView2TRANDiscountUPD: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.DiscountUPD'
        Visible = False
      end
      object cxGrid1DBTableView2TRANDiscountUPDBT: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.DiscountUPDBT'
        Visible = False
      end
      object cxGrid1DBTableView2TRANDisQuantity: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.DisQuantity'
      end
      object cxGrid1DBTableView2TRANDisAmount: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.DisAmount'
      end
      object cxGrid1DBTableView2TRANPelaDailyUPD: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.PelaDailyUPD'
        Visible = False
      end
      object cxGrid1DBTableView2TRANPelaDailyUPDBT: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.PelaDailyUPDBT'
        Visible = False
      end
      object cxGrid1DBTableView2ACARDACARDID: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.ACARDID'
        Visible = False
      end
      object cxGrid1DBTableView2ACARDACARDCODE: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.ACARDCODE'
        Visible = False
      end
      object cxGrid1DBTableView2ACARDCustimerId: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.CustimerId'
        Visible = False
      end
      object cxGrid1DBTableView2ACARDVTypeId: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.VTypeId'
      end
      object cxGrid1DBTableView2ACARDREGNO: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.REGNO'
      end
      object cxGrid1DBTableView2ACARDACARDHOLDER: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.ACARDHOLDER'
      end
      object cxGrid1DBTableView2ACARDIsActive: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.IsActive'
        Visible = False
      end
      object cxGrid1DBTableView2ACARDEMPLOYEESID: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.EMPLOYEESID'
        Visible = False
      end
      object cxGrid1DBTableView2ACARDCostCenterId: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.CostCenterId'
        Visible = False
      end
      object cxGrid1DBTableView2VTYPEVTYPEID: TcxGridDBColumn
        DataBinding.FieldName = 'VTYPE.VTYPEID'
        Visible = False
      end
      object cxGrid1DBTableView2VTYPEDescr: TcxGridDBColumn
        DataBinding.FieldName = 'VTYPE.Descr'
      end
      object cxGrid1DBTableView2REGNOSEQREGNOSEQID: TcxGridDBColumn
        DataBinding.FieldName = 'REGNOSEQ.REGNOSEQID'
        Visible = False
      end
      object cxGrid1DBTableView2REGNOSEQREGNO: TcxGridDBColumn
        DataBinding.FieldName = 'REGNOSEQ.REGNO'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
    object cxGrid1Level2: TcxGridLevel
      GridView = cxGrid1DBTableView2
    end
  end
  object StatusBar1: TStatusBar [2]
    Left = 0
    Top = 494
    Width = 775
    Height = 19
    Panels = <
      item
        Alignment = taRightJustify
        Width = 200
      end
      item
        Alignment = taRightJustify
        Width = 200
      end
      item
        Width = 50
      end>
    OnDblClick = StatusBar1DblClick
  end
  inherited popFilter: TPopupMenu
    Left = 460
    Top = 211
  end
  inherited ActionMainList: TActionList
    Left = 600
    Top = 144
    inherited actDispAllActions: TAction
      ShortCut = 8315
    end
  end
  object dxBarManager1: TActionManager
    ActionBars = <
      item
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
            Action = actReportDes
            Caption = '&actReportDes'
          end
          item
            Items = <
              item
                Action = actDailyEnhm
              end
              item
                Action = actEnhmPrat
                Caption = #917#957#951#956#941#961#969#963#951' '#928#961#945#964#951#961#943#969#957'  &SAP'
              end
              item
                Action = actEnhmPelSap
                Caption = #917#957#951#956#941#961#969#963#951' '#928#949#955#945#964#974#957' S&AP'
              end
              item
                Action = actEnhmParak
                Caption = #917#957#951#956#941#961#969#963#951' '#928#945#961#945#954#961#940#964#951#963#951#962'(&Merchant)'
              end
              item
                Action = actEnhmParakStation
                Caption = #917#957#951#956#941#961#969#963#951' '#928#945#961#945#954#961#940#964#951#963#951#962'(S&tation)'
              end
              item
                Action = actEnhmDisc
              end>
            Caption = #917#957#941#961#947#949#953#949#962
          end>
        ActionBar = ActionMainMenuBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 168
    Top = 128
    StyleName = 'Platform Default'
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 304
    Top = 88
    object actClose: TAction
      Caption = #917#960#953#963#964#961#959#966#942
      OnExecute = actCloseExecute
    end
    object actPreview: TAction
      Caption = #917#954#964#973#960#969#963#951
      OnExecute = actPreviewExecute
    end
    object actEnhmPrat: TAction
      Category = 'actActions'
      Caption = #917#957#951#956#941#961#969#963#951' '#928#961#945#964#951#961#943#969#957'  SAP'
      OnExecute = actEnhmPratExecute
    end
    object actEnhmParak: TAction
      Category = 'actActions'
      Caption = #917#957#951#956#941#961#969#963#951' '#928#945#961#945#954#961#940#964#951#963#951#962'(Merchant)'
      OnExecute = actEnhmParakExecute
    end
    object actEnhmPelSap: TAction
      Category = 'actActions'
      Caption = #917#957#951#956#941#961#969#963#951' '#928#949#955#945#964#974#957' SAP'
      OnExecute = actEnhmPelSapExecute
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
      OnExecute = UpdateActionsExecute
    end
    object actEnhmDisc: TAction
      Category = 'actActions'
      Caption = #917#957#951#956#941#961#969#963#951' '#917#954#960#964#974#963#951#962
      OnExecute = actEnhmDiscExecute
    end
    object actDailyEnhm: TAction
      Category = 'actActions'
      Caption = #919#956#949#961#942#963#953#945' '#917#957#951#956#941#961#969#963#951
      OnExecute = actDailyEnhmExecute
    end
    object actReportDes: TAction
      Caption = 'actReportDes'
      OnExecute = actReportDesExecute
    end
    object actEnhmParakStation: TAction
      Category = 'actActions'
      Caption = #917#957#951#956#941#961#969#963#951' '#928#945#961#945#954#961#940#964#951#963#951#962'(Station)'
      OnExecute = actEnhmParakStationExecute
    end
  end
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      'Select * From V_TRAN_FOR_ENHM')
    Left = 64
    Top = 224
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
  end
  object qrySItem: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SITEM')
    Left = 304
    Top = 184
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 64
    Top = 288
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 448
    Top = 120
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = frmFEnhmDaily.cxGrid1
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
      BuiltInReportLink = True
    end
  end
  object ActionList2: TActionList
    Left = 616
    Top = 240
    object Action1: TAction
      Caption = 'Action1'
    end
  end
  object qryTranDet: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranDetCalcFields
    Parameters = <>
    SQL.Strings = (
      'Select * From V_TRA_STA_ACA_CUS')
    Left = 168
    Top = 224
    object StringField1: TStringField
      FieldKind = fkCalculated
      FieldName = 'FullCardNo'
      Calculated = True
    end
    object StringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'LSitem'
      LookupDataSet = qrySItem
      LookupKeyFields = 'SITEMID'
      LookupResultField = 'DESCR'
      KeyFields = 'TRAN.SitemId'
      Lookup = True
    end
    object qryTranDetMerchantMerchantId: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object qryTranDetMerchantName: TWideStringField
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object qryTranDetMerchantStreet: TWideStringField
      FieldName = 'Merchant.Street'
      Size = 50
    end
    object qryTranDetMerchantZip: TWideStringField
      FieldName = 'Merchant.Zip'
      Size = 50
    end
    object qryTranDetMerchantCity: TWideStringField
      FieldName = 'Merchant.City'
      Size = 50
    end
    object qryTranDetMerchantAFM: TWideStringField
      FieldName = 'Merchant.AFM'
      Size = 15
    end
    object qryTranDetMerchantDOY: TWideStringField
      FieldName = 'Merchant.DOY'
      Size = 50
    end
    object qryTranDetMerchantIsTest: TBooleanField
      FieldName = 'Merchant.IsTest'
    end
    object qryTranDetMerchantAreaId: TIntegerField
      FieldName = 'Merchant.AreaId'
    end
    object qryTranDetMerchantSAPCode: TWideStringField
      FieldName = 'Merchant.SAPCode'
      Size = 10
    end
    object qryTranDetMerchantMerchantCode: TWideStringField
      FieldName = 'Merchant.MerchantCode'
      Size = 50
    end
    object qryTranDetMerchantSalesMenId: TIntegerField
      FieldName = 'Merchant.SalesMenId'
    end
    object qryTranDetMerchantDeleted: TBooleanField
      FieldName = 'Merchant.Deleted'
    end
    object qryTranDetMerchantInActive: TBooleanField
      FieldName = 'Merchant.InActive'
    end
    object qryTranDetMerchantStopSales: TBooleanField
      FieldName = 'Merchant.StopSales'
    end
    object qryTranDetStationStationId: TIntegerField
      FieldName = 'Station.StationId'
    end
    object qryTranDetStationName: TWideStringField
      FieldName = 'Station.Name'
      FixedChar = True
      Size = 100
    end
    object qryTranDetStationStreet: TWideStringField
      FieldName = 'Station.Street'
      Size = 50
    end
    object qryTranDetStationZIP: TWideStringField
      FieldName = 'Station.ZIP'
      Size = 50
    end
    object qryTranDetStationCity: TWideStringField
      FieldName = 'Station.City'
      Size = 50
    end
    object qryTranDetStationAreaId: TIntegerField
      FieldName = 'Station.AreaId'
    end
    object qryTranDetStationSalesMenId: TIntegerField
      FieldName = 'Station.SalesMenId'
    end
    object qryTranDetStationDeleted: TBooleanField
      FieldName = 'Station.Deleted'
    end
    object qryTranDetStationInActive: TBooleanField
      FieldName = 'Station.InActive'
    end
    object qryTranDetStationStopSales: TBooleanField
      FieldName = 'Station.StopSales'
    end
    object qryTranDetTerminalTerminalCode: TWideStringField
      FieldName = 'Terminal.TerminalCode'
    end
    object qryTranDetTerminalTerminalId: TIntegerField
      FieldName = 'Terminal.TerminalId'
    end
    object qryTranDetTerminalSerialNo: TWideStringField
      FieldName = 'Terminal.SerialNo'
      Size = 50
    end
    object qryTranDetCUSTOMERCUSTOMERId: TIntegerField
      FieldName = 'CUSTOMER.CUSTOMERId'
    end
    object qryTranDetCUSTOMERName: TWideStringField
      FieldName = 'CUSTOMER.Name'
      Size = 50
    end
    object qryTranDetCUSTOMERZip: TWideStringField
      FieldName = 'CUSTOMER.Zip'
      Size = 50
    end
    object qryTranDetCUSTOMERStreet: TWideStringField
      FieldName = 'CUSTOMER.Street'
      Size = 50
    end
    object qryTranDetCUSTOMERCity: TWideStringField
      FieldName = 'CUSTOMER.City'
      Size = 50
    end
    object qryTranDetCUSTOMERAFM: TWideStringField
      FieldName = 'CUSTOMER.AFM'
      Size = 15
    end
    object qryTranDetCUSTOMERDOY: TWideStringField
      FieldName = 'CUSTOMER.DOY'
      Size = 50
    end
    object qryTranDetCUSTOMERAreaId: TIntegerField
      FieldName = 'CUSTOMER.AreaId'
    end
    object qryTranDetCUSTOMERCGroupId: TIntegerField
      FieldName = 'CUSTOMER.CGroupId'
    end
    object qryTranDetCUSTOMERCClassId: TIntegerField
      FieldName = 'CUSTOMER.CClassId'
    end
    object qryTranDetCUSTOMERBranchId: TIntegerField
      FieldName = 'CUSTOMER.BranchId'
    end
    object qryTranDetCUSTOMERSAPCode: TWideStringField
      FieldName = 'CUSTOMER.SAPCode'
      Size = 10
    end
    object qryTranDetCUSTOMERIsActive: TBooleanField
      FieldName = 'CUSTOMER.IsActive'
    end
    object qryTranDetCUSTOMERSalesMenId: TIntegerField
      FieldName = 'CUSTOMER.SalesMenId'
    end
    object qryTranDetCUSTOMERIsTest: TBooleanField
      FieldName = 'CUSTOMER.IsTest'
    end
    object qryTranDetCUSTOMERAreaBId: TIntegerField
      FieldName = 'CUSTOMER.AreaBId'
    end
    object qryTranDetCUSTOMERHASDETAILEMP: TBooleanField
      FieldName = 'CUSTOMER.HASDETAILEMP'
    end
    object qryTranDetCUSTOMERCUSTOMEROFF: TBooleanField
      FieldName = 'CUSTOMER.CUSTOMEROFF'
    end
    object qryTranDetTRANTRANDATE: TDateTimeField
      FieldName = 'TRAN.TRANDATE'
    end
    object qryTranDetTRANACARDID: TIntegerField
      FieldName = 'TRAN.ACARDID'
    end
    object qryTranDetTRANMerchantId: TIntegerField
      FieldName = 'TRAN.MerchantId'
    end
    object qryTranDetTRANStationId: TIntegerField
      FieldName = 'TRAN.StationId'
    end
    object qryTranDetTRANTerminalId: TIntegerField
      FieldName = 'TRAN.TerminalId'
    end
    object qryTranDetTRANAmount: TFloatField
      FieldName = 'TRAN.Amount'
    end
    object qryTranDetTRANSitemId: TIntegerField
      FieldName = 'TRAN.SitemId'
    end
    object qryTranDetTRANQuantity: TFloatField
      FieldName = 'TRAN.Quantity'
    end
    object qryTranDetTRANIsAuto: TBooleanField
      FieldName = 'TRAN.IsAuto'
    end
    object qryTranDetTRANStationUPD: TBooleanField
      FieldName = 'TRAN.StationUPD'
    end
    object qryTranDetTRANACARDUPD: TBooleanField
      FieldName = 'TRAN.ACARDUPD'
    end
    object qryTranDetTRANIsVoid: TBooleanField
      FieldName = 'TRAN.IsVoid'
    end
    object qryTranDetTRANBatchNo: TIntegerField
      FieldName = 'TRAN.BatchNo'
    end
    object qryTranDetTRANCommissionUpd: TBooleanField
      FieldName = 'TRAN.CommissionUpd'
    end
    object qryTranDetTRANStationUPDBT: TIntegerField
      FieldName = 'TRAN.StationUPDBT'
    end
    object qryTranDetTRANAcardUPDBT: TIntegerField
      FieldName = 'TRAN.AcardUPDBT'
    end
    object qryTranDetTRANCommissionUPDBT: TIntegerField
      FieldName = 'TRAN.CommissionUPDBT'
    end
    object qryTranDetTRANTranTime: TDateTimeField
      FieldName = 'TRAN.TranTime'
    end
    object qryTranDetTRANIsTyped: TBooleanField
      FieldName = 'TRAN.IsTyped'
    end
    object qryTranDetTRANDiscountUPD: TBooleanField
      FieldName = 'TRAN.DiscountUPD'
    end
    object qryTranDetTRANDiscountUPDBT: TIntegerField
      FieldName = 'TRAN.DiscountUPDBT'
    end
    object qryTranDetTRANDisQuantity: TFloatField
      FieldName = 'TRAN.DisQuantity'
    end
    object qryTranDetTRANDisAmount: TFloatField
      FieldName = 'TRAN.DisAmount'
    end
    object qryTranDetTRANPelaDailyUPD: TBooleanField
      FieldName = 'TRAN.PelaDailyUPD'
    end
    object qryTranDetTRANPelaDailyUPDBT: TIntegerField
      FieldName = 'TRAN.PelaDailyUPDBT'
    end
    object qryTranDetACARDACARDID: TIntegerField
      FieldName = 'ACARD.ACARDID'
    end
    object qryTranDetACARDACARDCODE: TWideStringField
      FieldName = 'ACARD.ACARDCODE'
      Size = 50
    end
    object qryTranDetACARDCustimerId: TIntegerField
      FieldName = 'ACARD.CustimerId'
    end
    object qryTranDetACARDVTypeId: TIntegerField
      FieldName = 'ACARD.VTypeId'
    end
    object qryTranDetACARDREGNO: TWideStringField
      FieldName = 'ACARD.REGNO'
      Size = 50
    end
    object qryTranDetACARDACARDHOLDER: TWideStringField
      FieldName = 'ACARD.ACARDHOLDER'
      Size = 30
    end
    object qryTranDetACARDIsActive: TBooleanField
      FieldName = 'ACARD.IsActive'
    end
    object qryTranDetACARDEMPLOYEESID: TIntegerField
      FieldName = 'ACARD.EMPLOYEESID'
    end
    object qryTranDetACARDCostCenterId: TIntegerField
      FieldName = 'ACARD.CostCenterId'
    end
    object qryTranDetVTYPEVTYPEID: TIntegerField
      FieldName = 'VTYPE.VTYPEID'
    end
    object qryTranDetVTYPEDescr: TWideStringField
      FieldName = 'VTYPE.Descr'
      Size = 50
    end
    object qryTranDetREGNOSEQREGNOSEQID: TIntegerField
      FieldName = 'REGNOSEQ.REGNOSEQID'
    end
    object qryTranDetREGNOSEQREGNO: TWideStringField
      FieldName = 'REGNOSEQ.REGNO'
      Size = 50
    end
  end
  object dtsTranDet: TDataSource
    DataSet = qryTranDet
    Left = 168
    Top = 296
  end
  object qryTranSums: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'Select Sum([Tran.Amount]) As SumAmount  , Sum([Tran.Quantity]) A' +
        's SumQuantity'
      ' From V_TRAN_FOR_ENHM')
    Left = 80
    Top = 368
    object qryTranSumsSUmAmount: TFloatField
      FieldName = 'SUmAmount'
      ReadOnly = True
    end
    object qryTranSumsSumQuantity: TFloatField
      FieldName = 'SumQuantity'
      ReadOnly = True
    end
  end
  object qryTranSumsG0: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'Select Sum([Tran.Amount]) As SumAmount  , Sum([Tran.Quantity]) A' +
        's SumQuantity'
      ' From V_TRAN_FOR_ENHM')
    Left = 176
    Top = 368
    object qryTranSumsG0SumAmount: TFloatField
      FieldName = 'SumAmount'
      ReadOnly = True
    end
    object qryTranSumsG0SumQuantity: TFloatField
      FieldName = 'SumQuantity'
      ReadOnly = True
    end
  end
  object qryTranSumsL0: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'Select Sum([Tran.Amount]) As SumAmount  , Sum([Tran.Quantity]) A' +
        's SumQuantity'
      ' From V_TRAN_FOR_ENHM')
    Left = 264
    Top = 368
    object qryTranSumsL0SumAmount: TFloatField
      FieldName = 'SumAmount'
      ReadOnly = True
    end
    object qryTranSumsL0SumQuantity: TFloatField
      FieldName = 'SumQuantity'
      ReadOnly = True
    end
  end
end
