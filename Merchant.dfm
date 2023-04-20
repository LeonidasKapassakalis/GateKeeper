inherited frmMerchant: TfrmMerchant
  Left = 328
  Top = 127
  Caption = 'Merchant'
  ClientHeight = 533
  ClientWidth = 782
  Font.Height = -10
  OldCreateOrder = True
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 790
  ExplicitHeight = 560
  PixelsPerInch = 96
  TextHeight = 13
  object dxPageControl1: TcxPageControl [0]
    Left = 0
    Top = 23
    Width = 782
    Height = 510
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tabData
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 510
    ClientRectRight = 782
    ClientRectTop = 0
    object tabBrowser: TcxTabSheet
      Caption = '[Browse]'
      TabVisible = False
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 782
        Height = 510
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          PopupMenu = popFilter
          OnDblClick = cxGrid1DBTableView1DblClick
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
          DataController.DataSource = MerchantDM.dtsBrowser
          DataController.Filter.AutoDataSetFilter = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnFilteredItemsList = True
          FilterRow.SeparatorWidth = 15
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          FilterRow.ApplyInputDelay = 100
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.ImmediateEditor = False
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = cxGrid1DBTableView1Name1
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
          object cxGrid1DBTableView1MerchantId1: TcxGridDBColumn
            DataBinding.FieldName = 'MerchantId'
            Visible = False
          end
          object cxGrid1DBTableView1Name1: TcxGridDBColumn
            DataBinding.FieldName = 'Name'
          end
          object cxGrid1DBTableView1Street1: TcxGridDBColumn
            DataBinding.FieldName = 'Street'
          end
          object cxGrid1DBTableView1ZIP1: TcxGridDBColumn
            DataBinding.FieldName = 'ZIP'
          end
          object cxGrid1DBTableView1City1: TcxGridDBColumn
            DataBinding.FieldName = 'City'
          end
          object cxGrid1DBTableView1AFM1: TcxGridDBColumn
            DataBinding.FieldName = 'AFM'
          end
          object cxGrid1DBTableView1DOY1: TcxGridDBColumn
            DataBinding.FieldName = 'DOY'
          end
          object cxGrid1DBTableView1InsUsr1: TcxGridDBColumn
            DataBinding.FieldName = 'InsUsr'
            Visible = False
          end
          object cxGrid1DBTableView1InsDT1: TcxGridDBColumn
            DataBinding.FieldName = 'InsDT'
            Visible = False
          end
          object cxGrid1DBTableView1UpdUsr1: TcxGridDBColumn
            DataBinding.FieldName = 'UpdUsr'
            Visible = False
          end
          object cxGrid1DBTableView1UpdDT1: TcxGridDBColumn
            DataBinding.FieldName = 'UpdDT'
            Visible = False
          end
          object cxGrid1DBTableView1Deleted1: TcxGridDBColumn
            DataBinding.FieldName = 'Deleted'
            Visible = False
          end
          object cxGrid1DBTableView1DelUsr1: TcxGridDBColumn
            DataBinding.FieldName = 'DelUsr'
            Visible = False
          end
          object cxGrid1DBTableView1DelDT1: TcxGridDBColumn
            DataBinding.FieldName = 'DelDT'
            Visible = False
          end
          object cxGrid1DBTableView1InActive1: TcxGridDBColumn
            DataBinding.FieldName = 'InActive'
            Visible = False
          end
          object cxGrid1DBTableView1InActiveUsr1: TcxGridDBColumn
            DataBinding.FieldName = 'InActiveUsr'
            Visible = False
          end
          object cxGrid1DBTableView1InActiveDt1: TcxGridDBColumn
            DataBinding.FieldName = 'InActiveDt'
            Visible = False
          end
          object cxGrid1DBTableView1Area_Id1: TcxGridDBColumn
            DataBinding.FieldName = 'Area_Id'
            Visible = False
          end
          object cxGrid1DBTableView1MerchantCode1: TcxGridDBColumn
            DataBinding.FieldName = 'MerchantCode'
          end
          object cxGrid1DBTableView1SalesMenId1: TcxGridDBColumn
            DataBinding.FieldName = 'SalesMenId'
          end
          object cxGrid1DBTableView1SGroup_Id1: TcxGridDBColumn
            DataBinding.FieldName = 'SGroup_Id'
            Visible = False
          end
          object cxGrid1DBTableView1SClass_Id1: TcxGridDBColumn
            DataBinding.FieldName = 'SClass_Id'
            Visible = False
          end
          object cxGrid1DBTableView1SAPCODE1: TcxGridDBColumn
            DataBinding.FieldName = 'SAPCODE'
          end
          object cxGrid1DBTableView1AreaId1: TcxGridDBColumn
            DataBinding.FieldName = 'AreaId'
          end
          object cxGrid1DBTableView1ISTEST1: TcxGridDBColumn
            DataBinding.FieldName = 'ISTEST'
          end
          object cxGrid1DBTableView1StopSales1: TcxGridDBColumn
            DataBinding.FieldName = 'StopSales'
          end
          object cxGrid1DBTableView1StopSalesUsr1: TcxGridDBColumn
            DataBinding.FieldName = 'StopSalesUsr'
            Visible = False
          end
          object cxGrid1DBTableView1StopSalesDt1: TcxGridDBColumn
            DataBinding.FieldName = 'StopSalesDt'
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object tabData: TcxTabSheet
      Caption = '[Data]'
      TabVisible = False
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PnlTop: TPanel
        Left = 0
        Top = 0
        Width = 782
        Height = 209
        Align = alTop
        TabOrder = 0
        object Label7: TLabel
          Left = 20
          Top = 157
          Width = 21
          Height = 13
          Caption = 'SAP'
          FocusControl = cxDBTSAP
        end
        object Label6: TLabel
          Left = 240
          Top = 125
          Width = 22
          Height = 13
          Caption = #916#927#933
          FocusControl = cxDBTDOY
        end
        object Label5: TLabel
          Left = 20
          Top = 125
          Width = 25
          Height = 13
          Caption = #913#934#924
          FocusControl = cxDBTAFM
        end
        object Label4: TLabel
          Left = 24
          Top = 67
          Width = 24
          Height = 13
          Caption = #928#972#955#951
          FocusControl = cxDBTCity
        end
        object Label3: TLabel
          Left = 270
          Top = 67
          Width = 18
          Height = 13
          Caption = #932'.'#922'.'
          FocusControl = cxDBTextEdit3
        end
        object Label2: TLabel
          Left = 24
          Top = 40
          Width = 25
          Height = 13
          Caption = #927#948#972#962
          FocusControl = cxDBTAddress
        end
        object Label1: TLabel
          Left = 24
          Top = 16
          Width = 48
          Height = 13
          Caption = #917#960#969#957#965#956#943#945
          FocusControl = cxDBTName
        end
        object Label8: TLabel
          Left = 24
          Top = 90
          Width = 40
          Height = 13
          Caption = #928#949#961#953#959#967#942
        end
        object Label9: TLabel
          Left = 240
          Top = 176
          Width = 44
          Height = 13
          Caption = #928#969#955#951#964#942#962
        end
        object Label10: TLabel
          Left = 20
          Top = 176
          Width = 43
          Height = 13
          Caption = #933#960#959#954'/'#956#945
        end
        object Label11: TLabel
          Left = 240
          Top = 152
          Width = 59
          Height = 13
          Caption = 'Merchant ID'
          FocusControl = cxDBTSAP
        end
        object cxDBCBDeleted: TcxDBCheckBox
          Left = 566
          Top = 70
          TabStop = False
          Caption = #916#953#949#947#961#945#956#956#941#957#959
          DataBinding.DataField = 'Deleted'
          DataBinding.DataSource = MerchantDM.dtsMerchant
          Properties.Alignment = taRightJustify
          TabOrder = 6
        end
        object cxDBCBInActive: TcxDBCheckBox
          Left = 566
          Top = 43
          TabStop = False
          Caption = #913#957#949#957#949#961#947#972
          DataBinding.DataField = 'InActive'
          DataBinding.DataSource = MerchantDM.dtsMerchant
          Properties.Alignment = taRightJustify
          Properties.ReadOnly = False
          TabOrder = 3
        end
        object cxDBCBTest: TcxDBCheckBox
          Left = 566
          Top = 16
          TabStop = False
          Caption = #932#949#963#964'.'
          DataBinding.DataField = 'ISTEST'
          DataBinding.DataSource = MerchantDM.dtsMerchant
          Properties.Alignment = taRightJustify
          Properties.ReadOnly = True
          TabOrder = 1
        end
        object cxDBTSAP: TcxDBTextEdit
          Left = 80
          Top = 145
          DataBinding.DataField = 'SAPCODE'
          DataBinding.DataSource = MerchantDM.dtsMerchant
          TabOrder = 10
          Width = 65
        end
        object cxDBTDOY: TcxDBTextEdit
          Left = 324
          Top = 118
          DataBinding.DataField = 'DOY'
          DataBinding.DataSource = MerchantDM.dtsMerchant
          TabOrder = 9
          Width = 121
        end
        object cxDBTAFM: TcxDBTextEdit
          Left = 80
          Top = 118
          DataBinding.DataField = 'AFM'
          DataBinding.DataSource = MerchantDM.dtsMerchant
          TabOrder = 8
          OnExit = cxDBTAFMExit
          Width = 73
        end
        object cxDBTCity: TcxDBTextEdit
          Left = 80
          Top = 64
          DataBinding.DataField = 'CITY'
          DataBinding.DataSource = MerchantDM.dtsMerchant
          TabOrder = 4
          Width = 169
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 304
          Top = 64
          DataBinding.DataField = 'ZIP'
          DataBinding.DataSource = MerchantDM.dtsMerchant
          TabOrder = 5
          Width = 65
        end
        object cxDBTAddress: TcxDBTextEdit
          Left = 78
          Top = 37
          DataBinding.DataField = 'STREET'
          DataBinding.DataSource = MerchantDM.dtsMerchant
          TabOrder = 2
          Width = 257
        end
        object cxDBTName: TcxDBTextEdit
          Left = 78
          Top = 13
          AutoSize = False
          DataBinding.DataField = 'Name'
          DataBinding.DataSource = MerchantDM.dtsMerchant
          Properties.AutoSelect = False
          TabOrder = 0
          Height = 21
          Width = 339
        end
        object dxDBLSalesMen: TcxDBLookupComboBox
          Left = 324
          Top = 172
          DataBinding.DataField = 'SalesMenId'
          DataBinding.DataSource = MerchantDM.dtsMerchant
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'SALESMENID'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListOptions.AnsiSort = True
          Properties.ListSource = MerchantDM.dsSalesMen
          TabOrder = 13
          OnDblClick = cxDbLCDblClick
          Width = 121
        end
        object dxDBLBranch: TcxDBLookupComboBox
          Left = 80
          Top = 172
          DataBinding.DataField = 'BranchId'
          DataBinding.DataSource = MerchantDM.dtsMerchant
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'BRANCHID'
          Properties.ListColumns = <
            item
              FieldName = 'DESCR'
            end>
          Properties.ListSource = MerchantDM.dsBranch
          TabOrder = 12
          OnDblClick = cxDbLCDblClick
          Width = 121
        end
        object dxDBLArea: TcxDBLookupComboBox
          Left = 80
          Top = 91
          DataBinding.DataField = 'AreaId'
          DataBinding.DataSource = MerchantDM.dtsMerchant
          Properties.CaseSensitiveSearch = True
          Properties.KeyFieldNames = 'Area03_Id'
          Properties.ListColumns = <
            item
              FieldName = 'WholeDescr'
            end>
          Properties.ListSource = MerchantDM.dsTown
          TabOrder = 7
          OnDblClick = cxDbLCDblClick
          Width = 377
        end
        object cxDBTMerchantID: TcxDBTextEdit
          Left = 324
          Top = 145
          DataBinding.DataField = 'MerchantCode'
          DataBinding.DataSource = MerchantDM.dtsMerchant
          TabOrder = 11
          Width = 65
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 566
          Top = 97
          TabStop = False
          Caption = 'Stop Sales'
          DataBinding.DataField = 'StopSales'
          DataBinding.DataSource = MerchantDM.dtsMerchant
          Properties.Alignment = taRightJustify
          TabOrder = 14
        end
      end
      object BottomPanel: TPanel
        Left = 0
        Top = 209
        Width = 782
        Height = 301
        Align = alClient
        TabOrder = 1
        object PageControl1: TPageControl
          Left = 1
          Top = 1
          Width = 780
          Height = 299
          ActivePage = Commision
          Align = alClient
          MultiLine = True
          TabOrder = 0
          OnChanging = PageControl1Changing
          object Commision: TTabSheet
            Caption = #928#961#959#956#942#952#949#953#945
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object GroupBox1: TGroupBox
              Left = 0
              Top = 0
              Width = 772
              Height = 148
              Align = alTop
              Caption = #928#961#959#956#942#952#949#953#945
              TabOrder = 0
              object LabelProm1: TLabel
                Left = 56
                Top = 20
                Width = 42
                Height = 13
                Caption = #927#956#940#948#945' 1'
              end
              object LabelProm2: TLabel
                Left = 56
                Top = 44
                Width = 42
                Height = 13
                Caption = #927#956#940#948#945' 2'
              end
              object LabelProm3: TLabel
                Left = 56
                Top = 68
                Width = 42
                Height = 13
                Caption = #927#956#940#948#945' 3'
              end
              object LabelProm4: TLabel
                Left = 56
                Top = 92
                Width = 42
                Height = 13
                Caption = #927#956#940#948#945' 4'
              end
              object Label22: TLabel
                Left = 248
                Top = 20
                Width = 53
                Height = 13
                Caption = #928#961#959#956#942#952#949#953#945
              end
              object Label23: TLabel
                Left = 248
                Top = 44
                Width = 53
                Height = 13
                Caption = #928#961#959#956#942#952#949#953#945
              end
              object Label24: TLabel
                Left = 248
                Top = 68
                Width = 53
                Height = 13
                Caption = #928#961#959#956#942#952#949#953#945
              end
              object Label25: TLabel
                Left = 248
                Top = 92
                Width = 53
                Height = 13
                Caption = #928#961#959#956#942#952#949#953#945
              end
              object LabelProm5: TLabel
                Left = 56
                Top = 116
                Width = 42
                Height = 13
                Caption = #927#956#940#948#945' 5'
              end
              object Label26: TLabel
                Left = 248
                Top = 116
                Width = 53
                Height = 13
                Caption = #928#961#959#956#942#952#949#953#945
              end
              object Label12: TLabel
                Left = 400
                Top = 20
                Width = 42
                Height = 13
                Caption = #927#956#940#948#945' 6'
              end
              object Label13: TLabel
                Left = 400
                Top = 44
                Width = 42
                Height = 13
                Caption = #927#956#940#948#945' 7'
              end
              object Label14: TLabel
                Left = 400
                Top = 68
                Width = 42
                Height = 13
                Caption = #927#956#940#948#945' 8'
              end
              object Label15: TLabel
                Left = 400
                Top = 92
                Width = 42
                Height = 13
                Caption = #927#956#940#948#945' 9'
              end
              object Label16: TLabel
                Left = 400
                Top = 116
                Width = 48
                Height = 13
                Caption = #927#956#940#948#945' 10'
              end
              object Label17: TLabel
                Left = 592
                Top = 116
                Width = 53
                Height = 13
                Caption = #928#961#959#956#942#952#949#953#945
              end
              object Label18: TLabel
                Left = 592
                Top = 92
                Width = 53
                Height = 13
                Caption = #928#961#959#956#942#952#949#953#945
              end
              object Label19: TLabel
                Left = 592
                Top = 68
                Width = 53
                Height = 13
                Caption = #928#961#959#956#942#952#949#953#945
              end
              object Label20: TLabel
                Left = 592
                Top = 44
                Width = 53
                Height = 13
                Caption = #928#961#959#956#942#952#949#953#945
              end
              object Label21: TLabel
                Left = 592
                Top = 20
                Width = 53
                Height = 13
                Caption = #928#961#959#956#942#952#949#953#945
              end
              object dxDBLookupComboBox666: TcxDBLookupComboBox
                Left = 104
                Top = 16
                DataBinding.DataField = 'IGroupId1'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                Properties.ListSource = MerchantDM.dtsIGroup
                TabOrder = 0
                Width = 121
              end
              object dxDBLookupEditComboBox7: TcxDBLookupComboBox
                Left = 104
                Top = 40
                DataBinding.DataField = 'IGroupId2'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                Properties.ListSource = MerchantDM.dtsIGroup
                TabOrder = 4
                Width = 121
              end
              object dxDBLookupEdit8: TcxDBLookupComboBox
                Left = 104
                Top = 64
                DataBinding.DataField = 'IGroupId3'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                Properties.ListSource = MerchantDM.dtsIGroup
                TabOrder = 8
                Width = 121
              end
              object dxDBLookupEdit9: TcxDBLookupComboBox
                Left = 104
                Top = 88
                DataBinding.DataField = 'IGroupId4'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                Properties.ListSource = MerchantDM.dtsIGroup
                TabOrder = 12
                Width = 121
              end
              object dxDBCurrencyEdit1: TcxDBCurrencyEdit
                Left = 312
                Top = 16
                DataBinding.DataField = 'POSOSTO1'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                TabOrder = 1
                Width = 57
              end
              object dxDBCurrencyEdit2: TcxDBCurrencyEdit
                Left = 312
                Top = 40
                DataBinding.DataField = 'POSOSTO2'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                TabOrder = 5
                Width = 57
              end
              object dxDBCurrencyEdit3: TcxDBCurrencyEdit
                Left = 312
                Top = 64
                DataBinding.DataField = 'POSOSTO3'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                TabOrder = 9
                Width = 57
              end
              object dxDBCurrencyEdit4: TcxDBCurrencyEdit
                Left = 312
                Top = 88
                DataBinding.DataField = 'POSOSTO4'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                TabOrder = 13
                Width = 57
              end
              object dxDBLookupEdit10: TcxDBLookupComboBox
                Left = 104
                Top = 112
                DataBinding.DataField = 'IGroupId5'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                Properties.ListSource = MerchantDM.dtsIGroup
                TabOrder = 16
                Width = 121
              end
              object dxDBCurrencyEdit5: TcxDBCurrencyEdit
                Left = 312
                Top = 112
                DataBinding.DataField = 'Pososto5'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                TabOrder = 17
                Width = 57
              end
              object cxDBLookupComboBox1: TcxDBLookupComboBox
                Left = 448
                Top = 16
                DataBinding.DataField = 'IGroupId6'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                Properties.ListSource = MerchantDM.dtsIGroup
                TabOrder = 2
                Width = 121
              end
              object cxDBLookupComboBox2: TcxDBLookupComboBox
                Left = 448
                Top = 40
                DataBinding.DataField = 'IGroupId7'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                Properties.ListSource = MerchantDM.dtsIGroup
                TabOrder = 6
                Width = 121
              end
              object cxDBLookupComboBox3: TcxDBLookupComboBox
                Left = 448
                Top = 64
                DataBinding.DataField = 'IGroupId8'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                Properties.ListSource = MerchantDM.dtsIGroup
                TabOrder = 10
                Width = 121
              end
              object cxDBLookupComboBox4: TcxDBLookupComboBox
                Left = 448
                Top = 88
                DataBinding.DataField = 'IGroupId9'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                Properties.ListSource = MerchantDM.dtsIGroup
                TabOrder = 14
                Width = 121
              end
              object cxDBLookupComboBox5: TcxDBLookupComboBox
                Left = 448
                Top = 112
                DataBinding.DataField = 'IGroupId10'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                Properties.ListSource = MerchantDM.dtsIGroup
                TabOrder = 18
                Width = 121
              end
              object cxDBCurrencyEdit1: TcxDBCurrencyEdit
                Left = 656
                Top = 112
                DataBinding.DataField = 'Pososto10'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                TabOrder = 19
                Width = 57
              end
              object cxDBCurrencyEdit2: TcxDBCurrencyEdit
                Left = 656
                Top = 88
                DataBinding.DataField = 'Pososto9'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                TabOrder = 15
                Width = 57
              end
              object cxDBCurrencyEdit3: TcxDBCurrencyEdit
                Left = 656
                Top = 64
                DataBinding.DataField = 'Pososto8'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                TabOrder = 11
                Width = 57
              end
              object cxDBCurrencyEdit4: TcxDBCurrencyEdit
                Left = 656
                Top = 40
                DataBinding.DataField = 'Pososto7'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                TabOrder = 7
                Width = 57
              end
              object cxDBCurrencyEdit5: TcxDBCurrencyEdit
                Left = 656
                Top = 16
                DataBinding.DataField = 'Pososto6'
                DataBinding.DataSource = MerchantDM.dtsMerchant
                TabOrder = 3
                Width = 57
              end
            end
          end
          object StationsTab: TTabSheet
            Caption = 'Stations'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxGrid2: TcxGrid
              Left = 0
              Top = 41
              Width = 772
              Height = 230
              Align = alClient
              TabOrder = 1
              LookAndFeel.Kind = lfUltraFlat
              object cxGridDBTableView1: TcxGridDBTableView
                PopupMenu = popFilter
                OnDblClick = actUpdateExecute
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
                Navigator.Visible = True
                DataController.DataSource = CustomerDM.dtsBrowser
                DataController.DetailKeyFieldNames = 'Id'
                DataController.Filter.AutoDataSetFilter = True
                DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoInsertOnNewItemRowFocusing]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Filtering.ColumnFilteredItemsList = True
                OptionsBehavior.AlwaysShowEditor = True
                OptionsCustomize.ColumnHiding = True
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsSelection.CellSelect = False
                OptionsView.Footer = True
                OptionsView.GroupFooterMultiSummaries = True
                OptionsView.GroupFooters = gfAlwaysVisible
                object cxGridDBTableView1Id: TcxGridDBColumn
                  DataBinding.FieldName = 'Id'
                end
                object cxGridDBTableView1CustomerId: TcxGridDBColumn
                  DataBinding.FieldName = 'CustomerId'
                end
                object cxGridDBTableView1CustomerAA: TcxGridDBColumn
                  DataBinding.FieldName = 'CustomerAA'
                end
                object cxGridDBTableView1CCName: TcxGridDBColumn
                  DataBinding.FieldName = 'CCName'
                end
                object cxGridDBTableView1CCNameFull: TcxGridDBColumn
                  DataBinding.FieldName = 'CCNameFull'
                end
                object cxGridDBTableView1InsUsr: TcxGridDBColumn
                  DataBinding.FieldName = 'InsUsr'
                end
                object cxGridDBTableView1InsDT: TcxGridDBColumn
                  DataBinding.FieldName = 'InsDT'
                end
                object cxGridDBTableView1UpdUsr: TcxGridDBColumn
                  DataBinding.FieldName = 'UpdUsr'
                end
                object cxGridDBTableView1UpdDT: TcxGridDBColumn
                  DataBinding.FieldName = 'UpdDT'
                end
                object cxGridDBTableView1Deleted: TcxGridDBColumn
                  DataBinding.FieldName = 'Deleted'
                end
                object cxGridDBTableView1DelUsr: TcxGridDBColumn
                  DataBinding.FieldName = 'DelUsr'
                end
                object cxGridDBTableView1DelDT: TcxGridDBColumn
                  DataBinding.FieldName = 'DelDT'
                end
                object cxGridDBTableView1InActive: TcxGridDBColumn
                  DataBinding.FieldName = 'InActive'
                end
                object cxGridDBTableView1InActiveUsr: TcxGridDBColumn
                  DataBinding.FieldName = 'InActiveUsr'
                end
                object cxGridDBTableView1InActiveDt: TcxGridDBColumn
                  DataBinding.FieldName = 'InActiveDt'
                end
              end
              object cxGrid2DBTableView1: TcxGridDBTableView
                PopupMenu = popFilter
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.First.Visible = False
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.Visible = False
                Navigator.Buttons.Next.Visible = False
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.Visible = False
                Navigator.Buttons.Append.Visible = False
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.Visible = False
                DataController.DataSource = MerchantDM.dtsMerchant_Station
                DataController.DetailKeyFieldNames = 'MerchantStationId'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Filtering.ColumnFilteredItemsList = True
                OptionsBehavior.FocusCellOnCycle = True
                OptionsCustomize.ColumnHiding = True
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Appending = True
                OptionsData.CancelOnExit = False
                OptionsView.Footer = True
                OptionsView.GroupFooterMultiSummaries = True
                OptionsView.GroupFooters = gfAlwaysVisible
                object cxGrid2DBTableView1MerchantStationId1: TcxGridDBColumn
                  DataBinding.FieldName = 'MerchantStationId'
                  Visible = False
                  VisibleForCustomization = False
                end
                object cxGrid2DBTableView1MerchantId1: TcxGridDBColumn
                  DataBinding.FieldName = 'MerchantId'
                  Visible = False
                  VisibleForCustomization = False
                end
                object cxGrid2DBTableView1LStation1: TcxGridDBColumn
                  Caption = #928#961#945#964#942#961#953#959
                  DataBinding.FieldName = 'LStation'
                  Width = 634
                end
                object cxGrid2DBTableView1Stationid1: TcxGridDBColumn
                  Caption = #922'.'#928#961#945#964'.'
                  DataBinding.FieldName = 'Stationid'
                  Visible = False
                end
              end
              object cxGrid2Level1: TcxGridLevel
                GridView = cxGrid2DBTableView1
              end
            end
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 772
              Height = 41
              Align = alTop
              Caption = 'Panel1'
              TabOrder = 0
              object ToolBar2: TToolBar
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 764
                Height = 29
                AutoSize = True
                ButtonHeight = 32
                ButtonWidth = 32
                Caption = 'ToolBar1'
                DrawingStyle = dsGradient
                GradientEndColor = cl3DDkShadow
                GradientStartColor = clMoneyGreen
                HotImages = ImageList1
                HotTrackColor = clRed
                Images = ImageList1
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                Transparent = False
                object ToolButton8: TToolButton
                  Left = 0
                  Top = 0
                  Action = actCntInsert
                  OnMouseDown = ToolButton7MouseDown
                end
                object ToolButton7: TToolButton
                  Left = 32
                  Top = 0
                  Action = actCntEdit
                  OnMouseDown = ToolButton7MouseDown
                end
                object ToolButton9: TToolButton
                  Left = 64
                  Top = 0
                  Action = actCntDelete
                  OnMouseDown = ToolButton7MouseDown
                end
                object ToolButton10: TToolButton
                  Left = 96
                  Top = 0
                  Action = actCntPost
                  OnMouseDown = ToolButton7MouseDown
                end
                object ToolButton11: TToolButton
                  Left = 128
                  Top = 0
                  Action = actCntCancel
                  OnMouseDown = ToolButton7MouseDown
                end
                object ToolButton12: TToolButton
                  Left = 160
                  Top = 0
                  Action = Action1
                  OnMouseDown = ToolButton7MouseDown
                end
              end
            end
          end
          object ContactsTab: TTabSheet
            Caption = 'Contacts'
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxGrid4: TcxGrid
              Left = 0
              Top = 41
              Width = 772
              Height = 230
              Align = alClient
              TabOrder = 1
              LookAndFeel.Kind = lfUltraFlat
              object cxGridDBTableView3: TcxGridDBTableView
                PopupMenu = popFilter
                OnDblClick = actUpdateExecute
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
                Navigator.Visible = True
                DataController.DataSource = CustomerDM.dtsBrowser
                DataController.DetailKeyFieldNames = 'Id'
                DataController.Filter.AutoDataSetFilter = True
                DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoInsertOnNewItemRowFocusing]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Filtering.ColumnFilteredItemsList = True
                OptionsBehavior.AlwaysShowEditor = True
                OptionsCustomize.ColumnHiding = True
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsSelection.CellSelect = False
                OptionsView.Footer = True
                OptionsView.GroupFooterMultiSummaries = True
                OptionsView.GroupFooters = gfAlwaysVisible
                object cxGridDBColumn1: TcxGridDBColumn
                  DataBinding.FieldName = 'Id'
                end
                object cxGridDBColumn2: TcxGridDBColumn
                  DataBinding.FieldName = 'CustomerId'
                end
                object cxGridDBColumn3: TcxGridDBColumn
                  DataBinding.FieldName = 'CustomerAA'
                end
                object cxGridDBColumn4: TcxGridDBColumn
                  DataBinding.FieldName = 'CCName'
                end
                object cxGridDBColumn5: TcxGridDBColumn
                  DataBinding.FieldName = 'CCNameFull'
                end
                object cxGridDBColumn6: TcxGridDBColumn
                  DataBinding.FieldName = 'InsUsr'
                end
                object cxGridDBColumn7: TcxGridDBColumn
                  DataBinding.FieldName = 'InsDT'
                end
                object cxGridDBColumn8: TcxGridDBColumn
                  DataBinding.FieldName = 'UpdUsr'
                end
                object cxGridDBColumn9: TcxGridDBColumn
                  DataBinding.FieldName = 'UpdDT'
                end
                object cxGridDBColumn10: TcxGridDBColumn
                  DataBinding.FieldName = 'Deleted'
                end
                object cxGridDBColumn11: TcxGridDBColumn
                  DataBinding.FieldName = 'DelUsr'
                end
                object cxGridDBColumn12: TcxGridDBColumn
                  DataBinding.FieldName = 'DelDT'
                end
                object cxGridDBColumn13: TcxGridDBColumn
                  DataBinding.FieldName = 'InActive'
                end
                object cxGridDBColumn14: TcxGridDBColumn
                  DataBinding.FieldName = 'InActiveUsr'
                end
                object cxGridDBColumn15: TcxGridDBColumn
                  DataBinding.FieldName = 'InActiveDt'
                end
              end
              object cxGrid4DBTableView1: TcxGridDBTableView
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
                DataController.DataSource = MerchantDM.dtsMerchant_Contacts
                DataController.DetailKeyFieldNames = 'MerchantContactsId'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Filtering.ColumnFilteredItemsList = True
                OptionsBehavior.AlwaysShowEditor = True
                OptionsBehavior.ImmediateEditor = False
                OptionsCustomize.ColumnHiding = True
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Appending = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                OptionsView.GroupFooterMultiSummaries = True
                OptionsView.GroupFooters = gfAlwaysVisible
                object cxGrid4DBTableView1LCont: TcxGridDBColumn
                  DataBinding.FieldName = 'LCont'
                  Visible = False
                end
                object cxGrid4DBTableView1LResr: TcxGridDBColumn
                  DataBinding.FieldName = 'LResr'
                  Width = 605
                end
                object cxGrid4DBTableView1LContactTypeId: TcxGridDBColumn
                  DataBinding.FieldName = 'LContactTypeId'
                  Width = 101
                end
                object cxGrid4DBTableView1MerchantContactsId: TcxGridDBColumn
                  DataBinding.FieldName = 'MerchantContactsId'
                  Visible = False
                  VisibleForCustomization = False
                end
                object cxGrid4DBTableView1merchantid: TcxGridDBColumn
                  DataBinding.FieldName = 'merchantid'
                  Visible = False
                  VisibleForCustomization = False
                end
                object cxGrid4DBTableView1Contactid: TcxGridDBColumn
                  DataBinding.FieldName = 'Contactid'
                  Visible = False
                  VisibleForCustomization = False
                end
                object cxGrid4DBTableView1ContactTypeId: TcxGridDBColumn
                  DataBinding.FieldName = 'ContactTypeId'
                  Visible = False
                  Width = 52
                end
                object cxGrid4DBTableView1Main: TcxGridDBColumn
                  DataBinding.FieldName = 'Main'
                  Visible = False
                end
                object cxGrid4DBTableView1AA: TcxGridDBColumn
                  DataBinding.FieldName = 'AA'
                  Visible = False
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cxGrid4DBTableView1
              end
            end
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 772
              Height = 41
              Align = alTop
              Caption = 'Panel1'
              TabOrder = 0
              object ToolBar1: TToolBar
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 764
                Height = 29
                AutoSize = True
                ButtonHeight = 32
                ButtonWidth = 32
                Caption = 'ToolBar1'
                DrawingStyle = dsGradient
                GradientEndColor = cl3DDkShadow
                GradientStartColor = clMoneyGreen
                HotImages = ImageList1
                HotTrackColor = clRed
                Images = ImageList1
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                Transparent = False
                object ToolButton2: TToolButton
                  Left = 0
                  Top = 0
                  Action = actCntInsert
                  OnMouseDown = ToolButton1MouseDown
                end
                object ToolButton1: TToolButton
                  Left = 32
                  Top = 0
                  Action = actCntEdit
                  OnMouseDown = ToolButton1MouseDown
                end
                object ToolButton3: TToolButton
                  Left = 64
                  Top = 0
                  Action = actCntDelete
                  OnMouseDown = ToolButton1MouseDown
                end
                object ToolButton4: TToolButton
                  Left = 96
                  Top = 0
                  Action = actCntPost
                  OnMouseDown = ToolButton1MouseDown
                end
                object ToolButton5: TToolButton
                  Left = 128
                  Top = 0
                  Action = actCntCancel
                  OnMouseDown = ToolButton1MouseDown
                end
                object ToolButton6: TToolButton
                  Left = 160
                  Top = 0
                  Action = Action1
                  OnMouseDown = ToolButton1MouseDown
                end
                object ToolButton13: TToolButton
                  Left = 192
                  Top = 0
                  Caption = 'ToolButton13'
                  ImageIndex = 3
                  OnClick = ToolButton13Click
                end
              end
            end
          end
        end
      end
    end
  end
  object ActionToolBar1: TActionToolBar [1]
    Left = 0
    Top = 0
    Width = 782
    Height = 23
    ActionManager = ActionManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  inherited popFilter: TPopupMenu
    Left = 732
    Top = 179
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 504
    Top = 136
    object actClose: TAction
      Caption = #917#960#953#963#964#961#959#966#942
      OnExecute = actCloseExecute
      OnUpdate = UpdateBrowserToolbar
    end
    object actInsert: TAction
      Caption = #917#953#963#945#947#969#947#942
      OnExecute = actInsertExecute
      OnUpdate = UpdateBrowserToolbar
    end
    object actUpdate: TAction
      Caption = #924#949#964#945#946#959#955#942
      OnExecute = actUpdateExecute
      OnUpdate = UpdateBrowserToolbar
    end
    object actDelete: TAction
      Caption = #916#953#945#947#961#945#966#942
      OnExecute = actDeleteExecute
      OnUpdate = UpdateBrowserToolbar
    end
    object actOK: TAction
      Caption = #913#960#959#948#959#967#942
      OnExecute = actOKExecute
      OnUpdate = UpdateDataToolbar
    end
    object actCancel: TAction
      Caption = #913#954#973#961#969#963#951
      OnExecute = actCancelExecute
      OnUpdate = UpdateDataToolbar
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
      OnExecute = UpdateActionsExecute
    end
    object actGridPrint: TAction
      Caption = #917#954#964'.Grid'
      OnExecute = actGridPrintExecute
      OnUpdate = UpdateBrowserToolbar
    end
    object actDisp: TAction
      Caption = #917#956#966#940#957#953#963#951
      ShortCut = 123
      OnExecute = actDispExecute
      OnUpdate = UpdateBrowserToolbar
    end
    object actInActive: TAction
      Caption = #913#957#949#957#949#961#947#942
      OnExecute = actInActiveExecute
      OnUpdate = UpdateBrowserToolbar
    end
    object actTest: TAction
      Caption = #932#949#963#964'.'
      OnExecute = actTestExecute
      OnUpdate = UpdateBrowserToolbar
    end
    object actNext: TAction
      Caption = 'actNext'
      ShortCut = 16424
      OnExecute = actNextExecute
    end
    object actPrev: TAction
      Caption = 'actPrev'
      ShortCut = 16422
      OnExecute = actPrevExecute
    end
    object actFirst: TAction
      Caption = 'actFirst'
      ShortCut = 16420
      OnExecute = actFirstExecute
    end
    object actLast: TAction
      Caption = 'actLast'
      ShortCut = 16419
      OnExecute = actLastExecute
    end
    object actStat: TAction
      Caption = #931#964#945#964#953#963#964#953#954#940
      OnExecute = actStatExecute
    end
    object actMaxMerchant: TAction
      Caption = 'Max Merchant'
      OnExecute = actMaxMerchantExecute
    end
    object actMakeSimple: TAction
      Caption = #913#957#964#953#947#961#945#966#942' '#963#949' S.T.'
      OnExecute = actMakeSimpleExecute
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actDisp
            ShortCut = 123
          end
          item
            Action = actInsert
          end
          item
            Action = actUpdate
          end
          item
            Action = actTest
          end
          item
            Action = actStat
          end
          item
            Action = actCancel
          end
          item
            Action = actOK
          end
          item
            Action = actMakeSimple
            Caption = #913#957#964#953#947#961#945#966#942' '#963#949' &S.T.'
          end
          item
            Action = actMaxMerchant
            Caption = '&Max Merchant'
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 736
    Top = 40
    StyleName = 'Platform Default'
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 736
    Top = 136
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = cxGrid1
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
    object dxComponentPrinter1Link2: TdxGridReportLink
      Component = cxGrid2
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
    object dxComponentPrinter1Link3: TdxGridReportLink
      Component = cxGrid4
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
  object ImageList1: TImageList
    ColorDepth = cdDefault
    Left = 736
    Top = 88
    Bitmap = {
      494C010117001900040010001000FFFFFFFF0500FFFFFFFFFFFFFFFF424D7600
      000000000000760000002800000040000000600000000100040000000000000C
      0000000000000000000000000000000000000000000000008000008000000080
      8000800000008000800080800000C0C0C000808080000000FF0000FF000000FF
      FF00FF000000FF00FF00FFFF0000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008788
      0000000000067607060000000000000000000000000000000000000000877788
      8000000000067607060000000000000000000000000000000000000087877788
      8000000000067077060000000000000000000000333000000000000778227788
      80000FFF4F066666660000000000000000000000000300000000000787272788
      80000F844406FFFFF6000000000000000000000000B030000000008277772788
      88000F444406FFFFF60000000000000000000000000B03000000008227722788
      88000F484806FFFFF600000000000000000000000000B0300000007227722788
      88000F488806999996000000000000000000000000000B030000007777270008
      88000F4488FFF000000000000000000000000000000000B00000087777087077
      00800F888888F000000000000000000000000000000000011100087708088000
      77000F8888888000000000000000000000000000000000019900070800070800
      88000F888F000000000000000000000000000000000000009000008000700008
      80000FF888070000000000000000000000000000000000000000080088008000
      80000F888F000000000000000000000000000000000000000000000080088080
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000F00000000000000000000000000000000000000000000000000DD
      000000000F8770770000FFFFFFFFFFFFFFF00000000000000000000000000DD5
      807000000F77777880008888888888888887000000000000000000000000DD58
      00700077087FF8877F00777777787777777800000000000000000000000DD580
      00700F666687F77778F0777777787777777800000000000000000000007D5800
      0070076766777777668078777788773787788111999999991110006660788000
      00700F77777777777EE0777777787787777889999999999999908E7E88680000
      0070F76777F000777E7077777778778777788999999999999990EE7E88800000
      007066677F00007EE6F077777888777777788888888888888890EE7E88800000
      0070667770000FEEE68077777778777777787888888888888880EE7EEEE00000
      00706777F000F888EEF0777777787737877800000000000000008E7EEE680000
      007076776778666E800077777787773787780000000000000000087EE0800000
      007006E76666667EF0007F777777777777780000000000000000000000000000
      070006F77666E76600007FFFFF777FFFFF780000000000000000000000000000
      70000788E7777F000000777777777777778F0000000000000000000000000000
      0000000778067000000000000000000000000000000000000000000000000000
      00000777777777777F0000000000000000000000000000000000000000000000
      0000FFFFFFFFFFFFF80000000F88870000000990000000000090099000000000
      0090FFFFFFFFFFFFF80000000F33380000000999000000000900099900000000
      0900FF787FFFFFFFF70000000FBBB80000000099900000009000009990000000
      9000FFF788FFFFFFF70000000F33380000000009990000990000000999000099
      0000FFFF7B8FFFFFF70000000F33380000000000099009900000000009900990
      0000FFFFFBB8FFFFF700F8888833338888700000009999000000000000999900
      0000FFFFFFBB8FFFF70083333388833333200000009990000000000000999000
      0000FFFFFFFBB8FFF70087777788877778200000099099000000000009909900
      0000FFFFFFFFBB8FF70088888888888888200009990009900000000999000990
      0000FFFFFFFFFBB8F700F8888888838888700099900007790000009990000779
      0000FFFFFFFFFFBB870000000F88880000000999000007009000099900000700
      9000FFFFFFFFFF7BB8F000000F77780000000990000000000090099000000000
      0090FFFFFFFFFFF7B88F00000F77780000000000000000000000000000000000
      0000FFFFFFFFFFF77F8700000F77780000000000000000000000000000000000
      0000FFFFFFFFFF70077700000000000000000000000000000000700000007777
      777700000000000000000000000000000000000000000F777F00787FF7007777
      7777080FF000000000007FFF00FFFF0FFF70000F7787778E7F00787FF0D55555
      5777080FF0D5555550007FF9000FF000FF700077777788EEEF00787FF0DDDDDD
      5000080FF0DDDDDD50007FF99000D9000F700F77777787777700787FF700FFFD
      5FF0080FF000FFFD5FF07FFD990D9990FF700F8777777E777700787FF770FFFD
      5FF0080FF000FFFD5FF07FFD9999990FFF700777777778777000787FF770FFFD
      5FE0080FF000FFFD5FE07FFFD99990FFFF70078778887877700070878880FEF0
      0FE000808880FEF00FE07FFFFD99900FFF7007777777776660000FFFF7780FEF
      FEF00FFFF0080FEFFEF07FFFFD999000FF70078777777787000077FFFFFFFFFE
      EFF000FFFFFFFFFEEFF07FFFF99D99000F700787777777870000777F700FFFFF
      FFF0000F000FFFFFFFF07000D900D99000700777777777770000777777FFFFFF
      FFF0000000FFFFFFFFF0744499044D9900000777777777770000777777FFFFFF
      F660000000FFFFFFF6607444DD4444D9770000FFFFFFFFF00000777777FFFFFF
      FFF7000000FFFFFFFFF077777777777777700007FFFFF7000000777777FFFFFF
      FF77000000FFFFFFFF00FFFFFFFFFFFFFFFF0000000000000000777777000000
      07770000000000000000FFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000000000000000000FF777F00000000000F7887F0000000000FFFF
      F00000000000FFFFFF00000000F7B77BBF00000F778777BB77F0000F77777EEE
      7F00000F7887777777F0000F788BBBBBBB000F77777778BB0000007778878EEE
      70000F77777777700000007777BBBB3BBB00F777778888BB88870F7777787777
      E700FF777788888777700F7778BBBB73BB00F787788777777787078778887777
      7F00F8777778888888800787773773377B000777777233772337077777778777
      7F00F7777779999999900777778B7777BB000787788778770000078878887877
      7000F8877887788F00000F877888BBBB70000877777777770000077777777768
      0000F7777777777F000007777777777700000F87777777330000078777777787
      0000F7777777777F000007877777778700000887777777870000078777777787
      0000F8777777778F000007877777778700000777777777770000077777777778
      0000F7777777777F000007777777777700000777777777770000077777777777
      00000777777777700000077777777777000007FFFFFFFF7000000FFFFFFFFFFF
      000007FFFFFFFF70000000FFFFFFFFF00000007FFFFFF700000000FFFFFFFFF0
      0000007FFFFFF70000000007FFFFF70000000000F77F00000000000007770000
      000000000FF00000000000000000000000000000000000000000000000000000
      00000000000000880000000FFFFFFFFF00000000000676070600000788000080
      000000000001B90880000FF778888887FF000000000676070600077788000080
      0000000078B1B9018880FF788888878877F00000000670770600077788000800
      0000007578B1B9010800F78777FFF77787FF0000400666666600077788000008
      0000007578B1B9010000F7777777777777FF0084440600000600077788000000
      8000007578B1B1010000F7887888877877F00044440600000600077788000000
      8800007570BBB91100000F877FFFFF7777000048480600000600077788800000
      8800007770BBB99700000F77777777777F000048880699999600077788070000
      8800007770BBB99710000F787888877777000044880000000000077788000700
      8800007770BB099710000F777FFFFF7777000088888800000000070778800070
      880000777009997710000F77FFFFFFF777000088888880000000087877008070
      88000070FF78807710000F77FFFFFFF777000088800000000000000008770770
      880000F00807780100000F777FFFFFF777000008880700000000000000087077
      780000077800F878000000777FFFFFF770000088800000000000000000087777
      7800000F78000F7800000007FFFFFFFFF0000000000000000000000000000878
      000000078000078000000000F7FFF7700000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF00FFFFFF9FFFFF0000FFFFFE07FE010000
      C01FF807FC010000C7DFE007FC010000D1DFE00380010000D0DFE00380010000
      DC5FC00380010000DA1FC00380010000DD1FC00180010000DE8FC0E1803F0000
      DF47824D803F0000DEA38A73803F0000DEC3AEB3803F0000DEE3DDE7807F0000
      FFFFB37780FF0000FFFFF65F81FF0000FFFFFFEFFEFFFFFFFFFFE001F84F0001
      FFFFFF85F8070000FFFFFF0DC8030000FFFFFE1D80010000FFFFFC3D80010000
      0001807D80010000000100FD01C10000000100FD03C10000000100FD07810000
      000100FD07010000FFFF00FD00070000FFFF81FD80070000FFFFFFF9800F0000
      FFFFFFF3803F0000FFFFFFF7E27FFFFFFFFFFFFF8003FFFFFFFFFFFF0003F83F
      800D800D0003F83F8FEB8FEB0003F83FC7E7C7E70003F83FE3CFE3CF0003F83F
      E98FE98F00030001EC2FEC2F00030001EC6FEC6F00030001E92FE92F00030001
      E38FE38F00030001C70FC70F0003F83F8F378F370001F83F8F7D8F7D0000F83F
      FFFFFFFF0000F83FFFFFFFFF0018FFFFFFFF000080FFFFFEFF830000A4FF0C20
      E0030000A0070630C0030000A000031880030000A400000080030000A6000000
      80070000A600000080070000900000608007000006000030800F0000C0000018
      800F0000E800710C800F0000FC000200800F0000FC000000C01F0000FC010000
      E03F0000FC030000FFFF0000FC070000FFFFFFFFFFFFFE07FF03FF07FF03FC03
      E001E003E001E003800FC007801FC00300008003000180030000800300018003
      8000800300018003800F8007000F8007800F800F000F800F800F800F000F800F
      800F800F000F800F800F800F000F800F800F800F801F800F801F800F801FC01F
      C03FC01FC03FE03FF0FFF8FFF9FFFFFFFFFFF7FFFF0FE00FFE01C3CFFC078003
      FC01825BE0010001FC0183BFC0030000F40183EFC0070000C0F983F3C0070001
      C0F983F1C0078003C0F981F180078003C00180F180078003C3BF801180878003
      C0BFA01182078003C03F801190078003C43FF811C0078003E07FFE41C10FC007
      C4FFFE03C20FE00781FFFF8FE38FF01F}
  end
  object ActListContacts: TActionList
    Images = ImageList1
    OnExecute = ActionList1Execute
    Left = 56
    Top = 384
    object actCntEdit: TAction
      Category = 'Browse'
      Caption = 'actCntEdit'
      Hint = #924#949#964#945#946#959#955#942
      ImageIndex = 7
      OnExecute = actCntEditExecute
    end
    object actCntDelete: TAction
      Category = 'Browse'
      Caption = 'actCntDelete'
      Hint = #916#953#945#947#961#945#966#942
      ImageIndex = 9
      OnExecute = actCntDeleteExecute
    end
    object actCntInsert: TAction
      Category = 'Browse'
      Caption = 'actCntInsert'
      Hint = #917#953#963#945#947#969#947#942
      ImageIndex = 8
      OnExecute = actCntInsertExecute
    end
    object actCntPost: TAction
      Category = 'UPD'
      Caption = 'actCntPost'
      Hint = #917#957#951#956#941#961#969#963#951
      ImageIndex = 22
      OnExecute = actCntPostExecute
    end
    object actCntCancel: TAction
      Category = 'UPD'
      Caption = 'actCntCancel'
      Hint = #913#954#973#961#969#963#951
      ImageIndex = 12
      OnExecute = actCntCancelExecute
    end
    object Action1: TAction
      Category = 'Browse'
      Caption = 'Action1'
      Hint = #913#961#967#949#943#959
      ImageIndex = 2
      OnExecute = Action1Execute
    end
  end
  object memWS: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F240000000400000009000700467244617465000400
      000009000700546F44617465001000000001000C0046724143617264436F6465
      001000000001000C00546F4143617264436F6465000400000003000C00467253
      746174696F6E4964000400000003000C00546F53746174696F6E496400040000
      0003000D0046724D65726368616E744964000400000003000D00546F4D657263
      68616E744964000A00000001000E0046724D65726368616E74536170000A0000
      0001000E00546F4D65726368616E74536170000A00000001000E004672437573
      746F6D6572536170001400000001000E00546F437573746F6D65725361700032
      00000001000B004672437573746F6D6572003200000001000B00546F43757374
      6F6D6572000400000003000D0046725465726D696E616C496400040000000300
      0D00546F5465726D696E616C496400080000000B000A00467244617465496E73
      00080000000B000A00546F44617465496E73000400000003000F004672437573
      746F6D6572436F6465000400000003000F00546F437573746F6D6572436F6465
      0004000000090009004672446174655374000400000009000900546F44617465
      5374000400000003000400446566000400000003000400446574000400000003
      000900456E686D50656C46000400000003000900456E686D50656C5400040000
      0003000900456E686D436F6D46000400000003000900456E686D436F6D540004
      00000003000A00456E686D4469736346000400000003000A00456E686D446973
      6354000400000003000A00456E686D5374617446000400000003000A00456E68
      6D53746174540004000000030007004261746368460004000000030007004261
      74636854000200000005000B00456E686D4461696C7947000200000005000A00
      456E686D50656C614700}
    SortOptions = []
    Left = 648
    Top = 136
    object memWSComponentName: TStringField
      FieldName = 'ComponentName'
    end
    object memWSComponentValueInt: TIntegerField
      FieldName = 'ComponentValueInt'
    end
    object memWSComponentValueDT: TDateTimeField
      FieldName = 'ComponentValueDT'
    end
  end
end
