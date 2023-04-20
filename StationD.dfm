object StationDM: TStationDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 544
  Width = 644
  object qryBrowser: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM STATION')
    Left = 24
    Top = 16
    object qryBrowserStationid: TIntegerField
      FieldName = 'Stationid'
    end
    object qryBrowserName: TWideStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 100
    end
    object qryBrowserSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object qryBrowserZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryBrowserCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryBrowserIGroupId1: TIntegerField
      FieldName = 'IGroupId1'
    end
    object qryBrowserPososto1: TFloatField
      FieldName = 'Pososto1'
    end
    object qryBrowserHaveGroup1: TBooleanField
      FieldName = 'HaveGroup1'
    end
    object qryBrowserIGroupId2: TIntegerField
      FieldName = 'IGroupId2'
    end
    object qryBrowserPososto2: TFloatField
      FieldName = 'Pososto2'
    end
    object qryBrowserHaveGroup2: TBooleanField
      FieldName = 'HaveGroup2'
    end
    object qryBrowserIGroupId3: TIntegerField
      FieldName = 'IGroupId3'
    end
    object qryBrowserPososto3: TFloatField
      FieldName = 'Pososto3'
    end
    object qryBrowserHaveGroup3: TBooleanField
      FieldName = 'HaveGroup3'
    end
    object qryBrowserIGroupId4: TIntegerField
      FieldName = 'IGroupId4'
    end
    object qryBrowserPososto4: TFloatField
      FieldName = 'Pososto4'
    end
    object qryBrowserHaveGroup4: TBooleanField
      FieldName = 'HaveGroup4'
    end
    object qryBrowserIGroupId5: TIntegerField
      FieldName = 'IGroupId5'
    end
    object qryBrowserPososto5: TFloatField
      FieldName = 'Pososto5'
    end
    object qryBrowserHaveGroup5: TBooleanField
      FieldName = 'HaveGroup5'
    end
    object qryBrowserIGroupId6: TIntegerField
      FieldName = 'IGroupId6'
    end
    object qryBrowserPososto6: TFloatField
      FieldName = 'Pososto6'
    end
    object qryBrowserHaveGroup6: TBooleanField
      FieldName = 'HaveGroup6'
    end
    object qryBrowserIGroupId7: TIntegerField
      FieldName = 'IGroupId7'
    end
    object qryBrowserPososto7: TFloatField
      FieldName = 'Pososto7'
    end
    object qryBrowserHaveGroup7: TBooleanField
      FieldName = 'HaveGroup7'
    end
    object qryBrowserIGroupId8: TIntegerField
      FieldName = 'IGroupId8'
    end
    object qryBrowserPososto8: TFloatField
      FieldName = 'Pososto8'
    end
    object qryBrowserHaveGroup8: TBooleanField
      FieldName = 'HaveGroup8'
    end
    object qryBrowserIGroupId9: TIntegerField
      FieldName = 'IGroupId9'
    end
    object qryBrowserPososto9: TFloatField
      FieldName = 'Pososto9'
    end
    object qryBrowserHaveGroup9: TBooleanField
      FieldName = 'HaveGroup9'
    end
    object qryBrowserIGroupId10: TIntegerField
      FieldName = 'IGroupId10'
    end
    object qryBrowserPososto10: TFloatField
      FieldName = 'Pososto10'
    end
    object qryBrowserHaveGroup10: TBooleanField
      FieldName = 'HaveGroup10'
    end
    object qryBrowserAreaId: TIntegerField
      FieldName = 'AreaId'
    end
    object qryBrowserSalesMenId: TIntegerField
      FieldName = 'SalesMenId'
    end
    object qryBrowserDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryBrowserDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryBrowserDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryBrowserInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryBrowserInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryBrowserInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object qryBrowserStopSales: TBooleanField
      FieldName = 'StopSales'
    end
    object qryBrowserStopSalesUsr: TIntegerField
      FieldName = 'StopSalesUsr'
    end
    object qryBrowserStopSalesDt: TDateTimeField
      FieldName = 'StopSalesDt'
    end
  end
  object dtsBrowser: TDataSource
    AutoEdit = False
    DataSet = qryBrowser
    Left = 96
    Top = 16
  end
  object qryStation: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = qryStationBeforePost
    AfterPost = qryStationAfterPost
    OnNewRecord = qryStationNewRecord
    DataSource = dtsBrowser
    Parameters = <
      item
        Name = 'StationId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    SQL.Strings = (
      'SELECT * FROM STATION'
      'Where StationId = :StationId')
    Left = 24
    Top = 80
    object qryStationStationid: TIntegerField
      FieldName = 'Stationid'
    end
    object qryStationName: TWideStringField
      FieldName = 'Name'
      FixedChar = True
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
    object qryStationAreaId: TIntegerField
      FieldName = 'AreaId'
    end
    object qryStationSalesMenId: TIntegerField
      FieldName = 'SalesMenId'
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
  end
  object dtsStation: TDataSource
    AutoEdit = False
    DataSet = qryStation
    OnStateChange = dtsStationStateChange
    Left = 96
    Top = 80
  end
  object qryIGroup: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryIGroupCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT Id,Name,BitNo FROM IGroup Where InActive = 0')
    Left = 240
    Top = 16
    object qryIGroupId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qryIGroupName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object qryIGroupBitNo: TIntegerField
      FieldName = 'BitNo'
    end
    object qryIGroupDescr: TStringField
      FieldKind = fkCalculated
      FieldName = 'Descr'
      Calculated = True
    end
  end
  object qryMerchant_Station: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsStation
    Parameters = <
      item
        Name = 'StationId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM Merchant_Station'
      'Where StationId = :StationId')
    Left = 456
    Top = 16
    object qryMerchant_StationMerchantId: TIntegerField
      FieldName = 'MerchantId'
    end
    object qryMerchant_StationStationid: TIntegerField
      FieldName = 'Stationid'
    end
    object qryMerchant_StationLMerchant: TStringField
      FieldKind = fkLookup
      FieldName = 'LMerchant'
      LookupDataSet = qryMerchant
      LookupKeyFields = 'MerchantId'
      LookupResultField = 'Name'
      KeyFields = 'MerchantId'
      Size = 80
      Lookup = True
    end
  end
  object qryMerchant: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Merchant')
    Left = 456
    Top = 72
    object qryMerchantMerchantId: TIntegerField
      FieldName = 'MerchantId'
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
  object dtsMerchant_Station: TDataSource
    AutoEdit = False
    DataSet = qryMerchant_Station
    OnStateChange = dtsStation_TerminalStateChange
    Left = 568
    Top = 16
  end
  object dtsMerchant: TDataSource
    DataSet = qryMerchant
    Left = 568
    Top = 72
  end
  object qryStation_Terminal: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforeDelete = qryStation_TerminalBeforeDelete
    DataSource = dtsBrowser
    Parameters = <
      item
        Name = 'StationId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    SQL.Strings = (
      'SELECT * FROM Station_Terminal'
      'Where StationId = :StationId')
    Left = 456
    Top = 128
    object qryStation_TerminalStationTerminalId: TAutoIncField
      FieldName = 'StationTerminalId'
      ReadOnly = True
    end
    object qryStation_TerminalStartDate: TDateTimeField
      FieldName = 'StartDate'
    end
    object qryStation_TerminalLTerminal: TStringField
      FieldKind = fkLookup
      FieldName = 'LTerminal'
      LookupDataSet = qryTerminal
      LookupKeyFields = 'Terminalid'
      LookupResultField = 'LTerminalFull'
      KeyFields = 'Terminalid'
      Size = 80
      Lookup = True
    end
    object qryStation_TerminalStationId: TIntegerField
      FieldName = 'StationId'
    end
    object qryStation_TerminalTerminalid: TIntegerField
      FieldName = 'Terminalid'
    end
  end
  object qryTerminal: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTerminalCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Terminal')
    Left = 456
    Top = 184
    object qryTerminalTerminalid: TIntegerField
      FieldName = 'Terminalid'
    end
    object qryTerminalLTerminalFull: TStringField
      FieldKind = fkCalculated
      FieldName = 'LTerminalFull'
      Size = 50
      Calculated = True
    end
    object qryTerminalTERMINALCODE: TWideStringField
      FieldName = 'TERMINALCODE'
    end
    object qryTerminalTERMINALSERIALNO: TWideStringField
      FieldName = 'TERMINALSERIALNO'
      Size = 50
    end
    object qryTerminalTerminalType: TIntegerField
      FieldName = 'TerminalType'
    end
  end
  object dtsStation_Terminal: TDataSource
    AutoEdit = False
    DataSet = qryStation_Terminal
    OnStateChange = dtsStation_TerminalStateChange
    Left = 568
    Top = 128
  end
  object dtsTerminal: TDataSource
    DataSet = qryTerminal
    Left = 568
    Top = 184
  end
  object qBranch: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT BranchId, Descr From Branch')
    Left = 24
    Top = 152
    object qBranchBRANCHID: TAutoIncField
      FieldName = 'BRANCHID'
      ReadOnly = True
    end
    object qBranchDESCR: TWideStringField
      FieldName = 'DESCR'
      Size = 50
    end
  end
  object qSalesMen: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT SALESMENID, Descr  FROM SalesMen')
    Left = 24
    Top = 216
    object qSalesMenSALESMENID: TAutoIncField
      FieldName = 'SALESMENID'
      ReadOnly = True
    end
    object qSalesMenDESCR: TWideStringField
      FieldName = 'DESCR'
      Size = 50
    end
  end
  object QTown: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * From QTown')
    Left = 24
    Top = 288
    object QTownArea00_Name: TWideStringField
      FieldName = 'Area00_Name'
      Size = 50
    end
    object QTownArea01_Name: TWideStringField
      FieldName = 'Area01_Name'
      Size = 50
    end
    object QTownArea02_Name: TWideStringField
      FieldName = 'Area02_Name'
      Size = 50
    end
    object QTownArea03_Name: TWideStringField
      FieldName = 'Area03_Name'
      Size = 50
    end
    object QTownArea02_Id: TIntegerField
      FieldName = 'Area02_Id'
    end
    object QTownArea03_Id: TAutoIncField
      FieldName = 'Area03_Id'
      ReadOnly = True
    end
    object QTownArea01_Id: TIntegerField
      FieldName = 'Area01_Id'
    end
    object QTownArea00_Id: TIntegerField
      FieldName = 'Area00_Id'
    end
    object QTownWholeDescr: TWideStringField
      FieldName = 'WholeDescr'
      ReadOnly = True
      Size = 203
    end
  end
  object dsBranch: TDataSource
    AutoEdit = False
    DataSet = qBranch
    Left = 104
    Top = 152
  end
  object dsSalesMen: TDataSource
    AutoEdit = False
    DataSet = qSalesMen
    Left = 104
    Top = 216
  end
  object dsTown: TDataSource
    AutoEdit = False
    DataSet = QTown
    Left = 104
    Top = 288
  end
  object qryQTown: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTerminalCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM QTown')
    Left = 456
    Top = 248
    object qryQTownArea00_Name: TWideStringField
      FieldName = 'Area00_Name'
      Size = 50
    end
    object qryQTownArea01_Name: TWideStringField
      FieldName = 'Area01_Name'
      Size = 50
    end
    object qryQTownArea02_Name: TWideStringField
      FieldName = 'Area02_Name'
      Size = 50
    end
    object qryQTownArea03_Name: TWideStringField
      FieldName = 'Area03_Name'
      Size = 50
    end
    object qryQTownArea02_Id: TIntegerField
      FieldName = 'Area02_Id'
    end
    object qryQTownArea03_Id: TAutoIncField
      FieldName = 'Area03_Id'
      ReadOnly = True
    end
    object qryQTownArea01_Id: TIntegerField
      FieldName = 'Area01_Id'
    end
    object qryQTownArea00_Id: TIntegerField
      FieldName = 'Area00_Id'
    end
    object qryQTownWholeDescr: TWideStringField
      FieldName = 'WholeDescr'
      ReadOnly = True
      Size = 203
    end
  end
  object dtsQTown: TDataSource
    DataSet = qryQTown
    Left = 568
    Top = 248
  end
  object qryBranch: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTerminalCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Branch')
    Left = 456
    Top = 312
    object qryBranchBRANCHID: TAutoIncField
      FieldName = 'BRANCHID'
      ReadOnly = True
    end
    object qryBranchDESCR: TWideStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object qryBranchINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryBranchUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryBranchINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryBranchUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object dtsBranch: TDataSource
    DataSet = qryBranch
    Left = 568
    Top = 312
  end
  object dtsStation_Contacts: TDataSource
    AutoEdit = False
    DataSet = qryStation_Contacts
    OnStateChange = dtsStation_ContactsStateChange
    Left = 152
    Top = 392
  end
  object qryStation_Contacts: TADOQuery
    Tag = 210
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    AfterInsert = qryStation_ContactsAfterInsert
    DataSource = dtsStation
    Parameters = <
      item
        Name = 'StationId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    SQL.Strings = (
      'SELECT *'
      '  FROM Station_Contacts'
      '  Where StationId = :StationId '
      '')
    Left = 32
    Top = 392
    object qryStation_ContactsLCont: TStringField
      FieldKind = fkLookup
      FieldName = 'LCont'
      LookupDataSet = qryContacts
      LookupKeyFields = 'id'
      LookupResultField = 'Surname'
      KeyFields = 'Contactid'
      Visible = False
      Lookup = True
    end
    object qryStation_ContactsLResr: TStringField
      DisplayWidth = 200
      FieldKind = fkLookup
      FieldName = 'LResr'
      LookupDataSet = qryContacts
      LookupKeyFields = 'id'
      LookupResultField = 'Whole'
      KeyFields = 'Contactid'
      Size = 200
      Lookup = True
    end
    object qryStation_ContactsLContactTypeId: TStringField
      FieldKind = fkLookup
      FieldName = 'LContactTypeId'
      LookupDataSet = qryContactType
      LookupKeyFields = 'ContactTypeId'
      LookupResultField = 'ContactType_Name'
      KeyFields = 'ContactTypeId'
      Lookup = True
    end
    object qryStation_ContactsStationContactId: TAutoIncField
      FieldName = 'StationContactId'
      ReadOnly = True
    end
    object qryStation_ContactsStationId: TIntegerField
      FieldName = 'StationId'
    end
    object qryStation_ContactsContactId: TIntegerField
      FieldName = 'ContactId'
    end
    object qryStation_ContactsContactTypeId: TIntegerField
      FieldName = 'ContactTypeId'
    end
    object qryStation_ContactsMain: TBooleanField
      FieldName = 'Main'
    end
    object qryStation_ContactsAA: TIntegerField
      FieldName = 'AA'
    end
    object qryStation_ContactsLMail: TStringField
      FieldKind = fkLookup
      FieldName = 'LMail'
      LookupDataSet = qryContacts
      LookupKeyFields = 'id'
      LookupResultField = 'email'
      KeyFields = 'ContactId'
      Size = 60
      Lookup = True
    end
  end
  object qryMaxMerchantContactsAA: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsStation
    Parameters = <
      item
        Name = 'StationId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Max(AA) as Max_AA'
      '  FROM Station_Contacts'
      '  Where StationId = :StationId')
    Left = 288
    Top = 392
    object qryMaxMerchantContactsAAMax_AA: TIntegerField
      FieldName = 'Max_AA'
      ReadOnly = True
    end
  end
  object qryContacts: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryContactsCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Contacts')
    Left = 464
    Top = 400
    object qryContactsid: TIntegerField
      FieldName = 'id'
    end
    object qryContactsType: TIntegerField
      FieldName = 'Type'
    end
    object qryContactsType_id: TIntegerField
      FieldName = 'Type_id'
    end
    object qryContactsName: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
    object qryContactsSurname: TWideStringField
      FieldName = 'Surname'
      Size = 50
    end
    object qryContactsemail: TWideStringField
      FieldName = 'email'
      Size = 80
    end
    object qryContactsPhone: TWideStringField
      FieldName = 'Phone'
      Size = 45
    end
    object qryContactsFax: TWideStringField
      FieldName = 'Fax'
      Size = 45
    end
    object qryContactsMobile: TWideStringField
      FieldName = 'Mobile'
      Size = 45
    end
    object qryContactsWhole: TStringField
      FieldKind = fkCalculated
      FieldName = 'Whole'
      Size = 200
      Calculated = True
    end
    object qryContactsSendMail: TBooleanField
      FieldName = 'SendMail'
    end
    object qryContactsMailORFax: TIntegerField
      FieldName = 'MailORFax'
    end
    object qryContactsSendFax: TBooleanField
      FieldName = 'SendFax'
    end
    object qryContactsSendPrint: TBooleanField
      FieldName = 'SendPrint'
    end
    object qryContactsOldCode: TIntegerField
      FieldName = 'OldCode'
    end
    object qryContactsOldType: TIntegerField
      FieldName = 'OldType'
    end
    object qryContactsComments: TMemoField
      FieldName = 'Comments'
      BlobType = ftMemo
    end
  end
  object dtsContacts: TDataSource
    DataSet = qryContacts
    Left = 560
    Top = 392
  end
  object dtsContactType: TDataSource
    AutoEdit = False
    Left = 566
    Top = 456
  end
  object qryContactType: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ContactTypeId, ContactType_Name'
      '  FROM ContactType')
    Left = 464
    Top = 464
    object qryContactTypeContactTypeId: TAutoIncField
      FieldName = 'ContactTypeId'
      ReadOnly = True
    end
    object qryContactTypeContactType_Name: TWideStringField
      FieldName = 'ContactType_Name'
      Size = 50
    end
  end
  object dtsIGroup: TDataSource
    AutoEdit = False
    DataSet = qryIGroup
    Left = 312
    Top = 16
  end
  object qryMaxTerminalCode: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT MAX(TerminalCode) As MaxTerminalCode'
      '  FROM Terminal'
      '  Where TerminalCode like '#39'09000%'#39)
    Left = 64
    Top = 472
    object qryMaxTerminalCodeMaxTerminalCode: TWideStringField
      FieldName = 'MaxTerminalCode'
      ReadOnly = True
    end
  end
end
