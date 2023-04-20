inherited frmBRWorkPermits: TfrmBRWorkPermits
  Caption = #917#954#964#973#960#969#963#951' '#913#948#949#953#974#957' '#917#961#947#945#963#943#945#962
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid1: TcxGrid
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      DataController.DataSource = dtsMain
      DataController.DetailKeyFieldNames = 'id'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      object cxGrid1DBTableView1Id: TcxGridDBColumn
        DataBinding.FieldName = 'Id'
      end
      object cxGrid1DBTableView1Issue_Date: TcxGridDBColumn
        DataBinding.FieldName = 'Issue_Date'
      end
      object cxGrid1DBTableView1Start_Time: TcxGridDBColumn
        DataBinding.FieldName = 'Start_Time'
      end
      object cxGrid1DBTableView1End_Time: TcxGridDBColumn
        DataBinding.FieldName = 'End_Time'
      end
      object cxGrid1DBTableView1_: TcxGridDBColumn
        DataBinding.FieldName = #913#961'_'#915#957#969#963#964#959#960#959#953#951#963#951#962
      end
      object cxGrid1DBTableView1Department_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Department_Id'
      end
      object cxGrid1DBTableView1LDepartment: TcxGridDBColumn
        DataBinding.FieldName = 'LDepartment'
      end
      object cxGrid1DBTableView1Contractor_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Contractor_Id'
      end
      object cxGrid1DBTableView1LContractor: TcxGridDBColumn
        DataBinding.FieldName = 'LContractor'
      end
      object cxGrid1DBTableView1_1: TcxGridDBColumn
        DataBinding.FieldName = #924#959#957#940#948#945'_'#917#961#947#945#963#943#945#962
      end
      object cxGrid1DBTableView1DBColumn: TcxGridDBColumn
        DataBinding.FieldName = #917#958#959#960#955#953#963#956#959#962
      end
      object cxGrid1DBTableView1Foreman_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Foreman_Id'
      end
      object cxGrid1DBTableView1LForeman: TcxGridDBColumn
        DataBinding.FieldName = 'LForeman'
      end
      object cxGrid1DBTableView1Department_Foreman_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Department_Foreman_Id'
      end
      object cxGrid1DBTableView1LDepartment_Foreman: TcxGridDBColumn
        DataBinding.FieldName = 'LDepartment_Foreman'
      end
      object cxGrid1DBTableView1_2: TcxGridDBColumn
        DataBinding.FieldName = #928#917#929#921#915#929#913#934#919'_'#917#929#915#913#931#921#913#931
      end
      object cxGrid1DBTableView1Contractors_Name: TcxGridDBColumn
        DataBinding.FieldName = 'Contractors_Name'
      end
      object cxGrid1DBTableView1Departments_Name: TcxGridDBColumn
        DataBinding.FieldName = 'Departments_Name'
      end
      object cxGrid1DBTableView1FullFilled: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilled'
      end
      object cxGrid1DBTableView1FullFilledDT: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledDT'
      end
      object cxGrid1DBTableView1FullFilledUsr: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledUsr'
      end
      object cxGrid1DBTableView1From_Id_Copy: TcxGridDBColumn
        DataBinding.FieldName = 'From_Id_Copy'
      end
      object cxGrid1DBTableView1Deleted: TcxGridDBColumn
        DataBinding.FieldName = 'Deleted'
      end
      object cxGrid1DBTableView1DelUsr: TcxGridDBColumn
        DataBinding.FieldName = 'DelUsr'
      end
      object cxGrid1DBTableView1DelDT: TcxGridDBColumn
        DataBinding.FieldName = 'DelDT'
      end
      object cxGrid1DBTableView1FullFilledCancel: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledCancel'
      end
      object cxGrid1DBTableView1WorkStopped: TcxGridDBColumn
        DataBinding.FieldName = 'WorkStopped'
      end
      object cxGrid1DBTableView1WorkStoppedUsr: TcxGridDBColumn
        DataBinding.FieldName = 'WorkStoppedUsr'
      end
      object cxGrid1DBTableView1WorkStoppedDT: TcxGridDBColumn
        DataBinding.FieldName = 'WorkStoppedDT'
      end
      object cxGrid1DBTableView1DTime: TcxGridDBColumn
        DataBinding.FieldName = 'DTime'
      end
      object cxGrid1DBTableView1Issue_Date_Full: TcxGridDBColumn
        DataBinding.FieldName = 'Issue_Date_Full'
      end
      object cxGrid1DBTableView1InsDT: TcxGridDBColumn
        DataBinding.FieldName = 'InsDT'
      end
      object cxGrid1DBTableView1InsUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InsUsr'
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView [1]
      PopupMenu = popFilter
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = cxGrid1DBTableView2CellDblClick
      DataController.DataSource = dtsMain
      DataController.DetailKeyFieldNames = 'id'
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
      object cxGrid1DBTableView2Id: TcxGridDBColumn
        DataBinding.FieldName = 'Id'
      end
      object cxGrid1DBTableView2Issue_Date: TcxGridDBColumn
        DataBinding.FieldName = 'Issue_Date'
      end
      object cxGrid1DBTableView2Start_Time: TcxGridDBColumn
        DataBinding.FieldName = 'Start_Time'
      end
      object cxGrid1DBTableView2End_Time: TcxGridDBColumn
        DataBinding.FieldName = 'End_Time'
      end
      object cxGrid1DBTableView2_: TcxGridDBColumn
        DataBinding.FieldName = #913#961'_'#915#957#969#963#964#959#960#959#953#951#963#951#962
      end
      object cxGrid1DBTableView2Department_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Department_Id'
      end
      object cxGrid1DBTableView2LDepartment: TcxGridDBColumn
        DataBinding.FieldName = 'LDepartment'
      end
      object cxGrid1DBTableView2Contractor_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Contractor_Id'
      end
      object cxGrid1DBTableView2LContractor: TcxGridDBColumn
        DataBinding.FieldName = 'LContractor'
      end
      object cxGrid1DBTableView2_1: TcxGridDBColumn
        DataBinding.FieldName = #924#959#957#940#948#945'_'#917#961#947#945#963#943#945#962
      end
      object cxGrid1DBTableView2DBColumn: TcxGridDBColumn
        DataBinding.FieldName = #917#958#959#960#955#953#963#956#959#962
      end
      object cxGrid1DBTableView2Foreman_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Foreman_Id'
      end
      object cxGrid1DBTableView2LForeman: TcxGridDBColumn
        DataBinding.FieldName = 'LForeman'
      end
      object cxGrid1DBTableView2Department_Foreman_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Department_Foreman_Id'
      end
      object cxGrid1DBTableView2LDepartment_Foreman: TcxGridDBColumn
        DataBinding.FieldName = 'LDepartment_Foreman'
      end
      object cxGrid1DBTableView2_2: TcxGridDBColumn
        DataBinding.FieldName = #928#917#929#921#915#929#913#934#919'_'#917#929#915#913#931#921#913#931
      end
      object cxGrid1DBTableView2Contractors_Name: TcxGridDBColumn
        DataBinding.FieldName = 'Contractors_Name'
      end
      object cxGrid1DBTableView2Departments_Name: TcxGridDBColumn
        DataBinding.FieldName = 'Departments_Name'
      end
      object cxGrid1DBTableView2FullFilled: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilled'
      end
      object cxGrid1DBTableView2FullFilledDT: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledDT'
      end
      object cxGrid1DBTableView2FullFilledUsr: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledUsr'
      end
      object cxGrid1DBTableView2From_Id_Copy: TcxGridDBColumn
        DataBinding.FieldName = 'From_Id_Copy'
      end
      object cxGrid1DBTableView2Deleted: TcxGridDBColumn
        DataBinding.FieldName = 'Deleted'
      end
      object cxGrid1DBTableView2DelUsr: TcxGridDBColumn
        DataBinding.FieldName = 'DelUsr'
      end
      object cxGrid1DBTableView2DelDT: TcxGridDBColumn
        DataBinding.FieldName = 'DelDT'
      end
      object cxGrid1DBTableView2FullFilledCancel: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledCancel'
      end
      object cxGrid1DBTableView2WorkStopped: TcxGridDBColumn
        DataBinding.FieldName = 'WorkStopped'
      end
      object cxGrid1DBTableView2WorkStoppedUsr: TcxGridDBColumn
        DataBinding.FieldName = 'WorkStoppedUsr'
      end
      object cxGrid1DBTableView2WorkStoppedDT: TcxGridDBColumn
        DataBinding.FieldName = 'WorkStoppedDT'
      end
      object cxGrid1DBTableView2DTime: TcxGridDBColumn
        DataBinding.FieldName = 'DTime'
      end
      object cxGrid1DBTableView2Issue_Date_Full: TcxGridDBColumn
        DataBinding.FieldName = 'Issue_Date_Full'
      end
      object cxGrid1DBTableView2InsDT: TcxGridDBColumn
        DataBinding.FieldName = 'InsDT'
      end
      object cxGrid1DBTableView2InsUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InsUsr'
      end
    end
    object cxGrid1DBTableView4: TcxGridDBTableView [2]
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
      OnCellDblClick = cxGrid1DBTableView4CellDblClick
      DataController.DataSource = dtsMain
      DataController.DetailKeyFieldNames = 'Id'
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
      object cxGrid1DBTableView4Id: TcxGridDBColumn
        DataBinding.FieldName = 'Id'
      end
      object cxGrid1DBTableView4Issue_Date: TcxGridDBColumn
        DataBinding.FieldName = 'Issue_Date'
      end
      object cxGrid1DBTableView4Start_Time: TcxGridDBColumn
        DataBinding.FieldName = 'Start_Time'
      end
      object cxGrid1DBTableView4End_Time: TcxGridDBColumn
        DataBinding.FieldName = 'End_Time'
      end
      object cxGrid1DBTableView4_: TcxGridDBColumn
        DataBinding.FieldName = #913#961'_'#915#957#969#963#964#959#960#959#953#951#963#951#962
      end
      object cxGrid1DBTableView4Department_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Department_Id'
      end
      object cxGrid1DBTableView4LDepartment: TcxGridDBColumn
        DataBinding.FieldName = 'LDepartment'
      end
      object cxGrid1DBTableView4Contractor_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Contractor_Id'
      end
      object cxGrid1DBTableView4LContractor: TcxGridDBColumn
        DataBinding.FieldName = 'LContractor'
      end
      object cxGrid1DBTableView4_1: TcxGridDBColumn
        DataBinding.FieldName = #924#959#957#940#948#945'_'#917#961#947#945#963#943#945#962
      end
      object cxGrid1DBTableView4DBColumn: TcxGridDBColumn
        DataBinding.FieldName = #917#958#959#960#955#953#963#956#959#962
      end
      object cxGrid1DBTableView4Foreman_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Foreman_Id'
      end
      object cxGrid1DBTableView4LForeman: TcxGridDBColumn
        DataBinding.FieldName = 'LForeman'
      end
      object cxGrid1DBTableView4Department_Foreman_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Department_Foreman_Id'
      end
      object cxGrid1DBTableView4LDepartment_Foreman: TcxGridDBColumn
        DataBinding.FieldName = 'LDepartment_Foreman'
      end
      object cxGrid1DBTableView4_2: TcxGridDBColumn
        DataBinding.FieldName = #928#917#929#921#915#929#913#934#919'_'#917#929#915#913#931#921#913#931
      end
      object cxGrid1DBTableView4Contractors_Name: TcxGridDBColumn
        DataBinding.FieldName = 'Contractors_Name'
      end
      object cxGrid1DBTableView4Departments_Name: TcxGridDBColumn
        DataBinding.FieldName = 'Departments_Name'
      end
      object cxGrid1DBTableView4FullFilled: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilled'
      end
      object cxGrid1DBTableView4FullFilledDT: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledDT'
      end
      object cxGrid1DBTableView4FullFilledUsr: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledUsr'
      end
      object cxGrid1DBTableView4From_Id_Copy: TcxGridDBColumn
        DataBinding.FieldName = 'From_Id_Copy'
      end
      object cxGrid1DBTableView4Deleted: TcxGridDBColumn
        DataBinding.FieldName = 'Deleted'
      end
      object cxGrid1DBTableView4DelUsr: TcxGridDBColumn
        DataBinding.FieldName = 'DelUsr'
      end
      object cxGrid1DBTableView4DelDT: TcxGridDBColumn
        DataBinding.FieldName = 'DelDT'
      end
      object cxGrid1DBTableView4FullFilledCancel: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledCancel'
      end
      object cxGrid1DBTableView4WorkStopped: TcxGridDBColumn
        DataBinding.FieldName = 'WorkStopped'
      end
      object cxGrid1DBTableView4WorkStoppedUsr: TcxGridDBColumn
        DataBinding.FieldName = 'WorkStoppedUsr'
      end
      object cxGrid1DBTableView4WorkStoppedDT: TcxGridDBColumn
        DataBinding.FieldName = 'WorkStoppedDT'
      end
      object cxGrid1DBTableView4DTime: TcxGridDBColumn
        DataBinding.FieldName = 'DTime'
      end
      object cxGrid1DBTableView4Issue_Date_Full: TcxGridDBColumn
        DataBinding.FieldName = 'Issue_Date_Full'
      end
      object cxGrid1DBTableView4InsDT: TcxGridDBColumn
        DataBinding.FieldName = 'InsDT'
      end
      object cxGrid1DBTableView4InsUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InsUsr'
      end
    end
    object cxGrid1DBTableView5: TcxGridDBTableView [3]
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
      OnCellDblClick = cxGrid1DBTableView5CellDblClick
      DataController.DataSource = dtsMain
      DataController.DetailKeyFieldNames = 'Id'
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
      object cxGrid1DBTableView5Id: TcxGridDBColumn
        DataBinding.FieldName = 'Id'
      end
      object cxGrid1DBTableView5Issue_Date: TcxGridDBColumn
        DataBinding.FieldName = 'Issue_Date'
      end
      object cxGrid1DBTableView5Start_Time: TcxGridDBColumn
        DataBinding.FieldName = 'Start_Time'
      end
      object cxGrid1DBTableView5End_Time: TcxGridDBColumn
        DataBinding.FieldName = 'End_Time'
      end
      object cxGrid1DBTableView5_: TcxGridDBColumn
        DataBinding.FieldName = #913#961'_'#915#957#969#963#964#959#960#959#953#951#963#951#962
      end
      object cxGrid1DBTableView5Department_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Department_Id'
      end
      object cxGrid1DBTableView5LDepartment: TcxGridDBColumn
        DataBinding.FieldName = 'LDepartment'
      end
      object cxGrid1DBTableView5Contractor_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Contractor_Id'
      end
      object cxGrid1DBTableView5LContractor: TcxGridDBColumn
        DataBinding.FieldName = 'LContractor'
      end
      object cxGrid1DBTableView5_1: TcxGridDBColumn
        DataBinding.FieldName = #924#959#957#940#948#945'_'#917#961#947#945#963#943#945#962
      end
      object cxGrid1DBTableView5DBColumn: TcxGridDBColumn
        DataBinding.FieldName = #917#958#959#960#955#953#963#956#959#962
      end
      object cxGrid1DBTableView5Foreman_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Foreman_Id'
      end
      object cxGrid1DBTableView5LForeman: TcxGridDBColumn
        DataBinding.FieldName = 'LForeman'
      end
      object cxGrid1DBTableView5Department_Foreman_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Department_Foreman_Id'
      end
      object cxGrid1DBTableView5LDepartment_Foreman: TcxGridDBColumn
        DataBinding.FieldName = 'LDepartment_Foreman'
      end
      object cxGrid1DBTableView5_2: TcxGridDBColumn
        DataBinding.FieldName = #928#917#929#921#915#929#913#934#919'_'#917#929#915#913#931#921#913#931
      end
      object cxGrid1DBTableView5Contractors_Name: TcxGridDBColumn
        DataBinding.FieldName = 'Contractors_Name'
      end
      object cxGrid1DBTableView5Departments_Name: TcxGridDBColumn
        DataBinding.FieldName = 'Departments_Name'
      end
      object cxGrid1DBTableView5FullFilled: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilled'
      end
      object cxGrid1DBTableView5FullFilledDT: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledDT'
      end
      object cxGrid1DBTableView5FullFilledUsr: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledUsr'
      end
      object cxGrid1DBTableView5From_Id_Copy: TcxGridDBColumn
        DataBinding.FieldName = 'From_Id_Copy'
      end
      object cxGrid1DBTableView5Deleted: TcxGridDBColumn
        DataBinding.FieldName = 'Deleted'
      end
      object cxGrid1DBTableView5DelUsr: TcxGridDBColumn
        DataBinding.FieldName = 'DelUsr'
      end
      object cxGrid1DBTableView5DelDT: TcxGridDBColumn
        DataBinding.FieldName = 'DelDT'
      end
      object cxGrid1DBTableView5FullFilledCancel: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledCancel'
      end
      object cxGrid1DBTableView5WorkStopped: TcxGridDBColumn
        DataBinding.FieldName = 'WorkStopped'
      end
      object cxGrid1DBTableView5WorkStoppedUsr: TcxGridDBColumn
        DataBinding.FieldName = 'WorkStoppedUsr'
      end
      object cxGrid1DBTableView5WorkStoppedDT: TcxGridDBColumn
        DataBinding.FieldName = 'WorkStoppedDT'
      end
      object cxGrid1DBTableView5DTime: TcxGridDBColumn
        DataBinding.FieldName = 'DTime'
      end
      object cxGrid1DBTableView5Issue_Date_Full: TcxGridDBColumn
        DataBinding.FieldName = 'Issue_Date_Full'
      end
      object cxGrid1DBTableView5InsDT: TcxGridDBColumn
        DataBinding.FieldName = 'InsDT'
      end
      object cxGrid1DBTableView5InsUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InsUsr'
      end
    end
    object cxGrid1DBTableView3: TcxGridDBTableView [4]
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
      OnCellDblClick = cxGrid1DBTableView3CellDblClick
      DataController.DataSource = dtsMain
      DataController.DetailKeyFieldNames = 'Id'
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
      object cxGrid1DBTableView3Id: TcxGridDBColumn
        DataBinding.FieldName = 'Id'
      end
      object cxGrid1DBTableView3Issue_Date: TcxGridDBColumn
        DataBinding.FieldName = 'Issue_Date'
      end
      object cxGrid1DBTableView3Start_Time: TcxGridDBColumn
        DataBinding.FieldName = 'Start_Time'
      end
      object cxGrid1DBTableView3End_Time: TcxGridDBColumn
        DataBinding.FieldName = 'End_Time'
      end
      object cxGrid1DBTableView3_: TcxGridDBColumn
        DataBinding.FieldName = #913#961'_'#915#957#969#963#964#959#960#959#953#951#963#951#962
      end
      object cxGrid1DBTableView3Department_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Department_Id'
      end
      object cxGrid1DBTableView3LDepartment: TcxGridDBColumn
        DataBinding.FieldName = 'LDepartment'
      end
      object cxGrid1DBTableView3Contractor_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Contractor_Id'
      end
      object cxGrid1DBTableView3LContractor: TcxGridDBColumn
        DataBinding.FieldName = 'LContractor'
      end
      object cxGrid1DBTableView3_1: TcxGridDBColumn
        DataBinding.FieldName = #924#959#957#940#948#945'_'#917#961#947#945#963#943#945#962
      end
      object cxGrid1DBTableView3DBColumn: TcxGridDBColumn
        DataBinding.FieldName = #917#958#959#960#955#953#963#956#959#962
      end
      object cxGrid1DBTableView3Foreman_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Foreman_Id'
      end
      object cxGrid1DBTableView3LForeman: TcxGridDBColumn
        DataBinding.FieldName = 'LForeman'
      end
      object cxGrid1DBTableView3Department_Foreman_Id: TcxGridDBColumn
        DataBinding.FieldName = 'Department_Foreman_Id'
      end
      object cxGrid1DBTableView3LDepartment_Foreman: TcxGridDBColumn
        DataBinding.FieldName = 'LDepartment_Foreman'
      end
      object cxGrid1DBTableView3_2: TcxGridDBColumn
        DataBinding.FieldName = #928#917#929#921#915#929#913#934#919'_'#917#929#915#913#931#921#913#931
      end
      object cxGrid1DBTableView3Contractors_Name: TcxGridDBColumn
        DataBinding.FieldName = 'Contractors_Name'
      end
      object cxGrid1DBTableView3Departments_Name: TcxGridDBColumn
        DataBinding.FieldName = 'Departments_Name'
      end
      object cxGrid1DBTableView3FullFilled: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilled'
      end
      object cxGrid1DBTableView3FullFilledDT: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledDT'
      end
      object cxGrid1DBTableView3FullFilledUsr: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledUsr'
      end
      object cxGrid1DBTableView3From_Id_Copy: TcxGridDBColumn
        DataBinding.FieldName = 'From_Id_Copy'
      end
      object cxGrid1DBTableView3Deleted: TcxGridDBColumn
        DataBinding.FieldName = 'Deleted'
      end
      object cxGrid1DBTableView3DelUsr: TcxGridDBColumn
        DataBinding.FieldName = 'DelUsr'
      end
      object cxGrid1DBTableView3DelDT: TcxGridDBColumn
        DataBinding.FieldName = 'DelDT'
      end
      object cxGrid1DBTableView3FullFilledCancel: TcxGridDBColumn
        DataBinding.FieldName = 'FullFilledCancel'
      end
      object cxGrid1DBTableView3WorkStopped: TcxGridDBColumn
        DataBinding.FieldName = 'WorkStopped'
      end
      object cxGrid1DBTableView3WorkStoppedUsr: TcxGridDBColumn
        DataBinding.FieldName = 'WorkStoppedUsr'
      end
      object cxGrid1DBTableView3WorkStoppedDT: TcxGridDBColumn
        DataBinding.FieldName = 'WorkStoppedDT'
      end
      object cxGrid1DBTableView3DTime: TcxGridDBColumn
        DataBinding.FieldName = 'DTime'
      end
      object cxGrid1DBTableView3Issue_Date_Full: TcxGridDBColumn
        DataBinding.FieldName = 'Issue_Date_Full'
      end
      object cxGrid1DBTableView3InsDT: TcxGridDBColumn
        DataBinding.FieldName = 'InsDT'
      end
      object cxGrid1DBTableView3InsUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InsUsr'
      end
    end
    object cxGrid1Level2: TcxGridLevel
      GridView = cxGrid1DBTableView2
    end
    object cxGrid1Level3: TcxGridLevel
      GridView = cxGrid1DBTableView3
    end
    object cxGrid1Level4: TcxGridLevel
      GridView = cxGrid1DBTableView4
    end
    object cxGrid1Level5: TcxGridLevel
      GridView = cxGrid1DBTableView5
    end
  end
  inherited qryMain: TADOQuery
    OnCalcFields = qryMainCalcFields
    SQL.Strings = (
      'SELECT *'
      'FROM [V_WorkPermits]'
      '')
    Left = 24
    Top = 88
    object qryMainId: TIntegerField
      FieldName = 'Id'
    end
    object qryMainIssue_Date: TDateTimeField
      FieldName = 'Issue_Date'
      ReadOnly = True
    end
    object qryMainStart_Time: TDateTimeField
      FieldName = 'Start_Time'
    end
    object qryMainEnd_Time: TDateTimeField
      FieldName = 'End_Time'
    end
    object qryMainΑρ_Γνωστοποιησης: TWideStringField
      FieldName = #913#961'_'#915#957#969#963#964#959#960#959#953#951#963#951#962
    end
    object qryMainDepartment_Id: TIntegerField
      FieldName = 'Department_Id'
    end
    object qryMainLDepartment: TStringField
      FieldKind = fkLookup
      FieldName = 'LDepartment'
      LookupDataSet = qryDepartments
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'Department_Id'
      Lookup = True
    end
    object qryMainContractor_Id: TIntegerField
      FieldName = 'Contractor_Id'
    end
    object qryMainLContractor: TStringField
      FieldKind = fkLookup
      FieldName = 'LContractor'
      LookupDataSet = qryContractors
      LookupKeyFields = 'Id'
      LookupResultField = 'Company'
      KeyFields = 'Contractor_Id'
      Lookup = True
    end
    object qryMainΜονάδα_Εργασίας: TWideStringField
      FieldName = #924#959#957#940#948#945'_'#917#961#947#945#963#943#945#962
      Size = 100
    end
    object qryMainΕξοπλισμος: TWideStringField
      FieldName = #917#958#959#960#955#953#963#956#959#962
      Size = 100
    end
    object qryMainForeman_Id: TIntegerField
      FieldName = 'Foreman_Id'
    end
    object qryMainLForeman: TStringField
      FieldKind = fkLookup
      FieldName = 'LForeman'
      LookupDataSet = qryForemen
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'Foreman_Id'
      Lookup = True
    end
    object qryMainDepartment_Foreman_Id: TIntegerField
      FieldName = 'Department_Foreman_Id'
    end
    object qryMainLDepartment_Foreman: TStringField
      FieldKind = fkLookup
      FieldName = 'LDepartment_Foreman'
      LookupDataSet = qryDepartment_Foremen
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'Department_Foreman_Id'
      Lookup = True
    end
    object qryMainΠΕΡΙΓΡΑΦΗ_ΕΡΓΑΣΙΑΣ: TWideStringField
      FieldName = #928#917#929#921#915#929#913#934#919'_'#917#929#915#913#931#921#913#931
      FixedChar = True
      Size = 200
    end
    object qryMainContractors_Name: TWideStringField
      FieldName = 'Contractors_Name'
      Size = 100
    end
    object qryMainDepartments_Name: TWideStringField
      FieldName = 'Departments_Name'
      Size = 50
    end
    object qryMainFullFilled: TBooleanField
      FieldName = 'FullFilled'
    end
    object qryMainFullFilledDT: TDateTimeField
      FieldName = 'FullFilledDT'
    end
    object qryMainFullFilledUsr: TIntegerField
      FieldName = 'FullFilledUsr'
    end
    object qryMainFrom_Id_Copy: TIntegerField
      FieldName = 'From_Id_Copy'
    end
    object qryMainDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryMainDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryMainDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryMainFullFilledCancel: TBooleanField
      FieldName = 'FullFilledCancel'
    end
    object qryMainWorkStopped: TBooleanField
      FieldName = 'WorkStopped'
    end
    object qryMainWorkStoppedUsr: TIntegerField
      FieldName = 'WorkStoppedUsr'
    end
    object qryMainWorkStoppedDT: TDateTimeField
      FieldName = 'WorkStoppedDT'
    end
    object qryMainDTime: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'DTime'
      Calculated = True
    end
    object qryMainIssue_Date_Full: TDateTimeField
      FieldName = 'Issue_Date_Full'
    end
    object qryMainInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryMainInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
  end
  inherited dtsMain: TDataSource
    Left = 92
    Top = 100
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    Left = 44
    Top = 444
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 42345.494841504630000000
      BuiltInReportLink = True
    end
  end
  inherited PrinterSetupDialog1: TPrinterSetupDialog
    Left = 136
    Top = 444
  end
  object VL_FPass: TADOQuery [7]
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [stFPass]'
      '')
    Left = 692
    Top = 44
    object VL_FPassId: TIntegerField
      FieldName = 'Id'
    end
    object VL_FPassLogin: TWideStringField
      FieldName = 'Login'
      Size = 30
    end
    object VL_FPassPasswd: TWideStringField
      FieldName = 'Passwd'
    end
    object VL_FPassGroup: TSmallintField
      FieldName = 'Group'
    end
    object VL_FPassName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object VL_FPassAddress: TWideStringField
      FieldName = 'Address'
      Size = 50
    end
    object VL_FPassEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object VL_FPassPhone: TWideStringField
      FieldName = 'Phone'
      Size = 30
    end
    object VL_FPassConn_Time: TFloatField
      FieldName = 'Conn_Time'
    end
    object VL_FPassValid_Till: TDateTimeField
      FieldName = 'Valid_Till'
    end
    object VL_FPassStath: TIntegerField
      FieldName = 'Stath'
    end
    object VL_FPassDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object VL_FPassDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object VL_FPassDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object VL_FPassInActive: TBooleanField
      FieldName = 'InActive'
    end
    object VL_FPassInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object VL_FPassInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object VL_FPassMaint_Log: TBooleanField
      FieldName = 'Maint_Log'
    end
    object VL_FPassCheck_Serial: TBooleanField
      FieldName = 'Check_Serial'
    end
    object VL_FPassSerial1: TIntegerField
      FieldName = 'Serial1'
    end
    object VL_FPassSerial2: TIntegerField
      FieldName = 'Serial2'
    end
    object VL_FPassSerial3: TIntegerField
      FieldName = 'Serial3'
    end
  end
  object dsVL_FPass: TDataSource [8]
    AutoEdit = False
    DataSet = VL_FPass
    Left = 780
    Top = 44
  end
  inherited VTableFieldsNames: TADOQuery
    Left = 168
    Top = 200
  end
  inherited qryFieldNames: TADOQuery
    Left = 60
    Top = 200
  end
  object qryContractors: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Id,Company'
      'FROM [Contractors]')
    Left = 668
    Top = 104
    object qryContractorsId: TIntegerField
      FieldName = 'Id'
    end
    object qryContractorsCompany: TWideStringField
      FieldName = 'Company'
      Size = 100
    end
  end
  object dsqryContractors: TDataSource
    AutoEdit = False
    DataSet = qryContractors
    Left = 768
    Top = 104
  end
  object qryDepartments: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Departments')
    Left = 668
    Top = 152
    object qryDepartmentsid: TIntegerField
      FieldName = 'id'
    end
    object qryDepartmentsName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object dsqryDepartments: TDataSource
    AutoEdit = False
    DataSet = qryDepartments
    Left = 764
    Top = 152
  end
  object qryForemen: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Foremen')
    Left = 668
    Top = 200
    object IntegerField1: TIntegerField
      FieldName = 'id'
    end
    object WideStringField1: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object dsqryForemen: TDataSource
    AutoEdit = False
    DataSet = qryForemen
    Left = 764
    Top = 200
  end
  object qryDepartment_Foremen: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Department_Foremen')
    Left = 668
    Top = 248
    object IntegerField2: TIntegerField
      FieldName = 'id'
    end
    object WideStringField2: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object dsqryDepartment_Foremen: TDataSource
    AutoEdit = False
    DataSet = qryDepartment_Foremen
    Left = 764
    Top = 248
  end
end
