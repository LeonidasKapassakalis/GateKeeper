object ACardDM: TACardDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 530
  Width = 829
  object qryBrowser: TADOQuery
    CacheSize = 500
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltUnspecified
    MarshalOptions = moMarshalModifiedOnly
    AfterScroll = qryBrowserAfterScroll
    OnCalcFields = qryBrowserCalcFields
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'SELECT [ACARD.ACARDID]'
      '      ,[ACARD.ACARDCODE]'
      '      ,[ACARD.CUSTOMERID0]'
      '      ,[ACARD.ISSUEDATE]'
      '      ,[ACARD.EXPIREDATE]'
      '      ,[ACARD.METERBOOLEAN]'
      '      ,[ACARD.PINBOOLEAN]'
      '      ,[ACARD.INSDT]'
      '      ,[ACARD.UPDDT]'
      '      ,[ACARD.INSUSR]'
      '      ,[ACARD.UPDUSR]'
      '      ,[ACARD.STARTDATE]'
      '      ,[ACARD.VTYPEID]'
      '      ,[ACARD.CREATEBOOLEAN]'
      '      ,[ACARD.BLACKLISTBOOLEAN]'
      '      ,[ACARD.BLACKLISTDATE]'
      '      ,[ACARD.BLACKLISTUSR]'
      '      ,[ACARD.BLACKLISTNOTES]'
      '      ,[ACARD.IGROUPID1]'
      '      ,[ACARD.IGROUPID2]'
      '      ,[ACARD.IGROUPID3]'
      '      ,[ACARD.IGROUPID4]'
      '      ,[DAYAMOUNT]'
      '      ,[MONTHAMOUNT]'
      '      ,[REGNO]'
      '      ,[ACARDHOLDER]'
      '      ,[ISACTIVE]'
      '      ,[EXPIREPHDATE]'
      '      ,[EXPIRELODATE]'
      '      ,[ACARD.IGROUPID5]'
      '      ,[EMPLOYEESID]'
      '      ,[NEWCARDBOOLEAN]'
      '      ,[NEWCARDID]'
      '      ,[CARDHASEMPNAME]'
      '      ,[ACARDCODENUM]'
      '      ,[INACTIVEDATE]'
      '      ,[INACTIVEUSR]'
      '      ,[INACTIVENOTES]'
      '      ,[ACARD.IGROUPID6]'
      '      ,[ACARD.IGROUPID7]'
      '      ,[ACARD.IGROUPID8]'
      '      ,[ACARD.IGROUPID9]'
      '      ,[ACARD.IGROUPID10]'
      '      ,[COSTCENTERID]'
      '      ,[VType.Descr]'
      '      ,[CClass.Descr]'
      '      ,[CUSTOMER.Descr]'
      '      ,[CUSTOMER.Name]'
      '      ,[CGroup.Descr]'
      '      ,[Acard.CUSTOMERId]'
      '      ,[CUSTOMER.Street]'
      '      ,[CUSTOMER.Zip]'
      '      ,[CUSTOMER.City]'
      '      ,[CUSTOMER.SAPCODE]'
      '      ,[CUSTOMER.HASDETAILEMP]'
      '      ,[CUSTOMER.CUSTOMERID]'
      '      ,[CUSTOMER.ISTEST]'
      '      ,[ACARD.PENDING]'
      '      ,[AcardCodeFull]'
      '      ,[AcardCodeFull000]'
      'FROM V_ACARD_ETC_FAST')
    Left = 32
    Top = 16
    object qryBrowserAcardId: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'AcardId'
      Calculated = True
    end
    object qryBrowserACARDACARDID: TIntegerField
      FieldName = 'ACARD.ACARDID'
    end
    object qryBrowserACARDACARDCODE: TWideStringField
      FieldName = 'ACARD.ACARDCODE'
      Size = 50
    end
    object qryBrowserACARDCUSTOMERID0: TIntegerField
      FieldName = 'ACARD.CUSTOMERID0'
    end
    object qryBrowserACARDISSUEDATE: TDateTimeField
      FieldName = 'ACARD.ISSUEDATE'
    end
    object qryBrowserACARDEXPIREDATE: TDateTimeField
      DisplayLabel = #923#942#958#951
      FieldName = 'ACARD.EXPIREDATE'
    end
    object qryBrowserACARDMETERBOOLEAN: TBooleanField
      FieldName = 'ACARD.METERBOOLEAN'
    end
    object qryBrowserACARDPINBOOLEAN: TBooleanField
      FieldName = 'ACARD.PINBOOLEAN'
    end
    object qryBrowserACARDINSDT: TDateTimeField
      FieldName = 'ACARD.INSDT'
    end
    object qryBrowserACARDUPDDT: TDateTimeField
      FieldName = 'ACARD.UPDDT'
    end
    object qryBrowserACARDINSUSR: TIntegerField
      FieldName = 'ACARD.INSUSR'
    end
    object qryBrowserACARDUPDUSR: TIntegerField
      FieldName = 'ACARD.UPDUSR'
    end
    object qryBrowserACARDSTARTDATE: TDateTimeField
      DisplayLabel = #904#957#945#961#958#951
      FieldName = 'ACARD.STARTDATE'
    end
    object qryBrowserACARDVTYPEID: TIntegerField
      FieldName = 'ACARD.VTYPEID'
    end
    object qryBrowserACARDCREATEBOOLEAN: TBooleanField
      DisplayLabel = #917#957#964'.'#916#951#956'.'
      FieldName = 'ACARD.CREATEBOOLEAN'
    end
    object qryBrowserACARDBLACKLISTBOOLEAN: TBooleanField
      DisplayLabel = 'BlcList'
      FieldName = 'ACARD.BLACKLISTBOOLEAN'
    end
    object qryBrowserACARDBLACKLISTDATE: TDateTimeField
      DisplayLabel = 'BlcLstDate'
      FieldName = 'ACARD.BLACKLISTDATE'
    end
    object qryBrowserACARDBLACKLISTUSR: TIntegerField
      FieldName = 'ACARD.BLACKLISTUSR'
    end
    object qryBrowserACARDBLACKLISTNOTES: TWideStringField
      FieldName = 'ACARD.BLACKLISTNOTES'
      Size = 200
    end
    object qryBrowserACARDIGROUPID1: TIntegerField
      FieldName = 'ACARD.IGROUPID1'
    end
    object qryBrowserACARDIGROUPID2: TIntegerField
      FieldName = 'ACARD.IGROUPID2'
    end
    object qryBrowserACARDIGROUPID3: TIntegerField
      FieldName = 'ACARD.IGROUPID3'
    end
    object qryBrowserACARDIGROUPID4: TIntegerField
      FieldName = 'ACARD.IGROUPID4'
    end
    object qryBrowserDAYAMOUNT: TFloatField
      DisplayLabel = #919#956#949#961'.'#908#961#953#959
      FieldName = 'DAYAMOUNT'
      currency = True
    end
    object qryBrowserMONTHAMOUNT: TFloatField
      DisplayLabel = #924#951#957'.'#908#961#953#959
      FieldName = 'MONTHAMOUNT'
      currency = True
    end
    object qryBrowserREGNO: TWideStringField
      DisplayLabel = #913#961'.'#922#965#954#955'.'
      FieldName = 'REGNO'
      Size = 50
    end
    object qryBrowserACARDHOLDER: TWideStringField
      FieldName = 'ACARDHOLDER'
      Size = 30
    end
    object qryBrowserISACTIVE: TBooleanField
      DisplayLabel = 'Active'
      FieldName = 'ISACTIVE'
    end
    object qryBrowserEXPIREPHDATE: TDateTimeField
      FieldName = 'EXPIREPHDATE'
    end
    object qryBrowserEXPIRELODATE: TDateTimeField
      FieldName = 'EXPIRELODATE'
    end
    object qryBrowserACARDIGROUPID5: TIntegerField
      FieldName = 'ACARD.IGROUPID5'
    end
    object qryBrowserEMPLOYEESID: TIntegerField
      FieldName = 'EMPLOYEESID'
    end
    object qryBrowserNEWCARDBOOLEAN: TBooleanField
      FieldName = 'NEWCARDBOOLEAN'
    end
    object qryBrowserNEWCARDID: TIntegerField
      FieldName = 'NEWCARDID'
    end
    object qryBrowserCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object qryBrowserACARDCODENUM: TIntegerField
      FieldName = 'ACARDCODENUM'
    end
    object qryBrowserINACTIVEDATE: TDateTimeField
      FieldName = 'INACTIVEDATE'
    end
    object qryBrowserINACTIVEUSR: TIntegerField
      FieldName = 'INACTIVEUSR'
    end
    object qryBrowserINACTIVENOTES: TWideStringField
      FieldName = 'INACTIVENOTES'
      FixedChar = True
      Size = 200
    end
    object qryBrowserACARDIGROUPID6: TIntegerField
      FieldName = 'ACARD.IGROUPID6'
    end
    object qryBrowserACARDIGROUPID7: TIntegerField
      FieldName = 'ACARD.IGROUPID7'
    end
    object qryBrowserACARDIGROUPID8: TIntegerField
      FieldName = 'ACARD.IGROUPID8'
    end
    object qryBrowserACARDIGROUPID9: TIntegerField
      FieldName = 'ACARD.IGROUPID9'
    end
    object qryBrowserACARDIGROUPID10: TIntegerField
      FieldName = 'ACARD.IGROUPID10'
    end
    object qryBrowserCOSTCENTERID: TIntegerField
      FieldName = 'COSTCENTERID'
    end
    object qryBrowserVTypeDescr: TWideStringField
      DisplayLabel = #932#973#960#959#962' '#927#967#942#956'.'
      DisplayWidth = 15
      FieldName = 'VType.Descr'
      Size = 50
    end
    object qryBrowserCClassDescr: TWideStringField
      FieldName = 'CClass.Descr'
      Size = 50
    end
    object qryBrowserCUSTOMERDescr: TWideStringField
      FieldName = 'CUSTOMER.Descr'
      Size = 50
    end
    object qryBrowserCUSTOMERName: TWideStringField
      DisplayLabel = #928#949#955#940#964#951#962
      FieldName = 'CUSTOMER.Name'
      Size = 50
    end
    object qryBrowserCGroupDescr: TWideStringField
      FieldName = 'CGroup.Descr'
      Size = 50
    end
    object qryBrowserAcardCUSTOMERId: TIntegerField
      FieldName = 'Acard.CUSTOMERId'
    end
    object qryBrowserCUSTOMERStreet: TWideStringField
      FieldName = 'CUSTOMER.Street'
      Size = 50
    end
    object qryBrowserCUSTOMERZip: TWideStringField
      FieldName = 'CUSTOMER.Zip'
      Size = 50
    end
    object qryBrowserCUSTOMERCity: TWideStringField
      FieldName = 'CUSTOMER.City'
      Size = 50
    end
    object qryBrowserCUSTOMERSAPCODE: TWideStringField
      FieldName = 'CUSTOMER.SAPCODE'
      Size = 10
    end
    object qryBrowserCUSTOMERHASDETAILEMP: TBooleanField
      FieldName = 'CUSTOMER.HASDETAILEMP'
    end
    object qryBrowserCUSTOMERCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMER.CUSTOMERID'
    end
    object qryBrowserCUSTOMERISTEST: TBooleanField
      FieldName = 'CUSTOMER.ISTEST'
    end
    object qryBrowserACARDPENDING: TBooleanField
      DisplayLabel = #913#957#945#956'.'
      FieldName = 'ACARD.PENDING'
    end
    object qryBrowserAcardCodeFull: TWideStringField
      DisplayLabel = 'AC Num.'
      FieldName = 'AcardCodeFull'
      ReadOnly = True
      Size = 19
    end
    object qryBrowserAcardCodeFull000: TWideStringField
      DisplayLabel = 'AC Num.'
      DisplayWidth = 20
      FieldName = 'AcardCodeFull000'
      ReadOnly = True
    end
    object qryBrowserLEmp: TStringField
      DisplayLabel = #917#961#947#945#950#972#956#949#957#959#962
      FieldKind = fkLookup
      FieldName = 'LEmp'
      LookupDataSet = qryEmployees0
      LookupKeyFields = 'Id'
      LookupResultField = 'FName'
      KeyFields = 'EMPLOYEESID'
      Lookup = True
    end
  end
  object dtsBrowser: TDataSource
    AutoEdit = False
    DataSet = qryBrowser
    Left = 96
    Top = 16
  end
  object qryACard: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    MarshalOptions = moMarshalModifiedOnly
    BeforePost = qryACardBeforePost
    AfterPost = qryACardAfterPost
    OnCalcFields = qryACardCalcFields
    OnNewRecord = qryACardNewRecord
    DataSource = dtsBrowser
    Parameters = <
      item
        Name = 'AcardId'
        DataType = ftInteger
        Precision = 10
        Value = 46
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM ACARD'
      'Where AcardId = :AcardId')
    Left = 32
    Top = 72
    object qryACardACARDID: TAutoIncField
      FieldName = 'ACARDID'
    end
    object qryACardACARDCODE: TWideStringField
      FieldName = 'ACARDCODE'
      Size = 50
    end
    object qryACardCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qryACardISSUEDATE: TDateTimeField
      FieldName = 'ISSUEDATE'
    end
    object qryACardEXPIREDATE: TDateTimeField
      FieldName = 'EXPIREDATE'
    end
    object qryACardMETERBOOLEAN: TBooleanField
      FieldName = 'METERBOOLEAN'
    end
    object qryACardPINBOOLEAN: TBooleanField
      FieldName = 'PINBOOLEAN'
    end
    object qryACardINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryACardUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryACardINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryACardUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryACardSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qryACardVTYPEID: TIntegerField
      FieldName = 'VTYPEID'
    end
    object qryACardCREATEBOOLEAN: TBooleanField
      FieldName = 'CREATEBOOLEAN'
    end
    object qryACardBLACKLISTBOOLEAN: TBooleanField
      FieldName = 'BLACKLISTBOOLEAN'
    end
    object qryACardBLACKLISTDATE: TDateTimeField
      FieldName = 'BLACKLISTDATE'
    end
    object qryACardBLACKLISTUSR: TIntegerField
      FieldName = 'BLACKLISTUSR'
    end
    object qryACardBLACKLISTNOTES: TWideStringField
      FieldName = 'BLACKLISTNOTES'
      Size = 200
    end
    object qryACardIGROUPID1: TIntegerField
      FieldName = 'IGROUPID1'
      OnValidate = qryAcardIGROUPIDValidate
    end
    object qryACardIGROUPID2: TIntegerField
      FieldName = 'IGROUPID2'
      OnValidate = qryAcardIGROUPIDValidate
    end
    object qryACardIGROUPID3: TIntegerField
      FieldName = 'IGROUPID3'
      OnValidate = qryAcardIGROUPIDValidate
    end
    object qryACardIGROUPID4: TIntegerField
      FieldName = 'IGROUPID4'
      OnValidate = qryAcardIGROUPIDValidate
    end
    object qryACardDAYAMOUNT: TFloatField
      FieldName = 'DAYAMOUNT'
    end
    object qryACardMONTHAMOUNT: TFloatField
      FieldName = 'MONTHAMOUNT'
    end
    object qryACardREGNO: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
    object qryACardACARDHOLDER: TWideStringField
      FieldName = 'ACARDHOLDER'
      Size = 30
    end
    object qryACardISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qryACardEXPIREPHDATE: TDateTimeField
      FieldName = 'EXPIREPHDATE'
    end
    object qryACardEXPIRELODATE: TDateTimeField
      FieldName = 'EXPIRELODATE'
    end
    object qryACardIGROUPID5: TIntegerField
      FieldName = 'IGROUPID5'
      OnValidate = qryAcardIGROUPIDValidate
    end
    object qryACardEMPLOYEESID: TIntegerField
      FieldName = 'EMPLOYEESID'
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
    object qryACardIGROUPID6: TIntegerField
      FieldName = 'IGROUPID6'
      OnValidate = qryAcardIGROUPIDValidate
    end
    object qryACardIGROUPID7: TIntegerField
      FieldName = 'IGROUPID7'
      OnValidate = qryAcardIGROUPIDValidate
    end
    object qryACardIGROUPID8: TIntegerField
      FieldName = 'IGROUPID8'
      OnValidate = qryAcardIGROUPIDValidate
    end
    object qryACardIGROUPID9: TIntegerField
      FieldName = 'IGROUPID9'
      OnValidate = qryAcardIGROUPIDValidate
    end
    object qryACardIGROUPID10: TIntegerField
      FieldName = 'IGROUPID10'
      OnValidate = qryAcardIGROUPIDValidate
    end
    object qryACardCOSTCENTERID: TIntegerField
      FieldName = 'COSTCENTERID'
    end
    object qryACardPending: TBooleanField
      FieldName = 'Pending'
    end
    object qryACardFullCardNo: TStringField
      FieldKind = fkCalculated
      FieldName = 'FullCardNo'
      Calculated = True
    end
    object qryACardPendingDT: TDateTimeField
      FieldName = 'PendingDT'
    end
    object qryACardPendingUsr: TIntegerField
      FieldName = 'PendingUsr'
    end
  end
  object dtsACard: TDataSource
    AutoEdit = False
    DataSet = qryACard
    OnStateChange = dtsACardStateChange
    Left = 96
    Top = 72
  end
  object dtsCustomer: TDataSource
    DataSet = qryCustomer
    Left = 376
    Top = 80
  end
  object qryCustomer: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryCustomerCalcFields
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CUSTOMER')
    Left = 312
    Top = 80
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
    object qryCustomerPCustomerId: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PCustomerId'
      Calculated = True
    end
  end
  object qryBlackList: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsACard
    Parameters = <
      item
        Name = 'ACARDID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM BLACKLIST'
      'WHERE ACARDID = :ACARDID'
      'ORDER BY FRDATE')
    Left = 312
    Top = 16
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
    Left = 376
    Top = 16
  end
  object qryAuxACard: TADOQuery
    Tag = 9100
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ACARD')
    Left = 112
    Top = 352
    object qryAuxACardACARDID: TAutoIncField
      FieldName = 'ACARDID'
      ReadOnly = True
    end
    object qryAuxACardACARDCODE: TWideStringField
      FieldName = 'ACARDCODE'
      Size = 50
    end
    object qryAuxACardCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qryAuxACardISSUEDATE: TDateTimeField
      FieldName = 'ISSUEDATE'
    end
    object qryAuxACardEXPIREDATE: TDateTimeField
      FieldName = 'EXPIREDATE'
    end
    object qryAuxACardMETERBOOLEAN: TBooleanField
      FieldName = 'METERBOOLEAN'
    end
    object qryAuxACardPINBOOLEAN: TBooleanField
      FieldName = 'PINBOOLEAN'
    end
    object qryAuxACardINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryAuxACardUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryAuxACardINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryAuxACardUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryAuxACardSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qryAuxACardVTYPEID: TIntegerField
      FieldName = 'VTYPEID'
    end
    object qryAuxACardCREATEBOOLEAN: TBooleanField
      FieldName = 'CREATEBOOLEAN'
    end
    object qryAuxACardBLACKLISTBOOLEAN: TBooleanField
      FieldName = 'BLACKLISTBOOLEAN'
    end
    object qryAuxACardBLACKLISTDATE: TDateTimeField
      FieldName = 'BLACKLISTDATE'
    end
    object qryAuxACardBLACKLISTUSR: TIntegerField
      FieldName = 'BLACKLISTUSR'
    end
    object qryAuxACardBLACKLISTNOTES: TWideStringField
      FieldName = 'BLACKLISTNOTES'
      Size = 200
    end
    object qryAuxACardIGROUPID1: TIntegerField
      FieldName = 'IGROUPID1'
    end
    object qryAuxACardIGROUPID2: TIntegerField
      FieldName = 'IGROUPID2'
    end
    object qryAuxACardIGROUPID3: TIntegerField
      FieldName = 'IGROUPID3'
    end
    object qryAuxACardIGROUPID4: TIntegerField
      FieldName = 'IGROUPID4'
    end
    object qryAuxACardDAYAMOUNT: TFloatField
      FieldName = 'DAYAMOUNT'
    end
    object qryAuxACardMONTHAMOUNT: TFloatField
      FieldName = 'MONTHAMOUNT'
    end
    object qryAuxACardREGNO: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
  end
  object qryRegNoSeq: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM REGNOSEQ')
    Left = 32
    Top = 200
    object qryRegNoSeqREGNO: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
    object qryRegNoSeqREGNOSEQID: TIntegerField
      FieldName = 'REGNOSEQID'
    end
  end
  object qryRegNoCount: TADOQuery
    Tag = 9100
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Count(*) as RecCount FROM REGNOSEQ')
    Left = 112
    Top = 400
    object qryRegNoCountRecCount: TIntegerField
      FieldName = 'RecCount'
    end
  end
  object qryRegNoExceptCount: TADOQuery
    Tag = 9100
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT Count(*) as RecCount FROM REGNOEXCEPT'
      'Where REGNOEXCEPTID >= :PID')
    Left = 32
    Top = 400
    object qryRegNoExceptCountRecCount: TIntegerField
      FieldName = 'RecCount'
    end
  end
  object qryRegNoExc: TADOQuery
    Tag = 9100
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM REGNOEXCEPT')
    Left = 112
    Top = 296
    object qryRegNoExcREGNOEXCEPTID: TIntegerField
      FieldName = 'REGNOEXCEPTID'
    end
  end
  object dtsEmployees: TDataSource
    AutoEdit = False
    DataSet = qryEmployees
    Left = 92
    Top = 136
  end
  object qryEmployees: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsCustomer
    Parameters = <
      item
        Name = 'PCustomerId'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT * , RTRIM(LTRIM(SurName)) + '#39' '#39' + RTRIM(LTRIM(Name)) as F' +
        'Name'
      'FROM Employees '
      'Where CustomerId = :PCustomerId'
      'Or id = 0')
    Left = 32
    Top = 136
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
    object qryEmployeesFName: TWideStringField
      FieldName = 'FName'
      ReadOnly = True
      Size = 101
    end
  end
  object qryEmployees0: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      
        'SELECT *,RTRIM(LTRIM(SurName)) + '#39' '#39' + RTRIM(LTRIM(Name)) as FNa' +
        'me'
      '  FROM Employees')
    Left = 504
    Top = 20
    object AutoIncField1: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'CustomerId'
    end
    object IntegerField2: TIntegerField
      FieldName = 'MhtrId'
    end
    object WideStringField1: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object WideStringField2: TWideStringField
      FieldName = 'SurName'
      Size = 50
    end
    object WideStringField3: TWideStringField
      FieldName = 'Address'
      Size = 50
    end
    object WideStringField4: TWideStringField
      FieldName = 'TK'
      Size = 5
    end
    object WideStringField5: TWideStringField
      FieldName = 'Town'
      Size = 50
    end
    object WideStringField6: TWideStringField
      FieldName = 'AFM'
      Size = 9
    end
    object WideStringField7: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object IntegerField3: TIntegerField
      FieldName = 'YpokId'
    end
    object qryEmployees0SendPrint: TBooleanField
      FieldName = 'SendPrint'
    end
    object qryEmployees0SendMail: TBooleanField
      FieldName = 'SendMail'
    end
    object qryEmployees0MailAddr: TWideStringField
      FieldName = 'MailAddr'
      Size = 50
    end
    object qryEmployees0FName: TWideStringField
      FieldName = 'FName'
      ReadOnly = True
      Size = 101
    end
  end
  object qryACardCopy: TADOQuery
    Tag = 9100
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = qryACardBeforePost
    OnCalcFields = qryACardCalcFields
    OnNewRecord = qryACardNewRecord
    DataSource = dtsBrowser
    Parameters = <
      item
        Name = 'AcardId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM ACARD'
      'Where AcardId = :AcardId')
    Left = 28
    Top = 292
    object qryACardCopyACARDID: TAutoIncField
      FieldName = 'ACARDID'
      ReadOnly = True
    end
    object qryACardCopyACARDCODE: TWideStringField
      FieldName = 'ACARDCODE'
      Size = 50
    end
    object qryACardCopyCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qryACardCopyISSUEDATE: TDateTimeField
      FieldName = 'ISSUEDATE'
    end
    object qryACardCopyEXPIREDATE: TDateTimeField
      FieldName = 'EXPIREDATE'
    end
    object qryACardCopyMETERBOOLEAN: TBooleanField
      FieldName = 'METERBOOLEAN'
    end
    object qryACardCopyPINBOOLEAN: TBooleanField
      FieldName = 'PINBOOLEAN'
    end
    object qryACardCopyINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryACardCopyUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryACardCopyINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryACardCopyUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryACardCopySTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qryACardCopyVTYPEID: TIntegerField
      FieldName = 'VTYPEID'
    end
    object qryACardCopyCREATEBOOLEAN: TBooleanField
      FieldName = 'CREATEBOOLEAN'
    end
    object qryACardCopyBLACKLISTBOOLEAN: TBooleanField
      FieldName = 'BLACKLISTBOOLEAN'
    end
    object qryACardCopyBLACKLISTDATE: TDateTimeField
      FieldName = 'BLACKLISTDATE'
    end
    object qryACardCopyBLACKLISTUSR: TIntegerField
      FieldName = 'BLACKLISTUSR'
    end
    object qryACardCopyBLACKLISTNOTES: TWideStringField
      FieldName = 'BLACKLISTNOTES'
      Size = 200
    end
    object qryACardCopyIGROUPID1: TIntegerField
      FieldName = 'IGROUPID1'
    end
    object qryACardCopyIGROUPID2: TIntegerField
      FieldName = 'IGROUPID2'
    end
    object qryACardCopyIGROUPID3: TIntegerField
      FieldName = 'IGROUPID3'
    end
    object qryACardCopyIGROUPID4: TIntegerField
      FieldName = 'IGROUPID4'
    end
    object qryACardCopyDAYAMOUNT: TFloatField
      FieldName = 'DAYAMOUNT'
    end
    object qryACardCopyMONTHAMOUNT: TFloatField
      FieldName = 'MONTHAMOUNT'
    end
    object qryACardCopyREGNO: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
    object qryACardCopyACARDHOLDER: TWideStringField
      FieldName = 'ACARDHOLDER'
      Size = 30
    end
    object qryACardCopyISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qryACardCopyEXPIREPHDATE: TDateTimeField
      FieldName = 'EXPIREPHDATE'
    end
    object qryACardCopyEXPIRELODATE: TDateTimeField
      FieldName = 'EXPIRELODATE'
    end
    object qryACardCopyIGROUPID5: TIntegerField
      FieldName = 'IGROUPID5'
    end
    object qryACardCopyEMPLOYEESID: TIntegerField
      FieldName = 'EMPLOYEESID'
    end
    object qryACardCopyNEWCARDBOOLEAN: TBooleanField
      FieldName = 'NEWCARDBOOLEAN'
    end
    object qryACardCopyNEWCARDID: TIntegerField
      FieldName = 'NEWCARDID'
    end
    object qryACardCopyCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object qryACardCopyACARDCODENUM: TIntegerField
      FieldName = 'ACARDCODENUM'
    end
    object qryACardCopyINACTIVEDATE: TDateTimeField
      FieldName = 'INACTIVEDATE'
    end
    object qryACardCopyINACTIVEUSR: TIntegerField
      FieldName = 'INACTIVEUSR'
    end
    object qryACardCopyINACTIVENOTES: TWideStringField
      FieldName = 'INACTIVENOTES'
      FixedChar = True
      Size = 200
    end
    object qryACardCopyIGROUPID6: TIntegerField
      FieldName = 'IGROUPID6'
    end
    object qryACardCopyIGROUPID7: TIntegerField
      FieldName = 'IGROUPID7'
    end
    object qryACardCopyIGROUPID8: TIntegerField
      FieldName = 'IGROUPID8'
    end
    object qryACardCopyIGROUPID9: TIntegerField
      FieldName = 'IGROUPID9'
    end
    object qryACardCopyIGROUPID10: TIntegerField
      FieldName = 'IGROUPID10'
    end
    object qryACardCopyCOSTCENTERID: TIntegerField
      FieldName = 'COSTCENTERID'
    end
    object qryACardCopyPending: TBooleanField
      FieldName = 'Pending'
    end
  end
  object qryNewACard: TADOQuery
    Tag = 9999
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = qryACardBeforePost
    OnCalcFields = qryACardCalcFields
    OnNewRecord = qryACardNewRecord
    Parameters = <
      item
        Name = 'PACARDID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Update ACARD SET NEWCARDBOOLEAN = 1'
      'Where ACARDID = :PACARDID')
    Left = 32
    Top = 348
  end
  object qryVType: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM VType')
    Left = 344
    Top = 256
    object qryVTypeVTYPEID: TAutoIncField
      FieldName = 'VTYPEID'
      ReadOnly = True
    end
    object qryVTypeDESCR: TWideStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object qryVTypeINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryVTypeUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryVTypeINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryVTypeUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object qryCostCenter: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsmemWS
    Parameters = <
      item
        Name = 'PCustomerId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM CostCenter'
      'Where CustomerId = :PCustomerId'
      'or CustomerId = 0')
    Left = 344
    Top = 320
    object qryCostCenterCostCenterId: TAutoIncField
      FieldName = 'CostCenterId'
      ReadOnly = True
    end
    object qryCostCenterCustomerId: TIntegerField
      FieldName = 'CustomerId'
    end
    object qryCostCenterCustomerAA: TIntegerField
      FieldName = 'CustomerAA'
    end
    object qryCostCenterCCName: TWideStringField
      FieldName = 'CCName'
      FixedChar = True
      Size = 10
    end
    object qryCostCenterCCNameFull: TWideStringField
      FieldName = 'CCNameFull'
      FixedChar = True
      Size = 100
    end
    object qryCostCenterInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryCostCenterInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryCostCenterUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qryCostCenterUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qryCostCenterDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryCostCenterDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryCostCenterDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryCostCenterInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryCostCenterInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryCostCenterInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object qryIGroup: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ParamCheck = False
    Parameters = <>
    SQL.Strings = (
      'SELECT Id,Name FROM IGroup Where InActive = 0')
    Left = 344
    Top = 376
    object qryIGroupId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qryIGroupName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object dtsIGroup: TDataSource
    AutoEdit = False
    DataSet = qryIGroup
    Left = 444
    Top = 376
  end
  object dtsCostCenter: TDataSource
    AutoEdit = False
    DataSet = qryCostCenter
    Left = 444
    Top = 320
  end
  object dtsVType: TDataSource
    AutoEdit = False
    DataSet = qryVType
    Left = 444
    Top = 256
  end
  object qryCustomerDetail: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsCustomer
    Parameters = <
      item
        Name = 'PCustomerId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT CustomerId , HASDETAILEMP '
      'FROM CUSTOMER '
      'Where CustomerId = :PCustomerId')
    Left = 312
    Top = 144
    object qryCustomerDetailCustomerId: TAutoIncField
      FieldName = 'CustomerId'
      ReadOnly = True
    end
    object qryCustomerDetailHASDETAILEMP: TBooleanField
      FieldName = 'HASDETAILEMP'
    end
  end
  object qryCustomerCostCenter: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsCustomer
    Parameters = <
      item
        Name = 'PCustomerId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT Count(*) As Cnt'
      'FROM   CostCenter'
      'Where CustomerId = :PCustomerId')
    Left = 440
    Top = 144
    object qryCustomerCostCenterCnt: TIntegerField
      FieldName = 'Cnt'
      ReadOnly = True
    end
  end
  object memWS: TdxMemData
    Active = True
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F240000000400000009000700467244617465000400
      000009000700546F44617465001000000001000C0046724143617264436F6465
      001000000001000C00546F4143617264436F6465000400000003000C00467253
      746174696F6E4964000400000003000C00546F53746174696F6E496400040000
      0003000D0046724D65726368616E744964000400000003000D00546F4D657263
      68616E744964000A00000001000E0046724D65726368616E74536170000A0000
      0001000E00546F4D65726368616E74536170000A00000001000E004672437573
      746F6D6572536170001400000001000E00546F437573746F6D65725361700032
      00000001000B004672437573746F6D6572003200000001000B00546F43757374
      6F6D6572000400000003000D0046725465726D696E616C496400040000000300
      0D00546F5465726D696E616C496400080000000B000A00467244617465496E73
      00080000000B000A00546F44617465496E73000400000003000F004672437573
      746F6D6572436F6465000400000003000F00546F437573746F6D6572436F6465
      0004000000090009004672446174655374000400000009000900546F44617465
      5374000400000003000400446566000400000003000400446574000400000003
      000900456E686D50656C46000400000003000900456E686D50656C5400040000
      0003000900456E686D436F6D46000400000003000900456E686D436F6D540004
      00000003000A00456E686D4469736346000400000003000A00456E686D446973
      6354000400000003000A00456E686D5374617446000400000003000A00456E68
      6D53746174540004000000030007004261746368460004000000030007004261
      74636854000200000005000B00456E686D4461696C7947000200000005000A00
      456E686D50656C614700}
    SortOptions = []
    Left = 600
    Top = 112
    object memWSPCustomerId: TIntegerField
      FieldName = 'PCustomerId'
    end
  end
  object dtsmemWS: TDataSource
    DataSet = memWS
    OnUpdateData = dtsmemWSUpdateData
    Left = 656
    Top = 112
  end
  object dtsSpecCust: TDataSource
    AutoEdit = False
    DataSet = qrySpecCust
    Left = 656
    Top = 240
  end
  object qrySpecCust: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsmemWS
    Parameters = <
      item
        Name = 'PCustomerId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM CUSTOMER'
      'WHERE CustomerId = :PCustomerId'
      '')
    Left = 592
    Top = 240
    object qrySpecCustCUSTOMERID: TAutoIncField
      FieldName = 'CUSTOMERID'
      ReadOnly = True
    end
    object qrySpecCustNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object qrySpecCustSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object qrySpecCustZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qrySpecCustCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qrySpecCustAFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object qrySpecCustDOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object qrySpecCustSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qrySpecCustAREAID: TIntegerField
      FieldName = 'AREAID'
    end
    object qrySpecCustLOCATIONID: TIntegerField
      FieldName = 'LOCATIONID'
    end
    object qrySpecCustCGROUPID: TIntegerField
      FieldName = 'CGROUPID'
    end
    object qrySpecCustCCLASSID: TIntegerField
      FieldName = 'CCLASSID'
    end
    object qrySpecCustCREDITAMOUNT: TFloatField
      FieldName = 'CREDITAMOUNT'
    end
    object qrySpecCustINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qrySpecCustUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qrySpecCustINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qrySpecCustUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qrySpecCustPROFESSION: TWideStringField
      FieldName = 'PROFESSION'
      Size = 50
    end
    object qrySpecCustBRANCHID: TIntegerField
      FieldName = 'BRANCHID'
    end
    object qrySpecCustSAPCODE: TWideStringField
      FieldName = 'SAPCODE'
      Size = 10
    end
    object qrySpecCustISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qrySpecCustSALESMENID: TIntegerField
      FieldName = 'SALESMENID'
    end
    object qrySpecCustDIAKID: TIntegerField
      FieldName = 'DIAKID'
    end
    object qrySpecCustISTEST: TBooleanField
      FieldName = 'ISTEST'
    end
    object qrySpecCustISCONS: TBooleanField
      FieldName = 'ISCONS'
    end
    object qrySpecCustAREABID: TIntegerField
      FieldName = 'AREABID'
    end
    object qrySpecCustDATEPHEND: TDateTimeField
      FieldName = 'DATEPHEND'
    end
    object qrySpecCustDATELOEND: TDateTimeField
      FieldName = 'DATELOEND'
    end
    object qrySpecCustHASDETAILEMP: TBooleanField
      FieldName = 'HASDETAILEMP'
    end
    object qrySpecCustALLCARDSTOBL: TBooleanField
      FieldName = 'ALLCARDSTOBL'
    end
    object qrySpecCustALLCARDSTOBLDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLDATE'
    end
    object qrySpecCustALLCARDSTOBLSYSDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLSYSDATE'
    end
    object qrySpecCustALLCARDSTOBLUSR: TIntegerField
      FieldName = 'ALLCARDSTOBLUSR'
    end
    object qrySpecCustCUSTOMEROFF: TBooleanField
      FieldName = 'CUSTOMEROFF'
    end
    object qrySpecCustCUSTOMEROFFDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFDATE'
    end
    object qrySpecCustCUSTOMEROFFSYSDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFSYSDATE'
    end
    object qrySpecCustCUSTOMEROFFUSR: TIntegerField
      FieldName = 'CUSTOMEROFFUSR'
    end
    object qrySpecCustCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object qrySpecCustDATEEND: TDateTimeField
      FieldName = 'DATEEND'
    end
    object qrySpecCustCompanyTypeId: TIntegerField
      FieldName = 'CompanyTypeId'
    end
    object qrySpecCustGarantieId: TIntegerField
      FieldName = 'GarantieId'
    end
    object qrySpecCustGarantieAmount: TFloatField
      FieldName = 'GarantieAmount'
    end
    object qrySpecCustComments: TMemoField
      FieldName = 'Comments'
      BlobType = ftMemo
    end
  end
end
