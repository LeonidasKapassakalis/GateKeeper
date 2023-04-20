inherited rptKinhs3Mer: TrptKinhs3Mer
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
  ReportTitle = #913#957#945#955#965#964#953#954#940' '#963#964#959#953#967#949#943#945' '#931#965#957#945#955#955#945#947#974#957' '#945#957#940' '#928#961#945#964#942#961#953#959
  inherited QRBPF: TQRBand
    Top = 354
    Size.Values = (
      84.666666666666670000
      1899.708333333333000000)
    ExplicitTop = 354
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
    Top = 237
    Height = 1
    Frame.Width = 3
    ForceNewPage = True
    Size.Values = (
      2.645833333333333000
      1899.708333333333000000)
    Expression = 'qryTran.Merchant.MerchantId'
    Master = Owner
    ExplicitTop = 237
    ExplicitHeight = 1
    inherited QRACardLogo: TQRImage
      Enabled = False
      Size.Values = (
        288.395833333333300000
        21.166666666666670000
        21.166666666666670000
        431.270833333333300000)
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
  inherited QRBand6: TQRBand
    Height = 199
    Frame.DrawBottom = True
    Frame.Width = 3
    Size.Values = (
      526.520833333333300000
      1899.708333333333000000)
    ExplicitHeight = 199
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
        288.395833333333300000
        21.166666666666670000
        21.166666666666670000
        431.270833333333300000)
    end
    inherited QRSysData7: TQRSysData
      Size.Values = (
        50.270833333333330000
        1780.645833333333000000
        21.166666666666670000
        119.062500000000000000)
      FontSize = 12
    end
    object QRLabel4: TQRLabel
      Left = 16
      Top = 176
      Width = 45
      Height = 20
      Size.Values = (
        52.916666666666670000
        42.333333333333330000
        465.666666666666700000
        119.062500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #922#940#961#964#945
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
    object QRLabel5: TQRLabel
      Left = 176
      Top = 176
      Width = 59
      Height = 20
      Size.Values = (
        52.916666666666670000
        465.666666666666700000
        465.666666666666700000
        156.104166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#949#955#940#964#951#962
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
    object QRLabel8: TQRLabel
      Left = 328
      Top = 160
      Width = 65
      Height = 33
      Size.Values = (
        87.312500000000000000
        867.833333333333300000
        423.333333333333300000
        171.979166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Caption = #913#961#953#952#956#972#962' '#913#960#972#948'/'#958#951#962
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
    object QRLabel6: TQRLabel
      Left = 488
      Top = 176
      Width = 52
      Height = 20
      Size.Values = (
        52.916666666666670000
        1291.166666666667000000
        465.666666666666700000
        137.583333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#961'o'#943#972#957
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
    object QRLabel9: TQRLabel
      Left = 664
      Top = 176
      Width = 30
      Height = 20
      Size.Values = (
        52.916666666666670000
        1756.833333333333000000
        465.666666666666700000
        79.375000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #913#958#943#945
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
    object QRLabel10: TQRLabel
      Left = 560
      Top = 176
      Width = 70
      Height = 20
      Size.Values = (
        52.916666666666670000
        1481.666666666667000000
        465.666666666666700000
        185.208333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#959#963#972#964#951#964#945
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
    object QRLabel17: TQRLabel
      Left = 16
      Top = 144
      Width = 22
      Height = 17
      Size.Values = (
        44.979166666666670000
        42.333333333333330000
        381.000000000000000000
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
    object QRLabel13: TQRLabel
      Left = 408
      Top = 176
      Width = 59
      Height = 20
      Size.Values = (
        52.916666666666670000
        1079.500000000000000000
        465.666666666666700000
        156.104166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #932#953#956'.'#924#959#957
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
    object QRLabel2: TQRLabel
      Left = 346
      Top = 33
      Width = 114
      Height = 17
      Size.Values = (
        44.979166666666670000
        915.458333333333300000
        87.312500000000000000
        301.625000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Merchant Avin Oil'
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRDBText15: TQRDBText
      Left = 346
      Top = 65
      Width = 93
      Height = 17
      Size.Values = (
        44.979166666666670000
        915.458333333333300000
        171.979166666666700000
        246.062500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'Merchant.Name'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText12: TQRDBText
      Left = 346
      Top = 88
      Width = 116
      Height = 17
      Size.Values = (
        44.979166666666670000
        915.458333333333300000
        232.833333333333300000
        306.916666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'Merchant.SAPCode'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
  end
  object QRGroup2: TQRGroup [3]
    Left = 38
    Top = 238
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
    Expression = 'qryTran.Station.StationId'
    FooterBand = QRBand3
    Master = Owner
    ReprintOnNewPage = False
    object QRDBText11: TQRDBText
      Left = 346
      Top = 88
      Width = 81
      Height = 17
      Size.Values = (
        44.979166666666670000
        915.458333333333300000
        232.833333333333300000
        214.312500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'Station.Street'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRLabel11: TQRLabel
      Left = 16
      Top = 8
      Width = 67
      Height = 19
      Size.Values = (
        50.270833333333330000
        42.333333333333330000
        21.166666666666670000
        177.270833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#961#945#964#942#961#953#959
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
    object QRDBText1: TQRDBText
      Left = 120
      Top = 8
      Width = 81
      Height = 17
      Size.Values = (
        44.979166666666670000
        317.500000000000000000
        21.166666666666670000
        214.312500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'Station.Street'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
  end
  object QRBand2: TQRBand [4]
    Left = 38
    Top = 291
    Width = 718
    Height = 15
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      39.687500000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object QRDBText4: TQRDBText
      Left = 336
      Top = 0
      Width = 90
      Height = 17
      Size.Values = (
        44.979166666666670000
        889.000000000000000000
        0.000000000000000000
        238.125000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'TRAN.REFSTR'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText7: TQRDBText
      Left = 632
      Top = 0
      Width = 84
      Height = 17
      Size.Values = (
        44.979166666666670000
        1672.166666666667000000
        0.000000000000000000
        222.250000000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'TRAN.Amount'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText5: TQRDBText
      Left = 536
      Top = 0
      Width = 88
      Height = 17
      Size.Values = (
        44.979166666666670000
        1418.166666666667000000
        0.000000000000000000
        232.833333333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'TRAN.Quantity'
      OnPrint = QRExpr4Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText3: TQRDBText
      Left = 464
      Top = 0
      Width = 89
      Height = 17
      Size.Values = (
        44.979166666666670000
        1227.666666666667000000
        0.000000000000000000
        235.479166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'SITEM.DESCR'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText2: TQRDBText
      Left = 16
      Top = 0
      Width = 65
      Height = 17
      Size.Values = (
        44.979166666666670000
        42.333333333333330000
        0.000000000000000000
        171.979166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'FullCardNo'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText6: TQRDBText
      Left = 176
      Top = 0
      Width = 145
      Height = 17
      Size.Values = (
        44.979166666666670000
        465.666666666666700000
        0.000000000000000000
        383.645833333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'CUSTOMER.Name'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText13: TQRDBText
      Left = 400
      Top = 0
      Width = 106
      Height = 17
      Size.Values = (
        44.979166666666670000
        1058.333333333333000000
        0.000000000000000000
        280.458333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'TRAN.UNITPRICE'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
  end
  object QRBand3: TQRBand [5]
    Left = 38
    Top = 322
    Width = 718
    Height = 32
    AlignToBottom = False
    Color = clGray
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = True
    Size.Values = (
      84.666666666666670000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRExpr1: TQRExpr
      Left = 547
      Top = 7
      Width = 169
      Height = 17
      Size.Values = (
        44.979166666666670000
        1447.270833333333000000
        18.520833333333330000
        447.145833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr2Print
      ResetAfterPrint = True
      Transparent = True
      Expression = 'SUM(qryTran.Tran.AMOUNT)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel7: TQRLabel
      Left = 13
      Top = 7
      Width = 54
      Height = 19
      Size.Values = (
        50.270833333333330000
        34.395833333333330000
        18.520833333333330000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #931#973#957#959#955#959
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 11
    end
    object QRDBText10: TQRDBText
      Left = 101
      Top = 7
      Width = 88
      Height = 17
      Size.Values = (
        44.979166666666670000
        267.229166666666700000
        18.520833333333330000
        232.833333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'Station.Street'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRExpr3: TQRExpr
      Left = 460
      Top = 9
      Width = 163
      Height = 17
      Size.Values = (
        44.979166666666670000
        1217.083333333333000000
        23.812500000000000000
        431.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      OnPrint = QRExpr4Print
      ResetAfterPrint = True
      Transparent = True
      Expression = 'SUM(qryTran.Tran.Quantity)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object QRBand4: TQRBand [6]
    Left = 38
    Top = 306
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
    BandType = rbGroupFooter
    object QRExpr2: TQRExpr
      Left = 547
      Top = 0
      Width = 169
      Height = 17
      Size.Values = (
        44.979166666666670000
        1447.270833333333000000
        0.000000000000000000
        447.145833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr2Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Tran.AMOUNT)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRDBText9: TQRDBText
      Left = 152
      Top = 0
      Width = 109
      Height = 17
      Size.Values = (
        44.979166666666670000
        402.166666666666700000
        0.000000000000000000
        288.395833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'TRAN.TRANDATE'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRLabel1: TQRLabel
      Left = 64
      Top = 0
      Width = 54
      Height = 19
      Size.Values = (
        50.270833333333330000
        169.333333333333300000
        0.000000000000000000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #931#973#957#959#955#959
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
      Left = 460
      Top = 0
      Width = 163
      Height = 17
      Size.Values = (
        44.979166666666670000
        1217.083333333333000000
        0.000000000000000000
        431.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      OnPrint = QRExpr4Print
      ResetAfterPrint = True
      Transparent = True
      Expression = 'SUM(qryTran.Tran.Quantity)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object QRGroup1: TQRGroup [7]
    Left = 38
    Top = 262
    Width = 718
    Height = 29
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      76.729166666666670000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Expression = 'qryTran.TRAN.TRANDATE'
    FooterBand = QRBand4
    Master = Owner
    ReprintOnNewPage = False
    object QRLabel3: TQRLabel
      Left = 16
      Top = 8
      Width = 86
      Height = 19
      Size.Values = (
        50.270833333333330000
        42.333333333333330000
        21.166666666666670000
        227.541666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #919#956#949#961#959#956#951#957#943#945
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
    object QRDBText8: TQRDBText
      Left = 120
      Top = 8
      Width = 107
      Height = 17
      Size.Values = (
        44.979166666666670000
        317.500000000000000000
        21.166666666666670000
        283.104166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'TRAN.TRANDATE'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 96
    Top = 64
  end
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From V_TRA_STA_ACA_CUS')
    Left = 40
    Top = 64
    object qryTranMerchantMerchantId: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object qryTranMerchantName: TWideStringField
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object qryTranMerchantStreet: TWideStringField
      FieldName = 'Merchant.Street'
      Size = 50
    end
    object qryTranMerchantZip: TWideStringField
      FieldName = 'Merchant.Zip'
      Size = 50
    end
    object qryTranMerchantCity: TWideStringField
      FieldName = 'Merchant.City'
      Size = 50
    end
    object qryTranMerchantAFM: TWideStringField
      FieldName = 'Merchant.AFM'
      Size = 15
    end
    object qryTranMerchantDOY: TWideStringField
      FieldName = 'Merchant.DOY'
      Size = 50
    end
    object qryTranMerchantIsTest: TBooleanField
      FieldName = 'Merchant.IsTest'
    end
    object qryTranMerchantAreaId: TIntegerField
      FieldName = 'Merchant.AreaId'
    end
    object qryTranMerchantSAPCode: TWideStringField
      FieldName = 'Merchant.SAPCode'
      Size = 10
    end
    object qryTranMerchantMerchantCode: TWideStringField
      FieldName = 'Merchant.MerchantCode'
      Size = 50
    end
    object qryTranMerchantSalesMenId: TIntegerField
      FieldName = 'Merchant.SalesMenId'
    end
    object qryTranMerchantDeleted: TBooleanField
      FieldName = 'Merchant.Deleted'
    end
    object qryTranMerchantInActive: TBooleanField
      FieldName = 'Merchant.InActive'
    end
    object qryTranMerchantStopSales: TBooleanField
      FieldName = 'Merchant.StopSales'
    end
    object qryTranStationStationId: TIntegerField
      FieldName = 'Station.StationId'
    end
    object qryTranStationName: TWideStringField
      FieldName = 'Station.Name'
      FixedChar = True
      Size = 100
    end
    object qryTranStationStreet: TWideStringField
      FieldName = 'Station.Street'
      Size = 50
    end
    object qryTranStationZIP: TWideStringField
      FieldName = 'Station.ZIP'
      Size = 50
    end
    object qryTranStationCity: TWideStringField
      FieldName = 'Station.City'
      Size = 50
    end
    object qryTranStationAreaId: TIntegerField
      FieldName = 'Station.AreaId'
    end
    object qryTranStationSalesMenId: TIntegerField
      FieldName = 'Station.SalesMenId'
    end
    object qryTranStationDeleted: TBooleanField
      FieldName = 'Station.Deleted'
    end
    object qryTranStationInActive: TBooleanField
      FieldName = 'Station.InActive'
    end
    object qryTranStationStopSales: TBooleanField
      FieldName = 'Station.StopSales'
    end
    object qryTranTerminalTerminalCode: TWideStringField
      FieldName = 'Terminal.TerminalCode'
    end
    object qryTranTerminalTerminalId: TIntegerField
      FieldName = 'Terminal.TerminalId'
    end
    object qryTranTerminalSerialNo: TWideStringField
      FieldName = 'Terminal.SerialNo'
      Size = 50
    end
    object qryTranCUSTOMERCUSTOMERId: TIntegerField
      FieldName = 'CUSTOMER.CUSTOMERId'
    end
    object qryTranCUSTOMERName: TWideStringField
      FieldName = 'CUSTOMER.Name'
      Size = 50
    end
    object qryTranCUSTOMERZip: TWideStringField
      FieldName = 'CUSTOMER.Zip'
      Size = 50
    end
    object qryTranCUSTOMERStreet: TWideStringField
      FieldName = 'CUSTOMER.Street'
      Size = 50
    end
    object qryTranCUSTOMERCity: TWideStringField
      FieldName = 'CUSTOMER.City'
      Size = 50
    end
    object qryTranCUSTOMERAFM: TWideStringField
      FieldName = 'CUSTOMER.AFM'
      Size = 15
    end
    object qryTranCUSTOMERDOY: TWideStringField
      FieldName = 'CUSTOMER.DOY'
      Size = 50
    end
    object qryTranCUSTOMERAreaId: TIntegerField
      FieldName = 'CUSTOMER.AreaId'
    end
    object qryTranCUSTOMERCGroupId: TIntegerField
      FieldName = 'CUSTOMER.CGroupId'
    end
    object qryTranCUSTOMERCClassId: TIntegerField
      FieldName = 'CUSTOMER.CClassId'
    end
    object qryTranCUSTOMERBranchId: TIntegerField
      FieldName = 'CUSTOMER.BranchId'
    end
    object qryTranCUSTOMERSAPCode: TWideStringField
      FieldName = 'CUSTOMER.SAPCode'
      Size = 10
    end
    object qryTranCUSTOMERIsActive: TBooleanField
      FieldName = 'CUSTOMER.IsActive'
    end
    object qryTranCUSTOMERSalesMenId: TIntegerField
      FieldName = 'CUSTOMER.SalesMenId'
    end
    object qryTranCUSTOMERIsTest: TBooleanField
      FieldName = 'CUSTOMER.IsTest'
    end
    object qryTranCUSTOMERAreaBId: TIntegerField
      FieldName = 'CUSTOMER.AreaBId'
    end
    object qryTranCUSTOMERHASDETAILEMP: TBooleanField
      FieldName = 'CUSTOMER.HASDETAILEMP'
    end
    object qryTranCUSTOMERCUSTOMEROFF: TBooleanField
      FieldName = 'CUSTOMER.CUSTOMEROFF'
    end
    object qryTranTRANTRANDATE: TDateTimeField
      FieldName = 'TRAN.TRANDATE'
    end
    object qryTranTRANACARDID: TIntegerField
      FieldName = 'TRAN.ACARDID'
    end
    object qryTranTRANMerchantId: TIntegerField
      FieldName = 'TRAN.MerchantId'
    end
    object qryTranTRANStationId: TIntegerField
      FieldName = 'TRAN.StationId'
    end
    object qryTranTRANTerminalId: TIntegerField
      FieldName = 'TRAN.TerminalId'
    end
    object qryTranTRANAmount: TFloatField
      FieldName = 'TRAN.Amount'
      currency = True
    end
    object qryTranTRANSitemId: TIntegerField
      FieldName = 'TRAN.SitemId'
    end
    object qryTranTRANQuantity: TFloatField
      FieldName = 'TRAN.Quantity'
      DisplayFormat = ',0.00;-,0.00'
    end
    object qryTranTRANIsAuto: TBooleanField
      FieldName = 'TRAN.IsAuto'
    end
    object qryTranTRANStationUPD: TBooleanField
      FieldName = 'TRAN.StationUPD'
    end
    object qryTranTRANACARDUPD: TBooleanField
      FieldName = 'TRAN.ACARDUPD'
    end
    object qryTranTRANIsVoid: TBooleanField
      FieldName = 'TRAN.IsVoid'
    end
    object qryTranTRANBatchNo: TIntegerField
      FieldName = 'TRAN.BatchNo'
    end
    object qryTranTRANCommissionUpd: TBooleanField
      FieldName = 'TRAN.CommissionUpd'
    end
    object qryTranTRANStationUPDBT: TIntegerField
      FieldName = 'TRAN.StationUPDBT'
    end
    object qryTranTRANAcardUPDBT: TIntegerField
      FieldName = 'TRAN.AcardUPDBT'
    end
    object qryTranTRANCommissionUPDBT: TIntegerField
      FieldName = 'TRAN.CommissionUPDBT'
    end
    object qryTranTRANTranTime: TDateTimeField
      FieldName = 'TRAN.TranTime'
    end
    object qryTranTRANIsTyped: TBooleanField
      FieldName = 'TRAN.IsTyped'
    end
    object qryTranTRANDiscountUPD: TBooleanField
      FieldName = 'TRAN.DiscountUPD'
    end
    object qryTranTRANDiscountUPDBT: TIntegerField
      FieldName = 'TRAN.DiscountUPDBT'
    end
    object qryTranTRANDisQuantity: TFloatField
      FieldName = 'TRAN.DisQuantity'
    end
    object qryTranTRANDisAmount: TFloatField
      FieldName = 'TRAN.DisAmount'
    end
    object qryTranTRANPelaDailyUPD: TBooleanField
      FieldName = 'TRAN.PelaDailyUPD'
    end
    object qryTranTRANPelaDailyUPDBT: TIntegerField
      FieldName = 'TRAN.PelaDailyUPDBT'
    end
    object qryTranACARDACARDID: TIntegerField
      FieldName = 'ACARD.ACARDID'
    end
    object qryTranACARDACARDCODE: TWideStringField
      FieldName = 'ACARD.ACARDCODE'
      Size = 50
    end
    object qryTranACARDCustimerId: TIntegerField
      FieldName = 'ACARD.CustimerId'
    end
    object qryTranACARDVTypeId: TIntegerField
      FieldName = 'ACARD.VTypeId'
    end
    object qryTranACARDREGNO: TWideStringField
      FieldName = 'ACARD.REGNO'
      Size = 50
    end
    object qryTranACARDACARDHOLDER: TWideStringField
      FieldName = 'ACARD.ACARDHOLDER'
      Size = 30
    end
    object qryTranACARDIsActive: TBooleanField
      FieldName = 'ACARD.IsActive'
    end
    object qryTranACARDEMPLOYEESID: TIntegerField
      FieldName = 'ACARD.EMPLOYEESID'
    end
    object qryTranACARDCostCenterId: TIntegerField
      FieldName = 'ACARD.CostCenterId'
    end
    object qryTranVTYPEVTYPEID: TIntegerField
      FieldName = 'VTYPE.VTYPEID'
    end
    object qryTranVTYPEDescr: TWideStringField
      FieldName = 'VTYPE.Descr'
      Size = 50
    end
    object qryTranREGNOSEQREGNOSEQID: TIntegerField
      FieldName = 'REGNOSEQ.REGNOSEQID'
    end
    object qryTranREGNOSEQREGNO: TWideStringField
      FieldName = 'REGNOSEQ.REGNO'
      Size = 50
    end
    object qryTranTRANTRANID: TIntegerField
      FieldName = 'TRAN.TRANID'
    end
    object qryTranTRANKMBEFORE: TIntegerField
      FieldName = 'TRAN.KMBEFORE'
    end
    object qryTranTRANKMAFTER: TIntegerField
      FieldName = 'TRAN.KMAFTER'
    end
    object qryTranTRANREFSTR: TWideStringField
      FieldName = 'TRAN.REFSTR'
      Size = 50
    end
    object qryTranTRANUNITPRICE: TFloatField
      FieldName = 'TRAN.UNITPRICE'
      DisplayFormat = '0.000'
    end
    object qryTranSITEMCODEINTERMINAL: TIntegerField
      FieldName = 'SITEM.CODEINTERMINAL'
    end
    object qryTranSITEMDESCR: TWideStringField
      FieldName = 'SITEM.DESCR'
      Size = 50
    end
    object qryTranSITEMIGROUPID: TIntegerField
      FieldName = 'SITEM.IGROUPID'
    end
    object qryTranIGROUPNAME: TWideStringField
      FieldName = 'IGROUP.NAME'
      Size = 50
    end
    object qryTranFullCardNo: TStringField
      FieldKind = fkCalculated
      FieldName = 'FullCardNo'
      Calculated = True
    end
  end
  object qrySItem: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SITEM')
    Left = 168
    Top = 80
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
end
