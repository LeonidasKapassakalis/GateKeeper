inherited DMEnhmTrans: TDMEnhmTrans
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 417
  Width = 262
  object qryEnhmDlCall: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * FROM VEnhmDLCall'
      'Order By ENDLCALLDATE Desc, ENDLCALLTRY')
    Left = 36
    Top = 24
    object qryEnhmDlCallENDLCALLID: TAutoIncField
      FieldName = 'ENDLCALLID'
      ReadOnly = True
    end
    object qryEnhmDlCallENDLCALLDATE: TDateTimeField
      FieldName = 'ENDLCALLDATE'
    end
    object qryEnhmDlCallENDLCALLTRY: TIntegerField
      FieldName = 'ENDLCALLTRY'
    end
    object qryEnhmDlCallINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryEnhmDlCallUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryEnhmDlCallINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryEnhmDlCallUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryEnhmDlCallENDLCALLFROM: TIntegerField
      FieldName = 'ENDLCALLFROM'
    end
    object qryEnhmDlCallENDLCALLDATETRY: TStringField
      DisplayLabel = #919#956#957#943#945' - '#913#913
      FieldName = 'ENDLCALLDATETRY'
      ReadOnly = True
      Size = 12
    end
  end
  object dtsEnhmDlCall: TDataSource
    AutoEdit = False
    DataSet = qryEnhmDlCall
    Left = 144
    Top = 24
  end
  object qryENHMCOCALL: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ENHMCOCALL'
      '')
    Left = 36
    Top = 152
    object qryENHMCOCALLENCCALLID: TAutoIncField
      FieldName = 'ENCCALLID'
      ReadOnly = True
    end
    object qryENHMCOCALLENCCALLDATE: TDateTimeField
      FieldName = 'ENCCALLDATE'
    end
    object qryENHMCOCALLINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryENHMCOCALLUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryENHMCOCALLINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryENHMCOCALLUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object dtsENHMCOCALL: TDataSource
    AutoEdit = False
    DataSet = qryENHMCOCALL
    Left = 144
    Top = 152
  end
  object qryENHMDISCALL: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ENHMDISCALL'
      '')
    Left = 36
    Top = 216
    object qryENHMDISCALLENHMDISCALLID: TAutoIncField
      FieldName = 'ENHMDISCALLID'
      ReadOnly = True
    end
    object qryENHMDISCALLENHMDISCALLDATE: TDateTimeField
      FieldName = 'ENHMDISCALLDATE'
    end
    object qryENHMDISCALLINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryENHMDISCALLUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryENHMDISCALLINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryENHMDISCALLUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object dtsENHMDISCALL: TDataSource
    AutoEdit = False
    DataSet = qryENHMDISCALL
    Left = 144
    Top = 216
  end
  object qryENHMSTCALL: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ENHMSTCALL'
      '')
    Left = 36
    Top = 280
    object qryENHMSTCALLENSCALLID: TAutoIncField
      FieldName = 'ENSCALLID'
      ReadOnly = True
    end
    object qryENHMSTCALLENSCALLDATE: TDateTimeField
      FieldName = 'ENSCALLDATE'
    end
    object qryENHMSTCALLINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryENHMSTCALLUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryENHMSTCALLINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryENHMSTCALLUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryENHMSTCALLENSCALLFROM: TIntegerField
      FieldName = 'ENSCALLFROM'
    end
  end
  object dtsENHMSTCALL: TDataSource
    AutoEdit = False
    DataSet = qryENHMSTCALL
    Left = 144
    Top = 280
  end
  object qryTrCallDate: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM TrCall'
      '')
    Left = 36
    Top = 344
    object qryTrCallDateTRCALLID: TAutoIncField
      FieldName = 'TRCALLID'
      ReadOnly = True
    end
    object qryTrCallDateTRCALLDATE: TDateTimeField
      FieldName = 'TRCALLDATE'
    end
    object qryTrCallDateTRCALLAUTOUPDATE: TBooleanField
      FieldName = 'TRCALLAUTOUPDATE'
    end
    object qryTrCallDateTRCALLAUTOUPDATECNT: TIntegerField
      FieldName = 'TRCALLAUTOUPDATECNT'
    end
    object qryTrCallDateTRCALLAUTOUPDATECNTST: TIntegerField
      FieldName = 'TRCALLAUTOUPDATECNTST'
    end
    object qryTrCallDateTRCALLAUTOUPDATECNTST0: TIntegerField
      FieldName = 'TRCALLAUTOUPDATECNTST0'
    end
    object qryTrCallDateTRCALLMANUPDATE: TBooleanField
      FieldName = 'TRCALLMANUPDATE'
    end
    object qryTrCallDateTRCALLENHMPELA: TBooleanField
      FieldName = 'TRCALLENHMPELA'
    end
    object qryTrCallDateTRCALLENHMPRAT: TBooleanField
      FieldName = 'TRCALLENHMPRAT'
    end
    object qryTrCallDateINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryTrCallDateUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryTrCallDateINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryTrCallDateUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryTrCallDateTRCALLAUTOUPDATECNTDEL: TIntegerField
      FieldName = 'TRCALLAUTOUPDATECNTDEL'
    end
  end
  object dtsTrCallDate: TDataSource
    AutoEdit = False
    DataSet = qryTrCallDate
    Left = 144
    Top = 344
  end
  object qryEnhmPeCall: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM EnhmPeCall'
      '')
    Left = 36
    Top = 88
    object qryEnhmPeCallENPCALLID: TAutoIncField
      FieldName = 'ENPCALLID'
      ReadOnly = True
    end
    object qryEnhmPeCallENPCALLDATE: TDateTimeField
      FieldName = 'ENPCALLDATE'
    end
    object qryEnhmPeCallINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryEnhmPeCallUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryEnhmPeCallINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryEnhmPeCallUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryEnhmPeCallENPCALLFROM: TIntegerField
      FieldName = 'ENPCALLFROM'
    end
  end
  object dtsEnhmPeCall: TDataSource
    AutoEdit = False
    DataSet = qryEnhmPeCall
    Left = 144
    Top = 80
  end
end
