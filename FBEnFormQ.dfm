inherited frmBEnFormQ: TfrmBEnFormQ
  Caption = 'frmBEnFormQ'
  PixelsPerInch = 96
  TextHeight = 13
  object ADOQuery1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 16
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 168
    Top = 64
  end
end
