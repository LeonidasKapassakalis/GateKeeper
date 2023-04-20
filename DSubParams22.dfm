inherited DMSubParams22: TDMSubParams22
  OldCreateOrder = True
  OnCreate = DMSubParamsCreate
  Height = 296
  Width = 561
  object qryTRawLib: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [TRawLib]'
      'ORDER BY [LibDateTime] DESC')
    Left = 44
    Top = 24
    object qryTRawLibGId: TGuidField
      FieldName = 'GId'
      FixedChar = True
      Size = 38
    end
    object qryTRawLibLibId: TIntegerField
      FieldName = 'LibId'
    end
    object qryTRawLibLibDateTime: TDateTimeField
      FieldName = 'LibDateTime'
    end
    object qryTRawLibLibRegNo: TWideStringField
      FieldName = 'LibRegNo'
      Size = 50
    end
    object qryTRawLibLibWeight: TIntegerField
      FieldName = 'LibWeight'
    end
    object qryTRawLibError: TBooleanField
      FieldName = 'Error'
    end
    object qryTRawLibUsed: TBooleanField
      FieldName = 'Used'
    end
  end
  object dsTRawLib: TDataSource
    AutoEdit = False
    DataSet = qryTRawLib
    OnStateChange = dsCountryStateChange
    Left = 116
    Top = 24
  end
end
