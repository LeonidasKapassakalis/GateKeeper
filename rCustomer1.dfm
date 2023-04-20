inherited rptCustomer1: TrptCustomer1
  DataSet = qryCustomer
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
  ReportTitle = #917#960#953#963#964#959#955#942' '#928#949#955#945#964#974#957
  inherited QRBPF: TQRBand
    Top = 858
    Enabled = False
    Size.Values = (
      84.666666666666670000
      1899.708333333333000000)
    ExplicitTop = 858
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
    Top = 297
    Height = 0
    Size.Values = (
      0.000000000000000000
      1899.708333333333000000)
    Master = Owner
    ExplicitTop = 297
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
    Height = 259
    Size.Values = (
      685.270833333333300000
      1899.708333333333000000)
    ExplicitHeight = 259
    inherited QRSysData6: TQRSysData
      Enabled = False
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
      Left = 682
      Width = 36
      Size.Values = (
        50.270833333333330000
        1804.458333333333000000
        21.166666666666670000
        95.250000000000000000)
      Font.Height = -13
      Font.Style = []
      FontSize = 10
      ExplicitLeft = 682
      ExplicitWidth = 36
    end
    object QRLabel2: TQRLabel
      Left = 592
      Top = 8
      Width = 40
      Height = 17
      Size.Values = (
        44.979166666666670000
        1566.333333333333000000
        21.166666666666670000
        105.833333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #913#952#942#957#945
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
      Left = 376
      Top = 104
      Width = 33
      Height = 17
      Size.Values = (
        44.979166666666670000
        994.833333333333400000
        275.166666666666700000
        87.312500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #928#961#972#962
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
    object QRDBText2: TQRDBText
      Left = 432
      Top = 104
      Width = 273
      Height = 17
      Size.Values = (
        44.979166666666700000
        1143.000000000000000000
        275.166666666667000000
        722.312500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      DataSet = qryCustomer
      DataField = 'NAME'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText5: TQRDBText
      Left = 376
      Top = 144
      Width = 41
      Height = 17
      Size.Values = (
        44.979166666666670000
        994.833333333333400000
        381.000000000000000000
        108.479166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryCustomer
      DataField = 'MrMs2'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText4: TQRDBText
      Left = 432
      Top = 144
      Width = 43
      Height = 17
      Size.Values = (
        44.979166666666670000
        1143.000000000000000000
        381.000000000000000000
        113.770833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryCustomer
      DataField = 'FName'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText3: TQRDBText
      Left = 432
      Top = 160
      Width = 51
      Height = 17
      Size.Values = (
        44.979166666666670000
        1143.000000000000000000
        423.333333333333300000
        134.937500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryCustomer
      DataField = 'STREET'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText1: TQRDBText
      Left = 432
      Top = 176
      Width = 20
      Height = 17
      Size.Values = (
        44.979166666666670000
        1143.000000000000000000
        465.666666666666700000
        52.916666666666670000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryCustomer
      DataField = 'ZIP'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText6: TQRDBText
      Left = 48
      Top = 232
      Width = 41
      Height = 17
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        613.833333333333400000
        108.479166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryCustomer
      DataField = 'MrMs1'
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
    Top = 297
    Width = 718
    Height = 561
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      1484.312500000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object QRDBRichText1: TQRDBRichText
      Left = 24
      Top = 8
      Width = 673
      Height = 745
      Size.Values = (
        1971.145833333330000000
        63.500000000000000000
        21.166666666666700000
        1780.645833333330000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AutoStretch = False
      Color = clWindow
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      HiresExport = False
      DataField = 'FText'
      DataSet = qryCustomer
    end
  end
  inherited QRTextFilter1: TQRTextFilter
    Left = 592
    Top = 316
  end
  inherited QRCSVFilter1: TQRCSVFilter
    Left = 592
    Top = 372
  end
  inherited QRExcelFilter1: TQRExcelFilter
    Left = 592
    Top = 420
  end
  inherited QRRTFFilter1: TQRRTFFilter
    Left = 680
    Top = 412
  end
  inherited QRWMFFilter1: TQRWMFFilter
    Left = 684
    Top = 468
  end
  inherited QRPDFFilter1: TQRPDFFilter
    Left = 680
    Top = 320
  end
  inherited QRHTMLFilter1: TQRHTMLFilter
    Left = 680
    Top = 368
  end
  object qryCustomer: TADOQuery
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = qryCustomerCalcFields
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'SELECT Customer.* , FText'
      'FROM Customer, TextTab')
    Left = 64
    Top = 176
    object qryCustomerFText: TBlobField
      FieldName = 'FText'
      LookupCache = True
    end
    object qryCustomerMrMs1: TStringField
      FieldKind = fkCalculated
      FieldName = 'MrMs1'
      Calculated = True
    end
    object qryCustomerMrMs2: TStringField
      FieldKind = fkCalculated
      FieldName = 'MrMs2'
      Calculated = True
    end
    object qryCustomerFName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FName'
      Size = 50
      Calculated = True
    end
    object qryCustomerCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
      ReadOnly = True
    end
    object qryCustomerNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object qryCustomerSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object qryCustomerZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryCustomerCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryCustomerAFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object qryCustomerDOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object qryCustomerSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qryCustomerAREAID: TIntegerField
      FieldName = 'AREAID'
    end
    object qryCustomerLOCATIONID: TIntegerField
      FieldName = 'LOCATIONID'
    end
    object qryCustomerCGROUPID: TIntegerField
      FieldName = 'CGROUPID'
    end
    object qryCustomerCCLASSID: TIntegerField
      FieldName = 'CCLASSID'
    end
    object qryCustomerCREDITAMOUNT: TFloatField
      FieldName = 'CREDITAMOUNT'
    end
    object qryCustomerINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryCustomerUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryCustomerINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryCustomerUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryCustomerPROFESSION: TWideStringField
      FieldName = 'PROFESSION'
      Size = 50
    end
    object qryCustomerBRANCHID: TIntegerField
      FieldName = 'BRANCHID'
    end
    object qryCustomerSAPCODE: TWideStringField
      FieldName = 'SAPCODE'
      Size = 10
    end
    object qryCustomerISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qryCustomerSALESMENID: TIntegerField
      FieldName = 'SALESMENID'
    end
    object qryCustomerDIAKID: TIntegerField
      FieldName = 'DIAKID'
    end
    object qryCustomerISTEST: TBooleanField
      FieldName = 'ISTEST'
    end
    object qryCustomerISCONS: TBooleanField
      FieldName = 'ISCONS'
    end
    object qryCustomerAREABID: TIntegerField
      FieldName = 'AREABID'
    end
    object qryCustomerDATEPHEND: TDateTimeField
      FieldName = 'DATEPHEND'
    end
    object qryCustomerDATELOEND: TDateTimeField
      FieldName = 'DATELOEND'
    end
    object qryCustomerHASDETAILEMP: TBooleanField
      FieldName = 'HASDETAILEMP'
    end
    object qryCustomerALLCARDSTOBL: TBooleanField
      FieldName = 'ALLCARDSTOBL'
    end
    object qryCustomerALLCARDSTOBLDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLDATE'
    end
    object qryCustomerALLCARDSTOBLSYSDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLSYSDATE'
    end
    object qryCustomerALLCARDSTOBLUSR: TIntegerField
      FieldName = 'ALLCARDSTOBLUSR'
    end
    object qryCustomerCUSTOMEROFF: TBooleanField
      FieldName = 'CUSTOMEROFF'
    end
    object qryCustomerCUSTOMEROFFDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFDATE'
    end
    object qryCustomerCUSTOMEROFFSYSDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFSYSDATE'
    end
    object qryCustomerCUSTOMEROFFUSR: TIntegerField
      FieldName = 'CUSTOMEROFFUSR'
    end
    object qryCustomerCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object qryCustomerDATEEND: TDateTimeField
      FieldName = 'DATEEND'
    end
    object qryCustomerCompanyTypeId: TIntegerField
      FieldName = 'CompanyTypeId'
    end
  end
  object dtsStation: TDataSource
    AutoEdit = False
    DataSet = qryCustomer
    Left = 112
    Top = 176
  end
end
