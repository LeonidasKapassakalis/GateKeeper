inherited rptkinhs16: Trptkinhs16
  DataSet = qryTran
  Functions.DATA = (
    '0'
    '0'
    #39#39)
  Page.Values = (
    100.000000000000000000
    2970.000000000000000000
    100.000000000000000000
    2100.000000000000000000
    100.000000000000000000
    100.000000000000000000
    0.000000000000000000)
  inherited QRBPF: TQRBand
    Top = 315
    Size.Values = (
      84.666666666666670000
      1899.708333333333000000)
    ExplicitTop = 315
    inherited QRSysData3: TQRSysData
      Size.Values = (
        50.270833333333330000
        889.000000000000000000
        21.166666666666670000
        121.708333333333300000)
      FontSize = 10
    end
  end
  inherited QRGrHead: TQRGroup
    Top = 233
    Height = 42
    BeforePrint = QRGrHeadBeforePrint
    Size.Values = (
      111.125000000000000000
      1899.708333333333000000)
    Expression = 'qryTran.CustomerId'
    FooterBand = QRBand1
    Master = Owner
    ExplicitTop = 233
    ExplicitHeight = 42
    inherited QRACardLogo: TQRImage
      Height = 1
      Enabled = False
      Size.Values = (
        2.645833333333330000
        21.166666666666700000
        21.166666666666700000
        431.270833333333000000)
      ExplicitHeight = 1
    end
    inherited QRSysData1: TQRSysData
      Enabled = False
      Size.Values = (
        50.270833333333330000
        836.083333333333300000
        21.166666666666670000
        227.541666666666700000)
      AutoSize = False
      FontSize = 12
    end
    inherited QRSysData2: TQRSysData
      Enabled = False
      Size.Values = (
        50.270833333333330000
        1780.645833333333000000
        21.166666666666670000
        119.062500000000000000)
      AutoSize = False
      FontSize = 12
    end
    object QRDBText1: TQRDBText
      Left = 88
      Top = 8
      Width = 64
      Height = 17
      Size.Values = (
        44.979166666666670000
        232.833333333333300000
        21.166666666666670000
        169.333333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LCustomer'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRLabel1: TQRLabel
      Left = 8
      Top = 8
      Width = 65
      Height = 17
      Size.Values = (
        44.979166666666700000
        21.166666666666700000
        21.166666666666700000
        171.979166666667000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Caption = #928#949#955#940#964#951#962
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  inherited QRBand6: TQRBand
    Height = 195
    Frame.DrawBottom = True
    Frame.Width = 3
    Size.Values = (
      515.937500000000000000
      1899.708333333333000000)
    ExplicitHeight = 195
    inherited QRSysData6: TQRSysData
      Size.Values = (
        50.270833333333330000
        836.083333333333300000
        21.166666666666670000
        227.541666666666700000)
      FontSize = 12
    end
    inherited QRACardLogo1: TQRImage
      Size.Values = (
        288.395833333333000000
        21.166666666666700000
        21.166666666666700000
        431.270833333333000000)
    end
    inherited QRSysData7: TQRSysData
      Size.Values = (
        50.270833333333330000
        1780.645833333333000000
        21.166666666666670000
        119.062500000000000000)
      FontSize = 12
    end
    object QRLabel10: TQRLabel
      Left = 24
      Top = 152
      Width = 22
      Height = 17
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        402.166666666666700000
        58.208333333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'ZZZ'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      OnPrint = QRLabel10Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 440
      Top = 160
      Width = 97
      Height = 33
      Size.Values = (
        87.312500000000000000
        1164.166666666670000000
        423.333333333333000000
        256.645833333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Caption = '      '#931#973#957#959#955#959' '#928#959#963#972#964#951#964#945#962'(LT)'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel4: TQRLabel
      Left = 600
      Top = 160
      Width = 57
      Height = 33
      Size.Values = (
        87.312500000000000000
        1587.500000000000000000
        423.333333333333000000
        150.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Caption = #931#973#957#959#955#959'    '#913#958#943#945#962
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object QRBand3: TQRBand [3]
    Left = 38
    Top = 275
    Width = 718
    Height = 16
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      42.333333333333330000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object QRDBText2: TQRDBText
      Left = 216
      Top = 0
      Width = 42
      Height = 17
      Size.Values = (
        44.979166666666670000
        571.500000000000000000
        0.000000000000000000
        111.125000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LSitem'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText4: TQRDBText
      Left = 456
      Top = 0
      Width = 77
      Height = 17
      Size.Values = (
        44.979166666666670000
        1206.500000000000000000
        0.000000000000000000
        203.729166666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'SumQuantity'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText5: TQRDBText
      Left = 584
      Top = 0
      Width = 73
      Height = 17
      Size.Values = (
        44.979166666666670000
        1545.166666666667000000
        0.000000000000000000
        193.145833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'SumAmount'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
  end
  object QRBand1: TQRBand [4]
    Left = 38
    Top = 291
    Width = 718
    Height = 24
    AlignToBottom = False
    BeforePrint = QRBand1BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      63.500000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRExpr4: TQRExpr
      Left = 456
      Top = 0
      Width = 73
      Height = 17
      Frame.DrawTop = True
      Size.Values = (
        44.979166666666700000
        1206.500000000000000000
        0.000000000000000000
        193.145833333333000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      OnPrint = QRExpr4Print
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.SumQuantity)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr3: TQRExpr
      Left = 584
      Top = 0
      Width = 73
      Height = 17
      Frame.DrawTop = True
      Size.Values = (
        44.979166666666700000
        1545.166666666670000000
        0.000000000000000000
        193.145833333333000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      OnPrint = QRExpr3Print
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.SumAmount)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  inherited QRPDFFilter1: TQRPDFFilter
    CompressionOn = True
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 288
    Top = 120
  end
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'SELECT [CUSTOMER.CustomerId],[Tran.SitemId], Count(*) as CountKi' +
        'nhs,Sum([Tran.Amount]) AS SumAmount, Sum([Tran.Quantity]) AS Sum' +
        'Quantity'
      'FROM V_TRA_STA_ACA_CUS'
      '--Group By [Customer.CustomerId] ,[Tran.SitemId]'
      '')
    Left = 240
    Top = 120
    object qryTranLCustomer: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustomer'
      LookupDataSet = QCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'NAME'
      KeyFields = 'CUSTOMER.CustomerId'
      LookupCache = True
      Size = 40
      Lookup = True
    end
    object qryTranLSitem: TStringField
      FieldKind = fkLookup
      FieldName = 'LSitem'
      LookupDataSet = qrySItem
      LookupKeyFields = 'SITEMID'
      LookupResultField = 'DESCR'
      KeyFields = 'Tran.SitemId'
      Lookup = True
    end
    object qryTranCounter: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Counter'
      Calculated = True
    end
    object qryTranCUSTOMERCustomerId: TIntegerField
      FieldName = 'CUSTOMER.CustomerId'
    end
    object qryTranTranSitemId: TIntegerField
      FieldName = 'Tran.SitemId'
    end
    object qryTranCountKinhs: TIntegerField
      FieldName = 'CountKinhs'
      ReadOnly = True
    end
    object qryTranSumAmount: TFloatField
      FieldName = 'SumAmount'
      ReadOnly = True
    end
    object qryTranSumQuantity: TFloatField
      FieldName = 'SumQuantity'
      ReadOnly = True
    end
  end
  object qrySItem: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM SITEM')
    Left = 496
    Top = 104
    object qrySItemSITEMID: TAutoIncField
      FieldName = 'SITEMID'
      ReadOnly = True
    end
    object qrySItemDescr: TWideStringField
      FieldName = 'Descr'
      Size = 50
    end
    object qrySItemIGROUPID: TIntegerField
      FieldName = 'IGROUPID'
    end
    object qrySItemICLASSID: TIntegerField
      FieldName = 'ICLASSID'
    end
    object qrySItemPososto: TFloatField
      FieldName = 'Pososto'
    end
    object qrySItemCODEINTERMINAL: TIntegerField
      FieldName = 'CODEINTERMINAL'
    end
    object qrySItemMINPRICE: TFloatField
      FieldName = 'MINPRICE'
    end
    object qrySItemMAXPRICE: TFloatField
      FieldName = 'MAXPRICE'
    end
    object qrySItemCHECKPRICE: TBooleanField
      FieldName = 'CHECKPRICE'
    end
    object qrySItemInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qrySItemInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qrySItemUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qrySItemUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qrySItemDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qrySItemDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qrySItemDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qrySItemInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qrySItemInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qrySItemInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
  end
  object QCustomer: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM Customer')
    Left = 408
    Top = 104
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
end
