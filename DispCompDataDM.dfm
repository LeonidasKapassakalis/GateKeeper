object DMDispCompData: TDMDispCompData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 450
  Width = 536
  object qryStation: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From Customer')
    Left = 224
    Top = 168
    object qryStationCUSTOMERID: TAutoIncField
      FieldName = 'CUSTOMERID'
      ReadOnly = True
    end
    object qryStationNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
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
    object qryStationAFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object qryStationDOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object qryStationSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qryStationAREAID: TIntegerField
      FieldName = 'AREAID'
    end
    object qryStationLOCATIONID: TIntegerField
      FieldName = 'LOCATIONID'
    end
    object qryStationCGROUPID: TIntegerField
      FieldName = 'CGROUPID'
    end
    object qryStationCCLASSID: TIntegerField
      FieldName = 'CCLASSID'
    end
    object qryStationCREDITAMOUNT: TFloatField
      FieldName = 'CREDITAMOUNT'
    end
    object qryStationINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryStationUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryStationINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryStationUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryStationPROFESSION: TWideStringField
      FieldName = 'PROFESSION'
      Size = 50
    end
    object qryStationBRANCHID: TIntegerField
      FieldName = 'BRANCHID'
    end
    object qryStationSAPCODE: TWideStringField
      FieldName = 'SAPCODE'
      Size = 10
    end
    object qryStationISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qryStationSALESMENID: TIntegerField
      FieldName = 'SALESMENID'
    end
    object qryStationDIAKID: TIntegerField
      FieldName = 'DIAKID'
    end
    object qryStationISTEST: TBooleanField
      FieldName = 'ISTEST'
    end
    object qryStationISCONS: TBooleanField
      FieldName = 'ISCONS'
    end
    object qryStationAREABID: TIntegerField
      FieldName = 'AREABID'
    end
    object qryStationDATEPHEND: TDateTimeField
      FieldName = 'DATEPHEND'
    end
    object qryStationDATELOEND: TDateTimeField
      FieldName = 'DATELOEND'
    end
    object qryStationHASDETAILEMP: TBooleanField
      FieldName = 'HASDETAILEMP'
    end
    object qryStationALLCARDSTOBL: TBooleanField
      FieldName = 'ALLCARDSTOBL'
    end
    object qryStationALLCARDSTOBLDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLDATE'
    end
    object qryStationALLCARDSTOBLSYSDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLSYSDATE'
    end
    object qryStationALLCARDSTOBLUSR: TIntegerField
      FieldName = 'ALLCARDSTOBLUSR'
    end
    object qryStationCUSTOMEROFF: TBooleanField
      FieldName = 'CUSTOMEROFF'
    end
    object qryStationCUSTOMEROFFDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFDATE'
    end
    object qryStationCUSTOMEROFFSYSDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFSYSDATE'
    end
    object qryStationCUSTOMEROFFUSR: TIntegerField
      FieldName = 'CUSTOMEROFFUSR'
    end
    object qryStationCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object qryStationDATEEND: TDateTimeField
      FieldName = 'DATEEND'
    end
    object qryStationCompanyTypeId: TIntegerField
      FieldName = 'CompanyTypeId'
    end
    object qryStationGarantieId: TIntegerField
      FieldName = 'GarantieId'
    end
    object qryStationGarantieAmount: TBCDField
      FieldName = 'GarantieAmount'
      Precision = 19
    end
    object qryStationComments: TMemoField
      FieldName = 'Comments'
      BlobType = ftMemo
    end
  end
  object dsStation: TDataSource
    AutoEdit = False
    DataSet = qryStation
    Left = 312
    Top = 168
  end
  object dsACard: TDataSource
    AutoEdit = False
    DataSet = qACard
    Left = 96
    Top = 144
  end
  object qACard: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qACardCalcFields
    DataSource = dtsmemCustomer
    Parameters = <
      item
        Name = 'CustomerId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    Prepared = True
    SQL.Strings = (
      'Select * From VAcard Where CustomerId = :CustomerId')
    Left = 32
    Top = 144
    object qACardACARDID: TAutoIncField
      FieldName = 'ACARDID'
      ReadOnly = True
    end
    object qACardACARDCODE: TWideStringField
      FieldName = 'ACARDCODE'
      Size = 50
    end
    object qACardCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qACardISSUEDATE: TDateTimeField
      FieldName = 'ISSUEDATE'
    end
    object qACardEXPIREDATE: TDateTimeField
      FieldName = 'EXPIREDATE'
    end
    object qACardMETERBOOLEAN: TBooleanField
      FieldName = 'METERBOOLEAN'
    end
    object qACardPINBOOLEAN: TBooleanField
      FieldName = 'PINBOOLEAN'
    end
    object qACardINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qACardUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qACardINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qACardUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qACardSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qACardVTYPEID: TIntegerField
      FieldName = 'VTYPEID'
    end
    object qACardCREATEBOOLEAN: TBooleanField
      FieldName = 'CREATEBOOLEAN'
    end
    object qACardBLACKLISTBOOLEAN: TBooleanField
      FieldName = 'BLACKLISTBOOLEAN'
    end
    object qACardBLACKLISTDATE: TDateTimeField
      FieldName = 'BLACKLISTDATE'
    end
    object qACardBLACKLISTUSR: TIntegerField
      FieldName = 'BLACKLISTUSR'
    end
    object qACardBLACKLISTNOTES: TWideStringField
      FieldName = 'BLACKLISTNOTES'
      Size = 200
    end
    object qACardIGROUPID1: TIntegerField
      FieldName = 'IGROUPID1'
    end
    object qACardIGROUPID2: TIntegerField
      FieldName = 'IGROUPID2'
    end
    object qACardIGROUPID3: TIntegerField
      FieldName = 'IGROUPID3'
    end
    object qACardIGROUPID4: TIntegerField
      FieldName = 'IGROUPID4'
    end
    object qACardDAYAMOUNT: TFloatField
      FieldName = 'DAYAMOUNT'
    end
    object qACardMONTHAMOUNT: TFloatField
      FieldName = 'MONTHAMOUNT'
    end
    object qACardREGNO: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
    object qACardACARDHOLDER: TWideStringField
      FieldName = 'ACARDHOLDER'
      Size = 30
    end
    object qACardISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qACardEXPIREPHDATE: TDateTimeField
      FieldName = 'EXPIREPHDATE'
    end
    object qACardEXPIRELODATE: TDateTimeField
      FieldName = 'EXPIRELODATE'
    end
    object qACardIGROUPID5: TIntegerField
      FieldName = 'IGROUPID5'
    end
    object qACardEMPLOYEESID: TIntegerField
      FieldName = 'EMPLOYEESID'
    end
    object qACardNEWCARDBOOLEAN: TBooleanField
      FieldName = 'NEWCARDBOOLEAN'
    end
    object qACardNEWCARDID: TIntegerField
      FieldName = 'NEWCARDID'
    end
    object qACardCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object qACardACARDCODENUM: TIntegerField
      FieldName = 'ACARDCODENUM'
    end
    object qACardINACTIVEDATE: TDateTimeField
      FieldName = 'INACTIVEDATE'
    end
    object qACardINACTIVEUSR: TIntegerField
      FieldName = 'INACTIVEUSR'
    end
    object qACardINACTIVENOTES: TWideStringField
      FieldName = 'INACTIVENOTES'
      FixedChar = True
      Size = 200
    end
    object qACardIGROUPID6: TIntegerField
      FieldName = 'IGROUPID6'
    end
    object qACardIGROUPID7: TIntegerField
      FieldName = 'IGROUPID7'
    end
    object qACardIGROUPID8: TIntegerField
      FieldName = 'IGROUPID8'
    end
    object qACardIGROUPID9: TIntegerField
      FieldName = 'IGROUPID9'
    end
    object qACardIGROUPID10: TIntegerField
      FieldName = 'IGROUPID10'
    end
    object qACardCOSTCENTERID: TIntegerField
      FieldName = 'COSTCENTERID'
    end
    object qACardAcardCodeFull: TWideStringField
      FieldName = 'AcardCodeFull'
      ReadOnly = True
      Size = 19
    end
  end
  object dtsmemCustomer: TDataSource
    DataSet = memCustomer
    Left = 104
    Top = 72
  end
  object memCustomer: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 32
    Top = 72
    object memCustomerCustomerId: TIntegerField
      FieldName = 'CustomerId'
    end
    object memCustomerLSAPCode: TStringField
      FieldKind = fkLookup
      FieldName = 'LSAPCode'
      LookupDataSet = qryStation
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'SAPCODE'
      KeyFields = 'CustomerId'
      Lookup = True
    end
    object memCustomerDateFrom: TDateTimeField
      FieldName = 'DateFrom'
    end
  end
  object qCustomer: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsmemCustomer
    Parameters = <
      item
        Name = 'CustomerId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'Select * '
      'From Customer '
      'Where CustomerID = :CustomerId')
    Left = 32
    Top = 16
    object qCustomerCUSTOMERID: TAutoIncField
      FieldName = 'CUSTOMERID'
      ReadOnly = True
    end
    object qCustomerNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object qCustomerSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object qCustomerZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qCustomerCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qCustomerAFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object qCustomerDOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object qCustomerSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qCustomerAREAID: TIntegerField
      FieldName = 'AREAID'
    end
    object qCustomerLOCATIONID: TIntegerField
      FieldName = 'LOCATIONID'
    end
    object qCustomerCGROUPID: TIntegerField
      FieldName = 'CGROUPID'
    end
    object qCustomerCCLASSID: TIntegerField
      FieldName = 'CCLASSID'
    end
    object qCustomerCREDITAMOUNT: TFloatField
      FieldName = 'CREDITAMOUNT'
      currency = True
    end
    object qCustomerINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qCustomerUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qCustomerINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qCustomerUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qCustomerPROFESSION: TWideStringField
      FieldName = 'PROFESSION'
      Size = 50
    end
    object qCustomerBRANCHID: TIntegerField
      FieldName = 'BRANCHID'
    end
    object qCustomerSAPCODE: TWideStringField
      FieldName = 'SAPCODE'
      Size = 10
    end
    object qCustomerISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qCustomerSALESMENID: TIntegerField
      FieldName = 'SALESMENID'
    end
    object qCustomerDIAKID: TIntegerField
      FieldName = 'DIAKID'
    end
    object qCustomerISTEST: TBooleanField
      FieldName = 'ISTEST'
    end
    object qCustomerISCONS: TBooleanField
      FieldName = 'ISCONS'
    end
    object qCustomerAREABID: TIntegerField
      FieldName = 'AREABID'
    end
    object qCustomerDATEPHEND: TDateTimeField
      FieldName = 'DATEPHEND'
    end
    object qCustomerDATELOEND: TDateTimeField
      FieldName = 'DATELOEND'
    end
    object qCustomerHASDETAILEMP: TBooleanField
      FieldName = 'HASDETAILEMP'
    end
    object qCustomerALLCARDSTOBL: TBooleanField
      FieldName = 'ALLCARDSTOBL'
    end
    object qCustomerALLCARDSTOBLDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLDATE'
    end
    object qCustomerALLCARDSTOBLSYSDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLSYSDATE'
    end
    object qCustomerALLCARDSTOBLUSR: TIntegerField
      FieldName = 'ALLCARDSTOBLUSR'
    end
    object qCustomerCUSTOMEROFF: TBooleanField
      FieldName = 'CUSTOMEROFF'
    end
    object qCustomerCUSTOMEROFFDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFDATE'
    end
    object qCustomerCUSTOMEROFFSYSDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFSYSDATE'
    end
    object qCustomerCUSTOMEROFFUSR: TIntegerField
      FieldName = 'CUSTOMEROFFUSR'
    end
    object qCustomerCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object qCustomerDATEEND: TDateTimeField
      FieldName = 'DATEEND'
    end
    object qCustomerCompanyTypeId: TIntegerField
      FieldName = 'CompanyTypeId'
    end
    object qCustomerGarantieId: TIntegerField
      FieldName = 'GarantieId'
    end
    object qCustomerGarantieAmount: TBCDField
      FieldName = 'GarantieAmount'
      currency = True
      Precision = 19
    end
    object qCustomerComments: TMemoField
      FieldName = 'Comments'
      BlobType = ftMemo
    end
  end
  object dsCustomer: TDataSource
    AutoEdit = False
    DataSet = qCustomer
    Left = 104
    Top = 16
  end
  object qryTranC: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforeOpen = qryTranCBeforeOpen
    BeforeScroll = qryTranCBeforeScroll
    BeforeRefresh = qryTranCBeforeRefresh
    OnCalcFields = qryTranCCalcFields
    DataSource = dtsmemCustomer
    Parameters = <
      item
        Name = 'CustomerId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * From TranC'
      'Where CustomerId = :CustomerId'
      'Order By TranCDate')
    Left = 32
    Top = 256
    object qryTranCTRANCID: TAutoIncField
      FieldName = 'TRANCID'
      ReadOnly = True
    end
    object qryTranCCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qryTranCDEBIT: TFloatField
      DisplayLabel = #935#961#941#969#963#951
      FieldName = 'DEBIT'
      currency = True
    end
    object qryTranCCREDIT: TFloatField
      DisplayLabel = #928#943#963#964#969#963#951
      FieldName = 'CREDIT'
      currency = True
    end
    object qryTranCTTEXT: TWideStringField
      DisplayLabel = #922#949#943#956#949#957#959
      FieldName = 'TTEXT'
      Size = 50
    end
    object qryTranCTRANCDATE: TDateTimeField
      DisplayLabel = #919#956'.'#922#943#957'.'
      FieldName = 'TRANCDATE'
    end
    object qryTranCTRANBCID: TIntegerField
      DisplayLabel = 'Batch ID'
      FieldName = 'TRANBCID'
    end
    object qryTranCINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryTranCUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryTranCINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryTranCUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryTranCCYpol: TCurrencyField
      DisplayLabel = #933#960#972#955#959#953#960#959
      FieldKind = fkCalculated
      FieldName = 'CYpol'
      Calculated = True
    end
  end
  object dsTran: TDataSource
    AutoEdit = False
    DataSet = qryTranC
    Left = 104
    Top = 256
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <
      item
        Active = True
        AggregateName = 'SumOfAmount'
        Expression = 'SUM(Amount)'
        IndexName = 'BLINE_DATE'
        Visible = False
      end
      item
        Active = True
        AggregateName = 'CountAmount'
        Expression = 'Count(*)'
        IndexName = 'BLINE_DATE'
        Visible = False
      end
      item
        Active = True
        GroupingLevel = 1
        IndexName = 'BLINE_DATE'
        Visible = False
      end>
    AggregatesActive = True
    FileName = '.\cds7.xml'
    FieldDefs = <
      item
        Name = 'COMP_CODE'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CUSTOMER'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'SP_GL_IND'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CLEAR_DATE'
        Attributes = [faUnNamed]
        DataType = ftDate
      end
      item
        Name = 'CLR_DOC_NO'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ALLOC_NUMR'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 18
      end
      item
        Name = 'FISC_YEAR'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'DOC_NO'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ITEM_NUM'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'PSTNG_DATE'
        Attributes = [faUnNamed]
        DataType = ftDate
      end
      item
        Name = 'DOC_DATE'
        Attributes = [faUnNamed]
        DataType = ftDate
      end
      item
        Name = 'ENTRY_DATE'
        Attributes = [faUnNamed]
        DataType = ftDate
      end
      item
        Name = 'CURRENCY'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'LOC_CURR'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'REF_DOC_NUM'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 16
      end
      item
        Name = 'DOC_TYPE'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FIS_PERIOD'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'POST_KEY'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DB_CR_IND'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'BUS_AREA'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'TAX_CODE'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'LC_AMOUNT'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'AMT_DOCCUR'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'LC_TAX'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'TX_DOC_CUR'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'ITEM_TEXT'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'BRANCH'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'BLINE_DATE'
        Attributes = [faUnNamed]
        DataType = ftDate
      end
      item
        Name = 'PMNTTRMS'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DSCT_DAYS1'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'DSCT_DAYS2'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'T_CURRENCY'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'AMOUNT'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'NET_AMOUNT'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'INV_REF'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'INV_YEAR'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'INV_ITEM'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end
      item
        Name = 'BLINE_DATE'
        Fields = 'BLINE_DATE'
      end>
    IndexName = 'BLINE_DATE'
    Params = <>
    StoreDefs = True
    OnCalcFields = ClientDataSet1CalcFields
    Left = 224
    Top = 16
    Data = {
      1B0400009619E0BD0100000018000000250000000000030000001B0409434F4D
      505F434F4445010049001000010005574944544802000200040008435553544F
      4D45520100490010000100055749445448020002000A000953505F474C5F494E
      4401004900100001000557494454480200020001000A434C4541525F44415445
      04000600100000000A434C525F444F435F4E4F01004900100001000557494454
      48020002000A000A414C4C4F435F4E554D520100490010000100055749445448
      02000200120009464953435F59454152040001001000000006444F435F4E4F01
      00490010000100055749445448020002000A00084954454D5F4E554D04000100
      100000000A5053544E475F44415445040006001000000008444F435F44415445
      04000600100000000A454E5452595F4441544504000600100000000843555252
      454E43590100490010000100055749445448020002000500084C4F435F435552
      5201004900100001000557494454480200020005000B5245465F444F435F4E55
      4D010049001000010005574944544802000200100008444F435F545950450100
      4900100001000557494454480200020002000A4649535F504552494F44040001
      001000000008504F53545F4B4559010049001000010005574944544802000200
      02000944425F43525F494E440100490010000100055749445448020002000100
      084255535F415245410100490010000100055749445448020002000400085441
      585F434F44450100490010000100055749445448020002000200094C435F414D
      4F554E54080004001000010007535542545950450200490006004D6F6E657900
      0A414D545F444F43435552080004001000010007535542545950450200490006
      004D6F6E657900064C435F544158080004001000010007535542545950450200
      490006004D6F6E6579000A54585F444F435F4355520800040010000100075355
      42545950450200490006004D6F6E657900094954454D5F544558540100490010
      000100055749445448020002003200064252414E434801004900100001000557
      49445448020002000A000A424C494E455F44415445040006001000000008504D
      4E5454524D5301004900100001000557494454480200020004000A445343545F
      444159533104000100100000000A445343545F44415953320400010010000000
      0A545F43555252454E4359010049001000010005574944544802000200050006
      414D4F554E54080004001000010007535542545950450200490006004D6F6E65
      79000A4E45545F414D4F554E5408000400100001000753554254595045020049
      0006004D6F6E65790007494E565F524546010049001000010005574944544802
      0002000A0008494E565F59454152040001001000000008494E565F4954454D04
      0001001000000001000D44454641554C545F4F524445520400820000000000}
    object ClientDataSet1COMP_CODE: TStringField
      FieldName = 'COMP_CODE'
      Size = 4
    end
    object ClientDataSet1CUSTOMER: TStringField
      FieldName = 'CUSTOMER'
      Size = 10
    end
    object ClientDataSet1SP_GL_IND: TStringField
      FieldName = 'SP_GL_IND'
      Size = 1
    end
    object ClientDataSet1CLEAR_DATE: TDateField
      FieldName = 'CLEAR_DATE'
    end
    object ClientDataSet1CLR_DOC_NO: TStringField
      FieldName = 'CLR_DOC_NO'
      Size = 10
    end
    object ClientDataSet1ALLOC_NUMR: TStringField
      FieldName = 'ALLOC_NUMR'
      Size = 18
    end
    object ClientDataSet1FISC_YEAR: TIntegerField
      FieldName = 'FISC_YEAR'
    end
    object ClientDataSet1DOC_NO: TStringField
      FieldName = 'DOC_NO'
      Size = 10
    end
    object ClientDataSet1ITEM_NUM: TIntegerField
      FieldName = 'ITEM_NUM'
    end
    object ClientDataSet1PSTNG_DATE: TDateField
      FieldName = 'PSTNG_DATE'
    end
    object ClientDataSet1DOC_DATE: TDateField
      FieldName = 'DOC_DATE'
    end
    object ClientDataSet1ENTRY_DATE: TDateField
      FieldName = 'ENTRY_DATE'
    end
    object ClientDataSet1CURRENCY: TStringField
      FieldName = 'CURRENCY'
      Size = 5
    end
    object ClientDataSet1LOC_CURR: TStringField
      DisplayWidth = 5
      FieldName = 'LOC_CURR'
      Size = 5
    end
    object ClientDataSet1REF_DOC_NUM: TStringField
      FieldName = 'REF_DOC_NUM'
      Size = 16
    end
    object ClientDataSet1DOC_TYPE: TStringField
      FieldName = 'DOC_TYPE'
      Size = 2
    end
    object ClientDataSet1FIS_PERIOD: TIntegerField
      FieldName = 'FIS_PERIOD'
    end
    object ClientDataSet1POST_KEY: TStringField
      FieldName = 'POST_KEY'
      Size = 2
    end
    object ClientDataSet1DB_CR_IND: TStringField
      FieldName = 'DB_CR_IND'
      Size = 1
    end
    object ClientDataSet1BUS_AREA: TStringField
      FieldName = 'BUS_AREA'
      Size = 4
    end
    object ClientDataSet1TAX_CODE: TStringField
      FieldName = 'TAX_CODE'
      Size = 2
    end
    object ClientDataSet1LC_AMOUNT: TCurrencyField
      FieldName = 'LC_AMOUNT'
    end
    object ClientDataSet1AMT_DOCCUR: TCurrencyField
      FieldName = 'AMT_DOCCUR'
    end
    object ClientDataSet1LC_TAX: TCurrencyField
      FieldName = 'LC_TAX'
    end
    object ClientDataSet1TX_DOC_CUR: TCurrencyField
      FieldName = 'TX_DOC_CUR'
    end
    object ClientDataSet1ITEM_TEXT: TStringField
      FieldName = 'ITEM_TEXT'
      Size = 50
    end
    object ClientDataSet1BRANCH: TStringField
      FieldName = 'BRANCH'
      Size = 10
    end
    object ClientDataSet1BLINE_DATE: TDateField
      FieldName = 'BLINE_DATE'
    end
    object ClientDataSet1PMNTTRMS: TStringField
      FieldName = 'PMNTTRMS'
      Size = 4
    end
    object ClientDataSet1DSCT_DAYS1: TIntegerField
      FieldName = 'DSCT_DAYS1'
    end
    object ClientDataSet1DSCT_DAYS2: TIntegerField
      FieldName = 'DSCT_DAYS2'
    end
    object ClientDataSet1T_CURRENCY: TStringField
      FieldName = 'T_CURRENCY'
      Size = 5
    end
    object ClientDataSet1AMOUNT: TCurrencyField
      FieldName = 'AMOUNT'
    end
    object ClientDataSet1NET_AMOUNT: TCurrencyField
      FieldName = 'NET_AMOUNT'
    end
    object ClientDataSet1INV_REF: TStringField
      FieldName = 'INV_REF'
      Size = 10
    end
    object ClientDataSet1INV_YEAR: TIntegerField
      FieldName = 'INV_YEAR'
    end
    object ClientDataSet1INV_ITEM: TIntegerField
      FieldName = 'INV_ITEM'
    end
    object ClientDataSet1Credit: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Credit'
      Calculated = True
    end
    object ClientDataSet1Debit: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Debit'
      Calculated = True
    end
    object ClientDataSet1SumofAmount: TAggregateField
      Alignment = taRightJustify
      FieldName = 'SumofAmount'
      Visible = True
      OnGetText = ClientDataSet1SumofAmountGetText
      Active = True
      currency = True
      Expression = 'Sum(Amount)'
      GroupingLevel = 1
      IndexName = 'BLINE_DATE'
    end
    object ClientDataSet1CountAmount: TAggregateField
      Alignment = taRightJustify
      FieldName = 'CountAmount'
      Visible = True
      OnGetText = ClientDataSet1CountAmountGetText
      Active = True
      Expression = 'Count(*)'
      GroupingLevel = 1
      IndexName = 'BLINE_DATE'
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = ClientDataSet1
    Left = 304
    Top = 16
  end
  object ClientDataSet2: TClientDataSet
    Active = True
    Aggregates = <>
    FileName = '.\cds6.xml'
    FieldDefs = <
      item
        Name = 'BlartDate'
        Attributes = [faUnNamed]
        DataType = ftDate
      end
      item
        Name = 'Payment'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end
      item
        Name = 'DueDate'
        Attributes = [faUnNamed]
        DataType = ftDate
      end
      item
        Name = 'Credit'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'Debit'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'TotAmount'
        Attributes = [faUnNamed]
        DataType = ftCurrency
      end
      item
        Name = 'OverDue'
        Attributes = [faUnNamed]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end
      item
        Name = 'DueDate'
        Fields = 'DueDate'
      end>
    IndexName = 'DueDate'
    Params = <>
    StoreDefs = True
    Left = 224
    Top = 80
    Data = {
      DD0000009619E0BD010000001800000007000000000003000000DD0009426C61
      7274446174650400060010000000075061796D656E7404000100100000000744
      7565446174650400060010000000064372656469740800040010000100075355
      42545950450200490006004D6F6E657900054465626974080004001000010007
      535542545950450200490006004D6F6E65790009546F74416D6F756E74080004
      001000010007535542545950450200490006004D6F6E657900074F7665724475
      65040001001000000001000D44454641554C545F4F5244455204008200000000
      00}
    object ClientDataSet2BlartDate: TDateField
      FieldName = 'BlartDate'
    end
    object ClientDataSet2Payment: TIntegerField
      FieldName = 'Payment'
    end
    object ClientDataSet2DueDate: TDateField
      FieldName = 'DueDate'
    end
    object ClientDataSet2Credit: TCurrencyField
      FieldName = 'Credit'
    end
    object ClientDataSet2Debit: TCurrencyField
      FieldName = 'Debit'
    end
    object ClientDataSet2TotAmount: TCurrencyField
      FieldName = 'TotAmount'
    end
    object ClientDataSet2OverDue: TIntegerField
      FieldName = 'OverDue'
    end
  end
  object DataSource2: TDataSource
    AutoEdit = False
    DataSet = ClientDataSet2
    Left = 312
    Top = 80
  end
  object dtsContacts: TDataSource
    AutoEdit = False
    DataSet = qryContacts
    Left = 296
    Top = 288
  end
  object qryContacts: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsmemCustomer
    Parameters = <
      item
        Name = 'CustomerId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'Select * From VCustomer_Contacts'
      'Where CustomerID = :CustomerId'
      '')
    Left = 232
    Top = 288
    object qryContactsContactType_Procedure: TWideStringField
      FieldName = 'ContactType_Procedure'
      FixedChar = True
      Size = 15
    end
    object qryContactsContactsName: TWideStringField
      FieldName = 'Contacts.Name'
      Size = 50
    end
    object qryContactsContactsSurname: TWideStringField
      FieldName = 'Contacts.Surname'
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
    object qryContactsSendMail: TBooleanField
      FieldName = 'SendMail'
    end
    object qryContactsSendFax: TBooleanField
      FieldName = 'SendFax'
    end
    object qryContactsSendPrint: TBooleanField
      FieldName = 'SendPrint'
    end
    object qryContactsMain: TBooleanField
      FieldName = 'Main'
    end
    object qryContactsAA: TIntegerField
      FieldName = 'AA'
    end
    object qryContactsCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qryContactsContactTypeId: TIntegerField
      FieldName = 'ContactTypeId'
    end
    object qryContactsCustomerName: TWideStringField
      FieldName = 'Customer.Name'
      Size = 50
    end
  end
end
