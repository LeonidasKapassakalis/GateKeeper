inherited frmCheckLib: TfrmCheckLib
  Caption = #928#959#955#955#945#960#955#941#962' '#918#965#947#943#963#949#953#962' '
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 688
    Height = 409
    Hint = #916#953#960#955#972' click '#947#953#945' '#948#953#945#947#961#945#966#942'.'
    Align = alClient
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object Button1: TButton
    Left = 0
    Top = 409
    Width = 688
    Height = 25
    Align = alBottom
    Caption = 'Delete All'
    TabOrder = 2
    OnClick = Button1Click
    ExplicitLeft = 408
    ExplicitTop = 408
    ExplicitWidth = 75
  end
  object qrySelectDouble: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select a.Cnt, a.[LibId] ,a.[LibDateTime] ,a.[LibRegNo],a.[Used]'
      'From ('
      
        'SELECT COUNT(*) As Cnt ,[LibId] ,[LibDateTime] ,[LibRegNo],[Used' +
        ']'
      '  FROM [GateKeeper].[dbo].[TRawLib] '
      '  Group By [LibId] ,[LibDateTime] ,[LibRegNo],[Used]'
      '  ) as a'
      'Where a.Cnt > 1 and Used = 0')
    Left = 448
    Top = 144
    object qrySelectDoubleCnt: TIntegerField
      FieldName = 'Cnt'
      ReadOnly = True
    end
    object qrySelectDoubleLibId: TIntegerField
      FieldName = 'LibId'
    end
    object qrySelectDoubleLibDateTime: TDateTimeField
      FieldName = 'LibDateTime'
    end
    object qrySelectDoubleLibRegNo: TWideStringField
      FieldName = 'LibRegNo'
      Size = 50
    end
    object qrySelectDoubleUsed: TBooleanField
      FieldName = 'Used'
    end
  end
  object DataSource1: TDataSource
    DataSet = qrySelectDouble
    Left = 376
    Top = 144
  end
  object DeleteSpec: TADOQuery
    Connection = DMMain.ADOConnection
    DataSource = DataSource1
    Parameters = <
      item
        Name = 'LibId'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LibDateTime'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'LibRegNo'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Used'
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'Delete TRawLib '
      'Where [LibId]    = :LibId'
      'AND    [LibDateTime] = :LibDateTime'
      'AND    [LibRegNo] = :LibRegNo'
      'AND    [Used] = :Used')
    Left = 448
    Top = 224
  end
end
