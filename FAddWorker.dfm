inherited frmAddWorker: TfrmAddWorker
  ActiveControl = edtName
  AutoSize = True
  Caption = #922#945#964#945#967#969#961#951#963#951' '#917#961#947#945#950#959#956#941#957#959#965' '#917#961#947#959#955#940#946#959#965
  ClientHeight = 634
  ClientWidth = 895
  ExplicitWidth = 903
  ExplicitHeight = 661
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 615
    Width = 895
    ExplicitTop = 615
    ExplicitWidth = 895
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 895
    Height = 133
    Align = alTop
    TabOrder = 1
    object Label4: TLabel
      Left = 24
      Top = 89
      Width = 44
      Height = 13
      Caption = #917#964#945#953#961#949#943#945
    end
    object Label3: TLabel
      Left = 24
      Top = 65
      Width = 56
      Height = 13
      Caption = #932#945#965#964#972#964#951#964#945
    end
    object Label2: TLabel
      Left = 24
      Top = 41
      Width = 44
      Height = 13
      Caption = #917#960#974#957#965#956#959
    end
    object Label1: TLabel
      Left = 24
      Top = 17
      Width = 34
      Height = 13
      Caption = #908#957#959#956#945
    end
    object Button1: TButton
      Left = 132
      Top = 108
      Width = 181
      Height = 25
      Caption = #917#973#961#949#963#951
      TabOrder = 4
      OnClick = Button1Click
    end
    object cxdbtCompany: TcxLookupComboBox
      Left = 132
      Top = 84
      Properties.DropDownAutoSize = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'Company'
        end
        item
          FieldName = 'id'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      TabOrder = 3
      Width = 181
    end
    object edtADT: TEdit
      Left = 132
      Top = 60
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edtSurname: TEdit
      Left = 132
      Top = 36
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtName: TEdit
      Left = 132
      Top = 12
      Width = 121
      Height = 21
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 133
    Width = 895
    Height = 441
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 2
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 893
      Height = 506
      Align = alTop
      Anchors = [akLeft, akRight]
      AutoSize = True
      TabOrder = 0
      VerticalAlignment = taAlignTop
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 891
        Height = 504
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = True
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
          FilterBox.CustomizeButtonAlignment = fbaLeft
          FilterBox.Visible = fvNever
          DataController.DataSource = DataSource1
          DataController.DetailKeyFieldNames = 'Worker_Id'
          DataController.Filter.AutoDataSetFilter = True
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Count ####0'
              Kind = skCount
              FieldName = 'ACARD.ACARDID'
              DisplayText = #928#955#942#952#959#962
              Sorted = True
              VisibleForCustomization = False
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'Count ##0,000'
              Kind = skCount
              FieldName = 'DateIn'
              DisplayText = #928#955#942#952#959#962
              Sorted = True
            end>
          DataController.Summary.SummaryGroups = <>
          DateTimeHandling.Grouping = dtgByDate
          Filtering.MRUItemsList = False
          Filtering.ColumnAddValueItems = False
          Filtering.ColumnMRUItemsList = False
          FilterRow.SeparatorWidth = 15
          FilterRow.ApplyChanges = fracImmediately
          FilterRow.ApplyInputDelay = 100
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = #916#949#957' '#965#960#940#961#967#949#953' '#949#961#947#945#950#972#956#949#957#959#962' '#956#949' '#943#948#953#959' '#913#916#932
          OptionsView.Footer = True
          OptionsView.GroupFooterMultiSummaries = True
          object cxGridDBTableView1ADT: TcxGridDBColumn
            DataBinding.FieldName = 'ADT'
          end
          object cxGridDBTableView1Name: TcxGridDBColumn
            DataBinding.FieldName = 'Name'
          end
          object cxGridDBTableView1SurName: TcxGridDBColumn
            DataBinding.FieldName = 'SurName'
          end
          object cxGridDBTableView1Company: TcxGridDBColumn
            DataBinding.FieldName = 'Company'
          end
          object cxGridDBTableView1Contractor_Id: TcxGridDBColumn
            DataBinding.FieldName = 'Contractor_Id'
            Visible = False
          end
          object cxGridDBTableView1Worker_Id: TcxGridDBColumn
            DataBinding.FieldName = 'Worker_Id'
            Visible = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 174
      Width = 893
      Height = 266
      Align = alBottom
      AutoSize = True
      Caption = 'Panel1'
      TabOrder = 1
      VerticalAlignment = taAlignBottom
      object cxGrid2: TcxGrid
        Left = 1
        Top = 1
        Width = 891
        Height = 264
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView2: TcxGridDBTableView
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
          DataController.DataSource = DataSource2
          DataController.DetailKeyFieldNames = 'Worker_Id'
          DataController.Filter.AutoDataSetFilter = True
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Count ####0'
              Kind = skCount
              FieldName = 'ACARD.ACARDID'
              DisplayText = #928#955#942#952#959#962
              Sorted = True
              VisibleForCustomization = False
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'Count ##0,000'
              Kind = skCount
              FieldName = 'DateIn'
              DisplayText = #928#955#942#952#959#962
              Sorted = True
            end>
          DataController.Summary.SummaryGroups = <>
          DateTimeHandling.Grouping = dtgByDate
          Filtering.ColumnFilteredItemsList = True
          FilterRow.SeparatorWidth = 15
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          FilterRow.ApplyInputDelay = 100
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = #916#949#957' '#965#960#940#961#967#949#953' '#949#961#947#945#950#972#956#949#957#959#962' '#956#949' '#943#948#953#959' '#931#964#959#953#967#949#943#945
          OptionsView.Footer = True
          OptionsView.GroupFooterMultiSummaries = True
          object cxGridDBTableView2Name: TcxGridDBColumn
            DataBinding.FieldName = 'Name'
          end
          object cxGridDBTableView2SurName: TcxGridDBColumn
            DataBinding.FieldName = 'SurName'
          end
          object cxGridDBTableView2Company: TcxGridDBColumn
            DataBinding.FieldName = 'Company'
          end
          object cxGridDBTableView2ADT: TcxGridDBColumn
            DataBinding.FieldName = 'ADT'
          end
          object cxGridDBTableView2Contractor_Id: TcxGridDBColumn
            DataBinding.FieldName = 'Contractor_Id'
            Visible = False
          end
          object cxGridDBTableView2Worker_Id: TcxGridDBColumn
            DataBinding.FieldName = 'Worker_Id'
            Visible = False
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 574
    Width = 895
    Height = 41
    Align = alBottom
    TabOrder = 3
    object Button2: TButton
      Left = 1
      Top = 1
      Width = 893
      Height = 39
      Align = alClient
      Caption = #922#945#964#945#967#974#961#951#963#951
      TabOrder = 0
      Visible = False
      OnClick = Button2Click
    end
  end
  object DataSource1: TDataSource
    DataSet = fnHelpPerson
    Left = 472
    Top = 24
  end
  object fnHelpPerson: TADOStoredProc
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'fnHelpWorker;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@PName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end
      item
        Name = '@PSurname'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end
      item
        Name = '@PCompany'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end
      item
        Name = '@PIdentity'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end>
    Left = 392
    Top = 20
    object fnHelpPersonName: TWideStringField
      DisplayLabel = #927#957#972#956#945
      DisplayWidth = 15
      FieldName = 'Name'
      Size = 30
    end
    object fnHelpPersonSurName: TWideStringField
      DisplayLabel = #917#960#974#957#965#956#959
      DisplayWidth = 20
      FieldName = 'SurName'
      Size = 30
    end
    object fnHelpPersonCompany: TWideStringField
      DisplayWidth = 20
      FieldName = 'Company'
      Size = 100
    end
    object fnHelpPersonADT: TWideStringField
      FieldName = 'ADT'
      FixedChar = True
      Size = 10
    end
    object fnHelpPersonContractor_Id: TIntegerField
      FieldName = 'Contractor_Id'
    end
    object fnHelpPersonWorker_Id: TIntegerField
      FieldName = 'Worker_Id'
    end
  end
  object fnHelpPerson1: TADOStoredProc
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'fnHelpWorker;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@PName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end
      item
        Name = '@PSurname'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end
      item
        Name = '@PCompany'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end
      item
        Name = '@PIdentity'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end>
    Left = 392
    Top = 68
    object WideStringField1: TWideStringField
      DisplayLabel = #908#957#959#956#945
      DisplayWidth = 15
      FieldName = 'Name'
      Size = 30
    end
    object WideStringField2: TWideStringField
      DisplayLabel = #917#960#974#957#965#956#959
      DisplayWidth = 20
      FieldName = 'SurName'
      Size = 30
    end
    object WideStringField3: TWideStringField
      DisplayWidth = 20
      FieldName = 'Company'
      Size = 100
    end
    object WideStringField4: TWideStringField
      FieldName = 'ADT'
      FixedChar = True
      Size = 10
    end
    object IntegerField1: TIntegerField
      FieldName = 'Contractor_Id'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Worker_Id'
    end
  end
  object DataSource2: TDataSource
    DataSet = fnHelpPerson1
    Left = 472
    Top = 72
  end
end
