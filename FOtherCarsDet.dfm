inherited frmOtherCarsDet: TfrmOtherCarsDet
  Caption = #914#953#946#955#943#959' '#917#953#963#972#948#959#965' - '#917#958#972#948#959#965' '#917#958#969#964#949#961#953#954#972#962' '#931#964#972#955#959#962
  ClientHeight = 574
  Position = poScreenCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  ExplicitWidth = 711
  ExplicitHeight = 620
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter4: TSplitter [0]
    Left = 0
    Top = 241
    Width = 703
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 363
    ExplicitWidth = 21
  end
  object Splitter5: TSplitter [1]
    Left = 0
    Top = 542
    Width = 703
    Height = 1
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 364
  end
  inherited ToolBar1: TToolBar
    object ToolButton9: TToolButton
      Left = 680
      Top = 0
      Action = actlibref
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 244
    Width = 703
    Height = 160
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 701
      Height = 158
      ActivePage = TabSheet2
      MultiLine = True
      TabOrder = 0
      TabPosition = tpLeft
      object TabSheet1: TTabSheet
        Caption = '1'
        TabVisible = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label2: TLabel
          Left = 128
          Top = 35
          Width = 132
          Height = 13
          Caption = #919#956#949#961#959#956#951#957#943#945' / '#39#937#961#945' '#917#958#972#948#959#965
          FocusControl = cxDBDateEdit2
        end
        object Label1: TLabel
          Left = 128
          Top = 16
          Width = 137
          Height = 13
          Alignment = taCenter
          Caption = #919#956#949#961#959#956#951#957#943#945' / '#39#937#961#945' '#917#953#963#972#948#959#965
          FocusControl = cxDBDateEdit1
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 300
          Top = 6
          TabStop = False
          DataBinding.DataField = 'DateTimeIn'
          DataBinding.DataSource = DMOtherCarsDet.dtsCarsVisitOther
          Properties.AutoSelect = False
          Properties.Kind = ckDateTime
          Properties.ReadOnly = False
          TabOrder = 0
          Width = 221
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 300
          Top = 28
          TabStop = False
          DataBinding.DataField = 'DateTimeOut'
          DataBinding.DataSource = DMOtherCarsDet.dtsCarsVisitOther
          Properties.DateButtons = [btnClear, btnNow, btnToday]
          Properties.Kind = ckDateTime
          Properties.ReadOnly = False
          TabOrder = 1
          Width = 221
        end
      end
      object TabSheet2: TTabSheet
        Caption = '2'
        ImageIndex = 1
        TabVisible = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 335
          Height = 150
          Align = alLeft
          Caption = 'Panel5'
          TabOrder = 0
          object cxGrid1: TcxGrid
            Left = 1
            Top = 36
            Width = 333
            Height = 113
            Align = alClient
            TabOrder = 0
            object cxGrid1DBTableView1: TcxGridDBTableView
              Tag = 1
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
              DataController.DataSource = DMOtherCarsDet.dtsCarsVisitOtherWeight1
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
              OptionsView.GridLineColor = clCaptionText
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
          object Panel7: TPanel
            Left = 1
            Top = 1
            Width = 333
            Height = 35
            Align = alTop
            Caption = 'Panel7'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ShowCaption = False
            TabOrder = 1
            object LabelP7: TLabel
              Left = 1
              Top = 1
              Width = 47
              Height = 13
              Align = alTop
              Alignment = taCenter
              Caption = 'LabelP7'
            end
          end
        end
        object Panel6: TPanel
          Left = 335
          Top = 0
          Width = 358
          Height = 150
          Align = alClient
          Caption = 'Panel5'
          TabOrder = 1
          object Splitter1: TSplitter
            Left = 1
            Top = 36
            Height = 113
            ExplicitLeft = 4
            ExplicitTop = 1
            ExplicitHeight = 164
          end
          object cxGrid2: TcxGrid
            Left = 4
            Top = 36
            Width = 353
            Height = 113
            Align = alClient
            TabOrder = 0
            object cxGridDBTableView1: TcxGridDBTableView
              Tag = 2
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
              DataController.DataSource = DMOtherCarsDet.dtsCarsVisitOtherWeight2
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
          object Panel8: TPanel
            Left = 1
            Top = 1
            Width = 356
            Height = 35
            Align = alTop
            Caption = 'Panel7'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ShowCaption = False
            TabOrder = 1
            OnResize = Panel8Resize
            object LabelP8: TLabel
              Left = 1
              Top = 1
              Width = 39
              Height = 13
              Align = alTop
              Alignment = taCenter
              Caption = 'Label7'
            end
          end
        end
      end
    end
  end
  object Panel2: TPanel [4]
    Left = 0
    Top = 93
    Width = 703
    Height = 148
    Align = alTop
    TabOrder = 2
    object Label8: TLabel
      Left = 384
      Top = 38
      Width = 82
      Height = 13
      Caption = #927#957#959#956#945#964#949#960#974#957#965#956#959
      FocusControl = cxdbtDrvName
    end
    object Label3: TLabel
      Left = 24
      Top = 92
      Width = 108
      Height = 13
      Caption = #931#964#959#953#967#949#943#945' '#928#961#959#956#951#952#949#965#964#942
      FocusControl = cxdbtCarOwner
    end
    object Label4: TLabel
      Left = 384
      Top = 65
      Width = 82
      Height = 13
      Caption = #913#961#953#952#956#972#962' '#916#949#955#964#943#959#965
    end
    object Label5: TLabel
      Left = 24
      Top = 65
      Width = 103
      Height = 13
      Caption = #921#948#953#959#954#964#942#964#961#953#945' '#917#964#945#953#961#949#943#945
    end
    object lblCarNumber: TLabel
      Left = 24
      Top = 41
      Width = 68
      Height = 13
      Caption = #913#961#953#952#956#972#962' '#922#965#954#955'.'
      FocusControl = cxdbtRegNo
    end
    object Label6: TLabel
      Left = 384
      Top = 97
      Width = 83
      Height = 13
      Caption = #917#943#948#959#962' '#928#961#959#970#972#957#964#959#962
    end
    object cxdbtDrvName: TcxDBMRUEdit
      Left = 486
      Top = 36
      AutoSize = False
      DataBinding.DataField = 'DrvName'
      DataBinding.DataSource = DMOtherCarsDet.dtsCarsVisitOther
      Properties.Alignment.Horz = taLeftJustify
      Properties.AutoSelect = False
      Properties.CharCase = ecUpperCase
      Properties.ImmediateUpdateText = True
      Properties.ShowEllipsis = False
      Properties.OnCloseUp = cxdbtAllCloseUp
      TabOrder = 2
      OnDblClick = cxdbtDrvNameDblClick
      OnExit = cxdbtDrvNameExit
      Height = 21
      Width = 169
    end
    object cxdbtRegNo: TcxDBMRUEdit
      Left = 138
      Top = 38
      DataBinding.DataField = 'RegNo'
      DataBinding.DataSource = DMOtherCarsDet.dtsCarsVisitOther
      Properties.AutoSelect = False
      Properties.CharCase = ecUpperCase
      Properties.ShowEllipsis = False
      Properties.OnCloseUp = cxdbtAllCloseUp
      TabOrder = 1
      OnExit = cxdbtRegNoExit
      OnKeyPress = cxdbtRegNoKeyPress
      Width = 186
    end
    object cxdbtCarOwner: TcxDBMRUEdit
      Left = 138
      Top = 65
      DataBinding.DataField = 'CarOwner'
      DataBinding.DataSource = DMOtherCarsDet.dtsCarsVisitOther
      Properties.AutoSelect = False
      Properties.CharCase = ecUpperCase
      Properties.ShowEllipsis = False
      Properties.OnCloseUp = cxdbtAllCloseUp
      TabOrder = 3
      OnExit = cxdbtCarOwnerExit
      Width = 186
    end
    object cxDBCBWithout: TcxDBCheckBox
      Left = 24
      Top = 116
      Caption = #902#957#949#965' '#918#965#947#943#963#949#969#962
      DataBinding.DataField = 'WithoutWeight'
      DataBinding.DataSource = DMOtherCarsDet.dtsCarsVisitOther
      Properties.Alignment = taRightJustify
      Properties.DisplayChecked = '1'
      Properties.DisplayUnchecked = '0'
      Properties.ImmediatePost = True
      Properties.OnChange = cxDBCheckBox4PropertiesChange
      TabOrder = 5
    end
    object cxDBTEDA_Num: TcxDBTextEdit
      Left = 486
      Top = 63
      DataBinding.DataField = 'DA_Num'
      DataBinding.DataSource = DMOtherCarsDet.dtsCarsVisitOther
      Properties.AutoSelect = False
      TabOrder = 4
      Width = 169
    end
    object cxDBCheckBox1: TcxDBLabel
      Left = 486
      Top = 4
      TabStop = False
      DataBinding.DataField = 'FullFilled'
      DataBinding.DataSource = DMOtherCarsDet.dtsCarsVisitOther
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
    object cxDBLabel1: TcxDBLabel
      Left = 486
      Top = 116
      TabStop = False
      DataBinding.DataField = 'id'
      DataBinding.DataSource = DMOtherCarsDet.dtsCarsVisitOther
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
    object cxDBTProducts: TcxDBLookupComboBox
      Left = 486
      Top = 89
      DataBinding.DataField = 'ProductId'
      DataBinding.DataSource = DMOtherCarsDet.dtsCarsVisitOther
      Properties.ClearKey = 27
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'Name'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = DMOtherCarsDet.dsVL_Product
      Properties.OnCloseUp = cxdbtAllCloseUp
      TabOrder = 8
      OnDblClick = cxDBTProductsDblClick
      Width = 173
    end
    object cxDBTCompany: TcxDBMRUEdit
      Left = 138
      Top = 92
      AutoSize = False
      DataBinding.DataField = 'Company'
      DataBinding.DataSource = DMOtherCarsDet.dtsCarsVisitOther
      Properties.AutoSelect = False
      Properties.CharCase = ecUpperCase
      Properties.ShowEllipsis = False
      Properties.OnCloseUp = cxdbtAllCloseUp
      TabOrder = 9
      OnDblClick = cxdbtDrvNameDblClick
      OnExit = cxDBTCompanyExit
      Height = 21
      Width = 169
    end
    object cxDBRadioGroup1: TDBRadioGroup
      Left = 7
      Top = -5
      Width = 212
      Height = 37
      Columns = 2
      DataField = 'ProcedureState'
      DataSource = DMOtherCarsDet.dtsCarsVisitOther
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Items.Strings = (
        #917#953#963#945#947#969#947#942
        #917#958#945#947#969#947#942)
      ParentBackground = True
      ParentFont = False
      TabOrder = 0
      TabStop = True
      Values.Strings = (
        '1'
        '2')
      OnChange = cxDBRadioGroup1PropertiesChange
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 269
      Top = 8
      Caption = #904#955#949#947#967#959#962' '#927#967#942#956#945#964#959#962
      DataBinding.DataField = 'Noted'
      DataBinding.DataSource = DMOtherCarsDet.dtsCarsVisitOther
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
      Width = 49
      Height = 25
      Action = actSrc
      TabOrder = 11
    end
    object cxDBCheckBox3: TcxDBCheckBox
      Left = 204
      Top = 115
      Caption = #924#945#954#961#940#962' '#928#945#961#945#956#959#957#942#962
      DataBinding.DataField = 'Long_Stay'
      DataBinding.DataSource = DMOtherCarsDet.dtsCarsVisitOther
      Properties.Alignment = taRightJustify
      Properties.DisplayChecked = '1'
      Properties.DisplayUnchecked = '0'
      Properties.ImmediatePost = True
      Properties.OnChange = cxDBCheckBox4PropertiesChange
      TabOrder = 12
    end
  end
  object PanelBtnCom: TPanel [5]
    Left = 0
    Top = 543
    Width = 703
    Height = 1
    Align = alBottom
    TabOrder = 3
  end
  object Panel3: TPanel [6]
    Left = 3
    Top = 409
    Width = 697
    Height = 120
    Caption = 'Panel1'
    TabOrder = 4
    object Label9: TLabel
      Left = 7
      Top = 64
      Width = 49
      Height = 13
      AutoSize = False
    end
    object cxDBMemo1: TcxDBMemo
      AlignWithMargins = True
      Left = 4
      Top = 4
      Align = alClient
      DataBinding.DataField = 'Comments'
      DataBinding.DataSource = DMOtherCarsDet.dtsCarsVisitOther
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 112
      Width = 689
    end
  end
  object Panel4: TPanel [7]
    Left = 0
    Top = 52
    Width = 703
    Height = 41
    Align = alTop
    TabOrder = 5
    object Label10: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 535
      Height = 32
      Align = alTop
      Alignment = taCenter
      Anchors = []
      Caption = #914#953#946#955#943#959' '#917#953#963#972#948#959#965' - '#917#958#972#948#959#965' '#917#958#969#964#949#961#953#954#972#962' '#931#964#972#955#959#962
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Book Antiqua'
      Font.Style = []
      ParentFont = False
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 544
    Font.Height = -19
    Font.Style = [fsBold]
    UseSystemFont = False
    ExplicitTop = 544
  end
  inherited popFilter: TPopupMenu
    Left = 356
    Top = 491
    inherited Pedia: TMenuItem
      Visible = False
    end
    inherited dummyVariant: TMenuItem
      Visible = False
    end
    inherited Grid2XML: TMenuItem
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
    Left = 296
    Top = 488
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
    Left = 480
    Top = 480
  end
  inherited ImageList1: TImageList
    Left = 424
    Top = 488
  end
  inherited JvCalculator1: TJvCalculator
    Left = 640
    Top = 64
  end
end
