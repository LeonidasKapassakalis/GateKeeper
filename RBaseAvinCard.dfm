object rptBaseAvinCard: TrptBaseAvinCard
  Left = 0
  Top = 0
  Width = 794
  Height = 1123
  Font.Charset = GREEK_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Functions.Strings = (
    'PAGENUMBER'
    'COLUMNNUMBER'
    'REPORTTITLE')
  Functions.DATA = (
    '0'
    '0'
    #39#39)
  Options = [FirstPageHeader, LastPageFooter]
  Page.Columns = 1
  Page.Orientation = poPortrait
  Page.PaperSize = A4
  Page.Continuous = False
  Page.Values = (
    100.000000000000000000
    2970.000000000000000000
    100.000000000000000000
    2100.000000000000000000
    100.000000000000000000
    100.000000000000000000
    0.000000000000000000)
  PrinterSettings.Copies = 1
  PrinterSettings.OutputBin = Auto
  PrinterSettings.Duplex = False
  PrinterSettings.FirstPage = 0
  PrinterSettings.LastPage = 0
  PrinterSettings.UseStandardprinter = True
  PrinterSettings.UseCustomBinCode = False
  PrinterSettings.CustomBinCode = 0
  PrinterSettings.ExtendedDuplex = 0
  PrinterSettings.UseCustomPaperCode = False
  PrinterSettings.CustomPaperCode = 0
  PrinterSettings.PrintMetaFile = False
  PrinterSettings.PrintQuality = 0
  PrinterSettings.Collate = 0
  PrinterSettings.ColorOption = 0
  PrintIfEmpty = True
  SnapToGrid = True
  Units = MM
  Zoom = 100
  PrevFormStyle = fsNormal
  PreviewInitialState = wsNormal
  PreviewWidth = 500
  PreviewHeight = 500
  PrevInitialZoom = qrZoom100
  PreviewDefaultSaveType = stQRP
  PreviewLeft = 0
  PreviewTop = 0
  object QRBPF: TQRBand
    Left = 38
    Top = 321
    Width = 718
    Height = 32
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      84.666666666666670000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbPageFooter
    object QRSysData3: TQRSysData
      Left = 336
      Top = 8
      Width = 46
      Height = 19
      Size.Values = (
        50.270833333333330000
        889.000000000000000000
        21.166666666666670000
        121.708333333333300000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = True
      Color = clWhite
      Data = qrsPageNumber
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      FontSize = 10
    end
  end
  object QRGrHead: TQRGroup
    Left = 38
    Top = 193
    Width = 718
    Height = 128
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      338.666666666666700000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    ReprintOnNewPage = False
    object QRACardLogo: TQRImage
      Left = 8
      Top = 8
      Width = 163
      Height = 109
      Size.Values = (
        288.395833333333300000
        21.166666666666670000
        21.166666666666670000
        431.270833333333300000)
      XLColumn = 0
    end
    object QRSysData1: TQRSysData
      Left = 316
      Top = 8
      Width = 86
      Height = 19
      Size.Values = (
        50.270833333333330000
        836.083333333333300000
        21.166666666666670000
        227.541666666666700000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = True
      Color = clWhite
      Data = qrsReportTitle
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      FontSize = 12
    end
    object QRSysData2: TQRSysData
      Left = 673
      Top = 8
      Width = 45
      Height = 19
      Size.Values = (
        50.270833333333330000
        1780.645833333333000000
        21.166666666666670000
        119.062500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = True
      Color = clWhite
      Data = qrsDate
      Font.Charset = GREEK_CHARSET
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
  object QRBand6: TQRBand
    Left = 38
    Top = 38
    Width = 718
    Height = 155
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      410.104166666666700000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbPageHeader
    object QRSysData6: TQRSysData
      Left = 316
      Top = 8
      Width = 86
      Height = 19
      Size.Values = (
        50.270833333333330000
        836.083333333333300000
        21.166666666666670000
        227.541666666666700000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = True
      Color = clWhite
      Data = qrsReportTitle
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      FontSize = 12
    end
    object QRACardLogo1: TQRImage
      Left = 8
      Top = 8
      Width = 163
      Height = 109
      Size.Values = (
        288.395833333333300000
        21.166666666666670000
        21.166666666666670000
        431.270833333333300000)
      XLColumn = 0
    end
    object QRSysData7: TQRSysData
      Left = 673
      Top = 8
      Width = 45
      Height = 19
      Size.Values = (
        50.270833333333330000
        1780.645833333333000000
        21.166666666666670000
        119.062500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = True
      Color = clWhite
      Data = qrsDate
      Font.Charset = GREEK_CHARSET
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
  object QRTextFilter1: TQRTextFilter
    TextEncoding = UnicodeEncoding
    Left = 48
    Top = 12
  end
  object QRCSVFilter1: TQRCSVFilter
    Separator = ','
    TextEncoding = UnicodeEncoding
    Left = 120
    Top = 12
  end
  object QRExcelFilter1: TQRExcelFilter
    TextEncoding = UnicodeEncoding
    UseXLColumns = False
    Left = 240
    Top = 12
  end
  object QRRTFFilter1: TQRRTFFilter
    TextEncoding = UnicodeEncoding
    Left = 312
    Top = 12
  end
  object QRWMFFilter1: TQRWMFFilter
    Enhanced = False
    Left = 372
    Top = 12
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = UnicodeEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 432
    Top = 16
  end
  object QRHTMLFilter1: TQRHTMLFilter
    MultiPage = False
    PageLinks = False
    FinalPage = 0
    FirstLastLinks = False
    Concat = False
    ConcatCount = 1
    LinkFontSize = 12
    LinkFontName = 'Arial'
    TextEncoding = AnsiEncoding
    Left = 504
    Top = 16
  end
  object QRXMLSFilter1: TQRXMLSFilter
    TextEncoding = UnicodeEncoding
    Left = 608
    Top = 16
  end
end
