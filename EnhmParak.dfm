inherited frmEnhmParak: TfrmEnhmParak
  Left = 297
  Top = 147
  Caption = #917#957#951#956#941#961#969#963#951' '#928#945#961#945#954#961#940#964#951#963#951#962
  ClientHeight = 543
  ClientWidth = 775
  OldCreateOrder = True
  OnCreate = FormShow
  OnShow = FormShow
  ExplicitWidth = 783
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 524
    Width = 775
    Height = 19
    Panels = <
      item
        Width = 200
      end>
  end
  object ActionToolBar1: TActionToolBar
    Left = 0
    Top = 0
    Width = 775
    Height = 23
    ActionManager = dxBarManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 23
    Width = 775
    Height = 501
    Align = alClient
    TabOrder = 2
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
      DataController.DetailKeyFieldNames = 'Tran.StationId'
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
      object cxGrid1DBTableView1TranStationId: TcxGridDBColumn
        DataBinding.FieldName = 'Tran.StationId'
      end
      object cxGrid1DBTableView1StationSapCode: TcxGridDBColumn
        DataBinding.FieldName = 'Station.SapCode'
      end
      object cxGrid1DBTableView1SumAmount: TcxGridDBColumn
        DataBinding.FieldName = 'SumAmount'
      end
      object cxGrid1DBTableView1SumQuantity: TcxGridDBColumn
        DataBinding.FieldName = 'SumQuantity'
      end
      object cxGrid1DBTableView1StationDescr: TcxGridDBColumn
        DataBinding.FieldName = 'StationDescr'
      end
      object cxGrid1DBTableView1ParakPer: TcxGridDBColumn
        DataBinding.FieldName = 'ParakPer'
      end
      object cxGrid1DBTableView1ParakAmount: TcxGridDBColumn
        DataBinding.FieldName = 'ParakAmount'
      end
      object cxGrid1DBTableView1IGroupID: TcxGridDBColumn
        DataBinding.FieldName = 'IGroupID'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 56
    Top = 48
  end
  object qryTran: TADOQuery
    AutoCalcFields = False
    Connection = GeneralDM.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT [Tran].StationId  As [Tran.StationId],'
      '       Station.SapCode   As [Station.SapCode],'
      '       Sitem.IGroupID    As [IGroupID],'
      '       Sum([Amount])     As SumAmount,'
      '       Sum([Quantity])   As SumQuantity'
      
        'FROM (STATION INNER JOIN (CUSTOMER INNER JOIN (ACARD INNER JOIN ' +
        '[TRAN] ON [ACARD].[ACARDID]=[TRAN].ACARDID) ON [CUSTOMER].[CUSTO' +
        'MERID]=[ACARD].[CUSTOMERID]) ON [STATION].[STATIONID]=[TRAN].STA' +
        'TIONID) INNER JOIN SITEM ON [TRAN].[SITEMID]=[SITEM].[SITEMID]'
      '')
    Left = 120
    Top = 56
    object qryTranTranStationId: TIntegerField
      FieldName = 'Tran.StationId'
    end
    object qryTranStationSapCode: TWideStringField
      FieldName = 'Station.SapCode'
      Size = 10
    end
    object qryTranSumAmount: TFloatField
      FieldName = 'SumAmount'
    end
    object qryTranSumQuantity: TFloatField
      FieldName = 'SumQuantity'
    end
    object qryTranStationDescr: TStringField
      FieldKind = fkLookup
      FieldName = 'StationDescr'
      LookupDataSet = ADOQuery2
      LookupKeyFields = 'STATIONID'
      LookupResultField = 'NAME'
      KeyFields = 'Tran.StationId'
      LookupCache = True
      Lookup = True
    end
    object qryTranParakPer: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ParakPer'
      Calculated = True
    end
    object qryTranParakAmount: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ParakAmount'
      Calculated = True
    end
    object qryTranIGroupID: TIntegerField
      FieldName = 'IGroupID'
    end
  end
  object ADOQuery1: TADOQuery
    Connection = GeneralDM.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = dtsTran
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM CUSTOMER'
      '')
    Left = 536
    Top = 104
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
    object ADOQuery1PHONE1: TWideStringField
      FieldName = 'PHONE1'
      Size = 25
    end
    object ADOQuery1PHONE2: TWideStringField
      FieldName = 'PHONE2'
      Size = 25
    end
    object ADOQuery1MOBILE: TWideStringField
      FieldName = 'MOBILE'
      Size = 25
    end
    object ADOQuery1FAX: TWideStringField
      FieldName = 'FAX'
      Size = 25
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
    object ADOQuery1EMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object ADOQuery1LASTNAME: TWideStringField
      FieldName = 'LASTNAME'
      Size = 50
    end
    object ADOQuery1FIRSTNAME: TWideStringField
      FieldName = 'FIRSTNAME'
      Size = 50
    end
    object ADOQuery1METERBOOLEAN: TBooleanField
      FieldName = 'METERBOOLEAN'
    end
    object ADOQuery1PINBOOLEAN: TBooleanField
      FieldName = 'PINBOOLEAN'
    end
    object ADOQuery1IGROUPID1: TIntegerField
      FieldName = 'IGROUPID1'
    end
    object ADOQuery1IGROUPID2: TIntegerField
      FieldName = 'IGROUPID2'
    end
    object ADOQuery1IGROUPID3: TIntegerField
      FieldName = 'IGROUPID3'
    end
    object ADOQuery1IGROUPID4: TIntegerField
      FieldName = 'IGROUPID4'
    end
    object ADOQuery1DAYAMOUNT: TFloatField
      FieldName = 'DAYAMOUNT'
    end
    object ADOQuery1MONTHAMOUNT: TFloatField
      FieldName = 'MONTHAMOUNT'
    end
    object ADOQuery1BRANCHID: TIntegerField
      FieldName = 'BRANCHID'
    end
  end
  object ADOQuery2: TADOQuery
    Connection = GeneralDM.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = dtsTran
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM STATION'
      '')
    Left = 608
    Top = 104
    object ADOQuery2STATIONID: TAutoIncField
      FieldName = 'STATIONID'
      ReadOnly = True
    end
    object ADOQuery2NAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
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
    object ADOQuery2AFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object ADOQuery2DOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object ADOQuery2PHONE1: TWideStringField
      FieldName = 'PHONE1'
      Size = 25
    end
    object ADOQuery2PHONE2: TWideStringField
      FieldName = 'PHONE2'
      Size = 25
    end
    object ADOQuery2MOBILE: TWideStringField
      FieldName = 'MOBILE'
      Size = 25
    end
    object ADOQuery2FAX: TWideStringField
      FieldName = 'FAX'
      Size = 25
    end
    object ADOQuery2AREAID: TIntegerField
      FieldName = 'AREAID'
    end
    object ADOQuery2LOCATIONID: TIntegerField
      FieldName = 'LOCATIONID'
    end
    object ADOQuery2TERMINALCODE: TWideStringField
      FieldName = 'TERMINALCODE'
    end
    object ADOQuery2TERMINALSERIALNO: TWideStringField
      FieldName = 'TERMINALSERIALNO'
      Size = 50
    end
    object ADOQuery2INSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object ADOQuery2UPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object ADOQuery2INSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object ADOQuery2UPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object ADOQuery2PROFESSION: TWideStringField
      FieldName = 'PROFESSION'
      Size = 50
    end
    object ADOQuery2EMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object ADOQuery2LASTNAME: TWideStringField
      FieldName = 'LASTNAME'
      Size = 50
    end
    object ADOQuery2FIRSTNAME: TWideStringField
      FieldName = 'FIRSTNAME'
      Size = 50
    end
    object ADOQuery2SGROUPID: TIntegerField
      FieldName = 'SGROUPID'
    end
    object ADOQuery2SCLASSID: TIntegerField
      FieldName = 'SCLASSID'
    end
    object ADOQuery2STOPSALES: TBooleanField
      FieldName = 'STOPSALES'
    end
    object ADOQuery2BRANCHID: TIntegerField
      FieldName = 'BRANCHID'
    end
    object ADOQuery2IGROUPID1: TIntegerField
      FieldName = 'IGROUPID1'
    end
    object ADOQuery2IGROUPID2: TIntegerField
      FieldName = 'IGROUPID2'
    end
    object ADOQuery2IGROUPID3: TIntegerField
      FieldName = 'IGROUPID3'
    end
    object ADOQuery2IGROUPID4: TIntegerField
      FieldName = 'IGROUPID4'
    end
    object ADOQuery2POSOSTO1: TFloatField
      FieldName = 'POSOSTO1'
    end
    object ADOQuery2POSOSTO2: TFloatField
      FieldName = 'POSOSTO2'
    end
    object ADOQuery2POSOSTO3: TFloatField
      FieldName = 'POSOSTO3'
    end
    object ADOQuery2POSOSTO4: TFloatField
      FieldName = 'POSOSTO4'
    end
    object ADOQuery2MERCHANTCODE: TWideStringField
      FieldName = 'MERCHANTCODE'
      Size = 15
    end
    object ADOQuery2IGROUPID5: TIntegerField
      FieldName = 'IGROUPID5'
    end
    object ADOQuery2POSOSTO5: TFloatField
      FieldName = 'POSOSTO5'
    end
    object ADOQuery2HAVEIGROUP1: TBooleanField
      FieldName = 'HAVEIGROUP1'
    end
    object ADOQuery2HAVEIGROUP2: TBooleanField
      FieldName = 'HAVEIGROUP2'
    end
    object ADOQuery2HAVEIGROUP3: TBooleanField
      FieldName = 'HAVEIGROUP3'
    end
    object ADOQuery2HAVEIGROUP4: TBooleanField
      FieldName = 'HAVEIGROUP4'
    end
    object ADOQuery2HAVEIGROUP5: TBooleanField
      FieldName = 'HAVEIGROUP5'
    end
    object ADOQuery2ISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object ADOQuery2SAPCODE: TWideStringField
      FieldName = 'SAPCODE'
      Size = 10
    end
    object ADOQuery2SALESMENID: TIntegerField
      FieldName = 'SALESMENID'
    end
    object ADOQuery2ISTEST: TBooleanField
      FieldName = 'ISTEST'
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
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 328
    Top = 88
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
      'ParakDef;Mode=ReadWrite;Initial Catalog=C:\DELPHI\SOURCE\AVINCAR' +
      'D SQL V2\FROMTO\FROMTO'
    CursorType = ctStatic
    TableDirect = True
    TableName = 'ToSapParak.txt'
    Left = 408
    Top = 184
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
    Connection = GeneralDM.ADOConnection
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
      'SELECT * '
      'FROM STATION'
      'Where StationID = :Id'
      '')
    Left = 40
    Top = 168
    object FindStationSTATIONID: TAutoIncField
      FieldName = 'STATIONID'
      ReadOnly = True
    end
    object FindStationNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object FindStationSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object FindStationZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object FindStationCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object FindStationAFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object FindStationDOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object FindStationPHONE1: TWideStringField
      FieldName = 'PHONE1'
      Size = 25
    end
    object FindStationPHONE2: TWideStringField
      FieldName = 'PHONE2'
      Size = 25
    end
    object FindStationMOBILE: TWideStringField
      FieldName = 'MOBILE'
      Size = 25
    end
    object FindStationFAX: TWideStringField
      FieldName = 'FAX'
      Size = 25
    end
    object FindStationAREAID: TIntegerField
      FieldName = 'AREAID'
    end
    object FindStationLOCATIONID: TIntegerField
      FieldName = 'LOCATIONID'
    end
    object FindStationTERMINALCODE: TWideStringField
      FieldName = 'TERMINALCODE'
    end
    object FindStationTERMINALSERIALNO: TWideStringField
      FieldName = 'TERMINALSERIALNO'
      Size = 50
    end
    object FindStationINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object FindStationUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object FindStationINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object FindStationUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object FindStationPROFESSION: TWideStringField
      FieldName = 'PROFESSION'
      Size = 50
    end
    object FindStationEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object FindStationLASTNAME: TWideStringField
      FieldName = 'LASTNAME'
      Size = 50
    end
    object FindStationFIRSTNAME: TWideStringField
      FieldName = 'FIRSTNAME'
      Size = 50
    end
    object FindStationSGROUPID: TIntegerField
      FieldName = 'SGROUPID'
    end
    object FindStationSCLASSID: TIntegerField
      FieldName = 'SCLASSID'
    end
    object FindStationSTOPSALES: TBooleanField
      FieldName = 'STOPSALES'
    end
    object FindStationBRANCHID: TIntegerField
      FieldName = 'BRANCHID'
    end
    object FindStationIGROUPID1: TIntegerField
      FieldName = 'IGROUPID1'
    end
    object FindStationIGROUPID2: TIntegerField
      FieldName = 'IGROUPID2'
    end
    object FindStationIGROUPID3: TIntegerField
      FieldName = 'IGROUPID3'
    end
    object FindStationIGROUPID4: TIntegerField
      FieldName = 'IGROUPID4'
    end
    object FindStationPOSOSTO1: TFloatField
      FieldName = 'POSOSTO1'
    end
    object FindStationPOSOSTO2: TFloatField
      FieldName = 'POSOSTO2'
    end
    object FindStationPOSOSTO3: TFloatField
      FieldName = 'POSOSTO3'
    end
    object FindStationPOSOSTO4: TFloatField
      FieldName = 'POSOSTO4'
    end
    object FindStationMERCHANTCODE: TWideStringField
      FieldName = 'MERCHANTCODE'
      Size = 15
    end
    object FindStationIGROUPID5: TIntegerField
      FieldName = 'IGROUPID5'
    end
    object FindStationPOSOSTO5: TFloatField
      FieldName = 'POSOSTO5'
    end
    object FindStationHAVEIGROUP1: TBooleanField
      FieldName = 'HAVEIGROUP1'
    end
    object FindStationHAVEIGROUP2: TBooleanField
      FieldName = 'HAVEIGROUP2'
    end
    object FindStationHAVEIGROUP3: TBooleanField
      FieldName = 'HAVEIGROUP3'
    end
    object FindStationHAVEIGROUP4: TBooleanField
      FieldName = 'HAVEIGROUP4'
    end
    object FindStationHAVEIGROUP5: TBooleanField
      FieldName = 'HAVEIGROUP5'
    end
    object FindStationISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object FindStationSAPCODE: TWideStringField
      FieldName = 'SAPCODE'
      Size = 10
    end
    object FindStationSALESMENID: TIntegerField
      FieldName = 'SALESMENID'
    end
  end
  object FindIGroup: TADOQuery
    AutoCalcFields = False
    Connection = GeneralDM.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM IGroup'
      'Order By IGroupID'
      '')
    Left = 104
    Top = 168
    object FindIGroupIGROUPID: TAutoIncField
      FieldName = 'IGROUPID'
      ReadOnly = True
    end
    object FindIGroupDESCR: TWideStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object FindIGroupINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object FindIGroupUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object FindIGroupINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object FindIGroupUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object FindIGroupBITNO: TIntegerField
      FieldName = 'BITNO'
    end
    object FindIGroupPOSOSTO: TFloatField
      FieldName = 'POSOSTO'
    end
  end
  object EnhmTrans: TADOQuery
    Connection = GeneralDM.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'BTUpd'
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
      'UPDATE V_TRAN_USING_CUSTOMER_ACARD_STATION'
      'SET COMMISSIONUPD = :BTUpd , COMMISSIONUPDBT = :BTCommission')
    Left = 64
    Top = 264
  end
  object qryDeleteTranP: TADOQuery
    Connection = GeneralDM.ADOConnection
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
    Left = 64
    Top = 312
  end
  object InsTranP: TADOQuery
    Connection = GeneralDM.ADOConnection
    CursorType = ctStatic
    DataSource = dtsTran
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM TRANP')
    Left = 152
    Top = 312
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
    Connection = GeneralDM.ADOConnection
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
    Left = 152
    Top = 264
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
      LookupDataSet = ADOQuery2
      LookupKeyFields = 'STATIONID'
      LookupResultField = 'SAPCODE'
      KeyFields = 'StationId'
      LookupCache = True
      Lookup = True
    end
    object qrySumTranPLStationKY: TIntegerField
      FieldKind = fkLookup
      FieldName = 'LStationKY'
      LookupDataSet = qStation
      LookupKeyFields = 'STATIONID'
      LookupResultField = 'BRANCHID'
      KeyFields = 'StationId'
      LookupCache = True
      Lookup = True
    end
    object qrySumTranPLName: TStringField
      FieldKind = fkLookup
      FieldName = 'LName'
      LookupDataSet = AllStation
      LookupKeyFields = 'STATIONID'
      LookupResultField = 'NAME'
      KeyFields = 'StationId'
      Size = 40
      Lookup = True
    end
  end
  object EnhmSapY: TADOTable
    AutoCalcFields = False
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=ToSap' +
      'ParakYDef;Mode=ReadWrite;Initial Catalog=C:\Delphi\Source\AvinCa' +
      'rd SQL V2'
    CursorType = ctStatic
    TableDirect = True
    TableName = 'ToSapParaY.txt'
    Left = 408
    Top = 248
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
  object qStation: TADOQuery
    AutoCalcFields = False
    Connection = GeneralDM.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM STATION'
      ''
      '')
    Left = 160
    Top = 168
    object AutoIncField1: TAutoIncField
      FieldName = 'STATIONID'
      ReadOnly = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object WideStringField2: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object WideStringField3: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object WideStringField4: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object WideStringField5: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object WideStringField6: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object WideStringField7: TWideStringField
      FieldName = 'PHONE1'
      Size = 25
    end
    object WideStringField8: TWideStringField
      FieldName = 'PHONE2'
      Size = 25
    end
    object WideStringField9: TWideStringField
      FieldName = 'MOBILE'
      Size = 25
    end
    object WideStringField10: TWideStringField
      FieldName = 'FAX'
      Size = 25
    end
    object IntegerField1: TIntegerField
      FieldName = 'AREAID'
    end
    object IntegerField2: TIntegerField
      FieldName = 'LOCATIONID'
    end
    object WideStringField11: TWideStringField
      FieldName = 'TERMINALCODE'
    end
    object WideStringField12: TWideStringField
      FieldName = 'TERMINALSERIALNO'
      Size = 50
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'INSDT'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'UPDDT'
    end
    object IntegerField3: TIntegerField
      FieldName = 'INSUSR'
    end
    object IntegerField4: TIntegerField
      FieldName = 'UPDUSR'
    end
    object WideStringField13: TWideStringField
      FieldName = 'PROFESSION'
      Size = 50
    end
    object WideStringField14: TWideStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object WideStringField15: TWideStringField
      FieldName = 'LASTNAME'
      Size = 50
    end
    object WideStringField16: TWideStringField
      FieldName = 'FIRSTNAME'
      Size = 50
    end
    object IntegerField5: TIntegerField
      FieldName = 'SGROUPID'
    end
    object IntegerField6: TIntegerField
      FieldName = 'SCLASSID'
    end
    object BooleanField1: TBooleanField
      FieldName = 'STOPSALES'
    end
    object IntegerField7: TIntegerField
      FieldName = 'BRANCHID'
    end
    object IntegerField8: TIntegerField
      FieldName = 'IGROUPID1'
    end
    object IntegerField9: TIntegerField
      FieldName = 'IGROUPID2'
    end
    object IntegerField10: TIntegerField
      FieldName = 'IGROUPID3'
    end
    object IntegerField11: TIntegerField
      FieldName = 'IGROUPID4'
    end
    object FloatField1: TFloatField
      FieldName = 'POSOSTO1'
    end
    object FloatField2: TFloatField
      FieldName = 'POSOSTO2'
    end
    object FloatField3: TFloatField
      FieldName = 'POSOSTO3'
    end
    object FloatField4: TFloatField
      FieldName = 'POSOSTO4'
    end
    object WideStringField17: TWideStringField
      FieldName = 'MERCHANTCODE'
      Size = 15
    end
    object IntegerField12: TIntegerField
      FieldName = 'IGROUPID5'
    end
    object FloatField5: TFloatField
      FieldName = 'POSOSTO5'
    end
    object BooleanField2: TBooleanField
      FieldName = 'HAVEIGROUP1'
    end
    object BooleanField3: TBooleanField
      FieldName = 'HAVEIGROUP2'
    end
    object BooleanField4: TBooleanField
      FieldName = 'HAVEIGROUP3'
    end
    object BooleanField5: TBooleanField
      FieldName = 'HAVEIGROUP4'
    end
    object BooleanField6: TBooleanField
      FieldName = 'HAVEIGROUP5'
    end
    object BooleanField7: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object WideStringField18: TWideStringField
      FieldName = 'SAPCODE'
      Size = 10
    end
    object IntegerField13: TIntegerField
      FieldName = 'SALESMENID'
    end
  end
  object AllStation: TADOQuery
    AutoCalcFields = False
    Connection = GeneralDM.ADOConnection
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
    object AllStationSTATIONID: TIntegerField
      FieldName = 'STATIONID'
      ReadOnly = True
    end
    object AllStationNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
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
    object AllStationAFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object AllStationDOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object AllStationPHONE1: TWideStringField
      FieldName = 'PHONE1'
      Size = 25
    end
    object AllStationPHONE2: TWideStringField
      FieldName = 'PHONE2'
      Size = 25
    end
    object AllStationMOBILE: TWideStringField
      FieldName = 'MOBILE'
      Size = 25
    end
    object AllStationFAX: TWideStringField
      FieldName = 'FAX'
      Size = 25
    end
    object AllStationAREAID: TIntegerField
      FieldName = 'AREAID'
    end
    object AllStationLOCATIONID: TIntegerField
      FieldName = 'LOCATIONID'
    end
    object AllStationTERMINALCODE: TWideStringField
      FieldName = 'TERMINALCODE'
    end
    object AllStationTERMINALSERIALNO: TWideStringField
      FieldName = 'TERMINALSERIALNO'
      Size = 50
    end
    object AllStationINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object AllStationUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object AllStationINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object AllStationUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object AllStationPROFESSION: TWideStringField
      FieldName = 'PROFESSION'
      Size = 50
    end
    object AllStationEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object AllStationLASTNAME: TWideStringField
      FieldName = 'LASTNAME'
      Size = 50
    end
    object AllStationFIRSTNAME: TWideStringField
      FieldName = 'FIRSTNAME'
      Size = 50
    end
    object AllStationSGROUPID: TIntegerField
      FieldName = 'SGROUPID'
    end
    object AllStationSCLASSID: TIntegerField
      FieldName = 'SCLASSID'
    end
    object AllStationSTOPSALES: TBooleanField
      FieldName = 'STOPSALES'
    end
    object AllStationBRANCHID: TIntegerField
      FieldName = 'BRANCHID'
    end
    object AllStationIGROUPID1: TIntegerField
      FieldName = 'IGROUPID1'
    end
    object AllStationIGROUPID2: TIntegerField
      FieldName = 'IGROUPID2'
    end
    object AllStationIGROUPID3: TIntegerField
      FieldName = 'IGROUPID3'
    end
    object AllStationIGROUPID4: TIntegerField
      FieldName = 'IGROUPID4'
    end
    object AllStationPOSOSTO1: TFloatField
      FieldName = 'POSOSTO1'
    end
    object AllStationPOSOSTO2: TFloatField
      FieldName = 'POSOSTO2'
    end
    object AllStationPOSOSTO3: TFloatField
      FieldName = 'POSOSTO3'
    end
    object AllStationPOSOSTO4: TFloatField
      FieldName = 'POSOSTO4'
    end
    object AllStationMERCHANTCODE: TWideStringField
      FieldName = 'MERCHANTCODE'
      Size = 15
    end
    object AllStationIGROUPID5: TIntegerField
      FieldName = 'IGROUPID5'
    end
    object AllStationPOSOSTO5: TFloatField
      FieldName = 'POSOSTO5'
    end
    object AllStationHAVEIGROUP1: TBooleanField
      FieldName = 'HAVEIGROUP1'
    end
    object AllStationHAVEIGROUP2: TBooleanField
      FieldName = 'HAVEIGROUP2'
    end
    object AllStationHAVEIGROUP3: TBooleanField
      FieldName = 'HAVEIGROUP3'
    end
    object AllStationHAVEIGROUP4: TBooleanField
      FieldName = 'HAVEIGROUP4'
    end
    object AllStationHAVEIGROUP5: TBooleanField
      FieldName = 'HAVEIGROUP5'
    end
    object AllStationISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object AllStationSAPCODE: TWideStringField
      FieldName = 'SAPCODE'
      Size = 10
    end
    object AllStationSALESMENID: TIntegerField
      FieldName = 'SALESMENID'
    end
    object AllStationISTEST: TBooleanField
      FieldName = 'ISTEST'
    end
    object AllStationAREABID: TIntegerField
      FieldName = 'AREABID'
    end
    object AllStationSTATIONOFF: TBooleanField
      FieldName = 'STATIONOFF'
    end
    object AllStationSTATIONOFFDATE: TDateTimeField
      FieldName = 'STATIONOFFDATE'
    end
    object AllStationSTATIONOFFSYSDATE: TDateTimeField
      FieldName = 'STATIONOFFSYSDATE'
    end
    object AllStationSTATIONOFFUSR: TIntegerField
      FieldName = 'STATIONOFFUSR'
    end
  end
end
