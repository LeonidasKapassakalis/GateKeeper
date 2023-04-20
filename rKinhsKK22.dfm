inherited rptKinhsKK22: TrptKinhsKK22
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
  ReportTitle = #913#957#945#955#965#964#953#954#940' '#931#964#959#953#967#949#943#945' '#931#965#957#945#955#955#945#947#974#957' '#945#957#940' '#922#940#961#964#945
  inherited QRBPF: TQRBand
    Top = 569
    Enabled = False
    Size.Values = (
      84.666666666666670000
      1899.708333333333000000)
    ExplicitTop = 569
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
    Top = 223
    Height = 0
    Frame.DrawBottom = True
    Frame.Width = 3
    ForceNewPage = True
    Size.Values = (
      0.000000000000000000
      1899.708333333333000000)
    Expression = 'qryTran.ACARD.ACARDCODE'
    Master = Owner
    ExplicitTop = 223
    ExplicitHeight = 0
    inherited QRACardLogo: TQRImage
      Size.Values = (
        288.395833333333000000
        21.166666666666700000
        21.166666666666700000
        431.270833333333000000)
    end
    inherited QRSysData1: TQRSysData
      Size.Values = (
        50.270833333333330000
        836.083333333333300000
        21.166666666666670000
        227.541666666666700000)
      FontSize = 12
    end
    inherited QRSysData2: TQRSysData
      Size.Values = (
        50.270833333333330000
        1780.645833333333000000
        21.166666666666670000
        119.062500000000000000)
      FontSize = 12
    end
  end
  inherited QRBand6: TQRBand
    Height = 185
    Frame.DrawBottom = True
    Frame.Width = 3
    Size.Values = (
      489.479166666666700000
      1899.708333333333000000)
    ExplicitHeight = 185
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
    object QRLabel9: TQRLabel
      Left = 584
      Top = 160
      Width = 30
      Height = 20
      Size.Values = (
        52.916666666666670000
        1545.166666666667000000
        423.333333333333300000
        79.375000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #913#958#943#945
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
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
      Left = 400
      Top = 144
      Width = 73
      Height = 36
      Size.Values = (
        95.250000000000000000
        1058.333333333330000000
        381.000000000000000000
        193.145833333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Caption = #913#961#953#952#956#972#962' '#913#960#972#948'/'#958#951#962
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
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
    object QRLabel4: TQRLabel
      Left = 480
      Top = 120
      Width = 63
      Height = 20
      Size.Values = (
        52.916666666666670000
        1270.000000000000000000
        317.500000000000000000
        166.687500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #913#961'.'#922#965#954#955'.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
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
      Left = 296
      Top = 160
      Width = 52
      Height = 20
      Size.Values = (
        52.916666666666670000
        783.166666666666700000
        423.333333333333300000
        137.583333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#961#959#970#972#957
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
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
    object QRLabel18: TQRLabel
      Left = 208
      Top = 160
      Width = 59
      Height = 20
      Size.Values = (
        52.916666666666670000
        550.333333333333300000
        423.333333333333300000
        156.104166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#949#961#953#959#967#942
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
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
      Font.Charset = DEFAULT_CHARSET
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
    object QRLabel15: TQRLabel
      Left = 480
      Top = 48
      Width = 59
      Height = 20
      Size.Values = (
        52.916666666666670000
        1270.000000000000000000
        127.000000000000000000
        156.104166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #917#964#945#953#961#949#943#945
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
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
      Left = 480
      Top = 96
      Width = 45
      Height = 20
      Size.Values = (
        52.916666666666670000
        1270.000000000000000000
        254.000000000000000000
        119.062500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #922#940#961#964#945
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
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
      Left = 640
      Top = 144
      Width = 65
      Height = 36
      Size.Values = (
        95.250000000000000000
        1693.333333333330000000
        381.000000000000000000
        171.979166666667000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Caption = #904#957#948#949#953#958#951'   '#935#923#924'.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
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
      Left = 480
      Top = 144
      Width = 73
      Height = 41
      Size.Values = (
        108.479166666667000000
        1270.000000000000000000
        381.000000000000000000
        193.145833333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Caption = #928#959#963#972#964#951#964#945'      (LT)'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
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
    object QRLabel1: TQRLabel
      Left = 8
      Top = 160
      Width = 67
      Height = 20
      Size.Values = (
        52.916666666666670000
        21.166666666666670000
        423.333333333333300000
        177.270833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#961#945#964#942#961#953#959
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
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
    object QRDBText6: TQRDBText
      Left = 560
      Top = 120
      Width = 97
      Height = 19
      Size.Values = (
        50.270833333333330000
        1481.666666666667000000
        317.500000000000000000
        256.645833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'ACARD.REGNO'
      Font.Charset = DEFAULT_CHARSET
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
      Left = 560
      Top = 48
      Width = 153
      Height = 17
      Size.Values = (
        44.979166666666700000
        1481.666666666670000000
        127.000000000000000000
        404.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'CUSTOMER.NAME'
      Font.Charset = DEFAULT_CHARSET
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
    object QRDBText1: TQRDBText
      Left = 560
      Top = 96
      Width = 124
      Height = 17
      Size.Values = (
        44.979166666666670000
        1481.666666666667000000
        254.000000000000000000
        328.083333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'Acard.AcardCodeFull'
      Font.Charset = DEFAULT_CHARSET
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
      Left = 480
      Top = 72
      Width = 233
      Height = 17
      Size.Values = (
        44.979166666666700000
        1270.000000000000000000
        190.500000000000000000
        616.479166666667000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'EMPLOYEES.SurName'
      Font.Charset = DEFAULT_CHARSET
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
  object QRGroup1: TQRGroup [3]
    Left = 38
    Top = 223
    Width = 718
    Height = 3
    Frame.Width = 3
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      7.937500000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Expression = 'qryTran.ACARD.ACARDCODE'
    FooterBand = QRBand4
    Master = Owner
    ReprintOnNewPage = False
    object QRImage1: TQRImage
      Left = 8
      Top = 8
      Width = 163
      Height = 109
      Enabled = False
      Size.Values = (
        288.395833333333000000
        21.166666666666700000
        21.166666666666700000
        431.270833333333000000)
      XLColumn = 0
    end
    object QRSysData5: TQRSysData
      Left = 212
      Top = 8
      Width = 294
      Height = 19
      Enabled = False
      Size.Values = (
        50.270833333333330000
        560.916666666666700000
        21.166666666666670000
        777.875000000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = True
      Color = clWhite
      Data = qrsReportTitle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      FontSize = 12
    end
    object QRSysData8: TQRSysData
      Left = 646
      Top = 8
      Width = 72
      Height = 19
      Enabled = False
      Size.Values = (
        50.270833333333330000
        1709.208333333333000000
        21.166666666666670000
        190.500000000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = True
      Color = clWhite
      Data = qrsDate
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      FontSize = 12
    end
  end
  object QRGroup2: TQRGroup [4]
    Left = 38
    Top = 226
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
    Expression = 'qryTran.TRAN.TRANDATE'
    Master = Owner
    ReprintOnNewPage = False
    object QRDBText8: TQRDBText
      Left = 112
      Top = 0
      Width = 109
      Height = 17
      Size.Values = (
        44.979166666666670000
        296.333333333333300000
        0.000000000000000000
        288.395833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'TRAN.TRANDATE'
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
    object QRLabel13: TQRLabel
      Left = 8
      Top = 0
      Width = 86
      Height = 20
      Size.Values = (
        52.916666666666670000
        21.166666666666670000
        0.000000000000000000
        227.541666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #919#956#949#961#959#956#951#957#943#945
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
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
  object QRBand3: TQRBand [5]
    Left = 38
    Top = 250
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
    object QRDBText4: TQRDBText
      Left = 370
      Top = 0
      Width = 90
      Height = 17
      Size.Values = (
        44.979166666666670000
        978.958333333333300000
        0.000000000000000000
        238.125000000000000000)
      XLColumn = 0
      Alignment = taRightJustify
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
      Left = 548
      Top = 0
      Width = 84
      Height = 19
      Size.Values = (
        50.270833333333330000
        1449.916666666667000000
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
      Left = 464
      Top = 0
      Width = 88
      Height = 17
      Size.Values = (
        44.979166666666670000
        1227.666666666667000000
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
    object QRDBText3: TQRDBText
      Left = 304
      Top = 0
      Width = 89
      Height = 17
      Size.Values = (
        44.979166666666670000
        804.333333333333300000
        0.000000000000000000
        235.479166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'SITEM.DESCR'
      Font.Charset = DEFAULT_CHARSET
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
    object QRDBText9: TQRDBText
      Left = 8
      Top = 0
      Width = 193
      Height = 17
      Size.Values = (
        44.979166666666700000
        21.166666666666700000
        0.000000000000000000
        510.645833333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'STATION.NAME'
      Font.Charset = DEFAULT_CHARSET
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
    object QRDBText10: TQRDBText
      Left = 602
      Top = 0
      Width = 101
      Height = 17
      Size.Values = (
        44.979166666666670000
        1592.791666666667000000
        0.000000000000000000
        267.229166666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
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
    object QRDBText11: TQRDBText
      Left = 208
      Top = 0
      Width = 89
      Height = 17
      Size.Values = (
        44.979166666666700000
        550.333333333333000000
        0.000000000000000000
        235.479166666667000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'Station.City'
      Font.Charset = DEFAULT_CHARSET
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
  object QRBand4: TQRBand [6]
    Left = 38
    Top = 266
    Width = 718
    Height = 303
    Frame.DrawTop = True
    Frame.Width = 3
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      801.687500000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRExpr12: TQRExpr
      Left = 768
      Top = 96
      Width = 65
      Height = 17
      Size.Values = (
        44.979166666666700000
        2032.000000000000000000
        254.000000000000000000
        171.979166666667000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      Expression = 'SUM(qryTran.Acc2) / SUM(qryTran.Km2)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr13: TQRExpr
      Left = 864
      Top = 96
      Width = 65
      Height = 17
      Size.Values = (
        44.979166666666700000
        2286.000000000000000000
        254.000000000000000000
        171.979166666667000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      Expression = 'SUM(qryTran.Pos2) / SUM(qryTran.Km2)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 264
      Top = 32
      Width = 47
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        84.666666666666670000
        124.354166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #914#949#957#950#943#957#949#962
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel16: TQRLabel
      Left = 264
      Top = 48
      Width = 37
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        127.000000000000000000
        97.895833333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Diesel'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel5: TQRLabel
      Left = 264
      Top = 64
      Width = 58
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        169.333333333333300000
        153.458333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #923#953#960#945#957#964#953#954#945
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel6: TQRLabel
      Left = 264
      Top = 80
      Width = 69
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        211.666666666666700000
        182.562500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Mini Market'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel7: TQRLabel
      Left = 264
      Top = 96
      Width = 58
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        254.000000000000000000
        153.458333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#955#965#957#964#942#961#953#959
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr24: TQRExpr
      Left = 414
      Top = 145
      Width = 46
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1095.375000000000000000
        383.645833333333300000
        121.708333333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 'COUNT'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr14: TQRExpr
      Left = 558
      Top = 32
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666700000
        1476.375000000000000000
        84.666666666666700000
        211.666666666667000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      OnPrint = QRExpr14Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc1)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr25: TQRExpr
      Left = 558
      Top = 48
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666700000
        1476.375000000000000000
        127.000000000000000000
        211.666666666667000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      OnPrint = QRExpr14Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc2)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr18: TQRExpr
      Left = 558
      Top = 64
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666700000
        1476.375000000000000000
        169.333333333333000000
        211.666666666667000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      OnPrint = QRExpr14Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc3)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr20: TQRExpr
      Left = 558
      Top = 80
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666700000
        1476.375000000000000000
        211.666666666667000000
        211.666666666667000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      OnPrint = QRExpr14Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc4)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr22: TQRExpr
      Left = 558
      Top = 96
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666700000
        1476.375000000000000000
        254.000000000000000000
        211.666666666667000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      OnPrint = QRExpr14Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc5)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr15: TQRExpr
      Left = 472
      Top = 32
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666700000
        1248.833333333330000000
        84.666666666666700000
        211.666666666667000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      OnPrint = QRExpr15Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos1)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr26: TQRExpr
      Left = 472
      Top = 48
      Width = 80
      Height = 18
      Size.Values = (
        47.625000000000000000
        1248.833333333330000000
        127.000000000000000000
        211.666666666667000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      OnPrint = QRExpr15Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos2)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr19: TQRExpr
      Left = 472
      Top = 64
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666700000
        1248.833333333330000000
        169.333333333333000000
        211.666666666667000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      OnPrint = QRExpr15Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos3)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr21: TQRExpr
      Left = 472
      Top = 80
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666700000
        1248.833333333330000000
        211.666666666667000000
        211.666666666667000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      OnPrint = QRExpr15Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos4)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr23: TQRExpr
      Left = 472
      Top = 96
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666700000
        1248.833333333330000000
        254.000000000000000000
        211.666666666667000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      OnPrint = QRExpr15Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos5)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel12: TQRLabel
      Left = 264
      Top = 145
      Width = 48
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        383.645833333333300000
        127.000000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #931#973#957#959#955#959
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
      Left = 472
      Top = 145
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1248.833333333333000000
        383.645833333333300000
        211.666666666666700000)
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
      OnPrint = QRExpr1Print
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 
        'SUM(qryTran.Pos1)+SUM(qryTran.Pos2)+SUM(qryTran.Pos3)+SUM(qryTra' +
        'n.Pos4)+SUM(qryTran.Pos5)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr2: TQRExpr
      Left = 558
      Top = 145
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1476.375000000000000000
        383.645833333333300000
        211.666666666666700000)
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
      OnPrint = QRExpr14Print
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 
        'SUM(qryTran.Acc1)+SUM(qryTran.Acc2)+SUM(qryTran.Acc3)+SUM(qryTra' +
        'n.Acc4)+SUM(qryTran.Acc5)+SUM(qryTran.Acc6)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel19: TQRLabel
      Left = 264
      Top = 16
      Width = 45
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        42.333333333333330000
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
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel20: TQRLabel
      Left = 488
      Top = 16
      Width = 63
      Height = 17
      Size.Values = (
        44.979166666666670000
        1291.166666666667000000
        42.333333333333330000
        166.687500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#959#963#972#964#951#964#945
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
    object QRLabel21: TQRLabel
      Left = 600
      Top = 16
      Width = 36
      Height = 17
      Size.Values = (
        44.979166666666670000
        1587.500000000000000000
        42.333333333333330000
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
    object QRLabel22: TQRLabel
      Left = 144
      Top = 64
      Width = 57
      Height = 20
      Size.Values = (
        52.916666666666670000
        381.000000000000000000
        169.333333333333300000
        150.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #931#973#957#959#955#945
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
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
    object QRLabel23: TQRLabel
      Left = 8
      Top = 200
      Width = 57
      Height = 25
      Size.Values = (
        66.145833333333330000
        21.166666666666670000
        529.166666666666700000
        150.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #931#973#957#959#955#945
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      OnPrint = QRLabel23Print
      ParentFont = False
      Transparent = True
      WordWrap = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 12
    end
    object QRLabel24: TQRLabel
      Left = 8
      Top = 216
      Width = 700
      Height = 25
      Size.Values = (
        66.145833333333330000
        21.166666666666670000
        571.500000000000000000
        1852.083333333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #931#973#957#959#955#945
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      OnPrint = QRLabel24Print
      ParentFont = False
      Transparent = True
      WordWrap = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 12
    end
    object QRLabel25: TQRLabel
      Left = 8
      Top = 232
      Width = 700
      Height = 25
      Enabled = False
      Size.Values = (
        66.145833333333330000
        21.166666666666670000
        613.833333333333300000
        1852.083333333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #931#973#957#959#955#945
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      OnPrint = QRLabel25Print
      ParentFont = False
      Transparent = True
      WordWrap = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 12
    end
    object QRLabel26: TQRLabel
      Left = 8
      Top = 248
      Width = 700
      Height = 20
      Enabled = False
      Size.Values = (
        52.916666666666670000
        21.166666666666670000
        656.166666666666700000
        1852.083333333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #931#973#957#959#955#945
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      OnPrint = QRLabel26Print
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 12
    end
    object QRLabel27: TQRLabel
      Left = 8
      Top = 264
      Width = 700
      Height = 25
      Enabled = False
      Size.Values = (
        66.145833333333330000
        21.166666666666670000
        698.500000000000000000
        1852.083333333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #931#973#957#959#955#945
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      OnPrint = QRLabel27Print
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 12
    end
    object QRLabel28: TQRLabel
      Left = 8
      Top = 184
      Width = 57
      Height = 20
      Size.Values = (
        52.916666666666670000
        21.166666666666670000
        486.833333333333300000
        150.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #931#973#957#959#955#945
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      OnPrint = QRLabel28Print
      ParentFont = False
      Transparent = True
      WordWrap = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 12
    end
    object QRLabel29: TQRLabel
      Left = 264
      Top = 112
      Width = 52
      Height = 17
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        296.333333333333300000
        137.583333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'AutoGas'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr3: TQRExpr
      Left = 472
      Top = 112
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1248.833333333333000000
        296.333333333333300000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      OnPrint = QRExpr15Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos6)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr4: TQRExpr
      Left = 558
      Top = 112
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1476.375000000000000000
        296.333333333333300000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      OnPrint = QRExpr14Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Acc6)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 104
    Top = 80
  end
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM'
      'V_TRA_STA_ACA_CUS_EMP')
    Left = 48
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
    object qryTranKm6: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Km6'
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
    object qryTranEMPLOYEESNAME: TWideStringField
      FieldName = 'EMPLOYEES.NAME'
      Size = 50
    end
    object qryTranEMPLOYEESMhtrId: TIntegerField
      FieldName = 'EMPLOYEES.MhtrId'
    end
    object qryTranEMPLOYEESSurName: TWideStringField
      FieldName = 'EMPLOYEES.SurName'
      Size = 50
    end
    object qryTranEMPLOYEESAddress: TWideStringField
      FieldName = 'EMPLOYEES.Address'
      Size = 50
    end
    object qryTranEMPLOYEESTK: TWideStringField
      FieldName = 'EMPLOYEES.TK'
      Size = 5
    end
    object qryTranEMPLOYEESTOWN: TWideStringField
      FieldName = 'EMPLOYEES.TOWN'
      Size = 50
    end
    object qryTranEMPLOYEESAFM: TWideStringField
      FieldName = 'EMPLOYEES.AFM'
      Size = 9
    end
    object qryTranEMPLOYEESDOY: TWideStringField
      FieldName = 'EMPLOYEES.DOY'
      Size = 50
    end
    object qryTranEMPLOYEESSendPrint: TBooleanField
      FieldName = 'EMPLOYEES.SendPrint'
    end
    object qryTranEMPLOYEESSendMail: TBooleanField
      FieldName = 'EMPLOYEES.SendMail'
    end
    object qryTranEMPLOYEESMailAddr: TWideStringField
      FieldName = 'EMPLOYEES.MailAddr'
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
  object qrySItem: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM SITEM')
    Left = 160
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    SQL.Strings = (
      'Select * From ConsG')
    Left = 280
    Top = 8
    object ADOQuery1ACARDID: TIntegerField
      FieldName = 'ACARDID'
    end
    object ADOQuery1CONSGMONTH: TIntegerField
      FieldName = 'CONSGMONTH'
    end
    object ADOQuery1CONSGYEAR: TIntegerField
      FieldName = 'CONSGYEAR'
    end
    object ADOQuery1IGROUPID: TIntegerField
      FieldName = 'IGROUPID'
    end
    object ADOQuery1PERIG: TWideStringField
      FieldName = 'PERIG'
      Size = 50
    end
    object ADOQuery1KM: TIntegerField
      FieldName = 'KM'
    end
    object ADOQuery1MKL: TFloatField
      FieldName = 'MKL'
    end
    object ADOQuery1MKE: TFloatField
      FieldName = 'MKE'
    end
    object ADOQuery1INSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object ADOQuery1UPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object ADOQuery1INSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object ADOQuery1UPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object ADOQuery2: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from ConsG')
    Left = 328
    Top = 112
    object ADOQuery2ACARDID: TIntegerField
      FieldName = 'ACARDID'
    end
    object ADOQuery2CONSGMONTH: TIntegerField
      FieldName = 'CONSGMONTH'
    end
    object ADOQuery2CONSGYEAR: TIntegerField
      FieldName = 'CONSGYEAR'
    end
    object ADOQuery2IGROUPID: TIntegerField
      FieldName = 'IGROUPID'
    end
    object ADOQuery2PERIG: TWideStringField
      FieldName = 'PERIG'
      Size = 50
    end
    object ADOQuery2KM: TIntegerField
      FieldName = 'KM'
    end
    object ADOQuery2MKL: TFloatField
      FieldName = 'MKL'
    end
    object ADOQuery2MKE: TFloatField
      FieldName = 'MKE'
    end
    object ADOQuery2INSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object ADOQuery2UPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object ADOQuery2INSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object ADOQuery2UPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
end
