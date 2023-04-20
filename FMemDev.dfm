inherited frmMemDev: TfrmMemDev
  Caption = 'frmMemDev'
  ClientHeight = 621
  ClientWidth = 844
  ExplicitWidth = 852
  ExplicitHeight = 667
  PixelsPerInch = 96
  TextHeight = 13
  inherited panTop: TGradPan
    Width = 844
    ExplicitWidth = 844
    inherited dbtMain: TDBText
      DataField = 'AFM'
      DataSource = DMMemDev.dsQMerchant
    end
  end
  inherited pcPage: TExtPageControl
    Top = 80
    Width = 844
    Height = 522
    Align = alClient
    ExplicitTop = 80
    ExplicitWidth = 844
    ExplicitHeight = 522
    inherited tsMain: TTabSheet
      ExplicitWidth = 836
      ExplicitHeight = 512
      inherited panClient01: TGradPan
        Width = 836
        Height = 512
        ExplicitWidth = 836
        ExplicitHeight = 512
        inherited cxdata: TcxGrid
          Width = 832
          Height = 508
          ExplicitWidth = 832
          ExplicitHeight = 508
          inherited cxdataDBTableView1: TcxGridDBTableView
            FilterBox.Position = fpTop
            DataController.DataModeController.SyncMode = False
            DataController.DataSource = DMMemDev.dsQMerchant
            DataController.DetailKeyFieldNames = 'Id'
            DataController.Filter.IgnoreOrigin = False
            DataController.KeyFieldNames = 'Id'
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skCount
                FieldName = 'Id'
                DisplayText = 'Count'
              end>
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
            object cxdataDBTableView1Id: TcxGridDBColumn
              DataBinding.FieldName = 'Id'
            end
            object cxdataDBTableView1Name: TcxGridDBColumn
              DataBinding.FieldName = 'Name'
            end
            object cxdataDBTableView1STREET: TcxGridDBColumn
              DataBinding.FieldName = 'STREET'
            end
            object cxdataDBTableView1ZIP: TcxGridDBColumn
              DataBinding.FieldName = 'ZIP'
            end
            object cxdataDBTableView1CITY: TcxGridDBColumn
              DataBinding.FieldName = 'CITY'
            end
            object cxdataDBTableView1AFM: TcxGridDBColumn
              DataBinding.FieldName = 'AFM'
            end
            object cxdataDBTableView1DOY: TcxGridDBColumn
              DataBinding.FieldName = 'DOY'
            end
            object cxdataDBTableView1PHONE1: TcxGridDBColumn
              DataBinding.FieldName = 'PHONE1'
            end
            object cxdataDBTableView1PHONE2: TcxGridDBColumn
              DataBinding.FieldName = 'PHONE2'
            end
            object cxdataDBTableView1MOBILE: TcxGridDBColumn
              DataBinding.FieldName = 'MOBILE'
            end
            object cxdataDBTableView1FAX: TcxGridDBColumn
              DataBinding.FieldName = 'FAX'
            end
            object cxdataDBTableView1InsUsr: TcxGridDBColumn
              DataBinding.FieldName = 'InsUsr'
            end
            object cxdataDBTableView1InsDT: TcxGridDBColumn
              DataBinding.FieldName = 'InsDT'
            end
            object cxdataDBTableView1UpdUsr: TcxGridDBColumn
              DataBinding.FieldName = 'UpdUsr'
            end
            object cxdataDBTableView1UpdDT: TcxGridDBColumn
              DataBinding.FieldName = 'UpdDT'
            end
            object cxdataDBTableView1Deleted: TcxGridDBColumn
              DataBinding.FieldName = 'Deleted'
            end
            object cxdataDBTableView1DelUsr: TcxGridDBColumn
              DataBinding.FieldName = 'DelUsr'
            end
            object cxdataDBTableView1DelDT: TcxGridDBColumn
              DataBinding.FieldName = 'DelDT'
            end
            object cxdataDBTableView1InActive: TcxGridDBColumn
              DataBinding.FieldName = 'InActive'
            end
            object cxdataDBTableView1InActiveUsr: TcxGridDBColumn
              DataBinding.FieldName = 'InActiveUsr'
            end
            object cxdataDBTableView1InActiveDt: TcxGridDBColumn
              DataBinding.FieldName = 'InActiveDt'
            end
            object cxdataDBTableView1Area_Id: TcxGridDBColumn
              DataBinding.FieldName = 'Area_Id'
            end
            object cxdataDBTableView1SGroup_Id: TcxGridDBColumn
              DataBinding.FieldName = 'SGroup_Id'
            end
            object cxdataDBTableView1SClass_Id: TcxGridDBColumn
              DataBinding.FieldName = 'SClass_Id'
            end
            object cxdataDBTableView1SAPCODE: TcxGridDBColumn
              DataBinding.FieldName = 'SAPCODE'
            end
            object cxdataDBTableView1SalesMen_Id: TcxGridDBColumn
              DataBinding.FieldName = 'SalesMen_Id'
            end
            object cxdataDBTableView1ISTEST: TcxGridDBColumn
              DataBinding.FieldName = 'ISTEST'
            end
            object cxdataDBTableView1StopSalesUsr: TcxGridDBColumn
              DataBinding.FieldName = 'StopSalesUsr'
            end
            object cxdataDBTableView1StopSales: TcxGridDBColumn
              DataBinding.FieldName = 'StopSales'
            end
            object cxdataDBTableView1StopSalesDt: TcxGridDBColumn
              DataBinding.FieldName = 'StopSalesDt'
            end
          end
          object cxdataDBTableView4: TcxGridDBTableView [1]
            PopupMenu = popFilter
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            FilterBox.Visible = fvNever
            DataController.DataSource = DMMemDev.dsQMechantStationFull
            DataController.DetailKeyFieldNames = 'id'
            DataController.Filter.Active = True
            DataController.Filter.AutoDataSetFilter = True
            DataController.KeyFieldNames = 'Merchant_Id'
            DataController.MasterKeyFieldNames = 'Id'
            DataController.Options = [dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxdataDBTableView4id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
            end
            object cxdataDBTableView4Name: TcxGridDBColumn
              DataBinding.FieldName = 'Name'
            end
            object cxdataDBTableView4STREET: TcxGridDBColumn
              DataBinding.FieldName = 'STREET'
            end
            object cxdataDBTableView4CITY: TcxGridDBColumn
              DataBinding.FieldName = 'CITY'
            end
            object cxdataDBTableView4ZIP: TcxGridDBColumn
              DataBinding.FieldName = 'ZIP'
            end
            object cxdataDBTableView4AFM: TcxGridDBColumn
              DataBinding.FieldName = 'AFM'
            end
            object cxdataDBTableView4DOY: TcxGridDBColumn
              DataBinding.FieldName = 'DOY'
            end
            object cxdataDBTableView4PHONE1: TcxGridDBColumn
              DataBinding.FieldName = 'PHONE1'
            end
            object cxdataDBTableView4PHONE2: TcxGridDBColumn
              DataBinding.FieldName = 'PHONE2'
            end
            object cxdataDBTableView4MOBILE: TcxGridDBColumn
              DataBinding.FieldName = 'MOBILE'
            end
            object cxdataDBTableView4FAX: TcxGridDBColumn
              DataBinding.FieldName = 'FAX'
            end
            object cxdataDBTableView4Merchant_Id: TcxGridDBColumn
              DataBinding.FieldName = 'Merchant_Id'
            end
            object cxdataDBTableView4id1: TcxGridDBColumn
              DataBinding.FieldName = 'id'
            end
            object cxdataDBTableView4Name1: TcxGridDBColumn
              DataBinding.FieldName = 'Name'
            end
            object cxdataDBTableView4STREET1: TcxGridDBColumn
              DataBinding.FieldName = 'STREET'
            end
            object cxdataDBTableView4ZIP1: TcxGridDBColumn
              DataBinding.FieldName = 'ZIP'
            end
            object cxdataDBTableView4CITY1: TcxGridDBColumn
              DataBinding.FieldName = 'CITY'
            end
            object cxdataDBTableView4AFM1: TcxGridDBColumn
              DataBinding.FieldName = 'AFM'
            end
            object cxdataDBTableView4DOY1: TcxGridDBColumn
              DataBinding.FieldName = 'DOY'
            end
            object cxdataDBTableView4PHONE11: TcxGridDBColumn
              DataBinding.FieldName = 'PHONE1'
            end
            object cxdataDBTableView4PHONE21: TcxGridDBColumn
              DataBinding.FieldName = 'PHONE2'
            end
            object cxdataDBTableView4MOBILE1: TcxGridDBColumn
              DataBinding.FieldName = 'MOBILE'
            end
            object cxdataDBTableView4FAX1: TcxGridDBColumn
              DataBinding.FieldName = 'FAX'
            end
            object cxdataDBTableView4Merchant_Id1: TcxGridDBColumn
              DataBinding.FieldName = 'Merchant_Id'
            end
          end
          object cxdataDBTableView5: TcxGridDBTableView [2]
            PopupMenu = PopupMenu1
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            FilterBox.Visible = fvNever
            DataController.DataSource = DMMemDev.dsQStationTerminalFull
            DataController.DetailKeyFieldNames = 'id'
            DataController.Filter.IgnoreOrigin = False
            DataController.KeyFieldNames = 'Termina_id'
            DataController.MasterKeyFieldNames = 'id'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderEndEllipsis = True
            OptionsView.Indicator = True
            object cxdataDBTableView5Station_Id: TcxGridDBColumn
              DataBinding.FieldName = 'Station_Id'
            end
            object cxdataDBTableView5Termina_id: TcxGridDBColumn
              DataBinding.FieldName = 'Termina_id'
            end
            object cxdataDBTableView5id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
            end
            object cxdataDBTableView5TERMINALCODE: TcxGridDBColumn
              DataBinding.FieldName = 'TERMINALCODE'
            end
            object cxdataDBTableView5TERMINALSERIALNO: TcxGridDBColumn
              DataBinding.FieldName = 'TERMINALSERIALNO'
            end
          end
          object cxdataDBTableView2: TcxGridDBTableView [3]
            PopupMenu = popFilter
            Navigator.Buttons.CustomButtons = <>
            FilterBox.CustomizeDialog = False
            FilterBox.Visible = fvNever
            DataController.DataSource = DMMemDev.dsQMechantContactsFull
            DataController.DetailKeyFieldNames = 'id'
            DataController.KeyFieldNames = 'merchand_id'
            DataController.MasterKeyFieldNames = 'Id'
            DataController.Options = [dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxdataDBTableView2id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
            end
            object cxdataDBTableView2Name: TcxGridDBColumn
              DataBinding.FieldName = 'Name'
            end
            object cxdataDBTableView2Surname: TcxGridDBColumn
              DataBinding.FieldName = 'Surname'
            end
            object cxdataDBTableView2email: TcxGridDBColumn
              DataBinding.FieldName = 'email'
            end
            object cxdataDBTableView2Phone: TcxGridDBColumn
              DataBinding.FieldName = 'Phone'
            end
            object cxdataDBTableView2Fax: TcxGridDBColumn
              DataBinding.FieldName = 'Fax'
            end
            object cxdataDBTableView2Mobile: TcxGridDBColumn
              DataBinding.FieldName = 'Mobile'
            end
            object cxdataDBTableView2MailORFax: TcxGridDBColumn
              DataBinding.FieldName = 'MailORFax'
            end
            object cxdataDBTableView2Main: TcxGridDBColumn
              DataBinding.FieldName = 'Main'
            end
            object cxdataDBTableView2AA: TcxGridDBColumn
              DataBinding.FieldName = 'AA'
            end
            object cxdataDBTableView2merchand_id: TcxGridDBColumn
              DataBinding.FieldName = 'merchand_id'
            end
            object cxdataDBTableView2Contact_id: TcxGridDBColumn
              DataBinding.FieldName = 'Contact_id'
            end
          end
          object cxdataDBTableView3: TcxGridDBTableView [4]
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DMMemDev.dsQMerchant
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.ColumnFilteredItemsList = True
            object cxdataDBTableView3Id: TcxGridDBColumn
              DataBinding.FieldName = 'Id'
            end
            object cxdataDBTableView3Name: TcxGridDBColumn
              DataBinding.FieldName = 'Name'
            end
            object cxdataDBTableView3STREET: TcxGridDBColumn
              DataBinding.FieldName = 'STREET'
            end
            object cxdataDBTableView3ZIP: TcxGridDBColumn
              DataBinding.FieldName = 'ZIP'
            end
            object cxdataDBTableView3CITY: TcxGridDBColumn
              DataBinding.FieldName = 'CITY'
            end
            object cxdataDBTableView3AFM: TcxGridDBColumn
              DataBinding.FieldName = 'AFM'
            end
            object cxdataDBTableView3DOY: TcxGridDBColumn
              DataBinding.FieldName = 'DOY'
            end
            object cxdataDBTableView3PHONE1: TcxGridDBColumn
              DataBinding.FieldName = 'PHONE1'
            end
            object cxdataDBTableView3PHONE2: TcxGridDBColumn
              DataBinding.FieldName = 'PHONE2'
            end
            object cxdataDBTableView3MOBILE: TcxGridDBColumn
              DataBinding.FieldName = 'MOBILE'
            end
            object cxdataDBTableView3FAX: TcxGridDBColumn
              DataBinding.FieldName = 'FAX'
            end
            object cxdataDBTableView3InsUsr: TcxGridDBColumn
              DataBinding.FieldName = 'InsUsr'
            end
            object cxdataDBTableView3InsDT: TcxGridDBColumn
              DataBinding.FieldName = 'InsDT'
            end
            object cxdataDBTableView3UpdUsr: TcxGridDBColumn
              DataBinding.FieldName = 'UpdUsr'
            end
            object cxdataDBTableView3UpdDT: TcxGridDBColumn
              DataBinding.FieldName = 'UpdDT'
            end
            object cxdataDBTableView3Deleted: TcxGridDBColumn
              DataBinding.FieldName = 'Deleted'
            end
            object cxdataDBTableView3DelUsr: TcxGridDBColumn
              DataBinding.FieldName = 'DelUsr'
            end
            object cxdataDBTableView3DelDT: TcxGridDBColumn
              DataBinding.FieldName = 'DelDT'
            end
            object cxdataDBTableView3InActive: TcxGridDBColumn
              DataBinding.FieldName = 'InActive'
            end
            object cxdataDBTableView3InActiveUsr: TcxGridDBColumn
              DataBinding.FieldName = 'InActiveUsr'
            end
            object cxdataDBTableView3InActiveDt: TcxGridDBColumn
              DataBinding.FieldName = 'InActiveDt'
            end
            object cxdataDBTableView3Area_Id: TcxGridDBColumn
              DataBinding.FieldName = 'Area_Id'
            end
            object cxdataDBTableView3SGroup_Id: TcxGridDBColumn
              DataBinding.FieldName = 'SGroup_Id'
            end
            object cxdataDBTableView3SClass_Id: TcxGridDBColumn
              DataBinding.FieldName = 'SClass_Id'
            end
            object cxdataDBTableView3SAPCODE: TcxGridDBColumn
              DataBinding.FieldName = 'SAPCODE'
            end
            object cxdataDBTableView3SalesMen_Id: TcxGridDBColumn
              DataBinding.FieldName = 'SalesMen_Id'
            end
            object cxdataDBTableView3ISTEST: TcxGridDBColumn
              DataBinding.FieldName = 'ISTEST'
            end
            object cxdataDBTableView3StopSalesUsr: TcxGridDBColumn
              DataBinding.FieldName = 'StopSalesUsr'
            end
            object cxdataDBTableView3StopSales: TcxGridDBColumn
              DataBinding.FieldName = 'StopSales'
            end
            object cxdataDBTableView3StopSalesDt: TcxGridDBColumn
              DataBinding.FieldName = 'StopSalesDt'
            end
          end
          inherited cxdataLevel1: TcxGridLevel
            Options.DetailTabsPosition = dtpTop
            object cxdataLevel4: TcxGridLevel
              Caption = #928#961#945#964#942#961#953#945
              GridView = cxdataDBTableView4
              object cxdataLevel5: TcxGridLevel
                GridView = cxdataDBTableView5
              end
            end
            object cxdataLevel2: TcxGridLevel
              Caption = #917#960#945#966#941#962
              GridView = cxdataDBTableView2
            end
          end
        end
      end
    end
    inherited tsDetail: TTabSheet
      ExplicitWidth = 836
      ExplicitHeight = 512
      inherited panClient02: TGradPan
        Width = 836
        Height = 512
        ExplicitWidth = 836
        ExplicitHeight = 512
        object Label1: TLabel
          Left = 32
          Top = 16
          Width = 10
          Height = 13
          Caption = 'Id'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 32
          Top = 40
          Width = 27
          Height = 13
          Caption = 'Name'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 32
          Top = 64
          Width = 37
          Height = 13
          Caption = 'STREET'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 32
          Top = 96
          Width = 16
          Height = 13
          Caption = 'ZIP'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 32
          Top = 120
          Width = 23
          Height = 13
          Caption = 'CITY'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 32
          Top = 144
          Width = 21
          Height = 13
          Caption = 'AFM'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 32
          Top = 176
          Width = 21
          Height = 13
          Caption = 'DOY'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 32
          Top = 200
          Width = 40
          Height = 13
          Caption = 'PHONE1'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 32
          Top = 224
          Width = 40
          Height = 13
          Caption = 'PHONE2'
          FocusControl = DBEdit9
        end
        object Label10: TLabel
          Left = 32
          Top = 256
          Width = 37
          Height = 13
          Caption = 'MOBILE'
          FocusControl = DBEdit10
        end
        object Label11: TLabel
          Left = 32
          Top = 280
          Width = 19
          Height = 13
          Caption = 'FAX'
          FocusControl = DBEdit11
        end
        object Label12: TLabel
          Left = 24
          Top = 312
          Width = 31
          Height = 13
          Caption = 'InsUsr'
          FocusControl = DBEdit12
        end
        object DBEdit1: TDBEdit
          Left = 88
          Top = 8
          Width = 134
          Height = 21
          DataField = 'Id'
          DataSource = DMMemDev.dsQMerchant
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 88
          Top = 32
          Width = 1304
          Height = 21
          DataField = 'Name'
          DataSource = DMMemDev.dsQMerchant
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 88
          Top = 56
          Width = 654
          Height = 21
          DataField = 'STREET'
          DataSource = DMMemDev.dsQMerchant
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 88
          Top = 88
          Width = 654
          Height = 21
          DataField = 'ZIP'
          DataSource = DMMemDev.dsQMerchant
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 88
          Top = 112
          Width = 654
          Height = 21
          DataField = 'CITY'
          DataSource = DMMemDev.dsQMerchant
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 88
          Top = 136
          Width = 199
          Height = 21
          DataField = 'AFM'
          DataSource = DMMemDev.dsQMerchant
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 88
          Top = 163
          Width = 654
          Height = 21
          DataField = 'DOY'
          DataSource = DMMemDev.dsQMerchant
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 88
          Top = 190
          Width = 654
          Height = 21
          DataField = 'PHONE1'
          DataSource = DMMemDev.dsQMerchant
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 88
          Top = 221
          Width = 654
          Height = 21
          DataField = 'PHONE2'
          DataSource = DMMemDev.dsQMerchant
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 88
          Top = 248
          Width = 329
          Height = 21
          DataField = 'MOBILE'
          DataSource = DMMemDev.dsQMerchant
          TabOrder = 9
        end
        object DBEdit11: TDBEdit
          Left = 88
          Top = 280
          Width = 329
          Height = 21
          DataField = 'FAX'
          DataSource = DMMemDev.dsQMerchant
          TabOrder = 10
        end
        object DBEdit12: TDBEdit
          Left = 88
          Top = 304
          Width = 134
          Height = 21
          DataField = 'InsUsr'
          DataSource = DMMemDev.dsQMerchant
          TabOrder = 11
        end
      end
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 602
    Width = 844
    ExplicitTop = 602
    ExplicitWidth = 844
  end
  inherited ToolBar1: TToolBar
    Width = 844
    ExplicitWidth = 844
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    UseAppManager = True
    Left = 20
    Top = 5
    object BindDBChartLinkpanClient021: TBindDBChartLink
      Category = 'DB Links'
      Columns = <>
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = popFilterPopup
    Left = 588
    Top = 211
    object MenuItem16: TMenuItem
      Caption = #932#945#958#953#957#972#956#951#963#951
      HelpContext = 4060
      object MenuItem17: TMenuItem
        Caption = #935#969#961#943#962
        HelpContext = 4060
        OnClick = NNoneClick
      end
      object MenuItem18: TMenuItem
        Caption = #928#961#959#946#959#955#942
        HelpContext = 4060
        OnClick = IndDispClick
      end
      object MenuItem19: TMenuItem
        Caption = #928#949#948#943#945
        HelpContext = 4060
        object MenuItem20: TMenuItem
          Caption = #917#957#949#961#947#959#960#959#943#951#963#951
          HelpContext = 4060
          OnClick = PediaIdxActiveClick
        end
        object MenuItem21: TMenuItem
          Caption = '-'
        end
      end
      object MenuItem22: TMenuItem
        Caption = '-'
      end
      object TMenuItem
        Visible = False
      end
    end
    object N1231: TMenuItem
      Caption = '123'
      OnClick = N1231Click
    end
    object Preview1: TMenuItem
      Caption = 'Preview'
      OnClick = Preview1Click
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 128
    Top = 192
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
      Component = cxdata
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
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 41291.399838680560000000
      ShrinkToPageWidth = True
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      OptionsView.FilterBar = False
      BuiltInReportLink = True
    end
  end
end
