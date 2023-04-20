inherited frmOurCarsDet: TfrmOurCarsDet
  Caption = #914#953#946#955#943#959' '#917#953#963#972#948#959#965' - '#917#958#972#948#959#965' '#917#964#945#953#961#953#954#972#962' '#931#964#972#955#959#962
  ClientHeight = 534
  ClientWidth = 846
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  ExplicitWidth = 854
  ExplicitHeight = 580
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter4: TSplitter [0]
    Left = 0
    Top = 225
    Width = 846
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 363
    ExplicitWidth = 21
  end
  inherited ToolBar1: TToolBar
    Width = 846
    ExplicitWidth = 846
    object ToolButton9: TToolButton
      Left = 680
      Top = 0
      Action = actlibref
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 228
    Width = 846
    Height = 183
    TabOrder = 1
    object Splitter5: TSplitter
      Left = 1
      Top = 182
      Width = 844
      Height = 0
      Cursor = crVSplit
      Align = alBottom
      ExplicitTop = 161
      ExplicitWidth = 701
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 844
      Height = 181
      ActivePage = TabSheet3
      Align = alClient
      TabOrder = 0
      object TabSheet3: TTabSheet
        Caption = '3'
        ImageIndex = 2
        TabVisible = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Splitter3: TSplitter
          Left = 833
          Top = 0
          Height = 171
          Align = alRight
          ExplicitLeft = 376
          ExplicitTop = 32
          ExplicitHeight = 100
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 185
          Height = 171
          Align = alLeft
          Caption = 'Panel5'
          TabOrder = 0
          object Splitter1: TSplitter
            Left = 1
            Top = 42
            Width = 183
            Height = 128
            Align = alClient
            ExplicitLeft = 376
            ExplicitTop = 32
            ExplicitWidth = 3
            ExplicitHeight = 100
          end
          object cxGrid1: TcxGrid
            Left = 1
            Top = 42
            Width = 183
            Height = 128
            Align = alClient
            TabOrder = 0
            object cxGrid1DBTableView1: TcxGridDBTableView
              Tag = 3
              PopupMenu = popFilter
              OnDblClick = cxGrid3DBTableView1DblClick
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
              DataController.DataSource = DMOurCarsDet.dtsCarsVisitOurWeight3
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
              object cxGrid1DBTableView1id: TcxGridDBColumn
                DataBinding.FieldName = 'id'
                Visible = False
              end
              object cxGrid1DBTableView1ActionLevel: TcxGridDBColumn
                DataBinding.FieldName = 'ActionLevel'
                Visible = False
              end
              object cxGrid1DBTableView1aa: TcxGridDBColumn
                DataBinding.FieldName = 'aa'
                Visible = False
              end
              object cxGrid1DBTableView1WeightAA: TcxGridDBColumn
                Caption = 'AA'
                DataBinding.FieldName = 'WeightAA'
                MinWidth = 6
              end
              object cxGrid1DBTableView1WeightDT: TcxGridDBColumn
                Caption = #919#956#949#961'/'#957#943#945
                DataBinding.FieldName = 'WeightDT'
              end
              object cxGrid1DBTableView1Weight: TcxGridDBColumn
                Caption = #914#940#961#959#962' KG'
                DataBinding.FieldName = 'Weight'
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object Panel8: TPanel
            Left = 1
            Top = 1
            Width = 183
            Height = 41
            Align = alTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object LabelP8: TLabel
              Left = 1
              Top = 1
              Width = 47
              Height = 13
              Align = alTop
              Alignment = taCenter
              Caption = 'LabelP8'
              WordWrap = True
            end
          end
        end
        object Panel6: TPanel
          Left = 185
          Top = 0
          Width = 463
          Height = 171
          Align = alClient
          Caption = 'Panel5'
          TabOrder = 1
          object cxGrid2: TcxGrid
            Left = 1
            Top = 42
            Width = 461
            Height = 128
            Align = alClient
            TabOrder = 0
            object cxGridDBTableView1: TcxGridDBTableView
              Tag = 4
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
              DataController.DataSource = DMOurCarsDet.dtsCarsVisitOurWeight4
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
              object cxGridDBTableView1id: TcxGridDBColumn
                DataBinding.FieldName = 'id'
                Visible = False
              end
              object cxGridDBTableView1ActionLevel: TcxGridDBColumn
                DataBinding.FieldName = 'ActionLevel'
                Visible = False
              end
              object cxGridDBTableView1aa: TcxGridDBColumn
                DataBinding.FieldName = 'aa'
                Visible = False
              end
              object cxGridDBTableView1WeightAA: TcxGridDBColumn
                Caption = 'AA'
                DataBinding.FieldName = 'WeightAA'
                MinWidth = 6
              end
              object cxGridDBTableView1WeightDT: TcxGridDBColumn
                Caption = #919#956#949#961'/'#957#943#945
                DataBinding.FieldName = 'WeightDT'
              end
              object cxGridDBTableView1Weight: TcxGridDBColumn
                Caption = #914#940#961#959#962' KG'
                DataBinding.FieldName = 'Weight'
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
          object Panel9: TPanel
            Left = 1
            Top = 1
            Width = 461
            Height = 41
            Align = alTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object LabelP9: TLabel
              Left = 1
              Top = 1
              Width = 39
              Height = 13
              Align = alTop
              Alignment = taCenter
              Caption = 'Label1'
              WordWrap = True
            end
          end
        end
        object Panel7: TPanel
          Left = 648
          Top = 0
          Width = 185
          Height = 171
          Align = alRight
          Caption = 'Panel5'
          TabOrder = 2
          object cxGrid3: TcxGrid
            Left = 1
            Top = 42
            Width = 183
            Height = 128
            Align = alClient
            TabOrder = 0
            object cxGridDBTableView2: TcxGridDBTableView
              Tag = 5
              PopupMenu = popFilter
              OnDblClick = cxGridDBTableView3DblClick
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
              DataController.DataSource = DMOurCarsDet.dtsCarsVisitOurWeight5
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
              object cxGridDBTableView2id: TcxGridDBColumn
                DataBinding.FieldName = 'id'
                Visible = False
              end
              object cxGridDBTableView2ActionLevel: TcxGridDBColumn
                DataBinding.FieldName = 'ActionLevel'
                Visible = False
              end
              object cxGridDBTableView2aa: TcxGridDBColumn
                DataBinding.FieldName = 'aa'
                Visible = False
              end
              object cxGridDBTableView2WeightAA: TcxGridDBColumn
                Caption = 'AA'
                DataBinding.FieldName = 'WeightAA'
                MinWidth = 6
              end
              object cxGridDBTableView2WeightDT: TcxGridDBColumn
                Caption = #919#956#949#961'/'#957#943#945
                DataBinding.FieldName = 'WeightDT'
              end
              object cxGridDBTableView2Weight: TcxGridDBColumn
                Caption = #914#940#961#959#962' KG'
                DataBinding.FieldName = 'Weight'
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBTableView2
            end
          end
          object Panel10: TPanel
            Left = 1
            Top = 1
            Width = 183
            Height = 41
            Align = alTop
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object LabelP10: TLabel
              Left = 1
              Top = 1
              Width = 39
              Height = 13
              Align = alTop
              Alignment = taCenter
              Caption = 'Label1'
              WordWrap = True
            end
          end
        end
      end
    end
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 93
    Width = 846
    Height = 132
    Align = alTop
    TabOrder = 2
    object Label8: TLabel
      Left = 427
      Top = 40
      Width = 82
      Height = 13
      Caption = #927#957#959#956#945#964#949#960#974#957#965#956#959
      FocusControl = cxdbtDrvName
    end
    object Label5: TLabel
      Left = 24
      Top = 68
      Width = 44
      Height = 13
      Caption = #917#964#945#953#961#949#943#945
    end
    object lblCarNumber: TLabel
      Left = 24
      Top = 40
      Width = 68
      Height = 13
      Caption = #913#961#953#952#956#972#962' '#922#965#954#955'.'
      FocusControl = cxdbtRegNo
    end
    object Label6: TLabel
      Left = 24
      Top = 97
      Width = 83
      Height = 13
      Caption = #917#943#948#959#962' '#928#961#959#970#972#957#964#959#962
    end
    object Label3: TLabel
      Left = 427
      Top = 68
      Width = 82
      Height = 13
      Caption = #913#961#953#952#956#972#962' '#916#949#955#964#943#959#965
    end
    object Label1: TLabel
      Left = 427
      Top = 97
      Width = 49
      Height = 13
      Caption = #916#949#958#945#956#949#957#942
    end
    object cxDBTEDA_Num: TcxDBTextEdit
      Left = 544
      Top = 63
      DataBinding.DataField = 'DA_Num'
      DataBinding.DataSource = DMOurCarsDet.dtsCarsVisitOur
      Properties.AutoSelect = False
      TabOrder = 3
      Width = 169
    end
    object cxdbtRegNo: TcxDBLookupComboBox
      Left = 138
      Top = 38
      DataBinding.DataField = 'RegNoId'
      DataBinding.DataSource = DMOurCarsDet.dtsCarsVisitOur
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'RegNo'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = DMOurCarsDet.dtsRegNo
      Properties.OnChange = cxdbtRegNoPropertiesChange
      Properties.OnCloseUp = cxdbtAllCloseUp
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clWindow
      TabOrder = 2
      OnDblClick = cxdbtRegNoDblClick
      OnExit = cxdbtRegNoExit
      OnKeyPress = cxdbtRegNoKeyPress
      Width = 186
    end
    object cxdbtCarOwner: TcxDBLookupComboBox
      Left = 138
      Top = 65
      DataBinding.DataField = 'CompanyId'
      DataBinding.DataSource = DMOurCarsDet.dtsCarsVisitOur
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'Name'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = DMOurCarsDet.dtsCompany
      Properties.OnChange = cxdbtCarOwnerPropertiesChange
      Properties.OnCloseUp = cxdbtAllCloseUp
      TabOrder = 1
      OnExit = cxdbtAllCloseUp
      Width = 186
    end
    object cxdbtDrvName: TcxDBLookupComboBox
      Left = 544
      Top = 36
      AutoSize = False
      DataBinding.DataField = 'DrvNameId'
      DataBinding.DataSource = DMOurCarsDet.dtsCarsVisitOur
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'Name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DMOurCarsDet.dtsDrivers
      Properties.OnCloseUp = cxdbtAllCloseUp
      TabOrder = 0
      OnDblClick = cxdbtDrvNameDblClick
      OnExit = cxdbtAllCloseUp
      Height = 21
      Width = 169
    end
    object cxDBLabel1: TcxDBLabel
      Left = 584
      Top = 4
      TabStop = False
      DataBinding.DataField = 'FullFilled'
      DataBinding.DataSource = DMOurCarsDet.dtsCarsVisitOur
      ParentFont = False
      Properties.LabelEffect = cxleCool
      Properties.LabelStyle = cxlsRaised
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 26
      Width = 155
    end
    object cxbtnWater: TcxButton
      Left = 472
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Water'
      TabOrder = 5
      OnClick = cxbtnWaterClick
    end
    object cxDBLabel2: TcxDBLabel
      AlignWithMargins = True
      Left = 652
      Top = 90
      TabStop = False
      DataBinding.DataField = 'id'
      DataBinding.DataSource = DMOurCarsDet.dtsCarsVisitOur
      ParentFont = False
      Properties.LabelEffect = cxleCool
      Properties.LabelStyle = cxlsRaised
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 25
      Width = 101
    end
    object cxDBLSpecialEltepe: TcxDBLookupComboBox
      Left = 544
      Top = 90
      DataBinding.DataField = 'SpecialEltepe'
      DataBinding.DataSource = DMOurCarsDet.dtsCarsVisitOur
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'SpName'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = DMOurCarsDet.dtsSpecTank
      Properties.OnChange = cxdbtRegNoPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebsUltraFlat
      Style.Color = clWindow
      TabOrder = 7
      OnDblClick = cxDBLSpecialEltepeDblClick
      OnKeyPress = cxdbtRegNoKeyPress
      Width = 85
    end
    object cxDBTProducts: TcxDBLookupComboBox
      Left = 138
      Top = 92
      DataBinding.DataField = 'ProductId'
      DataBinding.DataSource = DMOurCarsDet.dtsCarsVisitOur
      Properties.ClearKey = 27
      Properties.DropDownAutoSize = True
      Properties.HideSelection = False
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'Name'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = DMOurCarsDet.dtsProduct
      Properties.OnCloseUp = cxdbtAllCloseUp
      TabOrder = 8
      OnDblClick = cxDBTProductsDblClick
      OnExit = cxdbtAllCloseUp
      Width = 173
    end
    object cxDBRadioGroup1: TDBRadioGroup
      Left = 7
      Top = -4
      Width = 282
      Height = 39
      Columns = 3
      DataField = 'ProcedureState'
      DataSource = DMOurCarsDet.dtsCarsVisitOur
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Items.Strings = (
        #931#965#955#955#959#947#942
        #916#953#945#957#959#956#942
        #917#953#963#945#947#969#947#942)
      ParentBackground = True
      ParentFont = False
      TabOrder = 9
      Values.Strings = (
        '3'
        '4'
        '5')
      OnChange = cxDBRadioGroup1PropertiesChange
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 312
      Top = 6
      Caption = #904#955#949#947#967#959#962' '#927#967#942#956#945#964#959#962
      DataBinding.DataField = 'Noted'
      DataBinding.DataSource = DMOurCarsDet.dtsCarsVisitOur
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
    end
    object Button1: TButton
      Left = 330
      Top = 34
      Width = 58
      Height = 25
      Action = actSrc
      TabOrder = 11
    end
  end
  object Panel3: TPanel [4]
    Left = 0
    Top = 400
    Width = 846
    Height = 100
    Caption = 'Panel1'
    TabOrder = 3
    object Label9: TLabel
      Left = 7
      Top = 64
      Width = 49
      Height = 13
      AutoSize = False
    end
    object cxDBMemo1: TcxDBMemo
      Left = 0
      Top = 1
      DataBinding.DataField = 'Comments'
      DataBinding.DataSource = DMOurCarsDet.dtsCarsVisitOur
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 101
      Width = 844
    end
  end
  object Panel4: TPanel [5]
    Left = 0
    Top = 52
    Width = 846
    Height = 41
    Align = alTop
    TabOrder = 4
    object Label10: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 518
      Height = 32
      Align = alTop
      Alignment = taCenter
      Anchors = []
      Caption = #914#953#946#955#943#959' '#917#953#963#972#948#959#965' - '#917#958#972#948#959#965' '#917#964#945#953#961#953#954#972#962' '#931#964#972#955#959#962
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Book Antiqua'
      Font.Style = []
      ParentFont = False
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 504
    Width = 846
    Font.Height = -19
    Font.Style = [fsBold]
    Panels = <
      item
        Width = 250
      end
      item
        Width = 250
      end
      item
        Alignment = taCenter
        Width = 50
      end>
    UseSystemFont = False
    ExplicitTop = 504
    ExplicitWidth = 846
  end
  object PanelBtnCom: TPanel [7]
    Left = 0
    Top = 534
    Width = 846
    Height = 0
    Align = alBottom
    TabOrder = 6
  end
  inherited popFilter: TPopupMenu
    Left = 556
    Top = 411
    inherited Pedia: TMenuItem
      Visible = False
    end
    inherited dummyVariant: TMenuItem
      Visible = False
    end
    inherited actBestFit: TMenuItem
      Visible = False
    end
    object N7: TMenuItem
      Action = actDeleteRow
    end
  end
  inherited ActionMainList: TActionList
    Left = 496
    Top = 416
    inherited actMainInsert: TAction
      OnExecute = actMainInsertExecute
    end
    inherited actMainUpdate: TAction
      OnExecute = actMainUpdateExecute
    end
    inherited actMainOK: TAction
      OnExecute = actMainOKExecute
    end
    inherited actMainCancel: TAction
      Tag = 999
      OnExecute = actMainCancelExecute
    end
    inherited actMainOKFF: TAction
      OnExecute = actMainOKFFExecute
    end
    object actlibref: TAction [19]
      Tag = 999
      Category = 'UPD'
      Caption = #917#957#951#956'.'#918#965#947#959#973
      ImageIndex = 11
      OnExecute = actlibrefExecute
    end
    object actDeleteRow: TAction [20]
      Category = 'UPD'
      Caption = #916#953#945#947#961#945#966#942' '#918#965#947#943#963#951#962
      OnExecute = actDeleteRowExecute
    end
    object actSrc: TAction
      Tag = 999
      Category = 'UPD'
      Caption = #917#973#961#949#963#951
      OnExecute = actSrcExecute
    end
  end
  inherited MainMenu1: TMainMenu
    Left = 624
    Top = 416
  end
  inherited ImageList1: TImageList
    Left = 688
    Top = 416
  end
  inherited JvCalculator1: TJvCalculator
    Left = 360
    Top = 416
  end
  inherited PrintDialog1: TPrintDialog
    Left = 432
    Top = 416
  end
end
