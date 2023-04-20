inherited rptTrCallDet1: TrptTrCallDet1
  DataSet = qryTrCallDet
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
    Height = 0
    ForceNewPage = True
    Size.Values = (
      0.000000000000000000
      1899.708333333333000000)
    Expression = 'qryTrCallDet.LTrick'
    Master = Owner
    ExplicitTop = 177
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
    Height = 139
    Size.Values = (
      367.770833333333300000
      1899.708333333333000000)
    ExplicitHeight = 139
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
    object QRDBText1: TQRDBText
      Left = 16
      Top = 120
      Width = 122
      Height = 20
      Size.Values = (
        52.916666666666670000
        42.333333333333330000
        317.500000000000000000
        322.791666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTrCallDet
      DataField = 'TRCALLDDATE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 12
    end
    object QRDBText4: TQRDBText
      Left = 216
      Top = 120
      Width = 60
      Height = 20
      Size.Values = (
        52.916666666666670000
        571.500000000000000000
        317.500000000000000000
        158.750000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTrCallDet
      DataField = 'LStatus'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 12
    end
  end
  object QRBand1: TQRBand [3]
    Left = 38
    Top = 177
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
      Left = 16
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        42.333333333333330000
        0.000000000000000000
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
    object QRDBText3: TQRDBText
      Left = 564
      Top = 0
      Width = 143
      Height = 17
      Size.Values = (
        44.979166666666670000
        1492.250000000000000000
        0.000000000000000000
        378.354166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTrCallDet
      DataField = 'Terminalid.TerminalCode'
      Transparent = False
      ExportAs = exptNumeric
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
  end
  object dtsTran: TDataSource
    DataSet = qryTrCallDet
    Left = 128
    Top = 80
  end
  object qryTrCallDet: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = qryTrCallDetCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM V_TRCALLDET_MST')
    Left = 72
    Top = 80
    object qryTrCallDetLStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'LStatus'
      Calculated = True
    end
    object qryTrCallDetLTrick: TStringField
      FieldKind = fkCalculated
      FieldName = 'LTrick'
      Calculated = True
    end
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
  end
end
