object rptNewCards: TrptNewCards
  Left = 0
  Top = 0
  Width = 1123
  Height = 794
  DataSet = ADOTable1
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
  Page.Orientation = poLandscape
  Page.PaperSize = A4
  Page.Continuous = False
  Page.Values = (
    100.000000000000000000
    2100.000000000000000000
    100.000000000000000000
    2970.000000000000000000
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
  ReportTitle = #917#954#964#973#960#969#963#951' '#925#941#969#957' '#922#945#961#964#974#957
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
  object QRBand1: TQRBand
    Left = 38
    Top = 38
    Width = 1047
    Height = 67
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      177.270833333333300000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbPageHeader
    object QRSysData1: TQRSysData
      Left = 915
      Top = 8
      Width = 132
      Height = 17
      Size.Values = (
        44.979166666666670000
        2420.937500000000000000
        21.166666666666670000
        349.250000000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = True
      Color = clWhite
      Data = qrsDateTime
      Transparent = False
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel2: TQRLabel
      Left = 413
      Top = 8
      Width = 221
      Height = 20
      Size.Values = (
        52.916666666666670000
        1092.729166666667000000
        21.166666666666670000
        584.729166666666700000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = True
      Caption = #922#940#961#964#949#962' '#947#953#945' '#928#961#959#963#969#960#959#960#959#943#951#963#951
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
    object QRLabel3: TQRLabel
      Left = 16
      Top = 48
      Width = 102
      Height = 17
      Size.Values = (
        44.979166666666670000
        42.333333333333340000
        127.000000000000000000
        269.875000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #913#961#953#952#956#972#962' '#922#940#961#964#945#962
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
      Left = 144
      Top = 48
      Width = 58
      Height = 17
      Size.Values = (
        44.979166666666670000
        381.000000000000000000
        127.000000000000000000
        153.458333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #913#961'.'#922#965#954#955'.'
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
    object QRLabel5: TQRLabel
      Left = 216
      Top = 48
      Width = 69
      Height = 17
      Size.Values = (
        44.979166666666670000
        571.500000000000000000
        127.000000000000000000
        182.562500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #927#961'.'#919#956#941#961#945#962
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
    object QRLabel6: TQRLabel
      Left = 320
      Top = 48
      Width = 57
      Height = 17
      Size.Values = (
        44.979166666666670000
        846.666666666666600000
        127.000000000000000000
        150.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #927#961'.'#924#942#957#945
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
    object QRLabel7: TQRLabel
      Left = 392
      Top = 48
      Width = 46
      Height = 17
      Size.Values = (
        44.979166666666670000
        1037.166666666667000000
        127.000000000000000000
        121.708333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #917#957#940#961#958#951
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
    object QRLabel8: TQRLabel
      Left = 472
      Top = 48
      Width = 32
      Height = 17
      Size.Values = (
        44.979166666666670000
        1248.833333333333000000
        127.000000000000000000
        84.666666666666680000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #923#942#958#951
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
    object QRLabel9: TQRLabel
      Left = 536
      Top = 48
      Width = 393
      Height = 17
      Size.Values = (
        44.979166666666670000
        1418.166666666667000000
        127.000000000000000000
        1039.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #928#961#959#943#959#957#964#945
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
  object QRBand2: TQRBand
    Left = 38
    Top = 225
    Width = 1047
    Height = 24
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      63.500000000000000000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbPageFooter
    object QRSysData2: TQRSysData
      Left = 519
      Top = 0
      Width = 8
      Height = 17
      Size.Values = (
        44.979166666666670000
        1373.187500000000000000
        0.000000000000000000
        21.166666666666670000)
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
  object QRGroup1: TQRGroup
    Left = 38
    Top = 145
    Width = 1047
    Height = 27
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      71.437500000000000000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Expression = 'ADOTable1.CompanyName'
    FooterBand = QRBand4
    Master = Owner
    ReprintOnNewPage = False
    object QRLabel1: TQRLabel
      Left = 16
      Top = 8
      Width = 53
      Height = 17
      Size.Values = (
        44.979166666666670000
        42.333333333333340000
        21.166666666666670000
        140.229166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #917#964#945#953#961#949#943#945
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
    object QRDBText1: TQRDBText
      Left = 88
      Top = 8
      Width = 90
      Height = 17
      Size.Values = (
        44.979166666666670000
        232.833333333333400000
        21.166666666666670000
        238.125000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOTable1
      DataField = 'CompanyName'
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
  end
  object QRBand3: TQRBand
    Left = 38
    Top = 172
    Width = 1047
    Height = 29
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      76.729166666666670000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object QRDBText2: TQRDBText
      Left = 144
      Top = 8
      Width = 60
      Height = 17
      Size.Values = (
        44.979166666666670000
        381.000000000000000000
        21.166666666666670000
        158.750000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOTable1
      DataField = 'VehicleNo'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText3: TQRDBText
      Left = 208
      Top = 8
      Width = 81
      Height = 17
      Size.Values = (
        44.979166666666670000
        550.333333333333400000
        21.166666666666670000
        214.312500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOTable1
      DataField = 'CalcDayFloor'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText4: TQRDBText
      Left = 296
      Top = 8
      Width = 81
      Height = 17
      Size.Values = (
        44.979166666666670000
        783.166666666666800000
        21.166666666666670000
        214.312500000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOTable1
      DataField = 'CalcMonthFloor'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText5: TQRDBText
      Left = 464
      Top = 8
      Width = 41
      Height = 17
      Size.Values = (
        44.979166666666670000
        1227.666666666667000000
        21.166666666666670000
        108.479166666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOTable1
      DataField = 'ExpirationDate'
      Mask = '###.###'
      OnPrint = QRDBText5Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText6: TQRDBText
      Left = 397
      Top = 8
      Width = 44
      Height = 17
      Size.Values = (
        44.979166666666670000
        1050.395833333333000000
        21.166666666666670000
        116.416666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOTable1
      DataField = 'StartingDate'
      Mask = '###.###'
      OnPrint = QRDBText6Print
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText7: TQRDBText
      Left = 16
      Top = 8
      Width = 44
      Height = 17
      Size.Values = (
        44.979166666666670000
        42.333333333333340000
        21.166666666666670000
        116.416666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOTable1
      DataField = 'CardNo'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText8: TQRDBText
      Left = 536
      Top = 8
      Width = 53
      Height = 17
      Size.Values = (
        44.979166666666670000
        1418.166666666667000000
        21.166666666666670000
        140.229166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOTable1
      DataField = 'Product1'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText9: TQRDBText
      Left = 608
      Top = 8
      Width = 53
      Height = 17
      Size.Values = (
        44.979166666666670000
        1608.666666666667000000
        21.166666666666670000
        140.229166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOTable1
      DataField = 'Product2'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText10: TQRDBText
      Left = 688
      Top = 8
      Width = 53
      Height = 17
      Size.Values = (
        44.979166666666670000
        1820.333333333333000000
        21.166666666666670000
        140.229166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOTable1
      DataField = 'Product3'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText11: TQRDBText
      Left = 760
      Top = 8
      Width = 53
      Height = 17
      Size.Values = (
        44.979166666666670000
        2010.833333333333000000
        21.166666666666670000
        140.229166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOTable1
      DataField = 'Product4'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText12: TQRDBText
      Left = 840
      Top = 8
      Width = 53
      Height = 17
      Size.Values = (
        44.979166666666670000
        2222.500000000000000000
        21.166666666666670000
        140.229166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOTable1
      DataField = 'Product5'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText13: TQRDBText
      Left = 976
      Top = 6
      Width = 60
      Height = 17
      Size.Values = (
        44.979166666666670000
        2582.333333333333000000
        15.875000000000000000
        158.750000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOTable1
      DataField = 'Product16'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText14: TQRDBText
      Left = 907
      Top = 6
      Width = 53
      Height = 17
      Size.Values = (
        44.979166666666670000
        2399.770833333333000000
        15.875000000000000000
        140.229166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOTable1
      DataField = 'Product6'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
  end
  object QRBand4: TQRBand
    Left = 38
    Top = 201
    Width = 1047
    Height = 24
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    LinkBand = QRGroup1
    Size.Values = (
      63.500000000000000000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRExpr1: TQRExpr
      Left = 208
      Top = 0
      Width = 45
      Height = 17
      Size.Values = (
        44.979166666666670000
        550.333333333333400000
        0.000000000000000000
        119.062500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      Expression = 'COUNT'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel10: TQRLabel
      Left = 88
      Top = 0
      Width = 106
      Height = 17
      Size.Values = (
        44.979166666666670000
        232.833333333333400000
        0.000000000000000000
        280.458333333333400000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#955#942#952#959#962' '#922#945#961#964#974#957' '
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
  object TitleBand1: TQRBand
    Left = 38
    Top = 105
    Width = 1047
    Height = 40
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      105.833333333333300000
      2770.187500000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbTitle
  end
  object ADOTable1: TADOTable
    Connection = frmExportNew.ExportADOConnection
    CursorType = ctStatic
    OnCalcFields = ADOTable1CalcFields
    TableName = 'AVIN'
    Left = 16
    Top = 8
    object ADOTable1CardNo: TWideStringField
      FieldName = 'CardNo'
    end
    object ADOTable1CompanyName: TWideStringField
      FieldName = 'CompanyName'
      Size = 40
    end
    object ADOTable1VehicleNo: TWideStringField
      FieldName = 'VehicleNo'
      Size = 15
    end
    object ADOTable1DayFloorLimit: TFloatField
      FieldName = 'DayFloorLimit'
      currency = True
      Precision = 2
    end
    object ADOTable1MonthFloorLimit: TFloatField
      FieldName = 'MonthFloorLimit'
      currency = True
      Precision = 2
    end
    object ADOTable1StartingDate: TWideStringField
      FieldName = 'StartingDate'
      Size = 4
    end
    object ADOTable1ExpirationDate: TWideStringField
      FieldName = 'ExpirationDate'
      Size = 4
    end
    object ADOTable1Version: TWordField
      FieldName = 'Version'
    end
    object ADOTable1Product1: TBooleanField
      FieldName = 'Product1'
      DisplayValues = #914#949#957#950#943#957#949#962
    end
    object ADOTable1Product2: TBooleanField
      FieldName = 'Product2'
      DisplayValues = 'Diesel'
    end
    object ADOTable1Product3: TBooleanField
      FieldName = 'Product3'
      DisplayValues = #923#953#960#945#957#964#953#954#940
    end
    object ADOTable1Product4: TBooleanField
      FieldName = 'Product4'
      DisplayValues = 'Mini Market'
    end
    object ADOTable1Product5: TBooleanField
      FieldName = 'Product5'
      DisplayValues = #928#955#965#957#964#942#961#953#959
    end
    object ADOTable1Product6: TBooleanField
      DisplayLabel = 'AutoGas'
      FieldName = 'Product6'
    end
    object ADOTable1Product7: TBooleanField
      DisplayLabel = 'Prod Cat.7'
      FieldName = 'Product7'
    end
    object ADOTable1Product8: TBooleanField
      DisplayLabel = 'Prod Cat.8'
      FieldName = 'Product8'
    end
    object ADOTable1Product9: TBooleanField
      DisplayLabel = 'Prod Cat.9'
      FieldName = 'Product9'
    end
    object ADOTable1Product10: TBooleanField
      DisplayLabel = 'Prod Cat.10'
      FieldName = 'Product10'
    end
    object ADOTable1Product11: TBooleanField
      FieldName = 'Product11'
    end
    object ADOTable1Product12: TBooleanField
      FieldName = 'Product12'
    end
    object ADOTable1Product13: TBooleanField
      FieldName = 'Product13'
    end
    object ADOTable1Product14: TBooleanField
      FieldName = 'Product14'
    end
    object ADOTable1Product15: TBooleanField
      FieldName = 'Product15'
    end
    object ADOTable1Product16: TBooleanField
      FieldName = 'Product16'
      DisplayValues = 'M'#949' '#935#955#956'.;X'#969#961#943#962' '#935#955#956'.'
    end
    object ADOTable1CalcDayFloor: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcDayFloor'
      Calculated = True
    end
    object ADOTable1CalcMonthFloor: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcMonthFloor'
      Calculated = True
    end
  end
end
