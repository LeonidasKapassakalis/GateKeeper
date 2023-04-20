inherited rptKinhsMisth: TrptKinhsMisth
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
  ReportTitle = #913#957#945#955#965#964#953#954#940' '#931#964#959#953#967#949#943#945' '#931#965#957#945#955#955#945#947#974#957
  inherited QRBPF: TQRBand
    Top = 261
    Height = 24
    Enabled = False
    Size.Values = (
      63.500000000000000000
      1899.708333333333000000)
    ExplicitTop = 261
    ExplicitHeight = 24
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
    Top = 221
    Height = 0
    ForceNewPage = True
    Size.Values = (
      0.000000000000000000
      1899.708333333333000000)
    Expression = 'qryTran.CUSTOMERID'
    Master = Owner
    ExplicitTop = 221
    ExplicitHeight = 0
    inherited QRACardLogo: TQRImage
      Width = 137
      Height = 17
      Enabled = False
      Size.Values = (
        44.979166666666700000
        21.166666666666700000
        21.166666666666700000
        362.479166666667000000)
      ExplicitWidth = 137
      ExplicitHeight = 17
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
      Enabled = False
      Size.Values = (
        50.270833333333330000
        1780.645833333333000000
        21.166666666666670000
        119.062500000000000000)
      FontSize = 12
    end
  end
  object QRBDetail: TQRBand [2]
    Left = 38
    Top = 221
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
    object QRDBText1: TQRDBText
      Left = 0
      Top = 0
      Width = 62
      Height = 17
      Size.Values = (
        44.979166666666670000
        0.000000000000000000
        0.000000000000000000
        164.041666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LSurName'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText2: TQRDBText
      Left = 208
      Top = 0
      Width = 65
      Height = 17
      Size.Values = (
        44.979166666666670000
        550.333333333333400000
        0.000000000000000000
        171.979166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'LName'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText3: TQRDBText
      Left = 624
      Top = 0
      Width = 89
      Height = 17
      Size.Values = (
        44.979166666666670000
        1651.000000000000000000
        0.000000000000000000
        235.479166666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'SUMDISAMOUNT'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText6: TQRDBText
      Left = 426
      Top = -1
      Width = 106
      Height = 17
      Size.Values = (
        44.979166666666670000
        1127.125000000000000000
        -2.645833333333333000
        280.458333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'Employees.MhtrId'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText12: TQRDBText
      Left = 466
      Top = 0
      Width = 113
      Height = 17
      Size.Values = (
        44.979166666666670000
        1232.958333333333000000
        0.000000000000000000
        298.979166666666700000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = qryTran
      DataField = 'SUMAMOUNT'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
  end
  inherited QRBand6: TQRBand
    Height = 183
    Frame.DrawBottom = True
    Frame.Width = 3
    Size.Values = (
      484.187500000000000000
      1899.708333333333000000)
    ExplicitHeight = 183
    inherited QRSysData6: TQRSysData
      Left = 312
      Width = 94
      Height = 20
      Size.Values = (
        52.916666666666670000
        825.500000000000000000
        21.166666666666670000
        248.708333333333300000)
      Font.Style = [fsBold, fsUnderline]
      FontSize = 12
      ExplicitLeft = 312
      ExplicitWidth = 94
      ExplicitHeight = 20
    end
    inherited QRACardLogo1: TQRImage
      Size.Values = (
        288.395833333333000000
        21.166666666666700000
        21.166666666666700000
        431.270833333333000000)
    end
    inherited QRSysData7: TQRSysData
      Enabled = False
      Size.Values = (
        50.270833333333330000
        1780.645833333333000000
        21.166666666666670000
        119.062500000000000000)
      FontSize = 12
    end
    object QRLabel15: TQRLabel
      Left = 760
      Top = 48
      Width = 59
      Height = 20
      Size.Values = (
        52.916666666666670000
        2010.833333333333000000
        127.000000000000000000
        156.104166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #917#964#945#953#961#949#943#945
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
    object QRDBText11: TQRDBText
      Left = 832
      Top = 48
      Width = 153
      Height = 17
      Size.Values = (
        44.979166666666700000
        2201.333333333330000000
        127.000000000000000000
        404.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataField = 'CUSTOMER.NAME'
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRLabel4: TQRLabel
      Left = 624
      Top = 157
      Width = 72
      Height = 20
      Size.Values = (
        52.916666666666670000
        1651.000000000000000000
        415.395833333333300000
        190.500000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #904#954#960#964#969#963#951
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
    object QRLabel11: TQRLabel
      Left = 520
      Top = 157
      Width = 30
      Height = 20
      Size.Values = (
        52.916666666666670000
        1375.833333333333000000
        415.395833333333300000
        79.375000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #913#958#943#945
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
      Left = 8
      Top = 160
      Width = 72
      Height = 20
      Size.Values = (
        52.916666666666670000
        21.166666666666670000
        423.333333333333300000
        190.500000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #917#960#974#957#965#956#959
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
    object QRLabel2: TQRLabel
      Left = 208
      Top = 157
      Width = 49
      Height = 20
      Size.Values = (
        52.916666666666670000
        550.333333333333300000
        415.395833333333300000
        129.645833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = #908#957#959#956#945
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
  object QRBand1: TQRBand [4]
    Left = 38
    Top = 237
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
    BandType = rbSummary
    object QRExpr2: TQRExpr
      Left = 506
      Top = 1
      Width = 73
      Height = 17
      Frame.DrawTop = True
      Size.Values = (
        44.979166666666670000
        1338.791666666667000000
        2.645833333333333000
        193.145833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      OnPrint = QRDBText4Print
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.SUMAMOUNT)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRExpr1: TQRExpr
      Left = 624
      Top = 1
      Width = 73
      Height = 17
      Frame.DrawTop = True
      Size.Values = (
        44.979166666666670000
        1651.000000000000000000
        2.645833333333333000
        193.145833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      OnPrint = QRDBText4Print
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      Expression = 'SUM(qryTran.SUMDISAMOUNT)'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel8: TQRLabel
      Left = 360
      Top = 6
      Width = 73
      Height = 20
      Size.Values = (
        52.916666666666660000
        952.500000000000000000
        15.875000000000000000
        193.145833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #931#973#957#959#955#959' '
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
  inherited QRCSVFilter1: TQRCSVFilter
    Left = 224
    Top = 4
  end
  inherited QRExcelFilter1: TQRExcelFilter
    Left = 288
    Top = 4
  end
  inherited QRRTFFilter1: TQRRTFFilter
    Left = 352
    Top = 4
  end
  inherited QRWMFFilter1: TQRWMFFilter
    Left = 404
    Top = 4
  end
  inherited QRPDFFilter1: TQRPDFFilter
    Left = 472
    Top = 0
  end
  inherited QRHTMLFilter1: TQRHTMLFilter
    Left = 536
    Top = 0
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 168
    Top = 8
  end
  object qryTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Sum([TRAN].AMOUNT)    As SUMAMOUNT,'
      '       Sum([TRAN].DISAMOUNT) As SUMDISAMOUNT,'
      '       Sum([TRAN].QUANTITY)  As SUMQUANTITY,'
      '        MhtrId      As [Employees.MhtrId],'
      '       Customer.CustomerId  As [Customer.CustomerId]'
      
        'FROM (CUSTOMER INNER JOIN (ACARD INNER JOIN EMPLOYEES ON ACARD.E' +
        'MPLOYEESID = EMPLOYEES.Id) ON CUSTOMER.CUSTOMERID = ACARD.CUSTOM' +
        'ERID) INNER JOIN [TRAN] ON ACARD.ACARDID = [TRAN].ACARDID'
      ''
      '---GROUP BY  MhtrId, Customer.CustomerId ')
    Left = 80
    Top = 108
    object qryTranSUMAMOUNT: TFloatField
      FieldName = 'SUMAMOUNT'
      currency = True
    end
    object qryTranSUMDISAMOUNT: TFloatField
      FieldName = 'SUMDISAMOUNT'
      currency = True
    end
    object qryTranSUMQUANTITY: TFloatField
      FieldName = 'SUMQUANTITY'
    end
    object qryTranLName: TStringField
      FieldKind = fkLookup
      FieldName = 'LName'
      LookupDataSet = qEmployees
      LookupKeyFields = 'MhtrId'
      LookupResultField = 'Name'
      KeyFields = 'Employees.MhtrId'
      Lookup = True
    end
    object qryTranLSurName: TStringField
      FieldKind = fkLookup
      FieldName = 'LSurName'
      LookupDataSet = qEmployees
      LookupKeyFields = 'MhtrId'
      LookupResultField = 'SurName'
      KeyFields = 'Employees.MhtrId'
      Lookup = True
    end
    object qryTranEmployeesMhtrId: TIntegerField
      FieldName = 'Employees.MhtrId'
    end
    object qryTranCustomerCustomerId: TAutoIncField
      FieldName = 'Customer.CustomerId'
      ReadOnly = True
    end
  end
  object qEmployees: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dtsTran
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM Employees')
    Left = 464
    Top = 104
    object qEmployeesId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qEmployeesCustomerId: TIntegerField
      FieldName = 'CustomerId'
    end
    object qEmployeesMhtrId: TIntegerField
      FieldName = 'MhtrId'
    end
    object qEmployeesName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object qEmployeesSurName: TWideStringField
      FieldName = 'SurName'
      Size = 50
    end
    object qEmployeesAddress: TWideStringField
      FieldName = 'Address'
      Size = 50
    end
    object qEmployeesTK: TWideStringField
      FieldName = 'TK'
      Size = 5
    end
    object qEmployeesTown: TWideStringField
      FieldName = 'Town'
      Size = 50
    end
    object qEmployeesAFM: TWideStringField
      FieldName = 'AFM'
      Size = 9
    end
    object qEmployeesDOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object qEmployeesYpokId: TIntegerField
      FieldName = 'YpokId'
    end
  end
end
