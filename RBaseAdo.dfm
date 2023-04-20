object rptBaseAdo: TrptBaseAdo
  Left = 0
  Top = 0
  Width = 794
  Height = 1123
  BeforePrint = QuickRepBeforePrint
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier'
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
  object QrBFooter: TQRBand
    Left = 38
    Top = 73
    Width = 718
    Height = 35
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      92.604166666666670000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbPageFooter
    object QRSysData4: TQRSysData
      Left = 314
      Top = 8
      Width = 89
      Height = 17
      Size.Values = (
        44.979166666666670000
        830.791666666666700000
        21.166666666666670000
        235.479166666666700000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = True
      Color = clWhite
      Data = qrsDateTime
      Transparent = False
      ExportAs = exptText
      FontSize = 10
    end
  end
  object QrBHeader: TQRBand
    Left = 38
    Top = 38
    Width = 718
    Height = 35
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      92.604166666666670000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbPageHeader
    object QRSysData5: TQRSysData
      Left = 330
      Top = 8
      Width = 57
      Height = 17
      Size.Values = (
        44.979166666666670000
        873.125000000000000000
        21.166666666666670000
        150.812500000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = True
      Color = clWhite
      Data = qrsPageNumber
      Transparent = False
      ExportAs = exptText
      FontSize = 10
    end
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 16
    Top = 16
  end
  object QRTextFilter1: TQRTextFilter
    TextEncoding = UnicodeEncoding
    Left = 192
    Top = 16
  end
  object QRCSVFilter1: TQRCSVFilter
    Separator = ','
    TextEncoding = UnicodeEncoding
    Left = 128
    Top = 16
  end
  object QRRTFFilter1: TQRRTFFilter
    TextEncoding = UnicodeEncoding
    Left = 312
    Top = 16
  end
  object QRWMFFilter1: TQRWMFFilter
    Enhanced = False
    Left = 360
    Top = 16
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = UnicodeEncoding
    Codepage = '1252'
    SuppressDateTime = False
    Left = 456
    Top = 16
  end
  object QRXMLSFilter1: TQRXMLSFilter
    TextEncoding = UnicodeEncoding
    Left = 528
    Top = 16
  end
  object QRExcelFilter1: TQRExcelFilter
    TextEncoding = UnicodeEncoding
    UseXLColumns = False
    Left = 248
    Top = 16
  end
  object QRXMLSSFilter1: TQRXMLSSFilter
    OpenWidth = 1000
    OpenHeight = 600
    Creator = 'QRXLSXDocumentFilter'
    Company = 'Avin Oil'
    WorkSheetname = 'Sheet 1'
    Left = 592
    Top = 16
  end
end
