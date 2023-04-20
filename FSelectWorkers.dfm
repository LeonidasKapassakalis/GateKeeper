inherited frmSelectWorkers: TfrmSelectWorkers
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = #917#960#953#955#959#947#942'.'
  ClientHeight = 473
  ClientWidth = 584
  ExplicitWidth = 592
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 0
    Top = 0
    Width = 584
    Height = 473
    Align = alClient
    TabOrder = 0
    OnEnter = cxGrid1Enter
    object cxGrid1DBTableView1: TcxGridDBTableView
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
      DataController.DataSource = DataSource1
      DataController.DetailKeyFieldNames = 'GId'
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
      object cxGrid1DBTableView1Name: TcxGridDBColumn
        DataBinding.FieldName = 'Name'
      end
      object cxGrid1DBTableView1SurName: TcxGridDBColumn
        DataBinding.FieldName = 'SurName'
      end
      object cxGrid1DBTableView1Company: TcxGridDBColumn
        DataBinding.FieldName = 'Company'
      end
      object cxGrid1DBTableView1ADT: TcxGridDBColumn
        DataBinding.FieldName = 'ADT'
      end
      object cxGrid1DBTableView1Contractor_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Contractor_Id'
        Visible = False
      end
      object cxGrid1DBTableView1Worker_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Worker_Id'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited popFilter: TPopupMenu
    Left = 36
    Top = 259
  end
  inherited ActionMainList: TActionList
    Left = 104
    Top = 256
  end
  object DataSource1: TDataSource
    DataSet = fnHelpPerson
    Left = 112
    Top = 312
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
    Left = 32
    Top = 320
    object fnHelpPersonName: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
    object fnHelpPersonSurName: TWideStringField
      FieldName = 'SurName'
      Size = 30
    end
    object fnHelpPersonCompany: TWideStringField
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
end
