inherited frmEnhmEmployees: TfrmEnhmEmployees
  Left = 280
  Top = 157
  Caption = #917#957#951#956#941#961#969#963#951' '#924#953#963#952#959#948#959#963#943#945#962
  OnActivate = nil
  OnCreate = nil
  OnDestroy = nil
  ExplicitWidth = 696
  ExplicitHeight = 480
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlTop: TPanel
    Top = 23
    Height = 17
    Enabled = False
    Visible = False
    ExplicitTop = 23
    ExplicitHeight = 17
  end
  inherited PnlBottom: TPanel
    Top = 40
    Height = 394
    ExplicitTop = 40
    ExplicitHeight = 394
    inherited PageControl1: TPageControl
      Height = 392
      ExplicitHeight = 392
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 678
        ExplicitHeight = 382
        inherited FormGrid: TDBGrid
          Height = 382
          DataSource = dtsTran
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = popFilter
          Columns = <
            item
              Expanded = False
              FieldName = 'SUMAMOUNT'
              Title.Caption = #913#958#943#945
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUMDISAMOUNT'
              Title.Caption = #917#954#960#964#974#963#951
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUMQUANTITY'
              Title.Caption = #928#959#963#972#964#951#964#945
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LName'
              Title.Caption = #908#957#959#956#945
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LSurName'
              Title.Caption = #917#960#974#957#965#956#959
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Employees.MhtrId'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Customer.CustomerId'
              Visible = False
            end>
        end
      end
    end
  end
  object ActionToolBar1: TActionToolBar [3]
    Left = 0
    Top = 0
    Width = 688
    Height = 23
    ActionManager = dxBarManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  inherited popFilter: TPopupMenu
    Left = 612
  end
  inherited ActionList: TActionList
    Left = 616
    Top = 64
  end
  inherited MainMenu1: TMainMenu
    Left = 416
    Top = 264
  end
  object dxBarManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actClose
          end
          item
            Action = actEnhmPelates
          end
          item
            Action = actEnhmPelatesPylon
            Caption = #917#957#951#956#941#961#969#963#951' '#922#953#957#942#963#949#969#957' &Pylon'
          end
          item
            Action = actPrint
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 224
    Top = 104
    StyleName = 'Platform Default'
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
      'GROUP BY  MhtrId, Customer.CustomerId ')
    Left = 80
    Top = 188
    object qryTranSUMAMOUNT: TFloatField
      FieldName = 'SUMAMOUNT'
      ReadOnly = True
    end
    object qryTranSUMDISAMOUNT: TFloatField
      FieldName = 'SUMDISAMOUNT'
      ReadOnly = True
    end
    object qryTranSUMQUANTITY: TFloatField
      FieldName = 'SUMQUANTITY'
      ReadOnly = True
    end
    object qryTranEmployeesMhtrId: TIntegerField
      DisplayLabel = #913#961'.'#924#951#964#961#974#959#965
      FieldName = 'Employees.MhtrId'
    end
    object qryTranCustomerCustomerId: TAutoIncField
      FieldName = 'Customer.CustomerId'
      ReadOnly = True
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
  end
  object dtsTran: TDataSource
    DataSet = qryTran
    Left = 148
    Top = 164
  end
  object ActionList1: TActionList
    Left = 328
    Top = 88
    object actEnhmPelates: TAction
      Caption = #917#957#951#956#941#961#969#963#951' '#922#953#957#942#963#949#969#957
      OnExecute = actEnhmPelatesExecute
    end
    object actClose: TAction
      Caption = #917#958#972#948#959#962
      OnExecute = actCloseExecute
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
    end
    object actPrint: TAction
      Caption = #917#954#964#973#960#969#963#951
      OnExecute = actPrintExecute
    end
    object actEnhmPelatesPylon: TAction
      Caption = #917#957#951#956#941#961#969#963#951' '#922#953#957#942#963#949#969#957' Pylon'
      OnExecute = actEnhmPelatesPylonExecute
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
    Left = 264
    Top = 264
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
  object SaveDialog1: TSaveDialog
    Left = 300
    Top = 156
  end
  object qryCheckDisEnhm: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Count(*) As CountNoDisUpd'
      
        'FROM (CUSTOMER INNER JOIN (ACARD INNER JOIN EMPLOYEES ON ACARD.E' +
        'MPLOYEESID = EMPLOYEES.Id) ON CUSTOMER.CUSTOMERID = ACARD.CUSTOM' +
        'ERID) INNER JOIN [TRAN] ON ACARD.ACARDID = [TRAN].ACARDID'
      '')
    Left = 88
    Top = 268
    object qryCheckDisEnhmCountNoDisUpd: TIntegerField
      FieldName = 'CountNoDisUpd'
    end
  end
end
