inherited rptKinhsKK88: TrptKinhsKK88
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
  ReportTitle = #931#973#957#959#955#945' '#945#957#945' '#922'.'#922'./'#922#945#964' '#927#967#942#956#945#964#959#962'/'#928#961#959#970#972#957
  ExplicitWidth = 1123
  ExplicitHeight = 794
  inherited QRBPF: TQRBand
    Top = 441
    Width = 1047
    Enabled = False
    Size.Values = (
      84.666666666666670000
      2770.187500000000000000)
    ExplicitTop = 441
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
    Top = 249
    Width = 1047
    Height = 1
    Frame.Width = 3
    ForceNewPage = True
    Size.Values = (
      2.645833333333333000
      2770.187500000000000000)
    Expression = 'qryTran.CustomerId'
    FooterBand = QRFBCust
    Master = Owner
    ExplicitTop = 249
    ExplicitWidth = 1047
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
  object QRGHEmp: TQRGroup [2]
    Left = 38
    Top = 250
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
    Expression = 'qryTran.Employees.id'
    FooterBand = QRGFEmp
    Master = Owner
    ReprintOnNewPage = False
    object QRDBText5: TQRDBText
      Left = 8
      Top = 0
      Width = 41
      Height = 19
      Size.Values = (
        50.270833333333330000
        21.166666666666670000
        0.000000000000000000
        108.479166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LEmp'
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
  object QRBand1: TQRBand [3]
    Left = 38
    Top = 298
    Width = 1047
    Height = 15
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      39.687500000000000000
      2770.187500000000000000)
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
    object QRDBText13: TQRDBText
      Left = 344
      Top = 0
      Width = 42
      Height = 17
      Size.Values = (
        44.979166666666670000
        910.166666666666700000
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
    object QRDBText12: TQRDBText
      Left = 8
      Top = 0
      Width = 124
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        0.000000000000000000
        328.083333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'Acard.AcardCodeFull'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText14: TQRDBText
      Left = 232
      Top = -2
      Width = 97
      Height = 17
      Size.Values = (
        44.979166666666670000
        613.833333333333300000
        -5.291666666666667000
        256.645833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'ACARD.REGNO'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText6: TQRDBText
      Left = 809
      Top = 0
      Width = 24
      Height = 17
      Size.Values = (
        44.979166666666700000
        2140.479166666670000000
        0.000000000000000000
        63.500000000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LCL'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText7: TQRDBText
      Left = 911
      Top = 0
      Width = 26
      Height = 17
      Size.Values = (
        44.979166666666700000
        2410.354166666670000000
        0.000000000000000000
        68.791666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LCE'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText8: TQRDBText
      Left = 1005
      Top = 0
      Width = 28
      Height = 17
      Size.Values = (
        44.979166666666700000
        2659.062500000000000000
        0.000000000000000000
        74.083333333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LKM'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText15: TQRDBText
      Left = 725
      Top = 0
      Width = 28
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1918.229166666667000000
        0.000000000000000000
        74.083333333333330000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LCnt'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
  end
  object QRFBCust: TQRBand [4]
    Left = 38
    Top = 408
    Width = 1047
    Height = 33
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      87.312500000000000000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRExpr3: TQRExpr
      Left = 648
      Top = 8
      Width = 73
      Height = 19
      Size.Values = (
        50.270833333333300000
        1714.500000000000000000
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
      Left = 104
      Top = 8
      Width = 108
      Height = 19
      Size.Values = (
        50.270833333333330000
        275.166666666666700000
        21.166666666666670000
        285.750000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #915#949#957#953#954#940'  '#931#973#957#959#955#945
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
    Width = 1047
    Height = 211
    Frame.DrawBottom = True
    Frame.Width = 3
    Size.Values = (
      558.270833333333300000
      2770.187500000000000000)
    ExplicitWidth = 1047
    ExplicitHeight = 211
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
    object QRLabel3: TQRLabel
      Left = 608
      Top = 56
      Width = 64
      Height = 20
      Size.Values = (
        52.916666666666670000
        1608.666666666667000000
        148.166666666666700000
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
      Left = 680
      Top = 56
      Width = 345
      Height = 20
      Size.Values = (
        52.916666666666700000
        1799.166666666670000000
        148.166666666667000000
        912.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
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
      Top = 192
      Width = 87
      Height = 20
      Size.Values = (
        52.916666666666670000
        1418.166666666667000000
        508.000000000000000000
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
      Top = 192
      Width = 28
      Height = 20
      Size.Values = (
        52.916666666666670000
        1714.500000000000000000
        508.000000000000000000
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
      Top = 176
      Width = 89
      Height = 36
      Size.Values = (
        95.250000000000000000
        1164.166666666670000000
        465.666666666667000000
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
      Top = 192
      Width = 58
      Height = 20
      Size.Values = (
        52.916666666666670000
        910.166666666666700000
        508.000000000000000000
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
      Top = 192
      Width = 40
      Height = 20
      Size.Values = (
        52.916666666666670000
        21.166666666666670000
        508.000000000000000000
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
    object QRLabel9: TQRLabel
      Left = 24
      Top = 160
      Width = 22
      Height = 17
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        423.333333333333300000
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
      OnPrint = QRLabel9Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel1: TQRLabel
      Left = 776
      Top = 192
      Width = 59
      Height = 20
      Size.Values = (
        52.916666666666670000
        2053.166666666667000000
        508.000000000000000000
        156.104166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Lt/100Km'
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
    object QRLabel12: TQRLabel
      Left = 888
      Top = 192
      Width = 54
      Height = 20
      Size.Values = (
        52.916666666666670000
        2349.500000000000000000
        508.000000000000000000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #8364'/100Km'
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
    object QRLabel13: TQRLabel
      Left = 984
      Top = 192
      Width = 27
      Height = 20
      Size.Values = (
        52.916666666666670000
        2603.500000000000000000
        508.000000000000000000
        71.437500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Km*'
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
  object QRGHKK: TQRGroup [6]
    Left = 38
    Top = 266
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
    Expression = 'qryTran.ACARD.VTYPEID'
    FooterBand = QRGFKK
    Master = Owner
    ReprintOnNewPage = False
    object QRDBText1: TQRDBText
      Left = 24
      Top = 0
      Width = 54
      Height = 19
      Size.Values = (
        50.270833333333330000
        63.500000000000000000
        0.000000000000000000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LVType'
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
  object QRGFEmp: TQRBand [7]
    Left = 38
    Top = 377
    Width = 1047
    Height = 31
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      82.020833333333330000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRExpr7: TQRExpr
      Left = 648
      Top = 8
      Width = 73
      Height = 19
      Size.Values = (
        50.270833333333300000
        1714.500000000000000000
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
    object QRLabel11: TQRLabel
      Left = 152
      Top = 8
      Width = 79
      Height = 19
      Size.Values = (
        50.270833333333330000
        402.166666666666700000
        21.166666666666670000
        209.020833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #931#973#957#959#955#945' '#947#953#945
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
      Left = 248
      Top = 8
      Width = 41
      Height = 19
      Size.Values = (
        50.270833333333330000
        656.166666666666700000
        21.166666666666670000
        108.479166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LEmp'
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
    object QRExpr8: TQRExpr
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
  object QRGFKK: TQRBand [8]
    Left = 38
    Top = 345
    Width = 1047
    Height = 32
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      84.666666666666670000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRExpr1: TQRExpr
      Left = 648
      Top = 8
      Width = 73
      Height = 19
      Size.Values = (
        50.270833333333300000
        1714.500000000000000000
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
    object QRLabel10: TQRLabel
      Left = 200
      Top = 8
      Width = 79
      Height = 19
      Size.Values = (
        50.270833333333330000
        529.166666666666700000
        21.166666666666670000
        209.020833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #931#973#957#959#955#945' '#947#953#945
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
    object QRDBText9: TQRDBText
      Left = 288
      Top = 8
      Width = 54
      Height = 19
      Size.Values = (
        50.270833333333330000
        762.000000000000000000
        21.166666666666670000
        142.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LVType'
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
  object QRGHSi: TQRGroup [9]
    Left = 38
    Top = 282
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
    Expression = 'qryTran.Tran.SitemId'
    FooterBand = QRGFSi
    Master = Owner
    ReprintOnNewPage = False
    object QRDBText16: TQRDBText
      Left = 48
      Top = 0
      Width = 50
      Height = 19
      Size.Values = (
        50.270833333333330000
        127.000000000000000000
        0.000000000000000000
        132.291666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LSitem'
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
  object QRGFSi: TQRBand [10]
    Left = 38
    Top = 313
    Width = 1047
    Height = 32
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      84.666666666666670000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRExpr10: TQRExpr
      Left = 648
      Top = 8
      Width = 73
      Height = 19
      Size.Values = (
        50.270833333333300000
        1714.500000000000000000
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
    object QRLabel14: TQRLabel
      Left = 248
      Top = 8
      Width = 79
      Height = 19
      Size.Values = (
        50.270833333333330000
        656.166666666666700000
        21.166666666666670000
        209.020833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #931#973#957#959#955#945' '#947#953#945
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
    object QRExpr11: TQRExpr
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
    object QRDBText17: TQRDBText
      Left = 336
      Top = 8
      Width = 73
      Height = 19
      Size.Values = (
        50.270833333333300000
        889.000000000000000000
        21.166666666666700000
        193.145833333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LVType'
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
    object QRExpr12: TQRExpr
      Left = 712
      Top = 8
      Width = 73
      Height = 19
      Size.Values = (
        50.270833333333300000
        1883.833333333330000000
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
      OnPrint = QRExpr12Print
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.LCnt)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 11
    end
    object QRExpr13: TQRExpr
      Left = 760
      Top = 8
      Width = 73
      Height = 19
      Size.Values = (
        50.270833333333300000
        2010.833333333330000000
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
      OnPrint = QRExpr13Print
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.LCL)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 11
    end
    object QRExpr14: TQRExpr
      Left = 864
      Top = 8
      Width = 73
      Height = 19
      Size.Values = (
        50.270833333333300000
        2286.000000000000000000
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
      OnPrint = QRExpr13Print
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.LCE)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 11
    end
    object QRDBText18: TQRDBText
      Left = 416
      Top = 8
      Width = 109
      Height = 19
      Size.Values = (
        50.270833333333300000
        1100.666666666670000000
        21.166666666666700000
        288.395833333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LSitem'
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
  inherited QRTextFilter1: TQRTextFilter
    Left = 368
  end
  inherited QRCSVFilter1: TQRCSVFilter
    Left = 424
    Top = 4
  end
  inherited QRExcelFilter1: TQRExcelFilter
    Left = 256
  end
  inherited QRWMFFilter1: TQRWMFFilter
    Left = 484
    Top = 4
  end
  inherited QRPDFFilter1: TQRPDFFilter
    Left = 656
    Top = 8
  end
  inherited QRHTMLFilter1: TQRHTMLFilter
    Left = 576
    Top = 8
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 112
    Top = 64
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
    Left = 56
    Top = 64
    object qryTranCountKinhs: TIntegerField
      FieldName = 'CountKinhs'
      ReadOnly = True
    end
    object qryTranSumAmount: TFloatField
      FieldName = 'SumAmount'
      ReadOnly = True
      currency = True
    end
    object qryTranSumQuantity: TFloatField
      FieldName = 'SumQuantity'
      ReadOnly = True
    end
    object qryTranCustomerName: TStringField
      FieldKind = fkLookup
      FieldName = 'CustomerName'
      LookupDataSet = QCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'NAME'
      KeyFields = 'Customer.CustomerId'
      LookupCache = True
      Size = 40
      Lookup = True
    end
    object qryTranCustomerAddress: TStringField
      FieldKind = fkLookup
      FieldName = 'CustomerAddress'
      LookupDataSet = QCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'STREET'
      KeyFields = 'Customer.CustomerId'
      Lookup = True
    end
    object qryTranCustomerZip: TStringField
      FieldKind = fkLookup
      FieldName = 'CustomerZip'
      LookupDataSet = QCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'ZIP'
      KeyFields = 'Customer.CustomerId'
      Lookup = True
    end
    object qryTranCustomerCity: TStringField
      FieldKind = fkLookup
      FieldName = 'CustomerCity'
      LookupDataSet = QCustomer
      LookupKeyFields = 'CUSTOMERID'
      LookupResultField = 'CITY'
      KeyFields = 'Customer.CustomerId'
      Lookup = True
    end
    object qryTranLEmp: TStringField
      FieldKind = fkLookup
      FieldName = 'LEmp'
      LookupDataSet = ADOQuery2
      LookupKeyFields = 'Id'
      LookupResultField = 'LNameSur'
      KeyFields = 'Acard.Employeesid'
      Size = 40
      Lookup = True
    end
    object qryTranACARDVTYPEID: TIntegerField
      FieldName = 'ACARD.VTYPEID'
    end
    object qryTranLVType: TStringField
      FieldKind = fkLookup
      FieldName = 'LVType'
      LookupDataSet = ADOQuery3
      LookupKeyFields = 'VTYPEID'
      LookupResultField = 'DESCR'
      KeyFields = 'ACARD.VTYPEID'
      Lookup = True
    end
    object qryTranLCL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LCL'
      DisplayFormat = '##0.00'
      Calculated = True
    end
    object qryTranLCE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LCE'
      DisplayFormat = '##0.00'
      Calculated = True
    end
    object qryTranLKM: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'LKM'
      Calculated = True
    end
    object qryTranLCnt: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'LCnt'
      Calculated = True
    end
    object qryTranLSi: TIntegerField
      FieldKind = fkLookup
      FieldName = 'LSi'
      LookupDataSet = ADOQuery4
      LookupKeyFields = 'SITEMID'
      LookupResultField = 'IGROUPID'
      KeyFields = 'Tran.SitemId'
      Lookup = True
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
    object qryTranLSitem: TStringField
      FieldKind = fkLookup
      FieldName = 'LSitem'
      LookupDataSet = qrySItem
      LookupKeyFields = 'SITEMID'
      LookupResultField = 'DESCR'
      KeyFields = 'Tran.SitemId'
      Lookup = True
    end
    object qryTranLCalculated: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'LCalculated'
      Calculated = True
    end
  end
  object qrySItem: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM SITEM')
    Left = 152
    Top = 8
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
    Top = 80
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
    Left = 432
    Top = 80
    object ADOQuery1REGNOSEQID: TAutoIncField
      FieldName = 'REGNOSEQID'
      ReadOnly = True
    end
    object ADOQuery1REGNO: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
  end
  object ADOQuery2: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = ADOQuery2CalcFields
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM EMPLOYEES')
    Left = 240
    Top = 136
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
  object ADOQuery3: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM VType')
    Left = 432
    Top = 136
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
  object ADOQuery4: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM SITEM'
      '')
    Left = 344
    Top = 88
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
end
