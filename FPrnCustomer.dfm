inherited frmPrnCustomer: TfrmPrnCustomer
  Left = 322
  Top = 321
  BorderIcons = []
  Caption = #917#954#964#973#960#969#963#951' '#960#949#955#945#964#974#957
  ClientHeight = 433
  ClientWidth = 896
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  ExplicitWidth = 904
  ExplicitHeight = 460
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 0
    Top = 23
    Width = 896
    Height = 410
    Align = alClient
    PopupMenu = popFilter
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
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
      DataController.DataSource = dtsCustomer
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
      object cxGrid1DBTableView1CUSTOMERID: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMERID'
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
      end
      object cxGrid1DBTableView1STREET: TcxGridDBColumn
        DataBinding.FieldName = 'STREET'
      end
      object cxGrid1DBTableView1ZIP: TcxGridDBColumn
        DataBinding.FieldName = 'ZIP'
      end
      object cxGrid1DBTableView1CITY: TcxGridDBColumn
        DataBinding.FieldName = 'CITY'
      end
      object cxGrid1DBTableView1AFM: TcxGridDBColumn
        DataBinding.FieldName = 'AFM'
      end
      object cxGrid1DBTableView1DOY: TcxGridDBColumn
        DataBinding.FieldName = 'DOY'
      end
      object cxGrid1DBTableView1STARTDATE: TcxGridDBColumn
        DataBinding.FieldName = 'STARTDATE'
      end
      object cxGrid1DBTableView1AREAID: TcxGridDBColumn
        DataBinding.FieldName = 'AREAID'
      end
      object cxGrid1DBTableView1LOCATIONID: TcxGridDBColumn
        DataBinding.FieldName = 'LOCATIONID'
      end
      object cxGrid1DBTableView1CGROUPID: TcxGridDBColumn
        DataBinding.FieldName = 'CGROUPID'
      end
      object cxGrid1DBTableView1CCLASSID: TcxGridDBColumn
        DataBinding.FieldName = 'CCLASSID'
      end
      object cxGrid1DBTableView1CREDITAMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'CREDITAMOUNT'
      end
      object cxGrid1DBTableView1INSDT: TcxGridDBColumn
        DataBinding.FieldName = 'INSDT'
      end
      object cxGrid1DBTableView1UPDDT: TcxGridDBColumn
        DataBinding.FieldName = 'UPDDT'
      end
      object cxGrid1DBTableView1INSUSR: TcxGridDBColumn
        DataBinding.FieldName = 'INSUSR'
      end
      object cxGrid1DBTableView1UPDUSR: TcxGridDBColumn
        DataBinding.FieldName = 'UPDUSR'
      end
      object cxGrid1DBTableView1PROFESSION: TcxGridDBColumn
        DataBinding.FieldName = 'PROFESSION'
      end
      object cxGrid1DBTableView1BRANCHID: TcxGridDBColumn
        DataBinding.FieldName = 'BRANCHID'
      end
      object cxGrid1DBTableView1SAPCODE: TcxGridDBColumn
        DataBinding.FieldName = 'SAPCODE'
      end
      object cxGrid1DBTableView1ISACTIVE: TcxGridDBColumn
        DataBinding.FieldName = 'ISACTIVE'
      end
      object cxGrid1DBTableView1SALESMENID: TcxGridDBColumn
        DataBinding.FieldName = 'SALESMENID'
      end
      object cxGrid1DBTableView1DIAKID: TcxGridDBColumn
        DataBinding.FieldName = 'DIAKID'
      end
      object cxGrid1DBTableView1ISTEST: TcxGridDBColumn
        DataBinding.FieldName = 'ISTEST'
      end
      object cxGrid1DBTableView1ISCONS: TcxGridDBColumn
        DataBinding.FieldName = 'ISCONS'
      end
      object cxGrid1DBTableView1AREABID: TcxGridDBColumn
        DataBinding.FieldName = 'AREABID'
      end
      object cxGrid1DBTableView1DATEPHEND: TcxGridDBColumn
        DataBinding.FieldName = 'DATEPHEND'
      end
      object cxGrid1DBTableView1DATELOEND: TcxGridDBColumn
        DataBinding.FieldName = 'DATELOEND'
      end
      object cxGrid1DBTableView1HASDETAILEMP: TcxGridDBColumn
        DataBinding.FieldName = 'HASDETAILEMP'
      end
      object cxGrid1DBTableView1ALLCARDSTOBL: TcxGridDBColumn
        DataBinding.FieldName = 'ALLCARDSTOBL'
      end
      object cxGrid1DBTableView1ALLCARDSTOBLDATE: TcxGridDBColumn
        DataBinding.FieldName = 'ALLCARDSTOBLDATE'
      end
      object cxGrid1DBTableView1ALLCARDSTOBLSYSDATE: TcxGridDBColumn
        DataBinding.FieldName = 'ALLCARDSTOBLSYSDATE'
      end
      object cxGrid1DBTableView1ALLCARDSTOBLUSR: TcxGridDBColumn
        DataBinding.FieldName = 'ALLCARDSTOBLUSR'
      end
      object cxGrid1DBTableView1CUSTOMEROFF: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMEROFF'
      end
      object cxGrid1DBTableView1CUSTOMEROFFDATE: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMEROFFDATE'
      end
      object cxGrid1DBTableView1CUSTOMEROFFSYSDATE: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMEROFFSYSDATE'
      end
      object cxGrid1DBTableView1CUSTOMEROFFUSR: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMEROFFUSR'
      end
      object cxGrid1DBTableView1CARDHASEMPNAME: TcxGridDBColumn
        DataBinding.FieldName = 'CARDHASEMPNAME'
      end
      object cxGrid1DBTableView1DATEEND: TcxGridDBColumn
        DataBinding.FieldName = 'DATEEND'
      end
      object cxGrid1DBTableView1CompanyTypeId: TcxGridDBColumn
        DataBinding.FieldName = 'CompanyTypeId'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object ActionToolBar1: TActionToolBar [1]
    Left = 0
    Top = 0
    Width = 896
    Height = 23
    ActionManager = dxBarManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  inherited popFilter: TPopupMenu
    inherited Variants1: TMenuItem
      object N3: TMenuItem
        OnClick = N3Click
      end
    end
  end
  object dxBarManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actClose
          end
          item
            Action = actPreview
          end
          item
            Action = actPrint1
          end
          item
            Action = actPrint2
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 616
    Top = 216
    StyleName = 'Platform Default'
  end
  object ActionList1: TActionList
    Left = 664
    Top = 112
    object actClose: TAction
      Caption = #917#960#953#963#964#961#959#966#942
      OnExecute = actCloseExecute
    end
    object actPreview: TAction
      Caption = #917#954#964#973#960#969#963#951
      OnExecute = actPreviewExecute
    end
    object actPrint1: TAction
      Caption = #917#960#953#963#964#959#955#942
      OnExecute = actPrint1Execute
    end
    object actPrint2: TAction
      Caption = #917#964#953#954#941#964#949#962
      OnExecute = actPrint2Execute
    end
  end
  object qryCustomer: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnFilterRecord = qryCustomerFilterRecord
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CUSTOMER')
    Left = 104
    Top = 208
    object qryCustomerCUSTOMERID: TAutoIncField
      FieldName = 'CUSTOMERID'
      ReadOnly = True
    end
    object qryCustomerNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object qryCustomerSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object qryCustomerZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryCustomerCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryCustomerAFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object qryCustomerDOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object qryCustomerSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qryCustomerAREAID: TIntegerField
      FieldName = 'AREAID'
    end
    object qryCustomerLOCATIONID: TIntegerField
      FieldName = 'LOCATIONID'
    end
    object qryCustomerCGROUPID: TIntegerField
      FieldName = 'CGROUPID'
    end
    object qryCustomerCCLASSID: TIntegerField
      FieldName = 'CCLASSID'
    end
    object qryCustomerCREDITAMOUNT: TFloatField
      FieldName = 'CREDITAMOUNT'
    end
    object qryCustomerINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryCustomerUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryCustomerINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryCustomerUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryCustomerPROFESSION: TWideStringField
      FieldName = 'PROFESSION'
      Size = 50
    end
    object qryCustomerBRANCHID: TIntegerField
      FieldName = 'BRANCHID'
    end
    object qryCustomerSAPCODE: TWideStringField
      FieldName = 'SAPCODE'
      Size = 10
    end
    object qryCustomerISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qryCustomerSALESMENID: TIntegerField
      FieldName = 'SALESMENID'
    end
    object qryCustomerDIAKID: TIntegerField
      FieldName = 'DIAKID'
    end
    object qryCustomerISTEST: TBooleanField
      FieldName = 'ISTEST'
    end
    object qryCustomerISCONS: TBooleanField
      FieldName = 'ISCONS'
    end
    object qryCustomerAREABID: TIntegerField
      FieldName = 'AREABID'
    end
    object qryCustomerDATEPHEND: TDateTimeField
      FieldName = 'DATEPHEND'
    end
    object qryCustomerDATELOEND: TDateTimeField
      FieldName = 'DATELOEND'
    end
    object qryCustomerHASDETAILEMP: TBooleanField
      FieldName = 'HASDETAILEMP'
    end
    object qryCustomerALLCARDSTOBL: TBooleanField
      FieldName = 'ALLCARDSTOBL'
    end
    object qryCustomerALLCARDSTOBLDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLDATE'
    end
    object qryCustomerALLCARDSTOBLSYSDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLSYSDATE'
    end
    object qryCustomerALLCARDSTOBLUSR: TIntegerField
      FieldName = 'ALLCARDSTOBLUSR'
    end
    object qryCustomerCUSTOMEROFF: TBooleanField
      FieldName = 'CUSTOMEROFF'
    end
    object qryCustomerCUSTOMEROFFDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFDATE'
    end
    object qryCustomerCUSTOMEROFFSYSDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFSYSDATE'
    end
    object qryCustomerCUSTOMEROFFUSR: TIntegerField
      FieldName = 'CUSTOMEROFFUSR'
    end
    object qryCustomerCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object qryCustomerDATEEND: TDateTimeField
      FieldName = 'DATEEND'
    end
    object qryCustomerCompanyTypeId: TIntegerField
      FieldName = 'CompanyTypeId'
    end
  end
  object dtsCustomer: TDataSource
    DataSet = qryCustomer
    Left = 104
    Top = 264
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 288
    Top = 104
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
  end
end
