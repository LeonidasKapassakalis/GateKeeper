inherited rptKinhs43: TrptKinhs43
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
  ReportTitle = #913#957#945#955#965#964#953#954#940' '#940#957#945' '#917#964#945#953#961#949#943#945'/'#922#940#961#964#945'/'#919#956#949#961#959#956#951#957#943#945
  PreviewWidth = 2000
  PreviewHeight = 2000
  ExplicitWidth = 1123
  ExplicitHeight = 794
  inherited QRBPF: TQRBand
    Top = 288
    Width = 1047
    Enabled = False
    Size.Values = (
      84.666666666666670000
      2770.187500000000000000)
    ExplicitTop = 288
    ExplicitWidth = 1047
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
    Top = 225
    Width = 1047
    Height = 0
    ForceNewPage = True
    Size.Values = (
      0.000000000000000000
      2770.187500000000000000)
    Expression = 'qryTran.CUSTOMER.Name'
    Master = Owner
    ExplicitTop = 225
    ExplicitWidth = 1047
    ExplicitHeight = 0
    inherited QRACardLogo: TQRImage
      Size.Values = (
        288.395833333333300000
        21.166666666666670000
        21.166666666666670000
        431.270833333333300000)
    end
    inherited QRSysData1: TQRSysData
      Left = 480
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
      Size.Values = (
        50.270833333333330000
        2651.125000000000000000
        21.166666666666670000
        119.062500000000000000)
      FontSize = 12
      ExplicitLeft = 1002
    end
  end
  inherited QRBand6: TQRBand
    Width = 1047
    Height = 187
    Frame.DrawBottom = True
    Frame.Width = 3
    Size.Values = (
      494.770833333333300000
      2770.187500000000000000)
    ExplicitWidth = 1047
    ExplicitHeight = 187
    inherited QRSysData6: TQRSysData
      Left = 480
      Size.Values = (
        50.270833333333330000
        1270.000000000000000000
        21.166666666666670000
        227.541666666666700000)
      FontSize = 12
      ExplicitLeft = 480
    end
    inherited QRACardLogo1: TQRImage
      Size.Values = (
        288.395833333333300000
        21.166666666666670000
        21.166666666666670000
        431.270833333333300000)
      Stretch = True
    end
    inherited QRSysData7: TQRSysData
      Left = 1002
      Size.Values = (
        50.270833333333330000
        2651.125000000000000000
        21.166666666666670000
        119.062500000000000000)
      FontSize = 12
      ExplicitLeft = 1002
    end
    object QRLabel8: TQRLabel
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
      OnPrint = QRLabel8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel10: TQRLabel
      Left = 16
      Top = 165
      Width = 86
      Height = 20
      Size.Values = (
        52.916666666666670000
        42.333333333333330000
        436.562500000000000000
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
    object QRLabel11: TQRLabel
      Left = 240
      Top = 165
      Width = 67
      Height = 20
      Size.Values = (
        52.916666666666670000
        635.000000000000000000
        436.562500000000000000
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
    object QRLabel12: TQRLabel
      Left = 624
      Top = 165
      Width = 43
      Height = 20
      Size.Values = (
        52.916666666666670000
        1651.000000000000000000
        436.562500000000000000
        113.770833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #913#960#972#948'.'
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
      Left = 704
      Top = 165
      Width = 41
      Height = 20
      Size.Values = (
        52.916666666666670000
        1862.666666666667000000
        436.562500000000000000
        108.479166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #917#943#948#959#962
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
    object QRLabel13: TQRLabel
      Left = 800
      Top = 168
      Width = 30
      Height = 20
      Size.Values = (
        52.916666666666670000
        2116.666666666667000000
        444.500000000000000000
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
    object QRLabel14: TQRLabel
      Left = 864
      Top = 168
      Width = 70
      Height = 20
      Size.Values = (
        52.916666666666670000
        2286.000000000000000000
        444.500000000000000000
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
    object QRLabel16: TQRLabel
      Left = 968
      Top = 168
      Width = 25
      Height = 20
      Size.Values = (
        52.916666666666670000
        2561.166666666667000000
        444.500000000000000000
        66.145833333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'KM'
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
    object QRDBText13: TQRDBText
      Left = 828
      Top = 108
      Width = 101
      Height = 20
      Size.Values = (
        52.916666666666670000
        2190.750000000000000000
        285.750000000000000000
        267.229166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'CUSTOMER.City'
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
    object QRDBText11: TQRDBText
      Left = 769
      Top = 108
      Width = 41
      Height = 20
      Size.Values = (
        52.916666666666670000
        2034.645833333333000000
        285.750000000000000000
        108.479166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'CUSTOMER.Zip'
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
    object QRDBText12: TQRDBText
      Left = 769
      Top = 82
      Width = 113
      Height = 20
      Size.Values = (
        52.916666666666670000
        2034.645833333333000000
        216.958333333333300000
        298.979166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'CUSTOMER.Street'
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
    object QRDBText1: TQRDBText
      Left = 764
      Top = 56
      Width = 116
      Height = 20
      Size.Values = (
        52.916666666666670000
        2021.416666666667000000
        148.166666666666700000
        306.916666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'CUSTOMER.NAME'
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
    object QRLabel9: TQRLabel
      Left = 688
      Top = 56
      Width = 59
      Height = 20
      Size.Values = (
        52.916666666666670000
        1820.333333333333000000
        148.166666666666700000
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
  end
  object QRGroup2: TQRGroup [3]
    Left = 38
    Top = 225
    Width = 1047
    Height = 25
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      66.145833333333330000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Expression = 'qryTran.ACARD.ACARDID'
    FooterBand = QRBand4
    Master = Owner
    ReprintOnNewPage = False
    object QRLabel2: TQRLabel
      Left = 16
      Top = 6
      Width = 45
      Height = 19
      Size.Values = (
        50.270833333333330000
        42.333333333333330000
        15.875000000000000000
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
    object QRDBText16: TQRDBText
      Left = 108
      Top = 7
      Width = 153
      Height = 17
      Size.Values = (
        44.979166666666670000
        285.750000000000000000
        18.520833333333330000
        404.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'Acard.AcardCodeFull'
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
    object QRDBText17: TQRDBText
      Left = 284
      Top = 6
      Width = 153
      Height = 17
      Size.Values = (
        44.979166666666670000
        751.416666666666700000
        15.875000000000000000
        404.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'ACARD.REGNO'
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
  end
  object QRBand2: TQRBand [4]
    Left = 38
    Top = 250
    Width = 1047
    Height = 18
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      47.625000000000000000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object QRDBText4: TQRDBText
      Left = 624
      Top = 0
      Width = 90
      Height = 17
      Size.Values = (
        44.979166666666670000
        1651.000000000000000000
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
      Left = 764
      Top = 0
      Width = 84
      Height = 17
      Size.Values = (
        44.979166666666670000
        2021.416666666667000000
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
      Left = 848
      Top = 0
      Width = 88
      Height = 17
      Size.Values = (
        44.979166666666670000
        2243.666666666667000000
        0.000000000000000000
        232.833333333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
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
      Left = 155
      Top = 0
      Width = 270
      Height = 17
      Size.Values = (
        44.979166666666670000
        410.104166666666700000
        0.000000000000000000
        714.375000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'STATION.NAME'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText3: TQRDBText
      Left = 688
      Top = 0
      Width = 89
      Height = 17
      Size.Values = (
        44.979166666666670000
        1820.333333333333000000
        0.000000000000000000
        235.479166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
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
    object QRDBText10: TQRDBText
      Left = 960
      Top = 0
      Width = 69
      Height = 17
      Size.Values = (
        44.979166666666670000
        2540.000000000000000000
        0.000000000000000000
        182.562500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'TRAN.KMAFTER'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText14: TQRDBText
      Left = 443
      Top = 0
      Width = 142
      Height = 17
      Size.Values = (
        44.979166666666670000
        1172.104166666667000000
        0.000000000000000000
        375.708333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'Station.City'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText2: TQRDBText
      Left = 8
      Top = 0
      Width = 73
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        0.000000000000000000
        193.145833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
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
    object QRDBText8: TQRDBText
      Left = 82
      Top = 0
      Width = 64
      Height = 17
      Size.Values = (
        44.979166666666670000
        216.958333333333300000
        0.000000000000000000
        169.333333333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'TRAN.TranTime'
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
  object QRBand3: TQRBand [5]
    Left = 38
    Top = 320
    Width = 1047
    Height = 192
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      508.000000000000000000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRExpr1: TQRExpr
      Left = 681
      Top = 0
      Width = 163
      Height = 17
      Size.Values = (
        44.979166666666670000
        1801.812500000000000000
        0.000000000000000000
        431.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr1Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Tran.Quantity)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr4: TQRExpr
      Left = 737
      Top = 40
      Width = 115
      Height = 17
      Size.Values = (
        44.979166666666670000
        1949.979166666667000000
        105.833333333333300000
        304.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr2Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc1)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr5: TQRExpr
      Left = 737
      Top = 64
      Width = 115
      Height = 17
      Size.Values = (
        44.979166666666670000
        1949.979166666667000000
        169.333333333333300000
        304.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr2Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc2)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr6: TQRExpr
      Left = 737
      Top = 88
      Width = 115
      Height = 17
      Size.Values = (
        44.979166666666670000
        1949.979166666667000000
        232.833333333333300000
        304.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr2Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc3)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr7: TQRExpr
      Left = 737
      Top = 112
      Width = 115
      Height = 17
      Size.Values = (
        44.979166666666670000
        1949.979166666667000000
        296.333333333333300000
        304.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr2Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc4)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr8: TQRExpr
      Left = 737
      Top = 136
      Width = 115
      Height = 17
      Size.Values = (
        44.979166666666670000
        1949.979166666667000000
        359.833333333333300000
        304.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr2Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc5)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 648
      Top = 40
      Width = 53
      Height = 17
      Size.Values = (
        44.979166666666670000
        1714.500000000000000000
        105.833333333333300000
        140.229166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #914#949#957#950#943#957#949#962
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
      Left = 648
      Top = 64
      Width = 40
      Height = 17
      Size.Values = (
        44.979166666666670000
        1714.500000000000000000
        169.333333333333300000
        105.833333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Diesel'
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
    object QRLabel5: TQRLabel
      Left = 648
      Top = 88
      Width = 64
      Height = 17
      Size.Values = (
        44.979166666666670000
        1714.500000000000000000
        232.833333333333300000
        169.333333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #923#953#960#945#957#964#953#954#945
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
      Top = 112
      Width = 75
      Height = 17
      Size.Values = (
        44.979166666666670000
        1714.500000000000000000
        296.333333333333300000
        198.437500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Mini Market'
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
      Left = 648
      Top = 136
      Width = 67
      Height = 17
      Size.Values = (
        44.979166666666670000
        1714.500000000000000000
        359.833333333333300000
        177.270833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#955#965#957#964#942#961#953#959
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
    object QRExpr9: TQRExpr
      Left = 817
      Top = 40
      Width = 115
      Height = 17
      Size.Values = (
        44.979166666666670000
        2161.645833333333000000
        105.833333333333300000
        304.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr3Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos1)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr10: TQRExpr
      Left = 817
      Top = 64
      Width = 115
      Height = 17
      Size.Values = (
        44.979166666666670000
        2161.645833333333000000
        169.333333333333300000
        304.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr3Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos2)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr11: TQRExpr
      Left = 817
      Top = 88
      Width = 115
      Height = 17
      Size.Values = (
        44.979166666666670000
        2161.645833333333000000
        232.833333333333300000
        304.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr3Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos3)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr12: TQRExpr
      Left = 817
      Top = 112
      Width = 115
      Height = 17
      Size.Values = (
        44.979166666666670000
        2161.645833333333000000
        296.333333333333300000
        304.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr3Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos4)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr13: TQRExpr
      Left = 817
      Top = 136
      Width = 115
      Height = 17
      Size.Values = (
        44.979166666666670000
        2161.645833333333000000
        359.833333333333300000
        304.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr3Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos5)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel17: TQRLabel
      Left = 648
      Top = 159
      Width = 54
      Height = 17
      Size.Values = (
        44.979166666666670000
        1714.500000000000000000
        420.687500000000000000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'AutoGas'
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
    object QRExpr14: TQRExpr
      Left = 737
      Top = 159
      Width = 115
      Height = 17
      Size.Values = (
        44.979166666666670000
        1949.979166666667000000
        420.687500000000000000
        304.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr2Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc6)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr15: TQRExpr
      Left = 817
      Top = 159
      Width = 115
      Height = 17
      Size.Values = (
        44.979166666666670000
        2161.645833333333000000
        420.687500000000000000
        304.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr3Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos6)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr16: TQRExpr
      Left = 760
      Top = 0
      Width = 169
      Height = 17
      Size.Values = (
        44.979166666666670000
        2010.833333333333000000
        0.000000000000000000
        447.145833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr1Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Tran.AMOUNT)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object QRBand4: TQRBand [6]
    Left = 38
    Top = 268
    Width = 1047
    Height = 20
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      52.916666666666670000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRExpr2: TQRExpr
      Left = 683
      Top = 0
      Width = 169
      Height = 17
      Size.Values = (
        44.979166666666670000
        1807.104166666667000000
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
      Left = 624
      Top = 0
      Width = 97
      Height = 17
      Size.Values = (
        44.979166666666670000
        1651.000000000000000000
        0.000000000000000000
        256.645833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'ACARD.REGNO'
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
    object QRLabel1: TQRLabel
      Left = 560
      Top = 0
      Width = 48
      Height = 17
      Size.Values = (
        44.979166666666670000
        1481.666666666667000000
        0.000000000000000000
        127.000000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #931#973#957#959#955#959
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
    object QRExpr3: TQRExpr
      Left = 762
      Top = 0
      Width = 172
      Height = 17
      Size.Values = (
        44.979166666666670000
        2016.125000000000000000
        0.000000000000000000
        455.083333333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr3Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.TRAN.Quantity)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 136
    Top = 80
  end
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM V_TRA_STA_ACA_CUS'
      '')
    Left = 72
    Top = 80
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
      DisplayFormat = 'c'
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
      DisplayFormat = 't'
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
    object qryTranCostCenterCCName: TWideStringField
      FieldName = 'CostCenter.CCName'
      Size = 50
    end
    object qryTranCostCenterCCNameFull: TWideStringField
      FieldName = 'CostCenter.CCNameFull'
      Size = 100
    end
    object qryTranAcardAcardCodeFull: TWideStringField
      FieldName = 'Acard.AcardCodeFull'
      ReadOnly = True
      Size = 19
    end
  end
end
