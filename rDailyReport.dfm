inherited rptDailyReport: TrptDailyReport
  ShowingPreview = True
  DataSet = ADOQuery1
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
  ReportTitle = #919#956#949#961#942#963#953#945' '#922#945#964#940#963#964#945#963#951
  ShowProgress = False
  PreviewWidth = 2000
  PreviewHeight = 2000
  PreviewDefaultSaveType = stPDF
  object QRGroup2: TQRGroup [0]
    Left = 38
    Top = 73
    Width = 718
    Height = 24
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = True
    Size.Values = (
      63.500000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Expression = 'ADOQuery1.RepDate'
    Master = Owner
    ReprintOnNewPage = False
    object QRDBText8: TQRDBText
      Left = 112
      Top = 8
      Width = 51
      Height = 17
      Size.Values = (
        44.979166666666670000
        296.333333333333300000
        21.166666666666670000
        134.937500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'RepDate'
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
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel2: TQRLabel
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
      XLNumFormat = nfGeneral
      ActiveInPreview = False
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
      VerticalAlignment = tlTop
      FontSize = 11
    end
  end
  object QRBand2: TQRBand [1]
    Left = 38
    Top = 97
    Width = 718
    Height = 83
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      219.604166666666700000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object QRDBRichText1: TQRDBRichText
      Left = 24
      Top = 24
      Width = 684
      Height = 49
      Size.Values = (
        129.645833333333300000
        63.500000000000000000
        63.500000000000000000
        1809.750000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AutoStretch = True
      Color = clWindow
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      HiresExport = True
      Transparent = False
      YIncrement = 50
      DataField = 'RepText'
      DataSet = ADOQuery1
    end
  end
  object QRSubDetail1: TQRSubDetail [2]
    Left = 38
    Top = 180
    Width = 718
    Height = 72
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      190.500000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    DataSet = AdoQuery2
    PrintBefore = False
    PrintIfEmpty = False
    object QRDBRichText2: TQRDBRichText
      Left = 12
      Top = 35
      Width = 685
      Height = 20
      Size.Values = (
        52.916666666666670000
        31.750000000000000000
        92.604166666666670000
        1812.395833333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AutoStretch = True
      Color = clWindow
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      HiresExport = False
      Transparent = False
      YIncrement = 50
      DataField = 'RepText'
      DataSet = AdoQuery2
    end
    object QRDBText1: TQRDBText
      Left = 76
      Top = 8
      Width = 19
      Height = 17
      Size.Values = (
        44.979166666666670000
        201.083333333333300000
        21.166666666666670000
        50.270833333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = AdoQuery2
      DataField = 'AA'
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
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel1: TQRLabel
      Left = 16
      Top = 8
      Width = 45
      Height = 19
      Size.Values = (
        50.270833333333330000
        42.333333333333330000
        21.166666666666670000
        119.062500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Version'
      Color = clWhite
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 8
    end
  end
  inherited QrBFooter: TQRBand
    Top = 252
    Size.Values = (
      92.604166666666670000
      1899.708333333333000000)
    ExplicitTop = 252
    inherited QRSysData4: TQRSysData
      Size.Values = (
        44.979166666666670000
        830.791666666666700000
        21.166666666666670000
        235.479166666666700000)
      FontSize = 10
    end
    object QRSysData3: TQRSysData
      Left = 631
      Top = 12
      Width = 57
      Height = 17
      Size.Values = (
        44.979166666666670000
        1669.520833333333000000
        31.750000000000000000
        150.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      Data = qrsPageNumber
      Transparent = False
      ExportAs = exptText
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  inherited QrBHeader: TQRBand
    Size.Values = (
      92.604166666666670000
      1899.708333333333000000)
    inherited QRSysData5: TQRSysData
      Left = 302
      Width = 113
      Size.Values = (
        44.979166666666670000
        799.041666666666700000
        21.166666666666670000
        298.979166666666700000)
      Data = qrsReportTitle
      Font.Charset = GREEK_CHARSET
      ParentFont = False
      FontSize = 10
      ExplicitLeft = 302
      ExplicitWidth = 113
    end
  end
  inherited ADOQuery1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PRepDate'
        DataType = ftDateTime
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      '  FROM DailyReport'
      'Where AA = 0 '
      'AND RepDate = :PRepDate')
    object ADOQuery1id: TIntegerField
      FieldName = 'id'
    end
    object ADOQuery1RepDate: TDateTimeField
      FieldName = 'RepDate'
    end
    object ADOQuery1AA: TIntegerField
      FieldName = 'AA'
    end
    object ADOQuery1RepText: TBlobField
      FieldName = 'RepText'
    end
    object ADOQuery1InsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object ADOQuery1InsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object ADOQuery1InUsr: TIntegerField
      FieldName = 'InUsr'
    end
  end
  inherited QRWMFFilter1: TQRWMFFilter
    Left = 372
    Top = 4
  end
  inherited QRPDFFilter1: TQRPDFFilter
    Left = 468
    Top = 4
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 72
    Top = 24
  end
  object AdoQuery2: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = DataSource1
    Parameters = <
      item
        Name = 'RepDate'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = 44812d
      end>
    SQL.Strings = (
      'SELECT *'
      '  FROM DailyReport'
      'Where AA <> 0'
      'AND RepDate = :RepDate'
      'ORDER BY AA ')
    Left = 162
    Top = 128
    object AdoQuery2id: TIntegerField
      FieldName = 'id'
    end
    object AdoQuery2RepDate: TDateTimeField
      FieldName = 'RepDate'
    end
    object AdoQuery2AA: TIntegerField
      FieldName = 'AA'
    end
    object AdoQuery2RepText: TBlobField
      FieldName = 'RepText'
    end
    object AdoQuery2InsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object AdoQuery2InsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object AdoQuery2InUsr: TIntegerField
      FieldName = 'InUsr'
    end
  end
  object DataSource2: TDataSource
    DataSet = AdoQuery2
    Left = 256
    Top = 128
  end
end
