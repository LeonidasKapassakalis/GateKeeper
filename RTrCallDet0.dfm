inherited rptTrCallDet0: TrptTrCallDet0
  DataSet = qryTrCallDet
  Functions.Strings = (
    'PAGENUMBER'
    'COLUMNNUMBER'
    'REPORTTITLE'
    'QRSTRINGSBAND1')
  Functions.DATA = (
    '0'
    '0'
    #39#39
    #39#39)
  Page.Columns = 3
  Page.Values = (
    100.000000000000000000
    2970.000000000000000000
    100.000000000000000000
    2100.000000000000000000
    100.000000000000000000
    100.000000000000000000
    0.000000000000000000)
  ReportTitle = #913#957#945#955#965#964#953#954#972' '#919#956#949#961#959#955#972#947#953#959' '#924#949#964#945#966#959#961#940#962' '#945#957#940' '#928#961#945#964#942#961#953#959
  inherited QRBPF: TQRBand
    Top = 193
    Enabled = False
    Size.Values = (
      84.666666666666670000
      1899.708333333333000000)
    ExplicitTop = 193
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
    Top = 177
    Width = 239
    Height = 0
    ForceNewPage = True
    Size.Values = (
      0.000000000000000000
      632.354166666666700000)
    Expression = 'qryTrCallDet.Station.Name'
    Master = Owner
    ExplicitTop = 177
    ExplicitWidth = 239
    ExplicitHeight = 0
    inherited QRACardLogo: TQRImage
      Size.Values = (
        288.395833333333000000
        21.166666666666700000
        21.166666666666700000
        431.270833333333000000)
    end
    inherited QRSysData1: TQRSysData
      Left = 76
      Size.Values = (
        50.270833333333330000
        201.083333333333300000
        21.166666666666670000
        227.541666666666700000)
      FontSize = 12
      ExplicitLeft = 76
    end
    inherited QRSysData2: TQRSysData
      Left = 194
      Size.Values = (
        50.270833333333330000
        513.291666666666700000
        21.166666666666670000
        119.062500000000000000)
      FontSize = 12
      ExplicitLeft = 194
    end
  end
  inherited QRBand6: TQRBand
    Height = 139
    Size.Values = (
      367.770833333333300000
      1899.708333333333000000)
    ExplicitHeight = 139
    inherited QRSysData6: TQRSysData
      Left = 192
      Width = 334
      Size.Values = (
        50.270833333333330000
        508.000000000000000000
        21.166666666666670000
        883.708333333333300000)
      FontSize = 12
      ExplicitLeft = 192
      ExplicitWidth = 334
    end
    inherited QRACardLogo1: TQRImage
      Size.Values = (
        288.395833333333000000
        21.166666666666700000
        21.166666666666700000
        431.270833333333000000)
    end
    inherited QRSysData7: TQRSysData
      Left = 646
      Width = 72
      Size.Values = (
        50.270833333333330000
        1709.208333333333000000
        21.166666666666670000
        190.500000000000000000)
      FontSize = 12
      ExplicitLeft = 646
      ExplicitWidth = 72
    end
    object QRDBText1: TQRDBText
      Left = 8
      Top = 120
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        317.500000000000000000
        211.666666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTrCallDet
      DataField = 'Station.Name'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText4: TQRDBText
      Left = 216
      Top = 124
      Width = 143
      Height = 17
      Size.Values = (
        44.979166666666670000
        571.500000000000000000
        328.083333333333300000
        378.354166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTrCallDet
      DataField = 'Terminalid.TerminalCode'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
  end
  object QRBand1: TQRBand [3]
    Left = 38
    Top = 177
    Width = 239
    Height = 16
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      42.333333333333330000
      632.354166666666700000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object QRDBText2: TQRDBText
      Left = 8
      Top = 0
      Width = 92
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        0.000000000000000000
        243.416666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTrCallDet
      DataField = 'TRCALLDDATE'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText3: TQRDBText
      Left = 104
      Top = 0
      Width = 46
      Height = 17
      Size.Values = (
        44.979166666666670000
        275.166666666666700000
        0.000000000000000000
        121.708333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTrCallDet
      DataField = 'LStatus'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
  end
  object dtsTran: TDataSource
    DataSet = qryTrCallDet
    Left = 112
    Top = 72
  end
  object qryTrCallDet: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTrCallDetCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM V_TRCALLDET_MST')
    Left = 56
    Top = 72
    object qryTrCallDetStationName: TWideStringField
      FieldName = 'Station.Name'
      Size = 100
    end
    object qryTrCallDetTerminalidTerminalCode: TWideStringField
      FieldName = 'Terminalid.TerminalCode'
    end
    object qryTrCallDetMerchantName: TWideStringField
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object qryTrCallDetMerchantSAPCode: TWideStringField
      FieldName = 'Merchant.SAPCode'
      Size = 10
    end
    object qryTrCallDetTerminalTerminalid: TIntegerField
      FieldName = 'Terminal.Terminalid'
    end
    object qryTrCallDetStationStationId: TIntegerField
      FieldName = 'Station.StationId'
    end
    object qryTrCallDetMerchantMerchantId: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object qryTrCallDetMerchantMerchantCode: TWideStringField
      FieldName = 'Merchant.MerchantCode'
      Size = 50
    end
    object qryTrCallDetTRCALLDSTATUS: TIntegerField
      FieldName = 'TRCALLDSTATUS'
    end
    object qryTrCallDetTRCALLDDATE: TDateTimeField
      FieldName = 'TRCALLDDATE'
    end
    object qryTrCallDetTRCALLDSTATIONID: TIntegerField
      FieldName = 'TRCALLDSTATIONID'
    end
    object qryTrCallDetLStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'LStatus'
      Calculated = True
    end
  end
end
