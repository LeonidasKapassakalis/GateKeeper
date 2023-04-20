inherited frmKinhsKK88a: TfrmKinhsKK88a
  Left = 346
  Top = 231
  Caption = #931#973#957#959#955#945' '#945#957#945' '#922'.'#922'./'#922#945#964' '#927#967#942#956#945#964#959#962'/'#928#961#959#970#972#957' Excel'
  ExplicitWidth = 696
  ExplicitHeight = 480
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlBottom: TPanel
    inherited PageControl1: TPageControl
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 678
        ExplicitHeight = 357
        inherited FormGrid: TDBGrid
          DataSource = DataSource1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = popFilter
        end
      end
    end
  end
  inherited ActionList: TActionList
    Left = 424
    Top = 104
  end
  object qrySItem: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM SITEM')
    Left = 176
    Top = 128
    object qrySItemSITEMID: TAutoIncField
      FieldName = 'SITEMID'
      ReadOnly = True
    end
    object qrySItemDESCR: TWideStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object qrySItemIGROUPID: TIntegerField
      FieldName = 'IGROUPID'
    end
    object qrySItemICLASSID: TIntegerField
      FieldName = 'ICLASSID'
    end
    object qrySItemPOSOSTO: TFloatField
      FieldName = 'POSOSTO'
    end
    object qrySItemCODEINTERMINAL: TIntegerField
      FieldName = 'CODEINTERMINAL'
    end
    object qrySItemINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qrySItemUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qrySItemINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qrySItemUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 104
    Top = 248
  end
  object qryTran: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     [Customer.CustomerId], [Acard.Employeesid],[ACARD.VTY' +
        'PEID],[Tran.SitemId], [Acard.ACardId], [Acard.AcardCodeFull], [A' +
        'CARD.REGNO] , COUNT(*) AS CountKinhs, SUM([Tran.AMOUNT]) AS SumA' +
        'mount, '
      '                      SUM([Tran.QUANTITY]) AS SumQuantity'
      'FROM [V_TRA_STA_ACA_CUS_EMP]'
      
        '--Group By  [Customer.CustomerId], [Acard.Employeesid],[ACARD.VT' +
        'YPEID],[Tran.SitemId], [Acard.ACardId], [Acard.AcardCodeFull], [' +
        'ACARD.REGNO] ')
    Left = 48
    Top = 248
    object qryTranLVType: TStringField
      DisplayLabel = #922#945#964#951#947#959#961#943#945
      FieldKind = fkLookup
      FieldName = 'LVType'
      LookupDataSet = ADOQuery3
      LookupKeyFields = 'VTYPEID'
      LookupResultField = 'DESCR'
      KeyFields = 'ACARD.VTYPEID'
      Lookup = True
    end
    object qryTranLEmp: TStringField
      FieldKind = fkLookup
      FieldName = 'LEmp'
      LookupDataSet = ADOQuery2
      LookupKeyFields = 'Id'
      LookupResultField = 'SurName'
      KeyFields = 'Acard.Employeesid'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qryTranSITEMDESCR: TStringField
      DisplayLabel = #917#943#948#959#962
      FieldKind = fkLookup
      FieldName = 'SITEMDESCR'
      LookupDataSet = qrySItem
      LookupKeyFields = 'SITEMID'
      LookupResultField = 'DESCR'
      KeyFields = 'Tran.SitemId'
      Lookup = True
    end
    object qryTranCountKinhs: TIntegerField
      DisplayLabel = #928#955'.'#922#953#957#942#963#949#969#957
      FieldName = 'CountKinhs'
      ReadOnly = True
    end
    object qryTranSumAmount: TFloatField
      DisplayLabel = #931#965#957'.'#913#958#943#945#962
      FieldName = 'SumAmount'
      ReadOnly = True
      currency = True
    end
    object qryTranSumQuantity: TFloatField
      DisplayLabel = #931#965#957'.'#928#959#963#972#964#951#964#945#962
      FieldName = 'SumQuantity'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object qryTranLCL: TFloatField
      DisplayLabel = 'Ltr/100 Km'
      FieldKind = fkCalculated
      FieldName = 'LCL'
      DisplayFormat = '##0.00'
      Precision = 2
      Calculated = True
    end
    object qryTranLCE: TFloatField
      DisplayLabel = 'Eur/100 Km'
      FieldKind = fkCalculated
      FieldName = 'LCE'
      DisplayFormat = '##0.00'
      Precision = 2
      Calculated = True
    end
    object qryTranLKM: TIntegerField
      DisplayLabel = 'Km.'
      FieldKind = fkCalculated
      FieldName = 'LKM'
      Calculated = True
    end
    object qryTranLCnt: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'LCnt'
      Visible = False
      Calculated = True
    end
    object qryTranLSi: TIntegerField
      FieldKind = fkLookup
      FieldName = 'LSi'
      LookupDataSet = ADOQuery4
      LookupKeyFields = 'SITEMID'
      LookupResultField = 'IGROUPID'
      KeyFields = 'Tran.SitemId'
      Visible = False
      Lookup = True
    end
    object qryTranCustomerName: TStringField
      FieldKind = fkLookup
      FieldName = 'CustomerName'
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'NAME'
      KeyFields = 'Customer.CustomerId'
      LookupCache = True
      Visible = False
      Size = 40
      Lookup = True
    end
    object qryTranACARDVTYPEID: TIntegerField
      FieldName = 'ACARD.VTYPEID'
      Visible = False
    end
    object qryTranCustomerCustomerId: TIntegerField
      FieldName = 'Customer.CustomerId'
    end
    object qryTranAcardEmployeesid: TIntegerField
      FieldName = 'Acard.Employeesid'
    end
    object qryTranTranSitemId: TIntegerField
      FieldName = 'Tran.SitemId'
    end
    object qryTranAcardACardId: TIntegerField
      FieldName = 'Acard.ACardId'
    end
    object qryTranAcardAcardCodeFull: TWideStringField
      FieldName = 'Acard.AcardCodeFull'
      ReadOnly = True
      Size = 19
    end
    object qryTranACARDREGNO: TWideStringField
      FieldName = 'ACARD.REGNO'
      Size = 50
    end
    object qryTranLCalculated: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'LCalculated'
      Calculated = True
    end
  end
  object ADOQuery4: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM SITEM'
      '')
    Left = 552
    Top = 128
    object ADOQuery4SITEMID: TAutoIncField
      FieldName = 'SITEMID'
      ReadOnly = True
    end
    object ADOQuery4DESCR: TWideStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object ADOQuery4IGROUPID: TIntegerField
      FieldName = 'IGROUPID'
    end
    object ADOQuery4ICLASSID: TIntegerField
      FieldName = 'ICLASSID'
    end
    object ADOQuery4POSOSTO: TFloatField
      FieldName = 'POSOSTO'
    end
    object ADOQuery4CODEINTERMINAL: TIntegerField
      FieldName = 'CODEINTERMINAL'
    end
    object ADOQuery4INSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object ADOQuery4UPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object ADOQuery4INSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object ADOQuery4UPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object ADOQuery4MINPRICE: TFloatField
      FieldName = 'MINPRICE'
    end
    object ADOQuery4MAXPRICE: TFloatField
      FieldName = 'MAXPRICE'
    end
    object ADOQuery4CHECKPRICE: TBooleanField
      FieldName = 'CHECKPRICE'
    end
  end
  object QCustomer: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM CUSTOMER'
      '')
    Left = 248
    Top = 128
    object QCustomerCUSTOMERID: TAutoIncField
      FieldName = 'CUSTOMERID'
      ReadOnly = True
    end
    object QCustomerNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object QCustomerSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object QCustomerZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object QCustomerCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object QCustomerAFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object QCustomerDOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object QCustomerSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object QCustomerAREAID: TIntegerField
      FieldName = 'AREAID'
    end
    object QCustomerLOCATIONID: TIntegerField
      FieldName = 'LOCATIONID'
    end
    object QCustomerCGROUPID: TIntegerField
      FieldName = 'CGROUPID'
    end
    object QCustomerCCLASSID: TIntegerField
      FieldName = 'CCLASSID'
    end
    object QCustomerCREDITAMOUNT: TFloatField
      FieldName = 'CREDITAMOUNT'
    end
    object QCustomerINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object QCustomerUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object QCustomerINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object QCustomerUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object QCustomerPROFESSION: TWideStringField
      FieldName = 'PROFESSION'
      Size = 50
    end
    object QCustomerBRANCHID: TIntegerField
      FieldName = 'BRANCHID'
    end
    object QCustomerSAPCODE: TWideStringField
      FieldName = 'SAPCODE'
      Size = 10
    end
    object QCustomerISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object QCustomerSALESMENID: TIntegerField
      FieldName = 'SALESMENID'
    end
    object QCustomerDIAKID: TIntegerField
      FieldName = 'DIAKID'
    end
    object QCustomerISTEST: TBooleanField
      FieldName = 'ISTEST'
    end
    object QCustomerISCONS: TBooleanField
      FieldName = 'ISCONS'
    end
    object QCustomerAREABID: TIntegerField
      FieldName = 'AREABID'
    end
    object QCustomerDATEPHEND: TDateTimeField
      FieldName = 'DATEPHEND'
    end
    object QCustomerDATELOEND: TDateTimeField
      FieldName = 'DATELOEND'
    end
    object QCustomerHASDETAILEMP: TBooleanField
      FieldName = 'HASDETAILEMP'
    end
    object QCustomerALLCARDSTOBL: TBooleanField
      FieldName = 'ALLCARDSTOBL'
    end
    object QCustomerALLCARDSTOBLDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLDATE'
    end
    object QCustomerALLCARDSTOBLSYSDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLSYSDATE'
    end
    object QCustomerALLCARDSTOBLUSR: TIntegerField
      FieldName = 'ALLCARDSTOBLUSR'
    end
    object QCustomerCUSTOMEROFF: TBooleanField
      FieldName = 'CUSTOMEROFF'
    end
    object QCustomerCUSTOMEROFFDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFDATE'
    end
    object QCustomerCUSTOMEROFFSYSDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFSYSDATE'
    end
    object QCustomerCUSTOMEROFFUSR: TIntegerField
      FieldName = 'CUSTOMEROFFUSR'
    end
    object QCustomerCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object QCustomerDATEEND: TDateTimeField
      FieldName = 'DATEEND'
    end
    object QCustomerCompanyTypeId: TIntegerField
      FieldName = 'CompanyTypeId'
    end
    object QCustomerGarantieId: TIntegerField
      FieldName = 'GarantieId'
    end
    object QCustomerGarantieAmount: TFloatField
      FieldName = 'GarantieAmount'
    end
    object QCustomerComments: TMemoField
      FieldName = 'Comments'
      BlobType = ftMemo
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM REGNOSEQ')
    Left = 224
    Top = 312
    object ADOQuery1REGNOSEQID: TAutoIncField
      FieldName = 'REGNOSEQID'
      ReadOnly = True
    end
    object ADOQuery1REGNO: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
  end
  object ADOQuery3: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM VType')
    Left = 568
    Top = 192
    object ADOQuery3VTYPEID: TAutoIncField
      FieldName = 'VTYPEID'
      ReadOnly = True
    end
    object ADOQuery3DESCR: TWideStringField
      FieldName = 'DESCR'
      Size = 50
    end
    object ADOQuery3INSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object ADOQuery3UPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object ADOQuery3INSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object ADOQuery3UPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object ADOQuery2: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM EMPLOYEES')
    Left = 216
    Top = 224
    object ADOQuery2Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object ADOQuery2CustomerId: TIntegerField
      FieldName = 'CustomerId'
    end
    object ADOQuery2MhtrId: TIntegerField
      FieldName = 'MhtrId'
    end
    object ADOQuery2Name: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object ADOQuery2SurName: TWideStringField
      FieldName = 'SurName'
      Size = 50
    end
    object ADOQuery2Address: TWideStringField
      FieldName = 'Address'
      Size = 50
    end
    object ADOQuery2TK: TWideStringField
      FieldName = 'TK'
      Size = 5
    end
    object ADOQuery2Town: TWideStringField
      FieldName = 'Town'
      Size = 50
    end
    object ADOQuery2AFM: TWideStringField
      FieldName = 'AFM'
      Size = 9
    end
    object ADOQuery2DOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object ADOQuery2YpokId: TIntegerField
      FieldName = 'YpokId'
    end
    object ADOQuery2SendPrint: TBooleanField
      FieldName = 'SendPrint'
    end
    object ADOQuery2SendMail: TBooleanField
      FieldName = 'SendMail'
    end
    object ADOQuery2MailAddr: TWideStringField
      FieldName = 'MailAddr'
      Size = 50
    end
    object ADOQuery2LNameSur: TStringField
      FieldKind = fkCalculated
      FieldName = 'LNameSur'
      Size = 100
      Calculated = True
    end
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    Left = 72
    Top = 320
    Data = {
      C30100009619E0BD010000001800000013000000000003000000C301064C5654
      7970650100490002000100055749445448020002001400044C456D7001004900
      020001000557494454480200020028000A534954454D44455343520100490002
      0001000557494454480200020014000A436F756E744B696E6873040001000200
      00000953756D416D6F756E7408000400020000000B53756D5175616E74697479
      0800040002000000034C434C0800040002000000034C43450800040002000000
      034C4B4D0400010002000000044C436E740400010002000000034C5369040001
      00020000000C437573746F6D65724E616D650100490002000100055749445448
      0200020028000D41434152442E56545950454944040001000000000013437573
      746F6D65722E437573746F6D6572496404000100000000001141636172642E45
      6D706C6F79656573696404000100000000000C5472616E2E536974656D496404
      000100000000000D41636172642E414361726449640400010000000000134163
      6172642E4163617264436F646546756C6C01004A000200010005574944544802
      00020026000B41434152442E5245474E4F01004A000000010005574944544802
      00020064000000}
    object ClientDataSet1LVType: TStringField
      FieldName = 'LVType'
    end
    object ClientDataSet1LEmp: TStringField
      FieldName = 'LEmp'
      Size = 40
    end
    object ClientDataSet1SITEMDESCR: TStringField
      FieldName = 'SITEMDESCR'
    end
    object ClientDataSet1CountKinhs: TIntegerField
      FieldName = 'CountKinhs'
    end
    object ClientDataSet1SumAmount: TFloatField
      FieldName = 'SumAmount'
    end
    object ClientDataSet1SumQuantity: TFloatField
      FieldName = 'SumQuantity'
    end
    object ClientDataSet1LCL: TFloatField
      FieldName = 'LCL'
    end
    object ClientDataSet1LCE: TFloatField
      FieldName = 'LCE'
    end
    object ClientDataSet1LKM: TIntegerField
      FieldName = 'LKM'
    end
    object ClientDataSet1LCnt: TIntegerField
      FieldName = 'LCnt'
    end
    object ClientDataSet1LSi: TIntegerField
      FieldName = 'LSi'
    end
    object ClientDataSet1CustomerName: TStringField
      FieldName = 'CustomerName'
      Size = 40
    end
    object ClientDataSet1ACARDVTYPEID: TIntegerField
      FieldName = 'ACARD.VTYPEID'
    end
    object ClientDataSet1CustomerCustomerId: TIntegerField
      FieldName = 'Customer.CustomerId'
    end
    object ClientDataSet1AcardEmployeesid: TIntegerField
      FieldName = 'Acard.Employeesid'
    end
    object ClientDataSet1TranSitemId: TIntegerField
      FieldName = 'Tran.SitemId'
    end
    object ClientDataSet1AcardACardId: TIntegerField
      FieldName = 'Acard.ACardId'
    end
    object ClientDataSet1AcardAcardCodeFull: TWideStringField
      FieldName = 'Acard.AcardCodeFull'
      Size = 19
    end
    object ClientDataSet1ACARDREGNO: TWideStringField
      FieldName = 'ACARD.REGNO'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 144
    Top = 320
  end
end
