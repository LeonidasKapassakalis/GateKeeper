object RptSubParams: TRptSubParams
  Left = 0
  Top = 0
  Width = 794
  Height = 1123
  AfterPrint = QuickRepAfterPrint
  AfterPreview = QuickRepAfterPrint
  BeforePrint = QuickRepBeforePrint
  Font.Charset = DEFAULT_CHARSET
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
  PrinterSettings.UseStandardprinter = False
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
  PrevInitialZoom = qrZoomToFit
  PreviewDefaultSaveType = stQRP
  PreviewLeft = 0
  PreviewTop = 0
  object QRBandPF: TQRBand
    Left = 38
    Top = 153
    Width = 718
    Height = 40
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      105.833333333333300000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbPageFooter
    object QRSysData1: TQRSysData
      Left = 336
      Top = 8
      Width = 46
      Height = 17
      Size.Values = (
        44.979166666666670000
        889.000000000000000000
        21.166666666666670000
        121.708333333333300000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = True
      Color = clWhite
      Data = qrsPageNumber
      Transparent = False
      ExportAs = exptText
      FontSize = 10
    end
    object QRSysData2: TQRSysData
      Left = 0
      Top = 8
      Width = 68
      Height = 17
      Size.Values = (
        44.979166666666670000
        0.000000000000000000
        21.166666666666670000
        179.916666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = True
      Color = clWhite
      Data = qrsDateTime
      Transparent = False
      ExportAs = exptText
      FontSize = 10
    end
  end
  object QRBandPH: TQRBand
    Left = 38
    Top = 38
    Width = 718
    Height = 91
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      240.770833333333300000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbPageHeader
    object QRLabel1: TQRLabel
      Left = 313
      Top = 8
      Width = 91
      Height = 23
      Size.Values = (
        60.854166666666670000
        828.145833333333300000
        21.166666666666670000
        240.770833333333300000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = True
      Caption = 'QRLabel1'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 14
    end
  end
  object QRBandD: TQRBand
    Left = 38
    Top = 129
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
    BandType = rbDetail
  end
  object QRTextFilter1: TQRTextFilter
    TextEncoding = UnicodeEncoding
    Left = 704
    Top = 56
  end
  object QRExcelFilter1: TQRExcelFilter
    TextEncoding = UnicodeEncoding
    UseXLColumns = False
    Left = 704
    Top = 104
  end
  object QRRTFFilter1: TQRRTFFilter
    TextEncoding = UnicodeEncoding
    Left = 704
    Top = 152
  end
  object QRWMFFilter1: TQRWMFFilter
    Enhanced = False
    Left = 704
    Top = 200
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = UnicodeEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 704
    Top = 248
  end
  object QRXMLSFilter1: TQRXMLSFilter
    TextEncoding = UnicodeEncoding
    Left = 704
    Top = 296
  end
  object QRCSVFilter1: TQRCSVFilter
    Separator = ','
    TextEncoding = UnicodeEncoding
    Left = 704
    Top = 352
  end
end
