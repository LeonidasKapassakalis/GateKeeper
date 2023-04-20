inherited frmPrnACard: TfrmPrnACard
  Left = 301
  Top = 235
  Caption = #917#954#964#973#960#969#963#951' '#954#945#961#964#974#957
  ClientHeight = 419
  ClientWidth = 772
  Menu = MainMenu1
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  ExplicitWidth = 780
  ExplicitHeight = 465
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid [0]
    Left = 0
    Top = 0
    Width = 772
    Height = 419
    Align = alClient
    PopupMenu = popFilter
    TabOrder = 0
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
      DataController.DataSource = dtsACard
      DataController.DetailKeyFieldNames = 'ACARDID'
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
      object cxGrid1DBTableView1FullCardNo: TcxGridDBColumn
        DataBinding.FieldName = 'FullCardNo'
      end
      object cxGrid1DBTableView1CUSTOMERName: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.Name'
      end
      object cxGrid1DBTableView1CUSTOMERSAPCODE: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.SAPCODE'
      end
      object cxGrid1DBTableView1REGNO: TcxGridDBColumn
        DataBinding.FieldName = 'REGNO'
      end
      object cxGrid1DBTableView1DAYAMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'DAYAMOUNT'
      end
      object cxGrid1DBTableView1MONTHAMOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'MONTHAMOUNT'
      end
      object cxGrid1DBTableView1ACARDISSUEDATE: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.ISSUEDATE'
      end
      object cxGrid1DBTableView1ACARDEXPIREDATE: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.EXPIREDATE'
      end
      object cxGrid1DBTableView1VTypeDescr: TcxGridDBColumn
        DataBinding.FieldName = 'VType.Descr'
      end
      object cxGrid1DBTableView1ACARDMETERBOOLEAN: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.METERBOOLEAN'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDPINBOOLEAN: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.PINBOOLEAN'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDINSDT: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.INSDT'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDUPDDT: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.UPDDT'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDINSUSR: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.INSUSR'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDUPDUSR: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.UPDUSR'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDSTARTDATE: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.STARTDATE'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDVTYPEID: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.VTYPEID'
        Visible = False
      end
      object cxGrid1DBTableView1LEmpName: TcxGridDBColumn
        DataBinding.FieldName = 'LEmpName'
      end
      object cxGrid1DBTableView1LEmpMhtrId: TcxGridDBColumn
        DataBinding.FieldName = 'LEmpMhtrId'
      end
      object cxGrid1DBTableView1ACARDCREATEBOOLEAN: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.CREATEBOOLEAN'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDBLACKLISTBOOLEAN: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.BLACKLISTBOOLEAN'
      end
      object cxGrid1DBTableView1ACARDBLACKLISTDATE: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.BLACKLISTDATE'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDBLACKLISTUSR: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.BLACKLISTUSR'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDBLACKLISTNOTES: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.BLACKLISTNOTES'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDACARDID: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.ACARDID'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDACARDCODE: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.ACARDCODE'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDCUSTOMERID0: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.CUSTOMERID0'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDIGROUPID1: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.IGROUPID1'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDIGROUPID2: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.IGROUPID2'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDIGROUPID3: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.IGROUPID3'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDIGROUPID4: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.IGROUPID4'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDIGROUPID5: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.IGROUPID5'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDIGROUPID6: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.IGROUPID6'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDIGROUPID7: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.IGROUPID7'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDIGROUPID8: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.IGROUPID8'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDIGROUPID9: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.IGROUPID9'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDIGROUPID10: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.IGROUPID10'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDHOLDER: TcxGridDBColumn
        DataBinding.FieldName = 'ACARDHOLDER'
      end
      object cxGrid1DBTableView1ISACTIVE: TcxGridDBColumn
        DataBinding.FieldName = 'ISACTIVE'
      end
      object cxGrid1DBTableView1EXPIREPHDATE: TcxGridDBColumn
        DataBinding.FieldName = 'EXPIREPHDATE'
        Visible = False
      end
      object cxGrid1DBTableView1EXPIRELODATE: TcxGridDBColumn
        DataBinding.FieldName = 'EXPIRELODATE'
        Visible = False
      end
      object cxGrid1DBTableView1EMPLOYEESID: TcxGridDBColumn
        DataBinding.FieldName = 'EMPLOYEESID'
        Visible = False
      end
      object cxGrid1DBTableView1NEWCARDBOOLEAN: TcxGridDBColumn
        DataBinding.FieldName = 'NEWCARDBOOLEAN'
        Visible = False
      end
      object cxGrid1DBTableView1NEWCARDID: TcxGridDBColumn
        DataBinding.FieldName = 'NEWCARDID'
        Visible = False
      end
      object cxGrid1DBTableView1CARDHASEMPNAME: TcxGridDBColumn
        DataBinding.FieldName = 'CARDHASEMPNAME'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDCODENUM: TcxGridDBColumn
        DataBinding.FieldName = 'ACARDCODENUM'
        Visible = False
      end
      object cxGrid1DBTableView1INACTIVEDATE: TcxGridDBColumn
        DataBinding.FieldName = 'INACTIVEDATE'
        Visible = False
      end
      object cxGrid1DBTableView1INACTIVEUSR: TcxGridDBColumn
        DataBinding.FieldName = 'INACTIVEUSR'
        Visible = False
      end
      object cxGrid1DBTableView1INACTIVENOTES: TcxGridDBColumn
        DataBinding.FieldName = 'INACTIVENOTES'
        Visible = False
      end
      object cxGrid1DBTableView1COSTCENTERID: TcxGridDBColumn
        DataBinding.FieldName = 'COSTCENTERID'
        Visible = False
      end
      object cxGrid1DBTableView1CClassDescr: TcxGridDBColumn
        DataBinding.FieldName = 'CClass.Descr'
        Visible = False
      end
      object cxGrid1DBTableView1CUSTOMERDescr: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.Descr'
        Visible = False
      end
      object cxGrid1DBTableView1CGroupDescr: TcxGridDBColumn
        DataBinding.FieldName = 'CGroup.Descr'
        Visible = False
      end
      object cxGrid1DBTableView1AcardCUSTOMERId: TcxGridDBColumn
        DataBinding.FieldName = 'Acard.CUSTOMERId'
        Visible = False
      end
      object cxGrid1DBTableView1CUSTOMERStreet: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.Street'
        Visible = False
      end
      object cxGrid1DBTableView1CUSTOMERZip: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.Zip'
        Visible = False
      end
      object cxGrid1DBTableView1CUSTOMERCity: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.City'
        Visible = False
      end
      object cxGrid1DBTableView1CUSTOMERHASDETAILEMP: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.HASDETAILEMP'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1CUSTOMERCUSTOMERID: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.CUSTOMERID'
        Visible = False
      end
      object cxGrid1DBTableView1CUSTOMERISTEST: TcxGridDBColumn
        DataBinding.FieldName = 'CUSTOMER.ISTEST'
        Visible = False
      end
      object cxGrid1DBTableView1CostCenterCCName: TcxGridDBColumn
        DataBinding.FieldName = 'CostCenter.CCName'
        Visible = False
      end
      object cxGrid1DBTableView1ACARDPENDING: TcxGridDBColumn
        DataBinding.FieldName = 'ACARD.PENDING'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object ActionList1: TActionList
    Left = 512
    Top = 104
    object actClose: TAction
      Caption = #917#960#953#963#964#961#959#966#942
      OnExecute = actCloseExecute
    end
    object actPreview: TAction
      Caption = #917#954#964#973#960#969#963#951
      Hint = #917#954#964#973#960#969#963#951
      OnExecute = actPreviewExecute
    end
    object actPrint: TAction
      Category = 'Prn'
      Caption = #913#960#959#963#964#959#955#942' '#922#945#961#964#974#957' '#931#965#957
      OnExecute = actPrintExecute
    end
    object actPrint1: TAction
      Category = 'Prn'
      Caption = #913#960#959#963#964#959#955#942' '#922#945#961#964#974#957' '#913#957#945#955'.'
      OnExecute = actPrint1Execute
    end
    object actPrint2: TAction
      Category = 'Prn'
      Caption = #913#957#940' E'#964#945#953#961#949#943#945
      OnExecute = actPrint2Execute
    end
    object actPrint3: TAction
      Category = 'Prn'
      Caption = #913#957#940' E'#964#945#953#961#949#943#945' + '#933#960#940#955#955#951#955#959#962
      OnExecute = actPrint3Execute
    end
    object Action2: TAction
      Category = 'Prn'
      Caption = #917#954#964#965#960#974#963#949#953#962
      OnExecute = Action2Execute
    end
    object actSendMellon: TAction
      Category = 'Prn'
      Caption = 'actSendMellon'
    end
    object actEnhmPending: TAction
      Caption = #917#957#951#956#941#961#969#963#951' Pending'
      OnExecute = actEnhmPendingExecute
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
          end>
        Visible = False
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 584
    Top = 8
    StyleName = 'Platform Default'
    object Action1: TAction
      Category = 'Prn'
      Caption = #917#954#964#973#960#969#963#951
    end
  end
  object qryACard: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryACardCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM V_ACARD_ETC_SINGLE')
    Left = 184
    Top = 72
    object qryACardFullCardNo: TStringField
      DisplayLabel = #922#969#948#953#954#972#962
      FieldKind = fkCalculated
      FieldName = 'FullCardNo'
      Calculated = True
    end
    object qryACardLEmpName: TStringField
      DisplayLabel = #917#961#947#945#950#972#956#949#957#959#962
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'LEmpName'
      LookupDataSet = qryEmployees
      LookupKeyFields = 'Id'
      LookupResultField = 'LNameSurname'
      KeyFields = 'EMPLOYEESID'
      Lookup = True
    end
    object qryACardLEmpMhtrId: TStringField
      DisplayLabel = #922#969#948'.'#924#951#964#961'.'#917#961#947'.'
      DisplayWidth = 5
      FieldKind = fkLookup
      FieldName = 'LEmpMhtrId'
      LookupDataSet = qryEmployees
      LookupKeyFields = 'Id'
      LookupResultField = 'MhtrId'
      KeyFields = 'EMPLOYEESID'
      Lookup = True
    end
    object qryACardACARDACARDID: TIntegerField
      FieldName = 'ACARD.ACARDID'
      Visible = False
    end
    object qryACardACARDACARDCODE: TWideStringField
      FieldName = 'ACARD.ACARDCODE'
      Visible = False
      Size = 50
    end
    object qryACardACARDCUSTOMERID0: TIntegerField
      FieldName = 'ACARD.CUSTOMERID0'
      Visible = False
    end
    object qryACardACARDISSUEDATE: TDateTimeField
      DisplayLabel = #904#957#945#961#958#951
      FieldName = 'ACARD.ISSUEDATE'
      DisplayFormat = 'ddddd'
    end
    object qryACardACARDEXPIREDATE: TDateTimeField
      DisplayLabel = #923#942#958#951
      FieldName = 'ACARD.EXPIREDATE'
      DisplayFormat = 'ddddd'
    end
    object qryACardACARDMETERBOOLEAN: TBooleanField
      FieldName = 'ACARD.METERBOOLEAN'
      Visible = False
    end
    object qryACardACARDPINBOOLEAN: TBooleanField
      FieldName = 'ACARD.PINBOOLEAN'
      Visible = False
    end
    object qryACardACARDINSDT: TDateTimeField
      FieldName = 'ACARD.INSDT'
      Visible = False
    end
    object qryACardACARDUPDDT: TDateTimeField
      FieldName = 'ACARD.UPDDT'
      Visible = False
    end
    object qryACardACARDINSUSR: TIntegerField
      FieldName = 'ACARD.INSUSR'
      Visible = False
    end
    object qryACardACARDUPDUSR: TIntegerField
      FieldName = 'ACARD.UPDUSR'
      Visible = False
    end
    object qryACardACARDSTARTDATE: TDateTimeField
      FieldName = 'ACARD.STARTDATE'
      Visible = False
    end
    object qryACardACARDVTYPEID: TIntegerField
      FieldName = 'ACARD.VTYPEID'
      Visible = False
    end
    object qryACardACARDCREATEBOOLEAN: TBooleanField
      FieldName = 'ACARD.CREATEBOOLEAN'
    end
    object qryACardACARDBLACKLISTBOOLEAN: TBooleanField
      DisplayLabel = 'BlackList'
      FieldName = 'ACARD.BLACKLISTBOOLEAN'
    end
    object qryACardACARDBLACKLISTDATE: TDateTimeField
      FieldName = 'ACARD.BLACKLISTDATE'
    end
    object qryACardACARDBLACKLISTUSR: TIntegerField
      FieldName = 'ACARD.BLACKLISTUSR'
    end
    object qryACardACARDBLACKLISTNOTES: TWideStringField
      FieldName = 'ACARD.BLACKLISTNOTES'
      Size = 200
    end
    object qryACardACARDIGROUPID1: TIntegerField
      FieldName = 'ACARD.IGROUPID1'
      Visible = False
    end
    object qryACardACARDIGROUPID2: TIntegerField
      FieldName = 'ACARD.IGROUPID2'
      Visible = False
    end
    object qryACardACARDIGROUPID3: TIntegerField
      FieldName = 'ACARD.IGROUPID3'
      Visible = False
    end
    object qryACardACARDIGROUPID4: TIntegerField
      FieldName = 'ACARD.IGROUPID4'
      Visible = False
    end
    object qryACardDAYAMOUNT: TFloatField
      DisplayLabel = #919#956#949#961'.'#908#961#953#959
      FieldName = 'DAYAMOUNT'
      currency = True
    end
    object qryACardMONTHAMOUNT: TFloatField
      DisplayLabel = #924#951#957'.'#908#961#953#959
      FieldName = 'MONTHAMOUNT'
      currency = True
    end
    object qryACardREGNO: TWideStringField
      DisplayLabel = #913#961'.'#922#965#954#955
      DisplayWidth = 10
      FieldName = 'REGNO'
      Size = 50
    end
    object qryACardACARDHOLDER: TWideStringField
      DisplayLabel = 'Holder'
      DisplayWidth = 20
      FieldName = 'ACARDHOLDER'
      Size = 30
    end
    object qryACardISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qryACardEXPIREPHDATE: TDateTimeField
      FieldName = 'EXPIREPHDATE'
      Visible = False
    end
    object qryACardEXPIRELODATE: TDateTimeField
      FieldName = 'EXPIRELODATE'
      Visible = False
    end
    object qryACardACARDIGROUPID5: TIntegerField
      FieldName = 'ACARD.IGROUPID5'
      Visible = False
    end
    object qryACardEMPLOYEESID: TIntegerField
      FieldName = 'EMPLOYEESID'
      Visible = False
    end
    object qryACardNEWCARDBOOLEAN: TBooleanField
      FieldName = 'NEWCARDBOOLEAN'
    end
    object qryACardNEWCARDID: TIntegerField
      FieldName = 'NEWCARDID'
    end
    object qryACardCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object qryACardACARDCODENUM: TIntegerField
      FieldName = 'ACARDCODENUM'
    end
    object qryACardINACTIVEDATE: TDateTimeField
      FieldName = 'INACTIVEDATE'
    end
    object qryACardINACTIVEUSR: TIntegerField
      FieldName = 'INACTIVEUSR'
    end
    object qryACardINACTIVENOTES: TWideStringField
      FieldName = 'INACTIVENOTES'
      FixedChar = True
      Size = 200
    end
    object qryACardACARDIGROUPID6: TIntegerField
      FieldName = 'ACARD.IGROUPID6'
      Visible = False
    end
    object qryACardACARDIGROUPID7: TIntegerField
      FieldName = 'ACARD.IGROUPID7'
      Visible = False
    end
    object qryACardACARDIGROUPID8: TIntegerField
      FieldName = 'ACARD.IGROUPID8'
      Visible = False
    end
    object qryACardACARDIGROUPID9: TIntegerField
      FieldName = 'ACARD.IGROUPID9'
      Visible = False
    end
    object qryACardACARDIGROUPID10: TIntegerField
      FieldName = 'ACARD.IGROUPID10'
      Visible = False
    end
    object qryACardCOSTCENTERID: TIntegerField
      FieldName = 'COSTCENTERID'
      Visible = False
    end
    object qryACardVTypeDescr: TWideStringField
      DisplayLabel = #932#965#960'.'#927#967#942#956
      DisplayWidth = 10
      FieldName = 'VType.Descr'
      Size = 50
    end
    object qryACardCClassDescr: TWideStringField
      FieldName = 'CClass.Descr'
      Visible = False
      Size = 50
    end
    object qryACardCUSTOMERDescr: TWideStringField
      FieldName = 'CUSTOMER.Descr'
      Visible = False
      Size = 50
    end
    object qryACardCUSTOMERName: TWideStringField
      DisplayLabel = #917#960#969#957#965#956#943#945
      DisplayWidth = 20
      FieldName = 'CUSTOMER.Name'
      Size = 50
    end
    object qryACardCGroupDescr: TWideStringField
      FieldName = 'CGroup.Descr'
      Visible = False
      Size = 50
    end
    object qryACardAcardCUSTOMERId: TIntegerField
      FieldName = 'Acard.CUSTOMERId'
      Visible = False
    end
    object qryACardCUSTOMERStreet: TWideStringField
      FieldName = 'CUSTOMER.Street'
      Visible = False
      Size = 50
    end
    object qryACardCUSTOMERZip: TWideStringField
      FieldName = 'CUSTOMER.Zip'
      Visible = False
      Size = 50
    end
    object qryACardCUSTOMERCity: TWideStringField
      FieldName = 'CUSTOMER.City'
      Visible = False
      Size = 50
    end
    object qryACardCUSTOMERSAPCODE: TWideStringField
      DisplayLabel = 'SAP'
      FieldName = 'CUSTOMER.SAPCODE'
      Size = 10
    end
    object qryACardCUSTOMERHASDETAILEMP: TBooleanField
      FieldName = 'CUSTOMER.HASDETAILEMP'
      Visible = False
    end
    object qryACardCUSTOMERCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMER.CUSTOMERID'
      Visible = False
    end
    object qryACardCUSTOMERISTEST: TBooleanField
      FieldName = 'CUSTOMER.ISTEST'
      Visible = False
    end
    object qryACardCostCenterCCName: TWideStringField
      FieldName = 'CostCenter.CCName'
      Visible = False
      Size = 50
    end
    object qryACardACARDPENDING: TBooleanField
      DisplayLabel = 'Pending'
      FieldName = 'ACARD.PENDING'
    end
  end
  object dtsACard: TDataSource
    DataSet = qryACard
    Left = 184
    Top = 136
  end
  object qryBlackList: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM BLACKLIST')
    Left = 352
    Top = 272
    object qryBlackListFullCardNo: TStringField
      FieldKind = fkCalculated
      FieldName = 'FullCardNo'
      Calculated = True
    end
    object qryBlackListBLACKLISTID: TAutoIncField
      FieldName = 'BLACKLISTID'
      ReadOnly = True
    end
    object qryBlackListACARDID: TIntegerField
      FieldName = 'ACARDID'
    end
    object qryBlackListFRDATE: TDateTimeField
      FieldName = 'FRDATE'
    end
    object qryBlackListTODATE: TDateTimeField
      FieldName = 'TODATE'
    end
    object qryBlackListNOTES: TWideStringField
      FieldName = 'NOTES'
      Size = 200
    end
    object qryBlackListINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryBlackListUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryBlackListINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryBlackListUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object dtsBlackList: TDataSource
    DataSet = qryBlackList
    Left = 288
    Top = 272
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 64
    Top = 152
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
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
  object qryEmployees: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryEmployeesCalcFields
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Employees')
    Left = 620
    Top = 112
    object qryEmployeesId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qryEmployeesCustomerId: TIntegerField
      FieldName = 'CustomerId'
    end
    object qryEmployeesMhtrId: TIntegerField
      FieldName = 'MhtrId'
    end
    object qryEmployeesName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object qryEmployeesSurName: TWideStringField
      FieldName = 'SurName'
      Size = 50
    end
    object qryEmployeesAddress: TWideStringField
      FieldName = 'Address'
      Size = 50
    end
    object qryEmployeesTK: TWideStringField
      FieldName = 'TK'
      Size = 5
    end
    object qryEmployeesTown: TWideStringField
      FieldName = 'Town'
      Size = 50
    end
    object qryEmployeesAFM: TWideStringField
      FieldName = 'AFM'
      Size = 9
    end
    object qryEmployeesDOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object qryEmployeesYpokId: TIntegerField
      FieldName = 'YpokId'
    end
    object qryEmployeesLNameSurname: TStringField
      FieldKind = fkCalculated
      FieldName = 'LNameSurname'
      Size = 40
      Calculated = True
    end
  end
  object IGroup: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryACardCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM  IGROUP')
    Left = 280
    Top = 48
    object IGroupId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object IGroupName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object IGroupBITNO: TIntegerField
      FieldName = 'BITNO'
    end
    object IGroupPOSOSTO: TFloatField
      FieldName = 'POSOSTO'
    end
    object IGroupInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object IGroupInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object IGroupUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object IGroupUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object IGroupDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object IGroupDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object IGroupDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object IGroupInActive: TBooleanField
      FieldName = 'InActive'
    end
    object IGroupInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object IGroupInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object dsIGroup: TDataSource
    DataSet = IGroup
    Left = 344
    Top = 48
  end
  object MainMenu1: TMainMenu
    Left = 440
    Top = 96
    object N4: TMenuItem
      Action = actClose
    end
    object N5: TMenuItem
      Action = actPreview
    end
    object N6: TMenuItem
      Action = Action2
      object N7: TMenuItem
        Action = actPrint
      end
      object N8: TMenuItem
        Action = actPrint1
      end
      object E1: TMenuItem
        Action = actPrint2
      end
      object E2: TMenuItem
        Action = actPrint3
      end
    end
    object Pending1: TMenuItem
      Action = actEnhmPending
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryACardCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM V_ACARD_ETC')
    Left = 272
    Top = 120
    object StringField1: TStringField
      DisplayLabel = #922#969#948#953#954#972#962
      FieldKind = fkCalculated
      FieldName = 'FullCardNo'
      Calculated = True
    end
    object StringField2: TStringField
      DisplayLabel = #917#961#947#945#950#972#956#949#957#959#962
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'LEmpName'
      LookupDataSet = qryEmployees
      LookupKeyFields = 'Id'
      LookupResultField = 'LNameSurname'
      KeyFields = 'EMPLOYEESID'
      Lookup = True
    end
    object StringField3: TStringField
      DisplayLabel = #922#969#948'.'#924#951#964#961'.'#917#961#947'.'
      DisplayWidth = 5
      FieldKind = fkLookup
      FieldName = 'LEmpMhtrId'
      LookupDataSet = qryEmployees
      LookupKeyFields = 'Id'
      LookupResultField = 'MhtrId'
      KeyFields = 'EMPLOYEESID'
      Lookup = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'ACARD.ACARDID'
    end
    object WideStringField1: TWideStringField
      FieldName = 'ACARD.ACARDCODE'
      Size = 50
    end
    object IntegerField2: TIntegerField
      FieldName = 'ACARD.CUSTOMERID0'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'ACARD.ISSUEDATE'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'ACARD.EXPIREDATE'
    end
    object BooleanField1: TBooleanField
      FieldName = 'ACARD.METERBOOLEAN'
    end
    object BooleanField2: TBooleanField
      FieldName = 'ACARD.PINBOOLEAN'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'ACARD.INSDT'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'ACARD.UPDDT'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ACARD.INSUSR'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ACARD.UPDUSR'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'ACARD.STARTDATE'
    end
    object IntegerField5: TIntegerField
      FieldName = 'ACARD.VTYPEID'
    end
    object BooleanField3: TBooleanField
      FieldName = 'ACARD.CREATEBOOLEAN'
    end
    object BooleanField4: TBooleanField
      FieldName = 'ACARD.BLACKLISTBOOLEAN'
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'ACARD.BLACKLISTDATE'
    end
    object IntegerField6: TIntegerField
      FieldName = 'ACARD.BLACKLISTUSR'
    end
    object WideStringField2: TWideStringField
      FieldName = 'ACARD.BLACKLISTNOTES'
      Size = 200
    end
    object IntegerField7: TIntegerField
      FieldName = 'ACARD.IGROUPID1'
    end
    object IntegerField8: TIntegerField
      FieldName = 'ACARD.IGROUPID2'
    end
    object IntegerField9: TIntegerField
      FieldName = 'ACARD.IGROUPID3'
    end
    object IntegerField10: TIntegerField
      FieldName = 'ACARD.IGROUPID4'
    end
    object FloatField1: TFloatField
      FieldName = 'DAYAMOUNT'
    end
    object FloatField2: TFloatField
      FieldName = 'MONTHAMOUNT'
    end
    object WideStringField3: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
    object WideStringField4: TWideStringField
      FieldName = 'ACARDHOLDER'
      Size = 30
    end
    object BooleanField5: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'EXPIREPHDATE'
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'EXPIRELODATE'
    end
    object IntegerField11: TIntegerField
      FieldName = 'ACARD.IGROUPID5'
    end
    object IntegerField12: TIntegerField
      FieldName = 'EMPLOYEESID'
    end
    object BooleanField6: TBooleanField
      FieldName = 'NEWCARDBOOLEAN'
    end
    object IntegerField13: TIntegerField
      FieldName = 'NEWCARDID'
    end
    object BooleanField7: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object IntegerField14: TIntegerField
      FieldName = 'ACARDCODENUM'
    end
    object DateTimeField9: TDateTimeField
      FieldName = 'INACTIVEDATE'
    end
    object IntegerField15: TIntegerField
      FieldName = 'INACTIVEUSR'
    end
    object WideStringField5: TWideStringField
      FieldName = 'INACTIVENOTES'
      FixedChar = True
      Size = 200
    end
    object IntegerField16: TIntegerField
      FieldName = 'ACARD.IGROUPID6'
    end
    object IntegerField17: TIntegerField
      FieldName = 'ACARD.IGROUPID7'
    end
    object IntegerField18: TIntegerField
      FieldName = 'ACARD.IGROUPID8'
    end
    object IntegerField19: TIntegerField
      FieldName = 'ACARD.IGROUPID9'
    end
    object IntegerField20: TIntegerField
      FieldName = 'ACARD.IGROUPID10'
    end
    object IntegerField21: TIntegerField
      FieldName = 'COSTCENTERID'
    end
    object WideStringField6: TWideStringField
      FieldName = 'VType.Descr'
      Size = 50
    end
    object WideStringField7: TWideStringField
      FieldName = 'CClass.Descr'
      Size = 50
    end
    object WideStringField8: TWideStringField
      FieldName = 'CUSTOMER.Descr'
      Size = 50
    end
    object WideStringField9: TWideStringField
      FieldName = 'CUSTOMER.Name'
      Size = 50
    end
    object WideStringField10: TWideStringField
      FieldName = 'CGroup.Descr'
      Size = 50
    end
    object IntegerField22: TIntegerField
      FieldName = 'Acard.CUSTOMERId'
    end
    object WideStringField11: TWideStringField
      FieldName = 'CUSTOMER.Street'
      Size = 50
    end
    object WideStringField12: TWideStringField
      FieldName = 'CUSTOMER.Zip'
      Size = 50
    end
    object WideStringField13: TWideStringField
      FieldName = 'CUSTOMER.City'
      Size = 50
    end
    object WideStringField14: TWideStringField
      FieldName = 'CUSTOMER.SAPCODE'
      Size = 10
    end
    object BooleanField8: TBooleanField
      FieldName = 'CUSTOMER.HASDETAILEMP'
    end
    object IntegerField23: TIntegerField
      FieldName = 'CUSTOMER.CUSTOMERID'
    end
    object BooleanField9: TBooleanField
      FieldName = 'CUSTOMER.ISTEST'
    end
    object WideStringField15: TWideStringField
      FieldName = 'CostCenter.CCName'
      Size = 50
    end
    object WideStringField16: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
    object WideStringField17: TWideStringField
      FieldName = 'Surname'
      Size = 50
    end
    object WideStringField18: TWideStringField
      FieldName = 'email'
      Size = 50
    end
    object WideStringField19: TWideStringField
      FieldName = 'Phone'
      Size = 45
    end
    object WideStringField20: TWideStringField
      FieldName = 'Fax'
      Size = 45
    end
    object WideStringField21: TWideStringField
      FieldName = 'Mobile'
      Size = 45
    end
    object IntegerField24: TIntegerField
      FieldName = 'MailORFax'
    end
    object BooleanField10: TBooleanField
      FieldName = 'ACARD.PENDING'
    end
  end
  object qryUPDPending: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ExecuteOptions = [eoExecuteNoRecords]
    OnCalcFields = qryACardCalcFields
    Parameters = <
      item
        Name = 'PPending'
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'PDT'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end
      item
        Name = 'PUsr'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE V_ACARD_ETC_SINGLE'
      'SET [Acard.Pending] = :PPending,'
      '        [Acard.PendingDT] = :PDT,'#9
      '        [Acard.PendingUsr] = :PUsr'
      '')
    Left = 144
    Top = 232
  end
end
