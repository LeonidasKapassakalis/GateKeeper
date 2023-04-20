inherited rptKinhs12: TrptKinhs12
  BeforePrint = QuickRepBeforePrint
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
  ReportTitle = #931#973#957#959#955#945' '#945#957#940' '#928#961#945#964#942#961#953#959'/'#917#964#945#953#961#949#943#945'/'#928#961#959#970#972#957
  PreviewInitialState = wsMaximized
  PrevInitialZoom = qrZoomToWidth
  PreviewDefaultSaveType = stPDF
  inherited QRBPF: TQRBand
    Top = 534
    Size.Values = (
      84.666666666666670000
      1899.708333333333000000)
    ExplicitTop = 534
    inherited QRSysData3: TQRSysData
      Enabled = False
      Size.Values = (
        50.270833333333330000
        889.000000000000000000
        21.166666666666670000
        121.708333333333300000)
      FontSize = 10
    end
  end
  inherited QRGrHead: TQRGroup
    Top = 249
    Height = 2
    ForceNewPage = True
    Size.Values = (
      5.291666666666667000
      1899.708333333333000000)
    Expression = 'qryTran.Station.STATIONID'
    FooterBand = QRFBStation
    Master = Owner
    ExplicitTop = 249
    ExplicitHeight = 2
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
  object qrgfDate: TQRBand [2]
    Left = 38
    Top = 285
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
    object QRExpr3: TQRExpr
      Left = 565
      Top = 0
      Width = 73
      Height = 17
      Frame.DrawTop = True
      Size.Values = (
        44.979166666666670000
        1494.895833333333000000
        0.000000000000000000
        193.145833333333300000)
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
      OnPrint = QRDBTextMoneyPrint
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.SumAmount)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr4: TQRExpr
      Left = 445
      Top = 1
      Width = 73
      Height = 17
      Frame.DrawTop = True
      Size.Values = (
        44.979166666666670000
        1177.395833333333000000
        2.645833333333333000
        193.145833333333300000)
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
      OnPrint = QRExprPosotPrint
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.SumQuantity)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRDBText6: TQRDBText
      Left = 104
      Top = -1
      Width = 179
      Height = 17
      Size.Values = (
        44.979166666666670000
        275.166666666666700000
        -2.645833333333333000
        473.604166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LCustomerName'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRLabel17: TQRLabel
      Left = 24
      Top = 0
      Width = 81
      Height = 17
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        0.000000000000000000
        214.312500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #931#973#957#959#955#945' '#947#953#945
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
  object QRBand2: TQRBand [3]
    Left = 38
    Top = 267
    Width = 718
    Height = 18
    AfterPrint = QRBand2AfterPrint
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      47.625000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object QRDBText2: TQRDBText
      Left = 80
      Top = 0
      Width = 72
      Height = 17
      Size.Values = (
        44.979166666666670000
        211.666666666666700000
        0.000000000000000000
        190.500000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LSitemDesc'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText3: TQRDBText
      Left = 325
      Top = 0
      Width = 68
      Height = 17
      Size.Values = (
        44.979166666666670000
        859.895833333333300000
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
    object QRDBText4: TQRDBText
      Left = 445
      Top = 0
      Width = 77
      Height = 17
      Size.Values = (
        44.979166666666670000
        1177.395833333333000000
        0.000000000000000000
        203.729166666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'SumQuantity'
      OnPrint = QRDBText4Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText5: TQRDBText
      Left = 565
      Top = 0
      Width = 73
      Height = 17
      Size.Values = (
        44.979166666666670000
        1494.895833333333000000
        0.000000000000000000
        193.145833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'SumAmount'
      OnPrint = QRDBTextMoneyPrint
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
  end
  object qrghDate: TQRGroup [4]
    Left = 38
    Top = 251
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
    Expression = 'qryTran.Customer.CUSTOMERID'
    FooterBand = qrgfDate
    Master = Owner
    ReprintOnNewPage = False
    object QRLabel5: TQRLabel
      Left = 8
      Top = 0
      Width = 53
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        0.000000000000000000
        140.229166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #917#964#945#953#961#949#943#945
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
    object QRDBText9: TQRDBText
      Left = 72
      Top = 0
      Width = 106
      Height = 17
      Size.Values = (
        44.979166666666670000
        190.500000000000000000
        0.000000000000000000
        280.458333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LCustomerName'
      Font.Charset = DEFAULT_CHARSET
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
  end
  object QRFBStation: TQRBand [5]
    Left = 38
    Top = 301
    Width = 718
    Height = 30
    Frame.DrawBottom = True
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      79.375000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRLabel18: TQRLabel
      Left = 264
      Top = 6
      Width = 49
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        15.875000000000000000
        129.645833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#961#959#970#972#957' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
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
    object QRLabel19: TQRLabel
      Left = 472
      Top = 7
      Width = 87
      Height = 17
      Size.Values = (
        44.979166666666670000
        1248.833333333333000000
        18.520833333333330000
        230.187500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#959#963#972#964#951#964#945'(LT)'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
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
    object QRLabel20: TQRLabel
      Left = 584
      Top = 7
      Width = 36
      Height = 17
      Size.Values = (
        44.979166666666670000
        1545.166666666667000000
        18.520833333333330000
        95.250000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = ' '#913#958#943#945' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
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
  end
  inherited QRBand6: TQRBand
    Height = 211
    Frame.DrawBottom = True
    Frame.Width = 3
    AfterPrint = QRBand6AfterPrint
    Size.Values = (
      558.270833333333300000
      1899.708333333333000000)
    ExplicitHeight = 211
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
    object QRLabel12: TQRLabel
      Left = 344
      Top = 64
      Width = 114
      Height = 17
      Size.Values = (
        44.979166666666670000
        910.166666666666700000
        169.333333333333300000
        301.625000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#961#945#964#942#961#953#959' Avin Oil'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
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
    object QRDBText1: TQRDBText
      Left = 344
      Top = 88
      Width = 83
      Height = 17
      Size.Values = (
        44.979166666666670000
        910.166666666666700000
        232.833333333333300000
        219.604166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LStationName'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText7: TQRDBText
      Left = 344
      Top = 112
      Width = 97
      Height = 17
      Size.Values = (
        44.979166666666670000
        910.166666666666700000
        296.333333333333300000
        256.645833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LStationAddress'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText8: TQRDBText
      Left = 344
      Top = 136
      Width = 66
      Height = 17
      Size.Values = (
        44.979166666666670000
        910.166666666666700000
        359.833333333333300000
        174.625000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LStationZip'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText10: TQRDBText
      Left = 416
      Top = 136
      Width = 72
      Height = 17
      Size.Values = (
        44.979166666666670000
        1100.666666666667000000
        359.833333333333300000
        190.500000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LStationCity'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 445
      Top = 172
      Width = 97
      Height = 33
      Size.Values = (
        87.312500000000000000
        1177.395833333333000000
        455.083333333333300000
        256.645833333333300000)
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
      Left = 581
      Top = 172
      Width = 57
      Height = 33
      Size.Values = (
        87.312500000000000000
        1537.229166666667000000
        455.083333333333300000
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
    object QRLabel2: TQRLabel
      Left = 317
      Top = 172
      Width = 89
      Height = 33
      Size.Values = (
        87.312500000000000000
        838.729166666666700000
        455.083333333333300000
        235.479166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Caption = '     '#928#955#942#952#959#962' '#931#965#957#945#955#955#945#947#974#957'.'
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
    object QRLabel1: TQRLabel
      Left = 80
      Top = 188
      Width = 45
      Height = 17
      Size.Values = (
        44.979166666666670000
        211.666666666666700000
        497.416666666666700000
        119.062500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#961#959#970#972#957
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
  object ChildBand1: TQRChildBand [7]
    Tag = 1
    Left = 38
    Top = 331
    Width = 718
    Height = 14
    AlignToBottom = False
    BeforePrint = ChildBand1BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      37.041666666666670000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = QRFBStation
    PrintOrder = cboAfterParent
    object QRLabel13: TQRLabel
      Tag = 1
      Left = 264
      Top = 0
      Width = 47
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        0.000000000000000000
        124.354166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #914#949#957#950#943#957#949#962
      Color = clWhite
      OnPrint = QRLabel13Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr16: TQRExpr
      Left = 472
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1248.833333333333000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos1)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr17: TQRExpr
      Left = 558
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1476.375000000000000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc1)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object ChildBand2: TQRChildBand [8]
    Tag = 2
    Left = 38
    Top = 345
    Width = 718
    Height = 18
    AlignToBottom = False
    BeforePrint = ChildBand1BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      47.625000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = ChildBand1
    PrintOrder = cboAfterParent
    object QRLabel14: TQRLabel
      Tag = 2
      Left = 264
      Top = 0
      Width = 47
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        0.000000000000000000
        124.354166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #914#949#957#950#943#957#949#962
      Color = clWhite
      OnPrint = QRLabel13Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr20: TQRExpr
      Left = 472
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1248.833333333333000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos2)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr21: TQRExpr
      Left = 558
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1476.375000000000000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc2)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object ChildBand3: TQRChildBand [9]
    Tag = 3
    Left = 38
    Top = 363
    Width = 718
    Height = 18
    AlignToBottom = False
    BeforePrint = ChildBand1BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      47.625000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = ChildBand2
    PrintOrder = cboAfterParent
    object QRLabel16: TQRLabel
      Tag = 3
      Left = 264
      Top = 0
      Width = 47
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        0.000000000000000000
        124.354166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #914#949#957#950#943#957#949#962
      Color = clWhite
      OnPrint = QRLabel13Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr22: TQRExpr
      Left = 472
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1248.833333333333000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos3)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr23: TQRExpr
      Left = 558
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1476.375000000000000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc3)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object ChildBand4: TQRChildBand [10]
    Tag = 4
    Left = 38
    Top = 381
    Width = 718
    Height = 18
    AlignToBottom = False
    BeforePrint = ChildBand1BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      47.625000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = ChildBand3
    PrintOrder = cboAfterParent
    object QRLabel22: TQRLabel
      Tag = 4
      Left = 264
      Top = 0
      Width = 47
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        0.000000000000000000
        124.354166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #914#949#957#950#943#957#949#962
      Color = clWhite
      OnPrint = QRLabel13Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr24: TQRExpr
      Left = 472
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1248.833333333333000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos4)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr25: TQRExpr
      Left = 558
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1476.375000000000000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc4)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object ChildBand5: TQRChildBand [11]
    Tag = 5
    Left = 38
    Top = 399
    Width = 718
    Height = 18
    AlignToBottom = False
    BeforePrint = ChildBand1BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      47.625000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = ChildBand4
    PrintOrder = cboAfterParent
    object QRLabel23: TQRLabel
      Tag = 5
      Left = 264
      Top = 0
      Width = 47
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        0.000000000000000000
        124.354166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #914#949#957#950#943#957#949#962
      Color = clWhite
      OnPrint = QRLabel13Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr26: TQRExpr
      Left = 472
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1248.833333333333000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos5)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr27: TQRExpr
      Left = 558
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1476.375000000000000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc5)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object ChildBand6: TQRChildBand [12]
    Tag = 6
    Left = 38
    Top = 417
    Width = 718
    Height = 18
    AlignToBottom = False
    BeforePrint = ChildBand1BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      47.625000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = ChildBand5
    PrintOrder = cboAfterParent
    object QRLabel24: TQRLabel
      Tag = 6
      Left = 264
      Top = 0
      Width = 47
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        0.000000000000000000
        124.354166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #914#949#957#950#943#957#949#962
      Color = clWhite
      OnPrint = QRLabel13Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr28: TQRExpr
      Left = 472
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1248.833333333333000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos6)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr29: TQRExpr
      Left = 558
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1476.375000000000000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc6)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object ChildBand7: TQRChildBand [13]
    Tag = 7
    Left = 38
    Top = 435
    Width = 718
    Height = 18
    AlignToBottom = False
    BeforePrint = ChildBand1BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      47.625000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = ChildBand6
    PrintOrder = cboAfterParent
    object QRLabel25: TQRLabel
      Tag = 7
      Left = 264
      Top = 0
      Width = 47
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        0.000000000000000000
        124.354166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #914#949#957#950#943#957#949#962
      Color = clWhite
      OnPrint = QRLabel13Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr30: TQRExpr
      Left = 472
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1248.833333333333000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos7)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr31: TQRExpr
      Left = 558
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1476.375000000000000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc7)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object ChildBand8: TQRChildBand [14]
    Tag = 8
    Left = 38
    Top = 453
    Width = 718
    Height = 18
    AlignToBottom = False
    BeforePrint = ChildBand1BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      47.625000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = ChildBand7
    PrintOrder = cboAfterParent
    object QRLabel26: TQRLabel
      Tag = 8
      Left = 264
      Top = 0
      Width = 47
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        0.000000000000000000
        124.354166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #914#949#957#950#943#957#949#962
      Color = clWhite
      OnPrint = QRLabel13Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr32: TQRExpr
      Left = 472
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1248.833333333333000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos8)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr33: TQRExpr
      Left = 558
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1476.375000000000000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc8)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object ChildBand9: TQRChildBand [15]
    Tag = 9
    Left = 38
    Top = 471
    Width = 718
    Height = 18
    AlignToBottom = False
    BeforePrint = ChildBand1BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      47.625000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = ChildBand8
    PrintOrder = cboAfterParent
    object QRLabel27: TQRLabel
      Tag = 9
      Left = 264
      Top = 0
      Width = 47
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        0.000000000000000000
        124.354166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #914#949#957#950#943#957#949#962
      Color = clWhite
      OnPrint = QRLabel13Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr34: TQRExpr
      Left = 472
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1248.833333333333000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos9)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr35: TQRExpr
      Left = 558
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1476.375000000000000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc9)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object ChildBand10: TQRChildBand [16]
    Tag = 10
    Left = 38
    Top = 489
    Width = 718
    Height = 18
    AlignToBottom = False
    BeforePrint = ChildBand1BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      47.625000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = ChildBand9
    PrintOrder = cboAfterParent
    object QRLabel28: TQRLabel
      Tag = 10
      Left = 264
      Top = 0
      Width = 47
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        0.000000000000000000
        124.354166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #914#949#957#950#943#957#949#962
      Color = clWhite
      OnPrint = QRLabel13Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr36: TQRExpr
      Left = 472
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1248.833333333333000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos10)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr37: TQRExpr
      Left = 558
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1476.375000000000000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc10)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object ChildBand11: TQRChildBand [17]
    Left = 38
    Top = 507
    Width = 718
    Height = 27
    AfterPrint = ChildBand11AfterPrint
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      71.437500000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    ParentBand = ChildBand10
    PrintOrder = cboAfterParent
    object QRLabel6: TQRLabel
      Left = 264
      Top = 5
      Width = 92
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        13.229166666666670000
        243.416666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #915#949#957#953#954#972' '#931#973#957#959#955#959
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
    object QRExpr1: TQRExpr
      Left = 486
      Top = 6
      Width = 73
      Height = 17
      Frame.DrawTop = True
      Size.Values = (
        44.979166666666670000
        1285.875000000000000000
        15.875000000000000000
        193.145833333333300000)
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
      OnPrint = QRExprPosotPrint
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.SumQuantity)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr2: TQRExpr
      Left = 565
      Top = 4
      Width = 73
      Height = 17
      Frame.DrawTop = True
      Size.Values = (
        44.979166666666670000
        1494.895833333333000000
        10.583333333333330000
        193.145833333333300000)
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
      OnPrint = QRDBTextMoneyPrint
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.SumAmount)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  inherited QRTextFilter1: TQRTextFilter
    Left = 696
    Top = 68
  end
  inherited QRCSVFilter1: TQRCSVFilter
    Left = 688
  end
  inherited QRExcelFilter1: TQRExcelFilter
    Left = 744
    Top = 164
  end
  inherited QRRTFFilter1: TQRRTFFilter
    Left = 744
    Top = 68
  end
  inherited QRWMFFilter1: TQRWMFFilter
    Left = 740
  end
  inherited QRPDFFilter1: TQRPDFFilter
    CompressionOn = True
    Left = 696
    Top = 112
  end
  inherited QRHTMLFilter1: TQRHTMLFilter
    Left = 744
    Top = 112
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 120
    Top = 8
  end
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     [Station.STATIONID],  [Customer.CUSTOMERID],  [TRAN.S' +
        'ITEMID], [SITEM.IGROUPID], SUM([TRAN.QUANTITY]) AS SumQuantity, ' +
        'SUM([TRAN.AMOUNT]) '
      '                      AS SumAmount, COUNT(*) AS CountKinhs'
      'FROM         V_TRA_STA_ACA_CUS '
      
        '--Group By [STATION.STATIONID],  [CUSTOMER.CUSTOMERID],  [TRAN.S' +
        'ITEMID],[SITEM.IGROUPID]'
      '')
    Left = 64
    Top = 8
    object qryTranStationSTATIONID: TIntegerField
      FieldName = 'Station.STATIONID'
    end
    object qryTranCustomerCUSTOMERID: TIntegerField
      FieldName = 'Customer.CUSTOMERID'
    end
    object qryTranTRANSITEMID: TIntegerField
      FieldName = 'TRAN.SITEMID'
    end
    object qryTranSumQuantity: TFloatField
      FieldName = 'SumQuantity'
      ReadOnly = True
    end
    object qryTranSumAmount: TFloatField
      FieldName = 'SumAmount'
      ReadOnly = True
    end
    object qryTranCountKinhs: TIntegerField
      FieldName = 'CountKinhs'
      ReadOnly = True
    end
    object qryTranAcc1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Acc1'
      Calculated = True
    end
    object qryTranAcc2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Acc2'
      Calculated = True
    end
    object qryTranAcc3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Acc3'
      Calculated = True
    end
    object qryTranAcc4: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Acc4'
      Calculated = True
    end
    object qryTranAcc5: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Acc5'
      Calculated = True
    end
    object qryTranAcc6: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Acc6'
      Calculated = True
    end
    object qryTranAcc7: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Acc7'
      Calculated = True
    end
    object qryTranAcc8: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Acc8'
      Calculated = True
    end
    object qryTranAcc9: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Acc9'
      Calculated = True
    end
    object qryTranAcc10: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Acc10'
      Calculated = True
    end
    object qryTranPos1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pos1'
      Calculated = True
    end
    object qryTranPos2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pos2'
      Calculated = True
    end
    object qryTranPos3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pos3'
      Calculated = True
    end
    object qryTranPos4: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pos4'
      Calculated = True
    end
    object qryTranPos5: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pos5'
      Calculated = True
    end
    object qryTranPos6: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pos6'
      Calculated = True
    end
    object qryTranPos7: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pos7'
      Calculated = True
    end
    object qryTranPos8: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pos8'
      Calculated = True
    end
    object qryTranPos9: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pos9'
      Calculated = True
    end
    object qryTranPos10: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pos10'
      Calculated = True
    end
    object qryTranKm1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Km1'
      Calculated = True
    end
    object qryTranKm2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Km2'
      Calculated = True
    end
    object qryTranKm3: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Km3'
      Calculated = True
    end
    object qryTranKm4: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Km4'
      Calculated = True
    end
    object qryTranKm5: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Km5'
      Calculated = True
    end
    object qryTranKm6: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Km6'
      Calculated = True
    end
    object qryTranKm7: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Km7'
      Calculated = True
    end
    object qryTranKm8: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Km8'
      Calculated = True
    end
    object qryTranKm9: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Km9'
      Calculated = True
    end
    object qryTranKm10: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Km10'
      Calculated = True
    end
    object qryTranStationId: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'StationId'
      Calculated = True
    end
    object qryTranCustomerId: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CustomerId'
      Calculated = True
    end
    object qryTranLStationName: TStringField
      FieldKind = fkLookup
      FieldName = 'LStationName'
      LookupDataSet = QStation
      LookupKeyFields = 'Stationid'
      LookupResultField = 'Name'
      KeyFields = 'Station.STATIONID'
      Size = 60
      Lookup = True
    end
    object qryTranLCustomerName: TStringField
      FieldKind = fkLookup
      FieldName = 'LCustomerName'
      LookupDataSet = QCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'NAME'
      KeyFields = 'Customer.CUSTOMERID'
      Size = 60
      Lookup = True
    end
    object qryTranSITEMIGROUPID: TIntegerField
      FieldName = 'SITEM.IGROUPID'
    end
    object qryTranLSitemDesc: TStringField
      FieldKind = fkLookup
      FieldName = 'LSitemDesc'
      LookupDataSet = qrySItem
      LookupKeyFields = 'SITEMID'
      LookupResultField = 'DESCR'
      KeyFields = 'TRAN.SITEMID'
      Size = 60
      Lookup = True
    end
    object qryTranLStationAddress: TStringField
      FieldKind = fkLookup
      FieldName = 'LStationAddress'
      LookupDataSet = QStation
      LookupKeyFields = 'Stationid'
      LookupResultField = 'STREET'
      KeyFields = 'Station.STATIONID'
      Size = 60
      Lookup = True
    end
    object qryTranLStationCity: TStringField
      FieldKind = fkLookup
      FieldName = 'LStationCity'
      LookupDataSet = QStation
      LookupKeyFields = 'Stationid'
      LookupResultField = 'CITY'
      KeyFields = 'Station.STATIONID'
      Lookup = True
    end
    object qryTranLStationZip: TStringField
      FieldKind = fkLookup
      FieldName = 'LStationZip'
      LookupDataSet = QStation
      LookupKeyFields = 'Stationid'
      LookupResultField = 'ZIP'
      KeyFields = 'Station.STATIONID'
      Lookup = True
    end
  end
  object qrySItem: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM SITEM')
    Left = 600
    Top = 72
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
    object qrySItemMINPRICE: TFloatField
      FieldName = 'MINPRICE'
    end
    object qrySItemMAXPRICE: TFloatField
      FieldName = 'MAXPRICE'
    end
    object qrySItemCHECKPRICE: TBooleanField
      FieldName = 'CHECKPRICE'
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
  object QStation: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'StationId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM STATION'
      '--Where StationId = :StationId'
      '')
    Left = 232
    Top = 88
    object QStationStationid: TAutoIncField
      FieldName = 'Stationid'
      ReadOnly = True
    end
    object QStationName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object QStationSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object QStationZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object QStationCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object QStationAreaId: TIntegerField
      FieldName = 'AreaId'
    end
    object QStationSalesMenId: TIntegerField
      FieldName = 'SalesMenId'
    end
    object QStationIGroupId1: TIntegerField
      FieldName = 'IGroupId1'
    end
    object QStationPososto1: TFloatField
      FieldName = 'Pososto1'
    end
    object QStationHaveGroup1: TBooleanField
      FieldName = 'HaveGroup1'
    end
    object QStationIGroupId2: TIntegerField
      FieldName = 'IGroupId2'
    end
    object QStationPososto2: TFloatField
      FieldName = 'Pososto2'
    end
    object QStationHaveGroup2: TBooleanField
      FieldName = 'HaveGroup2'
    end
    object QStationIGroupId3: TIntegerField
      FieldName = 'IGroupId3'
    end
    object QStationPososto3: TFloatField
      FieldName = 'Pososto3'
    end
    object QStationHaveGroup3: TBooleanField
      FieldName = 'HaveGroup3'
    end
    object QStationIGroupId4: TIntegerField
      FieldName = 'IGroupId4'
    end
    object QStationPososto4: TFloatField
      FieldName = 'Pososto4'
    end
    object QStationHaveGroup4: TBooleanField
      FieldName = 'HaveGroup4'
    end
    object QStationIGroupId5: TIntegerField
      FieldName = 'IGroupId5'
    end
    object QStationPososto5: TFloatField
      FieldName = 'Pososto5'
    end
    object QStationHaveGroup5: TBooleanField
      FieldName = 'HaveGroup5'
    end
    object QStationIGroupId6: TIntegerField
      FieldName = 'IGroupId6'
    end
    object QStationPososto6: TFloatField
      FieldName = 'Pososto6'
    end
    object QStationHaveGroup6: TBooleanField
      FieldName = 'HaveGroup6'
    end
    object QStationIGroupId7: TIntegerField
      FieldName = 'IGroupId7'
    end
    object QStationPososto7: TFloatField
      FieldName = 'Pososto7'
    end
    object QStationHaveGroup7: TBooleanField
      FieldName = 'HaveGroup7'
    end
    object QStationIGroupId8: TIntegerField
      FieldName = 'IGroupId8'
    end
    object QStationPososto8: TFloatField
      FieldName = 'Pososto8'
    end
    object QStationHaveGroup8: TBooleanField
      FieldName = 'HaveGroup8'
    end
    object QStationIGroupId9: TIntegerField
      FieldName = 'IGroupId9'
    end
    object QStationPososto9: TFloatField
      FieldName = 'Pososto9'
    end
    object QStationHaveGroup9: TBooleanField
      FieldName = 'HaveGroup9'
    end
    object QStationIGroupId10: TIntegerField
      FieldName = 'IGroupId10'
    end
    object QStationPososto10: TFloatField
      FieldName = 'Pososto10'
    end
    object QStationHaveGroup10: TBooleanField
      FieldName = 'HaveGroup10'
    end
    object QStationDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object QStationDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object QStationDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object QStationInActive: TBooleanField
      FieldName = 'InActive'
    end
    object QStationInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object QStationInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object QStationStopSales: TBooleanField
      FieldName = 'StopSales'
    end
    object QStationStopSalesUsr: TIntegerField
      FieldName = 'StopSalesUsr'
    end
    object QStationStopSalesDt: TDateTimeField
      FieldName = 'StopSalesDt'
    end
    object QStationIsTest: TBooleanField
      FieldName = 'IsTest'
    end
    object QStationIsTestUsr: TIntegerField
      FieldName = 'IsTestUsr'
    end
    object QStationIsTestDt: TDateTimeField
      FieldName = 'IsTestDt'
    end
    object QStationEndPending: TBooleanField
      FieldName = 'EndPending'
    end
    object QStationEndPendingDT: TDateTimeField
      FieldName = 'EndPendingDT'
    end
    object QStationEndPendingUsr: TIntegerField
      FieldName = 'EndPendingUsr'
    end
  end
  object QCustomer: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
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
      'SELECT * '
      'FROM Customer'
      '--Where CustomerId = :CustomerId')
    Left = 264
    Top = 144
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
  object qryIGroup: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from IGroup')
    Left = 600
    Top = 8
    object qryIGroupId: TAutoIncField
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
end
