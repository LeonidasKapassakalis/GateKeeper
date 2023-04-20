inherited DMSelAcard: TDMSelAcard
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  object qryACard: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM V_ACARD_ETC')
    Left = 56
    Top = 40
    object qryACardACARDACARDID: TIntegerField
      DisplayLabel = 'ID '#922#940#961#964#945#962
      FieldName = 'ACARD.ACARDID'
    end
    object qryACardACARDACARDCODE: TWideStringField
      DisplayLabel = #922#969#948#953#954#972#962
      FieldName = 'ACARD.ACARDCODE'
      Visible = False
      Size = 50
    end
    object qryACardACARDCUSTOMERID0: TIntegerField
      DisplayLabel = #922#969#948'.'#928#949#955#940#964#951
      FieldName = 'ACARD.CUSTOMERID0'
      Visible = False
    end
    object qryACardACARDISSUEDATE: TDateTimeField
      DisplayLabel = #919#956'/'#957#943#945' '#904#957#945#961#958#951#962
      FieldName = 'ACARD.ISSUEDATE'
      Visible = False
    end
    object qryACardACARDEXPIREDATE: TDateTimeField
      DisplayLabel = #919#956'/'#957#943#945' '#923#942#958#951#962
      FieldName = 'ACARD.EXPIREDATE'
      Visible = False
    end
    object qryACardACARDMETERBOOLEAN: TBooleanField
      DisplayLabel = #922#945#964#945#967'.'#935#923#924
      FieldName = 'ACARD.METERBOOLEAN'
      Visible = False
    end
    object qryACardACARDPINBOOLEAN: TBooleanField
      DisplayLabel = 'PIN'
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
      Visible = False
    end
    object qryACardACARDBLACKLISTBOOLEAN: TBooleanField
      DisplayLabel = 'BlackList'
      FieldName = 'ACARD.BLACKLISTBOOLEAN'
      Visible = False
    end
    object qryACardACARDBLACKLISTDATE: TDateTimeField
      FieldName = 'ACARD.BLACKLISTDATE'
      Visible = False
    end
    object qryACardACARDBLACKLISTUSR: TIntegerField
      FieldName = 'ACARD.BLACKLISTUSR'
      Visible = False
    end
    object qryACardACARDBLACKLISTNOTES: TWideStringField
      FieldName = 'ACARD.BLACKLISTNOTES'
      Visible = False
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
      Visible = False
    end
    object qryACardMONTHAMOUNT: TFloatField
      DisplayLabel = #924#951#957'.'#908#961#953#959
      FieldName = 'MONTHAMOUNT'
      Visible = False
    end
    object qryACardREGNO: TWideStringField
      DisplayLabel = #913#961'.'#922#965#954#955#959#966#959#961#943#945#962
      FieldName = 'REGNO'
      Visible = False
      Size = 50
    end
    object qryACardACARDHOLDER: TWideStringField
      DisplayLabel = #922#945#961#964#959#973#967#959#962
      FieldName = 'ACARDHOLDER'
      Visible = False
      Size = 30
    end
    object qryACardISACTIVE: TBooleanField
      DisplayLabel = #917#957#949#961#947#942
      FieldName = 'ISACTIVE'
      Visible = False
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
      Visible = False
    end
    object qryACardNEWCARDID: TIntegerField
      FieldName = 'NEWCARDID'
      Visible = False
    end
    object qryACardCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
      Visible = False
    end
    object qryACardACARDCODENUM: TIntegerField
      FieldName = 'ACARDCODENUM'
      Visible = False
    end
    object qryACardINACTIVEDATE: TDateTimeField
      FieldName = 'INACTIVEDATE'
      Visible = False
    end
    object qryACardINACTIVEUSR: TIntegerField
      FieldName = 'INACTIVEUSR'
      Visible = False
    end
    object qryACardINACTIVENOTES: TWideStringField
      FieldName = 'INACTIVENOTES'
      Visible = False
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
      FieldName = 'VType.Descr'
      Visible = False
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
      FieldName = 'CUSTOMER.Name'
      Visible = False
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
      FieldName = 'CUSTOMER.SAPCODE'
      Visible = False
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
    object qryACardName: TWideStringField
      FieldName = 'Name'
      Visible = False
      Size = 30
    end
    object qryACardSurname: TWideStringField
      FieldName = 'Surname'
      Visible = False
      Size = 50
    end
    object qryACardemail: TWideStringField
      FieldName = 'email'
      Visible = False
      Size = 50
    end
    object qryACardPhone: TWideStringField
      FieldName = 'Phone'
      Visible = False
      Size = 45
    end
    object qryACardFax: TWideStringField
      FieldName = 'Fax'
      Visible = False
      Size = 45
    end
    object qryACardMobile: TWideStringField
      FieldName = 'Mobile'
      Visible = False
      Size = 45
    end
    object qryACardMailORFax: TIntegerField
      FieldName = 'MailORFax'
      Visible = False
    end
    object qryACardACARDPENDING: TBooleanField
      DisplayLabel = #931#949' '#917#954#961#949#956#972#964#951#964#945
      FieldName = 'ACARD.PENDING'
      Visible = False
    end
    object qryACardLCustomer: TStringField
      DisplayLabel = #928#949#955#940#964#951#962
      FieldKind = fkLookup
      FieldName = 'LCustomer'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'NAME'
      KeyFields = 'ACARD.CUSTOMERID0'
      Size = 30
      Lookup = True
    end
    object qryACardLVType: TStringField
      DisplayLabel = #932#973#960#959#962' '#927#967#942#956#945#964#959#962
      FieldKind = fkLookup
      FieldName = 'LVType'
      LookupDataSet = qryVType
      LookupKeyFields = 'VTYPEID'
      LookupResultField = 'DESCR'
      KeyFields = 'ACARD.VTYPEID'
      Lookup = True
    end
  end
  object dtsACard: TDataSource
    DataSet = qryACard
    Left = 136
    Top = 40
  end
  object qryVType: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM VType')
    Left = 296
    Top = 48
    object qryVTypeVTYPEID: TIntegerField
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
  object dtsVType: TDataSource
    AutoEdit = False
    DataSet = qryVType
    Left = 384
    Top = 48
  end
  object qryCustomer: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM Customer')
    Left = 304
    Top = 128
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
  object dtsCustomer: TDataSource
    AutoEdit = False
    DataSet = qryCustomer
    Left = 392
    Top = 128
  end
  object qryACard_Empty: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM V_ACARD_ETC'
      'Where [ACard.ACardId]  = 1')
    Left = 56
    Top = 168
    object IntegerField1: TIntegerField
      DisplayLabel = 'ID '#922#940#961#964#945#962
      FieldName = 'ACARD.ACARDID'
    end
    object WideStringField1: TWideStringField
      DisplayLabel = #922#969#948#953#954#972#962
      FieldName = 'ACARD.ACARDCODE'
      Visible = False
      Size = 50
    end
    object IntegerField2: TIntegerField
      DisplayLabel = #922#969#948'.'#928#949#955#940#964#951
      FieldName = 'ACARD.CUSTOMERID0'
      Visible = False
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = #919#956'/'#957#943#945' '#904#957#945#961#958#951#962
      FieldName = 'ACARD.ISSUEDATE'
      Visible = False
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = #919#956'/'#957#943#945' '#923#942#958#951#962
      FieldName = 'ACARD.EXPIREDATE'
      Visible = False
    end
    object BooleanField1: TBooleanField
      DisplayLabel = #922#945#964#945#967'.'#935#923#924
      FieldName = 'ACARD.METERBOOLEAN'
      Visible = False
    end
    object BooleanField2: TBooleanField
      DisplayLabel = 'PIN'
      FieldName = 'ACARD.PINBOOLEAN'
      Visible = False
    end
    object IntegerField5: TIntegerField
      DisplayLabel = #932#973#960#959#962' '#927#967#951#956'&'
      FieldName = 'ACARD.VTYPEID'
      Visible = False
    end
    object BooleanField3: TBooleanField
      DisplayLabel = #917#957#964#959#955#942' '#916#951#956'.'
      FieldName = 'ACARD.CREATEBOOLEAN'
      Visible = False
    end
    object BooleanField4: TBooleanField
      DisplayLabel = #931#949' BlackList'
      FieldName = 'ACARD.BLACKLISTBOOLEAN'
      Visible = False
    end
    object FloatField1: TFloatField
      DisplayLabel = #919#956#949#961'.'#908#961#953#959
      FieldName = 'DAYAMOUNT'
      Visible = False
    end
    object FloatField2: TFloatField
      DisplayLabel = #924#951#957'.'#908#961#953#959
      FieldName = 'MONTHAMOUNT'
      Visible = False
    end
    object WideStringField3: TWideStringField
      DisplayLabel = #913#961'.'#922#965#954#955#959#966#959#961#943#945#962
      FieldName = 'REGNO'
      Visible = False
      Size = 50
    end
    object WideStringField4: TWideStringField
      DisplayLabel = #922#945#961#964#959#973#967#959#962
      FieldName = 'ACARDHOLDER'
      Visible = False
      Size = 30
    end
    object BooleanField5: TBooleanField
      DisplayLabel = #917#957#949#961#947#942
      FieldName = 'ISACTIVE'
      Visible = False
    end
    object IntegerField12: TIntegerField
      DisplayLabel = #917#961#947#945#950#972#956#949#957#959#962'&'
      FieldName = 'EMPLOYEESID'
      Visible = False
    end
    object BooleanField6: TBooleanField
      DisplayLabel = #925#941#945' '#922#940#961#964#945
      FieldName = 'NEWCARDBOOLEAN'
      Visible = False
    end
    object BooleanField7: TBooleanField
      DisplayLabel = #922#945#961#964#959#973#967#959#962' '#963#949' '#922#940#961#964#945
      FieldName = 'CARDHASEMPNAME'
      Visible = False
    end
    object WideStringField8: TWideStringField
      DisplayLabel = #928#949#955#940#964#951#962
      FieldName = 'CUSTOMER.Descr'
      Visible = False
      Size = 50
    end
    object WideStringField9: TWideStringField
      DisplayLabel = #928#949#955'.'#917#960#969#957'.'
      FieldName = 'CUSTOMER.Name'
      Visible = False
      Size = 50
    end
    object IntegerField22: TIntegerField
      DisplayLabel = #928#949#955#940#964#951#962'&'
      FieldName = 'Acard.CUSTOMERId'
      Visible = False
    end
    object WideStringField14: TWideStringField
      DisplayLabel = 'SAP'
      FieldName = 'CUSTOMER.SAPCODE'
      Visible = False
      Size = 10
    end
    object BooleanField10: TBooleanField
      DisplayLabel = #931#949' '#917#954#961#949#956#972#964#951#964#945
      FieldName = 'ACARD.PENDING'
      Visible = False
    end
    object qryACard_EmptyLAcardFull: TStringField
      DisplayLabel = #922#940#961#964#949#962
      FieldKind = fkLookup
      FieldName = 'LAcardFull'
      LookupDataSet = ADOQuery1
      LookupKeyFields = 'ACARD.ACARDID'
      LookupResultField = 'AcardCodeFull000'
      KeyFields = 'ACARD.ACARDID'
      Lookup = True
    end
    object StringField1: TStringField
      DisplayLabel = #928#949#955#940#964#951#962
      FieldKind = fkLookup
      FieldName = 'LCustomer'
      LookupDataSet = qryCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'NAME'
      KeyFields = 'ACARD.CUSTOMERID0'
      Size = 30
      Lookup = True
    end
    object StringField2: TStringField
      DisplayLabel = #932#973#960#959#962' '#927#967#942#956#945#964#959#962
      FieldKind = fkLookup
      FieldName = 'LVType'
      LookupDataSet = qryVType
      LookupKeyFields = 'VTYPEID'
      LookupResultField = 'DESCR'
      KeyFields = 'ACARD.VTYPEID'
      Lookup = True
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'SELECT  [Acard.AcardId], AcardCodeFull000'
      'FROM V_ACARD_ETC_FAST'
      '--WHERE  [ISACTIVE] =  0'
      '--AND       [ACARD.BLACKLISTBOOLEAN] = 0'
      '')
    Left = 320
    Top = 248
    object ADOQuery1ACARDACARDID: TIntegerField
      FieldName = 'ACARD.ACARDID'
    end
    object ADOQuery1AcardCodeFull000: TWideStringField
      FieldName = 'AcardCodeFull000'
      ReadOnly = True
      Size = 4000
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 400
    Top = 248
  end
end
