inherited rptApostolh: TrptApostolh
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
    Top = 929
    Enabled = False
    Size.Values = (
      84.666666666666670000
      1899.708333333333000000)
    ExplicitTop = 929
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
    Top = 217
    Height = 400
    ForceNewPage = True
    Size.Values = (
      1058.333333333333000000
      1899.708333333333000000)
    Expression = 'ADOQuery1.CUSTOMER.CUSTOMERID'
    FooterBand = QRBand5
    Master = Owner
    ExplicitTop = 217
    ExplicitHeight = 400
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
      AlignToBand = False
      FontSize = 12
    end
    object QRMemo1: TQRMemo
      Left = 8
      Top = 248
      Width = 681
      Height = 113
      Size.Values = (
        298.979166666667000000
        21.166666666666700000
        656.166666666667000000
        1801.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      Lines.Strings = (
        ''
        ''
        
          #917#965#967#945#961#953#963#964#959#973#956#949' '#960#959#965' '#949#960#953#955#941#958#945#964#949' '#964#951#957' AVINCARD '#947#953#945' '#964#951#957' '#948#953#945#967#949#943#961#953#963#951' '#964#959#965' '#963 +
          #964#972#955#959#965' '#964#969#957' '#959#967#951#956#940#964#969#957' '#963#945#962'.'
        ''
        
          #931#973#956#966#969#957#945' '#956#949' '#972#963#945' '#941#967#949#964#949' '#950#951#964#942#963#949#953' '#956#949' '#964#951#957' '#913#943#964#951#963#951' '#904#954#948#959#963#951#962' AvinCard '#954#945#953' ' +
          #956#949' '#972#963#945' '#941#967#959#965#956#949' '#956#949#964#945#958#973' '#956#945#962' '#963#965#956#966#969#957#942#963#949#953' '#956#949' '#964#951#957' '#965#960#959#947#961#945#966#942' '#964#951#962' '#963#973#956#946#945#963#951#962 +
          ' '#171#927#965#963#953#974#948#949#953#962' '#908#961#959#953' '#935#959#961#942#947#951#963#951#962' '#922#940#961#964#945#962' AVINCARD'#187' '#941#967#959#965#956#949' '#949#954#948#974#963#949#953' '#964#953#962' '#954 +
          #940#964#969#952#953' '#954#940#961#964#949#962' AVINCARD '#947#953#945' '#964#945' '#959#967#942#956#945#964#945' '#964#951#962' '#949#964#945#953#961#949#943#945#962' '#963#945#962'.')
      Transparent = False
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
    object QRLabel1: TQRLabel
      Left = 8
      Top = 376
      Width = 102
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        994.833333333333300000
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
    object QRLabel2: TQRLabel
      Left = 192
      Top = 360
      Width = 73
      Height = 33
      Size.Values = (
        87.312500000000000000
        508.000000000000000000
        952.500000000000000000
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
      Top = 360
      Width = 81
      Height = 33
      Size.Values = (
        87.312500000000000000
        952.500000000000000000
        952.500000000000000000
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
      Top = 360
      Width = 81
      Height = 33
      Size.Values = (
        87.312500000000000000
        1333.500000000000000000
        952.500000000000000000
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
    object QRDBText3: TQRDBText
      Left = 136
      Top = 248
      Width = 148
      Height = 17
      Size.Values = (
        44.979166666666670000
        359.833333333333300000
        656.166666666666700000
        391.583333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'CUSTOMER.LASTNAME'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
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
    object QRDBText10: TQRDBText
      Left = 4
      Top = 248
      Width = 34
      Height = 17
      Size.Values = (
        44.979166666666670000
        10.583333333333330000
        656.166666666666700000
        89.958333333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = ADOQuery1
      DataField = 'MrMs'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      FontSize = 10
    end
  end
  inherited QRBand6: TQRBand
    Height = 179
    Enabled = False
    Size.Values = (
      473.604166666666700000
      1899.708333333333000000)
    ExplicitHeight = 179
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
      Size.Values = (
        50.270833333333330000
        1780.645833333333000000
        21.166666666666670000
        119.062500000000000000)
      FontSize = 12
    end
  end
  object QRBand3: TQRBand [3]
    Left = 38
    Top = 617
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
  object QRBand5: TQRBand [4]
    Left = 38
    Top = 633
    Width = 718
    Height = 296
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      783.166666666666700000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRMemo2: TQRMemo
      Left = 16
      Top = 32
      Width = 681
      Height = 265
      Size.Values = (
        701.145833333333000000
        42.333333333333300000
        84.666666666666700000
        1801.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      Lines.Strings = (
        
          #931#964#953#962' '#963#965#957#951#956#956#941#957#949#962' '#963#949#955#943#948#949#962' '#952#945' '#946#961#949#943#964#949' '#964#945' '#945#957#945#955#965#964#953#954#940' '#963#964#959#953#967#949#943#945' '#956#949' '#964#945' '#959#960 +
          #959#943#945' '#960#961#959#963#969#960#959#960#959#953#942#952#951#954#949' '#951' '#954#940#952#949' '#954#940#961#964#945', '#954#945#952#974#962' '#954#945#953' '#964#959#957' '#960#961#959#963#969#960#953#954#972' '#945#961#953#952#956#972 +
          ' '#945#957#945#947#957#974#961#953#963#951#962' (PIN) '#964#951#962' '#954#940#952#949' '#954#940#961#964#945#962', '#964#959#957' '#959#960#959#943#959' '#952#945' '#960#961#941#960#949#953' '#957#945' '#947#957#969#961#943 +
          #950#949#953' '#959' '#954#940#964#959#967#959#962' '#964#951#962' '#954#940#961#964#945#962' '#947#953#945' '#957#945' '#948#953#949#954#960#949#961#945#953#969#952#949#943' '#951' '#963#965#957#945#955#955#945#947#942' '#956#949' '#964#951#957 +
          ' AVINCARD. '#927' '#960#961#959#963#969#960#953#954#972#962' '#945#961#953#952#956#972#962' '#945#957#945#947#957#974#961#953#963#951#962' '#964#951#962' '#954#940#961#964#945#962' '#949#943#957#945#953' '#945#960#972 +
          #961#961#951#964#959#962' '#954#945#953' '#963#945#962' '#960#961#959#963#966#941#961#949#953' '#945#963#966#940#955#949#953#945' '#963#949' '#960#949#961#943#960#964#969#963#951' '#960#959#965' '#949#943#964#949' '#967#945#952#949#943' '#949#943 +
          #964#949' '#954#955#945#960#949#943' '#951' '#954#940#961#964#945'.'
        ''
        
          #915#953#945' '#955#972#947#959#965#962' '#945#963#966#945#955#949#943#945#962' '#959#953' '#954#940#961#964#949#962' '#952#945' '#963#945#962' '#945#960#959#963#964#945#955#959#973#957' '#967#969#961#953#963#964#940' '#963#949' '#940#955#955#951 +
          ' '#951#956#949#961#959#956#951#957#943#945'.  '#924#949' '#964#951#957' '#960#945#961#945#955#945#946#942' '#964#969#957' '#954#945#961#964#974#957' '#949#943#963#945#963#964#949' '#941#964#959#953#956#959#953' '#957#945' '#960#961#959#967 +
          #969#961#942#963#949#964#949' '#963#964#951#957' '#964#961#959#966#959#948#959#963#943#945' '#964#969#957' '#959#967#951#956#940#964#969#957' '#963#945#962' '#956#941#963#969' '#964#951#962' AVINCARD '#963#949' '#972#955 +
          #945' '#964#945' '#960#961#945#964#942#961#953#945' AVIN '#960#959#965' '#966#941#961#959#965#957' '#964#959' '#948#953#945#954#961#953#964#953#954#972' '#945#960#959#948#959#967#942#962' '#954#945#961#964#974#957' AVIN' +
          'CARD.'
        ''
        #931#964#951#957' '#948#953#940#952#949#963#942' '#963#945#962' '#947#953#945' '#954#940#952#949' '#948#953#949#965#954#961#943#957#953#963#951'.'
        #924#949' '#949#954#964#943#956#951#963#951'.'
        ''
        ''
        ''
        #923'.'#932#963#953#954#972#955#945
        #933#960#949#973#952#965#957#951' '#933#960#959#963#964#942#961#953#958#951#962' AVINCARD.')
      Transparent = False
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
      'SELECT * FROM  V_ACARD_ETC_SINGLE')
    Left = 64
    Top = 76
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
    object ADOQuery1FullCardNo: TStringField
      FieldKind = fkCalculated
      FieldName = 'FullCardNo'
      Calculated = True
    end
    object ADOQuery1AcardCodeFull: TWideStringField
      FieldName = 'AcardCodeFull'
      ReadOnly = True
      Size = 19
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 112
    Top = 64
  end
end
