inherited rptKinhs15: TrptKinhs15
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
    Top = 433
    Size.Values = (
      84.666666666666670000
      1899.708333333333000000)
    ExplicitTop = 433
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
    Height = 32
    Size.Values = (
      84.666666666666670000
      1899.708333333333000000)
    Expression = 'qryTran.QTM.Area01_Id'
    Master = Owner
    ExplicitTop = 233
    ExplicitHeight = 32
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
    object QRDBText3: TQRDBText
      Left = 8
      Top = 8
      Width = 41
      Height = 17
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        21.166666666666670000
        108.479166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LArea'
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
      Left = 336
      Top = 160
      Width = 97
      Height = 33
      Size.Values = (
        87.312500000000000000
        889.000000000000000000
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
      Left = 512
      Top = 160
      Width = 57
      Height = 33
      Size.Values = (
        87.312500000000000000
        1354.666666666670000000
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
    Top = 265
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
      Left = 240
      Top = 0
      Width = 42
      Height = 17
      Size.Values = (
        44.979166666666670000
        635.000000000000000000
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
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText5: TQRDBText
      Left = 504
      Top = 0
      Width = 73
      Height = 17
      Size.Values = (
        44.979166666666670000
        1333.500000000000000000
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
    Top = 281
    Width = 718
    Height = 152
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      402.166666666666700000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbSummary
    object QRLabel1: TQRLabel
      Left = 136
      Top = 24
      Width = 47
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        359.833333333333300000
        63.500000000000000000
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
    object QRLabel2: TQRLabel
      Left = 136
      Top = 40
      Width = 37
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        359.833333333333300000
        105.833333333333300000
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
      Left = 136
      Top = 56
      Width = 58
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        359.833333333333300000
        148.166666666666700000
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
    object QRLabel12: TQRLabel
      Left = 136
      Top = 72
      Width = 58
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        359.833333333333300000
        190.500000000000000000
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
    object QRLabel11: TQRLabel
      Left = 136
      Top = 88
      Width = 69
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        359.833333333333300000
        232.833333333333300000
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
    object QRLabel6: TQRLabel
      Left = 133
      Top = 127
      Width = 48
      Height = 17
      Size.Values = (
        44.979166666666670000
        351.895833333333300000
        336.020833333333300000
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
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr5: TQRExpr
      Left = 256
      Top = 127
      Width = 161
      Height = 17
      Size.Values = (
        44.979166666666670000
        677.333333333333300000
        336.020833333333300000
        425.979166666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr1Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.SumQuantity)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr15: TQRExpr
      Left = 305
      Top = 88
      Width = 115
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        806.979166666666700000
        232.833333333333300000
        304.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr1Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos5)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr16: TQRExpr
      Left = 305
      Top = 72
      Width = 115
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        806.979166666666700000
        190.500000000000000000
        304.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr1Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos4)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr17: TQRExpr
      Left = 305
      Top = 56
      Width = 115
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        806.979166666666700000
        148.166666666666700000
        304.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr1Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos3)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr14: TQRExpr
      Left = 305
      Top = 40
      Width = 115
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        806.979166666666700000
        105.833333333333300000
        304.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr1Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos2)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr1: TQRExpr
      Left = 305
      Top = 24
      Width = 115
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        806.979166666666700000
        63.500000000000000000
        304.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr1Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos1)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr2: TQRExpr
      Left = 465
      Top = 24
      Width = 115
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1230.312500000000000000
        63.500000000000000000
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
    object QRExpr3: TQRExpr
      Left = 465
      Top = 40
      Width = 115
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1230.312500000000000000
        105.833333333333300000
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
    object QRExpr4: TQRExpr
      Left = 465
      Top = 56
      Width = 115
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1230.312500000000000000
        148.166666666666700000
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
    object QRExpr6: TQRExpr
      Left = 465
      Top = 72
      Width = 115
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1230.312500000000000000
        190.500000000000000000
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
    object QRExpr7: TQRExpr
      Left = 465
      Top = 88
      Width = 115
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1230.312500000000000000
        232.833333333333300000
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
    object QRExpr8: TQRExpr
      Left = 420
      Top = 127
      Width = 157
      Height = 17
      Size.Values = (
        44.979166666666670000
        1111.250000000000000000
        336.020833333333300000
        415.395833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr2Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.SumAmount)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel8: TQRLabel
      Left = 136
      Top = 104
      Width = 52
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        359.833333333333300000
        275.166666666666700000
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
    object QRExpr11: TQRExpr
      Left = 306
      Top = 105
      Width = 115
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        809.625000000000000000
        277.812500000000000000
        304.270833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      OnPrint = QRExpr1Print
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.Pos6)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr12: TQRExpr
      Left = 465
      Top = 104
      Width = 115
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666670000
        1230.312500000000000000
        275.166666666666700000
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
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 56
    Top = 64
  end
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTranCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'SELECT [QTM.Area01_Id], [Tran.SitemId] AS SitemId,  Count(*) AS ' +
        'CountKinhs, Sum([TRAN.AMOUNT]) AS SumAmount, Sum([TRAN.QUANTITY]' +
        ') AS SumQuantity'
      'FROM         V_TRA_STA_ACA_CUS_TOWN '
      '--GROUP BY  [QTM.Area01_Id], [Tran.SitemId]')
    Left = 96
    Top = 64
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
    object qryTranSitemId: TIntegerField
      FieldName = 'SitemId'
    end
    object qryTranCountKinhs: TIntegerField
      FieldName = 'CountKinhs'
    end
    object qryTranSumAmount: TFloatField
      FieldName = 'SumAmount'
      currency = True
    end
    object qryTranSumQuantity: TFloatField
      FieldName = 'SumQuantity'
      DisplayFormat = '###,###,##0.00'
    end
    object qryTranLArea: TStringField
      FieldKind = fkLookup
      FieldName = 'LArea'
      LookupDataSet = QArea
      LookupKeyFields = 'Area01_Id'
      LookupResultField = 'Area01_Name'
      KeyFields = 'QTM.Area01_Id'
      LookupCache = True
      Lookup = True
    end
    object qryTranLSitem: TStringField
      FieldKind = fkLookup
      FieldName = 'LSitem'
      LookupDataSet = qrySItem
      LookupKeyFields = 'SITEMID'
      LookupResultField = 'DESCR'
      KeyFields = 'SitemId'
      LookupCache = True
      Lookup = True
    end
    object qryTranPos6: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Pos6'
      Calculated = True
    end
    object qryTranAcc6: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Acc6'
      Calculated = True
    end
    object qryTranQTMArea01_Id: TIntegerField
      FieldName = 'QTM.Area01_Id'
    end
  end
  object qrySItem: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM SITEM')
    Left = 664
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
  object QArea: TADOQuery
    Connection = DMMain.ADOConnection
    CursorLocation = clUseServer
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * '
      'FROM QTown')
    Left = 576
    Top = 112
    object QAreaArea00_Name: TWideStringField
      FieldName = 'Area00_Name'
      Size = 50
    end
    object QAreaArea01_Name: TWideStringField
      FieldName = 'Area01_Name'
      Size = 50
    end
    object QAreaArea02_Name: TWideStringField
      FieldName = 'Area02_Name'
      Size = 50
    end
    object QAreaArea03_Name: TWideStringField
      FieldName = 'Area03_Name'
      Size = 50
    end
    object QAreaArea02_Id: TIntegerField
      FieldName = 'Area02_Id'
    end
    object QAreaArea03_Id: TIntegerField
      FieldName = 'Area03_Id'
    end
    object QAreaArea01_Id: TIntegerField
      FieldName = 'Area01_Id'
    end
    object QAreaArea00_Id: TIntegerField
      FieldName = 'Area00_Id'
    end
    object QAreaWholeDescr: TWideStringField
      FieldName = 'WholeDescr'
      ReadOnly = True
      Size = 203
    end
  end
end
