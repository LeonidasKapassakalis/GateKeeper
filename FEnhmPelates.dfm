inherited frmFEnhmPelates: TfrmFEnhmPelates
  Left = 351
  Top = 177
  Caption = #917#957#951#956#941#961#969#963#951' '#928#949#955#945#964#974#957
  ClientHeight = 578
  ClientWidth = 778
  OldCreateOrder = True
  OnCreate = FormCreate
  ExplicitWidth = 786
  ExplicitHeight = 605
  PixelsPerInch = 96
  TextHeight = 13
  object dxPageControl1: TcxPageControl [0]
    Left = 0
    Top = 23
    Width = 778
    Height = 555
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabBrowser
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 555
    ClientRectRight = 778
    ClientRectTop = 0
    object tabBrowser: TcxTabSheet
      Caption = 'Browse'
      TabVisible = False
      object StatusBar1: TStatusBar
        Left = 0
        Top = 536
        Width = 778
        Height = 19
        Panels = <
          item
            Width = 200
          end>
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 778
        Height = 536
        Align = alClient
        TabOrder = 1
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
          DataController.DataSource = dtsTran
          DataController.DetailKeyFieldNames = 'CustomerId'
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
          object cxGrid1DBTableView1SumAmount: TcxGridDBColumn
            DataBinding.FieldName = 'SumAmount'
          end
          object cxGrid1DBTableView1SumQuantity: TcxGridDBColumn
            DataBinding.FieldName = 'SumQuantity'
          end
          object cxGrid1DBTableView1CustomerId: TcxGridDBColumn
            DataBinding.FieldName = 'CustomerId'
          end
          object cxGrid1DBTableView1LCustomer: TcxGridDBColumn
            DataBinding.FieldName = 'LCustomer'
          end
          object cxGrid1DBTableView1LCustomerSAP: TcxGridDBColumn
            DataBinding.FieldName = 'LCustomerSAP'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object ActionToolBar1: TActionToolBar [1]
    Left = 0
    Top = 0
    Width = 778
    Height = 23
    ActionManager = dxBarManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  inherited ActionMainList: TActionList
    Left = 720
    Top = 184
  end
  object dxBarManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actClose
          end
          item
            Action = actEnhmPelates
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 448
    Top = 96
    StyleName = 'Platform Default'
  end
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT [Acard.CustomerId] AS CustomerId,'
      '             Sum([TRAN.AMOUNT]) AS SumAmount,'
      '             Sum([TRAN.QUANTITY]) AS SumQuantity'
      'FROM    V_TRAN_FOR_ENHM'
      '')
    Left = 184
    Top = 112
    object qryTranSumAmount: TFloatField
      FieldName = 'SumAmount'
      DisplayFormat = '###,###,##0.00'
    end
    object qryTranSumQuantity: TFloatField
      FieldName = 'SumQuantity'
      DisplayFormat = '###,###,##0.00'
    end
    object qryTranCustomerId: TIntegerField
      FieldName = 'CustomerId'
    end
    object qryTranLCustomer: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustomer'
      LookupDataSet = ADOQuery1
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'NAME'
      KeyFields = 'CustomerId'
      Size = 0
      Lookup = True
    end
    object qryTranLCustomerSAP: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustomerSAP'
      LookupDataSet = ADOQuery1
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'SAPCODE'
      KeyFields = 'CustomerId'
      Lookup = True
    end
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 248
    Top = 112
  end
  object ADOQuery2: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsTran
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM STATION'
      '')
    Left = 168
    Top = 360
    object ADOQuery2Stationid: TAutoIncField
      FieldName = 'Stationid'
      ReadOnly = True
    end
    object ADOQuery2Name: TWideStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 100
    end
    object ADOQuery2STREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object ADOQuery2ZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object ADOQuery2CITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object ADOQuery2AreaId: TIntegerField
      FieldName = 'AreaId'
    end
    object ADOQuery2SalesMenId: TIntegerField
      FieldName = 'SalesMenId'
    end
    object ADOQuery2IGroupId1: TIntegerField
      FieldName = 'IGroupId1'
    end
    object ADOQuery2Pososto1: TFloatField
      FieldName = 'Pososto1'
    end
    object ADOQuery2HaveGroup1: TBooleanField
      FieldName = 'HaveGroup1'
    end
    object ADOQuery2IGroupId2: TIntegerField
      FieldName = 'IGroupId2'
    end
    object ADOQuery2Pososto2: TFloatField
      FieldName = 'Pososto2'
    end
    object ADOQuery2HaveGroup2: TBooleanField
      FieldName = 'HaveGroup2'
    end
    object ADOQuery2IGroupId3: TIntegerField
      FieldName = 'IGroupId3'
    end
    object ADOQuery2Pososto3: TFloatField
      FieldName = 'Pososto3'
    end
    object ADOQuery2HaveGroup3: TBooleanField
      FieldName = 'HaveGroup3'
    end
    object ADOQuery2IGroupId4: TIntegerField
      FieldName = 'IGroupId4'
    end
    object ADOQuery2Pososto4: TFloatField
      FieldName = 'Pososto4'
    end
    object ADOQuery2HaveGroup4: TBooleanField
      FieldName = 'HaveGroup4'
    end
    object ADOQuery2IGroupId5: TIntegerField
      FieldName = 'IGroupId5'
    end
    object ADOQuery2Pososto5: TFloatField
      FieldName = 'Pososto5'
    end
    object ADOQuery2HaveGroup5: TBooleanField
      FieldName = 'HaveGroup5'
    end
    object ADOQuery2IGroupId6: TIntegerField
      FieldName = 'IGroupId6'
    end
    object ADOQuery2Pososto6: TFloatField
      FieldName = 'Pososto6'
    end
    object ADOQuery2HaveGroup6: TBooleanField
      FieldName = 'HaveGroup6'
    end
    object ADOQuery2IGroupId7: TIntegerField
      FieldName = 'IGroupId7'
    end
    object ADOQuery2Pososto7: TFloatField
      FieldName = 'Pososto7'
    end
    object ADOQuery2HaveGroup7: TBooleanField
      FieldName = 'HaveGroup7'
    end
    object ADOQuery2IGroupId8: TIntegerField
      FieldName = 'IGroupId8'
    end
    object ADOQuery2Pososto8: TFloatField
      FieldName = 'Pososto8'
    end
    object ADOQuery2HaveGroup8: TBooleanField
      FieldName = 'HaveGroup8'
    end
    object ADOQuery2IGroupId9: TIntegerField
      FieldName = 'IGroupId9'
    end
    object ADOQuery2Pososto9: TFloatField
      FieldName = 'Pososto9'
    end
    object ADOQuery2HaveGroup9: TBooleanField
      FieldName = 'HaveGroup9'
    end
    object ADOQuery2IGroupId10: TIntegerField
      FieldName = 'IGroupId10'
    end
    object ADOQuery2Pososto10: TFloatField
      FieldName = 'Pososto10'
    end
    object ADOQuery2HaveGroup10: TBooleanField
      FieldName = 'HaveGroup10'
    end
    object ADOQuery2Deleted: TBooleanField
      FieldName = 'Deleted'
    end
    object ADOQuery2DelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object ADOQuery2DelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object ADOQuery2InActive: TBooleanField
      FieldName = 'InActive'
    end
    object ADOQuery2InActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object ADOQuery2InActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object ADOQuery2StopSales: TBooleanField
      FieldName = 'StopSales'
    end
    object ADOQuery2StopSalesUsr: TIntegerField
      FieldName = 'StopSalesUsr'
    end
    object ADOQuery2StopSalesDt: TDateTimeField
      FieldName = 'StopSalesDt'
    end
    object ADOQuery2IsTest: TBooleanField
      FieldName = 'IsTest'
    end
    object ADOQuery2IsTestUsr: TIntegerField
      FieldName = 'IsTestUsr'
    end
    object ADOQuery2IsTestDt: TDateTimeField
      FieldName = 'IsTestDt'
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsTran
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM CUSTOMER'
      '')
    Left = 72
    Top = 360
    object ADOQuery1CUSTOMERID: TAutoIncField
      FieldName = 'CUSTOMERID'
      ReadOnly = True
    end
    object ADOQuery1NAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object ADOQuery1STREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object ADOQuery1ZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object ADOQuery1CITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object ADOQuery1AFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object ADOQuery1DOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object ADOQuery1STARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object ADOQuery1AREAID: TIntegerField
      FieldName = 'AREAID'
    end
    object ADOQuery1LOCATIONID: TIntegerField
      FieldName = 'LOCATIONID'
    end
    object ADOQuery1CGROUPID: TIntegerField
      FieldName = 'CGROUPID'
    end
    object ADOQuery1CCLASSID: TIntegerField
      FieldName = 'CCLASSID'
    end
    object ADOQuery1CREDITAMOUNT: TFloatField
      FieldName = 'CREDITAMOUNT'
    end
    object ADOQuery1INSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object ADOQuery1UPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object ADOQuery1INSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object ADOQuery1UPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object ADOQuery1PROFESSION: TWideStringField
      FieldName = 'PROFESSION'
      Size = 50
    end
    object ADOQuery1BRANCHID: TIntegerField
      FieldName = 'BRANCHID'
    end
    object ADOQuery1SAPCODE: TWideStringField
      FieldName = 'SAPCODE'
      Size = 10
    end
    object ADOQuery1ISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object ADOQuery1SALESMENID: TIntegerField
      FieldName = 'SALESMENID'
    end
    object ADOQuery1DIAKID: TIntegerField
      FieldName = 'DIAKID'
    end
    object ADOQuery1ISTEST: TBooleanField
      FieldName = 'ISTEST'
    end
    object ADOQuery1ISCONS: TBooleanField
      FieldName = 'ISCONS'
    end
    object ADOQuery1AREABID: TIntegerField
      FieldName = 'AREABID'
    end
    object ADOQuery1DATEPHEND: TDateTimeField
      FieldName = 'DATEPHEND'
    end
    object ADOQuery1DATELOEND: TDateTimeField
      FieldName = 'DATELOEND'
    end
    object ADOQuery1HASDETAILEMP: TBooleanField
      FieldName = 'HASDETAILEMP'
    end
    object ADOQuery1ALLCARDSTOBL: TBooleanField
      FieldName = 'ALLCARDSTOBL'
    end
    object ADOQuery1ALLCARDSTOBLDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLDATE'
    end
    object ADOQuery1ALLCARDSTOBLSYSDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLSYSDATE'
    end
    object ADOQuery1ALLCARDSTOBLUSR: TIntegerField
      FieldName = 'ALLCARDSTOBLUSR'
    end
    object ADOQuery1CUSTOMEROFF: TBooleanField
      FieldName = 'CUSTOMEROFF'
    end
    object ADOQuery1CUSTOMEROFFDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFDATE'
    end
    object ADOQuery1CUSTOMEROFFSYSDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFSYSDATE'
    end
    object ADOQuery1CUSTOMEROFFUSR: TIntegerField
      FieldName = 'CUSTOMEROFFUSR'
    end
    object ADOQuery1CARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object ADOQuery1DATEEND: TDateTimeField
      FieldName = 'DATEEND'
    end
    object ADOQuery1CompanyTypeId: TIntegerField
      FieldName = 'CompanyTypeId'
    end
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 720
    Top = 240
    object actEnhmPelates: TAction
      Caption = #917#957#951#956#941#961#969#963#951' '#922#953#957#942#963#949#969#957
      OnExecute = actEnhmPelatesExecute
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
      'PelDef;Initial Catalog=C:\DELPHI\SOURCE\AVINCARD'
    CursorType = ctStatic
    TableDirect = True
    TableName = 'ToSapPel.txt'
    Left = 448
    Top = 160
    object EnhmSapCodePrat: TIntegerField
      FieldName = 'CodePrat'
    end
    object EnhmSapCodeCust: TIntegerField
      FieldName = 'CodeCust'
    end
    object EnhmSapAmount: TIntegerField
      FieldName = 'Amount'
    end
    object EnhmSapNeg: TIntegerField
      FieldName = 'Neg'
    end
    object EnhmSapSText: TStringField
      FieldName = 'SText'
      Size = 50
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
        Name = 'BTAcard'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE V_TRAN_FOR_ENHM'
      'SET [Tran.AcardUpd] = :BTUpd , [Tran.AcardUPDBT] = :BTAcard'
      '')
    Left = 224
    Top = 216
  end
  object InsTrans: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsTran
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM TRANC')
    Left = 144
    Top = 216
    object InsTransTRANCID: TAutoIncField
      FieldName = 'TRANCID'
      ReadOnly = True
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
    object InsTransTRANCDATE: TDateTimeField
      FieldName = 'TRANCDATE'
    end
    object InsTransTRANBCID: TIntegerField
      FieldName = 'TRANBCID'
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
    object InsTransENHMCOCALLID: TIntegerField
      FieldName = 'ENHMCOCALLID'
    end
    object InsTransENHMCOCALLDATE: TDateTimeField
      FieldName = 'ENHMCOCALLDATE'
    end
    object InsTransAUTOUPDATE: TBooleanField
      FieldName = 'AUTOUPDATE'
    end
    object InsTransVALUEDAY: TDateTimeField
      FieldName = 'VALUEDAY'
    end
    object InsTransVALUEDAYUPDATED: TBooleanField
      FieldName = 'VALUEDAYUPDATED'
    end
  end
  object qryDeleteTranC: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PTranBCID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Delete From TranC '
      'Where TranBCID = :PTranBCID')
    Left = 56
    Top = 216
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
      LookupDataSet = ADOQuery1
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'NAME'
      KeyFields = 'Acard.CustomerId'
      Lookup = True
    end
    object StringField4: TStringField
      FieldKind = fkLookup
      FieldName = 'StationDescr'
      LookupDataSet = ADOQuery2
      LookupKeyFields = 'STATIONID'
      LookupResultField = 'NAME'
      KeyFields = 'Tran.StationId'
      LookupCache = True
      Lookup = True
    end
  end
end
