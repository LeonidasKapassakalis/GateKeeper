inherited rptKinhs8: TrptKinhs8
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
  ReportTitle = #931#973#957#959#955#945' '#945#957#940' '#928#961#959#970#972#957' & '#922#940#961#964#945
  inherited QRBPF: TQRBand
    Top = 298
    Enabled = False
    Size.Values = (
      84.666666666666670000
      1899.708333333333000000)
    ExplicitTop = 298
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
    Top = 217
    Height = 1
    Frame.Width = 3
    ForceNewPage = True
    Size.Values = (
      2.645833333333333000
      1899.708333333333000000)
    Expression = 'qryTran.CUSTOMER.CUSTOMERId'
    FooterBand = QRFBCust
    Master = Owner
    ExplicitTop = 217
    ExplicitHeight = 1
    inherited QRACardLogo: TQRImage
      Left = 16
      Enabled = False
      Size.Values = (
        288.395833333333000000
        42.333333333333300000
        21.166666666666700000
        431.270833333333000000)
      ExplicitLeft = 16
    end
    inherited QRSysData1: TQRSysData
      Enabled = False
      Size.Values = (
        50.270833333333330000
        836.083333333333300000
        21.166666666666670000
        227.541666666666700000)
      FontSize = 12
    end
    inherited QRSysData2: TQRSysData
      Enabled = False
      Size.Values = (
        50.270833333333330000
        1780.645833333333000000
        21.166666666666670000
        119.062500000000000000)
      FontSize = 12
    end
  end
  object QRGroup2: TQRGroup [2]
    Left = 38
    Top = 218
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
    Expression = 'qryTran.Tran.SitemId'
    FooterBand = QRGFCard
    Master = Owner
    ReprintOnNewPage = False
    object QRDBText5: TQRDBText
      Left = 72
      Top = 0
      Width = 85
      Height = 17
      Size.Values = (
        44.979166666666670000
        190.500000000000000000
        0.000000000000000000
        224.895833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'SITEMDESCR'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRLabel9: TQRLabel
      Left = 8
      Top = 0
      Width = 45
      Height = 20
      Size.Values = (
        52.916666666666670000
        21.166666666666670000
        0.000000000000000000
        119.062500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#961#959#970#972#957
      Color = clWhite
      Font.Charset = GREEK_CHARSET
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
  object QRBand1: TQRBand [3]
    Left = 38
    Top = 234
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
      Left = 448
      Top = 0
      Width = 68
      Height = 17
      Size.Values = (
        44.979166666666670000
        1185.333333333333000000
        0.000000000000000000
        179.916666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'CountKinhs'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText3: TQRDBText
      Left = 632
      Top = 0
      Width = 73
      Height = 17
      Size.Values = (
        44.979166666666670000
        1672.166666666667000000
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
    object QRDBText4: TQRDBText
      Left = 536
      Top = 0
      Width = 77
      Height = 17
      Size.Values = (
        44.979166666666670000
        1418.166666666667000000
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
    object QRDBText8: TQRDBText
      Left = 8
      Top = 0
      Width = 65
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        0.000000000000000000
        171.979166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'FullCardNo'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText1: TQRDBText
      Left = 344
      Top = 0
      Width = 48
      Height = 17
      Size.Values = (
        44.979166666666670000
        910.166666666666700000
        0.000000000000000000
        127.000000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'REGNO'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
  end
  object QRGFCard: TQRBand [4]
    Left = 38
    Top = 250
    Width = 718
    Height = 24
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      63.500000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRExpr1: TQRExpr
      Left = 632
      Top = 8
      Width = 73
      Height = 19
      Size.Values = (
        50.270833333333300000
        1672.166666666670000000
        21.166666666666700000
        193.145833333333000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      OnPrint = QRExpr1Print
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.SumAmount)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 11
    end
    object QRLabel1: TQRLabel
      Left = 240
      Top = 8
      Width = 128
      Height = 19
      Size.Values = (
        50.270833333333330000
        635.000000000000000000
        21.166666666666670000
        338.666666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #931#965#957#959#955#953#954#942' '#913#958#943#945' '#947#953#945' '
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 11
    end
    object QRDBText7: TQRDBText
      Left = 384
      Top = 8
      Width = 101
      Height = 19
      Size.Values = (
        50.270833333333330000
        1016.000000000000000000
        21.166666666666670000
        267.229166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'SITEMDESCR'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 11
    end
    object QRExpr2: TQRExpr
      Left = 540
      Top = 8
      Width = 73
      Height = 19
      Size.Values = (
        50.270833333333300000
        1428.750000000000000000
        21.166666666666700000
        193.145833333333000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      OnPrint = QRExpr2Print
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.SumQuantity)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 11
    end
  end
  object QRFBCust: TQRBand [5]
    Left = 38
    Top = 274
    Width = 718
    Height = 24
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      63.500000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRExpr3: TQRExpr
      Left = 632
      Top = 8
      Width = 73
      Height = 19
      Size.Values = (
        50.270833333333300000
        1672.166666666670000000
        21.166666666666700000
        193.145833333333000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
      FontSize = 11
    end
    object QRLabel2: TQRLabel
      Left = 240
      Top = 8
      Width = 199
      Height = 19
      Size.Values = (
        50.270833333333330000
        635.000000000000000000
        21.166666666666670000
        526.520833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #931#965#957#959#955#953#954#942' '#913#958#943#945' '#931#965#957#945#955#955#945#947#974#957' '
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 11
    end
    object QRExpr4: TQRExpr
      Left = 541
      Top = 8
      Width = 73
      Height = 19
      Size.Values = (
        50.270833333333300000
        1431.395833333330000000
        21.166666666666700000
        193.145833333333000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      OnPrint = QRExpr2Print
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.SumQuantity)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 11
    end
  end
  inherited QRBand6: TQRBand
    Height = 179
    Frame.DrawBottom = True
    Frame.Width = 3
    Size.Values = (
      473.604166666666700000
      1899.708333333333000000)
    ExplicitHeight = 179
    inherited QRSysData6: TQRSysData
      Left = 312
      Width = 94
      Height = 20
      Size.Values = (
        52.916666666666670000
        825.500000000000000000
        21.166666666666670000
        248.708333333333300000)
      Font.Style = [fsBold, fsUnderline]
      FontSize = 12
      ExplicitLeft = 312
      ExplicitWidth = 94
      ExplicitHeight = 20
    end
    inherited QRACardLogo1: TQRImage
      Size.Values = (
        288.395833333333000000
        21.166666666666700000
        21.166666666666700000
        431.270833333333000000)
    end
    inherited QRSysData7: TQRSysData
      Enabled = False
      Size.Values = (
        50.270833333333330000
        1780.645833333333000000
        21.166666666666670000
        119.062500000000000000)
      FontSize = 12
    end
    object QRLabel3: TQRLabel
      Left = 400
      Top = 64
      Width = 64
      Height = 20
      Size.Values = (
        52.916666666666670000
        1058.333333333333000000
        169.333333333333300000
        169.333333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #917#964#945#953#961#949#943#945
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 12
    end
    object QRDBText10: TQRDBText
      Left = 488
      Top = 64
      Width = 217
      Height = 20
      Size.Values = (
        52.916666666666700000
        1291.166666666670000000
        169.333333333333000000
        574.145833333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      DataSet = qryTran
      DataField = 'CustomerName'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 12
    end
    object QRLabel5: TQRLabel
      Left = 536
      Top = 160
      Width = 87
      Height = 20
      Size.Values = (
        52.916666666666670000
        1418.166666666667000000
        423.333333333333300000
        230.187500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#959#963#972#964#951#964#945'(LT)'
      Color = clWhite
      Font.Charset = GREEK_CHARSET
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
    object QRLabel6: TQRLabel
      Left = 648
      Top = 160
      Width = 28
      Height = 20
      Size.Values = (
        52.916666666666670000
        1714.500000000000000000
        423.333333333333300000
        74.083333333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #913#958#943#945
      Color = clWhite
      Font.Charset = GREEK_CHARSET
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
      Left = 440
      Top = 144
      Width = 89
      Height = 36
      Size.Values = (
        95.250000000000000000
        1164.166666666670000000
        381.000000000000000000
        235.479166666667000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Caption = '   '#928#955#942#952#959#962' '#931#965#957#945#955#955#945#947#974#957
      Color = clWhite
      Font.Charset = GREEK_CHARSET
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
    object QRLabel8: TQRLabel
      Left = 344
      Top = 160
      Width = 58
      Height = 20
      Size.Values = (
        52.916666666666670000
        910.166666666666700000
        423.333333333333300000
        153.458333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #913#961'.'#922#965#954#955'.'
      Color = clWhite
      Font.Charset = GREEK_CHARSET
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
    object QRLabel7: TQRLabel
      Left = 8
      Top = 160
      Width = 40
      Height = 20
      Size.Values = (
        52.916666666666670000
        21.166666666666670000
        423.333333333333300000
        105.833333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #922#940#961#964#945
      Color = clWhite
      Font.Charset = GREEK_CHARSET
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
    object QRLabel17: TQRLabel
      Left = 24
      Top = 136
      Width = 22
      Height = 17
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        359.833333333333300000
        58.208333333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'ZZZ'
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      OnPrint = QRLabel17Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 112
    Top = 64
  end
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     [CUSTOMER.CUSTOMERId], [Tran.SitemId] , [ACard.ACardC' +
        'ode], COUNT(*) AS CountKinhs, SUM([TRAN.AMOUNT]) AS SumAmount, '
      '                      SUM([TRAN.QUANTITY]) AS SumQuantity'
      'FROM V_TRA_STA_ACA_CUS   '
      '')
    Left = 56
    Top = 64
    object qryTranSumAmount: TFloatField
      FieldName = 'SumAmount'
      currency = True
    end
    object qryTranSumQuantity: TFloatField
      FieldName = 'SumQuantity'
      DisplayFormat = '###,###,##0.00'
      Precision = 2
    end
    object qryTranFullCardNo: TStringField
      FieldKind = fkCalculated
      FieldName = 'FullCardNo'
      Calculated = True
    end
    object qryTranCountKinhs: TIntegerField
      FieldName = 'CountKinhs'
    end
    object qryTranSITEMDESCR: TStringField
      FieldKind = fkLookup
      FieldName = 'SITEMDESCR'
      LookupDataSet = qrySItem
      LookupKeyFields = 'SITEMID'
      LookupResultField = 'DESCR'
      KeyFields = 'Tran.SitemId'
      Lookup = True
    end
    object qryTranCustomerName: TStringField
      FieldKind = fkLookup
      FieldName = 'CustomerName'
      LookupDataSet = QCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'NAME'
      KeyFields = 'CUSTOMER.CUSTOMERId'
      LookupCache = True
      Lookup = True
    end
    object qryTranREGNO: TStringField
      FieldKind = fkLookup
      FieldName = 'REGNO'
      LookupDataSet = ADOQuery1
      LookupKeyFields = 'REGNOSEQID'
      LookupResultField = 'REGNO'
      KeyFields = 'ACard.ACardCode'
      LookupCache = True
      Size = 10
      Lookup = True
    end
    object qryTranCustomerAddress: TStringField
      FieldKind = fkLookup
      FieldName = 'CustomerAddress'
      LookupDataSet = QCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'STREET'
      KeyFields = 'CUSTOMER.CUSTOMERId'
      Lookup = True
    end
    object qryTranCustomerZip: TStringField
      FieldKind = fkLookup
      FieldName = 'CustomerZip'
      LookupDataSet = QCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'ZIP'
      KeyFields = 'CUSTOMER.CUSTOMERId'
      Lookup = True
    end
    object qryTranCustomerCity: TStringField
      FieldKind = fkLookup
      FieldName = 'CustomerCity'
      LookupDataSet = QCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'CITY'
      KeyFields = 'CUSTOMER.CUSTOMERId'
      Lookup = True
    end
    object qryTranCUSTOMERCUSTOMERId: TIntegerField
      FieldName = 'CUSTOMER.CUSTOMERId'
    end
    object qryTranTranSitemId: TIntegerField
      FieldName = 'Tran.SitemId'
    end
    object qryTranACardACardCode: TWideStringField
      FieldName = 'ACard.ACardCode'
      Size = 50
    end
  end
  object qrySItem: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM SITEM')
    Left = 336
    Top = 96
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
  object QCustomer: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM CUSTOMER'
      '')
    Left = 240
    Top = 88
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
  end
  object ADOQuery1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM REGNOSEQ')
    Left = 280
    Top = 8
    object ADOQuery1REGNOSEQID: TAutoIncField
      FieldName = 'REGNOSEQID'
      ReadOnly = True
    end
    object ADOQuery1REGNO: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
  end
end
