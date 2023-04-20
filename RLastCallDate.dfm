inherited rptLastCallDate: TrptLastCallDate
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
  ReportTitle = 'Last Call Date'
  inherited QRBPF: TQRBand
    Top = 137
    Size.Values = (
      84.666666666666670000
      1899.708333333333000000)
    ExplicitTop = 137
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
    Top = 121
    Height = 0
    Frame.DrawBottom = True
    Frame.Width = 3
    ForceNewPage = True
    Size.Values = (
      0.000000000000000000
      1899.708333333333000000)
    Expression = 'qryTran.ACARDCODE'
    Master = Owner
    ExplicitTop = 121
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
    Height = 83
    Frame.DrawBottom = True
    Frame.Width = 3
    Size.Values = (
      219.604166666666700000
      1899.708333333333000000)
    ExplicitHeight = 83
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
    object QRLabel11: TQRLabel
      Left = 611
      Top = 53
      Width = 94
      Height = 22
      Size.Values = (
        58.208333333333320000
        1616.604166666667000000
        140.229166666666700000
        248.708333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
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
      FontSize = 11
    end
    object QRLabel1: TQRLabel
      Left = 24
      Top = 53
      Width = 67
      Height = 20
      Size.Values = (
        52.916666666666670000
        63.500000000000000000
        140.229166666666700000
        177.270833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#961#945#964#942#961#953#959
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
  end
  object QRBand3: TQRBand [3]
    Left = 38
    Top = 121
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
    object QRDBText9: TQRDBText
      Left = 8
      Top = 0
      Width = 281
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        0.000000000000000000
        743.479166666666800000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LName'
      Font.Charset = GREEK_CHARSET
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
      Left = 595
      Top = 0
      Width = 108
      Height = 17
      Size.Values = (
        44.979166666666670000
        1574.270833333333000000
        0.000000000000000000
        285.750000000000000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'V_TRCALLDDATE'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptNumeric
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText11: TQRDBText
      Left = 313
      Top = 1
      Width = 248
      Height = 17
      Size.Values = (
        44.979166666666670000
        828.145833333333200000
        2.645833333333333000
        656.166666666666800000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LPhone'
      Font.Charset = GREEK_CHARSET
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
  inherited QRCSVFilter1: TQRCSVFilter
    Left = 112
  end
  inherited QRExcelFilter1: TQRExcelFilter
    Left = 176
  end
  inherited QRRTFFilter1: TQRRTFFilter
    Left = 240
  end
  inherited QRWMFFilter1: TQRWMFFilter
    Left = 308
  end
  inherited QRPDFFilter1: TQRPDFFilter
    Left = 376
    Top = 8
  end
  inherited QRHTMLFilter1: TQRHTMLFilter
    Left = 448
    Top = 8
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 136
    Top = 200
  end
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM'
      'V_TRCALLDET_FULL'
      '')
    Left = 72
    Top = 200
    object qryTranV_TRCALLDSTATUS: TIntegerField
      FieldName = 'V_TRCALLDSTATUS'
    end
    object qryTranV_TRCALLDDATE: TDateTimeField
      FieldName = 'V_TRCALLDDATE'
      ReadOnly = True
    end
    object qryTranV_TRCALLDSTATIONID: TIntegerField
      FieldName = 'V_TRCALLDSTATIONID'
    end
    object qryTranLName: TStringField
      FieldKind = fkLookup
      FieldName = 'LName'
      LookupDataSet = QStations
      LookupKeyFields = 'STATIONID'
      LookupResultField = 'NAME'
      KeyFields = 'V_TRCALLDSTATIONID'
      Size = 60
      Lookup = True
    end
    object qryTranLPhone: TStringField
      DisplayWidth = 80
      FieldKind = fkLookup
      FieldName = 'LPhone'
      LookupDataSet = QStations
      LookupKeyFields = 'STATIONID'
      LookupResultField = 'CITY'
      KeyFields = 'V_TRCALLDSTATIONID'
      Size = 80
      Lookup = True
    end
  end
  object QStations: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = QStationsCalcFields
    Parameters = <>
    SQL.Strings = (
      'Select * from Station')
    Left = 264
    Top = 200
    object QStationsStationid: TAutoIncField
      FieldName = 'Stationid'
      ReadOnly = True
    end
    object QStationsName: TWideStringField
      FieldName = 'Name'
      FixedChar = True
      Size = 100
    end
    object QStationsSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object QStationsZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object QStationsCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object QStationsAreaId: TIntegerField
      FieldName = 'AreaId'
    end
    object QStationsSalesMenId: TIntegerField
      FieldName = 'SalesMenId'
    end
    object QStationsIGroupId1: TIntegerField
      FieldName = 'IGroupId1'
    end
    object QStationsPososto1: TFloatField
      FieldName = 'Pososto1'
    end
    object QStationsHaveGroup1: TBooleanField
      FieldName = 'HaveGroup1'
    end
    object QStationsIGroupId2: TIntegerField
      FieldName = 'IGroupId2'
    end
    object QStationsPososto2: TFloatField
      FieldName = 'Pososto2'
    end
    object QStationsHaveGroup2: TBooleanField
      FieldName = 'HaveGroup2'
    end
    object QStationsIGroupId3: TIntegerField
      FieldName = 'IGroupId3'
    end
    object QStationsPososto3: TFloatField
      FieldName = 'Pososto3'
    end
    object QStationsHaveGroup3: TBooleanField
      FieldName = 'HaveGroup3'
    end
    object QStationsIGroupId4: TIntegerField
      FieldName = 'IGroupId4'
    end
    object QStationsPososto4: TFloatField
      FieldName = 'Pososto4'
    end
    object QStationsHaveGroup4: TBooleanField
      FieldName = 'HaveGroup4'
    end
    object QStationsIGroupId5: TIntegerField
      FieldName = 'IGroupId5'
    end
    object QStationsPososto5: TFloatField
      FieldName = 'Pososto5'
    end
    object QStationsHaveGroup5: TBooleanField
      FieldName = 'HaveGroup5'
    end
    object QStationsIGroupId6: TIntegerField
      FieldName = 'IGroupId6'
    end
    object QStationsPososto6: TFloatField
      FieldName = 'Pososto6'
    end
    object QStationsHaveGroup6: TBooleanField
      FieldName = 'HaveGroup6'
    end
    object QStationsIGroupId7: TIntegerField
      FieldName = 'IGroupId7'
    end
    object QStationsPososto7: TFloatField
      FieldName = 'Pososto7'
    end
    object QStationsHaveGroup7: TBooleanField
      FieldName = 'HaveGroup7'
    end
    object QStationsIGroupId8: TIntegerField
      FieldName = 'IGroupId8'
    end
    object QStationsPososto8: TFloatField
      FieldName = 'Pososto8'
    end
    object QStationsHaveGroup8: TBooleanField
      FieldName = 'HaveGroup8'
    end
    object QStationsIGroupId9: TIntegerField
      FieldName = 'IGroupId9'
    end
    object QStationsPososto9: TFloatField
      FieldName = 'Pososto9'
    end
    object QStationsHaveGroup9: TBooleanField
      FieldName = 'HaveGroup9'
    end
    object QStationsIGroupId10: TIntegerField
      FieldName = 'IGroupId10'
    end
    object QStationsPososto10: TFloatField
      FieldName = 'Pososto10'
    end
    object QStationsHaveGroup10: TBooleanField
      FieldName = 'HaveGroup10'
    end
    object QStationsDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object QStationsDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object QStationsDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object QStationsInActive: TBooleanField
      FieldName = 'InActive'
    end
    object QStationsInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object QStationsInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object QStationsStopSales: TBooleanField
      FieldName = 'StopSales'
    end
    object QStationsStopSalesUsr: TIntegerField
      FieldName = 'StopSalesUsr'
    end
    object QStationsStopSalesDt: TDateTimeField
      FieldName = 'StopSalesDt'
    end
    object QStationsIsTest: TBooleanField
      FieldName = 'IsTest'
    end
    object QStationsIsTestUsr: TIntegerField
      FieldName = 'IsTestUsr'
    end
    object QStationsIsTestDt: TDateTimeField
      FieldName = 'IsTestDt'
    end
  end
end
