inherited frmPrnTranEmp: TfrmPrnTranEmp
  Left = 240
  Top = 107
  Caption = #917#954#964#965#960#974#963#949#953#962' '#917#961#947#945#950#959#956#941#957#969#957
  ClientHeight = 530
  ClientWidth = 771
  OldCreateOrder = True
  OnShow = FormShow
  ExplicitWidth = 779
  ExplicitHeight = 557
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel [0]
    Left = 0
    Top = 23
    Width = 771
    Height = 460
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 2
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 769
      Height = 458
      Align = alClient
      TabOrder = 0
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 483
    Width = 771
    Height = 28
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 0
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 1
      Width = 769
      Height = 26
      Align = alClient
      TabOrder = 0
    end
  end
  object PageControl1: TPageControl [2]
    Left = 0
    Top = 23
    Width = 771
    Height = 460
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #922#953#957#942#963#949#953#962
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 763
        Height = 432
        Align = alClient
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
          DataController.DataSource = dtsTran
          DataController.DetailKeyFieldNames = 'TRANID'
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
          OptionsView.Indicator = True
          OnCustomization = cxGrid1DBTableView1Customization
          object cxGrid1DBTableView1TRANDATE: TcxGridDBColumn
            DataBinding.FieldName = 'TRANDATE'
            Width = 60
          end
          object cxGrid1DBTableView1TRANTIME: TcxGridDBColumn
            DataBinding.FieldName = 'TRANTIME'
            Width = 63
          end
          object cxGrid1DBTableView1CustomerName: TcxGridDBColumn
            DataBinding.FieldName = 'Customer.Name'
          end
          object cxGrid1DBTableView1EMPNAME: TcxGridDBColumn
            DataBinding.FieldName = 'EMP.NAME'
          end
          object cxGrid1DBTableView1EMPSURNAME: TcxGridDBColumn
            DataBinding.FieldName = 'EMP.SURNAME'
          end
          object cxGrid1DBTableView1EMPMHTRID: TcxGridDBColumn
            DataBinding.FieldName = 'EMP.MHTRID'
          end
          object cxGrid1DBTableView1ACARDACARDHOLDER: TcxGridDBColumn
            DataBinding.FieldName = 'ACARD.ACARDHOLDER'
          end
          object cxGrid1DBTableView1FullCardNo: TcxGridDBColumn
            DataBinding.FieldName = 'FullCardNo'
          end
          object cxGrid1DBTableView1RegNo: TcxGridDBColumn
            DataBinding.FieldName = 'RegNo'
          end
          object cxGrid1DBTableView1StationName: TcxGridDBColumn
            DataBinding.FieldName = 'Station.Name'
          end
          object cxGrid1DBTableView1AreaDescr: TcxGridDBColumn
            DataBinding.FieldName = 'Area.Descr'
          end
          object cxGrid1DBTableView1LocationDescr: TcxGridDBColumn
            DataBinding.FieldName = 'Location.Descr'
          end
          object cxGrid1DBTableView1QTOWNDESCR: TcxGridDBColumn
            DataBinding.FieldName = 'QTOWN.DESCR'
          end
          object cxGrid1DBTableView1TERMINALCODE: TcxGridDBColumn
            DataBinding.FieldName = 'TERMINALCODE'
          end
          object cxGrid1DBTableView1REFSTR: TcxGridDBColumn
            DataBinding.FieldName = 'REFSTR'
          end
          object cxGrid1DBTableView1SitemDesc: TcxGridDBColumn
            DataBinding.FieldName = 'SitemDesc'
          end
          object cxGrid1DBTableView1AMOUNT: TcxGridDBColumn
            DataBinding.FieldName = 'AMOUNT'
          end
          object cxGrid1DBTableView1QUANTITY: TcxGridDBColumn
            DataBinding.FieldName = 'QUANTITY'
          end
          object cxGrid1DBTableView1KMBEFORE: TcxGridDBColumn
            DataBinding.FieldName = 'KMBEFORE'
          end
          object cxGrid1DBTableView1KMAFTER: TcxGridDBColumn
            DataBinding.FieldName = 'KMAFTER'
          end
          object cxGrid1DBTableView1ACARDCODE: TcxGridDBColumn
            DataBinding.FieldName = 'ACARDCODE'
          end
          object cxGrid1DBTableView1SITEMID: TcxGridDBColumn
            DataBinding.FieldName = 'SITEMID'
          end
          object cxGrid1DBTableView1TRANID: TcxGridDBColumn
            DataBinding.FieldName = 'TRANID'
          end
          object cxGrid1DBTableView1TranDisQuantity: TcxGridDBColumn
            DataBinding.FieldName = 'Tran.DisQuantity'
          end
          object cxGrid1DBTableView1TranDisAmount: TcxGridDBColumn
            DataBinding.FieldName = 'Tran.DisAmount'
          end
          object cxGrid1DBTableView1TranDisUPD: TcxGridDBColumn
            DataBinding.FieldName = 'Tran.DisUPD'
          end
          object cxGrid1DBTableView1ACARDID: TcxGridDBColumn
            DataBinding.FieldName = 'ACARDID'
          end
          object cxGrid1DBTableView1ACARDVTYPEID: TcxGridDBColumn
            DataBinding.FieldName = 'ACARD.VTYPEID'
          end
          object cxGrid1DBTableView1LVType: TcxGridDBColumn
            DataBinding.FieldName = 'LVType'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #917#961#947#945#950#972#956#949#957#959#953
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 763
        Height = 432
        Align = alClient
        DataSource = dsEmployees
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object StatusBar1: TStatusBar [3]
    Left = 0
    Top = 511
    Width = 771
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object ActionMainMenuBar1: TActionMainMenuBar [4]
    Left = 0
    Top = 0
    Width = 771
    Height = 23
    UseSystemFont = False
    ActionManager = dxBarManager1
    Caption = 'ActionMainMenuBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Spacing = 0
  end
  inherited popFilter: TPopupMenu
    inherited Pedia: TMenuItem
      Visible = False
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
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
            Action = actPrint32
          end
          item
            Action = actMailCreate
            Caption = #916#951#956#953#959#965#961#947#949#943#945' &Mail'
          end
          item
            Action = actMailSend
            Caption = #913#960#959#963#964#959#955#942' M&ail'
          end
          item
            Action = actPrintOnlyPrint
            Caption = #917#954#964#973#960#969#963#951' &Print'
          end>
      end
      item
        Items = <
          item
            Action = actClose
          end
          item
            Action = actPreview
          end
          item
            Items = <
              item
                Action = actPrint32
              end
              item
                Caption = '-'
              end
              item
                Action = actMailCreate
                Caption = #916#951#956#953#959#965#961#947#949#943#945' &Mail'
              end
              item
                Action = actMailSend
                Caption = #913#960#959#963#964#959#955#942' M&ail'
              end
              item
                Caption = '-'
              end
              item
                Action = actPrintOnlyPrint
                Caption = #917#954#964#973#960#969#963#951' &Print'
              end>
            Caption = #917#954#964#965#960#974#963#949#953#962
          end
          item
            Items = <
              item
                Action = actPrint007
              end
              item
                Action = actPrint008
              end
              item
                Action = actPrint022
              end
              item
                Action = actPrint002
              end
              item
                Action = actPrint088
              end
              item
                Action = actExcell88a
                Caption = #931#973#957#959#955#945' '#945#957#945' '#922'.'#922'./'#922#945#964' '#927#967#942#956#945#964#959#962'/'#928#961#959#970#972#957' &Excel'
              end>
            Caption = #917#954#964#965#960#974#963#949#953#962' &0'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 176
    Top = 192
    StyleName = 'Platform Default'
  end
  object ActionList1: TActionList
    Left = 328
    Top = 104
    object actClose: TAction
      Caption = #917#960#953#963#964#961#959#966#942
      OnExecute = actCloseExecute
    end
    object actPreview: TAction
      Caption = #917#954#964#973#960#969#963#951
      OnExecute = actPreviewExecute
    end
    object actPrint32: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #931#964#945#964#953#963#964#953#954#972' '#917#961#947#945#950#959#956#941#957#969#957
      OnExecute = actPrint32Execute
    end
    object actMailCreate: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #916#951#956#953#959#965#961#947#949#943#945' Mail'
      OnExecute = actMailCreateExecute
    end
    object actMailSend: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #913#960#959#963#964#959#955#942' Mail'
      OnExecute = actMailSendExecute
    end
    object actPrintOnlyPrint: TAction
      Category = #917#954#964#965#960#974#963#949#953#962
      Caption = #917#954#964#973#960#969#963#951' Print'
      OnExecute = actPrintOnlyPrintExecute
    end
    object actPrint007: TAction
      Category = #917#954#964#965#960#974#963#949#953#962' 0'
      Caption = #931#965#957#972#955#945' '#945#957#940' '#917#964#945#953#961#949#943#945'/'#928#961#959#943#959#957'/'#922#940#961#964#945
      OnExecute = actPrint007Execute
    end
    object actPrint008: TAction
      Category = #917#954#964#965#960#974#963#949#953#962' 0'
      Caption = #913#957#945#955#965#964#953#954#940' '#931#964#959#953#967#949#943#945' '#913#957#940' '#917#964#945#953#961#949#943#945'/'#919#956#949#961#959#956#951#957#943#945
      OnExecute = actPrint008Execute
    end
    object actPrint022: TAction
      Category = #917#954#964#965#960#974#963#949#953#962' 0'
      Caption = #913#957#945#955#965#964#953#954#940' '#931#964#959#953#967#949#943#945' '#945#957#940' '#922#940#961#964#945
      OnExecute = actPrint022Execute
    end
    object actPrint002: TAction
      Category = #917#954#964#965#960#974#963#949#953#962' 0'
      Caption = #913#957#945#955#965#964#953#954#940' '#931#964#959#953#967#949#943#945' '#945#957#940' '#928#961#945#964#942#961#953#959'/'#919#956#949#961#959#956#951#957#943#945
      OnExecute = actPrint002Execute
    end
    object actPrint088: TAction
      Category = #917#954#964#965#960#974#963#949#953#962' 0'
      Caption = #931#973#957#959#955#945' '#945#957#945' '#922'.'#922'./'#922#945#964' '#927#967#942#956#945#964#959#962'/'#928#961#959#970#972#957
      OnExecute = actPrint088Execute
    end
    object actExcell88a: TAction
      Category = #917#954#964#965#960#974#963#949#953#962' 0'
      Caption = #931#973#957#959#955#945' '#945#957#945' '#922'.'#922'./'#922#945#964' '#927#967#942#956#945#964#959#962'/'#928#961#959#970#972#957' Excel'
      OnExecute = actExcell88aExecute
    end
  end
  object qryTran: TADOQuery
    Connection = GeneralDM.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM V_TRA_STA_ACA_CUS_EMP')
    Left = 80
    Top = 168
    object qryTranTRANDATE: TDateTimeField
      DisplayLabel = #919#956'/'#957#943#945
      FieldName = 'TRANDATE'
    end
    object qryTranTRANTIME: TDateTimeField
      DisplayLabel = #911#961#945
      FieldName = 'TRANTIME'
      DisplayFormat = 't'
    end
    object qryTranCustomerName: TWideStringField
      DisplayLabel = #928#949#955#940#964#951#962
      DisplayWidth = 20
      FieldName = 'Customer.Name'
      Size = 50
    end
    object qryTranEMPNAME: TWideStringField
      DisplayLabel = #927#957#972#956#945
      DisplayWidth = 20
      FieldName = 'EMP.NAME'
      Size = 50
    end
    object qryTranEMPSURNAME: TWideStringField
      DisplayLabel = #917#960#974#957#965#956#959
      DisplayWidth = 20
      FieldName = 'EMP.SURNAME'
      Size = 50
    end
    object qryTranEMPMHTRID: TIntegerField
      DisplayLabel = #913#961#953#952'.'#924#951#964#961#974#959#965
      FieldName = 'EMP.MHTRID'
    end
    object qryTranACARDACARDHOLDER: TWideStringField
      DisplayLabel = #922#945#961#964#959#973#967#959#962
      FieldName = 'ACARD.ACARDHOLDER'
      Size = 30
    end
    object qryTranFullCardNo: TStringField
      DisplayLabel = #922#940#961#964#945
      FieldKind = fkCalculated
      FieldName = 'FullCardNo'
      Calculated = True
    end
    object qryTranRegNo: TWideStringField
      DisplayLabel = #913#961#953#952'.'#922#965#954#955#959#966'.'
      DisplayWidth = 12
      FieldName = 'RegNo'
      Size = 50
    end
    object qryTranStationName: TWideStringField
      DisplayLabel = #928#961#945#964#942#961#953#959
      DisplayWidth = 20
      FieldName = 'Station.Name'
      Size = 50
    end
    object qryTranAreaDescr: TWideStringField
      DisplayLabel = #928#949#961#953#959#967#942
      DisplayWidth = 20
      FieldName = 'Area.Descr'
      Size = 50
    end
    object qryTranLocationDescr: TWideStringField
      DisplayLabel = #932#959#960#959#952#949#963#943#945
      DisplayWidth = 20
      FieldName = 'Location.Descr'
      Size = 50
    end
    object qryTranQTOWNDESCR: TWideStringField
      DisplayLabel = #928#972#955#951
      DisplayWidth = 30
      FieldName = 'QTOWN.DESCR'
      ReadOnly = True
      Size = 203
    end
    object qryTranTERMINALCODE: TWideStringField
      DisplayLabel = 'Terminal ID'
      FieldName = 'TERMINALCODE'
    end
    object qryTranREFSTR: TWideStringField
      DisplayLabel = #913#960#972#948#949#953#958#951
      DisplayWidth = 10
      FieldName = 'REFSTR'
      Size = 50
    end
    object qryTranSitemDesc: TStringField
      DisplayLabel = #928#961#972#953#959#957
      FieldKind = fkLookup
      FieldName = 'SitemDesc'
      LookupDataSet = qrySItem
      LookupKeyFields = 'SITEMID'
      LookupResultField = 'DESCR'
      KeyFields = 'SITEMID'
      Lookup = True
    end
    object qryTranAMOUNT: TFloatField
      DisplayLabel = #913#958#943#945
      FieldName = 'AMOUNT'
    end
    object qryTranQUANTITY: TFloatField
      DisplayLabel = #928#959#963#972#964#951#964#945
      FieldName = 'QUANTITY'
    end
    object qryTranKMBEFORE: TIntegerField
      DisplayLabel = 'KM '#928#961#943#957
      FieldName = 'KMBEFORE'
    end
    object qryTranKMAFTER: TIntegerField
      DisplayLabel = 'KM '#924#949#964#940
      FieldName = 'KMAFTER'
    end
    object qryTranACARDCODE: TWideStringField
      DisplayLabel = #922#969#948'.'#922#940#961#964#945#962
      DisplayWidth = 10
      FieldName = 'ACARDCODE'
      Size = 50
    end
    object qryTranSITEMID: TIntegerField
      DisplayLabel = #922#969#948'.'#928#961#972#953'.'
      FieldName = 'SITEMID'
    end
    object qryTranTRANID: TAutoIncField
      DisplayLabel = #922#969#948'.'#922#943#957#951#963#951#962
      FieldName = 'TRANID'
      ReadOnly = True
    end
    object qryTranTranDisQuantity: TFloatField
      DisplayLabel = #928#959#963'.'#917#954#960#964#974#963#951#962
      FieldName = 'Tran.DisQuantity'
    end
    object qryTranTranDisAmount: TFloatField
      DisplayLabel = #917#954#960#964#974#963#951
      FieldName = 'Tran.DisAmount'
    end
    object qryTranTranDisUPD: TBooleanField
      DisplayLabel = #917#957#951#956'.'#917#954#960#964#974#951#963#951#962
      FieldName = 'Tran.DisUPD'
    end
    object qryTranACARDID: TIntegerField
      FieldName = 'ACARDID'
    end
    object qryTranACARDVTYPEID: TIntegerField
      FieldName = 'ACARD.VTYPEID'
    end
    object qryTranLVType: TStringField
      FieldKind = fkLookup
      FieldName = 'LVType'
      LookupDataSet = GeneralDM.tblVType
      LookupKeyFields = 'VTYPEID'
      LookupResultField = 'DESCR'
      KeyFields = 'ACARD.VTYPEID'
      Lookup = True
    end
  end
  object qrySItem: TADOQuery
    Active = True
    Connection = GeneralDM.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SITEM')
    Left = 304
    Top = 184
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 80
    Top = 224
  end
  object dxComponentPrinter1: TdxComponentPrinter
    Version = 0
    Left = 232
    Top = 104
  end
  object qryEmployees: TADOQuery
    Connection = GeneralDM.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM Employees'
      '')
    Left = 544
    Top = 152
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
    object qryEmployeesSendPrint: TBooleanField
      FieldName = 'SendPrint'
    end
    object qryEmployeesSendMail: TBooleanField
      FieldName = 'SendMail'
    end
    object qryEmployeesMailAddr: TWideStringField
      FieldName = 'MailAddr'
      Size = 50
    end
  end
  object dsEmployees: TDataSource
    DataSet = qryEmployees
    Left = 544
    Top = 200
  end
  object qryAcard: TADOQuery
    Connection = GeneralDM.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM ACard'
      '')
    Left = 336
    Top = 272
    object qryAcardACARDID: TAutoIncField
      FieldName = 'ACARDID'
      ReadOnly = True
    end
    object qryAcardACARDCODE: TWideStringField
      FieldName = 'ACARDCODE'
      Size = 50
    end
    object qryAcardCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qryAcardISSUEDATE: TDateTimeField
      FieldName = 'ISSUEDATE'
    end
    object qryAcardEXPIREDATE: TDateTimeField
      FieldName = 'EXPIREDATE'
    end
    object qryAcardMETERBOOLEAN: TBooleanField
      FieldName = 'METERBOOLEAN'
    end
    object qryAcardPINBOOLEAN: TBooleanField
      FieldName = 'PINBOOLEAN'
    end
    object qryAcardINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryAcardUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryAcardINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryAcardUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryAcardSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qryAcardVTYPEID: TIntegerField
      FieldName = 'VTYPEID'
    end
    object qryAcardCREATEBOOLEAN: TBooleanField
      FieldName = 'CREATEBOOLEAN'
    end
    object qryAcardBLACKLISTBOOLEAN: TBooleanField
      FieldName = 'BLACKLISTBOOLEAN'
    end
    object qryAcardBLACKLISTDATE: TDateTimeField
      FieldName = 'BLACKLISTDATE'
    end
    object qryAcardBLACKLISTUSR: TIntegerField
      FieldName = 'BLACKLISTUSR'
    end
    object qryAcardBLACKLISTNOTES: TWideStringField
      FieldName = 'BLACKLISTNOTES'
      Size = 200
    end
    object qryAcardIGROUPID1: TIntegerField
      FieldName = 'IGROUPID1'
    end
    object qryAcardIGROUPID2: TIntegerField
      FieldName = 'IGROUPID2'
    end
    object qryAcardIGROUPID3: TIntegerField
      FieldName = 'IGROUPID3'
    end
    object qryAcardIGROUPID4: TIntegerField
      FieldName = 'IGROUPID4'
    end
    object qryAcardDAYAMOUNT: TFloatField
      FieldName = 'DAYAMOUNT'
    end
    object qryAcardMONTHAMOUNT: TFloatField
      FieldName = 'MONTHAMOUNT'
    end
    object qryAcardREGNO: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
    object qryAcardACARDHOLDER: TWideStringField
      FieldName = 'ACARDHOLDER'
      Size = 30
    end
    object qryAcardISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qryAcardEXPIREPHDATE: TDateTimeField
      FieldName = 'EXPIREPHDATE'
    end
    object qryAcardEXPIRELODATE: TDateTimeField
      FieldName = 'EXPIRELODATE'
    end
    object qryAcardIGROUPID5: TIntegerField
      FieldName = 'IGROUPID5'
    end
    object qryAcardEMPLOYEESID: TIntegerField
      FieldName = 'EMPLOYEESID'
    end
    object qryAcardNEWCARDBOOLEAN: TBooleanField
      FieldName = 'NEWCARDBOOLEAN'
    end
    object qryAcardNEWCARDID: TIntegerField
      FieldName = 'NEWCARDID'
    end
    object qryAcardCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object qryAcardACARDCODENUM: TIntegerField
      FieldName = 'ACARDCODENUM'
    end
    object qryAcardINACTIVEDATE: TDateTimeField
      FieldName = 'INACTIVEDATE'
    end
    object qryAcardINACTIVEUSR: TIntegerField
      FieldName = 'INACTIVEUSR'
    end
    object qryAcardINACTIVENOTES: TWideStringField
      FieldName = 'INACTIVENOTES'
      FixedChar = True
      Size = 200
    end
  end
  object dsAcard: TDataSource
    DataSet = qryAcard
    Left = 336
    Top = 328
  end
  object OutlookApplication1: TOutlookApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 480
    Top = 256
  end
  object SaveDialog1: TSaveDialog
    Left = 680
    Top = 144
  end
  object MapiSession: TRwMAPISession
    LogonInfo.UseExtendedMAPI = False
    LogonInfo.Shared = False
    LogonInfo.ProfileRequired = False
    LogonInfo.ForceDownload = False
    LogonInfo.ShowLogonDialog = False
    LogonInfo.NewSession = False
    LogonInfo.NoMail = False
    LogonInfo.NTService = False
    LogonInfo.ShowPasswordDialog = False
    LogonInfo.ShowServiceDialog = False
    LogonInfo.ShortTimeOut = False
    LogonInfo.MultiThreadedNotifications = False
    LogoffInfo.Shared = False
    LogoffInfo.ShowLogoffDialog = False
    Left = 688
    Top = 48
  end
end
