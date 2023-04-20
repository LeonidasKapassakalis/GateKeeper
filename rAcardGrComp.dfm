inherited rptAcardGrComp: TrptAcardGrComp
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
    Top = 289
    Enabled = False
    Size.Values = (
      84.666666666666670000
      1899.708333333333000000)
    ExplicitTop = 289
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
    Top = 273
    Height = 0
    ForceNewPage = True
    Size.Values = (
      0.000000000000000000
      1899.708333333333000000)
    Expression = 'ADOQuery1.CUSTOMER.CUSTOMERID'
    Master = Owner
    ExplicitTop = 273
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
    Height = 235
    Size.Values = (
      621.770833333333300000
      1899.708333333333000000)
    ExplicitHeight = 235
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
    object QRDBText4: TQRDBText
      Left = 400
      Top = 104
      Width = 297
      Height = 17
      Size.Values = (
        44.979166666666700000
        1058.333333333330000000
        275.166666666667000000
        785.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
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
      Left = 400
      Top = 128
      Width = 297
      Height = 17
      Size.Values = (
        44.979166666666700000
        1058.333333333330000000
        338.666666666667000000
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
      Left = 400
      Top = 152
      Width = 41
      Height = 17
      Size.Values = (
        44.979166666666700000
        1058.333333333330000000
        402.166666666667000000
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
      Left = 464
      Top = 152
      Width = 233
      Height = 17
      Size.Values = (
        44.979166666666700000
        1227.666666666670000000
        402.166666666667000000
        616.479166666667000000)
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
    object QRLabel2: TQRLabel
      Left = 200
      Top = 200
      Width = 73
      Height = 33
      Size.Values = (
        87.312500000000000000
        529.166666666667000000
        529.166666666667000000
        193.145833333333000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #913#961'.'#922#965#954#955'. '#927#967#942#956#945#964#959#962
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
      Left = 360
      Top = 200
      Width = 81
      Height = 33
      Size.Values = (
        87.312500000000000000
        952.500000000000000000
        529.166666666667000000
        214.312500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #919#956#949#961#959#956#951#957#943#945' '#904#957#945#961#958#951#962
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
      Left = 504
      Top = 200
      Width = 81
      Height = 33
      Size.Values = (
        87.312500000000000000
        1333.500000000000000000
        529.166666666667000000
        214.312500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = #919#956#949#961#959#956#951#957#943#945' '#923#942#958#951#962
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
    object QRLabel1: TQRLabel
      Left = 8
      Top = 216
      Width = 102
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        571.500000000000000000
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
  end
  object QRBand3: TQRBand [3]
    Left = 38
    Top = 273
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
      Left = 24
      Top = 0
      Width = 65
      Height = 17
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        0.000000000000000000
        171.979166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'FullCardNo'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText5: TQRDBText
      Left = 216
      Top = 0
      Width = 48
      Height = 17
      Size.Values = (
        44.979166666666670000
        571.500000000000000000
        0.000000000000000000
        127.000000000000000000)
      XLColumn = 0
      Alignment = taCenter
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
    object QRDBText6: TQRDBText
      Left = 360
      Top = 0
      Width = 97
      Height = 17
      Size.Values = (
        44.979166666666700000
        952.500000000000000000
        0.000000000000000000
        256.645833333333000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'ACARD.ISSUEDATE'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRDBText7: TQRDBText
      Left = 496
      Top = 0
      Width = 105
      Height = 17
      Size.Values = (
        44.979166666666700000
        1312.333333333330000000
        0.000000000000000000
        277.812500000000000000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'ACARD.EXPIREDATE'
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
    Top = 80
    object ADOQuery1FullCardNo: TStringField
      FieldKind = fkCalculated
      FieldName = 'FullCardNo'
      Size = 19
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
    end
    object ADOQuery1MONTHAMOUNT: TFloatField
      FieldName = 'MONTHAMOUNT'
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
    Left = 48
    Top = 8
  end
end
