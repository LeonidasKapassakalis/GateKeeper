inherited rptKinhs9: TrptKinhs9
  Width = 1123
  Height = 794
  DataSet = qryTran
  Functions.DATA = (
    '0'
    '0'
    #39#39)
  Page.Orientation = poLandscape
  Page.Values = (
    100.000000000000000000
    2100.000000000000000000
    100.000000000000000000
    2970.000000000000000000
    100.000000000000000000
    100.000000000000000000
    0.000000000000000000)
  ReportTitle = #913#957#945#955#965#964#953#954#940' '#931#964#959#953#967#949#943#945' '#931#965#957#945#955#955#945#947#974#957
  ExplicitWidth = 1123
  ExplicitHeight = 794
  inherited QRBPF: TQRBand
    Top = 305
    Width = 1047
    Height = 24
    Enabled = False
    Size.Values = (
      63.500000000000000000
      2770.187500000000000000)
    ExplicitTop = 305
    ExplicitWidth = 1047
    ExplicitHeight = 24
    inherited QRSysData3: TQRSysData
      Left = 500
      Size.Values = (
        50.270833333333330000
        1322.916666666667000000
        21.166666666666670000
        121.708333333333300000)
      FontSize = 10
      ExplicitLeft = 500
    end
  end
  inherited QRGrHead: TQRGroup
    Top = 217
    Width = 1047
    Height = 0
    ForceNewPage = True
    Size.Values = (
      0.000000000000000000
      2770.187500000000000000)
    Expression = 'qryTran.CUSTOMERID'
    FooterBand = QRFBCustomer
    Master = Owner
    ExplicitTop = 217
    ExplicitWidth = 1047
    ExplicitHeight = 0
    inherited QRACardLogo: TQRImage
      Width = 137
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666700000
        21.166666666666700000
        21.166666666666700000
        362.479166666667000000)
      ExplicitWidth = 137
      ExplicitHeight = 17
    end
    inherited QRSysData1: TQRSysData
      Left = 480
      Enabled = False
      Size.Values = (
        50.270833333333330000
        1270.000000000000000000
        21.166666666666670000
        227.541666666666700000)
      FontSize = 12
      ExplicitLeft = 480
    end
    inherited QRSysData2: TQRSysData
      Left = 1002
      Enabled = False
      Size.Values = (
        50.270833333333330000
        2651.125000000000000000
        21.166666666666670000
        119.062500000000000000)
      FontSize = 12
      ExplicitLeft = 1002
    end
  end
  object QRGHDate: TQRGroup [2]
    Left = 38
    Top = 217
    Width = 1047
    Height = 24
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      63.500000000000000000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Expression = 'qryTran.TRAN.TRANDATE'
    FooterBand = QRBFDate
    Master = Owner
    ReprintOnNewPage = False
    object QRDBText7: TQRDBText
      Left = 120
      Top = 0
      Width = 137
      Height = 20
      Size.Values = (
        52.916666666666700000
        317.500000000000000000
        0.000000000000000000
        362.479166666667000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'TRAN.TRANDATE'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 12
    end
    object QRLabel1: TQRLabel
      Left = 8
      Top = 0
      Width = 94
      Height = 20
      Size.Values = (
        52.916666666666670000
        21.166666666666670000
        0.000000000000000000
        248.708333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #919#956#949#961#959#956#951#957#943#945
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 12
    end
  end
  object QRBDetail: TQRBand [3]
    Left = 38
    Top = 241
    Width = 1047
    Height = 16
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      42.333333333333330000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object QRDBText1: TQRDBText
      Left = 0
      Top = 0
      Width = 65
      Height = 17
      Size.Values = (
        44.979166666666670000
        0.000000000000000000
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
    object QRDBText2: TQRDBText
      Left = 176
      Top = 2
      Width = 65
      Height = 17
      Size.Values = (
        44.979166666666670000
        465.666666666666800000
        5.291666666666667000
        171.979166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'REGNOSEQ.REGNO'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText3: TQRDBText
      Left = 648
      Top = 0
      Width = 89
      Height = 17
      Size.Values = (
        44.979166666666700000
        1714.500000000000000000
        0.000000000000000000
        235.479166666667000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'SITEM.DESCR'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText4: TQRDBText
      Left = 976
      Top = 0
      Width = 65
      Height = 17
      Size.Values = (
        44.979166666666670000
        2582.333333333333000000
        0.000000000000000000
        171.979166666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'TRAN.Amount'
      OnPrint = QRDBText4Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText5: TQRDBText
      Left = 872
      Top = 0
      Width = 65
      Height = 17
      Size.Values = (
        44.979166666666700000
        2307.166666666670000000
        0.000000000000000000
        171.979166666667000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'TRAN.Quantity'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText6: TQRDBText
      Left = 264
      Top = 0
      Width = 241
      Height = 17
      Size.Values = (
        44.979166666666700000
        698.500000000000000000
        0.000000000000000000
        637.645833333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
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
    object QRDBText10: TQRDBText
      Left = 752
      Top = 0
      Width = 65
      Height = 17
      Size.Values = (
        44.979166666666700000
        1989.666666666670000000
        0.000000000000000000
        171.979166666667000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
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
    object QRDBText12: TQRDBText
      Left = 520
      Top = 0
      Width = 113
      Height = 17
      Size.Values = (
        44.979166666666700000
        1375.833333333330000000
        0.000000000000000000
        298.979166666667000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
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
  end
  object QRBFDate: TQRBand [4]
    Left = 38
    Top = 257
    Width = 1047
    Height = 24
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      63.500000000000000000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRExpr1: TQRExpr
      Left = 967
      Top = 1
      Width = 73
      Height = 17
      Frame.DrawTop = True
      Size.Values = (
        44.979166666666670000
        2558.520833333333000000
        2.645833333333333000
        193.145833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      OnPrint = QRDBText5Print
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.TRAN.Amount)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel2: TQRLabel
      Left = 800
      Top = 0
      Width = 73
      Height = 20
      Size.Values = (
        52.916666666666700000
        2116.666666666670000000
        0.000000000000000000
        193.145833333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #931#973#957#959#955#959' '
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
      Left = 872
      Top = 0
      Width = 89
      Height = 20
      Size.Values = (
        52.916666666666700000
        2307.166666666670000000
        0.000000000000000000
        235.479166666667000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'TRAN.TRANDATE'
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
  end
  object QRFBCustomer: TQRBand [5]
    Left = 38
    Top = 281
    Width = 1047
    Height = 24
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      63.500000000000000000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRExpr2: TQRExpr
      Left = 967
      Top = 1
      Width = 73
      Height = 17
      Frame.DrawTop = True
      Size.Values = (
        44.979166666666670000
        2558.520833333333000000
        2.645833333333333000
        193.145833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      OnPrint = QRDBText5Print
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Tran.AMOUNT)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel8: TQRLabel
      Left = 560
      Top = 0
      Width = 73
      Height = 20
      Size.Values = (
        52.916666666666700000
        1481.666666666670000000
        0.000000000000000000
        193.145833333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #931#973#957#959#955#959' '
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
    object QRDBText9: TQRDBText
      Left = 640
      Top = 0
      Width = 321
      Height = 20
      Size.Values = (
        52.916666666666700000
        1693.333333333330000000
        0.000000000000000000
        849.312500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'CUSTOMER.NAME'
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
  end
  inherited QRBand6: TQRBand
    Width = 1047
    Height = 179
    Frame.DrawBottom = True
    Frame.Width = 3
    Size.Values = (
      473.604166666666700000
      2770.187500000000000000)
    ExplicitWidth = 1047
    ExplicitHeight = 179
    inherited QRSysData6: TQRSysData
      Left = 476
      Width = 94
      Height = 20
      Size.Values = (
        52.916666666666670000
        1259.416666666667000000
        21.166666666666670000
        248.708333333333300000)
      Font.Style = [fsBold, fsUnderline]
      FontSize = 12
      ExplicitLeft = 476
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
      Left = 1002
      Enabled = False
      Size.Values = (
        50.270833333333330000
        2651.125000000000000000
        21.166666666666670000
        119.062500000000000000)
      FontSize = 12
      ExplicitLeft = 1002
    end
    object QRLabel5: TQRLabel
      Left = 8
      Top = 160
      Width = 45
      Height = 20
      Size.Values = (
        52.916666666666670000
        21.166666666666670000
        423.333333333333300000
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
    object QRLabel6: TQRLabel
      Left = 176
      Top = 160
      Width = 59
      Height = 20
      Size.Values = (
        52.916666666666670000
        465.666666666666700000
        423.333333333333300000
        156.104166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #913#961'.'#922#965#954#955
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
    object QRLabel3: TQRLabel
      Left = 280
      Top = 160
      Width = 67
      Height = 20
      Size.Values = (
        52.916666666666670000
        740.833333333333300000
        423.333333333333300000
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
    object QRLabel15: TQRLabel
      Left = 760
      Top = 48
      Width = 59
      Height = 20
      Size.Values = (
        52.916666666666670000
        2010.833333333333000000
        127.000000000000000000
        156.104166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #917#964#945#953#961#949#943#945
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
    object QRDBText11: TQRDBText
      Left = 832
      Top = 48
      Width = 153
      Height = 17
      Size.Values = (
        44.979166666666700000
        2201.333333333330000000
        127.000000000000000000
        404.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'CUSTOMER.NAME'
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
    object QRLabel4: TQRLabel
      Left = 648
      Top = 160
      Width = 52
      Height = 20
      Size.Values = (
        52.916666666666670000
        1714.500000000000000000
        423.333333333333300000
        137.583333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#961#959#970#972#957
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
    object QRLabel7: TQRLabel
      Left = 744
      Top = 136
      Width = 81
      Height = 41
      Size.Values = (
        108.479166666667000000
        1968.500000000000000000
        359.833333333333000000
        214.312500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #913#961#953#952#956#972#962' '#913#960#972#948#949#953#958#951#962
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
      Left = 856
      Top = 160
      Width = 99
      Height = 20
      Size.Values = (
        52.916666666666670000
        2264.833333333333000000
        423.333333333333300000
        261.937500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#959#963#972#964#951#964#945'(LT)'
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
      Left = 1000
      Top = 160
      Width = 30
      Height = 20
      Size.Values = (
        52.916666666666670000
        2645.833333333333000000
        423.333333333333300000
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
    object QRLabel11: TQRLabel
      Left = 520
      Top = 160
      Width = 59
      Height = 20
      Size.Values = (
        52.916666666666670000
        1375.833333333333000000
        423.333333333333300000
        156.104166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#949#961#953#959#967#942
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
  end
  inherited QRTextFilter1: TQRTextFilter
    Left = 568
  end
  inherited QRCSVFilter1: TQRCSVFilter
    Left = 624
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 48
    Top = 104
  end
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From V_TRA_STA_ACA_CUS'
      '')
    Left = 96
    Top = 104
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
end
