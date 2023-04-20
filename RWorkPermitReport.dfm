inherited rptWorkPermitReport: TrptWorkPermitReport
  ShowingPreview = True
  DataSet = ADOQuery1
  Functions.DATA = (
    '0'
    '0'
    #39#39)
  Options = [FirstPageHeader]
  Page.PaperSize = Custom
  Page.Values = (
    30.000000000000000000
    2970.000000000000000000
    30.000000000000000000
    2100.000000000000000000
    100.000000000000000000
    100.000000000000000000
    0.000000000000000000)
  ReportTitle = #913#916#917#921#913' '#917#922#932#917#923#917#931#919#931' '#917#929#915#913#931#921#913#931' '
  ShowProgress = False
  PreviewWidth = 2000
  PreviewHeight = 2000
  PreviewDefaultSaveType = stPDF
  object QRBand2: TQRBand [0]
    Left = 38
    Top = 46
    Width = 718
    Height = 135
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      357.187500000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object QRDBText1: TQRDBText
      Left = 672
      Top = 12
      Width = 29
      Height = 17
      Size.Values = (
        44.979166666666670000
        1778.000000000000000000
        31.750000000000000000
        76.729166666666670000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'Number_of_Workers'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel1: TQRLabel
      Left = 12
      Top = 12
      Width = 193
      Height = 17
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        31.750000000000000000
        510.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #917#922#916#921#916#917#932#913#921' '#913#928#927' '#932#927' '#932#924#919#924#913':'
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel2: TQRLabel
      Left = 12
      Top = 36
      Width = 409
      Height = 17
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        95.250000000000000000
        1082.145833333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #931#933#925#917#929#915#917#921#927' '#919' '#917#929#915#927#923#913#914#927#931' '#928#927#933' '#920#913' '#917#922#932#917#923#917#931#917#921' '#932#919#925' '#917#929#915#913#931#921#913' '
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 552
      Top = 12
      Width = 109
      Height = 25
      Size.Values = (
        66.145833333333330000
        1460.500000000000000000
        31.750000000000000000
        288.395833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #913#929'.'#913#932#927#924#937#925' '#931#933#925#917#929#915#917#921#927#933
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 7
    end
    object QRLabel4: TQRLabel
      Left = 12
      Top = 57
      Width = 209
      Height = 17
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        150.812500000000000000
        552.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #924#927#925#913#916#913' '#919' '#928#917#929#921#927#935#919' '#917#929#915#913#931#921#913#931':'
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel5: TQRLabel
      Left = 12
      Top = 78
      Width = 89
      Height = 17
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        206.375000000000000000
        235.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #917#926#927#928#923#921#931#924#927#931':'
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel6: TQRLabel
      Left = 492
      Top = 60
      Width = 69
      Height = 16
      Size.Values = (
        42.333333333333330000
        1301.750000000000000000
        158.750000000000000000
        182.562500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #937#929#913' '#917#925#913#929#926#919#931':'
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 7
    end
    object QRLabel7: TQRLabel
      Left = 12
      Top = 117
      Width = 153
      Height = 17
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        309.562500000000000000
        404.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#917#929#921#915#929#913#934#919' '#917#929#915#913#931#921#913#931':'
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel9: TQRLabel
      Left = 492
      Top = 78
      Width = 57
      Height = 16
      Size.Values = (
        42.333333333333330000
        1301.750000000000000000
        206.375000000000000000
        150.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #937#929#913' '#923#919#926#919#931':'
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 7
    end
    object QRDBText3: TQRDBText
      Left = 228
      Top = 57
      Width = 229
      Height = 17
      Size.Values = (
        44.979166666666670000
        603.250000000000000000
        150.812500000000000000
        605.895833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #924#959#957#940#948#945'_'#917#961#947#945#963#943#945#962
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText4: TQRDBText
      Left = 570
      Top = 60
      Width = 139
      Height = 17
      Size.Values = (
        44.979166666666670000
        1508.125000000000000000
        158.750000000000000000
        367.770833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'Start_Time'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText5: TQRDBText
      Left = 572
      Top = 78
      Width = 137
      Height = 17
      Size.Values = (
        44.979166666666670000
        1513.416666666667000000
        206.375000000000000000
        362.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'End_Time'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText6: TQRDBText
      Left = 110
      Top = 79
      Width = 229
      Height = 17
      Size.Values = (
        44.979166666666670000
        291.041666666666700000
        209.020833333333300000
        605.895833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #917#958#959#960#955#953#963#956#959#962
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText7: TQRDBText
      Left = 180
      Top = 117
      Width = 565
      Height = 17
      Size.Values = (
        44.979166666666670000
        476.250000000000000000
        309.562500000000000000
        1494.895833333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #928#917#929#921#915#929#913#934#919'_'#917#929#915#913#931#921#913#931
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText50: TQRDBText
      Left = 204
      Top = 12
      Width = 337
      Height = 17
      Size.Values = (
        44.979166666666670000
        539.750000000000000000
        31.750000000000000000
        891.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'LDepartment'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText51: TQRDBText
      Left = 324
      Top = 36
      Width = 265
      Height = 17
      Size.Values = (
        44.979166666666670000
        857.250000000000000000
        95.250000000000000000
        701.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'LContractor'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel61: TQRLabel
      Left = 12
      Top = 97
      Width = 137
      Height = 17
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        256.645833333333300000
        362.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #913'P.'#915#925#937#931#932#927#928#927#921#919#931#919#931':'
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText90: TQRDBText
      Left = 156
      Top = 98
      Width = 229
      Height = 17
      Size.Values = (
        44.979166666666670000
        412.750000000000000000
        259.291666666666700000
        605.895833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#961'_'#915#957#969#963#964#959#960#959#953#951#963#951#962
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  inherited QrBFooter: TQRBand
    Top = 2329
    Height = 24
    Size.Values = (
      63.500000000000000000
      1899.708333333333000000)
    ExplicitTop = 2329
    ExplicitHeight = 24
    inherited QRSysData4: TQRSysData
      Left = 278
      Width = 161
      Size.Values = (
        44.979166666666670000
        735.541666666666700000
        21.166666666666670000
        425.979166666666700000)
      FontSize = 10
      ExplicitLeft = 278
      ExplicitWidth = 161
    end
    object QRSysData1: TQRSysData
      Left = 661
      Top = 8
      Width = 57
      Height = 17
      Size.Values = (
        44.979166666666670000
        1748.895833333333000000
        21.166666666666670000
        150.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = True
      AutoSize = False
      Color = clWhite
      Data = qrsPageNumber
      Transparent = False
      ExportAs = exptText
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  inherited QrBHeader: TQRBand
    Top = 11
    Size.Values = (
      92.604166666666670000
      1899.708333333333000000)
    ExplicitTop = 11
    inherited QRSysData5: TQRSysData
      Left = 281
      Width = 155
      Height = 23
      Size.Values = (
        60.854166666666670000
        743.479166666666700000
        21.166666666666670000
        410.104166666666700000)
      AlignToBand = False
      Data = qrsReportTitle
      Font.Charset = GREEK_CHARSET
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      FontSize = 14
      ExplicitLeft = 281
      ExplicitWidth = 155
      ExplicitHeight = 23
    end
    object QRDBText66: TQRDBText
      Left = 488
      Top = 9
      Width = 125
      Height = 19
      Size.Values = (
        50.270833333333330000
        1291.166666666667000000
        23.812500000000000000
        330.729166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'LFrom_Id_Copy'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 12
    end
    object QRDBText93: TQRDBText
      Left = 612
      Top = 7
      Width = 101
      Height = 19
      Size.Values = (
        50.270833333333330000
        1619.250000000000000000
        18.520833333333330000
        267.229166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'Issue_Date'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 12
    end
  end
  object QRSubDetail1: TQRSubDetail [3]
    Left = 38
    Top = 181
    Width = 718
    Height = 48
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      127.000000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel8: TQRLabel
      Left = 12
      Top = 4
      Width = 169
      Height = 37
      Size.Values = (
        97.895833333333330000
        31.750000000000000000
        10.583333333333330000
        447.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Caption = #915#921#913' '#932#919#925' '#917#922#932#917#923#917#931#919' '#932#919#931' '#917#929#915#913#931#921#913#931' '#913#928#913#921#932#917#921#932#913#921
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText8: TQRDBText
      Left = 192
      Top = 4
      Width = 57
      Height = 14
      Size.Values = (
        37.041666666666670000
        508.000000000000000000
        10.583333333333330000
        150.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #921#922#929#921#937#924#913
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText9: TQRDBText
      Left = 346
      Top = 19
      Width = 105
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #920#917#929#924#919'_'#917#929#915#913#931#921#913
      Size.Values = (
        37.041666666666670000
        915.458333333333300000
        50.270833333333330000
        277.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #920#917#929#924#919'_'#917#929#915#913#931#921#913
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText10: TQRDBText
      Left = 192
      Top = 21
      Width = 57
      Height = 14
      Size.Values = (
        37.041666666666670000
        508.000000000000000000
        55.562500000000000000
        150.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #917#922#931#922#913#934#919
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText11: TQRDBText
      Left = 192
      Top = 35
      Width = 57
      Height = 14
      Size.Values = (
        37.041666666666670000
        508.000000000000000000
        92.604166666666670000
        150.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #915#917#929#913#925#927#931
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText12: TQRDBText
      Left = 345
      Top = 3
      Width = 185
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #917#921#931#927#916#927#931' '#931#917' '#922#923#917#921#931#932#927' '#935#937#929#927
      Size.Values = (
        37.041666666666670000
        912.812500000000000000
        7.937500000000000000
        489.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #917#921#931#927#916#927#931'_'#931#917'_'#922#923#917#921#931#932#927'_'#935#937#929#927
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText13: TQRDBText
      Left = 348
      Top = 34
      Width = 97
      Height = 14
      HelpType = htKeyword
      Size.Values = (
        37.041666666666670000
        920.750000000000000000
        89.958333333333330000
        256.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #929#913#916#921#927#915#929#913#934#921#917#931
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText14: TQRDBText
      Left = 564
      Top = 19
      Width = 105
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #922#927#921#925#919' '#917#929#915#913#931#921#913
      Size.Values = (
        37.041666666666670000
        1492.250000000000000000
        50.270833333333330000
        277.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #922#927#921#925#919'_'#917#929#915#913#931#921#913
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object QRSubDetail2: TQRSubDetail [4]
    Left = 38
    Top = 229
    Width = 718
    Height = 71
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      187.854166666666700000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel11: TQRLabel
      Left = 8
      Top = 4
      Width = 137
      Height = 19
      Size.Values = (
        50.270833333333330000
        21.166666666666670000
        10.583333333333330000
        362.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #913') '#917#923#917#915#935#927#931' '#913#917#929#921#937#925
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText16: TQRDBText
      Left = 12
      Top = 20
      Width = 201
      Height = 17
      HelpType = htKeyword
      HelpKeyword = #913#960#945#953#964#949#943#964#945#953' '#941#955#949#947#967#959#962' '#945#949#961#943#969#957
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        52.916666666666670000
        531.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#960#945#953#964#949#943#964#945#953'_'#941#955#949#947#967#959#962'_'#945#949#961#943#969#957
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText17: TQRDBText
      Left = 228
      Top = 37
      Width = 17
      Height = 14
      HelpType = htKeyword
      HelpKeyword = 'CO :     (0 ppm)'
      Size.Values = (
        37.041666666666670000
        603.250000000000000000
        97.895833333333330000
        44.979166666666670000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'CO'
      OnPrint = QRDBText8Print
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText18: TQRDBText
      Left = 564
      Top = 37
      Width = 25
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #919'2S :      (<5 ppm)'
      Size.Values = (
        37.041666666666670000
        1492.250000000000000000
        97.895833333333330000
        66.145833333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #919'2S'
      OnPrint = QRDBText8Print
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText19: TQRDBText
      Left = 408
      Top = 37
      Width = 17
      Height = 14
      HelpType = htKeyword
      HelpKeyword = 'O2 :     (>19,5%)'
      Size.Values = (
        37.041666666666670000
        1079.500000000000000000
        97.895833333333330000
        44.979166666666670000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'O2'
      OnPrint = QRDBText8Print
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText20: TQRDBText
      Left = 36
      Top = 37
      Width = 63
      Height = 19
      HelpType = htKeyword
      HelpKeyword = #917#973#966#955#949#954#949#964#945' :     (0%)'
      Size.Values = (
        50.270833333333330000
        95.250000000000000000
        97.895833333333330000
        166.687500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #917#973#966#955#949#954#949#964#945
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText21: TQRDBText
      Left = 288
      Top = 52
      Width = 181
      Height = 17
      Size.Values = (
        44.979166666666670000
        762.000000000000000000
        137.583333333333300000
        478.895833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #935#917#921#929#921#931#932#919#931'_'#917#923#917#915#935#927
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel12: TQRLabel
      Left = 12
      Top = 52
      Width = 273
      Height = 17
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        137.583333333333300000
        722.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #927' '#935#917#921#929#921#931#932#919#931' '#928#927#933' '#917#922#913#925#917' '#932#927#925' '#917#923#917#915#935#927'  '
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel13: TQRLabel
      Left = 480
      Top = 52
      Width = 121
      Height = 17
      Size.Values = (
        44.979166666666670000
        1270.000000000000000000
        137.583333333333300000
        320.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #922#937#916#921#922#927#931' '#927#929#915#913#925#927#933
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText22: TQRDBText
      Left = 612
      Top = 52
      Width = 100
      Height = 17
      Size.Values = (
        44.979166666666670000
        1619.250000000000000000
        137.583333333333300000
        264.583333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #922#937#916#921#922#927#931'_'#927#929#915#913#925#927#933
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText62: TQRDBText
      Left = 348
      Top = 20
      Width = 265
      Height = 17
      HelpType = htKeyword
      HelpKeyword = #913#960#945#953#964#949#943#964#945#953' '#963#965#957#949#967#942#962' '#941#955#949#947#967#959#962' '#945#949#961#943#969#957
      Size.Values = (
        44.979166666666670000
        920.750000000000000000
        52.916666666666670000
        701.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#960#945#953#964#949#943#964#945#953'_'#963#965#957#949#967#942#962'_'#941#955#949#947#967#959#962'_'#945#949#961#943#969#957
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText44: TQRDBText
      Left = 245
      Top = 37
      Width = 30
      Height = 14
      HelpType = htKeyword
      HelpKeyword = 'CO (0 ppm) :'
      Size.Values = (
        37.041666666666670000
        648.229166666666700000
        97.895833333333330000
        79.375000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'CO_Value'
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText45: TQRDBText
      Left = 432
      Top = 37
      Width = 30
      Height = 14
      HelpType = htKeyword
      HelpKeyword = 'O2 (>19,5%) :'
      Size.Values = (
        37.041666666666670000
        1143.000000000000000000
        97.895833333333330000
        79.375000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'O2_Value'
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText46: TQRDBText
      Left = 588
      Top = 37
      Width = 30
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #919'2S (<5 ppm)'
      Size.Values = (
        37.041666666666670000
        1555.750000000000000000
        97.895833333333330000
        79.375000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #919'2S_Value'
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText47: TQRDBText
      Left = 108
      Top = 37
      Width = 30
      Height = 19
      HelpType = htKeyword
      HelpKeyword = #917#973#966#955#949#954#949#964#945' (0%)'
      Size.Values = (
        50.270833333333330000
        285.750000000000000000
        97.895833333333330000
        79.375000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #917#973#966#955#949#954#949#964#945'_Value'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '@Arial Unicode MS'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object QRSubDetail3: TQRSubDetail [5]
    Left = 38
    Top = 300
    Width = 718
    Height = 217
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      574.145833333333300000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel14: TQRLabel
      Left = 8
      Top = 4
      Width = 185
      Height = 19
      Size.Values = (
        50.270833333333330000
        21.166666666666670000
        10.583333333333330000
        489.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #914') '#917#923#917#915#935#927#931' '#917#915#922#913#932#913#931#932#913#931#919#931
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText26: TQRDBText
      Left = 24
      Top = 25
      Width = 177
      Height = 17
      HelpType = htKeyword
      HelpKeyword = #904#947#953#957#949' '#945#960#959#963#965#956#960#943#949#963#951' '#964#959#965' '#949#958#959#960#955#953#963#956#959#973
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        66.145833333333330000
        468.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#960#959#963#965#956#960#943#949#963#951'_'#949#958#959#960#955#953#963#956#959#973
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText27: TQRDBText
      Left = 408
      Top = 175
      Width = 313
      Height = 17
      Size.Values = (
        44.979166666666670000
        1079.500000000000000000
        463.020833333333300000
        828.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #931#965#956#960#955#951#961#969#956#945#964#953#954#940'_'#956#941#964#961#945
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel15: TQRLabel
      Left = 12
      Top = 174
      Width = 385
      Height = 17
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        460.375000000000000000
        1018.645833333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #913#960#945#953#964#959#973#957#964#945#953' '#940#955#955#945' '#963#965#956#960#955#951#961#969#956#945#964#953#954#940' '#956#941#964#961#945'. '#913#957#945#966#941#961#949#964#949
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText15: TQRDBText
      Left = 24
      Top = 109
      Width = 177
      Height = 17
      HelpType = htKeyword
      HelpKeyword = #917#947#953#957#949' '#941#955#949#967#947#959#962' '#947#953#945' '#965#947#961#940' '#949#947#955#969#946#953#963#956#941#957#945' '#945#957#940#956#949#963#945' '#963#949' '#946#940#957#949#962
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        288.395833333333300000
        468.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #933#947#961#940'_'#949#947#955#969#946#953#963#956#941#957#945'_'#946#940#957#949#962
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText23: TQRDBText
      Left = 24
      Top = 37
      Width = 177
      Height = 17
      HelpType = htKeyword
      HelpKeyword = #922#945#952#945#961#943#963#964#951#954#949' '#959' '#949#958#959#960#955#953#963#956#972#962
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        97.895833333333330000
        468.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #922#945#952#945#961#943#963#964#951#954#949'_'#949#958#959#960#955#953#963#956#972#962
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText24: TQRDBText
      Left = 24
      Top = 121
      Width = 193
      Height = 17
      HelpType = htKeyword
      HelpKeyword = #917#947#953#957#949' '#963#965#956#960#955#951#961#969#956#945#964#953#954#972#962' '#966#969#964#953#963#956#972#962
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        320.145833333333300000
        510.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #931#965#956#960#955#951#961#969#956#945#964#953#954#972#962'_'#966#969#964#953#963#956#972#962
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText25: TQRDBText
      Left = 24
      Top = 49
      Width = 161
      Height = 17
      HelpType = htKeyword
      HelpKeyword = #913#957' '#956#960#959#965#957' '#959#967#942#956#945#964#945' '#963#964#951#957' '#960#949#961#953#959#967#942' '#952#945' '#966#941#961#959#965#957' '#966#955#959#947#959#960#945#947#943#948#949#962
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        129.645833333333300000
        425.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'O'#967#942#956#945#964#945'_'#966#955#959#947#959#960#945#947#943#948#949#962
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText30: TQRDBText
      Left = 24
      Top = 61
      Width = 153
      Height = 17
      HelpType = htKeyword
      HelpKeyword = #904#947#953#957#949' '#949#954#954#941#957#969#963#951' '#964#959#965' '#949#958#959#960#955#953#963#956#959#973
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        161.395833333333300000
        404.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #917#954#954#941#957#969#963#951'_'#949#958#959#960#955#953#963#956#959#973
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText31: TQRDBText
      Left = 24
      Top = 145
      Width = 337
      Height = 17
      HelpType = htKeyword
      HelpKeyword = #904#947#953#957#949' '#945#960#959#956#972#957#969#963#951' '#964#959#965' '#949#958#959#960#955#953#963#956#959#973' ('#945#960#959#963#973#957#948#949#963#951'/'#964#973#966#955#969#956#945')'
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        383.645833333333300000
        891.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#960#959#956#972#957#969#963#951'_'#949#958#959#960#955#953#963#956#959#973
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText32: TQRDBText
      Left = 24
      Top = 73
      Width = 129
      Height = 17
      HelpType = htKeyword
      HelpKeyword = #904#947#953#957#949' '#954#945#952#945#961#953#963#956#972#962' '#945#948#961#945#957#959#960#959#943#951#963#951' '#949#958#959#960#955#953#963#956#959#973' '#956#949' '#945#964#956#972#962
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        193.145833333333300000
        341.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #922#945#952#945#961#953#963#956#972#962'_'#945#964#956#972#962
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText33: TQRDBText
      Left = 24
      Top = 97
      Width = 129
      Height = 17
      HelpType = htKeyword
      HelpKeyword = #904#947#953#957#949' '#954#945#952#945#961#953#963#956#972#962' '#945#948#961#945#957#959#960#959#943#951#963#951' '#949#958#959#960#955#953#963#956#959#973' '#956#949' '#940#950#969#964#959
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        256.645833333333300000
        341.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #922#945#952#945#961#953#963#956#972#962'_'#940#950#969#964#959
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText34: TQRDBText
      Left = 24
      Top = 85
      Width = 121
      Height = 17
      HelpType = htKeyword
      HelpKeyword = #904#947#953#957#949' '#954#945#952#945#961#953#963#956#972#962' '#945#948#961#945#957#959#960#959#943#951#963#951' '#949#958#959#960#955#953#963#956#959#973' '#956#949' '#957#949#961#972
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        224.895833333333300000
        320.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #922#945#952#945#961#953#963#956#972#962'_'#957#949#961#972
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText35: TQRDBText
      Left = 24
      Top = 157
      Width = 121
      Height = 17
      HelpType = htKeyword
      HelpKeyword = #904#947#953#957#949' '#954#940#955#965#968#951' '#964#969#957' '#965#960#959#957#972#956#969#957
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        415.395833333333300000
        320.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #922#940#955#965#968#951'_'#965#960#959#957#972#956#969#957
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel17: TQRLabel
      Left = 12
      Top = 196
      Width = 417
      Height = 17
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        518.583333333333300000
        1103.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #922#945#964#940' '#964#951#957' '#949#954#964#941#955#949#963#951' '#949#961#947#945#963#943#945#962' '#952#945' '#960#945#961#943#963#964#945#964#945#953' '#959' '#967#949#953#961#953#963#964#942#962
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText36: TQRDBText
      Left = 432
      Top = 197
      Width = 313
      Height = 17
      Size.Values = (
        44.979166666666670000
        1143.000000000000000000
        521.229166666666700000
        828.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #928#945#961#943#963#964#945#963#951'_'#967#949#953#961#953#963#964#942#962
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText29: TQRDBText
      Left = 24
      Top = 133
      Width = 177
      Height = 17
      HelpType = htKeyword
      HelpKeyword = #924#960#942#954#945#957' '#960#961#959#949#953#948#959#960#959#953#951#964#953#954#940' '#963#942#956#945#964#945
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        351.895833333333300000
        468.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #928#961#959#949#953#948#959#960#959#953#951#964#953#954#940'_'#963#942#956#945#964#945
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText136: TQRDBText
      Left = 468
      Top = 144
      Width = 49
      Height = 17
      Size.Values = (
        44.979166666666670000
        1238.250000000000000000
        381.000000000000000000
        129.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#961#953#952#956#972#962'_'#928#953#957#945#954#953#948#943#969#957
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText137: TQRDBText
      Left = 612
      Top = 144
      Width = 60
      Height = 17
      Size.Values = (
        44.979166666666670000
        1619.250000000000000000
        381.000000000000000000
        158.750000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#961#953#952#956#972#962'_'#931#967#949#948#943#959#965
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText138: TQRDBText
      Left = 384
      Top = 145
      Width = 73
      Height = 17
      HelpType = htKeyword
      HelpKeyword = #913#961#953#952#956#972#962' '#928#953#957#945#954#953#948#943#969#957
      Size.Values = (
        44.979166666666670000
        1016.000000000000000000
        383.645833333333300000
        193.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#960#959#956#972#957#969#963#951'_'#949#958#959#960#955#953#963#956#959#973
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText139: TQRDBText
      Left = 528
      Top = 145
      Width = 73
      Height = 17
      HelpType = htKeyword
      HelpKeyword = #913#961#953#952#956#972#962' '#931#967#949#948#943#959#965
      Size.Values = (
        44.979166666666670000
        1397.000000000000000000
        383.645833333333300000
        193.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#960#959#956#972#957#969#963#951'_'#949#958#959#960#955#953#963#956#959#973
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 9
    end
  end
  object QRSubDetail4: TQRSubDetail [6]
    Left = 38
    Top = 517
    Width = 718
    Height = 24
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      63.500000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel16: TQRLabel
      Left = 4
      Top = 0
      Width = 209
      Height = 18
      Size.Values = (
        47.625000000000000000
        10.583333333333330000
        0.000000000000000000
        552.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #915') '#931#933#924#928#923#919#929#937#924#913#932#921#922#927#921' '#917#923#917#915#935#927#921
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object QRSubDetail12: TQRSubDetail [7]
    Left = 38
    Top = 541
    Width = 718
    Height = 24
    Frame.DrawTop = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      63.500000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel23: TQRLabel
      Left = 10
      Top = 6
      Width = 689
      Height = 17
      Size.Values = (
        44.979166666666670000
        26.458333333333330000
        15.875000000000000000
        1822.979166666667000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 
        #915'1) '#931#965#956#960#955#951#961#974#957#949#964#945#953' '#949#940#957' '#960#961#972#954#949#953#964#945#953' '#957#945' '#967#961#951#963#953#956#959#960#959#953#951#952#949#943' '#953#954#961#943#969#956#945' '#945#960#972' '#964#959 +
        #957' '#945#953#964#942#963#945#957#964#945' '#964#951#957' '#913'.'#917'.'#917'.'
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object QRSubDetail5: TQRSubDetail [8]
    Left = 38
    Top = 721
    Width = 718
    Height = 24
    Frame.DrawTop = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      63.500000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel20: TQRLabel
      Left = 8
      Top = 4
      Width = 377
      Height = 18
      Size.Values = (
        47.625000000000000000
        21.166666666666670000
        10.583333333333330000
        997.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #915'2) '#931#965#956#960#955#951#961#974#957#949#964#945#953' '#949#940#957' '#951' '#949#961#947#945#963#943#945' '#945#960#945#953#964#949#943' '#949#954#963#954#945#966#942
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object QRSubDetail6: TQRSubDetail [9]
    Left = 38
    Top = 985
    Width = 718
    Height = 24
    Frame.DrawTop = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      63.500000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel21: TQRLabel
      Left = 8
      Top = 4
      Width = 369
      Height = 18
      Size.Values = (
        47.625000000000000000
        21.166666666666670000
        10.583333333333330000
        976.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #915'3) '#931#965#956#960#955#951#961#974#957#949#964#945#953' '#960#949#961#943' '#949#953#963#972#948#959#965' '#963#949' '#954#955#949#953#963#964#972' '#967#974#961#959
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object QRSubDetail7: TQRSubDetail [10]
    Left = 38
    Top = 1141
    Width = 718
    Height = 130
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      343.958333333333300000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    PrintBefore = False
    PrintIfEmpty = True
    object QRShape18: TQRShape
      Left = 396
      Top = 84
      Width = 313
      Height = 37
      Size.Values = (
        97.895833333333330000
        1047.750000000000000000
        222.250000000000000000
        828.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel26: TQRLabel
      Left = 8
      Top = 0
      Width = 433
      Height = 18
      Size.Values = (
        47.625000000000000000
        21.166666666666670000
        0.000000000000000000
        1145.645833333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #915'4) '#931#965#956#960#955#951#961#974#957#949#964#945#953' '#949#940#957' '#945#960#945#953#964#949#943#964#945#953' '#949#960#941#956#946#945#963#951' '#951#955#949#954#964#961#959#955#972#947#959#965
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText52: TQRDBText
      Left = 24
      Top = 18
      Width = 185
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #919#955#949#954#964#961#959#955#959#947#953#954#942' '#945#960#959#956#972#957#969#963#951
      Size.Values = (
        37.041666666666670000
        63.500000000000000000
        47.625000000000000000
        489.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #919#955#949#954#964#961#959#955#959#947#953#954#942'_'#945#960#959#956#972#957#969#963#951
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel27: TQRLabel
      Left = 31
      Top = 108
      Width = 209
      Height = 16
      Size.Values = (
        42.333333333333330000
        82.020833333333330000
        285.750000000000000000
        552.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #927#957#959#956#945#964#949#960#974#957#965#956#959' '#951#955#949#954#964#961#959#955#972#947#959#965
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText54: TQRDBText
      Left = 401
      Top = 96
      Width = 97
      Height = 14
      Size.Values = (
        37.041666666666670000
        1060.979166666667000000
        254.000000000000000000
        256.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #919#955#949#954#964#961#959#955#972#947#959#962
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText55: TQRDBText
      Left = 23
      Top = 58
      Width = 233
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #931#965#957#949#967#942#962' '#960#945#961#959#965#963#943#945' '#951#955#949#954#964#961#959#955#972#947#959#965
      Size.Values = (
        37.041666666666670000
        60.854166666666670000
        153.458333333333300000
        616.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #931#965#957#949#967#942#962'_'#960#945#961#959#965#963#943#945'_'#951#955#949#954#964#961#959#955#972#947#959#965
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText53: TQRDBText
      Left = 24
      Top = 30
      Width = 129
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #922#945#955#974#948#953#945' '#956#959#957#969#956#941#957#945
      Size.Values = (
        37.041666666666670000
        63.500000000000000000
        79.375000000000000000
        341.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #922#945#955#974#948#953#945'_'#956#959#957#969#956#941#957#945
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText64: TQRDBText
      Left = 23
      Top = 73
      Width = 129
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #934#969#964#953#963#964#953#954#940' '#963#974#956#945#964#945
      Size.Values = (
        37.041666666666670000
        60.854166666666670000
        193.145833333333300000
        341.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #934#969#964#953#963#964#953#954#940'_'#963#974#956#945#964#945
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText65: TQRDBText
      Left = 24
      Top = 43
      Width = 241
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #928#953#957#945#954#943#948#945' '#951#955#949#954#964#961#953#954#942#962' '#945#960#959#956#972#957#969#963#951#962
      Size.Values = (
        37.041666666666670000
        63.500000000000000000
        113.770833333333300000
        637.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #928#953#957#945#954#943#948#945'_'#951#955#949#954#964#961#953#954#942#962'_'#945#960#959#956#972#957#969#963#951#962
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel10: TQRLabel
      Left = 24
      Top = 87
      Width = 193
      Height = 14
      Size.Values = (
        37.041666666666670000
        63.500000000000000000
        230.187500000000000000
        510.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #913#961' '#960#953#957#945#954#953#948#943#969#957' '#945#960#959#956#972#957#969#963#951#962
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText2: TQRDBText
      Left = 226
      Top = 89
      Width = 37
      Height = 14
      Size.Values = (
        37.041666666666670000
        597.958333333333300000
        235.479166666666700000
        97.895833333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#961'_'#960#953#957#945#954#953#948#943#969#957'_'#945#960#959#956#972#957#969#963#951#962
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object QRSubDetail8: TQRSubDetail [11]
    Left = 38
    Top = 1271
    Width = 718
    Height = 36
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = QRSubDetail8BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = True
    Size.Values = (
      95.250000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel28: TQRLabel
      Left = 8
      Top = 1
      Width = 409
      Height = 18
      Size.Values = (
        47.625000000000000000
        21.166666666666670000
        2.645833333333333000
        1082.145833333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #915'5) '#931#965#956#960#955#951#961#974#952#951#954#949' '#941#957#964#965#960#959' '#949#955#941#947#967#969#957' '#947#953#945' '#952#949#961#956#941#962' '#949#961#947#945#963#943#949#962
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText56: TQRDBText
      Left = 24
      Top = 17
      Width = 177
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #904#957#964#965#960#959' '#952#949#961#956#941#962' '#949#961#947#945#963#943#949#962
      Size.Values = (
        37.041666666666670000
        63.500000000000000000
        44.979166666666670000
        468.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #904#957#964#965#960#959'_'#952#949#961#956#941#962'_'#949#961#947#945#963#943#949#962
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText57: TQRDBText
      Left = 372
      Top = 18
      Width = 73
      Height = 14
      Size.Values = (
        37.041666666666670000
        984.250000000000000000
        47.625000000000000000
        193.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#961'_'#949#957#964#973#960#959#965'_'#952#949#961#956#941#962'_'#949#961#947#945#963#943#949#962
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object QRSubDetail9: TQRSubDetail [12]
    Left = 38
    Top = 1343
    Width = 718
    Height = 36
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = QRSubDetail9BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      95.250000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel29: TQRLabel
      Left = 8
      Top = 0
      Width = 385
      Height = 18
      Size.Values = (
        47.625000000000000000
        21.166666666666670000
        0.000000000000000000
        1018.645833333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #915'6) '#931#965#956#960#955#951#961#974#952#951#954#949' '#941#957#964#965#960#959' '#949#955#941#947#967#969#957' '#947#953#945' '#961#945#948#953#959#947#961#945#966#943#949#962
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText58: TQRDBText
      Left = 24
      Top = 17
      Width = 153
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #904#957#964#965#960#959' '#961#945#948#953#959#947#961#945#966#943#949#962
      Size.Values = (
        37.041666666666670000
        63.500000000000000000
        44.979166666666670000
        404.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #904#957#964#965#960#959'_'#961#945#948#953#959#947#961#945#966#943#949#962
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText59: TQRDBText
      Left = 372
      Top = 18
      Width = 73
      Height = 14
      Size.Values = (
        37.041666666666670000
        984.250000000000000000
        47.625000000000000000
        193.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#961'_'#949#957#964#973#960#959#965'_'#961#945#948#953#959#947#961#945#966#943#949#962
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object QRSubDetail10: TQRSubDetail [13]
    Left = 38
    Top = 1415
    Width = 718
    Height = 36
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = QRSubDetail10BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      95.250000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel30: TQRLabel
      Left = 8
      Top = 0
      Width = 337
      Height = 18
      Size.Values = (
        47.625000000000000000
        21.166666666666670000
        0.000000000000000000
        891.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #915'7) '#931#965#956#960#955#951#961#974#952#951#954#949' '#941#957#964#965#960#959' '#949#955#941#947#967#969#957' '#947#953#945' '#947#949#961#945#957#972
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText60: TQRDBText
      Left = 24
      Top = 17
      Width = 113
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #904#957#964#965#960#959'_'#947#949#961#945#957#959#965
      Size.Values = (
        37.041666666666670000
        63.500000000000000000
        44.979166666666670000
        298.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #904#957#964#965#960#959'_'#947#949#961#945#957#959#965
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText61: TQRDBText
      Left = 372
      Top = 18
      Width = 73
      Height = 14
      Size.Values = (
        37.041666666666670000
        984.250000000000000000
        47.625000000000000000
        193.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#961'_'#949#957#964#973#960#959#965'_'#947#949#961#945#957#959#965
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object QRSubDetail11: TQRSubDetail [14]
    Left = 38
    Top = 1725
    Width = 718
    Height = 122
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      322.791666666666700000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel31: TQRLabel
      Left = 8
      Top = 0
      Width = 521
      Height = 18
      Size.Values = (
        47.625000000000000000
        21.166666666666670000
        0.000000000000000000
        1378.479166666667000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 
        #916') '#924#917#931#913' '#913#932#927#924#921#922#919#931' '#928#929#927#931#932#913#931#921#913#931' '#928#927#933' '#928#929#917#928#917#921' '#925#913' '#934#917#929#927#933#925' '#927#921' '#917#928#917#924#914#913#921#925#927#925#932#917 +
        #931
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText71: TQRDBText
      Left = 12
      Top = 42
      Width = 81
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #937#964#959#945#963#960#943#948#949#962
      Size.Values = (
        37.041666666666670000
        31.750000000000000000
        111.125000000000000000
        214.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #937#964#959#945#963#960#943#948#949#962
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText72: TQRDBText
      Left = 12
      Top = 18
      Width = 113
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #922#961#940#957#959#962' '#954#949#966#945#955#942#962
      Size.Values = (
        37.041666666666670000
        31.750000000000000000
        47.625000000000000000
        298.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #922#961#940#957#959#962'_'#954#949#966#945#955#942#962
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText73: TQRDBText
      Left = 528
      Top = 30
      Width = 145
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #917#955#945#963#964#953#954#940' '#965#960#959#948#942#956#945#964#945
      Size.Values = (
        37.041666666666670000
        1397.000000000000000000
        79.375000000000000000
        383.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #917#955#945#963#964#953#954#940'_'#965#960#959#948#942#956#945#964#945
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText78: TQRDBText
      Left = 12
      Top = 30
      Width = 81
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #927#956#945#964#959#965#940#955#953#945
      Size.Values = (
        37.041666666666670000
        31.750000000000000000
        79.375000000000000000
        214.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #927#956#945#964#959#965#940#955#953#945
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText79: TQRDBText
      Left = 12
      Top = 66
      Width = 233
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #913#965#964#972#957#959#956#951' '#945#957#945#960#957#949#965#963#964#953#954#942' '#963#965#963#954#949#965#942
      Size.Values = (
        39.687500000000000000
        31.750000000000000000
        174.625000000000000000
        616.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#965#964#972#957#959#956#951'_'#945#957#945#960#957#949#965#963#964#953#954#942'_'#963#965#963#954#949#965#942
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText80: TQRDBText
      Left = 288
      Top = 18
      Width = 121
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #915#940#957#964#953#945' '#949#961#947#945#963#943#945#962
      Size.Values = (
        37.041666666666670000
        762.000000000000000000
        47.625000000000000000
        320.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #915#940#957#964#953#945'_'#949#961#947#945#963#943#945#962
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText81: TQRDBText
      Left = 288
      Top = 30
      Width = 73
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #928#961#959#963#969#960#943#948#945
      Size.Values = (
        37.041666666666670000
        762.000000000000000000
        79.375000000000000000
        193.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #928#961#959#963#969#960#943#948#945
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText82: TQRDBText
      Left = 288
      Top = 42
      Width = 113
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #934#972#961#956#945' '#949#961#947#945#963#943#945#962
      Size.Values = (
        37.041666666666670000
        762.000000000000000000
        111.125000000000000000
        298.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #934#972#961#956#945'_'#949#961#947#945#963#943#945#962
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText83: TQRDBText
      Left = 12
      Top = 54
      Width = 225
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #913#960#959#966#949#973#947#949#964#949' '#949#960#945#966#942' '#956#949' '#964#959' '#948#941#961#956#945
      Size.Values = (
        37.041666666666670000
        31.750000000000000000
        142.875000000000000000
        595.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#960#959#966#949#973#947#949#964#949'_'#949#960#945#966#942'_'#956#949'_'#964#959'_'#948#941#961#956#945
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText84: TQRDBText
      Left = 528
      Top = 18
      Width = 161
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #919#955#949#954#964#961#959#955#959#947#953#954#940' '#947#940#957#964#953#945
      Size.Values = (
        37.041666666666670000
        1397.000000000000000000
        47.625000000000000000
        425.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #919#955#949#954#964#961#959#955#959#947#953#954#940'_'#947#940#957#964#953#945
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText85: TQRDBText
      Left = 528
      Top = 42
      Width = 177
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #918#974#957#951' '#945#957#940#961#964#951#963#951#962' '#963#949' '#973#968#959#962
      Size.Values = (
        37.041666666666670000
        1397.000000000000000000
        111.125000000000000000
        468.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #918#974#957#951'_'#945#957#940#961#964#951#963#951#962'_'#963#949'_'#973#968#959#962
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText86: TQRDBText
      Left = 59
      Top = 96
      Width = 650
      Height = 17
      Size.Values = (
        44.979166666666670000
        156.104166666666700000
        254.000000000000000000
        1719.791666666667000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #931#965#956#960#955#951#961#969#956#945#964#953#954#940'_'#956#941#964#961#945'_'#913#964#959#956#953#954#942#962'_'#928#961#959#963#964#945#963#943#945#962
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel37: TQRLabel
      Left = 12
      Top = 96
      Width = 33
      Height = 17
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        254.000000000000000000
        87.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #902#955#955#945
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText49: TQRDBText
      Left = 528
      Top = 54
      Width = 161
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #957#949#965#963#964#953#954#942' '#963#965#963#954#949#965#942
      Size.Values = (
        37.041666666666670000
        1397.000000000000000000
        142.875000000000000000
        425.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#957#945#960#957#949#965#963#964#953#954#942'_'#963#965#963#954#949#965#942
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText100: TQRDBText
      Left = 288
      Top = 66
      Width = 57
      Height = 14
      HelpType = htKeyword
      HelpKeyword = 'Airpack'
      Size.Values = (
        37.041666666666670000
        762.000000000000000000
        174.625000000000000000
        150.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'Airpack'
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText101: TQRDBText
      Left = 528
      Top = 66
      Width = 145
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #916#953#945#966#965#947#942#962' 10 '#955#949#960#964#974#957
      Size.Values = (
        37.041666666666670000
        1397.000000000000000000
        174.625000000000000000
        383.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #916#953#945#966#965#947#942#962'_10_'#955#949#960#964#974#957
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText102: TQRDBText
      Left = 12
      Top = 80
      Width = 305
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #928#961#959#963#969#960#953#948#940' '#959#955#959#954#955#942#961#959#965' '#928#961#959#963#974#960#959#965' '#956#949' '#966#943#955#964#961#959
      Size.Values = (
        39.687500000000000000
        31.750000000000000000
        211.666666666666700000
        806.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #928#961#959#963#969#960#953#954#940'_'#959#955#959#954#955#942#961#959#965'_'#928#961#959#963#974#960#959#965'_'#956#949'_'#966#943#955#964#961#959
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText103: TQRDBText
      Left = 528
      Top = 80
      Width = 97
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #924#940#963#954#945' '#931#954#972#957#951#962
      Size.Values = (
        37.041666666666670000
        1397.000000000000000000
        211.666666666666700000
        256.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #924#940#963#954#945'_'#931#954#972#957#951#962
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object QRSubDetail13: TQRSubDetail [15]
    Left = 38
    Top = 1847
    Width = 718
    Height = 122
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      322.791666666666700000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    PrintBefore = False
    PrintIfEmpty = True
    object QRShape3: TQRShape
      Left = 384
      Top = 60
      Width = 313
      Height = 49
      Size.Values = (
        129.645833333333300000
        1016.000000000000000000
        158.750000000000000000
        828.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRLabel33: TQRLabel
      Left = 8
      Top = 0
      Width = 385
      Height = 18
      Size.Values = (
        47.625000000000000000
        21.166666666666670000
        0.000000000000000000
        1018.645833333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #917') '#922#913#932#913#931#932#913#923#932#921#922#913' '#924#917#931#913' ('#917#921#916#921#922#913' '#931#917' '#920#917#929#924#917#931' '#917#929#915#913#931#921#917#931')'
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText63: TQRDBText
      Left = 168
      Top = 18
      Width = 25
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #937#964#959#945#963#960#943#948#949#962
      Size.Values = (
        37.041666666666670000
        444.500000000000000000
        47.625000000000000000
        66.145833333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #928#965#961#959#963#946#949#963#964#942#961#949#962
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel36: TQRLabel
      Left = 12
      Top = 18
      Width = 145
      Height = 14
      Size.Values = (
        37.041666666666670000
        31.750000000000000000
        47.625000000000000000
        383.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #931#964#959' '#967#974#961#959' '#965#960#940#961#967#959#965#957' '
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel38: TQRLabel
      Left = 204
      Top = 18
      Width = 105
      Height = 14
      Size.Values = (
        37.041666666666670000
        539.750000000000000000
        47.625000000000000000
        277.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#965#961#959#963#946#949#963#964#942#961#949#962
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel39: TQRLabel
      Left = 12
      Top = 30
      Width = 145
      Height = 14
      Size.Values = (
        37.041666666666670000
        31.750000000000000000
        79.375000000000000000
        383.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #931#964#959' '#967#974#961#959' '#965#960#940#961#967#959#965#957' '
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText87: TQRDBText
      Left = 168
      Top = 30
      Width = 25
      Height = 14
      HelpType = htKeyword
      Size.Values = (
        37.041666666666670000
        444.500000000000000000
        79.375000000000000000
        66.145833333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #924#940#957#953#954#949#962
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel40: TQRLabel
      Left = 204
      Top = 30
      Width = 57
      Height = 14
      Size.Values = (
        37.041666666666670000
        539.750000000000000000
        79.375000000000000000
        150.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #924#940#957#953#954#949#962
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel41: TQRLabel
      Left = 12
      Top = 51
      Width = 161
      Height = 14
      Size.Values = (
        37.041666666666670000
        31.750000000000000000
        134.937500000000000000
        425.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #913#955#955#945' '#956#941#963#945' '#960#965#961#972#963#946#949#963#951#962
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel42: TQRLabel
      Left = 12
      Top = 66
      Width = 121
      Height = 14
      Size.Values = (
        37.041666666666670000
        31.750000000000000000
        174.625000000000000000
        320.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #917#953#948#953#954#940' '#949#961#947#945#955#949#943#945
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText67: TQRDBText
      Left = 180
      Top = 52
      Width = 169
      Height = 14
      HelpType = htKeyword
      Size.Values = (
        37.041666666666670000
        476.250000000000000000
        137.583333333333300000
        447.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#955#955#945'_'#956#941#963#945'_'#960#965#961#972#963#946#949#963#951#962
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText68: TQRDBText
      Left = 180
      Top = 66
      Width = 169
      Height = 14
      HelpType = htKeyword
      Size.Values = (
        37.041666666666670000
        476.250000000000000000
        174.625000000000000000
        447.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #917#953#948#953#954#940'_'#949#961#947#945#955#949#943#945
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object QRSubDetail14: TQRSubDetail [16]
    Left = 38
    Top = 1969
    Width = 718
    Height = 108
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      285.750000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel34: TQRLabel
      Left = 8
      Top = 0
      Width = 169
      Height = 18
      Size.Values = (
        47.625000000000000000
        21.166666666666670000
        0.000000000000000000
        447.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #931#932') '#917#923#917#915#935#927#921' '#917#929#915#927#923#913#914#937#925
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText69: TQRDBText
      Left = 24
      Top = 37
      Width = 225
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #917#957#951#956#949#961#974#952#951#954#945#957' '#947#953#945' '#964#945' '#960#961#959#946#955#949#960#972#956#949#957#945' '#956#941#964#961#945' '#945#963#966#945#955#949#943#945#962
      Size.Values = (
        37.041666666666670000
        63.500000000000000000
        97.895833333333330000
        595.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #928#961#959#946#955#949#960#972#956#949#957#945'_'#956#941#964#961#945'_'#945#963#966#945#955#949#943#945#962
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText70: TQRDBText
      Left = 24
      Top = 22
      Width = 129
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #934#949#961#959#965#957' '#964#945' '#960#961#959#946#955#949#960#972#956#949#957#945' '#945#960#972' '#964#951#957' '#940#948#949#953#945' '#924'.'#913'.'#928
      Size.Values = (
        37.041666666666670000
        63.500000000000000000
        58.208333333333330000
        341.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #928#961#959#946#955#949#960#972#956#949#957#945'_'#924#913#928
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText74: TQRDBText
      Left = 24
      Top = 54
      Width = 121
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #917#943#957#945#953' '#949#957#951#956#949#961#969#956#941#957#959#953' '#945#960#972' '#964#959#957' '#932'.'#913' '#964#951#962' '#949#947#954#945#964#940#963#964#945#963#951#962
      Size.Values = (
        37.041666666666670000
        63.500000000000000000
        142.875000000000000000
        320.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #932#913'_'#949#947#954#945#964#940#963#964#945#963#951#962
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText89: TQRDBText
      Left = 383
      Top = 30
      Width = 650
      Height = 14
      Size.Values = (
        37.041666666666670000
        1013.354166666667000000
        79.375000000000000000
        1719.791666666667000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #917#961#947#959#948#951#947#959#962'_'#949#961#947#959#955#940#946#959#965
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRShape4: TQRShape
      Left = 384
      Top = 48
      Width = 313
      Height = 49
      Size.Values = (
        129.645833333333300000
        1016.000000000000000000
        127.000000000000000000
        828.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsRectangle
      VertAdjust = 0
    end
  end
  object QRSubDetail15: TQRSubDetail [17]
    Left = 38
    Top = 2077
    Width = 718
    Height = 156
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      412.750000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel35: TQRLabel
      Left = 8
      Top = 0
      Width = 97
      Height = 18
      Size.Values = (
        47.625000000000000000
        21.166666666666670000
        0.000000000000000000
        256.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #918') '#920#917#937#929#919#931#917#921#931
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel43: TQRLabel
      Left = 12
      Top = 30
      Width = 161
      Height = 14
      Size.Values = (
        37.041666666666670000
        31.750000000000000000
        79.375000000000000000
        425.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #927' '#949#961#947#959#948#951#947#972#962' '#964#956#942#956#945#964#959#962
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel44: TQRLabel
      Left = 12
      Top = 66
      Width = 289
      Height = 14
      Size.Values = (
        37.041666666666670000
        31.750000000000000000
        174.625000000000000000
        764.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #927' '#945#953#964#974#957' '#964#951#957' '#940#948#949#953#945' '#949#954#964#941#955#949#963#951#962' '#949#961#947#945#963#943#945#962
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel45: TQRLabel
      Left = 12
      Top = 102
      Width = 297
      Height = 14
      Size.Values = (
        37.041666666666670000
        31.750000000000000000
        269.875000000000000000
        785.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #927' '#932#949#967#957#953#954#972#962' '#913#963#966#945#955#949#943#945#962' '#964#951#962' '#949#947#954#945#964#940#963#964#945#963#951#962
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText75: TQRDBText
      Left = 11
      Top = 84
      Width = 242
      Height = 14
      Size.Values = (
        37.041666666666670000
        29.104166666666670000
        222.250000000000000000
        640.291666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #927'_'#945#953#964#969#957'_'#964#951#957'_'#945#948#949#953#945'_'#949#954#964#949#955#949#963#951#962'_'#949#961#947#945#963#953#945#962
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText76: TQRDBText
      Left = 11
      Top = 120
      Width = 242
      Height = 14
      Size.Values = (
        37.041666666666670000
        29.104166666666670000
        317.500000000000000000
        640.291666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #927'_'#932#949#967#957#953#954#959#962'_'#913#963#966#945#955#949#953#945#962'_'#964#951#962'_'#949#947#954#945#964#945#963#964#945#963#951#962
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel46: TQRLabel
      Left = 336
      Top = 6
      Width = 121
      Height = 14
      Size.Values = (
        37.041666666666670000
        889.000000000000000000
        15.875000000000000000
        320.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #904#957#945#961#958#951' '#949#961#947#945#963#953#974#957
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel47: TQRLabel
      Left = 492
      Top = 6
      Width = 209
      Height = 14
      Size.Values = (
        37.041666666666670000
        1301.750000000000000000
        15.875000000000000000
        552.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #927#955#959#954#955#942#961#969#963#951' '#942' '#955#942#958#951' '#949#961#947#945#963#953#974#957
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRShape1: TQRShape
      Left = 324
      Top = 24
      Width = 157
      Height = 37
      Size.Values = (
        97.895833333333330000
        857.250000000000000000
        63.500000000000000000
        415.395833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape2: TQRShape
      Left = 528
      Top = 24
      Width = 157
      Height = 37
      Size.Values = (
        97.895833333333330000
        1397.000000000000000000
        63.500000000000000000
        415.395833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape11: TQRShape
      Left = 324
      Top = 60
      Width = 157
      Height = 37
      Size.Values = (
        97.895833333333330000
        857.250000000000000000
        158.750000000000000000
        415.395833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape12: TQRShape
      Left = 324
      Top = 96
      Width = 157
      Height = 37
      Size.Values = (
        97.895833333333330000
        857.250000000000000000
        254.000000000000000000
        415.395833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape13: TQRShape
      Left = 528
      Top = 60
      Width = 157
      Height = 37
      Size.Values = (
        97.895833333333330000
        1397.000000000000000000
        158.750000000000000000
        415.395833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRShape14: TQRShape
      Left = 528
      Top = 96
      Width = 157
      Height = 37
      Size.Values = (
        97.895833333333330000
        1397.000000000000000000
        254.000000000000000000
        415.395833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText88: TQRDBText
      Left = 11
      Top = 46
      Width = 153
      Height = 14
      Size.Values = (
        37.041666666666670000
        29.104166666666670000
        121.708333333333300000
        404.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'LDepartment_Foreman'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object QRSubDetail16: TQRSubDetail [18]
    Left = 38
    Top = 2233
    Width = 718
    Height = 96
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      254.000000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel48: TQRLabel
      Left = 8
      Top = 0
      Width = 217
      Height = 18
      Size.Values = (
        47.625000000000000000
        21.166666666666670000
        0.000000000000000000
        574.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'H) '#913#925#913#922#923#919#931#919' '#913#916#917#921#913#931' '#917#929#915#913#931#921#913#931
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel49: TQRLabel
      Left = 12
      Top = 18
      Width = 201
      Height = 14
      Size.Values = (
        37.041666666666670000
        31.750000000000000000
        47.625000000000000000
        531.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #919' '#917#929#915#913#931#921#913' '#916#921#917#922#927#928#919' '#913#928#927' '#932#927#925
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel50: TQRLabel
      Left = 12
      Top = 42
      Width = 121
      Height = 14
      Size.Values = (
        37.041666666666670000
        31.750000000000000000
        111.125000000000000000
        320.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #923#927#915#927#931' '#913#925#913#922#923#919#931#919#931
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel51: TQRLabel
      Left = 480
      Top = 18
      Width = 33
      Height = 14
      HelpType = htKeyword
      Size.Values = (
        37.041666666666670000
        1270.000000000000000000
        47.625000000000000000
        87.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #937#929#913':'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText77: TQRDBText
      Left = 228
      Top = 18
      Width = 241
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #937#964#959#945#963#960#943#948#949#962
      Size.Values = (
        37.041666666666670000
        603.250000000000000000
        47.625000000000000000
        637.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #919'_'#917#929#915#913#931#921#913'_'#916#921#917#922#927#928#919'_'#913#928#927'_'#932#927#925
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText91: TQRDBText
      Left = 528
      Top = 18
      Width = 169
      Height = 14
      HelpType = htKeyword
      Size.Values = (
        37.041666666666670000
        1397.000000000000000000
        47.625000000000000000
        447.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #919'_'#917#929#915#913#931#921#913'_'#916#921#917#922#927#928#919'_'#937#929#913
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText92: TQRDBText
      Left = 144
      Top = 42
      Width = 241
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #937#964#959#945#963#960#943#948#949#962
      Size.Values = (
        37.041666666666670000
        381.000000000000000000
        111.125000000000000000
        637.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #923#927#915#927#931'_'#913#925#913#922#923#919#931#919#931
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText48: TQRDBText
      Left = 12
      Top = 66
      Width = 685
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #937#964#959#945#963#960#943#948#949#962
      Size.Values = (
        37.041666666666670000
        31.750000000000000000
        174.625000000000000000
        1812.395833333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #928#945#961#945#964#951#961#942#963#949#953#962
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object QRSubDetail17: TQRSubDetail [19]
    Left = 38
    Top = 565
    Width = 718
    Height = 84
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = QRSubDetail12BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      222.250000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = QRSubDetail12
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel19: TQRLabel
      Left = 12
      Top = 55
      Width = 361
      Height = 14
      Size.Values = (
        37.041666666666670000
        31.750000000000000000
        145.520833333333300000
        955.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #904#955#945#946#945' '#947#957#974#963#951' '#954#945#953' '#963#965#956#966#969#957#974'  '#959' '#945#953#964#942#963#945#962' '#964#951#957' '#913'.'#917'.'#917'.'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText37: TQRDBText
      Left = 37
      Top = 38
      Width = 113
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #913#960#945#953#964#949#943#964#945#953' '#947#957#969#956#940#964#949#965#963#951' '#945#960#972' '#964#959#957' '#945#953#964#942#963#945#957#964#945' '#964#951#957' '#913'.'#917'.'#917'.'
      Size.Values = (
        37.041666666666670000
        97.895833333333330000
        100.541666666666700000
        298.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #915#957#969#956#940#964#949#965#963#951'_'#913#917#917
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText38: TQRDBText
      Left = 252
      Top = 22
      Width = 185
      Height = 14
      Size.Values = (
        37.041666666666670000
        666.750000000000000000
        58.208333333333330000
        489.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#913'_'#946#949#946#945#943#969#963#951#962'_'#953#954#961#953#974#956#945#964#959#962
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText28: TQRDBText
      Left = 24
      Top = 7
      Width = 177
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #932#959' '#967#961#951#963#953#956#959#960#959#953#959#973#956#949#957#959' '#953#954#961#943#969#956#945' '#949#943#957#945#953' '#960#953#963#964#959#960#959#953#951#956#941#957#959
      Size.Values = (
        37.041666666666670000
        63.500000000000000000
        18.520833333333330000
        468.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #921#953#954#961#943#969#956#945'_'#960#953#963#964#959#960#959#953#951#956#941#957#959
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel18: TQRLabel
      Left = 40
      Top = 21
      Width = 193
      Height = 18
      Size.Values = (
        47.625000000000000000
        105.833333333333300000
        55.562500000000000000
        510.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #913'/'#945' '#946#949#946#945#943#969#963#951#962' '#953#954#961#953#974#956#945#964#959#962
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRShape15: TQRShape
      Left = 384
      Top = 36
      Width = 313
      Height = 37
      Size.Values = (
        97.895833333333330000
        1016.000000000000000000
        95.250000000000000000
        828.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText39: TQRDBText
      Left = 389
      Top = 54
      Width = 300
      Height = 14
      Size.Values = (
        37.041666666666670000
        1029.229166666667000000
        142.875000000000000000
        793.750000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #904#955#945#946#945'_'#947#957#974#963#951'_'#913#917#917
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object QRSubDetail18: TQRSubDetail [20]
    Left = 38
    Top = 649
    Width = 718
    Height = 72
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = QRSubDetail18BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      190.500000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = QRSubDetail12
    PrintBefore = False
    PrintIfEmpty = True
    object QRShape6: TQRShape
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 718
      Frame.Color = clRed
      Size.Values = (
        171.979166666666700000
        0.000000000000000000
        0.000000000000000000
        1899.708333333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsLeftDiagonal
      VertAdjust = 0
    end
    object QRShape5: TQRShape
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 718
      Frame.Color = clRed
      Size.Values = (
        171.979166666666700000
        0.000000000000000000
        0.000000000000000000
        1899.708333333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsRightDiagonal
      VertAdjust = 0
    end
  end
  object QRSubDetail19: TQRSubDetail [21]
    Left = 38
    Top = 745
    Width = 718
    Height = 132
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = QRSubDetail5BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      349.250000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = QRSubDetail5
    PrintBefore = False
    PrintIfEmpty = True
    object QRDBText94: TQRDBText
      Left = 24
      Top = 6
      Width = 121
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #933#960#940#961#967#959#965#957' '#965#960#972#947#949#953#959#953' '#945#947#969#947#959#943
      Size.Values = (
        37.041666666666670000
        63.500000000000000000
        15.875000000000000000
        320.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #933#960#972#947#949#953#959#953'_'#945#947#969#947#959#943
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText95: TQRDBText
      Left = 23
      Top = 35
      Width = 121
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #933#960#940#961#967#959#965#957' '#965#960#972#947#949#953#945' '#954#945#955#974#948#953#945
      Size.Values = (
        37.041666666666670000
        60.854166666666670000
        92.604166666666670000
        320.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #933#960#972#947#949#953#945'_'#954#945#955#974#948#953#945
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel52: TQRLabel
      Left = 7
      Top = 98
      Width = 377
      Height = 14
      Size.Values = (
        37.041666666666670000
        18.520833333333330000
        259.291666666666700000
        997.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #904#955#945#946#945' '#947#957#974#963#951' '#954#945#953' '#963#965#956#966#969#957#974'  '#959' '#949#961#947#959#948#951#947#972#962' '#963#965#957#964#942#961#951#963#951#962
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText97: TQRDBText
      Left = 405
      Top = 70
      Width = 225
      Height = 14
      Size.Values = (
        37.041666666666670000
        1071.562500000000000000
        185.208333333333300000
        595.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #931#965#956#960#955#951#961#969#956#945#964#953#954#940'_'#956#941#964#961#945'_'#949#954#963#954#945#966#942
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText98: TQRDBText
      Left = 24
      Top = 19
      Width = 193
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #919' '#949#954#963#954#945#966#951' '#952#945' '#947#953#957#949#953' '#956#949' '#956#951#967#945#957#953#954#945' '#956#949#963#945
      Size.Values = (
        37.041666666666670000
        63.500000000000000000
        50.270833333333330000
        510.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #917#954#963#954#945#966#951'_'#956#949'_'#956#951#967#945#957#953#954#945'_'#956#949#963#945
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText99: TQRDBText
      Left = 23
      Top = 52
      Width = 233
      Height = 14
      HelpType = htKeyword
      HelpKeyword = 
        #904#947#953#957#949' '#945#957#945#947#957#974#961#953#963#951' '#964#959#965' '#967#974#961#959#965' '#949#954#963#954#945#966#942#962' '#954#945#953' '#959#953' '#949#960#949#956#946#945#943#957#959#957#964#949#962' '#947#957#969#961#943#950#959 +
        #965#957' '#964#959#965#962' '#965#960#972#947#949#953#959#965#962' '#945#947#969#947#959#973#962
      Size.Values = (
        37.041666666666670000
        60.854166666666670000
        137.583333333333300000
        616.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#957#945#947#957#974#961#953#963#951'_'#964#959#965'_'#967#974#961#959#965'_'#949#954#963#954#945#966#942#962
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel53: TQRLabel
      Left = 6
      Top = 70
      Width = 385
      Height = 14
      Size.Values = (
        37.041666666666670000
        15.875000000000000000
        185.208333333333300000
        1018.645833333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #913#960#945#953#964#959#973#957#964#945#953' '#940#955#955#945' '#963#965#956#960#955#951#961#969#956#945#964#953#954#940' '#956#941#964#961#945'. '#913#957#945#966#941#961#949#964#949
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRShape16: TQRShape
      Left = 396
      Top = 84
      Width = 313
      Height = 37
      Size.Values = (
        97.895833333333330000
        1047.750000000000000000
        222.250000000000000000
        828.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsRectangle
      VertAdjust = 0
    end
  end
  object QRSubDetail20: TQRSubDetail [22]
    Left = 38
    Top = 877
    Width = 718
    Height = 108
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = QRSubDetail20BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      285.750000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = QRSubDetail5
    PrintBefore = False
    PrintIfEmpty = True
    object QRShape7: TQRShape
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 718
      Height = 108
      Frame.Color = clRed
      Size.Values = (
        285.750000000000000000
        0.000000000000000000
        0.000000000000000000
        1899.708333333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsLeftDiagonal
      VertAdjust = 0
    end
    object QRShape8: TQRShape
      AlignWithMargins = True
      Left = 12
      Top = 0
      Width = 718
      Height = 108
      Frame.Color = clRed
      Size.Values = (
        285.750000000000000000
        31.750000000000000000
        0.000000000000000000
        1899.708333333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsRightDiagonal
      VertAdjust = 0
    end
  end
  object QRSubDetail21: TQRSubDetail [23]
    Left = 38
    Top = 1009
    Width = 718
    Height = 72
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = QRSubDetail6BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      190.500000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = QRSubDetail6
    PrintBefore = False
    PrintIfEmpty = True
    object QRShape17: TQRShape
      Left = 396
      Top = 24
      Width = 313
      Height = 37
      Size.Values = (
        97.895833333333330000
        1047.750000000000000000
        63.500000000000000000
        828.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsRectangle
      VertAdjust = 0
    end
    object QRDBText40: TQRDBText
      Left = 24
      Top = 9
      Width = 241
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #931#965#956#960#955#951#961#974#952#951#954#949' '#964#959' '#941#957#964#965#960#959' '#949#955#941#947#967#959#965
      Size.Values = (
        37.041666666666670000
        63.500000000000000000
        23.812500000000000000
        637.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #931#965#956#960#955#951#961#974#952#951#954#949'_'#964#959'_'#941#957#964#965#960#959'_'#949#955#941#947#967#959#965
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText41: TQRDBText
      Left = 276
      Top = 10
      Width = 73
      Height = 14
      Size.Values = (
        37.041666666666670000
        730.250000000000000000
        26.458333333333330000
        193.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #913#961'_'#949#957#964#973#960#959#965'_'#954#955#949#953#963#964#959#965'_'#967#974#961#959#965
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel24: TQRLabel
      Left = 7
      Top = 41
      Width = 361
      Height = 14
      Size.Values = (
        37.041666666666670000
        18.520833333333330000
        108.479166666666700000
        955.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #904#955#945#946#945' '#947#957#974#963#951' '#954#945#953' '#963#965#956#966#969#957#974'  '#959' '#945#953#964#942#963#945#962' '#964#951#957' '#913'.'#917'.'#917'.'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText42: TQRDBText
      Left = 401
      Top = 42
      Width = 300
      Height = 14
      Size.Values = (
        37.041666666666670000
        1060.979166666667000000
        111.125000000000000000
        793.750000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #904#955#945#946#945'_'#947#957#974#963#951'_'#954#945#953'_'#963#965#956#966#969#957#974'_'#959'_'#945#953#964#942#963#945#962'_'#964#951#957'_'#913#917#917
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText43: TQRDBText
      Left = 23
      Top = 25
      Width = 225
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #904#947#953#957#949' '#956#941#964#961#951#963#951' - '#941#955#949#947#967#959#962' '#945#949#961#943#969#957' '
      Size.Values = (
        37.041666666666670000
        60.854166666666670000
        66.145833333333330000
        595.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #904#947#953#957#949'_'#956#941#964#961#951#963#951'_'#941#955#949#947#967#959#962'_'#945#949#961#943#969#957
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object QRSubDetail22: TQRSubDetail [24]
    Left = 38
    Top = 1081
    Width = 718
    Height = 60
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = QRSubDetail22BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      158.750000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = QRSubDetail21
    PrintBefore = False
    PrintIfEmpty = True
    object QRShape9: TQRShape
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 718
      Height = 60
      Frame.Color = clRed
      Size.Values = (
        158.750000000000000000
        0.000000000000000000
        0.000000000000000000
        1899.708333333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsLeftDiagonal
      VertAdjust = 0
    end
    object QRShape10: TQRShape
      AlignWithMargins = True
      Left = 0
      Top = 0
      Width = 718
      Height = 60
      Frame.Color = clRed
      Size.Values = (
        158.750000000000000000
        0.000000000000000000
        0.000000000000000000
        1899.708333333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsRightDiagonal
      VertAdjust = 0
    end
  end
  object QRSubDetail24: TQRSubDetail [25]
    Left = 38
    Top = 1557
    Width = 718
    Height = 84
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      222.250000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = QRSubDetail23
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel55: TQRLabel
      Left = 8
      Top = 0
      Width = 700
      Height = 18
      Size.Values = (
        47.625000000000000000
        21.166666666666670000
        0.000000000000000000
        1852.083333333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = 
        #915'9) '#922#943#957#948#965#957#959#953' '#945#957#945#966#959#961#953#954#940' '#956#949' '#964#951#957' '#948#961#945#963#964#951#961#953#972#964#951#964#945' '#954#945#953' '#964#959#957' '#917#958#959#960#955#953#963#956#972' ('#960 +
        '.'#967'. '#913#957#964#953#948#961#945#963#964#942#961#945#962'-'#916#959#967#949#943#959'-'#916#949#958#945#956#949#957#942'-'#917#957#945#955#955#940#954#964#951#962'-'#924#951#967#940#957#951#956#945'-'#931#969#955#942#957#974#963#949#953#962 +
        ' '#954#955#960')'
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText113: TQRDBText
      Left = 12
      Top = 30
      Width = 183
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #917#943#963#959#948#959#962' '#963#949' '#954#955#949#953#963#964#972' '#935#974#961#959
      Size.Values = (
        39.687500000000000000
        31.750000000000000000
        79.375000000000000000
        484.187500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'2_'#917#943#963#959#948#959#962'_'#963#949'_'#954#955#949#953#963#964#972'_'#935#974#961#959
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText116: TQRDBText
      Left = 504
      Top = 18
      Width = 155
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #919#955#949#954#964#961#953#954#959#943' '#922#943#957#948#965#957#959#953
      Size.Values = (
        39.687500000000000000
        1333.500000000000000000
        47.625000000000000000
        410.104166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'2_'#919#955#949#954#964#961#953#954#959#943'_'#922#943#957#948#965#957#959#953
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText120: TQRDBText
      Left = 12
      Top = 18
      Width = 120
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #928#964#974#963#951' '#945#960#972' '#973#968#959#962
      Size.Values = (
        39.687500000000000000
        31.750000000000000000
        47.625000000000000000
        317.500000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'2_'#928#964#974#963#951'_'#945#960#972'_'#973#968#959#962
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText121: TQRDBText
      Left = 276
      Top = 18
      Width = 99
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #933#968#951#955#942' '#960#943#949#963#951
      Size.Values = (
        39.687500000000000000
        730.250000000000000000
        47.625000000000000000
        261.937500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'2_'#933#968#951#955#942'_'#960#943#949#963#951
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText122: TQRDBText
      Left = 276
      Top = 30
      Width = 141
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #933#968#951#955#942' '#920#949#961#956#959#954#961#945#963#943#945
      Size.Values = (
        39.687500000000000000
        730.250000000000000000
        79.375000000000000000
        373.062500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'2_'#933#968#951#955#942'_'#920#949#961#956#959#954#961#945#963#943#945
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText123: TQRDBText
      Left = 504
      Top = 30
      Width = 99
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #929#945#948#953#959#947#961#945#966#943#945
      Size.Values = (
        39.687500000000000000
        1333.500000000000000000
        79.375000000000000000
        261.937500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'2_'#929#945#948#953#959#947#961#945#966#943#945
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText124: TQRDBText
      Left = 12
      Top = 42
      Width = 155
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #928#953#952#945#957#972#964#951#964#945' '#916#953#945#961#961#959#942#962
      Size.Values = (
        39.687500000000000000
        31.750000000000000000
        111.125000000000000000
        410.104166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'2_'#928#953#952#945#957#972#964#951#964#945'_'#916#953#945#961#961#959#942#962
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText125: TQRDBText
      Left = 276
      Top = 42
      Width = 64
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #935#951#956#953#954#940
      Size.Values = (
        39.687500000000000000
        730.250000000000000000
        111.125000000000000000
        169.333333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'2_'#935#951#956#953#954#940
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRLabel54: TQRLabel
      Left = 12
      Top = 54
      Width = 29
      Height = 15
      Size.Values = (
        39.687500000000000000
        31.750000000000000000
        142.875000000000000000
        76.729166666666670000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #902#955#955#945
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText126: TQRDBText
      Left = 60
      Top = 54
      Width = 649
      Height = 15
      HelpType = htKeyword
      Size.Values = (
        39.687500000000000000
        158.750000000000000000
        142.875000000000000000
        1717.145833333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'2_'#902#955#955#945'_'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
  end
  object QRSubDetail25: TQRSubDetail [26]
    Left = 38
    Top = 1641
    Width = 718
    Height = 84
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      222.250000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = QRSubDetail24
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel56: TQRLabel
      Left = 8
      Top = 0
      Width = 700
      Height = 18
      Size.Values = (
        47.625000000000000000
        21.166666666666670000
        0.000000000000000000
        1852.083333333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #915'10) '#922#943#957#948#965#957#959#953' '#945#957#945#966#959#961#953#954#940' '#956#949' '#964#951#957' '#924#959#957#940#948#945' - '#932#956#942#956#945
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText127: TQRDBText
      Left = 12
      Top = 30
      Width = 183
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #917#943#963#959#948#959#962' '#963#949' '#954#955#949#953#963#964#972' '#935#974#961#959
      Size.Values = (
        39.687500000000000000
        31.750000000000000000
        79.375000000000000000
        484.187500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'2_'#917#943#963#959#948#959#962'_'#963#949'_'#954#955#949#953#963#964#972'_'#935#974#961#959
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText128: TQRDBText
      Left = 564
      Top = 18
      Width = 106
      Height = 15
      HelpType = htKeyword
      HelpKeyword = 'H2S '#933#948#961#972#952#949#953#959
      Size.Values = (
        39.687500000000000000
        1492.250000000000000000
        47.625000000000000000
        280.458333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'3_H2S_'#933#948#961#972#952#949#953#959
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText129: TQRDBText
      Left = 12
      Top = 18
      Width = 169
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #924#959#957#940#948#945' '#963#949' '#955#949#953#964#959#965#961#947#949#943#945
      Size.Values = (
        39.687500000000000000
        31.750000000000000000
        47.625000000000000000
        447.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'3_'#924#959#957#940#948#945'_'#963#949'_'#955#949#953#964#959#965#961#947#949#943#945
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText130: TQRDBText
      Left = 228
      Top = 18
      Width = 274
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #933#960#972#947#949#953#949#962' '#951#955#949#954#964#961#953#954#941#962' '#947#961#945#956#956#941#962' '#965#960#972' '#964#940#963#951
      Size.Values = (
        39.687500000000000000
        603.250000000000000000
        47.625000000000000000
        724.958333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'3_'#933#960#972#947#949#953#949#962'_'#951#955#949#954#964#961#953#954#941#962'_'#947#961#945#956#956#941#962'_'#965#960#972'_'#964#940#963#951
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText131: TQRDBText
      Left = 276
      Top = 30
      Width = 78
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #917#973#966#955#949#954#964#959
      Size.Values = (
        39.687500000000000000
        730.250000000000000000
        79.375000000000000000
        206.375000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'3_'#917#973#966#955#949#954#964#959
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText133: TQRDBText
      Left = 12
      Top = 42
      Width = 232
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #928#949#961#953#959#967#942' '#932#945#958#953#957#959#956#951#956#941#957#951' '#954#945#964#940' ATEX'
      Size.Values = (
        39.687500000000000000
        31.750000000000000000
        111.125000000000000000
        613.833333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'3_'#928#949#961#953#959#967#942'_'#932#945#958#953#957#959#956#951#956#941#957#951'_'#954#945#964#940'_ATEX'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText134: TQRDBText
      Left = 276
      Top = 42
      Width = 71
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #920#972#961#965#946#959#962
      Size.Values = (
        39.687500000000000000
        730.250000000000000000
        111.125000000000000000
        187.854166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'3_'#920#972#961#965#946#959#962
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRLabel57: TQRLabel
      Left = 12
      Top = 54
      Width = 29
      Height = 15
      Size.Values = (
        39.687500000000000000
        31.750000000000000000
        142.875000000000000000
        76.729166666666670000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #902#955#955#945
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText135: TQRDBText
      Left = 60
      Top = 54
      Width = 649
      Height = 15
      HelpType = htKeyword
      Size.Values = (
        39.687500000000000000
        158.750000000000000000
        142.875000000000000000
        1717.145833333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'3_'#902#955#955#945'_'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText132: TQRDBText
      Left = 564
      Top = 30
      Width = 148
      Height = 15
      HelpType = htKeyword
      HelpKeyword = 'HC '#933#948#961#959#947#959#957#940#957#966#961#945#954#949#962
      Size.Values = (
        39.687500000000000000
        1492.250000000000000000
        79.375000000000000000
        391.583333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'3_HC_'#933#948#961#959#947#959#957#940#957#966#961#945#954#949#962
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
  end
  object QRSubDetail26: TQRSubDetail [27]
    Left = 38
    Top = 1307
    Width = 718
    Height = 36
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = QRSubDetail26BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = True
    Size.Values = (
      95.250000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = QRSubDetail8
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel58: TQRLabel
      Left = 8
      Top = 1
      Width = 409
      Height = 18
      Size.Values = (
        47.625000000000000000
        21.166666666666670000
        2.645833333333333000
        1082.145833333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #915'5) '#931#965#956#960#955#951#961#974#952#951#954#949' '#941#957#964#965#960#959' '#949#955#941#947#967#969#957' '#947#953#945' '#952#949#961#956#941#962' '#949#961#947#945#963#943#949#962
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRShape19: TQRShape
      AlignWithMargins = True
      Left = 0
      Top = 15
      Width = 718
      Height = 18
      Frame.Color = clRed
      Size.Values = (
        47.625000000000000000
        0.000000000000000000
        39.687500000000000000
        1899.708333333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsRightDiagonal
      VertAdjust = 0
    end
    object QRShape24: TQRShape
      AlignWithMargins = True
      Left = 0
      Top = 15
      Width = 718
      Height = 18
      Frame.Color = clRed
      Size.Values = (
        47.625000000000000000
        0.000000000000000000
        39.687500000000000000
        1899.708333333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsLeftDiagonal
      VertAdjust = 0
    end
  end
  object QRSubDetail27: TQRSubDetail [28]
    Left = 38
    Top = 1379
    Width = 718
    Height = 36
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = QRSubDetail27BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      95.250000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = QRSubDetail9
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel59: TQRLabel
      Left = 8
      Top = 0
      Width = 385
      Height = 18
      Size.Values = (
        47.625000000000000000
        21.166666666666670000
        0.000000000000000000
        1018.645833333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #915'6) '#931#965#956#960#955#951#961#974#952#951#954#949' '#941#957#964#965#960#959' '#949#955#941#947#967#969#957' '#947#953#945' '#961#945#948#953#959#947#961#945#966#943#949#962
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRShape20: TQRShape
      AlignWithMargins = True
      Left = 0
      Top = 15
      Width = 718
      Height = 18
      Frame.Color = clRed
      Size.Values = (
        47.625000000000000000
        0.000000000000000000
        39.687500000000000000
        1899.708333333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsRightDiagonal
      VertAdjust = 0
    end
    object QRShape23: TQRShape
      AlignWithMargins = True
      Left = 0
      Top = 15
      Width = 718
      Height = 18
      Frame.Color = clRed
      Size.Values = (
        47.625000000000000000
        0.000000000000000000
        39.687500000000000000
        1899.708333333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsLeftDiagonal
      VertAdjust = 0
    end
  end
  object QRSubDetail28: TQRSubDetail [29]
    Left = 38
    Top = 1451
    Width = 718
    Height = 36
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = QRSubDetail28BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      95.250000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = QRSubDetail10
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel60: TQRLabel
      Left = 8
      Top = 0
      Width = 337
      Height = 18
      Size.Values = (
        47.625000000000000000
        21.166666666666670000
        0.000000000000000000
        891.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #915'7) '#931#965#956#960#955#951#961#974#952#951#954#949' '#941#957#964#965#960#959' '#949#955#941#947#967#969#957' '#947#953#945' '#947#949#961#945#957#972
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRShape21: TQRShape
      AlignWithMargins = True
      Left = 0
      Top = 15
      Width = 718
      Height = 18
      Frame.Color = clRed
      Size.Values = (
        47.625000000000000000
        0.000000000000000000
        39.687500000000000000
        1899.708333333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsRightDiagonal
      VertAdjust = 0
    end
    object QRShape22: TQRShape
      AlignWithMargins = True
      Left = 0
      Top = 15
      Width = 718
      Height = 18
      Frame.Color = clRed
      Size.Values = (
        47.625000000000000000
        0.000000000000000000
        39.687500000000000000
        1899.708333333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsLeftDiagonal
      VertAdjust = 0
    end
  end
  object QRSubDetail23: TQRSubDetail [30]
    Left = 38
    Top = 1487
    Width = 718
    Height = 70
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      185.208333333333300000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = QRSubDetail10
    PrintBefore = False
    PrintIfEmpty = True
    object QRLabel22: TQRLabel
      Left = 8
      Top = 0
      Width = 700
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        0.000000000000000000
        1852.083333333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = 
        #915'8) '#922#943#957#948#965#957#959#953' '#963#967#949#964#953#954#959#943' '#956#949' '#964#951' '#916#953#949#961#947#945#963#943#945','#964#959#957' '#917#958#959#960#955#953#963#956#972' '#954#945#953' '#964#945' '#929#949#965#963#964 +
        #940' '#964#951#962' '#928#945#961#945#947#969#947#953#954#942#962' '#916#953#949#961#947#945#963#943#945#962
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText104: TQRDBText
      Left = 528
      Top = 30
      Width = 92
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #916#953#945#946#961#969#964#953#954#972
      Size.Values = (
        39.687500000000000000
        1397.000000000000000000
        79.375000000000000000
        243.416666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'1_'#916#953#945#946#961#969#964#953#954#972
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText105: TQRDBText
      Left = 12
      Top = 18
      Width = 361
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #928#949#961#953#949#967#972#956#949#957#945' '#929#949#965#963#964#940' '#964#951#962' '#916#953#949#961#947#945#963#943#945#962' '#954#945#964#940' '#964#951#957' '#923#949#953#964#959#965#961#947#943#945
      Size.Values = (
        39.687500000000000000
        31.750000000000000000
        47.625000000000000000
        955.145833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'1_'#928#949#961#953#949#967#972#956#949#957#945'_'#929#949#965#963#964#940'_'#964#951#962'_'#916#953#949#961#947#945#963#943#945#962'_'#954#945#964#940'_'#964#951#957'_'#923#949#953#964#959#965#961#947#943#945
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText106: TQRDBText
      Left = 12
      Top = 30
      Width = 127
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #928#949#961#953#941#967#959#957#964#945' '#960#961#943#957
      Size.Values = (
        39.687500000000000000
        31.750000000000000000
        79.375000000000000000
        336.020833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'1_'#928#949#961#953#941#967#959#957#964#945'_'#960#961#943#957
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText107: TQRDBText
      Left = 420
      Top = 30
      Width = 85
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #917#954#961#951#954#964#953#954#972
      Size.Values = (
        39.687500000000000000
        1111.250000000000000000
        79.375000000000000000
        224.895833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'1_'#917#954#961#951#954#964#953#954#972
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText108: TQRDBText
      Left = 588
      Top = 42
      Width = 106
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #917#957#949#961#947#972#962' '#960#961#943#957
      Size.Values = (
        39.687500000000000000
        1555.750000000000000000
        111.125000000000000000
        280.458333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'1_'#917#957#949#961#947#972#962'_'#960#961#943#957
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText109: TQRDBText
      Left = 468
      Top = 42
      Width = 106
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #917#957#949#961#947#972#962' '#964#974#961#945
      Size.Values = (
        39.687500000000000000
        1238.250000000000000000
        111.125000000000000000
        280.458333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'1_'#917#957#949#961#947#972#962'_'#964#974#961#945
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText110: TQRDBText
      Left = 168
      Top = 30
      Width = 127
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #928#949#961#953#941#967#959#957#964#945' '#964#974#961#945
      Size.Values = (
        39.687500000000000000
        444.500000000000000000
        79.375000000000000000
        336.020833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'1_'#928#949#961#953#941#967#959#957#964#945'_'#964#974#961#945
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText111: TQRDBText
      Left = 456
      Top = 18
      Width = 37
      Height = 15
      HelpType = htKeyword
      Size.Values = (
        39.687500000000000000
        1206.500000000000000000
        47.625000000000000000
        97.895833333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'1_'#928#943#949#963#951
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText112: TQRDBText
      Left = 660
      Top = 18
      Width = 37
      Height = 15
      HelpType = htKeyword
      Size.Values = (
        39.687500000000000000
        1746.250000000000000000
        47.625000000000000000
        97.895833333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'1_'#920#949#961#956#959#954#961#945#963#943#945
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRLabel25: TQRLabel
      Left = 492
      Top = 18
      Width = 162
      Height = 15
      Size.Values = (
        39.687500000000000000
        1301.750000000000000000
        47.625000000000000000
        428.625000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Kg/cm2g '#920#949#961#956#959#954#961#945#963#943#945' (T)'
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRLabel32: TQRLabel
      Left = 384
      Top = 18
      Width = 64
      Height = 15
      Size.Values = (
        39.687500000000000000
        1016.000000000000000000
        47.625000000000000000
        169.333333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#943#949#963#951' (P)'
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText114: TQRDBText
      Left = 324
      Top = 30
      Width = 78
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #917#973#966#955#949#954#964#959
      Size.Values = (
        39.687500000000000000
        857.250000000000000000
        79.375000000000000000
        206.375000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'1_'#917#973#966#955#949#954#964#959
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText115: TQRDBText
      Left = 636
      Top = 30
      Width = 64
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #916#953#945#946#961#969#964#953#954#972
      Size.Values = (
        39.687500000000000000
        1682.750000000000000000
        79.375000000000000000
        169.333333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'1_'#932#959#958#953#954#972
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText117: TQRDBText
      Left = 12
      Top = 42
      Width = 78
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #922#945#965#963#964#953#954#972
      Size.Values = (
        39.687500000000000000
        31.750000000000000000
        111.125000000000000000
        206.375000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'1_'#922#945#965#963#964#953#954#972
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText118: TQRDBText
      Left = 96
      Top = 42
      Width = 105
      Height = 14
      HelpType = htKeyword
      HelpKeyword = #917#961#949#952#953#963#964#953#954#972
      Size.Values = (
        37.041666666666670000
        254.000000000000000000
        111.125000000000000000
        277.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'1_'#917#961#949#952#953#963#964#953#954#972
      OnPrint = QRDBText8Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText119: TQRDBText
      Left = 204
      Top = 42
      Width = 225
      Height = 15
      HelpType = htKeyword
      HelpKeyword = #917#958#959#960#955#953#963#956#972#962' '#965#960#972' '#951#955#949#954#964#961#953#954#942' '#964#940#963#951
      Size.Values = (
        39.687500000000000000
        539.750000000000000000
        111.125000000000000000
        595.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = #947'1_'#917#958#959#960#955#953#963#956#972#962'_'#965#960#972'_'#951#955#949#954#964#961#953#954#942'_'#964#940#963#951
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      OnPrint = QRDBText8Print
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
  end
  inherited ADOQuery1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = ADOQuery1CalcFields
    Parameters = <
      item
        Name = 'PId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      '  FROM Work_Permit'
      'Where Id = :PId')
    Top = 4
    object ADOQuery1Id: TIntegerField
      FieldName = 'Id'
    end
    object ADOQuery1Issue_Date: TDateTimeField
      FieldName = 'Issue_Date'
    end
    object ADOQuery1Department_Id: TIntegerField
      FieldName = 'Department_Id'
    end
    object ADOQuery1Contractor_Id: TIntegerField
      FieldName = 'Contractor_Id'
    end
    object ADOQuery1Number_of_Workers: TIntegerField
      FieldName = 'Number_of_Workers'
    end
    object ADOQuery1Μονάδα_Εργασίας: TWideStringField
      FieldName = #924#959#957#940#948#945'_'#917#961#947#945#963#943#945#962
      Size = 100
    end
    object ADOQuery1Εξοπλισμος: TWideStringField
      FieldName = #917#958#959#960#955#953#963#956#959#962
      Size = 100
    end
    object ADOQuery1LDepartment: TStringField
      FieldKind = fkLookup
      FieldName = 'LDepartment'
      LookupDataSet = qryDepartments
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'Department_Id'
      Lookup = True
    end
    object ADOQuery1LContractor: TStringField
      FieldKind = fkLookup
      FieldName = 'LContractor'
      LookupDataSet = qryContractors
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'Contractor_Id'
      Lookup = True
    end
    object ADOQuery1Start_Time: TDateTimeField
      FieldName = 'Start_Time'
      DisplayFormat = 'c'
    end
    object ADOQuery1End_Time: TDateTimeField
      FieldName = 'End_Time'
      DisplayFormat = 'c'
    end
    object ADOQuery1ΠΕΡΙΓΡΑΦΗ_ΕΡΓΑΣΙΑΣ: TWideStringField
      FieldName = #928#917#929#921#915#929#913#934#919'_'#917#929#915#913#931#921#913#931
      FixedChar = True
      Size = 200
    end
    object ADOQuery1ΙΚΡΙΩΜΑ: TBooleanField
      FieldName = #921#922#929#921#937#924#913
    end
    object ADOQuery1ΕΚΣΚΑΦΗ: TBooleanField
      FieldName = #917#922#931#922#913#934#919
    end
    object ADOQuery1ΓΕΡΑΝΟΣ: TBooleanField
      FieldName = #915#917#929#913#925#927#931
    end
    object ADOQuery1ΕΙΣΟΔΟΣ_ΣΕ_ΚΛΕΙΣΤΟ_ΧΩΡΟ: TBooleanField
      FieldName = #917#921#931#927#916#927#931'_'#931#917'_'#922#923#917#921#931#932#927'_'#935#937#929#927
    end
    object ADOQuery1ΘΕΡΜΗ_ΕΡΓΑΣΙΑ: TBooleanField
      FieldName = #920#917#929#924#919'_'#917#929#915#913#931#921#913
    end
    object ADOQuery1ΡΑΔΙΟΓΡΑΦΙΕΣ: TBooleanField
      FieldName = #929#913#916#921#927#915#929#913#934#921#917#931
    end
    object ADOQuery1ΚΟΙΝΗ_ΕΡΓΑΣΙΑ: TBooleanField
      FieldName = #922#927#921#925#919'_'#917#929#915#913#931#921#913
    end
    object ADOQuery1Απαιτείται_έλεγχος_αερίων: TBooleanField
      FieldName = #913#960#945#953#964#949#943#964#945#953'_'#941#955#949#947#967#959#962'_'#945#949#961#943#969#957
    end
    object ADOQuery1Εύφλεκετα: TBooleanField
      FieldName = #917#973#966#955#949#954#949#964#945
    end
    object ADOQuery1Η2S: TBooleanField
      FieldName = #919'2S'
    end
    object ADOQuery1CO: TBooleanField
      FieldName = 'CO'
    end
    object ADOQuery1O2: TBooleanField
      FieldName = 'O2'
    end
    object ADOQuery1ΧΕΙΡΙΣΤΗΣ_ΕΛΕΓΧΟ: TWideStringField
      FieldName = #935#917#921#929#921#931#932#919#931'_'#917#923#917#915#935#927
      FixedChar = True
      Size = 50
    end
    object ADOQuery1ΚΩΔΙΚΟΣ_ΟΡΓΑΝΟΥ: TWideStringField
      FieldName = #922#937#916#921#922#927#931'_'#927#929#915#913#925#927#933
      FixedChar = True
      Size = 50
    end
    object ADOQuery1Αποσυμπίεση_εξοπλισμού: TBooleanField
      FieldName = #913#960#959#963#965#956#960#943#949#963#951'_'#949#958#959#960#955#953#963#956#959#973
    end
    object ADOQuery1Υγρά_εγλωβισμένα_βάνες: TBooleanField
      FieldName = #933#947#961#940'_'#949#947#955#969#946#953#963#956#941#957#945'_'#946#940#957#949#962
    end
    object ADOQuery1Καθαρίστηκε_εξοπλισμός: TBooleanField
      FieldName = #922#945#952#945#961#943#963#964#951#954#949'_'#949#958#959#960#955#953#963#956#972#962
    end
    object ADOQuery1Συμπληρωματικός_φωτισμός: TBooleanField
      FieldName = #931#965#956#960#955#951#961#969#956#945#964#953#954#972#962'_'#966#969#964#953#963#956#972#962
    end
    object ADOQuery1Oχήματα_φλογοπαγίδες: TBooleanField
      FieldName = 'O'#967#942#956#945#964#945'_'#966#955#959#947#959#960#945#947#943#948#949#962
    end
    object ADOQuery1Προειδοποιητικά_σήματα: TBooleanField
      FieldName = #928#961#959#949#953#948#959#960#959#953#951#964#953#954#940'_'#963#942#956#945#964#945
    end
    object ADOQuery1Εκκένωση_εξοπλισμού: TBooleanField
      FieldName = #917#954#954#941#957#969#963#951'_'#949#958#959#960#955#953#963#956#959#973
    end
    object ADOQuery1Απομόνωση_εξοπλισμού: TBooleanField
      FieldName = #913#960#959#956#972#957#969#963#951'_'#949#958#959#960#955#953#963#956#959#973
    end
    object ADOQuery1Καθαρισμός_ατμός: TBooleanField
      FieldName = #922#945#952#945#961#953#963#956#972#962'_'#945#964#956#972#962
    end
    object ADOQuery1Καθαρισμός_άζωτο: TBooleanField
      FieldName = #922#945#952#945#961#953#963#956#972#962'_'#940#950#969#964#959
    end
    object ADOQuery1Καθαρισμός_νερό: TBooleanField
      FieldName = #922#945#952#945#961#953#963#956#972#962'_'#957#949#961#972
    end
    object ADOQuery1Κάλυψη_υπονόμων: TBooleanField
      FieldName = #922#940#955#965#968#951'_'#965#960#959#957#972#956#969#957
    end
    object ADOQuery1Συμπληρωματικά_μέτρα: TWideStringField
      FieldName = #931#965#956#960#955#951#961#969#956#945#964#953#954#940'_'#956#941#964#961#945
      FixedChar = True
      Size = 100
    end
    object ADOQuery1Παρίσταση_χειριστής: TWideStringField
      FieldName = #928#945#961#943#963#964#945#963#951'_'#967#949#953#961#953#963#964#942#962
      FixedChar = True
      Size = 50
    end
    object ADOQuery1Ιικρίωμα_πιστοποιημένο: TBooleanField
      FieldName = #921#953#954#961#943#969#956#945'_'#960#953#963#964#959#960#959#953#951#956#941#957#959
    end
    object ADOQuery1Γνωμάτευση_ΑΕΕ: TBooleanField
      FieldName = #915#957#969#956#940#964#949#965#963#951'_'#913#917#917
    end
    object ADOQuery1ΑΑ_βεβαίωσης_ικριώματος: TWideStringField
      FieldName = #913#913'_'#946#949#946#945#943#969#963#951#962'_'#953#954#961#953#974#956#945#964#959#962
      FixedChar = True
      Size = 50
    end
    object ADOQuery1Έλαβα_γνώση_ΑΕΕ: TWideStringField
      FieldName = #904#955#945#946#945'_'#947#957#974#963#951'_'#913#917#917
      FixedChar = True
      Size = 100
    end
    object ADOQuery1Υπόγειοι_αγωγοί: TBooleanField
      FieldName = #933#960#972#947#949#953#959#953'_'#945#947#969#947#959#943
    end
    object ADOQuery1Υπόγεια_καλώδια: TBooleanField
      FieldName = #933#960#972#947#949#953#945'_'#954#945#955#974#948#953#945
    end
    object ADOQuery1Εκσκαφη_με_μηχανικα_μεσα: TBooleanField
      FieldName = #917#954#963#954#945#966#951'_'#956#949'_'#956#951#967#945#957#953#954#945'_'#956#949#963#945
    end
    object ADOQuery1Αναγνώριση_του_χώρου_εκσκαφής: TBooleanField
      FieldName = #913#957#945#947#957#974#961#953#963#951'_'#964#959#965'_'#967#974#961#959#965'_'#949#954#963#954#945#966#942#962
    end
    object ADOQuery1Συμπληρωματικά_μέτρα_εκσκαφή: TWideStringField
      FieldName = #931#965#956#960#955#951#961#969#956#945#964#953#954#940'_'#956#941#964#961#945'_'#949#954#963#954#945#966#942
      FixedChar = True
      Size = 100
    end
    object ADOQuery1Συμπληρώθηκε_το_έντυπο_ελέγχου: TBooleanField
      FieldName = #931#965#956#960#955#951#961#974#952#951#954#949'_'#964#959'_'#941#957#964#965#960#959'_'#949#955#941#947#967#959#965
    end
    object ADOQuery1Αρ_εντύπου_κλειστου_χώρου: TWideStringField
      FieldName = #913#961'_'#949#957#964#973#960#959#965'_'#954#955#949#953#963#964#959#965'_'#967#974#961#959#965
      FixedChar = True
      Size = 10
    end
    object ADOQuery1Έγινε_μέτρηση_έλεγχος_αερίων: TBooleanField
      FieldName = #904#947#953#957#949'_'#956#941#964#961#951#963#951'_'#941#955#949#947#967#959#962'_'#945#949#961#943#969#957
    end
    object ADOQuery1Έλαβα_γνώση_και_συμφωνώ_ο_αιτήσας_την_ΑΕΕ: TWideStringField
      FieldName = #904#955#945#946#945'_'#947#957#974#963#951'_'#954#945#953'_'#963#965#956#966#969#957#974'_'#959'_'#945#953#964#942#963#945#962'_'#964#951#957'_'#913#917#917
      FixedChar = True
      Size = 50
    end
    object ADOQuery1Ηλεκτρολογική_απομόνωση: TBooleanField
      FieldName = #919#955#949#954#964#961#959#955#959#947#953#954#942'_'#945#960#959#956#972#957#969#963#951
    end
    object ADOQuery1Συνεχής_παρουσία_ηλεκτρολόγου: TBooleanField
      FieldName = #931#965#957#949#967#942#962'_'#960#945#961#959#965#963#943#945'_'#951#955#949#954#964#961#959#955#972#947#959#965
    end
    object ADOQuery1Καλώδια_μονωμένα: TBooleanField
      FieldName = #922#945#955#974#948#953#945'_'#956#959#957#969#956#941#957#945
    end
    object ADOQuery1Φωτιστικά_σώματα: TBooleanField
      FieldName = #934#969#964#953#963#964#953#954#940'_'#963#974#956#945#964#945
    end
    object ADOQuery1Πινακίδα_ηλεκτρικής_απομόνωσης: TBooleanField
      FieldName = #928#953#957#945#954#943#948#945'_'#951#955#949#954#964#961#953#954#942#962'_'#945#960#959#956#972#957#969#963#951#962
    end
    object ADOQuery1Αρ_πινακιδίων_απομόνωσης: TIntegerField
      FieldName = #913#961'_'#960#953#957#945#954#953#948#943#969#957'_'#945#960#959#956#972#957#969#963#951#962
    end
    object ADOQuery1Ηλεκτρολόγος: TWideStringField
      FieldName = #919#955#949#954#964#961#959#955#972#947#959#962
      FixedChar = True
      Size = 100
    end
    object ADOQuery1Έντυπο_θερμές_εργασίες: TBooleanField
      FieldName = #904#957#964#965#960#959'_'#952#949#961#956#941#962'_'#949#961#947#945#963#943#949#962
    end
    object ADOQuery1Αρ_εντύπου_θερμές_εργασίες: TWideStringField
      FieldName = #913#961'_'#949#957#964#973#960#959#965'_'#952#949#961#956#941#962'_'#949#961#947#945#963#943#949#962
      FixedChar = True
      Size = 10
    end
    object ADOQuery1Έντυπο_ραδιογραφίες: TBooleanField
      FieldName = #904#957#964#965#960#959'_'#961#945#948#953#959#947#961#945#966#943#949#962
    end
    object ADOQuery1Αρ_εντύπου_ραδιογραφίες: TWideStringField
      FieldName = #913#961'_'#949#957#964#973#960#959#965'_'#961#945#948#953#959#947#961#945#966#943#949#962
      FixedChar = True
      Size = 10
    end
    object ADOQuery1Κράνος_κεφαλής: TBooleanField
      FieldName = #922#961#940#957#959#962'_'#954#949#966#945#955#942#962
    end
    object ADOQuery1Γάντια_εργασίας: TBooleanField
      FieldName = #915#940#957#964#953#945'_'#949#961#947#945#963#943#945#962
    end
    object ADOQuery1Ηλεκτρολογικά_γάντια: TBooleanField
      FieldName = #919#955#949#954#964#961#959#955#959#947#953#954#940'_'#947#940#957#964#953#945
    end
    object ADOQuery1Οματουάλια: TBooleanField
      FieldName = #927#956#945#964#959#965#940#955#953#945
    end
    object ADOQuery1Προσωπίδα: TBooleanField
      FieldName = #928#961#959#963#969#960#943#948#945
    end
    object ADOQuery1Ελαστικά_υποδήματα: TBooleanField
      FieldName = #917#955#945#963#964#953#954#940'_'#965#960#959#948#942#956#945#964#945
    end
    object ADOQuery1Ωτοασπίδες: TBooleanField
      FieldName = #937#964#959#945#963#960#943#948#949#962
    end
    object ADOQuery1Φόρμα_εργασίας: TBooleanField
      FieldName = #934#972#961#956#945'_'#949#961#947#945#963#943#945#962
    end
    object ADOQuery1Ζώνη_ανάρτησης_σε_ύψος: TBooleanField
      FieldName = #918#974#957#951'_'#945#957#940#961#964#951#963#951#962'_'#963#949'_'#973#968#959#962
    end
    object ADOQuery1Αναπνευστική_συσκευή: TBooleanField
      FieldName = #913#957#945#960#957#949#965#963#964#953#954#942'_'#963#965#963#954#949#965#942
    end
    object ADOQuery1Αποφεύγετε_επαφή_με_το_δέρμα: TBooleanField
      FieldName = #913#960#959#966#949#973#947#949#964#949'_'#949#960#945#966#942'_'#956#949'_'#964#959'_'#948#941#961#956#945
    end
    object ADOQuery1Συμπληρωματικά_μέτρα_Ατομικής_Προστασίας: TWideStringField
      FieldName = #931#965#956#960#955#951#961#969#956#945#964#953#954#940'_'#956#941#964#961#945'_'#913#964#959#956#953#954#942#962'_'#928#961#959#963#964#945#963#943#945#962
      FixedChar = True
      Size = 100
    end
    object ADOQuery1Πυροσβεστήρες: TIntegerField
      FieldName = #928#965#961#959#963#946#949#963#964#942#961#949#962
    end
    object ADOQuery1Μάνικες: TIntegerField
      FieldName = #924#940#957#953#954#949#962
    end
    object ADOQuery1Αλλα_μέσα_πυρόσβεσης: TWideStringField
      FieldName = #913#955#955#945'_'#956#941#963#945'_'#960#965#961#972#963#946#949#963#951#962
      FixedChar = True
      Size = 100
    end
    object ADOQuery1Ειδικά_εργαλεία: TWideStringField
      FieldName = #917#953#948#953#954#940'_'#949#961#947#945#955#949#943#945
      FixedChar = True
      Size = 100
    end
    object ADOQuery1Εργοδηγος_τμήματος: TWideStringField
      FieldName = #917#961#947#959#948#951#947#959#962'_'#964#956#942#956#945#964#959#962
      FixedChar = True
      Size = 100
    end
    object ADOQuery1Προβλεπόμενα_ΜΑΠ: TBooleanField
      FieldName = #928#961#959#946#955#949#960#972#956#949#957#945'_'#924#913#928
    end
    object ADOQuery1Προβλεπόμενα_μέτρα_ασφαλείας: TBooleanField
      FieldName = #928#961#959#946#955#949#960#972#956#949#957#945'_'#956#941#964#961#945'_'#945#963#966#945#955#949#943#945#962
    end
    object ADOQuery1ΤΑ_εγκατάστασης: TBooleanField
      FieldName = #932#913'_'#949#947#954#945#964#940#963#964#945#963#951#962
    end
    object ADOQuery1Η_ΕΡΓΑΣΙΑ_ΔΙΕΚΟΠΗ_ΑΠΟ_ΤΟΝ: TWideStringField
      FieldName = #919'_'#917#929#915#913#931#921#913'_'#916#921#917#922#927#928#919'_'#913#928#927'_'#932#927#925
      FixedChar = True
      Size = 50
    end
    object ADOQuery1Η_ΕΡΓΑΣΙΑ_ΔΙΕΚΟΠΗ_ΩΡΑ: TWideStringField
      FieldName = #919'_'#917#929#915#913#931#921#913'_'#916#921#917#922#927#928#919'_'#937#929#913
      FixedChar = True
      Size = 10
    end
    object ADOQuery1ΛΟΓΟΣ_ΑΝΑΚΛΗΣΗΣ: TWideStringField
      FieldName = #923#927#915#927#931'_'#913#925#913#922#923#919#931#919#931
      FixedChar = True
      Size = 150
    end
    object ADOQuery1InsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object ADOQuery1InsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object ADOQuery1Εύφλεκετα_Value: TFloatField
      FieldName = #917#973#966#955#949#954#949#964#945'_Value'
    end
    object ADOQuery1Η2S_Value: TFloatField
      FieldName = #919'2S_Value'
    end
    object ADOQuery1CO_Value: TFloatField
      FieldName = 'CO_Value'
    end
    object ADOQuery1O2_Value: TFloatField
      FieldName = 'O2_Value'
    end
    object ADOQuery1Έντυπο_γερανου: TBooleanField
      FieldName = #904#957#964#965#960#959'_'#947#949#961#945#957#959#965
    end
    object ADOQuery1Αρ_εντύπου_γερανου: TWideStringField
      FieldName = #913#961'_'#949#957#964#973#960#959#965'_'#947#949#961#945#957#959#965
      FixedChar = True
      Size = 10
    end
    object ADOQuery1Foreman_Id: TIntegerField
      FieldName = 'Foreman_Id'
    end
    object ADOQuery1Ο_αιτων_την_αδεια_εκτελεσης_εργασιας: TWideStringField
      FieldName = #927'_'#945#953#964#969#957'_'#964#951#957'_'#945#948#949#953#945'_'#949#954#964#949#955#949#963#951#962'_'#949#961#947#945#963#953#945#962
      FixedChar = True
      Size = 100
    end
    object ADOQuery1Ο_Τεχνικος_Ασφαλειας_της_εγκαταστασης: TWideStringField
      FieldName = #927'_'#932#949#967#957#953#954#959#962'_'#913#963#966#945#955#949#953#945#962'_'#964#951#962'_'#949#947#954#945#964#945#963#964#945#963#951#962
      FixedChar = True
      Size = 100
    end
    object ADOQuery1Εγκρίση_ΤΑ_Υπερ: TBooleanField
      FieldName = #917#947#954#961#943#963#951'_'#932#913'_'#933#960#949#961
    end
    object ADOQuery1FullFilled: TBooleanField
      FieldName = 'FullFilled'
    end
    object ADOQuery1FullFilledDT: TDateTimeField
      FieldName = 'FullFilledDT'
    end
    object ADOQuery1FullFilledUsr: TIntegerField
      FieldName = 'FullFilledUsr'
    end
    object ADOQuery1FullFilledCancel: TBooleanField
      FieldName = 'FullFilledCancel'
    end
    object ADOQuery1Απαιτείται_συνεχής_έλεγχος_αερίων: TBooleanField
      FieldName = #913#960#945#953#964#949#943#964#945#953'_'#963#965#957#949#967#942#962'_'#941#955#949#947#967#959#962'_'#945#949#961#943#969#957
    end
    object ADOQuery1Εργοδηγος_εργολάβου: TWideStringField
      FieldName = #917#961#947#959#948#951#947#959#962'_'#949#961#947#959#955#940#946#959#965
      FixedChar = True
      Size = 50
    end
    object ADOQuery1Αυτόνομη_αναπνευστική_συσκευή: TBooleanField
      FieldName = #913#965#964#972#957#959#956#951'_'#945#957#945#960#957#949#965#963#964#953#954#942'_'#963#965#963#954#949#965#942
    end
    object ADOQuery1Airpack: TBooleanField
      FieldName = 'Airpack'
    end
    object ADOQuery1Διαφυγής_10_λεπτών: TBooleanField
      FieldName = #916#953#945#966#965#947#942#962'_10_'#955#949#960#964#974#957
    end
    object ADOQuery1Προσωπικά_ολοκλήρου_Προσώπου_με_φίλτρο: TBooleanField
      FieldName = #928#961#959#963#969#960#953#954#940'_'#959#955#959#954#955#942#961#959#965'_'#928#961#959#963#974#960#959#965'_'#956#949'_'#966#943#955#964#961#959
    end
    object ADOQuery1Μάσκα_Σκόνης: TBooleanField
      FieldName = #924#940#963#954#945'_'#931#954#972#957#951#962
    end
    object ADOQuery1Παρατηρήσεις: TWideStringField
      FieldName = #928#945#961#945#964#951#961#942#963#949#953#962
      Size = 300
    end
    object ADOQuery1γ1_Περιέχοντα_τώρα: TBooleanField
      FieldName = #947'1_'#928#949#961#953#941#967#959#957#964#945'_'#964#974#961#945
    end
    object ADOQuery1γ1_Περιέχοντα_πρίν: TBooleanField
      FieldName = #947'1_'#928#949#961#953#941#967#959#957#964#945'_'#960#961#943#957
    end
    object ADOQuery1γ1_Εύφλεκτο: TBooleanField
      FieldName = #947'1_'#917#973#966#955#949#954#964#959
    end
    object ADOQuery1γ1_Εκρηκτικό: TBooleanField
      FieldName = #947'1_'#917#954#961#951#954#964#953#954#972
    end
    object ADOQuery1γ1_Διαβρωτικό: TBooleanField
      FieldName = #947'1_'#916#953#945#946#961#969#964#953#954#972
    end
    object ADOQuery1γ1_Τοξικό: TBooleanField
      FieldName = #947'1_'#932#959#958#953#954#972
    end
    object ADOQuery1γ1_Καυστικό: TBooleanField
      FieldName = #947'1_'#922#945#965#963#964#953#954#972
    end
    object ADOQuery1γ1_Ερεθιστικό: TBooleanField
      FieldName = #947'1_'#917#961#949#952#953#963#964#953#954#972
    end
    object ADOQuery1γ1_Εξοπλισμός_υπό_ηλεκτρική_τάση: TBooleanField
      FieldName = #947'1_'#917#958#959#960#955#953#963#956#972#962'_'#965#960#972'_'#951#955#949#954#964#961#953#954#942'_'#964#940#963#951
    end
    object ADOQuery1γ1_Ενεργός_τώρα: TBooleanField
      FieldName = #947'1_'#917#957#949#961#947#972#962'_'#964#974#961#945
    end
    object ADOQuery1γ1_Ενεργός_πρίν: TBooleanField
      FieldName = #947'1_'#917#957#949#961#947#972#962'_'#960#961#943#957
    end
    object ADOQuery1γ2_Πτώση_από_ύψος: TBooleanField
      FieldName = #947'2_'#928#964#974#963#951'_'#945#960#972'_'#973#968#959#962
    end
    object ADOQuery1γ2_Υψηλή_πίεση: TBooleanField
      FieldName = #947'2_'#933#968#951#955#942'_'#960#943#949#963#951
    end
    object ADOQuery1γ2_Ηλεκτρικοί_Κίνδυνοι: TBooleanField
      FieldName = #947'2_'#919#955#949#954#964#961#953#954#959#943'_'#922#943#957#948#965#957#959#953
    end
    object ADOQuery1γ2_Είσοδος_σε_κλειστό_Χώρο: TBooleanField
      FieldName = #947'2_'#917#943#963#959#948#959#962'_'#963#949'_'#954#955#949#953#963#964#972'_'#935#974#961#959
    end
    object ADOQuery1γ2_Υψηλή_Θερμοκρασία: TBooleanField
      FieldName = #947'2_'#933#968#951#955#942'_'#920#949#961#956#959#954#961#945#963#943#945
    end
    object ADOQuery1γ2_Ραδιογραφία: TBooleanField
      FieldName = #947'2_'#929#945#948#953#959#947#961#945#966#943#945
    end
    object ADOQuery1γ2_Πιθανότητα_Διαρροής: TBooleanField
      FieldName = #947'2_'#928#953#952#945#957#972#964#951#964#945'_'#916#953#945#961#961#959#942#962
    end
    object ADOQuery1γ2_Χημικά: TBooleanField
      FieldName = #947'2_'#935#951#956#953#954#940
    end
    object ADOQuery1γ2_Άλλα_: TWideStringField
      FieldName = #947'2_'#902#955#955#945'_'
      Size = 100
    end
    object ADOQuery1γ3_Μονάδα_σε_λειτουργεία: TBooleanField
      FieldName = #947'3_'#924#959#957#940#948#945'_'#963#949'_'#955#949#953#964#959#965#961#947#949#943#945
    end
    object ADOQuery1γ3_Υπόγειες_ηλεκτρικές_γραμμές_υπό_τάση: TBooleanField
      FieldName = #947'3_'#933#960#972#947#949#953#949#962'_'#951#955#949#954#964#961#953#954#941#962'_'#947#961#945#956#956#941#962'_'#965#960#972'_'#964#940#963#951
    end
    object ADOQuery1γ3_H2S_Υδρόθειο: TBooleanField
      FieldName = #947'3_H2S_'#933#948#961#972#952#949#953#959
    end
    object ADOQuery1γ3_HC_Υδρογονάνφρακες: TBooleanField
      FieldName = #947'3_HC_'#933#948#961#959#947#959#957#940#957#966#961#945#954#949#962
    end
    object ADOQuery1γ3_Παράλληλες_Εργασίες_SIMOPS: TBooleanField
      FieldName = #947'3_'#928#945#961#940#955#955#951#955#949#962'_'#917#961#947#945#963#943#949#962'_SIMOPS'
    end
    object ADOQuery1γ3_Εύφλεκτο: TBooleanField
      FieldName = #947'3_'#917#973#966#955#949#954#964#959
    end
    object ADOQuery1γ3_Περιοχή_Ταξινομημένη_κατά_ATEX: TBooleanField
      FieldName = #947'3_'#928#949#961#953#959#967#942'_'#932#945#958#953#957#959#956#951#956#941#957#951'_'#954#945#964#940'_ATEX'
    end
    object ADOQuery1γ3_Θόρυβος: TBooleanField
      FieldName = #947'3_'#920#972#961#965#946#959#962
    end
    object ADOQuery1γ3_Άλλα_: TWideStringField
      FieldName = #947'3_'#902#955#955#945'_'
      Size = 100
    end
    object ADOQuery1γ1_Περιεχόμενα_Ρευστά_της_Διεργασίας_κατά_την_Λειτουργία: TBooleanField
      FieldName = #947'1_'#928#949#961#953#949#967#972#956#949#957#945'_'#929#949#965#963#964#940'_'#964#951#962'_'#916#953#949#961#947#945#963#943#945#962'_'#954#945#964#940'_'#964#951#957'_'#923#949#953#964#959#965#961#947#943#945
    end
    object ADOQuery1γ1_Πίεση: TFloatField
      FieldName = #947'1_'#928#943#949#963#951
    end
    object ADOQuery1γ1_Θερμοκρασία: TFloatField
      FieldName = #947'1_'#920#949#961#956#959#954#961#945#963#943#945
    end
    object ADOQuery1Αριθμός_Πινακιδίων: TWideStringField
      FieldName = #913#961#953#952#956#972#962'_'#928#953#957#945#954#953#948#943#969#957
      Size = 10
    end
    object ADOQuery1Αριθμός_Σχεδίου: TWideStringField
      FieldName = #913#961#953#952#956#972#962'_'#931#967#949#948#943#959#965
      Size = 10
    end
    object ADOQuery1LDepartment_Foreman: TStringField
      FieldKind = fkLookup
      FieldName = 'LDepartment_Foreman'
      LookupDataSet = qryDepartment_Foremen
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'Department_Foreman_Id'
      Lookup = True
    end
    object ADOQuery1Department_Foreman_Id: TIntegerField
      FieldName = 'Department_Foreman_Id'
    end
    object ADOQuery1From_Id_Copy: TIntegerField
      FieldName = 'From_Id_Copy'
    end
    object ADOQuery1Visible_Till: TDateTimeField
      FieldName = 'Visible_Till'
    end
    object ADOQuery1Deleted: TBooleanField
      FieldName = 'Deleted'
    end
    object ADOQuery1DelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object ADOQuery1DelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object ADOQuery1Αρ_Γνωστοποιησης: TWideStringField
      FieldName = #913#961'_'#915#957#969#963#964#959#960#959#953#951#963#951#962
    end
    object ADOQuery1LFrom_Id_Copy: TStringField
      FieldKind = fkCalculated
      FieldName = 'LFrom_Id_Copy'
      Calculated = True
    end
    object ADOQuery1WorkStopped: TBooleanField
      FieldName = 'WorkStopped'
    end
    object ADOQuery1WorkStoppedUsr: TIntegerField
      FieldName = 'WorkStoppedUsr'
    end
    object ADOQuery1WorkStoppedDT: TDateTimeField
      FieldName = 'WorkStoppedDT'
    end
  end
  inherited QRRTFFilter1: TQRRTFFilter
    Left = 768
    Top = 4
  end
  inherited QRWMFFilter1: TQRWMFFilter
    Left = 324
    Top = 4
  end
  inherited QRPDFFilter1: TQRPDFFilter
    Left = 252
    Top = 65528
  end
  inherited QRXMLSFilter1: TQRXMLSFilter
    Left = 780
    Top = 124
  end
  inherited QRXMLSSFilter1: TQRXMLSSFilter
    Left = 772
    Top = 196
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 72
    Top = 12
  end
  object qryContractors: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Contractors')
    Left = 764
    Top = 92
    object qryContractorsid: TIntegerField
      FieldName = 'id'
    end
    object qryContractorsName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object qryContractorsCompany: TWideStringField
      FieldName = 'Company'
      Size = 100
    end
    object qryContractorsVAT: TWideStringField
      FieldName = 'VAT'
      FixedChar = True
      Size = 10
    end
    object qryContractorsInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryContractorsInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryContractorsNotes: TWideStringField
      FieldName = 'Notes'
      Size = 200
    end
  end
  object dtsContractors: TDataSource
    AutoEdit = False
    DataSet = qryContractors
    Left = 776
    Top = 248
  end
  object qryDepartments: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Departments')
    Left = 764
    Top = 44
    object qryDepartmentsid: TIntegerField
      FieldName = 'id'
    end
    object qryDepartmentsName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object qryDepartment_Foremen: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Department_Foremen')
    Left = 764
    Top = 308
    object IntegerField1: TIntegerField
      FieldName = 'id'
    end
    object WideStringField1: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
end
