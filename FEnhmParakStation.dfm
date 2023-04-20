inherited frmFEnhmParakStation: TfrmFEnhmParakStation
  Left = 297
  Top = 147
  Caption = #928#945#961#945#954#961#940#964#951#963#951' '#945#957#940' '#928#961#945#964#942#961#953#959' @'
  ClientHeight = 543
  ClientWidth = 824
  OldCreateOrder = True
  OnCreate = FormCreate
  ExplicitWidth = 832
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar [0]
    Left = 0
    Top = 524
    Width = 824
    Height = 19
    Panels = <
      item
        Width = 200
      end>
  end
  object ActionToolBar1: TActionToolBar [1]
    Left = 0
    Top = 0
    Width = 824
    Height = 23
    ActionManager = dxBarManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 23
    Width = 824
    Height = 501
    Align = alClient
    TabOrder = 2
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
      FilterBox.Visible = fvNever
      DataController.DataSource = dtsTran
      DataController.DetailKeyFieldNames = 'Tran.StationId'
      DataController.Filter.AutoDataSetFilter = True
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '###,##0.00'
          Kind = skSum
          FieldName = 'SumAmount'
          Column = cxGrid1DBTableView1SumAmount
          DisplayText = #913#958#943#945' '
        end
        item
          Format = '###,##0.00'
          Kind = skSum
          FieldName = 'SumQuantity'
          Column = cxGrid1DBTableView1SumQuantity
          DisplayText = #928#959#963#972#964#951#964#945
        end
        item
          Format = '###,##0.00'
          Kind = skSum
          FieldName = 'ParakAmount'
          Column = cxGrid1DBTableView1ParakAmount
          DisplayText = #913#958#943#945' '#928#945#961#945#954'.'
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,##0.00'
          Kind = skSum
          FieldName = 'SumAmount'
          Column = cxGrid1DBTableView1SumAmount
        end
        item
          Format = '###,##0.00'
          Kind = skSum
          FieldName = 'SumQuantity'
          Column = cxGrid1DBTableView1SumQuantity
        end
        item
          Format = '###,##0.00 '
          Kind = skSum
          FieldName = 'ParakAmount'
          Column = cxGrid1DBTableView1ParakAmount
        end>
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
      object cxGrid1DBTableView1TranStationId: TcxGridDBColumn
        Caption = #922#969#948'.'#928#961#945#964'.'
        DataBinding.FieldName = 'Tran.StationId'
        Width = 49
      end
      object cxGrid1DBTableView1LStationName: TcxGridDBColumn
        Caption = #928#961#945#964#942#961#953#959
        DataBinding.FieldName = 'LStationName'
        Width = 276
      end
      object cxGrid1DBTableView1LStationAddr: TcxGridDBColumn
        Caption = #916#953#949#965'.'#928#961#945#964#951#961#943#959#965
        DataBinding.FieldName = 'LStationAddr'
        Width = 95
      end
      object cxGrid1DBTableView1TranMerchantId: TcxGridDBColumn
        Caption = #922#969#948'.'#917#956#960#972#961#959#965
        DataBinding.FieldName = 'Tran.MerchantId'
        Width = 48
      end
      object cxGrid1DBTableView1MerchantSapCode: TcxGridDBColumn
        Caption = 'Sap '#917#956#960#972#961#959#965
        DataBinding.FieldName = 'Merchant.SapCode'
        Width = 49
      end
      object cxGrid1DBTableView1SitemIGroupID: TcxGridDBColumn
        Caption = #922#945#964#951#947#959#961#943#945' '#928#961#959#943#959#957#964#959#962
        DataBinding.FieldName = 'Sitem.IGroupID'
        Width = 49
      end
      object cxGrid1DBTableView1LSitem: TcxGridDBColumn
        Caption = #928#961#959#943#959#957'.'
        DataBinding.FieldName = 'LSitem'
      end
      object cxGrid1DBTableView1SumAmount: TcxGridDBColumn
        Caption = #931#965#957#959#955#959' '#913#958#943#945#962
        DataBinding.FieldName = 'SumAmount'
        Width = 49
      end
      object cxGrid1DBTableView1SumQuantity: TcxGridDBColumn
        Caption = #931#973#957#959#955#959' '#928#959#963#972#964#951#964#945#962
        DataBinding.FieldName = 'SumQuantity'
        Width = 48
      end
      object cxGrid1DBTableView1ParakAmount: TcxGridDBColumn
        Caption = #913#958#943#945' '#928#945#961#945#954#961'.'
        DataBinding.FieldName = 'ParakAmount'
        Width = 49
      end
      object cxGrid1DBTableView1ParakPer: TcxGridDBColumn
        Caption = #928#959#963#959#963#964'.'#928#945#961#945#954'.'
        DataBinding.FieldName = 'ParakPer'
        Width = 49
      end
      object cxGrid1DBTableView1Updated: TcxGridDBColumn
        DataBinding.FieldName = 'Updated'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited ActionMainList: TActionList
    Left = 680
    Top = 96
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 40
    Top = 96
  end
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT [Tran.StationId]  ,'
      '              [Tran.MerchantId]  ,'
      '              [Merchant.SapCode] , '
      '              [Sitem.IGroupID] ,'
      '               Sum([Tran.Amount])     As SumAmount,'
      '               Sum([Tran.Quantity])   As SumQuantity'
      'FROM V_TRAN_FOR_ENHM'
      
        '---Group By [Tran.StationId]  ,  [Tran.MerchantId]  ,  [Merchant' +
        '.SAPCode]  ,  [Sitem.IGroupID] '
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 96
    Top = 96
    object qryTranTranStationId: TIntegerField
      FieldName = 'Tran.StationId'
    end
    object qryTranSitemIGroupID: TIntegerField
      FieldName = 'Sitem.IGroupID'
    end
    object qryTranSumAmount: TFloatField
      FieldName = 'SumAmount'
      currency = True
    end
    object qryTranSumQuantity: TFloatField
      FieldName = 'SumQuantity'
      DisplayFormat = '###,##0.00'
    end
    object qryTranParakPer: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ParakPer'
      DisplayFormat = '#0 %'
      Calculated = True
    end
    object qryTranParakAmount: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ParakAmount'
      Calculated = True
    end
    object qryTranUpdated: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Updated'
      Calculated = True
    end
    object qryTranTranMerchantId: TIntegerField
      FieldName = 'Tran.MerchantId'
    end
    object qryTranMerchantSapCode: TWideStringField
      FieldName = 'Merchant.SapCode'
      Size = 10
    end
    object qryTranLStationName: TStringField
      FieldKind = fkLookup
      FieldName = 'LStationName'
      LookupDataSet = qryStation
      LookupKeyFields = 'Stationid'
      LookupResultField = 'NAME'
      KeyFields = 'Tran.StationId'
      Size = 60
      Lookup = True
    end
    object qryTranLStationAddr: TStringField
      FieldKind = fkLookup
      FieldName = 'LStationAddr'
      LookupDataSet = qryStation
      LookupKeyFields = 'Stationid'
      LookupResultField = 'STREET'
      KeyFields = 'Tran.StationId'
      Size = 60
      Lookup = True
    end
    object qryTranLSitem: TStringField
      FieldKind = fkLookup
      FieldName = 'LSitem'
      LookupDataSet = qryIGroup
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'Sitem.IGroupID'
      Size = 15
      Lookup = True
    end
  end
  object qryCustomer: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = dtsTran
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM CUSTOMER'
      '')
    Left = 616
    Top = 208
    object qryCustomerCUSTOMERID: TIntegerField
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
    object qryCustomerGarantieId: TIntegerField
      FieldName = 'GarantieId'
    end
    object qryCustomerGarantieAmount: TFloatField
      FieldName = 'GarantieAmount'
    end
    object qryCustomerComments: TMemoField
      FieldName = 'Comments'
      BlobType = ftMemo
    end
  end
  object qryMerchant: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = dtsTran
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM Merchant'
      '')
    Left = 688
    Top = 208
    object qryMerchantMerchantId: TIntegerField
      FieldName = 'MerchantId'
      ReadOnly = True
    end
    object qryMerchantName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object qryMerchantStreet: TWideStringField
      FieldName = 'Street'
      Size = 50
    end
    object qryMerchantZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryMerchantCity: TWideStringField
      FieldName = 'City'
      Size = 50
    end
    object qryMerchantAFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object qryMerchantDOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object qryMerchantISTEST: TBooleanField
      FieldName = 'ISTEST'
    end
    object qryMerchantAreaId: TIntegerField
      FieldName = 'AreaId'
    end
    object qryMerchantSAPCode: TWideStringField
      FieldName = 'SAPCode'
      Size = 10
    end
    object qryMerchantMerchantCode: TWideStringField
      FieldName = 'MerchantCode'
      Size = 50
    end
    object qryMerchantSalesMenId: TIntegerField
      FieldName = 'SalesMenId'
    end
    object qryMerchantInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryMerchantInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryMerchantUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qryMerchantUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qryMerchantDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryMerchantDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryMerchantDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryMerchantInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryMerchantInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryMerchantInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object qryMerchantStopSales: TBooleanField
      FieldName = 'StopSales'
    end
    object qryMerchantStopSalesUsr: TIntegerField
      FieldName = 'StopSalesUsr'
    end
    object qryMerchantStopSalesDt: TDateTimeField
      FieldName = 'StopSalesDt'
    end
  end
  object dxBarManager1: TActionManager
    ActionBars.ShowHints = False
    ActionBars = <
      item
        Items = <
          item
            Action = actClose
          end
          item
            Action = actPrintGrid
          end
          item
            Action = actEnhmStation
          end
          item
            Action = actEnhmStationSingle
            Caption = #917#957#951#956#941#961#969#963#951' '#922#953#957#942#963#949#969#957' (&1 '#913#961#967#949#943#959')'
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
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 328
    Top = 88
    object actClose: TAction
      Caption = #917#958#972#948#959#962
      OnExecute = actCloseExecute
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
      OnExecute = UpdateActionsExecute
    end
    object actEnhmStation: TAction
      Caption = #917#957#951#956#941#961#969#963#951' '#922#953#957#942#963#949#969#957
      OnExecute = actEnhmStationMultiExecute
    end
    object actEnhmStationSingle: TAction
      Caption = #917#957#951#956#941#961#969#963#951' '#922#953#957#942#963#949#969#957' (1 '#913#961#967#949#943#959')'
      OnExecute = actEnhmStationSingleExecute
    end
    object actPrintGrid: TAction
      Caption = #917#954#960#973#960#969#963#951
      OnExecute = actPrintGridExecute
    end
  end
  object EnhmSap: TADOTable
    AutoCalcFields = False
    Connection = ADOConnection1
    CursorType = ctStatic
    TableDirect = True
    TableName = 'ToSapParak.txt'
    Left = 368
    Top = 240
    object EnhmSapCode: TIntegerField
      FieldName = 'Code'
    end
    object EnhmSapAmount: TIntegerField
      FieldName = 'Amount'
    end
    object EnhmSapTaxCode: TStringField
      FieldName = 'TaxCode'
      Size = 2
    end
    object EnhmSapSText: TStringField
      FieldName = 'SText'
      Size = 50
    end
  end
  object FindStation: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'Id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT  [Merchantid]'
      '      ,[IGroupId1]'
      '      ,[Pososto1]'
      '      ,[IGroupId2]'
      '      ,[Pososto2]'
      '      ,[IGroupId3]'
      '      ,[Pososto3]'
      '      ,[IGroupId4]'
      '      ,[Pososto4]'
      '      ,[IGroupId5]'
      '      ,[Pososto5]'
      '      ,[IGroupId6]'
      '      ,[Pososto6]'
      '      ,[IGroupId7]'
      '      ,[Pososto7]'
      '      ,[IGroupId8]'
      '      ,[Pososto8]'
      '      ,[IGroupId9]'
      '      ,[Pososto9]'
      '      ,[IGroupId10]'
      '      ,[Pososto10]'
      '  FROM Merchant'
      'Where MerchantId = :Id'
      '')
    Left = 40
    Top = 168
    object FindStationMerchantid: TIntegerField
      FieldName = 'Merchantid'
      ReadOnly = True
    end
    object FindStationIGroupId1: TIntegerField
      FieldName = 'IGroupId1'
    end
    object FindStationPososto1: TFloatField
      FieldName = 'Pososto1'
    end
    object FindStationIGroupId2: TIntegerField
      FieldName = 'IGroupId2'
    end
    object FindStationPososto2: TFloatField
      FieldName = 'Pososto2'
    end
    object FindStationIGroupId3: TIntegerField
      FieldName = 'IGroupId3'
    end
    object FindStationPososto3: TFloatField
      FieldName = 'Pososto3'
    end
    object FindStationIGroupId4: TIntegerField
      FieldName = 'IGroupId4'
    end
    object FindStationPososto4: TFloatField
      FieldName = 'Pososto4'
    end
    object FindStationIGroupId5: TIntegerField
      FieldName = 'IGroupId5'
    end
    object FindStationPososto5: TFloatField
      FieldName = 'Pososto5'
    end
    object FindStationIGroupId6: TIntegerField
      FieldName = 'IGroupId6'
    end
    object FindStationPososto6: TFloatField
      FieldName = 'Pososto6'
    end
    object FindStationIGroupId7: TIntegerField
      FieldName = 'IGroupId7'
    end
    object FindStationPososto7: TFloatField
      FieldName = 'Pososto7'
    end
    object FindStationIGroupId8: TIntegerField
      FieldName = 'IGroupId8'
    end
    object FindStationPososto8: TFloatField
      FieldName = 'Pososto8'
    end
    object FindStationIGroupId9: TIntegerField
      FieldName = 'IGroupId9'
    end
    object FindStationPososto9: TFloatField
      FieldName = 'Pososto9'
    end
    object FindStationIGroupId10: TIntegerField
      FieldName = 'IGroupId10'
    end
    object FindStationPososto10: TFloatField
      FieldName = 'Pososto10'
    end
  end
  object FindIGroup: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM IGroup'
      'Order By Id'
      ''
      '')
    Left = 104
    Top = 168
    object FindIGroupId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object FindIGroupName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object FindIGroupBITNO: TIntegerField
      FieldName = 'BITNO'
    end
    object FindIGroupPOSOSTO: TFloatField
      FieldName = 'POSOSTO'
    end
    object FindIGroupInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object FindIGroupInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object FindIGroupUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object FindIGroupUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object FindIGroupDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object FindIGroupDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object FindIGroupDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object FindIGroupInActive: TBooleanField
      FieldName = 'InActive'
    end
    object FindIGroupInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object FindIGroupInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
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
        Name = 'BTCommission'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'UPDATE V_TRAN_FOR_ENHM'
      
        'SET [Tran.COMMISSIONUPD] = :BTUpd , [Tran.COMMISSIONUPDBT] = :BT' +
        'Commission')
    Left = 56
    Top = 312
  end
  object qryDeleteTranP: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PTranBCoID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Delete From TranP '
      'Where TranBCOID =  :PTranBCoID')
    Left = 56
    Top = 384
  end
  object InsTranP: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsTran
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM TRANP')
    Left = 160
    Top = 384
    object InsTranPTRANPID: TAutoIncField
      FieldName = 'TRANPID'
      ReadOnly = True
    end
    object InsTranPSTATIONID: TIntegerField
      FieldName = 'STATIONID'
    end
    object InsTranPSITEMID: TIntegerField
      FieldName = 'SITEMID'
    end
    object InsTranPDEBIT: TFloatField
      FieldName = 'DEBIT'
    end
    object InsTranPCREDIT: TFloatField
      FieldName = 'CREDIT'
    end
    object InsTranPTTEXT: TWideStringField
      FieldName = 'TTEXT'
      Size = 50
    end
    object InsTranPTRANPDATE: TDateTimeField
      FieldName = 'TRANPDATE'
    end
    object InsTranPTRANBCOID: TIntegerField
      FieldName = 'TRANBCOID'
    end
    object InsTranPINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object InsTranPUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object InsTranPINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object InsTranPUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object qrySumTranP: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PTranBCID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select StationId, TranBCOID, Sum(Debit) AS SumParak'
      'From TranP'
      'Where TranBCOID = :PTranBCID'
      'Group By Stationid, TranBCOID')
    Left = 160
    Top = 312
    object qrySumTranPStationId: TIntegerField
      FieldName = 'StationId'
    end
    object qrySumTranPTranBCOID: TIntegerField
      FieldName = 'TranBCOID'
    end
    object qrySumTranPSumParak: TFloatField
      FieldName = 'SumParak'
    end
    object qrySumTranPLSapCode: TIntegerField
      FieldKind = fkLookup
      FieldName = 'LSapCode'
      LookupDataSet = qryMerchant
      LookupKeyFields = 'MerchantId'
      LookupResultField = 'SAPCODE'
      KeyFields = 'StationId'
      LookupCache = True
      Lookup = True
    end
    object qrySumTranPLStationKY: TIntegerField
      FieldKind = fkLookup
      FieldName = 'LStationKY'
      LookupDataSet = qryMerchant0
      LookupKeyFields = 'MerchantId'
      LookupResultField = 'BRANCHID'
      KeyFields = 'StationId'
      LookupCache = True
      Lookup = True
    end
    object qrySumTranPLName: TStringField
      FieldKind = fkLookup
      FieldName = 'LName'
      LookupDataSet = qryMerchant0
      LookupKeyFields = 'MerchantId'
      LookupResultField = 'NAME'
      KeyFields = 'StationId'
      Size = 40
      Lookup = True
    end
  end
  object EnhmSapY: TADOTable
    AutoCalcFields = False
    Connection = ADOConnection2
    CursorType = ctStatic
    TableDirect = True
    TableName = 'ToSapParaY.txt'
    Left = 592
    Top = 360
    object EnhmSapYCODE: TIntegerField
      FieldName = 'CODE'
    end
    object EnhmSapYAMOUNT: TIntegerField
      FieldName = 'AMOUNT'
    end
    object EnhmSapYTAXCODE: TStringField
      FieldName = 'TAXCODE'
      Size = 2
    end
    object EnhmSapYSTEXT: TStringField
      FieldName = 'STEXT'
      Size = 50
    end
  end
  object qryMerchant0: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM Merchant'
      ''
      '')
    Left = 176
    Top = 168
    object qryMerchant0MerchantId: TIntegerField
      FieldName = 'MerchantId'
      ReadOnly = True
    end
    object qryMerchant0Name: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object qryMerchant0Street: TWideStringField
      FieldName = 'Street'
      Size = 50
    end
    object qryMerchant0ZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryMerchant0City: TWideStringField
      FieldName = 'City'
      Size = 50
    end
    object qryMerchant0AFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object qryMerchant0DOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object qryMerchant0ISTEST: TBooleanField
      FieldName = 'ISTEST'
    end
    object qryMerchant0AreaId: TIntegerField
      FieldName = 'AreaId'
    end
    object qryMerchant0SAPCode: TWideStringField
      FieldName = 'SAPCode'
      Size = 10
    end
    object qryMerchant0MerchantCode: TWideStringField
      FieldName = 'MerchantCode'
      Size = 50
    end
    object qryMerchant0SalesMenId: TIntegerField
      FieldName = 'SalesMenId'
    end
    object qryMerchant0InsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryMerchant0InsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryMerchant0UpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qryMerchant0UpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qryMerchant0Deleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryMerchant0DelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryMerchant0DelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryMerchant0InActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryMerchant0InActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryMerchant0InActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object qryMerchant0StopSales: TBooleanField
      FieldName = 'StopSales'
    end
    object qryMerchant0StopSalesUsr: TIntegerField
      FieldName = 'StopSalesUsr'
    end
    object qryMerchant0StopSalesDt: TDateTimeField
      FieldName = 'StopSalesDt'
    end
    object qryMerchant0BranchId: TIntegerField
      FieldName = 'BranchId'
    end
  end
  object AllStation: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM STATION'
      ''
      '')
    Left = 248
    Top = 224
    object AllStationStationid: TIntegerField
      FieldName = 'Stationid'
      ReadOnly = True
    end
    object AllStationName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object AllStationSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object AllStationZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object AllStationCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object AllStationAreaId: TIntegerField
      FieldName = 'AreaId'
    end
    object AllStationSalesMenId: TIntegerField
      FieldName = 'SalesMenId'
    end
    object AllStationIGroupId1: TIntegerField
      FieldName = 'IGroupId1'
    end
    object AllStationPososto1: TFloatField
      FieldName = 'Pososto1'
    end
    object AllStationHaveGroup1: TBooleanField
      FieldName = 'HaveGroup1'
    end
    object AllStationIGroupId2: TIntegerField
      FieldName = 'IGroupId2'
    end
    object AllStationPososto2: TFloatField
      FieldName = 'Pososto2'
    end
    object AllStationHaveGroup2: TBooleanField
      FieldName = 'HaveGroup2'
    end
    object AllStationIGroupId3: TIntegerField
      FieldName = 'IGroupId3'
    end
    object AllStationPososto3: TFloatField
      FieldName = 'Pososto3'
    end
    object AllStationHaveGroup3: TBooleanField
      FieldName = 'HaveGroup3'
    end
    object AllStationIGroupId4: TIntegerField
      FieldName = 'IGroupId4'
    end
    object AllStationPososto4: TFloatField
      FieldName = 'Pososto4'
    end
    object AllStationHaveGroup4: TBooleanField
      FieldName = 'HaveGroup4'
    end
    object AllStationIGroupId5: TIntegerField
      FieldName = 'IGroupId5'
    end
    object AllStationPososto5: TFloatField
      FieldName = 'Pososto5'
    end
    object AllStationHaveGroup5: TBooleanField
      FieldName = 'HaveGroup5'
    end
    object AllStationIGroupId6: TIntegerField
      FieldName = 'IGroupId6'
    end
    object AllStationPososto6: TFloatField
      FieldName = 'Pososto6'
    end
    object AllStationHaveGroup6: TBooleanField
      FieldName = 'HaveGroup6'
    end
    object AllStationIGroupId7: TIntegerField
      FieldName = 'IGroupId7'
    end
    object AllStationPososto7: TFloatField
      FieldName = 'Pososto7'
    end
    object AllStationHaveGroup7: TBooleanField
      FieldName = 'HaveGroup7'
    end
    object AllStationIGroupId8: TIntegerField
      FieldName = 'IGroupId8'
    end
    object AllStationPososto8: TFloatField
      FieldName = 'Pososto8'
    end
    object AllStationHaveGroup8: TBooleanField
      FieldName = 'HaveGroup8'
    end
    object AllStationIGroupId9: TIntegerField
      FieldName = 'IGroupId9'
    end
    object AllStationPososto9: TFloatField
      FieldName = 'Pososto9'
    end
    object AllStationHaveGroup9: TBooleanField
      FieldName = 'HaveGroup9'
    end
    object AllStationIGroupId10: TIntegerField
      FieldName = 'IGroupId10'
    end
    object AllStationPososto10: TFloatField
      FieldName = 'Pososto10'
    end
    object AllStationHaveGroup10: TBooleanField
      FieldName = 'HaveGroup10'
    end
    object AllStationDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object AllStationDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object AllStationDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object AllStationInActive: TBooleanField
      FieldName = 'InActive'
    end
    object AllStationInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object AllStationInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object AllStationStopSales: TBooleanField
      FieldName = 'StopSales'
    end
    object AllStationStopSalesUsr: TIntegerField
      FieldName = 'StopSalesUsr'
    end
    object AllStationStopSalesDt: TDateTimeField
      FieldName = 'StopSalesDt'
    end
    object AllStationIsTest: TBooleanField
      FieldName = 'IsTest'
    end
    object AllStationIsTestUsr: TIntegerField
      FieldName = 'IsTestUsr'
    end
    object AllStationIsTestDt: TDateTimeField
      FieldName = 'IsTestDt'
    end
    object AllStationEndPending: TBooleanField
      FieldName = 'EndPending'
    end
    object AllStationEndPendingDT: TDateTimeField
      FieldName = 'EndPendingDT'
    end
    object AllStationEndPendingUsr: TIntegerField
      FieldName = 'EndPendingUsr'
    end
  end
  object EnhmSapK: TADOTable
    AutoCalcFields = False
    Connection = ADOConnection3
    CursorType = ctStatic
    TableDirect = True
    TableName = 'ToSapParak.txt'
    Left = 712
    Top = 360
    object EnhmSapKCODE: TIntegerField
      FieldName = 'Code'
    end
    object EnhmSapKAmount: TIntegerField
      FieldName = 'Amount'
    end
    object EnhmSapKTaxCode: TStringField
      FieldName = 'TaxCode'
      Size = 2
    end
    object EnhmSapKSText: TStringField
      FieldName = 'SText'
      Size = 50
    end
  end
  object qryStation: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM Station'
      ''
      '')
    Left = 384
    Top = 376
    object qryStationStationid: TIntegerField
      FieldName = 'Stationid'
      ReadOnly = True
    end
    object qryStationName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object qryStationSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object qryStationZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryStationCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryStationAreaId: TIntegerField
      FieldName = 'AreaId'
    end
    object qryStationSalesMenId: TIntegerField
      FieldName = 'SalesMenId'
    end
    object qryStationIGroupId1: TIntegerField
      FieldName = 'IGroupId1'
    end
    object qryStationPososto1: TFloatField
      FieldName = 'Pososto1'
    end
    object qryStationHaveGroup1: TBooleanField
      FieldName = 'HaveGroup1'
    end
    object qryStationIGroupId2: TIntegerField
      FieldName = 'IGroupId2'
    end
    object qryStationPososto2: TFloatField
      FieldName = 'Pososto2'
    end
    object qryStationHaveGroup2: TBooleanField
      FieldName = 'HaveGroup2'
    end
    object qryStationIGroupId3: TIntegerField
      FieldName = 'IGroupId3'
    end
    object qryStationPososto3: TFloatField
      FieldName = 'Pososto3'
    end
    object qryStationHaveGroup3: TBooleanField
      FieldName = 'HaveGroup3'
    end
    object qryStationIGroupId4: TIntegerField
      FieldName = 'IGroupId4'
    end
    object qryStationPososto4: TFloatField
      FieldName = 'Pososto4'
    end
    object qryStationHaveGroup4: TBooleanField
      FieldName = 'HaveGroup4'
    end
    object qryStationIGroupId5: TIntegerField
      FieldName = 'IGroupId5'
    end
    object qryStationPososto5: TFloatField
      FieldName = 'Pososto5'
    end
    object qryStationHaveGroup5: TBooleanField
      FieldName = 'HaveGroup5'
    end
    object qryStationIGroupId6: TIntegerField
      FieldName = 'IGroupId6'
    end
    object qryStationPososto6: TFloatField
      FieldName = 'Pososto6'
    end
    object qryStationHaveGroup6: TBooleanField
      FieldName = 'HaveGroup6'
    end
    object qryStationIGroupId7: TIntegerField
      FieldName = 'IGroupId7'
    end
    object qryStationPososto7: TFloatField
      FieldName = 'Pososto7'
    end
    object qryStationHaveGroup7: TBooleanField
      FieldName = 'HaveGroup7'
    end
    object qryStationIGroupId8: TIntegerField
      FieldName = 'IGroupId8'
    end
    object qryStationPososto8: TFloatField
      FieldName = 'Pososto8'
    end
    object qryStationHaveGroup8: TBooleanField
      FieldName = 'HaveGroup8'
    end
    object qryStationIGroupId9: TIntegerField
      FieldName = 'IGroupId9'
    end
    object qryStationPososto9: TFloatField
      FieldName = 'Pososto9'
    end
    object qryStationHaveGroup9: TBooleanField
      FieldName = 'HaveGroup9'
    end
    object qryStationIGroupId10: TIntegerField
      FieldName = 'IGroupId10'
    end
    object qryStationPososto10: TFloatField
      FieldName = 'Pososto10'
    end
    object qryStationHaveGroup10: TBooleanField
      FieldName = 'HaveGroup10'
    end
    object qryStationDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryStationDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryStationDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryStationInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryStationInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryStationInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object qryStationStopSales: TBooleanField
      FieldName = 'StopSales'
    end
    object qryStationStopSalesUsr: TIntegerField
      FieldName = 'StopSalesUsr'
    end
    object qryStationStopSalesDt: TDateTimeField
      FieldName = 'StopSalesDt'
    end
    object qryStationIsTest: TBooleanField
      FieldName = 'IsTest'
    end
    object qryStationIsTestUsr: TIntegerField
      FieldName = 'IsTestUsr'
    end
    object qryStationIsTestDt: TDateTimeField
      FieldName = 'IsTestDt'
    end
    object qryStationEndPending: TBooleanField
      FieldName = 'EndPending'
    end
    object qryStationEndPendingDT: TDateTimeField
      FieldName = 'EndPendingDT'
    end
    object qryStationEndPendingUsr: TIntegerField
      FieldName = 'EndPendingUsr'
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 360
    Top = 40
    object dxComponentPrinter1Link1: TdxGridReportLink
      Active = True
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
      ReportDocument.CreationDate = 42362.474919062500000000
      BuiltInReportLink = True
    end
  end
  object qryIGroup: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM IGroup'
      ''
      '')
    Left = 456
    Top = 376
    object qryIGroupId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qryIGroupName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object qryIGroupBITNO: TIntegerField
      FieldName = 'BITNO'
    end
    object qryIGroupPOSOSTO: TFloatField
      FieldName = 'POSOSTO'
    end
    object qryIGroupInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryIGroupInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryIGroupUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qryIGroupUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qryIGroupDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryIGroupDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryIGroupDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryIGroupInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryIGroupInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryIGroupInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object qryIGroupUseKM: TBooleanField
      FieldName = 'UseKM'
    end
    object qryIGroupUseQuantity: TBooleanField
      FieldName = 'UseQuantity'
    end
    object qryIGroupCalcCons: TBooleanField
      FieldName = 'CalcCons'
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=ToSap' +
      'ParakDef;Mode=ReadWrite'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 368
    Top = 184
  end
  object ADOConnection2: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=ToSap' +
      'ParakYDef;Mode=ReadWrite'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 592
    Top = 312
  end
  object ADOConnection3: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=ToSap' +
      'ParakKDef;Mode=ReadWrite'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 712
    Top = 312
  end
end
