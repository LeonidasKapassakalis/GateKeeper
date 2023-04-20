inherited rptKinhs11: TrptKinhs11
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
  ReportTitle = #931#973#957#959#955#945' '#945#957#940' '#928#961#945#964#942#961#953#959'/'#919#956#949#961#959#956#951#957#943#945'/'#928#961#959#970#972#957
  inherited QRBPF: TQRBand
    Top = 345
    Enabled = False
    Size.Values = (
      84.666666666666670000
      1899.708333333333000000)
    ExplicitTop = 345
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
    Top = 257
    Height = 0
    ForceNewPage = True
    Size.Values = (
      0.000000000000000000
      1899.708333333333000000)
    Expression = 'qryTran.STATION.STATIONId'
    FooterBand = qrgfStation
    Master = Owner
    ExplicitTop = 257
    ExplicitHeight = 0
    inherited QRACardLogo: TQRImage
      Enabled = False
      Size.Values = (
        288.395833333333000000
        21.166666666666700000
        21.166666666666700000
        431.270833333333000000)
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
  object QRBand2: TQRBand [2]
    Left = 38
    Top = 281
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
      Left = 80
      Top = 0
      Width = 89
      Height = 17
      Size.Values = (
        44.979166666666670000
        211.666666666666700000
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
    object QRDBText3: TQRDBText
      Left = 224
      Top = 0
      Width = 68
      Height = 17
      Size.Values = (
        44.979166666666670000
        592.666666666666700000
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
      Left = 344
      Top = 0
      Width = 77
      Height = 17
      Size.Values = (
        44.979166666666670000
        910.166666666666700000
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
      ExportAs = exptNumeric
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText5: TQRDBText
      Left = 464
      Top = 0
      Width = 73
      Height = 17
      Size.Values = (
        44.979166666666670000
        1227.666666666667000000
        0.000000000000000000
        193.145833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'SumAmount'
      OnPrint = QRDBText5Print
      Transparent = False
      ExportAs = exptNumeric
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
  end
  object qrghDate: TQRGroup [3]
    Left = 38
    Top = 257
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
    FooterBand = qrgfDate
    Master = Owner
    ReprintOnNewPage = False
    object QRDBText6: TQRDBText
      Left = 88
      Top = 8
      Width = 109
      Height = 17
      Size.Values = (
        44.979166666666670000
        232.833333333333300000
        21.166666666666670000
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
    object QRLabel5: TQRLabel
      Left = 8
      Top = 8
      Width = 75
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        21.166666666666670000
        198.437500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #919#956#949#961#959#956#951#957#943#945
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
  object qrgfStation: TQRBand [4]
    Left = 38
    Top = 313
    Width = 718
    Height = 32
    AlignToBottom = False
    Color = clBtnFace
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      84.666666666666670000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRExpr1: TQRExpr
      Left = 464
      Top = 8
      Width = 73
      Height = 25
      Frame.DrawTop = True
      Frame.Width = 2
      Size.Values = (
        66.145833333333300000
        1227.666666666670000000
        21.166666666666700000
        193.145833333333000000)
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
      Transparent = True
      Expression = 'SUM(qryTran.SumAmount)'
      ExportAs = exptNumeric
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr2: TQRExpr
      Left = 344
      Top = 8
      Width = 73
      Height = 25
      Frame.DrawTop = True
      Frame.Width = 2
      Size.Values = (
        66.145833333333300000
        910.166666666667000000
        21.166666666666700000
        193.145833333333000000)
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
      OnPrint = QRDBText4Print
      ParentFont = False
      ResetAfterPrint = True
      Transparent = True
      Expression = 'SUM(qryTran.SumQuantity)'
      ExportAs = exptNumeric
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel9: TQRLabel
      Left = 168
      Top = 8
      Width = 92
      Height = 17
      Size.Values = (
        44.979166666666670000
        444.500000000000000000
        21.166666666666670000
        243.416666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #915#949#957#953#954#972' '#931#973#957#959#955#959
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
  object qrgfDate: TQRBand [5]
    Left = 38
    Top = 297
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
      Left = 464
      Top = 1
      Width = 73
      Height = 17
      Frame.DrawTop = True
      Size.Values = (
        44.979166666666670000
        1227.666666666667000000
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
      Transparent = True
      Expression = 'SUM(qryTran.SumAmount)'
      ExportAs = exptNumeric
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr4: TQRExpr
      Left = 344
      Top = 0
      Width = 73
      Height = 17
      Frame.DrawTop = True
      Size.Values = (
        44.979166666666700000
        910.166666666667000000
        0.000000000000000000
        193.145833333333000000)
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
      OnPrint = QRDBText4Print
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.SumQuantity)'
      ExportAs = exptNumeric
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel8: TQRLabel
      Left = 168
      Top = 0
      Width = 72
      Height = 17
      Size.Values = (
        44.979166666666670000
        444.500000000000000000
        0.000000000000000000
        190.500000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #931#973#957#959#955#959' '#947#953#945
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRDBText9: TQRDBText
      Left = 248
      Top = 0
      Width = 109
      Height = 17
      Size.Values = (
        44.979166666666670000
        656.166666666666700000
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
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
  end
  inherited QRBand6: TQRBand
    Height = 219
    Frame.DrawBottom = True
    Frame.Width = 3
    Size.Values = (
      579.437500000000000000
      1899.708333333333000000)
    ExplicitHeight = 219
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
      Enabled = False
      Size.Values = (
        50.270833333333330000
        1780.645833333333000000
        21.166666666666670000
        119.062500000000000000)
      FontSize = 12
    end
    object QRDBText1: TQRDBText
      Left = 344
      Top = 88
      Width = 76
      Height = 17
      Size.Values = (
        44.979166666666670000
        910.166666666666700000
        232.833333333333300000
        201.083333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'StationName'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRLabel2: TQRLabel
      Left = 216
      Top = 176
      Width = 89
      Height = 33
      Size.Values = (
        87.312500000000000000
        571.500000000000000000
        465.666666666666700000
        235.479166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Caption = '     '#928#955#942#952#959#962' '#931#965#957#945#955#955#945#947#974#957'.'
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
    object QRLabel3: TQRLabel
      Left = 336
      Top = 176
      Width = 97
      Height = 33
      Size.Values = (
        87.312500000000000000
        889.000000000000000000
        465.666666666666700000
        256.645833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Caption = '      '#931#973#957#959#955#959' '#928#959#963#972#964#951#964#945#962'(LT)'
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
      Left = 464
      Top = 176
      Width = 57
      Height = 33
      Size.Values = (
        87.312500000000000000
        1227.666666666667000000
        465.666666666666700000
        150.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Caption = #931#973#957#959#955#959'    '#913#958#943#945#962
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
      Font.Charset = GREEK_CHARSET
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
    object QRDBText7: TQRDBText
      Left = 344
      Top = 112
      Width = 90
      Height = 17
      Size.Values = (
        44.979166666666670000
        910.166666666666700000
        296.333333333333300000
        238.125000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'StationAddress'
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
      Width = 58
      Height = 17
      Size.Values = (
        44.979166666666670000
        910.166666666666700000
        359.833333333333300000
        153.458333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'StationTK'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRLabel7: TQRLabel
      Left = 80
      Top = 192
      Width = 45
      Height = 17
      Size.Values = (
        44.979166666666670000
        211.666666666666700000
        508.000000000000000000
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
    object QRDBText10: TQRDBText
      Left = 416
      Top = 136
      Width = 65
      Height = 17
      Size.Values = (
        44.979166666666670000
        1100.666666666667000000
        359.833333333333300000
        171.979166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'StationCity'
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
    Left = 16
    Top = 128
  end
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT   [STATION.STATIONID], [TRAN.TRANDATE], [TRAN.SITEMID], [' +
        'SITEM.DESCR], '
      
        '                 SUM([TRAN.QUANTITY]) AS SumQuantity, SUM([TRAN.' +
        'AMOUNT])  AS SumAmount, COUNT(*) AS CountKinhs'
      'FROM      V_TRA_STA_ACA_CUS'
      
        '--GROUP BY [STATION.STATIONID], [TRAN.TRANDATE], [TRAN.SITEMID],' +
        ' [SITEM.DESCR]')
    Left = 16
    Top = 72
    object qryTranStationTK: TStringField
      FieldKind = fkLookup
      FieldName = 'StationTK'
      LookupDataSet = QStation
      LookupKeyFields = 'STATIONID'
      LookupResultField = 'ZIP'
      KeyFields = 'STATION.STATIONID'
      Lookup = True
    end
    object qryTranStationAddress: TStringField
      FieldKind = fkLookup
      FieldName = 'StationAddress'
      LookupDataSet = QStation
      LookupKeyFields = 'STATIONID'
      LookupResultField = 'STREET'
      KeyFields = 'STATION.STATIONID'
      Size = 50
      Lookup = True
    end
    object qryTranStationDescr: TStringField
      FieldKind = fkLookup
      FieldName = 'StationDescr'
      LookupDataSet = QStation
      LookupKeyFields = 'STATIONID'
      LookupResultField = 'NAME'
      KeyFields = 'STATION.STATIONID'
      LookupCache = True
      Lookup = True
    end
    object qryTranStationCity: TStringField
      FieldKind = fkLookup
      FieldName = 'StationCity'
      LookupDataSet = QStation
      LookupKeyFields = 'STATIONID'
      LookupResultField = 'CITY'
      KeyFields = 'STATION.STATIONID'
      Size = 50
      Lookup = True
    end
    object qryTranSTATIONSTATIONID: TIntegerField
      FieldName = 'STATION.STATIONID'
    end
    object qryTranTRANTRANDATE: TDateTimeField
      FieldName = 'TRAN.TRANDATE'
    end
    object qryTranTRANSITEMID: TIntegerField
      FieldName = 'TRAN.SITEMID'
    end
    object qryTranSITEMDESCR: TWideStringField
      FieldName = 'SITEM.DESCR'
      Size = 50
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
    object qryTranStationName: TStringField
      FieldKind = fkLookup
      FieldName = 'StationName'
      LookupDataSet = QStation
      LookupKeyFields = 'Stationid'
      LookupResultField = 'Name'
      KeyFields = 'STATION.STATIONID'
      Size = 50
      Lookup = True
    end
  end
  object QStation: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM STATION'
      '')
    Left = 232
    Top = 80
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
end
