inherited rptApostolhDet: TrptApostolhDet
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
  inherited QRBPF: TQRBand
    Top = 537
    Size.Values = (
      84.666666666666670000
      1899.708333333333000000)
    ExplicitTop = 537
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
    Top = 38
    Height = 219
    ForceNewPage = True
    Size.Values = (
      579.437500000000000000
      1899.708333333333000000)
    Expression = 'ADOQuery1.ACARD.ACARDID'
    Master = Owner
    ExplicitTop = 38
    ExplicitHeight = 219
    inherited QRACardLogo: TQRImage
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
      Size.Values = (
        50.270833333333330000
        1780.645833333333000000
        21.166666666666670000
        119.062500000000000000)
      FontSize = 12
    end
    object QRDBText4: TQRDBText
      Left = 16
      Top = 136
      Width = 116
      Height = 17
      Size.Values = (
        44.979166666666670000
        42.333333333333330000
        359.833333333333300000
        306.916666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'CUSTOMER.NAME'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText9: TQRDBText
      Left = 16
      Top = 160
      Width = 297
      Height = 17
      Size.Values = (
        44.979166666666700000
        42.333333333333300000
        423.333333333333000000
        785.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'CUSTOMER.STREET'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText8: TQRDBText
      Left = 16
      Top = 184
      Width = 41
      Height = 17
      Size.Values = (
        44.979166666666700000
        42.333333333333300000
        486.833333333333000000
        108.479166666667000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'CUSTOMER.ZIP'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText2: TQRDBText
      Left = 72
      Top = 184
      Width = 241
      Height = 17
      Size.Values = (
        44.979166666666700000
        190.500000000000000000
        486.833333333333000000
        637.645833333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'CUSTOMER.CITY'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
  end
  inherited QRBand6: TQRBand
    Height = 0
    Size.Values = (
      0.000000000000000000
      1899.708333333333000000)
    ExplicitHeight = 0
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
  end
  object QRBand1: TQRBand [3]
    Left = 38
    Top = 257
    Width = 718
    Height = 280
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      740.833333333333300000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object QRLabel1: TQRLabel
      Left = 8
      Top = 8
      Width = 40
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        21.166666666666670000
        105.833333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #922#940#961#964#945
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
      Left = 136
      Top = 8
      Width = 86
      Height = 17
      Size.Values = (
        44.979166666666670000
        359.833333333333300000
        21.166666666666670000
        227.541666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'AcardCodeFull'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRLabel2: TQRLabel
      Left = 8
      Top = 32
      Width = 107
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        84.666666666666670000
        283.104166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #913#961'.'#922#965#954#955#959#966#959#961#943#945#962
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
    object QRDBText5: TQRDBText
      Left = 136
      Top = 33
      Width = 48
      Height = 17
      Size.Values = (
        44.979166666666670000
        359.833333333333300000
        87.312500000000000000
        127.000000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'REGNO'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText10: TQRDBText
      Left = 136
      Top = 56
      Width = 42
      Height = 17
      Size.Values = (
        44.979166666666670000
        359.833333333333300000
        148.166666666666700000
        111.125000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'LProd1'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText11: TQRDBText
      Left = 136
      Top = 80
      Width = 42
      Height = 17
      Size.Values = (
        44.979166666666670000
        359.833333333333300000
        211.666666666666700000
        111.125000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'LProd2'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText12: TQRDBText
      Left = 136
      Top = 104
      Width = 42
      Height = 17
      Size.Values = (
        44.979166666666670000
        359.833333333333300000
        275.166666666666700000
        111.125000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'LProd3'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText13: TQRDBText
      Left = 136
      Top = 128
      Width = 42
      Height = 17
      Size.Values = (
        44.979166666666670000
        359.833333333333300000
        338.666666666666700000
        111.125000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'LProd4'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText6: TQRDBText
      Left = 136
      Top = 176
      Width = 86
      Height = 17
      Size.Values = (
        44.979166666666670000
        359.833333333333300000
        465.666666666666700000
        227.541666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'DAYAMOUNT'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText7: TQRDBText
      Left = 136
      Top = 200
      Width = 86
      Height = 17
      Size.Values = (
        44.979166666666670000
        359.833333333333300000
        529.166666666666700000
        227.541666666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'MONTHAMOUNT'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRLabel5: TQRLabel
      Left = 8
      Top = 200
      Width = 70
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        529.166666666666700000
        185.208333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #908#961#953#959' '#924#942#957#945
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
      Left = 8
      Top = 176
      Width = 82
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        465.666666666666700000
        216.958333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #908#961#953#959' '#919#956#941#961#945#962
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
    object QRLabel3: TQRLabel
      Left = 8
      Top = 56
      Width = 73
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        148.166666666666700000
        193.145833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #922#945#964#951#947#959#961#943#949#962
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
    object QRShape1: TQRShape
      Left = 456
      Top = 8
      Width = 241
      Height = 153
      Size.Values = (
        404.812500000000000000
        1206.500000000000000000
        21.166666666666700000
        637.645833333333000000)
      XLColumn = 0
      Shape = qrsRoundRect
      VertAdjust = 0
    end
    object QRLabel6: TQRLabel
      Left = 472
      Top = 80
      Width = 23
      Height = 17
      Size.Values = (
        44.979166666666670000
        1248.833333333333000000
        211.666666666666700000
        60.854166666666670000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'PIN'
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
    object QRDBText14: TQRDBText
      Left = 608
      Top = 80
      Width = 39
      Height = 20
      Size.Values = (
        52.916666666666670000
        1608.666666666667000000
        211.666666666666700000
        103.187500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'Pass'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 12
    end
    object QRDBText3: TQRDBText
      Left = 136
      Top = 152
      Width = 42
      Height = 17
      Size.Values = (
        44.979166666666670000
        359.833333333333300000
        402.166666666666700000
        111.125000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'LProd5'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText15: TQRDBText
      Left = 304
      Top = 56
      Width = 42
      Height = 17
      Size.Values = (
        44.979166666666670000
        804.333333333333300000
        148.166666666666700000
        111.125000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'LProd6'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText16: TQRDBText
      Left = 304
      Top = 80
      Width = 42
      Height = 17
      Size.Values = (
        44.979166666666670000
        804.333333333333300000
        211.666666666666700000
        111.125000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'LProd7'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText17: TQRDBText
      Left = 304
      Top = 104
      Width = 42
      Height = 17
      Size.Values = (
        44.979166666666670000
        804.333333333333300000
        275.166666666666700000
        111.125000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'LProd8'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText18: TQRDBText
      Left = 304
      Top = 128
      Width = 42
      Height = 17
      Size.Values = (
        44.979166666666670000
        804.333333333333300000
        338.666666666666700000
        111.125000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'LProd9'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText19: TQRDBText
      Left = 304
      Top = 152
      Width = 49
      Height = 17
      Size.Values = (
        44.979166666666670000
        804.333333333333300000
        402.166666666666700000
        129.645833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'LProd10'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = ADOQuery1CalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM V_ACARD_ETC_SINGLE'
      '')
    Left = 48
    Top = 96
    object ADOQuery1LProd1: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd1'
      LookupDataSet = qryIGroup
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'ACARD.IGROUPID1'
      LookupCache = True
      Lookup = True
    end
    object ADOQuery1LProd2: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd2'
      LookupDataSet = qryIGroup
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'ACARD.IGROUPID2'
      LookupCache = True
      Lookup = True
    end
    object ADOQuery1LProd3: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd3'
      LookupDataSet = qryIGroup
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'ACARD.IGROUPID3'
      LookupCache = True
      Lookup = True
    end
    object ADOQuery1LProd4: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd4'
      LookupDataSet = qryIGroup
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'ACARD.IGROUPID4'
      LookupCache = True
      Lookup = True
    end
    object ADOQuery1LProd5: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd5'
      LookupDataSet = qryIGroup
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'ACARD.IGROUPID5'
      LookupCache = True
      Lookup = True
    end
    object ADOQuery1LProd6: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd6'
      LookupDataSet = qryIGroup
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'ACARD.IGROUPID6'
      LookupCache = True
      Lookup = True
    end
    object ADOQuery1LProd7: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd7'
      LookupDataSet = qryIGroup
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'ACARD.IGROUPID7'
      LookupCache = True
      Lookup = True
    end
    object ADOQuery1LProd8: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd8'
      LookupDataSet = qryIGroup
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'ACARD.IGROUPID8'
      LookupCache = True
      Lookup = True
    end
    object ADOQuery1LProd9: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd9'
      LookupDataSet = qryIGroup
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'ACARD.IGROUPID9'
      LookupCache = True
      Lookup = True
    end
    object ADOQuery1LProd10: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd10'
      LookupDataSet = qryIGroup
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'ACARD.IGROUPID10'
      LookupCache = True
      Lookup = True
    end
    object ADOQuery1Pass: TStringField
      FieldKind = fkCalculated
      FieldName = 'Pass'
      Calculated = True
    end
    object ADOQuery1Pukk: TStringField
      FieldKind = fkCalculated
      FieldName = 'Pukk'
      Calculated = True
    end
    object ADOQuery1ACARDACARDID: TIntegerField
      FieldName = 'ACARD.ACARDID'
    end
    object ADOQuery1ACARDACARDCODE: TWideStringField
      FieldName = 'ACARD.ACARDCODE'
      Size = 50
    end
    object ADOQuery1ACARDCUSTOMERID0: TIntegerField
      FieldName = 'ACARD.CUSTOMERID0'
    end
    object ADOQuery1ACARDISSUEDATE: TDateTimeField
      FieldName = 'ACARD.ISSUEDATE'
    end
    object ADOQuery1ACARDEXPIREDATE: TDateTimeField
      FieldName = 'ACARD.EXPIREDATE'
    end
    object ADOQuery1ACARDMETERBOOLEAN: TBooleanField
      FieldName = 'ACARD.METERBOOLEAN'
    end
    object ADOQuery1ACARDPINBOOLEAN: TBooleanField
      FieldName = 'ACARD.PINBOOLEAN'
    end
    object ADOQuery1ACARDINSDT: TDateTimeField
      FieldName = 'ACARD.INSDT'
    end
    object ADOQuery1ACARDUPDDT: TDateTimeField
      FieldName = 'ACARD.UPDDT'
    end
    object ADOQuery1ACARDINSUSR: TIntegerField
      FieldName = 'ACARD.INSUSR'
    end
    object ADOQuery1ACARDUPDUSR: TIntegerField
      FieldName = 'ACARD.UPDUSR'
    end
    object ADOQuery1ACARDSTARTDATE: TDateTimeField
      FieldName = 'ACARD.STARTDATE'
    end
    object ADOQuery1ACARDVTYPEID: TIntegerField
      FieldName = 'ACARD.VTYPEID'
    end
    object ADOQuery1ACARDCREATEBOOLEAN: TBooleanField
      FieldName = 'ACARD.CREATEBOOLEAN'
    end
    object ADOQuery1ACARDBLACKLISTBOOLEAN: TBooleanField
      FieldName = 'ACARD.BLACKLISTBOOLEAN'
    end
    object ADOQuery1ACARDBLACKLISTDATE: TDateTimeField
      FieldName = 'ACARD.BLACKLISTDATE'
    end
    object ADOQuery1ACARDBLACKLISTUSR: TIntegerField
      FieldName = 'ACARD.BLACKLISTUSR'
    end
    object ADOQuery1ACARDBLACKLISTNOTES: TWideStringField
      FieldName = 'ACARD.BLACKLISTNOTES'
      Size = 200
    end
    object ADOQuery1ACARDIGROUPID1: TIntegerField
      FieldName = 'ACARD.IGROUPID1'
    end
    object ADOQuery1ACARDIGROUPID2: TIntegerField
      FieldName = 'ACARD.IGROUPID2'
    end
    object ADOQuery1ACARDIGROUPID3: TIntegerField
      FieldName = 'ACARD.IGROUPID3'
    end
    object ADOQuery1ACARDIGROUPID4: TIntegerField
      FieldName = 'ACARD.IGROUPID4'
    end
    object ADOQuery1DAYAMOUNT: TFloatField
      FieldName = 'DAYAMOUNT'
      currency = True
    end
    object ADOQuery1MONTHAMOUNT: TFloatField
      FieldName = 'MONTHAMOUNT'
      currency = True
    end
    object ADOQuery1REGNO: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
    object ADOQuery1ACARDHOLDER: TWideStringField
      FieldName = 'ACARDHOLDER'
      Size = 30
    end
    object ADOQuery1ISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object ADOQuery1EXPIREPHDATE: TDateTimeField
      FieldName = 'EXPIREPHDATE'
    end
    object ADOQuery1EXPIRELODATE: TDateTimeField
      FieldName = 'EXPIRELODATE'
    end
    object ADOQuery1ACARDIGROUPID5: TIntegerField
      FieldName = 'ACARD.IGROUPID5'
    end
    object ADOQuery1EMPLOYEESID: TIntegerField
      FieldName = 'EMPLOYEESID'
    end
    object ADOQuery1NEWCARDBOOLEAN: TBooleanField
      FieldName = 'NEWCARDBOOLEAN'
    end
    object ADOQuery1NEWCARDID: TIntegerField
      FieldName = 'NEWCARDID'
    end
    object ADOQuery1CARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object ADOQuery1ACARDCODENUM: TIntegerField
      FieldName = 'ACARDCODENUM'
    end
    object ADOQuery1INACTIVEDATE: TDateTimeField
      FieldName = 'INACTIVEDATE'
    end
    object ADOQuery1INACTIVEUSR: TIntegerField
      FieldName = 'INACTIVEUSR'
    end
    object ADOQuery1INACTIVENOTES: TWideStringField
      FieldName = 'INACTIVENOTES'
      FixedChar = True
      Size = 200
    end
    object ADOQuery1ACARDIGROUPID6: TIntegerField
      FieldName = 'ACARD.IGROUPID6'
    end
    object ADOQuery1ACARDIGROUPID7: TIntegerField
      FieldName = 'ACARD.IGROUPID7'
    end
    object ADOQuery1ACARDIGROUPID8: TIntegerField
      FieldName = 'ACARD.IGROUPID8'
    end
    object ADOQuery1ACARDIGROUPID9: TIntegerField
      FieldName = 'ACARD.IGROUPID9'
    end
    object ADOQuery1ACARDIGROUPID10: TIntegerField
      FieldName = 'ACARD.IGROUPID10'
    end
    object ADOQuery1COSTCENTERID: TIntegerField
      FieldName = 'COSTCENTERID'
    end
    object ADOQuery1VTypeDescr: TWideStringField
      FieldName = 'VType.Descr'
      Size = 50
    end
    object ADOQuery1CClassDescr: TWideStringField
      FieldName = 'CClass.Descr'
      Size = 50
    end
    object ADOQuery1CUSTOMERDescr: TWideStringField
      FieldName = 'CUSTOMER.Descr'
      Size = 50
    end
    object ADOQuery1CUSTOMERName: TWideStringField
      FieldName = 'CUSTOMER.Name'
      Size = 50
    end
    object ADOQuery1CGroupDescr: TWideStringField
      FieldName = 'CGroup.Descr'
      Size = 50
    end
    object ADOQuery1AcardCUSTOMERId: TIntegerField
      FieldName = 'Acard.CUSTOMERId'
    end
    object ADOQuery1CUSTOMERStreet: TWideStringField
      FieldName = 'CUSTOMER.Street'
      Size = 50
    end
    object ADOQuery1CUSTOMERZip: TWideStringField
      FieldName = 'CUSTOMER.Zip'
      Size = 50
    end
    object ADOQuery1CUSTOMERCity: TWideStringField
      FieldName = 'CUSTOMER.City'
      Size = 50
    end
    object ADOQuery1CUSTOMERSAPCODE: TWideStringField
      FieldName = 'CUSTOMER.SAPCODE'
      Size = 10
    end
    object ADOQuery1CUSTOMERHASDETAILEMP: TBooleanField
      FieldName = 'CUSTOMER.HASDETAILEMP'
    end
    object ADOQuery1CUSTOMERCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMER.CUSTOMERID'
    end
    object ADOQuery1CUSTOMERISTEST: TBooleanField
      FieldName = 'CUSTOMER.ISTEST'
    end
    object ADOQuery1CostCenterCCName: TWideStringField
      FieldName = 'CostCenter.CCName'
      Size = 50
    end
    object ADOQuery1ACARDPENDING: TBooleanField
      FieldName = 'ACARD.PENDING'
    end
    object ADOQuery1AcardCodeFull: TWideStringField
      FieldName = 'AcardCodeFull'
      ReadOnly = True
      Size = 19
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 104
    Top = 96
  end
  object qryIGroup: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = ADOQuery1CalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT Id,Name'
      'FROM IGroup'
      '')
    Left = 408
    Top = 104
    object qryIGroupId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qryIGroupName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
end
