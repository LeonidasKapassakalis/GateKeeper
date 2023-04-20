inherited frmPrnTranEmp: TfrmPrnTranEmp
  Left = 240
  Top = 107
  Caption = #917#954#964#965#960#974#963#949#953#962' '#917#961#947#945#950#959#956#941#957#969#957
  ClientHeight = 530
  ClientWidth = 771
  OldCreateOrder = True
  OnShow = FormShow
  ExplicitWidth = 779
  ExplicitHeight = 557
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel [0]
    Left = 0
    Top = 23
    Width = 771
    Height = 460
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 2
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 769
      Height = 458
      Align = alClient
      TabOrder = 0
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 483
    Width = 771
    Height = 28
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 0
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 1
      Width = 769
      Height = 26
      Align = alClient
      TabOrder = 0
    end
  end
  object PageControl1: TPageControl [2]
    Left = 0
    Top = 23
    Width = 771
    Height = 460
    ActivePage = TsGrid
    Align = alClient
    TabOrder = 1
    object TsGrid: TTabSheet
      Caption = #922#953#957#942#963#949#953#962
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 763
        Height = 432
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
          OnCellDblClick = cxGrid1DBTableView1CellDblClick
          DataController.DataSource = dtsTran
          DataController.DetailKeyFieldNames = 'TRANID'
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
          OptionsView.Indicator = True
          OnCustomization = cxGrid1DBTableView1Customization
          object cxGrid1DBTableView1TRANTRANDATE: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.TRANDATE'
          end
          object cxGrid1DBTableView1TRANTranTime: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.TranTime'
          end
          object cxGrid1DBTableView1AcardAcardCodeFull: TcxGridDBColumn
            DataBinding.FieldName = 'Acard.AcardCodeFull'
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
          end
          object cxGrid1DBTableView1TRANTRANID: TcxGridDBColumn
            DataBinding.FieldName = 'TRAN.TRANID'
          end
          object cxGrid1DBTableView1TRANKMBEFORE: TcxGridDBColumn
            Caption = 'Km Before'
            DataBinding.FieldName = 'TRAN.KMBEFORE'
          end
          object cxGrid1DBTableView1TRANKMAFTER: TcxGridDBColumn
            Caption = 'Km After'
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
          object cxGrid1DBTableView1EMPLOYEESNAME: TcxGridDBColumn
            DataBinding.FieldName = 'EMPLOYEES.NAME'
            Visible = False
          end
          object cxGrid1DBTableView1EMPLOYEESMhtrId: TcxGridDBColumn
            DataBinding.FieldName = 'EMPLOYEES.MhtrId'
            Visible = False
          end
          object cxGrid1DBTableView1EMPLOYEESSurName: TcxGridDBColumn
            DataBinding.FieldName = 'EMPLOYEES.SurName'
          end
          object cxGrid1DBTableView1EMPLOYEESAddress: TcxGridDBColumn
            DataBinding.FieldName = 'EMPLOYEES.Address'
            Visible = False
          end
          object cxGrid1DBTableView1EMPLOYEESTK: TcxGridDBColumn
            DataBinding.FieldName = 'EMPLOYEES.TK'
            Visible = False
          end
          object cxGrid1DBTableView1EMPLOYEESTOWN: TcxGridDBColumn
            DataBinding.FieldName = 'EMPLOYEES.TOWN'
            Visible = False
          end
          object cxGrid1DBTableView1EMPLOYEESAFM: TcxGridDBColumn
            DataBinding.FieldName = 'EMPLOYEES.AFM'
            Visible = False
          end
          object cxGrid1DBTableView1EMPLOYEESDOY: TcxGridDBColumn
            DataBinding.FieldName = 'EMPLOYEES.DOY'
            Visible = False
          end
          object cxGrid1DBTableView1CostCenterCCName: TcxGridDBColumn
            DataBinding.FieldName = 'CostCenter.CCName'
            Visible = False
          end
          object cxGrid1DBTableView1CostCenterCCNameFull: TcxGridDBColumn
            DataBinding.FieldName = 'CostCenter.CCNameFull'
          end
          object cxGrid1DBTableView1EMPLOYEESSendPrint: TcxGridDBColumn
            DataBinding.FieldName = 'EMPLOYEES.SendPrint'
            Visible = False
          end
          object cxGrid1DBTableView1EMPLOYEESSendMail: TcxGridDBColumn
            DataBinding.FieldName = 'EMPLOYEES.SendMail'
            Visible = False
          end
          object cxGrid1DBTableView1EMPLOYEESMailAddr: TcxGridDBColumn
            DataBinding.FieldName = 'EMPLOYEES.MailAddr'
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object TsMemo: TTabSheet
      Caption = 'TsMemo'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object MemoSql: TMemo
        Left = 0
        Top = 0
        Width = 763
        Height = 407
        Align = alClient
        TabOrder = 0
      end
      object Button1: TButton
        Left = 0
        Top = 407
        Width = 763
        Height = 25
        Align = alBottom
        Caption = 'Activate Query'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    object TsEmployees: TTabSheet
      Caption = #917#961#947#945#950#972#956#949#957#959#953
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 763
        Height = 177
        Align = alTop
        Caption = 'Panel3'
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 761
          Height = 175
          Align = alClient
          DataSource = dsEmployees
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 177
        Width = 763
        Height = 255
        Align = alTop
        Caption = 'Panel3'
        TabOrder = 1
        object Memo3: TMemo
          Left = 1
          Top = 1
          Width = 761
          Height = 100
          Align = alTop
          Lines.Strings = (
            '')
          TabOrder = 0
        end
        object Memo2: TMemo
          Left = 1
          Top = 101
          Width = 761
          Height = 95
          Align = alTop
          Lines.Strings = (
            '')
          TabOrder = 1
        end
        object ProgressBar2: TProgressBar
          Left = 1
          Top = 238
          Width = 761
          Height = 16
          Align = alBottom
          TabOrder = 2
        end
      end
    end
  end
  object StatusBar1: TStatusBar [3]
    Left = 0
    Top = 511
    Width = 771
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object ActionMainMenuBar1: TActionMainMenuBar [4]
    Left = 0
    Top = 0
    Width = 771
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
    inherited Pedia: TMenuItem
      Visible = False
    end
  end
  inherited ActLstBase: TActionList
    Left = 392
  end
  object dxBarManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actClose
          end
          item
            Action = actPreview
          end
          item
            Action = actPrint32
          end
          item
            Action = actMailCreate
            Caption = #916#951#956'.&Mail '#931#964#945#964#953#964#953#954#974#957' '#917#961#947#945#950#959#956#941#957#969#957
          end
          item
            Action = actMailSend
            Caption = #913#960#959#963#964#959#955#942' M&ail '#931#964#945#964'.'#917#961#947'.'
          end
          item
            Action = actPrintOnlyPrint
            Caption = #917#954#964#973#960#969#963#951' &Print'
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
            Action = actQrDesign
            Caption = '&Report Designer'
          end
          item
            Items = <
              item
                Action = actPrint32
              end
              item
                Caption = '-'
              end
              item
                Action = actCreateFolder
              end
              item
                Action = actMailCreate
                Caption = #916#951#956'.&Mail '#931#964#945#964#953#964#953#954#974#957' '#917#961#947#945#950#959#956#941#957#969#957
              end
              item
                Action = actMailSend
                Caption = #913#960#959#963#964#959#955#942' M&ail '#931#964#945#964'.'#917#961#947'.'
              end
              item
                Caption = '-'
              end
              item
                Action = actPrintOnlyPrint
                Caption = #917#954#964#973#960#969#963#951' &Print'
              end>
            Caption = #917#954#964#965#960#974#963#949#953#962
          end
          item
            Items = <
              item
                Action = actPrint007
              end
              item
                Action = actPrint008
              end
              item
                Action = actPrint022
              end
              item
                Action = actPrint002
              end
              item
                Action = actPrint088
              end
              item
                Action = actExcell88a
                Caption = #931#973#957#959#955#945' '#945#957#945' '#922'.'#922'./'#922#945#964' '#927#967#942#956#945#964#959#962'/'#928#961#959#970#972#957' &Excel'
              end>
            Caption = #917#954#964#965#960#974#963#949#953#962' &0'
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
    Left = 176
    Top = 192
    StyleName = 'Platform Default'
  end
  object ActionList1: TActionList
    Left = 328
    Top = 104
    object actClose: TAction
      Caption = #917#960#953#963#964#961#959#966#942
      OnExecute = actCloseExecute
    end
    object actPreview: TAction
      Caption = #917#954#964#973#960#969#963#951
      OnExecute = actPreviewExecute
    end
    object actPrint32: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #931#964#945#964#953#963#964#953#954#972' '#917#961#947#945#950#959#956#941#957#969#957
      OnExecute = actPrint32Execute
    end
    object actMailCreate: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #916#951#956'.Mail '#931#964#945#964#953#964#953#954#974#957' '#917#961#947#945#950#959#956#941#957#969#957
      OnExecute = actMailCreateExecute
    end
    object actMailSend: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #913#960#959#963#964#959#955#942' Mail '#931#964#945#964'.'#917#961#947'.'
      OnExecute = actMailSendExecute
    end
    object actPrintOnlyPrint: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #917#954#964#973#960#969#963#951' Print'
      OnExecute = actPrintOnlyPrintExecute
    end
    object actPrint007: TAction
      Category = #917#954#964#965#960#974#963#949#953#962' 0'
      Caption = #931#965#957#972#955#945' '#945#957#940' '#917#964#945#953#961#949#943#945'/'#928#961#959#943#959#957'/'#922#940#961#964#945
      OnExecute = actPrint007Execute
    end
    object actPrint008: TAction
      Category = #917#954#964#965#960#974#963#949#953#962' 0'
      Caption = #913#957#945#955#965#964#953#954#940' '#931#964#959#953#967#949#943#945' '#913#957#940' '#917#964#945#953#961#949#943#945'/'#919#956#949#961#959#956#951#957#943#945
      OnExecute = actPrint008Execute
    end
    object actPrint022: TAction
      Category = #917#954#964#965#960#974#963#949#953#962' 0'
      Caption = #913#957#945#955#965#964#953#954#940' '#931#964#959#953#967#949#943#945' '#945#957#940' '#922#940#961#964#945
      OnExecute = actPrint022Execute
    end
    object actPrint002: TAction
      Category = #917#954#964#965#960#974#963#949#953#962' 0'
      Caption = #913#957#945#955#965#964#953#954#940' '#931#964#959#953#967#949#943#945' '#945#957#940' '#928#961#945#964#942#961#953#959'/'#919#956#949#961#959#956#951#957#943#945
      OnExecute = actPrint002Execute
    end
    object actPrint088: TAction
      Category = #917#954#964#965#960#974#963#949#953#962' 0'
      Caption = #931#973#957#959#955#945' '#945#957#945' '#922'.'#922'./'#922#945#964' '#927#967#942#956#945#964#959#962'/'#928#961#959#970#972#957
      OnExecute = actPrint088Execute
    end
    object actExcell88a: TAction
      Category = #917#954#964#965#960#974#963#949#953#962' 0'
      Caption = #931#973#957#959#955#945' '#945#957#945' '#922'.'#922'./'#922#945#964' '#927#967#942#956#945#964#959#962'/'#928#961#959#970#972#957' Excel'
      OnExecute = actExcell88aExecute
    end
    object actOutFolder: TAction
      Caption = '-'
      OnExecute = actOutFolderExecute
    end
    object actCreateFolder: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #917#960#953#955#959#947#942' '#922#945#964#945#955#972#947#959#965
      OnExecute = actCreateFolderExecute
    end
    object actQrDesign: TAction
      Caption = 'Report Designer'
      OnExecute = actQrDesignExecute
    end
    object actToExcel: TAction
      Caption = 'actToExcel'
      OnExecute = actToExcelExecute
    end
  end
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM V_TRA_STA_ACA_CUS_EMP')
    Left = 64
    Top = 224
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
      DisplayFormat = '0.00'
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
    object qryTranEMPLOYEESNAME: TWideStringField
      FieldName = 'EMPLOYEES.NAME'
      Size = 50
    end
    object qryTranEMPLOYEESMhtrId: TIntegerField
      FieldName = 'EMPLOYEES.MhtrId'
    end
    object qryTranEMPLOYEESSurName: TWideStringField
      FieldName = 'EMPLOYEES.SurName'
      Size = 50
    end
    object qryTranEMPLOYEESAddress: TWideStringField
      FieldName = 'EMPLOYEES.Address'
      Size = 50
    end
    object qryTranEMPLOYEESTK: TWideStringField
      FieldName = 'EMPLOYEES.TK'
      Size = 5
    end
    object qryTranEMPLOYEESTOWN: TWideStringField
      FieldName = 'EMPLOYEES.TOWN'
      Size = 50
    end
    object qryTranEMPLOYEESAFM: TWideStringField
      FieldName = 'EMPLOYEES.AFM'
      Size = 9
    end
    object qryTranEMPLOYEESDOY: TWideStringField
      FieldName = 'EMPLOYEES.DOY'
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
    object qryTranEMPLOYEESSendPrint: TBooleanField
      FieldName = 'EMPLOYEES.SendPrint'
    end
    object qryTranEMPLOYEESSendMail: TBooleanField
      FieldName = 'EMPLOYEES.SendMail'
    end
    object qryTranEMPLOYEESMailAddr: TWideStringField
      FieldName = 'EMPLOYEES.MailAddr'
      Size = 50
    end
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 64
    Top = 272
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 232
    Top = 104
    object dxComponentPrinter1Link1: TdxGridReportLink
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
  object qryEmployees: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT Distinct([Acard.EmployeesId])'
      '      ,[EMPLOYEES.NAME]'
      '      ,[EMPLOYEES.MhtrId]'
      '      ,[EMPLOYEES.SurName]'
      '      ,[EMPLOYEES.Address]'
      '      ,[EMPLOYEES.TK]'
      '      ,[EMPLOYEES.TOWN]'
      '      ,[EMPLOYEES.AFM]'
      '      ,[EMPLOYEES.DOY]'
      '      ,[EMPLOYEES.SendPrint]'
      '      ,[EMPLOYEES.SendMail]'
      '      ,[EMPLOYEES.MailAddr]'
      'FROM V_TRA_STA_ACA_CUS_EMP'
      ''
      '')
    Left = 544
    Top = 152
    object qryEmployeesAcardEmployeesId: TIntegerField
      FieldName = 'Acard.EmployeesId'
    end
    object qryEmployeesEMPLOYEESNAME: TWideStringField
      FieldName = 'EMPLOYEES.NAME'
      Size = 50
    end
    object qryEmployeesEMPLOYEESMhtrId: TIntegerField
      FieldName = 'EMPLOYEES.MhtrId'
    end
    object qryEmployeesEMPLOYEESSurName: TWideStringField
      FieldName = 'EMPLOYEES.SurName'
      Size = 50
    end
    object qryEmployeesEMPLOYEESAddress: TWideStringField
      FieldName = 'EMPLOYEES.Address'
      Size = 50
    end
    object qryEmployeesEMPLOYEESTK: TWideStringField
      FieldName = 'EMPLOYEES.TK'
      Size = 5
    end
    object qryEmployeesEMPLOYEESTOWN: TWideStringField
      FieldName = 'EMPLOYEES.TOWN'
      Size = 50
    end
    object qryEmployeesEMPLOYEESAFM: TWideStringField
      FieldName = 'EMPLOYEES.AFM'
      Size = 9
    end
    object qryEmployeesEMPLOYEESDOY: TWideStringField
      FieldName = 'EMPLOYEES.DOY'
      Size = 50
    end
    object qryEmployeesEMPLOYEESSendMail: TBooleanField
      FieldName = 'EMPLOYEES.SendMail'
    end
    object qryEmployeesEMPLOYEESMailAddr: TWideStringField
      FieldName = 'EMPLOYEES.MailAddr'
      Size = 50
    end
    object qryEmployeesEMPLOYEESSendPrint: TBooleanField
      FieldName = 'EMPLOYEES.SendPrint'
    end
  end
  object dsEmployees: TDataSource
    DataSet = qryEmployees
    Left = 544
    Top = 200
  end
  object SaveDialog1: TSaveDialog
    Left = 680
    Top = 144
  end
  object RwMapiSession1: TRwMAPISession
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
    Left = 688
    Top = 48
  end
  object SaveDialog10: TJvSelectDirectory
    ClassicDialog = False
    Title = #922#945#964#940#955#959#947#959#962' '#947#953#945' '#945#960#959#952#942#954#949#965#963#951' PDF'
    Left = 680
    Top = 240
  end
end
