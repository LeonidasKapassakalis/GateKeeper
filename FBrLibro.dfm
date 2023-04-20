inherited frmBrLibro: TfrmBrLibro
  Caption = #917#954#964#965#960#974#963#951' '#918#965#947#943#963#949#969#957
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid1: TcxGrid
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = dtsMain
      DataController.DetailKeyFieldNames = 'GId'
      object cxGrid1DBTableView1GId: TcxGridDBColumn
        DataBinding.FieldName = 'GId'
      end
      object cxGrid1DBTableView1LibId: TcxGridDBColumn
        DataBinding.FieldName = 'LibId'
      end
      object cxGrid1DBTableView1LibDateTime: TcxGridDBColumn
        DataBinding.FieldName = 'LibDateTime'
      end
      object cxGrid1DBTableView1LibRegNo: TcxGridDBColumn
        DataBinding.FieldName = 'LibRegNo'
      end
      object cxGrid1DBTableView1LibWeight: TcxGridDBColumn
        DataBinding.FieldName = 'LibWeight'
      end
      object cxGrid1DBTableView1LibWeight1: TcxGridDBColumn
        DataBinding.FieldName = 'LibWeight1'
      end
      object cxGrid1DBTableView1LibWeight2: TcxGridDBColumn
        DataBinding.FieldName = 'LibWeight2'
      end
      object cxGrid1DBTableView1LibWeight0: TcxGridDBColumn
        DataBinding.FieldName = 'LibWeight0'
      end
      object cxGrid1DBTableView1ArThes: TcxGridDBColumn
        DataBinding.FieldName = 'ArThes'
      end
      object cxGrid1DBTableView1Error: TcxGridDBColumn
        DataBinding.FieldName = 'Error'
      end
      object cxGrid1DBTableView1Used: TcxGridDBColumn
        DataBinding.FieldName = 'Used'
      end
    end
  end
  inherited qryMain: TADOQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM [TRawLib]'
      '--ORDER BY LibDateTime,LibId')
    Left = 80
    Top = 336
    object qryMainGId: TGuidField
      FieldName = 'GId'
      FixedChar = True
      Size = 38
    end
    object qryMainLibId: TIntegerField
      FieldName = 'LibId'
    end
    object qryMainLibDateTime: TDateTimeField
      FieldName = 'LibDateTime'
    end
    object qryMainLibRegNo: TWideStringField
      FieldName = 'LibRegNo'
      Size = 50
    end
    object qryMainLibWeight: TIntegerField
      FieldName = 'LibWeight'
    end
    object qryMainLibWeight1: TIntegerField
      FieldName = 'LibWeight1'
    end
    object qryMainLibWeight2: TIntegerField
      FieldName = 'LibWeight2'
    end
    object qryMainLibWeight0: TIntegerField
      FieldName = 'LibWeight0'
    end
    object qryMainArThes: TIntegerField
      FieldName = 'ArThes'
    end
    object qryMainError: TBooleanField
      FieldName = 'Error'
    end
    object qryMainUsed: TBooleanField
      FieldName = 'Used'
    end
  end
  inherited dtsMain: TDataSource
    Left = 152
    Top = 336
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 42430.670886493060000000
      AssignedFormatValues = [fvDate, fvTime, fvPageNumber]
      BuiltInReportLink = True
    end
  end
  object VL_FPass: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM [stFPass]'
      '')
    Left = 640
    Top = 96
    object VL_FPassId: TIntegerField
      FieldName = 'Id'
    end
    object VL_FPassLogin: TWideStringField
      FieldName = 'Login'
      Size = 30
    end
    object VL_FPassPasswd: TWideStringField
      FieldName = 'Passwd'
    end
    object VL_FPassGroup: TSmallintField
      FieldName = 'Group'
    end
    object VL_FPassName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object VL_FPassAddress: TWideStringField
      FieldName = 'Address'
      Size = 50
    end
    object VL_FPassEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object VL_FPassPhone: TWideStringField
      FieldName = 'Phone'
      Size = 30
    end
    object VL_FPassConn_Time: TFloatField
      FieldName = 'Conn_Time'
    end
    object VL_FPassValid_Till: TDateTimeField
      FieldName = 'Valid_Till'
    end
    object VL_FPassStath: TIntegerField
      FieldName = 'Stath'
    end
    object VL_FPassDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object VL_FPassDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object VL_FPassDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object VL_FPassInActive: TBooleanField
      FieldName = 'InActive'
    end
    object VL_FPassInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object VL_FPassInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object VL_FPassMaint_Log: TBooleanField
      FieldName = 'Maint_Log'
    end
    object VL_FPassCheck_Serial: TBooleanField
      FieldName = 'Check_Serial'
    end
    object VL_FPassSerial1: TIntegerField
      FieldName = 'Serial1'
    end
    object VL_FPassSerial2: TIntegerField
      FieldName = 'Serial2'
    end
    object VL_FPassSerial3: TIntegerField
      FieldName = 'Serial3'
    end
  end
  object dsVL_FPass: TDataSource
    AutoEdit = False
    DataSet = VL_FPass
    Left = 728
    Top = 96
  end
end
