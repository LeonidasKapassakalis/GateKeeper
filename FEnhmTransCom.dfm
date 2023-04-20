inherited frmEnhmTransCom: TfrmEnhmTransCom
  Caption = #917#957#951#956#941#961#969#963#951' '#933#960#945#955#955#942#955#969#957
  OldCreateOrder = True
  OnActivate = FormCreate
  ExplicitWidth = 811
  ExplicitHeight = 480
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 0
    Top = 23
    Width = 703
    Height = 415
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 803
    ExplicitHeight = 430
    object cxGrid1DBTableView1: TcxGridDBTableView
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
      DataController.DataSource = dtsTran
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
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfAlwaysVisible
      object cxGrid1DBTableView1AcardAcardCode: TcxGridDBColumn
        DataBinding.FieldName = 'Acard.AcardCode'
        Visible = False
      end
      object cxGrid1DBTableView1TranTRANDATE: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.TRANDATE'
      end
      object cxGrid1DBTableView1TranTranId: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.TranId'
      end
      object cxGrid1DBTableView1ACARDACARDID: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.ACARDID'
        Visible = False
      end
      object cxGrid1DBTableView1CUSTOMERCUSTOMERId: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.CUSTOMERId'
        Visible = False
      end
      object cxGrid1DBTableView1ACardAcardCodeFull: TcxGridDBColumn
        DataBinding.FieldName = 'ACard.AcardCodeFull'
      end
      object cxGrid1DBTableView1EMPLOYEESName: TcxGridDBColumn
        DataBinding.FieldName = 'EMPLOYEES.Name'
      end
      object cxGrid1DBTableView1EMPLOYEESSurName: TcxGridDBColumn
        DataBinding.FieldName = 'EMPLOYEES.SurName'
      end
      object cxGrid1DBTableView1MerchantName: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.Name'
      end
      object cxGrid1DBTableView1MerchantSapCode: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.SapCode'
      end
      object cxGrid1DBTableView1TranKMBEFORE: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.KMBEFORE'
        Visible = False
      end
      object cxGrid1DBTableView1TranKMAFTER: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.KMAFTER'
        Visible = False
      end
      object cxGrid1DBTableView1TRANAmount: TcxGridDBColumn
        DataBinding.FieldName = 'TRAN.Amount'
      end
      object cxGrid1DBTableView1TranQUANTITY: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.QUANTITY'
      end
      object cxGrid1DBTableView1TranREFSTR: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.REFSTR'
        BestFitMaxWidth = 40
        MinWidth = 40
        Width = 40
      end
      object cxGrid1DBTableView1TranSITEMID: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.SITEMID'
      end
      object cxGrid1DBTableView1CustomerHasDetailEmp: TcxGridDBColumn
        DataBinding.FieldName = 'Customer.HasDetailEmp'
        Visible = False
      end
      object cxGrid1DBTableView1CustomerIsTest: TcxGridDBColumn
        DataBinding.FieldName = 'Customer.IsTest'
        Visible = False
      end
      object cxGrid1DBTableView1TranSTATIONUPD: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.STATIONUPD'
        Visible = False
      end
      object cxGrid1DBTableView1TranACARDUPD: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.ACARDUPD'
        Visible = False
      end
      object cxGrid1DBTableView1TranCOMMISSIONUPD: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.COMMISSIONUPD'
        Visible = False
      end
      object cxGrid1DBTableView1TranSTATIONUPDBT: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.STATIONUPDBT'
        Visible = False
      end
      object cxGrid1DBTableView1TranACARDUPDBT: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.ACARDUPDBT'
        Visible = False
      end
      object cxGrid1DBTableView1TranCOMMISSIONUPDBT: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.COMMISSIONUPDBT'
        Visible = False
      end
      object cxGrid1DBTableView1TranDISCOUNTUPD: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.DISCOUNTUPD'
        Visible = False
      end
      object cxGrid1DBTableView1TranDISCOUNTUPDBT: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.DISCOUNTUPDBT'
        Visible = False
      end
      object cxGrid1DBTableView1CustomerIsActive: TcxGridDBColumn
        DataBinding.FieldName = 'Customer.IsActive'
        Visible = False
      end
      object cxGrid1DBTableView1AcardEMPLOYEESID: TcxGridDBColumn
        DataBinding.FieldName = 'Acard.EMPLOYEESID'
        Visible = False
      end
      object cxGrid1DBTableView1TranCONSUMUPD: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.CONSUMUPD'
        Visible = False
      end
      object cxGrid1DBTableView1TranCONSUMDIVIDER: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.CONSUMDIVIDER'
        Visible = False
      end
      object cxGrid1DBTableView1TranDISQUANTITY: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.DISQUANTITY'
      end
      object cxGrid1DBTableView1TranDISAMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.DISAMOUNT'
      end
      object cxGrid1DBTableView1AcardACARDCODENUM: TcxGridDBColumn
        DataBinding.FieldName = 'Acard.ACARDCODENUM'
        Visible = False
      end
      object cxGrid1DBTableView1EMPLOYEESYpokId: TcxGridDBColumn
        DataBinding.FieldName = 'EMPLOYEES.YpokId'
        Visible = False
      end
      object cxGrid1DBTableView1MerchantMerchantId: TcxGridDBColumn
        DataBinding.FieldName = 'Merchant.MerchantId'
        Visible = False
      end
      object cxGrid1DBTableView1CustomerSapCode: TcxGridDBColumn
        DataBinding.FieldName = 'Customer.SapCode'
      end
      object cxGrid1DBTableView1EMPLOYEESMhtrId: TcxGridDBColumn
        DataBinding.FieldName = 'EMPLOYEES.MhtrId'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object ActionToolBar1: TActionToolBar [1]
    Left = 0
    Top = 0
    Width = 703
    Height = 23
    ActionManager = dxBarManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  inherited ActionMainList: TActionList
    Left = 584
    Top = 0
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
            Action = actEnhmPelSap
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 144
    Top = 64
    StyleName = 'Platform Default'
  end
  object ActionList1: TActionList
    Left = 240
    Top = 144
    object actClose: TAction
      Caption = #917#960#953#963#964#961#959#966#942
      OnExecute = actCloseExecute
    end
    object actPreview: TAction
      Caption = #917#954#964#973#960#969#963#951
      OnExecute = actPreviewExecute
    end
    object actEnhmPelSap: TAction
      Caption = #917#957#951#956#941#961#969#963#951' '#924#953#963#952#969#948#959#963#943#945#962
      OnExecute = actEnhmPelSapExecute
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
    end
  end
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM V_STATION_CUSTOMER_ACARD_TRAN_EMPLOYEES')
    Left = 48
    Top = 208
    object qryTranAcardAcardCode: TWideStringField
      FieldName = 'Acard.AcardCode'
      Size = 50
    end
    object qryTranTranTranId: TIntegerField
      FieldName = 'Tran.TranId'
    end
    object qryTranACARDACARDID: TIntegerField
      FieldName = 'ACARD.ACARDID'
    end
    object qryTranCUSTOMERCUSTOMERId: TIntegerField
      FieldName = 'CUSTOMER.CUSTOMERId'
    end
    object qryTranTRANAmount: TFloatField
      FieldName = 'TRAN.Amount'
    end
    object qryTranACardAcardCodeFull: TWideStringField
      FieldName = 'ACard.AcardCodeFull'
      ReadOnly = True
      Size = 19
    end
    object qryTranTranKMBEFORE: TIntegerField
      FieldName = 'Tran.KMBEFORE'
    end
    object qryTranTranKMAFTER: TIntegerField
      FieldName = 'Tran.KMAFTER'
    end
    object qryTranTranQUANTITY: TFloatField
      FieldName = 'Tran.QUANTITY'
    end
    object qryTranTranREFSTR: TWideStringField
      FieldName = 'Tran.REFSTR'
      Size = 50
    end
    object qryTranTranSITEMID: TIntegerField
      FieldName = 'Tran.SITEMID'
    end
    object qryTranCustomerHasDetailEmp: TBooleanField
      FieldName = 'Customer.HasDetailEmp'
    end
    object qryTranCustomerIsTest: TBooleanField
      FieldName = 'Customer.IsTest'
    end
    object qryTranTranSTATIONUPD: TBooleanField
      FieldName = 'Tran.STATIONUPD'
    end
    object qryTranTranACARDUPD: TBooleanField
      FieldName = 'Tran.ACARDUPD'
    end
    object qryTranTranCOMMISSIONUPD: TBooleanField
      FieldName = 'Tran.COMMISSIONUPD'
    end
    object qryTranTranSTATIONUPDBT: TIntegerField
      FieldName = 'Tran.STATIONUPDBT'
    end
    object qryTranTranACARDUPDBT: TIntegerField
      FieldName = 'Tran.ACARDUPDBT'
    end
    object qryTranTranCOMMISSIONUPDBT: TIntegerField
      FieldName = 'Tran.COMMISSIONUPDBT'
    end
    object qryTranTranDISCOUNTUPD: TBooleanField
      FieldName = 'Tran.DISCOUNTUPD'
    end
    object qryTranTranDISCOUNTUPDBT: TIntegerField
      FieldName = 'Tran.DISCOUNTUPDBT'
    end
    object qryTranCustomerIsActive: TBooleanField
      FieldName = 'Customer.IsActive'
    end
    object qryTranAcardEMPLOYEESID: TIntegerField
      FieldName = 'Acard.EMPLOYEESID'
    end
    object qryTranTranTRANDATE: TDateTimeField
      FieldName = 'Tran.TRANDATE'
    end
    object qryTranTranCONSUMUPD: TBooleanField
      FieldName = 'Tran.CONSUMUPD'
    end
    object qryTranTranCONSUMDIVIDER: TFloatField
      FieldName = 'Tran.CONSUMDIVIDER'
    end
    object qryTranTranDISQUANTITY: TFloatField
      FieldName = 'Tran.DISQUANTITY'
    end
    object qryTranTranDISAMOUNT: TFloatField
      FieldName = 'Tran.DISAMOUNT'
    end
    object qryTranAcardACARDCODENUM: TIntegerField
      FieldName = 'Acard.ACARDCODENUM'
    end
    object qryTranEMPLOYEESYpokId: TIntegerField
      FieldName = 'EMPLOYEES.YpokId'
    end
    object qryTranMerchantMerchantId: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object qryTranMerchantName: TWideStringField
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object qryTranMerchantSapCode: TWideStringField
      FieldName = 'Merchant.SapCode'
      Size = 10
    end
    object qryTranCustomerSapCode: TWideStringField
      FieldName = 'Customer.SapCode'
      Size = 10
    end
    object qryTranEMPLOYEESMhtrId: TIntegerField
      FieldName = 'EMPLOYEES.MhtrId'
    end
    object qryTranEMPLOYEESName: TWideStringField
      FieldName = 'EMPLOYEES.Name'
      Size = 50
    end
    object qryTranEMPLOYEESSurName: TWideStringField
      FieldName = 'EMPLOYEES.SurName'
      Size = 50
    end
  end
  object qrySItem: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SITEM')
    Left = 304
    Top = 184
    object qrySItemSITEMID: TAutoIncField
      FieldName = 'SITEMID'
      ReadOnly = True
    end
    object qrySItemDescr: TWideStringField
      FieldName = 'Descr'
      Size = 50
    end
    object qrySItemIGROUPID: TIntegerField
      FieldName = 'IGROUPID'
    end
    object qrySItemICLASSID: TIntegerField
      FieldName = 'ICLASSID'
    end
    object qrySItemPososto: TFloatField
      FieldName = 'Pososto'
    end
    object qrySItemCODEINTERMINAL: TIntegerField
      FieldName = 'CODEINTERMINAL'
    end
    object qrySItemMINPRICE: TFloatField
      FieldName = 'MINPRICE'
    end
    object qrySItemMAXPRICE: TFloatField
      FieldName = 'MAXPRICE'
    end
    object qrySItemCHECKPRICE: TBooleanField
      FieldName = 'CHECKPRICE'
    end
    object qrySItemInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qrySItemInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qrySItemUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qrySItemUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qrySItemDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qrySItemDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qrySItemDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qrySItemInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qrySItemInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qrySItemInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 48
    Top = 256
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 248
    Top = 72
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = cxGrid1
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
end
