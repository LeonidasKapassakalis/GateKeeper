inherited frmFEnhmDaily: TfrmFEnhmDaily
  Left = 448
  Top = 318
  Caption = #917#957#951#956#941#961#969#963#951' SAP '#919#924#917#929#919#931#921#913
  ClientHeight = 500
  ClientWidth = 739
  OldCreateOrder = True
  OnCreate = FormCreate
  ExplicitWidth = 747
  ExplicitHeight = 527
  PixelsPerInch = 96
  TextHeight = 13
  object dxPageControl1: TcxPageControl [0]
    Left = 0
    Top = 23
    Width = 739
    Height = 458
    Align = alClient
    TabOrder = 0
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 458
    ClientRectRight = 739
    ClientRectTop = 0
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 23
    Width = 739
    Height = 458
    Align = alClient
    TabOrder = 1
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
      DataController.DetailKeyFieldNames = 'Acard.CustomerId'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skCount
          FieldName = 'Acard.CustomerId'
        end>
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
      object cxGrid1DBTableView1CustomerSapCode: TcxGridDBColumn
        Caption = #928#949#955'.SAP'
        DataBinding.FieldName = 'Customer.SapCode'
      end
      object cxGrid1DBTableView1LCustomer: TcxGridDBColumn
        Caption = #928#949#955#940#964#951#962
        DataBinding.FieldName = 'LCustomer'
      end
      object cxGrid1DBTableView1MerchantSAPCode: TcxGridDBColumn
        Caption = #928#961#945#964#942#961#953#959' SAP'
        DataBinding.FieldName = 'Merchant.SAPCode'
      end
      object cxGrid1DBTableView1LMerchant: TcxGridDBColumn
        Caption = #928#961#945#964#942#961#953#959
        DataBinding.FieldName = 'LMerchant'
      end
      object cxGrid1DBTableView1SumAmount: TcxGridDBColumn
        Caption = #913#958#943#945
        DataBinding.FieldName = 'SumAmount'
      end
      object cxGrid1DBTableView1SumQuantity: TcxGridDBColumn
        Caption = #928#959#963#972#964#951#964#945
        DataBinding.FieldName = 'SumQuantity'
      end
      object cxGrid1DBTableView1LCustId: TcxGridDBColumn
        DataBinding.FieldName = 'LCustId'
      end
      object cxGrid1DBTableView1LMerId: TcxGridDBColumn
        DataBinding.FieldName = 'LMerId'
      end
      object cxGrid1DBTableView1LDiak: TcxGridDBColumn
        DataBinding.FieldName = 'LDiak'
      end
      object cxGrid1DBTableView1LDiakSap: TcxGridDBColumn
        DataBinding.FieldName = 'LDiakSap'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object ActionToolBar1: TActionToolBar [2]
    Left = 0
    Top = 0
    Width = 739
    Height = 23
    ActionManager = dxBarManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  object StatusBar1: TStatusBar [3]
    Left = 0
    Top = 481
    Width = 739
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  inherited popFilter: TPopupMenu
    Left = 604
  end
  object dxBarManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actClose
          end
          item
            Action = actEnhmStation
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 224
    Top = 104
    StyleName = 'Platform Default'
  end
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        '--SELECT     [Acard.CustomerId], [Customer.SapCode], [Tran.Stati' +
        'onId], [Merchant.SAPCode], [TRAN.MerchantId], [Tran.Amount] AS S' +
        'umAmount,'
      '--                      [Tran.Quantity] AS SumQuantity'
      '--FROM         dbo.V_TRAN_FOR_ENHM'
      
        '---GROUP BY [Acard.CustomerId], [Customer.SapCode], [Tran.Statio' +
        'nId], [Merchant.SAPCode], [TRAN.MerchantId], [Tran.Amount], [Tra' +
        'n.Quantity]'
      
        'SELECT     [Customer.SapCode],  [Merchant.SAPCode],Sum( [Tran.Am' +
        'ount]) AS SumAmount, Sum( [Tran.Quantity]) AS SumQuantity'
      'FROM         dbo.V_TRAN_FOR_ENHM')
    Left = 64
    Top = 104
    object qryTranCustomerSapCode: TWideStringField
      FieldName = 'Customer.SapCode'
      Size = 10
    end
    object qryTranMerchantSAPCode: TWideStringField
      FieldName = 'Merchant.SAPCode'
      Size = 10
    end
    object qryTranSumAmount: TFloatField
      FieldName = 'SumAmount'
    end
    object qryTranSumQuantity: TFloatField
      FieldName = 'SumQuantity'
    end
    object qryTranLCustomer: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustomer'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'SapCode'
      LookupResultField = 'Name'
      KeyFields = 'Customer.SapCode'
      Size = 50
      Lookup = True
    end
    object qryTranLMerchant: TStringField
      FieldKind = fkLookup
      FieldName = 'LMerchant'
      LookupDataSet = qryMerchant
      LookupKeyFields = 'SapCode'
      LookupResultField = 'Name'
      KeyFields = 'Merchant.SAPCode'
      Size = 50
      Lookup = True
    end
    object qryTranLCustId: TIntegerField
      FieldKind = fkLookup
      FieldName = 'LCustId'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'SapCode'
      LookupResultField = 'CustomerId'
      KeyFields = 'Customer.SapCode'
      Lookup = True
    end
    object qryTranLMerId: TIntegerField
      FieldKind = fkLookup
      FieldName = 'LMerId'
      LookupDataSet = qryMerchant
      LookupKeyFields = 'SapCode'
      LookupResultField = 'MerchantId'
      KeyFields = 'Merchant.SAPCode'
      Lookup = True
    end
    object qryTranLDiak: TStringField
      FieldKind = fkLookup
      FieldName = 'LDiak'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'SapCode'
      LookupResultField = 'DiakId'
      KeyFields = 'Customer.SapCode'
      Lookup = True
    end
    object qryTranLDiakSap: TStringField
      FieldKind = fkLookup
      FieldName = 'LDiakSap'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'SapCode'
      LookupResultField = 'LDiakSap'
      KeyFields = 'Customer.SapCode'
      Lookup = True
    end
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 112
    Top = 104
  end
  object qryMerchant: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    EnableBCD = False
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'SELECT MerchantId, Name, SapCode'
      'FROM Merchant'
      '')
    Left = 296
    Top = 176
    object qryMerchantMerchantId: TAutoIncField
      FieldName = 'MerchantId'
      ReadOnly = True
    end
    object qryMerchantName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object qryMerchantSapCode: TWideStringField
      FieldName = 'SapCode'
      Size = 10
    end
  end
  object qryCustomer: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    EnableBCD = False
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'SELECT  CustomerId, Name, SapCode, DiakId'
      'FROM CUSTOMER'
      '')
    Left = 216
    Top = 176
    object qryCustomerCustomerId: TAutoIncField
      FieldName = 'CustomerId'
      ReadOnly = True
    end
    object qryCustomerName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object qryCustomerSapCode: TWideStringField
      FieldName = 'SapCode'
      Size = 10
    end
    object qryCustomerDiakId: TIntegerField
      FieldName = 'DiakId'
    end
    object qryCustomerLDiakSap: TStringField
      FieldKind = fkLookup
      FieldName = 'LDiakSap'
      LookupDataSet = qryDiak
      LookupKeyFields = 'DiakID'
      LookupResultField = 'DiakSAP'
      KeyFields = 'DiakId'
      Lookup = True
    end
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 480
    Top = 136
    object actEnhmStation: TAction
      Caption = #917#957#951#956#941#961#969#963#951' '#922#953#957#942#963#949#969#957
      OnExecute = actEnhmStationExecute
    end
    object actClose: TAction
      Caption = #917#958#972#948#959#962
      OnExecute = actCloseExecute
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
      OnExecute = UpdateActionsExecute
    end
  end
  object EnhmSap: TADOTable
    AutoCalcFields = False
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=ToSap' +
      'DailyDef;Initial Catalog=E:\Delphi\Delphi\AvinCard V4\AvinCard S' +
      'QL Ver 3 R2\FromTo\FromTo'
    CursorType = ctStatic
    TableDirect = True
    TableName = 'ToSapDaily.txt'
    Left = 408
    Top = 184
    object EnhmSapCODEPRAT: TIntegerField
      FieldName = 'CODEPRAT'
    end
    object EnhmSapCODECUST: TIntegerField
      FieldName = 'CODECUST'
    end
    object EnhmSapAMOUNT: TIntegerField
      FieldName = 'AMOUNT'
    end
    object EnhmSapNEG: TIntegerField
      FieldName = 'NEG'
    end
    object EnhmSapSTEXT: TStringField
      FieldName = 'STEXT'
      Size = 50
    end
    object EnhmSapLOGARDATE: TStringField
      FieldName = 'LOGARDATE'
      Size = 8
    end
    object EnhmSapDIAK: TIntegerField
      FieldName = 'DIAK'
    end
  end
  object EnhmTrans: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'BTUpd'
        Attributes = [paNullable]
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = True
      end
      item
        Name = 'BTStation'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'UPDATE V_TRAN_FOR_ENHM'
      
        'SET [Tran.PELADAILYUPD] = :BTUpd , [Tran.PELADAILYUPDBT] = :BTSt' +
        'ation'
      '')
    Left = 64
    Top = 288
  end
  object InsTrans: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsTran
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM TRANDL')
    Left = 64
    Top = 240
    object InsTransTRANDLID: TAutoIncField
      FieldName = 'TRANDLID'
      ReadOnly = True
    end
    object InsTransSTATIONID: TIntegerField
      FieldName = 'STATIONID'
    end
    object InsTransCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object InsTransDEBIT: TFloatField
      FieldName = 'DEBIT'
    end
    object InsTransCREDIT: TFloatField
      FieldName = 'CREDIT'
    end
    object InsTransTTEXT: TWideStringField
      FieldName = 'TTEXT'
      Size = 50
    end
    object InsTransTRANDLDATE: TDateTimeField
      FieldName = 'TRANDLDATE'
    end
    object InsTransTRANBSID: TIntegerField
      FieldName = 'TRANBSID'
    end
    object InsTransINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object InsTransUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object InsTransINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object InsTransUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object qryDeleteTranS: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PTranBSID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Delete From TranDL'
      'Where TranBSID = :PTranBSID')
    Left = 64
    Top = 344
    object IntegerField3: TIntegerField
      FieldName = 'Acard.CustomerId'
    end
    object WideStringField3: TWideStringField
      FieldName = 'Customer.SapCode'
      Size = 10
    end
    object IntegerField4: TIntegerField
      FieldName = 'Tran.StationId'
    end
    object WideStringField4: TWideStringField
      FieldName = 'Station.SapCode'
      Size = 10
    end
    object FloatField3: TFloatField
      FieldName = 'SumAmount'
    end
    object FloatField4: TFloatField
      FieldName = 'SumQuantity'
    end
    object StringField3: TStringField
      FieldKind = fkLookup
      FieldName = 'CustomerDescr'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'NAME'
      KeyFields = 'Acard.CustomerId'
      Lookup = True
    end
    object StringField4: TStringField
      FieldKind = fkLookup
      FieldName = 'StationDescr'
      LookupDataSet = qryMerchant
      LookupKeyFields = 'STATIONID'
      LookupResultField = 'NAME'
      KeyFields = 'Tran.StationId'
      LookupCache = True
      Lookup = True
    end
  end
  object qryDiak: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    EnableBCD = False
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'SELECT  *'
      'FROM Diak'
      '')
    Left = 224
    Top = 272
    object qryDiakDiakID: TIntegerField
      FieldName = 'DiakID'
      ReadOnly = True
    end
    object qryDiakDescr: TWideStringField
      FieldName = 'Descr'
    end
    object qryDiakDiakDays: TIntegerField
      FieldName = 'DiakDays'
    end
    object qryDiakDiakSAP: TIntegerField
      FieldName = 'DiakSAP'
    end
    object qryDiakInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryDiakInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryDiakUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qryDiakUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qryDiakDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryDiakDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryDiakDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryDiakInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryDiakInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryDiakInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
end
