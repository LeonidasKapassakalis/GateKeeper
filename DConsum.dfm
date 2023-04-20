object DMConsum: TDMConsum
  OldCreateOrder = False
  Height = 389
  Width = 462
  object SPSumfromtoGR: TADOStoredProc
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorLocation = clUseServer
    CursorType = ctDynamic
    LockType = ltReadOnly
    ProcedureName = 'SumFromToGr'
    Parameters = <
      item
        Name = ':PACard'
        DataType = ftInteger
        Size = 2
        Value = 11
      end
      item
        Name = ':PProductGroup'
        DataType = ftInteger
        Size = 1
        Value = 1
      end
      item
        Name = ':PDateFrom'
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = ':PDateTo'
        DataType = ftDateTime
        Value = Null
      end>
    Prepared = True
    Left = 48
    Top = 24
    object SPSumfromtoGRSumQuantity: TFloatField
      FieldName = 'SumQuantity'
    end
    object SPSumfromtoGRSumAmount: TFloatField
      FieldName = 'SumAmount'
    end
  end
  object ADOStoredProc2: TADOStoredProc
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ExecuteOptions = [eoAsyncFetchNonBlocking]
    LockType = ltReadOnly
    ProcedureName = 'QPreviGr'
    Parameters = <
      item
        Name = 'PACard'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'PProductGroup'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'PDateFrom'
        DataType = ftDateTime
        Value = 0d
      end>
    Prepared = True
    Left = 48
    Top = 88
    object ADOStoredProc2Quantity: TFloatField
      FieldName = 'Quantity'
    end
    object ADOStoredProc2KMAfter: TIntegerField
      FieldName = 'KMAfter'
    end
    object ADOStoredProc2AMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
  end
  object ADOStoredProc3: TADOStoredProc
    Connection = DMMain.ADOConnection
    ExecuteOptions = [eoAsyncFetchNonBlocking]
    LockType = ltReadOnly
    ProcedureName = 'QLastMoveGr'
    Parameters = <
      item
        Name = 'PACard'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'PProductGroup'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'PDateFrom'
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = 'PDateTo'
        DataType = ftDateTime
        Value = Null
      end>
    Prepared = True
    Left = 48
    Top = 144
    object ADOStoredProc3Quantity: TFloatField
      FieldName = 'Quantity'
    end
    object ADOStoredProc3KMAfter: TIntegerField
      FieldName = 'KMAfter'
    end
    object ADOStoredProc3Amount: TFloatField
      FieldName = 'Amount'
    end
  end
  object ADOStoredProc4: TADOStoredProc
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ExecuteOptions = [eoAsyncFetchNonBlocking]
    LockType = ltReadOnly
    ProcedureName = 'QPreviCurGr'
    Parameters = <
      item
        Name = 'PACard'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'PProductGroup'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'PDateFrom'
        DataType = ftDateTime
        Value = Null
      end>
    Prepared = True
    Left = 48
    Top = 200
    object ADOStoredProc4QUANTITY: TFloatField
      FieldName = 'QUANTITY'
    end
    object ADOStoredProc4AMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object ADOStoredProc4KMAFTER: TIntegerField
      FieldName = 'KMAFTER'
    end
  end
  object SPSumfromto: TADOStoredProc
    AutoCalcFields = False
    Connection = DMMain.ADOConnection
    CursorLocation = clUseServer
    CursorType = ctDynamic
    LockType = ltReadOnly
    ProcedureName = 'SumFromTo'
    Parameters = <>
    Prepared = True
    Left = 216
    Top = 32
    object FloatField1: TFloatField
      FieldName = 'SumQuantity'
    end
    object FloatField2: TFloatField
      FieldName = 'SumAmount'
    end
  end
  object ADOStoredProc5: TADOStoredProc
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ExecuteOptions = [eoAsyncFetchNonBlocking]
    LockType = ltReadOnly
    ProcedureName = 'QPreviGr'
    Parameters = <
      item
        Name = 'PACard'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'PProductGroup'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'PDateFrom'
        DataType = ftDateTime
        Value = 0d
      end>
    Prepared = True
    Left = 216
    Top = 96
    object FloatField3: TFloatField
      FieldName = 'Quantity'
    end
    object IntegerField1: TIntegerField
      FieldName = 'KMAfter'
    end
    object FloatField4: TFloatField
      FieldName = 'AMOUNT'
    end
  end
  object ADOStoredProc6: TADOStoredProc
    Connection = DMMain.ADOConnection
    ExecuteOptions = [eoAsyncFetchNonBlocking]
    LockType = ltReadOnly
    ProcedureName = 'QLastMoveGr'
    Parameters = <
      item
        Name = 'PACard'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'PProductGroup'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'PDateFrom'
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = 'PDateTo'
        DataType = ftDateTime
        Value = Null
      end>
    Prepared = True
    Left = 216
    Top = 152
    object FloatField5: TFloatField
      FieldName = 'Quantity'
    end
    object IntegerField2: TIntegerField
      FieldName = 'KMAfter'
    end
    object FloatField6: TFloatField
      FieldName = 'Amount'
    end
  end
  object ADOStoredProc7: TADOStoredProc
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ExecuteOptions = [eoAsyncFetchNonBlocking]
    LockType = ltReadOnly
    ProcedureName = 'QPreviCurGr'
    Parameters = <
      item
        Name = 'PACard'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'PProductGroup'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = 'PDateFrom'
        DataType = ftDateTime
        Value = Null
      end>
    Prepared = True
    Left = 216
    Top = 208
    object FloatField7: TFloatField
      FieldName = 'QUANTITY'
    end
    object FloatField8: TFloatField
      FieldName = 'AMOUNT'
    end
    object IntegerField3: TIntegerField
      FieldName = 'KMAFTER'
    end
  end
end
