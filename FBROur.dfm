inherited frmBROur: TfrmBROur
  Caption = #917#954#964#965#960#974#963#951' '#917#964#945#953#961#953#954#959#965' '#931#964#972#955#959#965
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid1: TcxGrid
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      DataController.DataSource = dtsMain
      DataController.DetailKeyFieldNames = 'id'
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = #931#965#957#959#955#953#954#972' '#914#940#961#959#962' ###,###,### '
          Kind = skSum
          FieldName = 'FinalWeight'
          Column = cxGrid1DBTableView1FinalWeight
          DisplayText = #931#965#957#959#955#953#954#972' '#914#940#961#959#962
        end>
      DateTimeHandling.IgnoreTimeForFiltering = True
      object cxGrid1DBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGrid1DBTableView1RegNoId: TcxGridDBColumn
        DataBinding.FieldName = 'RegNoId'
      end
      object cxGrid1DBTableView1LComp: TcxGridDBColumn
        DataBinding.FieldName = 'LComp'
      end
      object cxGrid1DBTableView1LReg: TcxGridDBColumn
        DataBinding.FieldName = 'LReg'
      end
      object cxGrid1DBTableView1LDrvName: TcxGridDBColumn
        DataBinding.FieldName = 'LDrvName'
      end
      object cxGrid1DBTableView1ProcedureState: TcxGridDBColumn
        DataBinding.FieldName = 'ProcedureState'
      end
      object cxGrid1DBTableView1FriendCar: TcxGridDBColumn
        DataBinding.FieldName = 'FriendCar'
      end
      object cxGrid1DBTableView1DrvNameId: TcxGridDBColumn
        DataBinding.FieldName = 'DrvNameId'
      end
      object cxGrid1DBTableView1CompanyId: TcxGridDBColumn
        DataBinding.FieldName = 'CompanyId'
      end
      object cxGrid1DBTableView1DA_Num: TcxGridDBColumn
        DataBinding.FieldName = 'DA_Num'
      end
      object cxGrid1DBTableView1Products: TcxGridDBColumn
        DataBinding.FieldName = 'Products'
      end
      object cxGrid1DBTableView1WithoutWeight: TcxGridDBColumn
        DataBinding.FieldName = 'WithoutWeight'
      end
      object cxGrid1DBTableView1DateTimeIn: TcxGridDBColumn
        DataBinding.FieldName = 'DateTimeIn'
        DateTimeGrouping = dtgByDate
        GroupIndex = 0
        Options.GroupFooters = False
        SortIndex = 0
        SortOrder = soDescending
      end
      object cxGrid1DBTableView1DateTimeOut: TcxGridDBColumn
        DataBinding.FieldName = 'DateTimeOut'
      end
      object cxGrid1DBTableView1InsUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InsUsr'
      end
      object cxGrid1DBTableView1InsDT: TcxGridDBColumn
        DataBinding.FieldName = 'InsDT'
      end
      object cxGrid1DBTableView1InUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InUsr'
      end
      object cxGrid1DBTableView1OutUsr: TcxGridDBColumn
        DataBinding.FieldName = 'OutUsr'
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
      object cxGrid1DBTableView1Comments: TcxGridDBColumn
        DataBinding.FieldName = 'Comments'
      end
      object cxGrid1DBTableView1CalcWeight: TcxGridDBColumn
        DataBinding.FieldName = 'CalcWeight'
      end
      object cxGrid1DBTableView1Water: TcxGridDBColumn
        DataBinding.FieldName = 'Water'
      end
      object cxGrid1DBTableView1Noted: TcxGridDBColumn
        DataBinding.FieldName = 'Noted'
      end
      object cxGrid1DBTableView1DTime: TcxGridDBColumn
        DataBinding.FieldName = 'DTime'
      end
      object cxGrid1DBTableView1SpecialEltepe: TcxGridDBColumn
        DataBinding.FieldName = 'SpecialEltepe'
      end
      object cxGrid1DBTableView1LDTime: TcxGridDBColumn
        DataBinding.FieldName = 'LDTime'
      end
      object cxGrid1DBTableView1LFPassIns: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassIns'
      end
      object cxGrid1DBTableView1LFPassOut: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassOut'
      end
      object cxGrid1DBTableView1LFPassFull: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassFull'
      end
      object cxGrid1DBTableView1LProcName: TcxGridDBColumn
        DataBinding.FieldName = 'LProcName'
      end
      object cxGrid1DBTableView1ProductId: TcxGridDBColumn
        DataBinding.FieldName = 'ProductId'
      end
      object cxGrid1DBTableView1FinalWeight: TcxGridDBColumn
        DataBinding.FieldName = 'FinalWeight'
      end
      object cxGrid1DBTableView1FinalWater: TcxGridDBColumn
        DataBinding.FieldName = 'FinalWater'
      end
      object cxGrid1DBTableView1LProdName: TcxGridDBColumn
        DataBinding.FieldName = 'LProdName'
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView [1]
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
      OnCellDblClick = cxGrid1DBTableView2CellDblClick
      DataController.DataSource = dtsMain
      DataController.DetailKeyFieldNames = 'id'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = #931#965#957#959#955#953#954#972' '#914#940#961#959#962' ###,###,### '
          Kind = skSum
          FieldName = 'FinalWeight'
          Column = cxGrid1DBTableView2FinalWeight
          DisplayText = #931#965#957#959#955#953#954#972' '#914#940#961#959#962
        end>
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
      object cxGrid1DBTableView2id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGrid1DBTableView2RegNoId: TcxGridDBColumn
        DataBinding.FieldName = 'RegNoId'
      end
      object cxGrid1DBTableView2LComp: TcxGridDBColumn
        DataBinding.FieldName = 'LComp'
      end
      object cxGrid1DBTableView2LReg: TcxGridDBColumn
        DataBinding.FieldName = 'LReg'
      end
      object cxGrid1DBTableView2LDrvName: TcxGridDBColumn
        DataBinding.FieldName = 'LDrvName'
        GroupIndex = 0
        Options.GroupFooters = False
        SortIndex = 0
        SortOrder = soAscending
      end
      object cxGrid1DBTableView2ProcedureState: TcxGridDBColumn
        DataBinding.FieldName = 'ProcedureState'
      end
      object cxGrid1DBTableView2FriendCar: TcxGridDBColumn
        DataBinding.FieldName = 'FriendCar'
      end
      object cxGrid1DBTableView2DrvNameId: TcxGridDBColumn
        DataBinding.FieldName = 'DrvNameId'
      end
      object cxGrid1DBTableView2CompanyId: TcxGridDBColumn
        DataBinding.FieldName = 'CompanyId'
      end
      object cxGrid1DBTableView2DA_Num: TcxGridDBColumn
        DataBinding.FieldName = 'DA_Num'
      end
      object cxGrid1DBTableView2Products: TcxGridDBColumn
        DataBinding.FieldName = 'Products'
      end
      object cxGrid1DBTableView2WithoutWeight: TcxGridDBColumn
        DataBinding.FieldName = 'WithoutWeight'
      end
      object cxGrid1DBTableView2DateTimeIn: TcxGridDBColumn
        DataBinding.FieldName = 'DateTimeIn'
      end
      object cxGrid1DBTableView2DateTimeOut: TcxGridDBColumn
        DataBinding.FieldName = 'DateTimeOut'
      end
      object cxGrid1DBTableView2InsUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InsUsr'
      end
      object cxGrid1DBTableView2InsDT: TcxGridDBColumn
        DataBinding.FieldName = 'InsDT'
      end
      object cxGrid1DBTableView2InUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InUsr'
      end
      object cxGrid1DBTableView2OutUsr: TcxGridDBColumn
        DataBinding.FieldName = 'OutUsr'
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
      object cxGrid1DBTableView2Comments: TcxGridDBColumn
        DataBinding.FieldName = 'Comments'
      end
      object cxGrid1DBTableView2CalcWeight: TcxGridDBColumn
        DataBinding.FieldName = 'CalcWeight'
      end
      object cxGrid1DBTableView2Water: TcxGridDBColumn
        DataBinding.FieldName = 'Water'
      end
      object cxGrid1DBTableView2Noted: TcxGridDBColumn
        DataBinding.FieldName = 'Noted'
      end
      object cxGrid1DBTableView2DTime: TcxGridDBColumn
        DataBinding.FieldName = 'DTime'
      end
      object cxGrid1DBTableView2SpecialEltepe: TcxGridDBColumn
        DataBinding.FieldName = 'SpecialEltepe'
      end
      object cxGrid1DBTableView2LDTime: TcxGridDBColumn
        DataBinding.FieldName = 'LDTime'
      end
      object cxGrid1DBTableView2LFPassIns: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassIns'
      end
      object cxGrid1DBTableView2LFPassOut: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassOut'
      end
      object cxGrid1DBTableView2LFPassFull: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassFull'
      end
      object cxGrid1DBTableView2LProcName: TcxGridDBColumn
        DataBinding.FieldName = 'LProcName'
      end
      object cxGrid1DBTableView2ProductId: TcxGridDBColumn
        DataBinding.FieldName = 'ProductId'
      end
      object cxGrid1DBTableView2FinalWeight: TcxGridDBColumn
        DataBinding.FieldName = 'FinalWeight'
      end
      object cxGrid1DBTableView2FinalWater: TcxGridDBColumn
        DataBinding.FieldName = 'FinalWater'
      end
      object cxGrid1DBTableView2LProdName: TcxGridDBColumn
        DataBinding.FieldName = 'LProdName'
      end
    end
    object cxGrid1DBTableView3: TcxGridDBTableView [2]
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
      DataController.DetailKeyFieldNames = 'id'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = #931#965#957#959#955#953#954#972' '#914#940#961#959#962' ###,###,### '
          Kind = skSum
          FieldName = 'FinalWeight'
          Column = cxGrid1DBTableView3FinalWeight
          DisplayText = #931#965#957#959#955#953#954#972' '#914#940#961#959#962
        end>
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
      object cxGrid1DBTableView3id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGrid1DBTableView3RegNoId: TcxGridDBColumn
        DataBinding.FieldName = 'RegNoId'
      end
      object cxGrid1DBTableView3LComp: TcxGridDBColumn
        DataBinding.FieldName = 'LComp'
      end
      object cxGrid1DBTableView3LReg: TcxGridDBColumn
        DataBinding.FieldName = 'LReg'
        GroupIndex = 0
        Options.GroupFooters = False
        SortIndex = 0
        SortOrder = soAscending
      end
      object cxGrid1DBTableView3LDrvName: TcxGridDBColumn
        DataBinding.FieldName = 'LDrvName'
      end
      object cxGrid1DBTableView3ProcedureState: TcxGridDBColumn
        DataBinding.FieldName = 'ProcedureState'
      end
      object cxGrid1DBTableView3FriendCar: TcxGridDBColumn
        DataBinding.FieldName = 'FriendCar'
      end
      object cxGrid1DBTableView3DrvNameId: TcxGridDBColumn
        DataBinding.FieldName = 'DrvNameId'
      end
      object cxGrid1DBTableView3CompanyId: TcxGridDBColumn
        DataBinding.FieldName = 'CompanyId'
      end
      object cxGrid1DBTableView3DA_Num: TcxGridDBColumn
        DataBinding.FieldName = 'DA_Num'
      end
      object cxGrid1DBTableView3Products: TcxGridDBColumn
        DataBinding.FieldName = 'Products'
      end
      object cxGrid1DBTableView3WithoutWeight: TcxGridDBColumn
        DataBinding.FieldName = 'WithoutWeight'
      end
      object cxGrid1DBTableView3DateTimeIn: TcxGridDBColumn
        DataBinding.FieldName = 'DateTimeIn'
      end
      object cxGrid1DBTableView3DateTimeOut: TcxGridDBColumn
        DataBinding.FieldName = 'DateTimeOut'
      end
      object cxGrid1DBTableView3InsUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InsUsr'
      end
      object cxGrid1DBTableView3InsDT: TcxGridDBColumn
        DataBinding.FieldName = 'InsDT'
      end
      object cxGrid1DBTableView3InUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InUsr'
      end
      object cxGrid1DBTableView3OutUsr: TcxGridDBColumn
        DataBinding.FieldName = 'OutUsr'
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
      object cxGrid1DBTableView3Comments: TcxGridDBColumn
        DataBinding.FieldName = 'Comments'
      end
      object cxGrid1DBTableView3CalcWeight: TcxGridDBColumn
        DataBinding.FieldName = 'CalcWeight'
      end
      object cxGrid1DBTableView3Water: TcxGridDBColumn
        DataBinding.FieldName = 'Water'
      end
      object cxGrid1DBTableView3Noted: TcxGridDBColumn
        DataBinding.FieldName = 'Noted'
      end
      object cxGrid1DBTableView3DTime: TcxGridDBColumn
        DataBinding.FieldName = 'DTime'
      end
      object cxGrid1DBTableView3SpecialEltepe: TcxGridDBColumn
        DataBinding.FieldName = 'SpecialEltepe'
      end
      object cxGrid1DBTableView3LDTime: TcxGridDBColumn
        DataBinding.FieldName = 'LDTime'
      end
      object cxGrid1DBTableView3LFPassIns: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassIns'
      end
      object cxGrid1DBTableView3LFPassOut: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassOut'
      end
      object cxGrid1DBTableView3LFPassFull: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassFull'
      end
      object cxGrid1DBTableView3LProcName: TcxGridDBColumn
        DataBinding.FieldName = 'LProcName'
      end
      object cxGrid1DBTableView3ProductId: TcxGridDBColumn
        DataBinding.FieldName = 'ProductId'
      end
      object cxGrid1DBTableView3FinalWeight: TcxGridDBColumn
        DataBinding.FieldName = 'FinalWeight'
      end
      object cxGrid1DBTableView3FinalWater: TcxGridDBColumn
        DataBinding.FieldName = 'FinalWater'
      end
      object cxGrid1DBTableView3LProdName: TcxGridDBColumn
        DataBinding.FieldName = 'LProdName'
      end
    end
    object cxGrid1DBTableView4: TcxGridDBTableView [3]
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
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = #931#965#957#959#955#953#954#972' '#914#940#961#959#962' ###,###,### '
          Kind = skSum
          FieldName = 'FinalWeight'
          Column = cxGrid1DBTableView4FinalWeight
          DisplayText = #931#965#957#959#955#953#954#972' '#914#940#961#959#962
        end>
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
      object cxGrid1DBTableView4id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGrid1DBTableView4RegNoId: TcxGridDBColumn
        DataBinding.FieldName = 'RegNoId'
      end
      object cxGrid1DBTableView4LComp: TcxGridDBColumn
        DataBinding.FieldName = 'LComp'
      end
      object cxGrid1DBTableView4LReg: TcxGridDBColumn
        DataBinding.FieldName = 'LReg'
      end
      object cxGrid1DBTableView4LDrvName: TcxGridDBColumn
        DataBinding.FieldName = 'LDrvName'
      end
      object cxGrid1DBTableView4ProcedureState: TcxGridDBColumn
        DataBinding.FieldName = 'ProcedureState'
      end
      object cxGrid1DBTableView4FriendCar: TcxGridDBColumn
        DataBinding.FieldName = 'FriendCar'
      end
      object cxGrid1DBTableView4DrvNameId: TcxGridDBColumn
        DataBinding.FieldName = 'DrvNameId'
      end
      object cxGrid1DBTableView4CompanyId: TcxGridDBColumn
        DataBinding.FieldName = 'CompanyId'
      end
      object cxGrid1DBTableView4DA_Num: TcxGridDBColumn
        DataBinding.FieldName = 'DA_Num'
      end
      object cxGrid1DBTableView4Products: TcxGridDBColumn
        DataBinding.FieldName = 'Products'
      end
      object cxGrid1DBTableView4WithoutWeight: TcxGridDBColumn
        DataBinding.FieldName = 'WithoutWeight'
      end
      object cxGrid1DBTableView4DateTimeIn: TcxGridDBColumn
        DataBinding.FieldName = 'DateTimeIn'
      end
      object cxGrid1DBTableView4DateTimeOut: TcxGridDBColumn
        DataBinding.FieldName = 'DateTimeOut'
      end
      object cxGrid1DBTableView4InsUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InsUsr'
      end
      object cxGrid1DBTableView4InsDT: TcxGridDBColumn
        DataBinding.FieldName = 'InsDT'
      end
      object cxGrid1DBTableView4InUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InUsr'
      end
      object cxGrid1DBTableView4OutUsr: TcxGridDBColumn
        DataBinding.FieldName = 'OutUsr'
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
      object cxGrid1DBTableView4Comments: TcxGridDBColumn
        DataBinding.FieldName = 'Comments'
      end
      object cxGrid1DBTableView4CalcWeight: TcxGridDBColumn
        DataBinding.FieldName = 'CalcWeight'
      end
      object cxGrid1DBTableView4Water: TcxGridDBColumn
        DataBinding.FieldName = 'Water'
      end
      object cxGrid1DBTableView4Noted: TcxGridDBColumn
        DataBinding.FieldName = 'Noted'
      end
      object cxGrid1DBTableView4DTime: TcxGridDBColumn
        DataBinding.FieldName = 'DTime'
      end
      object cxGrid1DBTableView4SpecialEltepe: TcxGridDBColumn
        DataBinding.FieldName = 'SpecialEltepe'
      end
      object cxGrid1DBTableView4LDTime: TcxGridDBColumn
        DataBinding.FieldName = 'LDTime'
      end
      object cxGrid1DBTableView4LFPassIns: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassIns'
      end
      object cxGrid1DBTableView4LFPassOut: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassOut'
      end
      object cxGrid1DBTableView4LFPassFull: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassFull'
      end
      object cxGrid1DBTableView4LProcName: TcxGridDBColumn
        DataBinding.FieldName = 'LProcName'
      end
      object cxGrid1DBTableView4ProductId: TcxGridDBColumn
        DataBinding.FieldName = 'ProductId'
      end
      object cxGrid1DBTableView4FinalWeight: TcxGridDBColumn
        DataBinding.FieldName = 'FinalWeight'
      end
      object cxGrid1DBTableView4FinalWater: TcxGridDBColumn
        DataBinding.FieldName = 'FinalWater'
      end
      object cxGrid1DBTableView4LProdName: TcxGridDBColumn
        DataBinding.FieldName = 'LProdName'
        Visible = False
        GroupIndex = 0
      end
    end
    object cxGrid1DBTableView5: TcxGridDBTableView [4]
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
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = #931#965#957#959#955#953#954#972' '#914#940#961#959#962' ###,###,### '
          Kind = skSum
          FieldName = 'FinalWeight'
          Column = cxGrid1DBTableView5FinalWeight
          DisplayText = #931#965#957#959#955#953#954#972' '#914#940#961#959#962
        end>
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
      object cxGrid1DBTableView5id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGrid1DBTableView5RegNoId: TcxGridDBColumn
        DataBinding.FieldName = 'RegNoId'
      end
      object cxGrid1DBTableView5LComp: TcxGridDBColumn
        DataBinding.FieldName = 'LComp'
      end
      object cxGrid1DBTableView5LReg: TcxGridDBColumn
        DataBinding.FieldName = 'LReg'
      end
      object cxGrid1DBTableView5LDrvName: TcxGridDBColumn
        DataBinding.FieldName = 'LDrvName'
      end
      object cxGrid1DBTableView5ProcedureState: TcxGridDBColumn
        DataBinding.FieldName = 'ProcedureState'
      end
      object cxGrid1DBTableView5FriendCar: TcxGridDBColumn
        DataBinding.FieldName = 'FriendCar'
      end
      object cxGrid1DBTableView5DrvNameId: TcxGridDBColumn
        DataBinding.FieldName = 'DrvNameId'
      end
      object cxGrid1DBTableView5CompanyId: TcxGridDBColumn
        DataBinding.FieldName = 'CompanyId'
      end
      object cxGrid1DBTableView5DA_Num: TcxGridDBColumn
        DataBinding.FieldName = 'DA_Num'
      end
      object cxGrid1DBTableView5Products: TcxGridDBColumn
        DataBinding.FieldName = 'Products'
      end
      object cxGrid1DBTableView5WithoutWeight: TcxGridDBColumn
        DataBinding.FieldName = 'WithoutWeight'
      end
      object cxGrid1DBTableView5DateTimeIn: TcxGridDBColumn
        DataBinding.FieldName = 'DateTimeIn'
        Visible = False
        DateTimeGrouping = dtgByDate
        GroupIndex = 1
      end
      object cxGrid1DBTableView5DateTimeOut: TcxGridDBColumn
        DataBinding.FieldName = 'DateTimeOut'
      end
      object cxGrid1DBTableView5InsUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InsUsr'
      end
      object cxGrid1DBTableView5InsDT: TcxGridDBColumn
        DataBinding.FieldName = 'InsDT'
      end
      object cxGrid1DBTableView5InUsr: TcxGridDBColumn
        DataBinding.FieldName = 'InUsr'
      end
      object cxGrid1DBTableView5OutUsr: TcxGridDBColumn
        DataBinding.FieldName = 'OutUsr'
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
      object cxGrid1DBTableView5Comments: TcxGridDBColumn
        DataBinding.FieldName = 'Comments'
      end
      object cxGrid1DBTableView5CalcWeight: TcxGridDBColumn
        DataBinding.FieldName = 'CalcWeight'
      end
      object cxGrid1DBTableView5Water: TcxGridDBColumn
        DataBinding.FieldName = 'Water'
      end
      object cxGrid1DBTableView5Noted: TcxGridDBColumn
        DataBinding.FieldName = 'Noted'
      end
      object cxGrid1DBTableView5DTime: TcxGridDBColumn
        DataBinding.FieldName = 'DTime'
      end
      object cxGrid1DBTableView5SpecialEltepe: TcxGridDBColumn
        DataBinding.FieldName = 'SpecialEltepe'
      end
      object cxGrid1DBTableView5LDTime: TcxGridDBColumn
        DataBinding.FieldName = 'LDTime'
      end
      object cxGrid1DBTableView5LFPassIns: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassIns'
      end
      object cxGrid1DBTableView5LFPassOut: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassOut'
      end
      object cxGrid1DBTableView5LFPassFull: TcxGridDBColumn
        DataBinding.FieldName = 'LFPassFull'
      end
      object cxGrid1DBTableView5LProcName: TcxGridDBColumn
        DataBinding.FieldName = 'LProcName'
      end
      object cxGrid1DBTableView5ProductId: TcxGridDBColumn
        DataBinding.FieldName = 'ProductId'
      end
      object cxGrid1DBTableView5FinalWeight: TcxGridDBColumn
        DataBinding.FieldName = 'FinalWeight'
      end
      object cxGrid1DBTableView5FinalWater: TcxGridDBColumn
        DataBinding.FieldName = 'FinalWater'
      end
      object cxGrid1DBTableView5LProdName: TcxGridDBColumn
        DataBinding.FieldName = 'LProdName'
        Visible = False
        GroupIndex = 0
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
      'SELECT * '
      'FROM [VCarsVisitOur]')
    Left = 96
    object qryMainid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryMainRegNoId: TIntegerField
      FieldName = 'RegNoId'
      Required = True
    end
    object qryMainLComp: TStringField
      DisplayLabel = #917#964#945#953#961#949#943#945
      FieldKind = fkLookup
      FieldName = 'LComp'
      LookupDataSet = VL_Company
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'CompanyId'
      Required = True
      Lookup = True
    end
    object qryMainLReg: TStringField
      DisplayLabel = #913#961#953#952#956'.'#922#965#954#955
      FieldKind = fkLookup
      FieldName = 'LReg'
      LookupDataSet = VL_RegNo
      LookupKeyFields = 'id'
      LookupResultField = 'RegNo'
      KeyFields = 'RegNoId'
      Required = True
      Lookup = True
    end
    object qryMainLDrvName: TStringField
      DisplayLabel = #927#957#959#956#945#964#949#960#974#957#965#956#959' '#927#948#951#947#959#973
      FieldKind = fkLookup
      FieldName = 'LDrvName'
      LookupDataSet = VL_Drivers
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'DrvNameId'
      Required = True
      Size = 40
      Lookup = True
    end
    object qryMainProcedureState: TIntegerField
      FieldName = 'ProcedureState'
      Required = True
    end
    object qryMainFriendCar: TBooleanField
      FieldName = 'FriendCar'
      Required = True
    end
    object qryMainDrvNameId: TIntegerField
      FieldName = 'DrvNameId'
      Required = True
    end
    object qryMainCompanyId: TIntegerField
      FieldName = 'CompanyId'
      Required = True
    end
    object qryMainDA_Num: TWideStringField
      FieldName = 'DA_Num'
      Required = True
      Size = 50
    end
    object qryMainProducts: TWideStringField
      FieldName = 'Products'
      Required = True
      Size = 50
    end
    object qryMainWithoutWeight: TBooleanField
      FieldName = 'WithoutWeight'
      Required = True
    end
    object qryMainDateTimeIn: TDateTimeField
      FieldName = 'DateTimeIn'
      Required = True
    end
    object qryMainDateTimeOut: TDateTimeField
      FieldName = 'DateTimeOut'
      Required = True
    end
    object qryMainInsUsr: TIntegerField
      FieldName = 'InsUsr'
      Required = True
    end
    object qryMainInsDT: TDateTimeField
      FieldName = 'InsDT'
      Required = True
    end
    object qryMainInUsr: TIntegerField
      FieldName = 'InUsr'
      Required = True
    end
    object qryMainOutUsr: TIntegerField
      FieldName = 'OutUsr'
      Required = True
    end
    object qryMainFullFilled: TBooleanField
      FieldName = 'FullFilled'
      Required = True
    end
    object qryMainFullFilledDT: TDateTimeField
      FieldName = 'FullFilledDT'
      Required = True
    end
    object qryMainFullFilledUsr: TIntegerField
      FieldName = 'FullFilledUsr'
      Required = True
    end
    object qryMainComments: TWideStringField
      FieldName = 'Comments'
      Required = True
      Size = 250
    end
    object qryMainCalcWeight: TBCDField
      FieldName = 'CalcWeight'
      Required = True
      Precision = 18
      Size = 0
    end
    object qryMainWater: TBCDField
      FieldName = 'Water'
      Required = True
      Precision = 18
      Size = 0
    end
    object qryMainNoted: TBooleanField
      FieldName = 'Noted'
      Required = True
    end
    object qryMainDTime: TDateTimeField
      FieldName = 'DTime'
      Required = True
    end
    object qryMainSpecialEltepe: TIntegerField
      FieldName = 'SpecialEltepe'
      Required = True
    end
    object qryMainLDTime: TStringField
      DisplayLabel = #916#953#940#961#954#949#953#945' '#917#958#972#948#959#965
      FieldKind = fkCalculated
      FieldName = 'LDTime'
      Required = True
      Calculated = True
    end
    object qryMainLFPassIns: TStringField
      FieldKind = fkLookup
      FieldName = 'LFPassIns'
      LookupDataSet = VL_FPass
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'InUsr'
      Required = True
      Lookup = True
    end
    object qryMainLFPassOut: TStringField
      FieldKind = fkLookup
      FieldName = 'LFPassOut'
      LookupDataSet = VL_FPass
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'OutUsr'
      Required = True
      Lookup = True
    end
    object qryMainLFPassFull: TStringField
      FieldKind = fkLookup
      FieldName = 'LFPassFull'
      LookupDataSet = VL_FPass
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'FullFilledUsr'
      Required = True
      Lookup = True
    end
    object qryMainLProcName: TStringField
      FieldKind = fkLookup
      FieldName = 'LProcName'
      LookupDataSet = VL_ProcName
      LookupKeyFields = 'id'
      LookupResultField = 'ProcName'
      KeyFields = 'ProcedureState'
      Required = True
      Lookup = True
    end
    object qryMainProductId: TIntegerField
      FieldName = 'ProductId'
    end
    object qryMainFinalWeight: TFloatField
      FieldName = 'FinalWeight'
      ReadOnly = True
      DisplayFormat = '###,###,##0'
    end
    object qryMainFinalWater: TFloatField
      FieldName = 'FinalWater'
      ReadOnly = True
      DisplayFormat = '###,###,##0'
    end
    object qryMainLProdName: TStringField
      FieldKind = fkLookup
      FieldName = 'LProdName'
      LookupDataSet = VL_Products
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'ProductId'
      Lookup = True
    end
    object qryMainMinDiff: TIntegerField
      FieldName = 'MinDiff'
      ReadOnly = True
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 42345.651664317130000000
      BuiltInReportLink = True
    end
  end
  object VL_Drivers: TADOQuery [7]
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [Drivers]'
      '')
    Left = 656
    Top = 88
    object VL_Driversid: TIntegerField
      FieldName = 'id'
    end
    object VL_DriversName: TWideStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
    object VL_DriversCompanyId: TIntegerField
      FieldName = 'CompanyId'
    end
    object VL_DriversComments: TWideStringField
      FieldName = 'Comments'
      FixedChar = True
      Size = 150
    end
  end
  object VL_Company: TADOQuery [8]
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [Company]'
      'WHERE [FriendCompany] = 1')
    Left = 656
    Top = 152
    object VL_CompanyName: TWideStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
    object VL_Companyid: TIntegerField
      FieldName = 'id'
    end
    object VL_CompanyComments: TWideStringField
      FieldName = 'Comments'
      FixedChar = True
      Size = 150
    end
    object VL_CompanyFriendCompany: TBooleanField
      FieldName = 'FriendCompany'
    end
    object VL_CompanySpecialCom: TBooleanField
      FieldName = 'SpecialCom'
    end
  end
  object VL_RegNo: TADOQuery [9]
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [Cars]'
      'WHERE NOT [CompanyId] IS NULL')
    Left = 656
    Top = 224
    object VL_RegNoid: TIntegerField
      FieldName = 'id'
    end
    object VL_RegNoCompanyId: TIntegerField
      FieldName = 'CompanyId'
    end
    object VL_RegNoRegNo: TWideStringField
      FieldName = 'RegNo'
      FixedChar = True
      Size = 10
    end
    object VL_RegNoCompany: TWideStringField
      FieldName = 'Company'
      FixedChar = True
      Size = 50
    end
    object VL_RegNoCapacity: TBCDField
      FieldName = 'Capacity'
      Precision = 18
      Size = 0
    end
    object VL_RegNoGross: TBCDField
      FieldName = 'Gross'
      Precision = 18
      Size = 0
    end
    object VL_RegNoTrustPeriod: TIntegerField
      FieldName = 'TrustPeriod'
    end
    object VL_RegNoComments: TWideStringField
      FieldName = 'Comments'
      Size = 200
    end
  end
  object dsVL_Drivers: TDataSource [10]
    AutoEdit = False
    DataSet = VL_Drivers
    Left = 760
    Top = 88
  end
  object dsVL_Company: TDataSource [11]
    AutoEdit = False
    DataSet = VL_Company
    Left = 760
    Top = 152
  end
  object dsVL_RegNo: TDataSource [12]
    DataSet = VL_RegNo
    Left = 760
    Top = 224
  end
  object VL_FPass: TADOQuery [13]
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [stFPass]'
      '')
    Left = 656
    Top = 296
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
  object dsVL_FPass: TDataSource [14]
    AutoEdit = False
    DataSet = VL_FPass
    Left = 768
    Top = 296
  end
  object VL_ProcName: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [ProcName]'
      'Where Our = 1'
      '')
    Left = 656
    Top = 360
    object VL_ProcNameid: TIntegerField
      FieldName = 'id'
    end
    object VL_ProcNameProcName: TWideStringField
      FieldName = 'ProcName'
    end
    object VL_ProcNameOur: TBooleanField
      FieldName = 'Our'
    end
    object VL_ProcNameOther: TBooleanField
      FieldName = 'Other'
    end
  end
  object dsVL_ProcName: TDataSource
    AutoEdit = False
    DataSet = VL_ProcName
    Left = 768
    Top = 360
  end
  object VL_Products: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [Products]'
      '')
    Left = 56
    Top = 88
    object VL_Productsid: TIntegerField
      FieldName = 'id'
    end
    object VL_ProductsName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object VL_ProductsComments: TWideStringField
      FieldName = 'Comments'
      Size = 150
    end
    object VL_ProductsPhoName: TWideStringField
      FieldName = 'PhoName'
      Size = 50
    end
  end
  object dsVL_Products: TDataSource
    AutoEdit = False
    DataSet = VL_Products
    Left = 160
    Top = 88
  end
end
