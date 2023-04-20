inherited frmSelectOther: TfrmSelectOther
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = #917#960#953#955#959#947#942'.'
  ClientHeight = 473
  ClientWidth = 584
  OnCreate = FormCreate
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
      object cxGrid1DBTableView1RegNo: TcxGridDBColumn
        Caption = #913#961'.'#922#965#954#955'.'
        DataBinding.FieldName = 'RegNo'
        Width = 120
      end
      object cxGrid1DBTableView1DrvName: TcxGridDBColumn
        Caption = #927#948#951#947#972#962
        DataBinding.FieldName = 'DrvName'
        Width = 140
      end
      object cxGrid1DBTableView1Company: TcxGridDBColumn
        Caption = #917#964#945#953#961#949#943#945
        DataBinding.FieldName = 'Company'
        Width = 180
      end
      object cxGrid1DBTableView1DateTimeIn: TcxGridDBColumn
        Caption = #919#956#949#961#959#956#951#957#943#945
        DataBinding.FieldName = 'DateTimeIn'
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
    DataSet = fnHelpOther
    Left = 112
    Top = 312
  end
  object fnHelpOther: TADOStoredProc
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'fnHelpOther;1'
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
        Name = '@PCompany'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end
      item
        Name = '@PRegNo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = '%'
      end>
    Left = 32
    Top = 320
    object fnHelpOtherDrvName: TWideStringField
      DisplayWidth = 50
      FieldName = 'DrvName'
      Size = 50
    end
    object fnHelpOtherRegNo: TWideStringField
      FieldName = 'RegNo'
      Size = 50
    end
    object fnHelpOtherCompany: TWideStringField
      FieldName = 'Company'
      Size = 50
    end
    object fnHelpOtherDateTimeIn: TDateTimeField
      FieldName = 'DateTimeIn'
    end
  end
end
