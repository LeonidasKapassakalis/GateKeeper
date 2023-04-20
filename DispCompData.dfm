inherited frmDispCompData: TfrmDispCompData
  Left = 301
  Top = 136
  Caption = #928#961#959#946#959#955#942' '#917#964#945#953#961#949#943#945#962
  ClientHeight = 705
  ClientWidth = 960
  OldCreateOrder = True
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 968
  ExplicitHeight = 732
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 96
    Width = 960
    Height = 10
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 99
  end
  object PageControl1: TPageControl [1]
    Left = 0
    Top = 106
    Width = 960
    Height = 599
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    object TabSheet4: TTabSheet
      Caption = #915#949#957#953#954#940' '#931#964#959#953#967#949#943#945
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label11: TLabel
        Left = 8
        Top = 8
        Width = 25
        Height = 13
        Caption = #913#934#924
      end
      object Label1: TLabel
        Left = 8
        Top = 32
        Width = 21
        Height = 13
        Caption = 'SAP'
      end
      object DBEdit6: TDBText
        Left = 96
        Top = 8
        Width = 121
        Height = 18
        Color = clWindow
        DataField = 'AFM'
        DataSource = DMDispCompData.dsCustomer
        ParentColor = False
      end
      object DBEdit2: TDBText
        Left = 96
        Top = 32
        Width = 65
        Height = 18
        Color = clWindow
        DataField = 'SAPCODE'
        DataSource = DMDispCompData.dsCustomer
        ParentColor = False
      end
      object Label2: TLabel
        Left = 3
        Top = 56
        Width = 53
        Height = 13
        Caption = #916#953#949#973#952#965#957#963#951
      end
      object Label6: TLabel
        Left = 3
        Top = 134
        Width = 79
        Height = 13
        Caption = #928#959#963#972' '#928#943#963#964#969#963#951#962
      end
      object Label7: TLabel
        Left = 3
        Top = 164
        Width = 43
        Height = 13
        Caption = #917#947#947#973#951#963#951
      end
      object Label8: TLabel
        Left = 3
        Top = 191
        Width = 49
        Height = 13
        Caption = 'Comments'
        FocusControl = cxDBMemo1
      end
      object cxDBCurrencyEdit1: TDBText
        Left = 96
        Top = 152
        Width = 71
        Height = 18
        Color = clWindow
        DataField = 'GarantieAmount'
        DataSource = DMDispCompData.dsCustomer
        ParentColor = False
      end
      object cxDBTextEdit1: TDBText
        Left = 96
        Top = 56
        Width = 71
        Height = 13
        AutoSize = True
        Color = clWindow
        DataField = 'STREET'
        DataSource = DMDispCompData.dsCustomer
        ParentColor = False
      end
      object cxDBTextEdit2: TDBText
        Left = 96
        Top = 80
        Width = 71
        Height = 13
        AutoSize = True
        Color = clWindow
        DataField = 'ZIP'
        DataSource = DMDispCompData.dsCustomer
        ParentColor = False
      end
      object cxDBTextEdit3: TDBText
        Left = 96
        Top = 104
        Width = 71
        Height = 13
        AutoSize = True
        Color = clWindow
        DataField = 'CITY'
        DataSource = DMDispCompData.dsCustomer
        ParentColor = False
      end
      object cxDBCalcEdit1: TDBText
        Left = 96
        Top = 128
        Width = 71
        Height = 18
        Color = clWindow
        DataField = 'CREDITAMOUNT'
        DataSource = DMDispCompData.dsCustomer
        ParentColor = False
      end
      object cxDBMemo1: TcxDBMemo
        Left = 96
        Top = 176
        DataBinding.DataField = 'Comments'
        DataBinding.DataSource = DMDispCompData.dsCustomer
        Properties.ReadOnly = True
        Properties.WordWrap = False
        TabOrder = 0
        Height = 185
        Width = 681
      end
    end
    object TabSheet7: TTabSheet
      Caption = #922#940#961#964#949#962
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 952
        Height = 571
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
          DataController.DataSource = DMDispCompData.dsACard
          DataController.DetailKeyFieldNames = 'ACARDID'
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
          object cxGrid1DBTableView1AcardCodeFull: TcxGridDBColumn
            DataBinding.FieldName = 'AcardCodeFull'
          end
          object cxGrid1DBTableView1ACARDID: TcxGridDBColumn
            DataBinding.FieldName = 'ACARDID'
            Visible = False
          end
          object cxGrid1DBTableView1ACARDCODE: TcxGridDBColumn
            DataBinding.FieldName = 'ACARDCODE'
            Visible = False
          end
          object cxGrid1DBTableView1CUSTOMERID: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMERID'
            Visible = False
          end
          object cxGrid1DBTableView1REGNO: TcxGridDBColumn
            DataBinding.FieldName = 'REGNO'
            Width = 110
          end
          object cxGrid1DBTableView1ISSUEDATE: TcxGridDBColumn
            DataBinding.FieldName = 'ISSUEDATE'
          end
          object cxGrid1DBTableView1EXPIREDATE: TcxGridDBColumn
            DataBinding.FieldName = 'EXPIREDATE'
          end
          object cxGrid1DBTableView1ISACTIVE: TcxGridDBColumn
            DataBinding.FieldName = 'ISACTIVE'
          end
          object cxGrid1DBTableView1METERBOOLEAN: TcxGridDBColumn
            DataBinding.FieldName = 'METERBOOLEAN'
          end
          object cxGrid1DBTableView1PINBOOLEAN: TcxGridDBColumn
            DataBinding.FieldName = 'PINBOOLEAN'
          end
          object cxGrid1DBTableView1INSDT: TcxGridDBColumn
            DataBinding.FieldName = 'INSDT'
            Visible = False
          end
          object cxGrid1DBTableView1UPDDT: TcxGridDBColumn
            DataBinding.FieldName = 'UPDDT'
            Visible = False
          end
          object cxGrid1DBTableView1INSUSR: TcxGridDBColumn
            DataBinding.FieldName = 'INSUSR'
            Visible = False
          end
          object cxGrid1DBTableView1UPDUSR: TcxGridDBColumn
            DataBinding.FieldName = 'UPDUSR'
            Visible = False
          end
          object cxGrid1DBTableView1STARTDATE: TcxGridDBColumn
            DataBinding.FieldName = 'STARTDATE'
          end
          object cxGrid1DBTableView1VTYPEID: TcxGridDBColumn
            DataBinding.FieldName = 'VTYPEID'
          end
          object cxGrid1DBTableView1CREATEBOOLEAN: TcxGridDBColumn
            DataBinding.FieldName = 'CREATEBOOLEAN'
          end
          object cxGrid1DBTableView1BLACKLISTBOOLEAN: TcxGridDBColumn
            DataBinding.FieldName = 'BLACKLISTBOOLEAN'
          end
          object cxGrid1DBTableView1BLACKLISTDATE: TcxGridDBColumn
            DataBinding.FieldName = 'BLACKLISTDATE'
          end
          object cxGrid1DBTableView1BLACKLISTUSR: TcxGridDBColumn
            DataBinding.FieldName = 'BLACKLISTUSR'
          end
          object cxGrid1DBTableView1BLACKLISTNOTES: TcxGridDBColumn
            DataBinding.FieldName = 'BLACKLISTNOTES'
          end
          object cxGrid1DBTableView1IGROUPID1: TcxGridDBColumn
            DataBinding.FieldName = 'IGROUPID1'
          end
          object cxGrid1DBTableView1IGROUPID2: TcxGridDBColumn
            DataBinding.FieldName = 'IGROUPID2'
          end
          object cxGrid1DBTableView1IGROUPID3: TcxGridDBColumn
            DataBinding.FieldName = 'IGROUPID3'
          end
          object cxGrid1DBTableView1IGROUPID4: TcxGridDBColumn
            DataBinding.FieldName = 'IGROUPID4'
          end
          object cxGrid1DBTableView1DAYAMOUNT: TcxGridDBColumn
            DataBinding.FieldName = 'DAYAMOUNT'
          end
          object cxGrid1DBTableView1MONTHAMOUNT: TcxGridDBColumn
            DataBinding.FieldName = 'MONTHAMOUNT'
          end
          object cxGrid1DBTableView1ACARDHOLDER: TcxGridDBColumn
            DataBinding.FieldName = 'ACARDHOLDER'
          end
          object cxGrid1DBTableView1EXPIREPHDATE: TcxGridDBColumn
            DataBinding.FieldName = 'EXPIREPHDATE'
          end
          object cxGrid1DBTableView1EXPIRELODATE: TcxGridDBColumn
            DataBinding.FieldName = 'EXPIRELODATE'
          end
          object cxGrid1DBTableView1IGROUPID5: TcxGridDBColumn
            DataBinding.FieldName = 'IGROUPID5'
          end
          object cxGrid1DBTableView1EMPLOYEESID: TcxGridDBColumn
            DataBinding.FieldName = 'EMPLOYEESID'
          end
          object cxGrid1DBTableView1NEWCARDBOOLEAN: TcxGridDBColumn
            DataBinding.FieldName = 'NEWCARDBOOLEAN'
          end
          object cxGrid1DBTableView1NEWCARDID: TcxGridDBColumn
            DataBinding.FieldName = 'NEWCARDID'
          end
          object cxGrid1DBTableView1CARDHASEMPNAME: TcxGridDBColumn
            DataBinding.FieldName = 'CARDHASEMPNAME'
          end
          object cxGrid1DBTableView1ACARDCODENUM: TcxGridDBColumn
            DataBinding.FieldName = 'ACARDCODENUM'
          end
          object cxGrid1DBTableView1INACTIVEDATE: TcxGridDBColumn
            DataBinding.FieldName = 'INACTIVEDATE'
          end
          object cxGrid1DBTableView1INACTIVEUSR: TcxGridDBColumn
            DataBinding.FieldName = 'INACTIVEUSR'
          end
          object cxGrid1DBTableView1INACTIVENOTES: TcxGridDBColumn
            DataBinding.FieldName = 'INACTIVENOTES'
          end
          object cxGrid1DBTableView1IGROUPID6: TcxGridDBColumn
            DataBinding.FieldName = 'IGROUPID6'
          end
          object cxGrid1DBTableView1IGROUPID7: TcxGridDBColumn
            DataBinding.FieldName = 'IGROUPID7'
          end
          object cxGrid1DBTableView1IGROUPID8: TcxGridDBColumn
            DataBinding.FieldName = 'IGROUPID8'
          end
          object cxGrid1DBTableView1IGROUPID9: TcxGridDBColumn
            DataBinding.FieldName = 'IGROUPID9'
          end
          object cxGrid1DBTableView1IGROUPID10: TcxGridDBColumn
            DataBinding.FieldName = 'IGROUPID10'
          end
          object cxGrid1DBTableView1COSTCENTERID: TcxGridDBColumn
            DataBinding.FieldName = 'COSTCENTERID'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #927#953#954#959#957#959#956#953#954#940' '#931#964#959#953#967#949#943#945
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 952
        Height = 571
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
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
          DataController.DataSource = DMDispCompData.dsTran
          DataController.DetailKeyFieldNames = 'TRANCID'
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
          object cxGridDBTableView1TRANCID: TcxGridDBColumn
            DataBinding.FieldName = 'TRANCID'
          end
          object cxGridDBTableView1CUSTOMERID: TcxGridDBColumn
            DataBinding.FieldName = 'CUSTOMERID'
          end
          object cxGridDBTableView1DEBIT: TcxGridDBColumn
            DataBinding.FieldName = 'DEBIT'
          end
          object cxGridDBTableView1CREDIT: TcxGridDBColumn
            DataBinding.FieldName = 'CREDIT'
          end
          object cxGridDBTableView1TTEXT: TcxGridDBColumn
            DataBinding.FieldName = 'TTEXT'
          end
          object cxGridDBTableView1TRANCDATE: TcxGridDBColumn
            DataBinding.FieldName = 'TRANCDATE'
          end
          object cxGridDBTableView1TRANBCID: TcxGridDBColumn
            DataBinding.FieldName = 'TRANBCID'
          end
          object cxGridDBTableView1INSDT: TcxGridDBColumn
            DataBinding.FieldName = 'INSDT'
          end
          object cxGridDBTableView1UPDDT: TcxGridDBColumn
            DataBinding.FieldName = 'UPDDT'
          end
          object cxGridDBTableView1INSUSR: TcxGridDBColumn
            DataBinding.FieldName = 'INSUSR'
          end
          object cxGridDBTableView1UPDUSR: TcxGridDBColumn
            DataBinding.FieldName = 'UPDUSR'
          end
          object cxGridDBTableView1CYpol: TcxGridDBColumn
            DataBinding.FieldName = 'CYpol'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #917#960#953#954'.SAP'
      ImageIndex = 5
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 952
        Height = 571
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 0
      end
    end
    object TabSheet6: TTabSheet
      Caption = #913#957#945#955'.'#922#953#957#942#963#949#969#957
      ImageIndex = 6
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 952
        Height = 571
        Align = alClient
        DataSource = DMDispCompData.DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'SumofAmount'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CountAmount'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMP_CODE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUSTOMER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SP_GL_IND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLEAR_DATE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLR_DOC_NO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALLOC_NUMR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FISC_YEAR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOC_NO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM_NUM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PSTNG_DATE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOC_DATE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENTRY_DATE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CURRENCY'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOC_CURR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REF_DOC_NUM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOC_TYPE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FIS_PERIOD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'POST_KEY'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DB_CR_IND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BUS_AREA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TAX_CODE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC_AMOUNT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AMT_DOCCUR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LC_TAX'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TX_DOC_CUR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM_TEXT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BRANCH'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BLINE_DATE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PMNTTRMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DSCT_DAYS1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DSCT_DAYS2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'T_CURRENCY'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AMOUNT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NET_AMOUNT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INV_REF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INV_YEAR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INV_ITEM'
            Visible = True
          end>
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'TabSheet8'
      ImageIndex = 7
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object QuickRep1: TQuickRep
        Left = 0
        Top = 0
        Width = 1123
        Height = 794
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poLandscape
        Page.PaperSize = A4
        Page.Continuous = False
        Page.Values = (
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.OutputBin = Auto
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.UseStandardprinter = False
        PrinterSettings.UseCustomBinCode = False
        PrinterSettings.CustomBinCode = 0
        PrinterSettings.ExtendedDuplex = 0
        PrinterSettings.UseCustomPaperCode = False
        PrinterSettings.CustomPaperCode = 0
        PrinterSettings.PrintMetaFile = False
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PreviewWidth = 500
        PreviewHeight = 500
        PrevInitialZoom = qrZoomToFit
        PreviewDefaultSaveType = stQRP
        PreviewLeft = 0
        PreviewTop = 0
        object QRBand1: TQRBand
          Left = 38
          Top = 89
          Width = 1047
          Height = 19
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            50.270833333333330000
            2770.187500000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText1: TQRDBText
            Left = 8
            Top = 0
            Width = 55
            Height = 17
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              0.000000000000000000
              145.520833333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataField = 'DOC_NO'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText2: TQRDBText
            Left = 112
            Top = 0
            Width = 70
            Height = 17
            Size.Values = (
              44.979166666666670000
              296.333333333333300000
              0.000000000000000000
              185.208333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataField = 'DOC_DATE'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText3: TQRDBText
            Left = 729
            Top = 0
            Width = 31
            Height = 17
            Size.Values = (
              44.979166666666670000
              1928.812500000000000000
              0.000000000000000000
              82.020833333333340000)
            XLColumn = 0
            Alignment = taRightJustify
            AlignToBand = False
            Color = clWhite
            DataField = 'Debit'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText4: TQRDBText
            Left = 208
            Top = 0
            Width = 86
            Height = 17
            Size.Values = (
              44.979166666666670000
              550.333333333333300000
              0.000000000000000000
              227.541666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataField = 'PSTNG_DATE'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText5: TQRDBText
            Left = 424
            Top = 0
            Width = 273
            Height = 17
            Size.Values = (
              44.979166666666670000
              1121.833333333333000000
              0.000000000000000000
              722.312500000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataField = 'ITEM_TEXT'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText6: TQRDBText
            Left = 781
            Top = 0
            Width = 35
            Height = 17
            Size.Values = (
              44.979166666666670000
              2066.395833333333000000
              0.000000000000000000
              92.604166666666680000)
            XLColumn = 0
            Alignment = taRightJustify
            AlignToBand = False
            Color = clWhite
            DataField = 'Credit'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText7: TQRDBText
            Left = 320
            Top = 0
            Width = 41
            Height = 17
            Size.Values = (
              44.979166666666670000
              846.666666666666600000
              0.000000000000000000
              108.479166666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataField = 'DOC_TYPE'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText8: TQRDBText
            Left = 376
            Top = 0
            Width = 33
            Height = 17
            Size.Values = (
              44.979166666666670000
              994.833333333333400000
              0.000000000000000000
              87.312500000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataField = 'POST_KEY'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
        end
        object QRBand2: TQRBand
          Left = 38
          Top = 38
          Width = 1047
          Height = 51
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            134.937500000000000000
            2770.187500000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel1: TQRLabel
            Left = 16
            Top = 8
            Width = 58
            Height = 17
            Size.Values = (
              44.979166666666670000
              42.333333333333340000
              21.166666666666670000
              153.458333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'QRLabel1'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel10: TQRLabel
            Left = 8
            Top = 32
            Width = 61
            Height = 17
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              84.666666666666680000
              161.395833333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = #928#945#961'.SAP.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel11: TQRLabel
            Left = 112
            Top = 32
            Width = 74
            Height = 17
            Size.Values = (
              44.979166666666670000
              296.333333333333400000
              84.666666666666680000
              195.791666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = #919#956'/'#957#943#945' '#928#945#961'.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel12: TQRLabel
            Left = 208
            Top = 32
            Width = 88
            Height = 17
            Size.Values = (
              44.979166666666670000
              550.333333333333400000
              84.666666666666680000
              232.833333333333400000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = #919#956'/'#957#943#945' '#922#945#964#945#967'.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel13: TQRLabel
            Left = 320
            Top = 32
            Width = 29
            Height = 17
            Size.Values = (
              44.979166666666670000
              846.666666666666600000
              84.666666666666680000
              76.729166666666680000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Doc.'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel14: TQRLabel
            Left = 376
            Top = 32
            Width = 52
            Height = 17
            Size.Values = (
              44.979166666666670000
              994.833333333333400000
              84.666666666666680000
              137.583333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Pos.Key'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel15: TQRLabel
            Left = 480
            Top = 32
            Width = 49
            Height = 17
            Size.Values = (
              44.979166666666670000
              1270.000000000000000000
              84.666666666666680000
              129.645833333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = #922#949#943#956#949#957#959
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel16: TQRLabel
            Left = 712
            Top = 32
            Width = 53
            Height = 17
            Size.Values = (
              44.979166666666670000
              1883.833333333333000000
              84.666666666666680000
              140.229166666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = #935#961#941#969#963#951
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel17: TQRLabel
            Left = 768
            Top = 32
            Width = 58
            Height = 17
            Size.Values = (
              44.979166666666670000
              2032.000000000000000000
              84.666666666666680000
              153.458333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = #928#943#963#964#969#963#951
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRShape2: TQRShape
            Left = 8
            Top = 48
            Width = 1009
            Height = 1
            Size.Values = (
              2.645833333333333000
              21.166666666666670000
              127.000000000000000000
              2669.645833333333000000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRSysData1: TQRSysData
            Left = 656
            Top = 8
            Width = 68
            Height = 17
            Size.Values = (
              44.979166666666670000
              1735.666666666667000000
              21.166666666666670000
              179.916666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsDateTime
            Transparent = False
            ExportAs = exptText
            FontSize = 10
          end
        end
      end
    end
    object TabSheet9: TTabSheet
      Caption = #931#973#957#959#955#945
      ImageIndex = 8
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 952
        Height = 571
        Align = alClient
        DataSource = DMDispCompData.DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = popFilter
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'TabSheet10'
      ImageIndex = 9
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object QuickRep2: TQuickRep
        Left = 0
        Top = 0
        Width = 794
        Height = 1123
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Continuous = False
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.OutputBin = Auto
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.UseStandardprinter = False
        PrinterSettings.UseCustomBinCode = False
        PrinterSettings.CustomBinCode = 0
        PrinterSettings.ExtendedDuplex = 0
        PrinterSettings.UseCustomPaperCode = False
        PrinterSettings.CustomPaperCode = 0
        PrinterSettings.PrintMetaFile = False
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PreviewWidth = 500
        PreviewHeight = 500
        PrevInitialZoom = qrZoomToFit
        PreviewDefaultSaveType = stQRP
        PreviewLeft = 0
        PreviewTop = 0
        object QRBand3: TQRBand
          Left = 38
          Top = 38
          Width = 718
          Height = 67
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            177.270833333333300000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel3: TQRLabel
            Left = 16
            Top = 8
            Width = 58
            Height = 17
            Size.Values = (
              44.979166666666670000
              42.333333333333340000
              21.166666666666670000
              153.458333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'QRLabel1'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel2: TQRLabel
            Left = 8
            Top = 40
            Width = 60
            Height = 17
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              105.833333333333300000
              158.750000000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = #919#956'.'#913#958#953#974#957
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel4: TQRLabel
            Left = 96
            Top = 40
            Width = 74
            Height = 17
            Size.Values = (
              44.979166666666670000
              254.000000000000000000
              105.833333333333300000
              195.791666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Paym.Term'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel5: TQRLabel
            Left = 176
            Top = 40
            Width = 113
            Height = 17
            Size.Values = (
              44.979166666666670000
              465.666666666666800000
              105.833333333333300000
              298.979166666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = #919#956'/'#957#943#945' '#928#955#951#961#969#956#942#962
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel6: TQRLabel
            Left = 304
            Top = 40
            Width = 53
            Height = 17
            Size.Values = (
              44.979166666666670000
              804.333333333333200000
              105.833333333333300000
              140.229166666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = #935#961#941#969#963#951
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel7: TQRLabel
            Left = 400
            Top = 40
            Width = 58
            Height = 17
            Size.Values = (
              44.979166666666670000
              1058.333333333333000000
              105.833333333333300000
              153.458333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = #928#943#963#964#969#963#951
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel88: TQRLabel
            Left = 496
            Top = 40
            Width = 48
            Height = 17
            Size.Values = (
              44.979166666666670000
              1312.333333333333000000
              105.833333333333300000
              127.000000000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = #931#973#957#959#955#959
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel9: TQRLabel
            Left = 608
            Top = 40
            Width = 75
            Height = 17
            Size.Values = (
              44.979166666666670000
              1608.666666666667000000
              105.833333333333300000
              198.437500000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = #933#960#949#961#951#956#941#961#953#945
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRShape1: TQRShape
            Left = 8
            Top = 56
            Width = 705
            Height = 9
            Frame.DrawTop = True
            Frame.Width = 2
            Size.Values = (
              23.812500000000000000
              21.166666666666670000
              148.166666666666700000
              1865.312500000000000000)
            XLColumn = 0
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRSysData2: TQRSysData
            Left = 616
            Top = 8
            Width = 68
            Height = 17
            Size.Values = (
              44.979166666666670000
              1629.833333333333000000
              21.166666666666670000
              179.916666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsDateTime
            Transparent = False
            ExportAs = exptText
            FontSize = 10
          end
        end
        object QRBand4: TQRBand
          Left = 38
          Top = 105
          Width = 718
          Height = 19
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            50.270833333333330000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText9: TQRDBText
            Left = 8
            Top = 0
            Width = 55
            Height = 17
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              0.000000000000000000
              145.520833333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataField = 'BlartDate'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText10: TQRDBText
            Left = 112
            Top = 0
            Width = 53
            Height = 17
            Size.Values = (
              44.979166666666670000
              296.333333333333300000
              0.000000000000000000
              140.229166666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataField = 'Payment'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText12: TQRDBText
            Left = 192
            Top = 0
            Width = 51
            Height = 17
            Size.Values = (
              44.979166666666670000
              508.000000000000000000
              0.000000000000000000
              134.937500000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataField = 'DueDate'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText13: TQRDBText
            Left = 320
            Top = 0
            Width = 31
            Height = 17
            Size.Values = (
              44.979166666666670000
              846.666666666666600000
              0.000000000000000000
              82.020833333333340000)
            XLColumn = 0
            Alignment = taRightJustify
            AlignToBand = False
            Color = clWhite
            DataField = 'Debit'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText15: TQRDBText
            Left = 416
            Top = 0
            Width = 35
            Height = 17
            Size.Values = (
              44.979166666666670000
              1100.666666666667000000
              0.000000000000000000
              92.604166666666660000)
            XLColumn = 0
            Alignment = taRightJustify
            AlignToBand = False
            Color = clWhite
            DataField = 'Credit'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText16: TQRDBText
            Left = 632
            Top = 0
            Width = 50
            Height = 17
            Size.Values = (
              44.979166666666670000
              1672.166666666667000000
              0.000000000000000000
              132.291666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataField = 'OverDue'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText17: TQRDBText
            Left = 491
            Top = 0
            Width = 64
            Height = 17
            Size.Values = (
              44.979166666666670000
              1299.104166666667000000
              0.000000000000000000
              169.333333333333300000)
            XLColumn = 0
            Alignment = taRightJustify
            AlignToBand = False
            Color = clWhite
            DataField = 'TotAmount'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
        end
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'TabSheet11'
      ImageIndex = 10
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object QuickRep3: TQuickRep
        Left = 0
        Top = 0
        Width = 794
        Height = 1123
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Continuous = False
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.OutputBin = Auto
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.UseStandardprinter = False
        PrinterSettings.UseCustomBinCode = False
        PrinterSettings.CustomBinCode = 0
        PrinterSettings.ExtendedDuplex = 0
        PrinterSettings.UseCustomPaperCode = False
        PrinterSettings.CustomPaperCode = 0
        PrinterSettings.PrintMetaFile = False
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PreviewWidth = 500
        PreviewHeight = 500
        PrevInitialZoom = qrZoomToFit
        PreviewDefaultSaveType = stQRP
        PreviewLeft = 0
        PreviewTop = 0
        object QRBand5: TQRBand
          Left = 38
          Top = 38
          Width = 718
          Height = 83
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            219.604166666666700000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel18: TQRLabel
            Left = 16
            Top = 8
            Width = 58
            Height = 17
            Size.Values = (
              44.979166666666670000
              42.333333333333340000
              21.166666666666670000
              153.458333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'QRLabel1'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRSysData3: TQRSysData
            Left = 624
            Top = 8
            Width = 116
            Height = 17
            Size.Values = (
              44.979166666666670000
              1651.000000000000000000
              21.166666666666670000
              306.916666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsDateTime
            Transparent = False
            ExportAs = exptText
            FontSize = 10
          end
          object QRLabel19: TQRLabel
            Left = 24
            Top = 64
            Width = 41
            Height = 17
            Size.Values = (
              44.979166666666670000
              63.500000000000000000
              169.333333333333300000
              108.479166666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = #919#956'/'#957#943#945
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel20: TQRLabel
            Left = 104
            Top = 64
            Width = 49
            Height = 17
            Size.Values = (
              44.979166666666670000
              275.166666666666700000
              169.333333333333300000
              129.645833333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = #922#949#943#956#949#957#959
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel21: TQRLabel
            Left = 456
            Top = 64
            Width = 53
            Height = 17
            Size.Values = (
              44.979166666666670000
              1206.500000000000000000
              169.333333333333300000
              140.229166666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = #935#961#941#969#963#951
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel22: TQRLabel
            Left = 552
            Top = 64
            Width = 58
            Height = 17
            Size.Values = (
              44.979166666666670000
              1460.500000000000000000
              169.333333333333300000
              153.458333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = #928#943#963#964#969#963#951
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel23: TQRLabel
            Left = 632
            Top = 64
            Width = 65
            Height = 17
            Size.Values = (
              44.979166666666670000
              1672.166666666667000000
              169.333333333333300000
              171.979166666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = #933#960#972#955#959#953#960#959
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
        end
        object QRBand6: TQRBand
          Left = 38
          Top = 121
          Width = 718
          Height = 27
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            71.437500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText11: TQRDBText
            Left = 104
            Top = 8
            Width = 273
            Height = 17
            Size.Values = (
              44.979166666666670000
              275.166666666666700000
              21.166666666666670000
              722.312500000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataField = 'TTEXT'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText14: TQRDBText
            Left = 475
            Top = 8
            Width = 38
            Height = 17
            Size.Values = (
              44.979166666666670000
              1256.770833333333000000
              21.166666666666670000
              100.541666666666700000)
            XLColumn = 0
            Alignment = taRightJustify
            AlignToBand = False
            Color = clWhite
            DataField = 'DEBIT'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText18: TQRDBText
            Left = 562
            Top = 8
            Width = 47
            Height = 17
            Size.Values = (
              44.979166666666670000
              1486.958333333333000000
              21.166666666666670000
              124.354166666666700000)
            XLColumn = 0
            Alignment = taRightJustify
            AlignToBand = False
            Color = clWhite
            DataField = 'CREDIT'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText19: TQRDBText
            Left = 661
            Top = 8
            Width = 36
            Height = 17
            Size.Values = (
              44.979166666666670000
              1748.895833333333000000
              21.166666666666670000
              95.250000000000000000)
            XLColumn = 0
            Alignment = taRightJustify
            AlignToBand = False
            Color = clWhite
            DataField = 'CYpol'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText20: TQRDBText
            Left = 11
            Top = 8
            Width = 78
            Height = 17
            Size.Values = (
              44.979166666666670000
              29.104166666666670000
              21.166666666666670000
              206.375000000000000000)
            XLColumn = 0
            Alignment = taRightJustify
            AlignToBand = False
            Color = clWhite
            DataField = 'TRANCDATE'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Contacts'
      ImageIndex = 9
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 952
        Height = 571
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView2: TcxGridDBTableView
          PopupMenu = popFilter
          OnDblClick = cxGridDBTableView2DblClick
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
          DataController.DataSource = DMDispCompData.dtsContacts
          DataController.DetailKeyFieldNames = 'CUSTOMERID'
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
          object cxGridDBTableView2ContactType_Procedure: TcxGridDBColumn
            DataBinding.FieldName = 'ContactType_Procedure'
            Visible = False
          end
          object cxGridDBTableView2ContactsName: TcxGridDBColumn
            DataBinding.FieldName = 'Contacts.Name'
          end
          object cxGridDBTableView2ContactsSurname: TcxGridDBColumn
            DataBinding.FieldName = 'Contacts.Surname'
          end
          object cxGridDBTableView2email: TcxGridDBColumn
            DataBinding.FieldName = 'email'
          end
          object cxGridDBTableView2Phone: TcxGridDBColumn
            DataBinding.FieldName = 'Phone'
          end
          object cxGridDBTableView2Fax: TcxGridDBColumn
            DataBinding.FieldName = 'Fax'
          end
          object cxGridDBTableView2Mobile: TcxGridDBColumn
            DataBinding.FieldName = 'Mobile'
          end
          object cxGridDBTableView2SendMail: TcxGridDBColumn
            DataBinding.FieldName = 'SendMail'
            Visible = False
          end
          object cxGridDBTableView2SendFax: TcxGridDBColumn
            DataBinding.FieldName = 'SendFax'
            Visible = False
          end
          object cxGridDBTableView2SendPrint: TcxGridDBColumn
            DataBinding.FieldName = 'SendPrint'
            Visible = False
          end
          object cxGridDBTableView2Main: TcxGridDBColumn
            DataBinding.FieldName = 'Main'
            Visible = False
          end
          object cxGridDBTableView2AA: TcxGridDBColumn
            DataBinding.FieldName = 'AA'
            Visible = False
          end
          object cxGridDBTableView2Stationid: TcxGridDBColumn
            DataBinding.FieldName = 'Stationid'
            Visible = False
          end
          object cxGridDBTableView2StationName: TcxGridDBColumn
            DataBinding.FieldName = 'Station.Name'
            Visible = False
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 23
    Width = 960
    Height = 73
    Align = alTop
    TabOrder = 1
    object Label5: TLabel
      Left = 16
      Top = 8
      Width = 44
      Height = 13
      Caption = #917#964#945#953#961#949#943#945
    end
    object BlLab: TLabel
      Left = 12
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
    object cblc20: TcxDBLookupComboBox
      Left = 92
      Top = 6
      DataBinding.DataField = 'CustomerId'
      DataBinding.DataSource = DMDispCompData.dtsmemCustomer
      Properties.Alignment.Horz = taLeftJustify
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CUSTOMERID'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'NAME'
        end>
      Properties.ListSource = DMDispCompData.dsStation
      TabOrder = 0
      OnExit = cblc20Exit
      Width = 250
    end
    object cblc24: TcxDBLookupComboBox
      Left = 92
      Top = 33
      DataBinding.DataField = 'LSAPCode'
      DataBinding.DataSource = DMDispCompData.dtsmemCustomer
      Properties.Alignment.Horz = taLeftJustify
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'CUSTOMERID'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'SAPCODE'
        end>
      Properties.ListSource = DMDispCompData.dsStation
      TabOrder = 1
      OnExit = cblc24Exit
      Width = 145
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 672
      Top = 6
      DataBinding.DataField = 'DateFrom'
      DataBinding.DataSource = DMDispCompData.dtsmemCustomer
      TabOrder = 2
      Visible = False
      Width = 121
    end
  end
  object ActionToolBar1: TActionToolBar [3]
    Left = 0
    Top = 0
    Width = 960
    Height = 23
    ActionManager = ActionManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  inherited popFilter: TPopupMenu
    Left = 428
    Top = 35
  end
  inherited ActionMainList: TActionList
    Left = 504
    Top = 32
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 728
    Top = 152
    object actMailComp: TAction
      Tag = 1
      Caption = #913#955#955#951#955#959#947#961#945#966#943#945' '#917#964#945#953#961#949#943#945#962
      OnExecute = actMailCompExecute
    end
    object actRefresh: TAction
      Caption = 'Refresh'
      OnExecute = actRefreshExecute
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
    object actDispAnej: TAction
      Tag = 1
      Caption = 'Call SAP'
      OnExecute = actDispAnejExecute
    end
    object actPrintAnej: TAction
      Tag = 2
      Caption = #917#954'. '#913#957#949#958#972#966#955#951#964#945
      OnExecute = actPrintAnejExecute
    end
    object actPrintSum: TAction
      Tag = 2
      Caption = #917#954'.'#928#943#957#945#954#945' '#913#957#949#958'.'
      OnExecute = actPrintSumExecute
    end
    object actPrintEcon: TAction
      Tag = 1
      Caption = #917#954#964'.'#927#953#954'.'#931#964#959#953#967#949#943#945
      OnExecute = actPrintEconExecute
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actPrintEcon
          end
          item
            Action = actDispAnej
            Caption = '&Call SAP'
          end
          item
            Action = actPrintAnej
          end
          item
            Action = actPrintSum
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
    Left = 640
    Top = 152
    StyleName = 'Platform Default'
  end
end
