inherited frmSelectLib: TfrmSelectLib
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #917#960#953#955#959#947#942'.'
  ClientHeight = 437
  ClientWidth = 416
  OnCreate = FormCreate
  ExplicitWidth = 422
  ExplicitHeight = 462
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 0
    Top = 0
    Width = 416
    Height = 437
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
      FilterBox.Visible = fvAlways
      DataController.DataSource = DataSource1
      DataController.DetailKeyFieldNames = 'GId'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DateTimeHandling.IgnoreTimeForFiltering = True
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
      object cxGrid1DBTableView1GId: TcxGridDBColumn
        DataBinding.FieldName = 'GId'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1LibId: TcxGridDBColumn
        Caption = 'Id'
        DataBinding.FieldName = 'LibId'
        MinWidth = 15
        Options.AutoWidthSizable = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1LibDateTime: TcxGridDBColumn
        Caption = #919#956'/'#957#943#945
        DataBinding.FieldName = 'LibDateTime'
        Options.AutoWidthSizable = False
        VisibleForCustomization = False
        Width = 123
      end
      object cxGrid1DBTableView1LibRegNo: TcxGridDBColumn
        Caption = #913#961'.'#922#965#954#955#959#966#959#961#943#945#962
        DataBinding.FieldName = 'LibRegNo'
        Options.AutoWidthSizable = False
        VisibleForCustomization = False
        Width = 138
      end
      object cxGrid1DBTableView1LibWeight: TcxGridDBColumn
        Caption = #914#940#961#959#962
        DataBinding.FieldName = 'LibWeight'
        Options.AutoWidthSizable = False
        VisibleForCustomization = False
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
  object ADOQuery1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PReg'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = '%'
      end>
    SQL.Strings = (
      'Select * from TRawLib'
      'Where LibRegNo like :PReg'
      'AND Used = 0'
      'Order By LibDateTime Desc')
    Left = 32
    Top = 312
    object ADOQuery1GId: TGuidField
      FieldName = 'GId'
      FixedChar = True
      Size = 38
    end
    object ADOQuery1LibId: TIntegerField
      FieldName = 'LibId'
    end
    object ADOQuery1LibDateTime: TDateTimeField
      FieldName = 'LibDateTime'
    end
    object ADOQuery1LibRegNo: TWideStringField
      DisplayWidth = 15
      FieldName = 'LibRegNo'
      Size = 50
    end
    object ADOQuery1LibWeight: TIntegerField
      FieldName = 'LibWeight'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 112
    Top = 312
  end
end
