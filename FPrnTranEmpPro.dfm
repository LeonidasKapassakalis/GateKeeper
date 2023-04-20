inherited frmPrnTranEmpPrologue: TfrmPrnTranEmpPrologue
  Left = 366
  Top = 198
  BorderIcons = []
  Caption = #922#961#953#964#942#961#953#945' '#949#954#964#973#960#969#963#951#962' '#954#953#957#942#963#949#969#957' '#917#961#947#945#950#959#956#941#957#969#957
  ClientHeight = 433
  ClientWidth = 659
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 667
  ExplicitHeight = 460
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel [0]
    Left = 20
    Top = 117
    Width = 63
    Height = 13
    Caption = #928#949#955#940#964#951' '#922#969#948'.'
  end
  object Label12: TLabel [1]
    Left = 16
    Top = 70
    Width = 61
    Height = 13
    Caption = #928#949#955#940#964#951' SAP'
  end
  object PageControl1: TPageControl [2]
    Left = 0
    Top = 23
    Width = 659
    Height = 410
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #919#956#949#961#959#956#951#957#943#949#962
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel1: TPanel
        Left = 0
        Top = 97
        Width = 651
        Height = 56
        Align = alTop
        TabOrder = 1
        object Label11: TLabel
          Left = 16
          Top = 28
          Width = 69
          Height = 13
          Caption = #919#956'/'#957#943#945' '#922#945#964#945#957
        end
        object dxDBDateEdit5: TcxDBDateEdit
          Left = 88
          Top = 20
          Hint = #913#960#972' '#919#956#949#961#959#956#951#957#943#945
          DataBinding.DataField = 'FrDateSt'
          DataBinding.DataSource = dsmemWS
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Width = 121
        end
        object dxDBDateEdit6: TcxDBDateEdit
          Left = 304
          Top = 20
          Hint = #917#969#962' '#919#956#949#961#959#956#951#957#943#945
          DataBinding.DataField = 'ToDateSt'
          DataBinding.DataSource = dsmemWS
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Width = 121
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 651
        Height = 97
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 34
          Height = 13
          Caption = #919#956'/'#957#943#945
        end
        object Label2: TLabel
          Left = 16
          Top = 40
          Width = 66
          Height = 13
          Caption = #919#956'/'#957#943#945' '#931#965#963#964'.'
        end
        object Label8: TLabel
          Left = 16
          Top = 64
          Width = 54
          Height = 13
          Caption = #937#961#945' '#931#965#963#964'.'
        end
        object dxDBDateEdit1: TcxDBDateEdit
          Left = 88
          Top = 8
          Hint = #913#960#972' '#919#956#949#961#959#956#951#957#943#945
          DataBinding.DataField = 'FrDate'
          DataBinding.DataSource = dsmemWS
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Width = 121
        end
        object dxDBDateEdit4: TcxDBDateEdit
          Left = 304
          Top = 8
          Hint = #917#969#962' '#919#956#949#961#959#956#951#957#943#945
          DataBinding.DataField = 'ToDate'
          DataBinding.DataSource = dsmemWS
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Width = 121
        end
        object dxDBDateEdit2: TcxDBDateEdit
          Left = 304
          Top = 32
          Hint = #904#969#962' '#919#956#949#961#959#956#951#957#943#945' '#931#965#963#964#942#956#945#964#959#962
          DataBinding.DataField = 'ToDateIns'
          DataBinding.DataSource = dsmemWS
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Width = 121
        end
        object dxDBTimeEdit2: TcxDBTimeEdit
          Left = 304
          Top = 56
          Hint = #904#969#962' '#937#961#945' '#931#965#963#964#942#956#945#964#959#962
          DataBinding.DataField = 'ToDateIns'
          DataBinding.DataSource = dsmemWS
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          Width = 121
        end
        object dxDBTimeEdit1: TcxDBTimeEdit
          Left = 88
          Top = 56
          Hint = #913#960#972' '#937#961#945' '#931#965#963#964#942#956#945#964#959#962
          DataBinding.DataField = 'FrDateIns'
          DataBinding.DataSource = dsmemWS
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Width = 121
        end
        object dxDBDateEdit3: TcxDBDateEdit
          Left = 88
          Top = 32
          Hint = #913#960#972' '#919#956#949#961#959#956#951#957#943#945' '#931#965#963#964#942#956#945#964#959#962
          DataBinding.DataField = 'FrDateIns'
          DataBinding.DataSource = dsmemWS
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Width = 121
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 153
        Width = 651
        Height = 40
        Align = alTop
        TabOrder = 2
        object RGQuery: TRadioGroup
          Left = 1
          Top = 1
          Width = 649
          Height = 35
          Hint = #913#965#964#972#956#945#964#951' '#942' Manual '
          Align = alTop
          Caption = #917#954#964#941#955#949#963#951' Query'
          Columns = 2
          Items.Strings = (
            #925#945#953
            #927#967#953)
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #928#949#955#940#964#949#962
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label6: TLabel
        Left = 16
        Top = 43
        Width = 63
        Height = 13
        Caption = #928#949#955#940#964#951' '#922#969#948'.'
      end
      object Label7: TLabel
        Left = 16
        Top = 16
        Width = 37
        Height = 13
        Caption = #928#949#955#940#964#951
      end
      object lbl2: TLabel
        Left = 16
        Top = 70
        Width = 61
        Height = 13
        Caption = #928#949#955#940#964#951' SAP'
      end
      object Label13: TLabel
        Left = 19
        Top = 124
        Width = 56
        Height = 13
        Caption = #917#961#947#945#950'.'#922#969#948'.'
      end
      object Label14: TLabel
        Left = 17
        Top = 105
        Width = 62
        Height = 13
        Caption = #917#961#947#945#950'.'#917#960#969#957'.'
      end
      object Label15: TLabel
        Left = 23
        Top = 154
        Width = 79
        Height = 13
        Caption = #917#961#947#945#950'.'#922#969#948'.'#924#951#964'.'
      end
      object rgCustomerTest: TDBRadioGroup
        Left = 19
        Top = 173
        Width = 607
        Height = 35
        Hint = #913#965#964#972#956#945#964#951' '#942' Manual '
        Caption = 'Status '#928#949#955#945#964#974#957
        Columns = 3
        DataField = 'PelaTestReal'
        DataSource = dsmemWS
        Items.Strings = (
          'Test'
          'Real'
          #908#955#945)
        ParentBackground = True
        TabOrder = 12
        Values.Strings = (
          '1'
          '0'
          '-1')
      end
      object rgCustomerActive: TDBRadioGroup
        Left = 19
        Top = 214
        Width = 607
        Height = 43
        Caption = 'Status '
        Columns = 3
        DataField = 'PelaActiveInactive'
        DataSource = dsmemWS
        Items.Strings = (
          #917#957#949#961#947#959#943
          #913#957#949#957#949#961#947#959#943
          #908#955#959#953)
        ParentBackground = True
        TabOrder = 13
        Values.Strings = (
          '1'
          '0'
          '-1')
      end
      object rgDetailEmp: TDBRadioGroup
        Left = 16
        Top = 278
        Width = 610
        Height = 83
        Caption = 'Status '#917#961#947#945#950#959#956#941#957#969#957
        Columns = 2
        DataField = 'PelaDetailEmp'
        DataSource = dsmemWS
        Items.Strings = (
          #924#949' '#913#957#945#955#965#963#942' '#917#961#947#945#950#959#956#941#957#969#957
          #935#969#961#943#962' '#913#957#945#955#965#963#942' '#917#961#947#945#950#959#956#941#957#969#957
          #908#955#949#962)
        ParentBackground = True
        ReadOnly = True
        TabOrder = 14
        Values.Strings = (
          '1'
          '0'
          '-1')
      end
      object cblc20: TcxDBLookupComboBox
        Left = 104
        Top = 13
        DataBinding.DataField = 'FrCustomerName'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'NAME'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'NAME'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsCustomer
        TabOrder = 0
        OnKeyDown = cblcKeyDown
        Width = 250
      end
      object cblc21: TcxDBLookupComboBox
        Left = 104
        Top = 40
        DataBinding.DataField = 'FrCustomerId'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'CUSTOMERID'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'CUSTOMERID'
          end
          item
            FieldName = 'NAME'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsCustomer
        TabOrder = 2
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object cblc22: TcxDBLookupComboBox
        Left = 376
        Top = 13
        DataBinding.DataField = 'ToCustomerName'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'NAME'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'NAME'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsCustomer
        TabOrder = 1
        OnKeyDown = cblcKeyDown
        Width = 250
      end
      object cblc23: TcxDBLookupComboBox
        Left = 376
        Top = 40
        DataBinding.DataField = 'ToCustomerId'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'CUSTOMERID'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'CUSTOMERID'
          end
          item
            FieldName = 'NAME'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsCustomer
        TabOrder = 3
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object cblc24: TcxDBLookupComboBox
        Left = 104
        Top = 67
        DataBinding.DataField = 'FrCustomerSap'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'SAPCODE'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'SAPCODE'
          end
          item
            FieldName = 'NAME'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsCustomer
        TabOrder = 4
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object cblc25: TcxDBLookupComboBox
        Left = 376
        Top = 67
        DataBinding.DataField = 'ToCustomerSap'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'SAPCODE'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'SAPCODE'
          end
          item
            FieldName = 'NAME'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsCustomer
        TabOrder = 5
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object cxDBLookupComboBox3: TcxDBLookupComboBox
        Left = 376
        Top = 121
        DataBinding.DataField = 'ToEmplId'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'Id'
        Properties.ListColumns = <
          item
            FieldName = 'Id'
          end
          item
            FieldName = 'FName'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsEmployees
        TabOrder = 9
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object cxDBLookupComboBox4: TcxDBLookupComboBox
        Left = 104
        Top = 121
        DataBinding.DataField = 'FrEmplId'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'Id'
        Properties.ListColumns = <
          item
            FieldName = 'Id'
          end
          item
            FieldName = 'FName'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsEmployees
        TabOrder = 8
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object cxDBLookupComboBox5: TcxDBLookupComboBox
        Left = 376
        Top = 146
        DataBinding.DataField = 'ToEmplMhtrId'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'MhtrId'
        Properties.ListColumns = <
          item
            FieldName = 'MhtrId'
          end
          item
            FieldName = 'FName'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsEmployees
        TabOrder = 11
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object cxDBLookupComboBox6: TcxDBLookupComboBox
        Left = 104
        Top = 146
        DataBinding.DataField = 'FrEmplMhtrId'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'MhtrId'
        Properties.ListColumns = <
          item
            FieldName = 'MhtrId'
          end
          item
            FieldName = 'FName'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsEmployees
        TabOrder = 10
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object cxDBLookupComboBox1: TcxDBLookupComboBox
        Left = 376
        Top = 94
        DataBinding.DataField = 'ToEmplSurname'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'SurName'
        Properties.ListColumns = <
          item
            FieldName = 'SurName'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsEmployees
        TabOrder = 7
        OnKeyDown = cblcKeyDown
        Width = 209
      end
      object cxDBLookupComboBox2: TcxDBLookupComboBox
        Left = 104
        Top = 94
        DataBinding.DataField = 'FrEmplSurname'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'SurName'
        Properties.ListColumns = <
          item
            FieldName = 'SurName'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsEmployees
        TabOrder = 6
        OnKeyDown = cblcKeyDown
        Width = 217
      end
    end
    object TabSheet3: TTabSheet
      Caption = #928#961#945#964#942#961#953#959
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label5: TLabel
        Left = 3
        Top = 115
        Width = 47
        Height = 13
        Caption = #928#961#945#964#942#961#953#959
      end
      object Label9: TLabel
        Left = 3
        Top = 8
        Width = 45
        Height = 13
        Caption = 'Merchant'
      end
      object Label10: TLabel
        Left = 3
        Top = 188
        Width = 52
        Height = 13
        Caption = 'Terminal Id'
      end
      object lbl3: TLabel
        Left = 0
        Top = 40
        Width = 71
        Height = 13
        Caption = 'Merchant '#922#969#948'.'
      end
      object lbl4: TLabel
        Left = 0
        Top = 62
        Width = 69
        Height = 13
        Caption = 'Merchant SAP'
      end
      object rgStationTest: TDBRadioGroup
        Left = 3
        Top = 222
        Width = 631
        Height = 35
        Hint = #913#965#964#972#956#945#964#951' '#942' Manual '
        Caption = 'Status '#928#961#945#964#951#961#943#969#957
        Columns = 3
        DataField = 'PratTestReal'
        DataSource = dsmemWS
        Items.Strings = (
          'Test'
          'Real'
          #908#955#945)
        ParentBackground = True
        TabOrder = 10
        Values.Strings = (
          '1'
          '0'
          '-1')
      end
      object cblc14: TcxDBLookupComboBox
        Left = 96
        Top = 5
        DataBinding.DataField = 'FrMerchantName'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'Name'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'Name'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsMerchant
        TabOrder = 0
        OnKeyDown = cblcKeyDown
        Width = 250
      end
      object cblc15: TcxDBLookupComboBox
        Left = 96
        Top = 112
        DataBinding.DataField = 'FrStationId'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'Stationid'
        Properties.ListColumns = <
          item
            FieldName = 'Name'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsStation
        TabOrder = 6
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object cblc16: TcxDBLookupComboBox
        Left = 96
        Top = 185
        DataBinding.DataField = 'FrTerminalId'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'Terminalid'
        Properties.ListColumns = <
          item
            FieldName = 'TerminalCode'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsTerminal
        TabOrder = 9
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object cblc17: TcxDBLookupComboBox
        Left = 384
        Top = 5
        DataBinding.DataField = 'ToMerchantName'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'Name'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'Name'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsMerchant
        TabOrder = 1
        OnKeyDown = cblcKeyDown
        Width = 250
      end
      object cblc18: TcxDBLookupComboBox
        Left = 384
        Top = 112
        DataBinding.DataField = 'toStationId'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'Stationid'
        Properties.ListColumns = <
          item
            FieldName = 'Name'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsStation
        TabOrder = 7
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object cblc19: TcxDBLookupComboBox
        Left = 384
        Top = 180
        DataBinding.DataField = 'ToTerminalId'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'Terminalid'
        Properties.ListColumns = <
          item
            FieldName = 'TerminalCode'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsTerminal
        TabOrder = 8
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object cblc10: TcxDBLookupComboBox
        Left = 96
        Top = 32
        DataBinding.DataField = 'FrMerchantId'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'MerchantId'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'MerchantId'
          end
          item
            SortOrder = soAscending
            FieldName = 'Name'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsMerchant
        TabOrder = 2
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object cblc11: TcxDBLookupComboBox
        Left = 384
        Top = 32
        DataBinding.DataField = 'ToMerchantId'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'MerchantId'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'MerchantId'
          end
          item
            FieldName = 'Name'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsMerchant
        TabOrder = 3
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object cblc12: TcxDBLookupComboBox
        Left = 96
        Top = 59
        DataBinding.DataField = 'FrMerchantSap'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'SAPCode'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'SAPCode'
          end
          item
            FieldName = 'Name'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsMerchant
        TabOrder = 4
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object cblc13: TcxDBLookupComboBox
        Left = 384
        Top = 59
        DataBinding.DataField = 'ToMerchantSap'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'SAPCode'
        Properties.ListColumns = <
          item
            SortOrder = soAscending
            FieldName = 'SAPCode'
          end
          item
            FieldName = 'Name'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsMerchant
        TabOrder = 5
        OnKeyDown = cblcKeyDown
        Width = 145
      end
    end
    object TabSheet4: TTabSheet
      Caption = #917#957#951#956#941#961#969#963#951
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object REnhmPela: TDBRadioGroup
        Left = 8
        Top = 75
        Width = 137
        Height = 67
        Caption = #917#957#951#956#941#961#969#963#951' '#928#949#955#945#964#974#957
        DataField = 'RgEnhmPela'
        DataSource = dsmemWS
        Items.Strings = (
          #925#945#943
          #908#967#953
          #927#955#949#962)
        ParentBackground = True
        TabOrder = 3
        Values.Strings = (
          '1'
          '0'
          '-1')
        OnClick = rgDailyUpdateGExit
        OnExit = rgDailyUpdateGExit
      end
      object REnhmStath: TDBRadioGroup
        Left = 8
        Top = 146
        Width = 137
        Height = 67
        Caption = #917#957#951#956#941#961#969#963#951' '#928#961#945#964#951#961#943#969#957
        DataField = 'RgEnhmStath'
        DataSource = dsmemWS
        Items.Strings = (
          #925#945#943
          #908#967#953
          #927#955#949#962)
        ParentBackground = True
        TabOrder = 6
        Values.Strings = (
          '1'
          '0'
          '-1')
        OnClick = rgDailyUpdateGExit
        OnExit = rgDailyUpdateGExit
      end
      object REnhmCom: TDBRadioGroup
        Left = 9
        Top = 217
        Width = 137
        Height = 67
        Caption = #917#957#951#956'.'#928#945#961#945#954#961#940#964#951#963#951#962
        DataField = 'RgEnhmCom'
        DataSource = dsmemWS
        Items.Strings = (
          #925#945#943
          #908#967#953
          #927#955#949#962)
        ParentBackground = True
        TabOrder = 9
        Values.Strings = (
          '1'
          '0'
          '-1')
        OnClick = rgDailyUpdateGExit
        OnExit = rgDailyUpdateGExit
      end
      object REnhmDisc: TDBRadioGroup
        Left = 10
        Top = 290
        Width = 137
        Height = 67
        Caption = #917#957#951#956'.'#917#954#960#964#974#963#951#962
        DataField = 'RgEnhmDisc'
        DataSource = dsmemWS
        Items.Strings = (
          #925#945#943
          #908#967#953
          #927#955#949#962)
        ParentBackground = True
        TabOrder = 12
        Values.Strings = (
          '1'
          '0'
          '-1')
        OnClick = rgDailyUpdateGExit
        OnExit = rgDailyUpdateGExit
      end
      object REnhmDaily: TDBRadioGroup
        Left = 8
        Top = 2
        Width = 137
        Height = 67
        Caption = #919#956#949#961#942#963#953#945' '#917#957#951#956#941#961#969#963#951' '
        DataField = 'RgEnhmDaily'
        DataSource = dsmemWS
        Items.Strings = (
          #925#945#943
          #908#967#953
          #927#955#949#962)
        ParentBackground = True
        TabOrder = 0
        Values.Strings = (
          '1'
          '0'
          '-1')
        OnClick = rgDailyUpdateGExit
        OnExit = rgDailyUpdateGExit
      end
      object FEnhmDaily: TcxDBLookupComboBox
        Left = 152
        Top = 32
        DataBinding.DataField = 'FrEnhmDaily'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.KeyFieldNames = 'ENDLCALLID'
        Properties.ListColumns = <
          item
            MinWidth = 150
            FieldName = 'ENDLCALLDATETRY'
          end
          item
            MinWidth = 0
            FieldName = 'ENDLCALLDATE'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsEnhmDlCall
        TabOrder = 1
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object TEnhmDaily: TcxDBLookupComboBox
        Left = 384
        Top = 32
        DataBinding.DataField = 'ToEnhmDaily'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.KeyFieldNames = 'ENDLCALLID'
        Properties.ListColumns = <
          item
            MinWidth = 150
            FieldName = 'ENDLCALLDATETRY'
          end
          item
            MinWidth = 0
            FieldName = 'ENDLCALLDATE'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsEnhmDlCall
        TabOrder = 2
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object FEnhmPela: TcxDBLookupComboBox
        Left = 151
        Top = 96
        DataBinding.DataField = 'FrEnhmPela'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.KeyFieldNames = 'ENPCALLID'
        Properties.ListColumns = <
          item
            FieldName = 'ENPCALLDATE'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsENHMPECALL
        TabOrder = 4
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object FEnhmStath: TcxDBLookupComboBox
        Left = 152
        Top = 168
        DataBinding.DataField = 'FrEnhmStath'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.KeyFieldNames = 'ENSCALLID'
        Properties.ListColumns = <
          item
            FieldName = 'ENSCALLDATE'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsENHMSTCALL
        TabOrder = 7
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object FEnhmCom: TcxDBLookupComboBox
        Left = 152
        Top = 248
        DataBinding.DataField = 'FrEnhmCom'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.KeyFieldNames = 'ENCCALLID'
        Properties.ListColumns = <
          item
            FieldName = 'ENCCALLDATE'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsENHMCOCALL
        TabOrder = 10
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object FEnhmDisc: TcxDBLookupComboBox
        Left = 153
        Top = 315
        DataBinding.DataField = 'FrEnhmDisc'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.ClearKey = 27
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'ENHMDISCALLID'
        Properties.ListColumns = <
          item
            SortOrder = soDescending
            FieldName = 'ENHMDISCALLDATE'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsENHMDISCALL
        Properties.ValidateOnEnter = False
        TabOrder = 13
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object TEnhmDisc: TcxDBLookupComboBox
        Left = 384
        Top = 315
        DataBinding.DataField = 'ToEnhmDisc'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.KeyFieldNames = 'ENHMDISCALLID'
        Properties.ListColumns = <
          item
            FieldName = 'ENHMDISCALLDATE'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsENHMDISCALL
        TabOrder = 14
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object TEnhmStath: TcxDBLookupComboBox
        Left = 384
        Top = 168
        DataBinding.DataField = 'ToEnhmStath'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.KeyFieldNames = 'ENSCALLID'
        Properties.ListColumns = <
          item
            FieldName = 'ENSCALLDATE'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsENHMSTCALL
        TabOrder = 8
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object TEnhmCom: TcxDBLookupComboBox
        Left = 384
        Top = 248
        DataBinding.DataField = 'ToEnhmCom'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.KeyFieldNames = 'ENCCALLID'
        Properties.ListColumns = <
          item
            FieldName = 'ENCCALLDATE'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsENHMCOCALL
        TabOrder = 11
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object TEnhmPela: TcxDBLookupComboBox
        Left = 384
        Top = 96
        DataBinding.DataField = 'ToEnhmPela'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.KeyFieldNames = 'ENPCALLID'
        Properties.ListColumns = <
          item
            FieldName = 'ENPCALLDATE'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsENHMPECALL
        TabOrder = 5
        OnKeyDown = cblcKeyDown
        Width = 145
      end
    end
    object TabSheet8: TTabSheet
      Caption = #922#940#961#964#945
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label3: TLabel
        Left = 16
        Top = 16
        Width = 32
        Height = 13
        Caption = #922#940#961#964#945
      end
      object Label4: TLabel
        Left = 16
        Top = 192
        Width = 45
        Height = 13
        Caption = 'Batch No'
      end
      object RgStatus: TDBRadioGroup
        Left = 8
        Top = 54
        Width = 449
        Height = 35
        Hint = #913#965#964#972#956#945#964#951' '#942' Manual '
        Caption = 'Status'
        Columns = 3
        DataSource = dsmemWS
        Items.Strings = (
          #935#949#953#961#959#954#943#957#951#964#949#962
          'A'#965#964#972#956#945#964#949#962
          #908#955#949#962)
        ParentBackground = True
        TabOrder = 2
        Values.Strings = (
          '1'
          '0'
          '-1')
      end
      object rgTyped: TDBRadioGroup
        Left = 11
        Top = 94
        Width = 449
        Height = 35
        Hint = #913#965#964#972#956#945#964#951' '#942' Manual '
        Caption = #922#945#964#945#967#974#961#951#963#951
        Columns = 3
        DataField = 'CardManualAuto'
        DataSource = dsmemWS
        Items.Strings = (
          'A'#965#964#972#956#945#964#949#962
          #935#949#953#961#959#954#943#957#951#964#949#962
          #908#955#949#962)
        ParentBackground = True
        TabOrder = 3
        Values.Strings = (
          '1'
          '0'
          '-1')
      end
      object rgCardActive: TDBRadioGroup
        Left = 11
        Top = 142
        Width = 449
        Height = 35
        Hint = #913#965#964#972#956#945#964#951' '#942' Manual '
        Caption = 'Status '#922#945#961#964#974#957
        Columns = 3
        DataField = 'CardActiveInActive'
        DataSource = dsmemWS
        Items.Strings = (
          #917#957#949#961#947#959#943
          #913#957#949#957#949#961#947#959#943
          #908#955#959#953)
        ParentBackground = True
        TabOrder = 4
        Values.Strings = (
          '1'
          '0'
          '-1')
      end
      object cblcAcard: TcxDBLookupComboBox
        Left = 88
        Top = 13
        DataBinding.DataField = 'FrACardCode'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'ACARDID'
        Properties.ListColumns = <
          item
            FieldName = 'AcardCodeFull'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsACard
        TabOrder = 0
        OnKeyDown = cblcKeyDown
        Width = 177
      end
      object cblc1: TcxDBLookupComboBox
        Left = 303
        Top = 13
        DataBinding.DataField = 'ToACardCode'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'ACARDID'
        Properties.ListColumns = <
          item
            FieldName = 'AcardCodeFull'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsACard
        TabOrder = 1
        OnKeyDown = cblcKeyDown
        Width = 177
      end
      object cblc2: TcxDBLookupComboBox
        Left = 88
        Top = 183
        DataBinding.DataField = 'FrBatch'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.KeyFieldNames = 'TRCALLID'
        Properties.ListColumns = <
          item
            FieldName = 'TRCALLDATE'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsTrCallDate
        TabOrder = 5
        OnKeyDown = cblcKeyDown
        Width = 145
      end
      object cblc3: TcxDBLookupComboBox
        Left = 303
        Top = 183
        DataBinding.DataField = 'ToBatch'
        DataBinding.DataSource = dsmemWS
        Properties.Alignment.Horz = taLeftJustify
        Properties.KeyFieldNames = 'TRCALLID'
        Properties.ListColumns = <
          item
            FieldName = 'TRCALLDATE'
          end>
        Properties.ListSource = DMPrnTransEmp.dtsTrCallDate
        TabOrder = 6
        OnKeyDown = cblcKeyDown
        Width = 145
      end
    end
    object Proc: TTabSheet
      Caption = 'Proc'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object edtOrder: TEdit
        Left = 16
        Top = 152
        Width = 609
        Height = 21
        TabOrder = 0
        Text = 'ORDER BY [TRAN.TRANDATE],[TRAN.TRANTIME]'
      end
    end
  end
  object ActionToolBar1: TActionToolBar [3]
    Left = 0
    Top = 0
    Width = 659
    Height = 23
    ActionManager = dxBarManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  inherited popFilter: TPopupMenu
    Left = 620
    Top = 3
  end
  inherited ActionMainList: TActionList
    Left = 272
    Top = 272
    inherited actDispAllActions: TAction
      ShortCut = 8315
    end
  end
  inherited memWS: TdxMemData
    Active = True
    Persistent.Data = {
      5665728FC2F5285C8FFE3F240000000400000009000700467244617465000400
      000009000700546F44617465001000000001000C0046724143617264436F6465
      001000000001000C00546F4143617264436F6465000400000003000C00467253
      746174696F6E4964000400000003000C00546F53746174696F6E496400040000
      0003000D0046724D65726368616E744964000400000003000D00546F4D657263
      68616E744964000A00000001000E0046724D65726368616E74536170000A0000
      0001000E00546F4D65726368616E74536170000A00000001000E004672437573
      746F6D6572536170001400000001000E00546F437573746F6D65725361700032
      00000001000B004672437573746F6D6572003200000001000B00546F43757374
      6F6D6572000400000003000D0046725465726D696E616C496400040000000300
      0D00546F5465726D696E616C496400080000000B000A00467244617465496E73
      00080000000B000A00546F44617465496E73000400000003000F004672437573
      746F6D6572436F6465000400000003000F00546F437573746F6D6572436F6465
      0004000000090009004672446174655374000400000009000900546F44617465
      5374000400000003000400446566000400000003000400446574000400000003
      000900456E686D50656C46000400000003000900456E686D50656C5400040000
      0003000900456E686D436F6D46000400000003000900456E686D436F6D540004
      00000003000A00456E686D4469736346000400000003000A00456E686D446973
      6354000400000003000A00456E686D5374617446000400000003000A00456E68
      6D53746174540004000000030007004261746368460004000000030007004261
      74636854000200000005000B00456E686D4461696C7947000200000005000A00
      456E686D50656C614700}
    Left = 488
    object memWSFrDate: TDateField
      FieldName = 'FrDate'
    end
    object memWSToDate: TDateField
      FieldName = 'ToDate'
    end
    object memWSFrDateIns: TDateTimeField
      FieldName = 'FrDateIns'
    end
    object memWSToDateIns: TDateTimeField
      FieldName = 'ToDateIns'
    end
    object memWSFrDateSt: TDateField
      FieldName = 'FrDateSt'
    end
    object memWSToDateSt: TDateField
      FieldName = 'ToDateSt'
    end
    object memWSFrACardCode: TStringField
      DisplayWidth = 16
      FieldName = 'FrACardCode'
      Size = 16
    end
    object memWSToACardCode: TStringField
      DisplayWidth = 16
      FieldName = 'ToACardCode'
      Size = 16
    end
    object memWSFrMerchantId: TIntegerField
      FieldName = 'FrMerchantId'
    end
    object memWSToMerchantId: TIntegerField
      FieldName = 'ToMerchantId'
    end
    object memWSFrMerchantName: TStringField
      FieldName = 'FrMerchantName'
      Size = 100
    end
    object memWSToMerchantName: TStringField
      FieldName = 'ToMerchantName'
      Size = 100
    end
    object memWSFrMerchantSap: TStringField
      FieldName = 'FrMerchantSap'
      Size = 10
    end
    object memWSToMerchantSap: TStringField
      FieldName = 'ToMerchantSap'
      Size = 10
    end
    object memWSFrStationId: TIntegerField
      FieldName = 'FrStationId'
    end
    object memWSToStationId: TIntegerField
      FieldName = 'ToStationId'
    end
    object memWSFrTerminalId: TIntegerField
      FieldName = 'FrTerminalId'
    end
    object memWSToTerminalId: TIntegerField
      FieldName = 'ToTerminalId'
    end
    object memWSFrCustomerCode: TIntegerField
      FieldName = 'FrCustomerId'
      OnValidate = memWSFrCustomerCodeValidate
    end
    object memWSToCustomerCode: TIntegerField
      FieldName = 'ToCustomerId'
      OnValidate = memWSFrCustomerCodeValidate
    end
    object memWSFrCustomer: TStringField
      FieldName = 'FrCustomerName'
      Size = 100
    end
    object memWSToCustomer: TStringField
      DisplayWidth = 50
      FieldName = 'ToCustomerName'
      Size = 100
    end
    object memWSFrCustomerSap: TStringField
      FieldName = 'FrCustomerSap'
      Size = 10
    end
    object memWSToCustomerSap: TStringField
      FieldName = 'ToCustomerSap'
    end
    object memWSBatchF: TIntegerField
      FieldName = 'FrBatch'
    end
    object memWSBatchT: TIntegerField
      FieldName = 'ToBatch'
    end
    object memWSFrEnhmDaily: TIntegerField
      FieldName = 'FrEnhmDaily'
    end
    object memWSToEnhmDaily: TIntegerField
      FieldName = 'ToEnhmDaily'
    end
    object memWSRgEnhmDaily: TIntegerField
      FieldName = 'RgEnhmDaily'
    end
    object memWSEnhmPelF: TIntegerField
      FieldName = 'FrEnhmPela'
    end
    object memWSEnhmPelT: TIntegerField
      FieldName = 'ToEnhmPela'
    end
    object memWSRgEnhmPela: TIntegerField
      FieldName = 'RgEnhmPela'
    end
    object memWSEnhmStatF: TIntegerField
      FieldName = 'FrEnhmStath'
    end
    object memWSEnhmStatT: TIntegerField
      FieldName = 'ToEnhmStath'
    end
    object memWSRgEnhmStath: TIntegerField
      FieldName = 'RgEnhmStath'
    end
    object memWSFrEnhmCom: TIntegerField
      FieldName = 'FrEnhmCom'
    end
    object memWSToEnhmCom: TIntegerField
      FieldName = 'ToEnhmCom'
    end
    object memWSRgEnhmCom: TIntegerField
      FieldName = 'RgEnhmCom'
    end
    object memWSFrEnhmDisc: TIntegerField
      FieldName = 'FrEnhmDisc'
    end
    object memWSToEnhmDisc: TIntegerField
      FieldName = 'ToEnhmDisc'
    end
    object memWSRgEnhmDisc: TIntegerField
      FieldName = 'RgEnhmDisc'
    end
    object memWSDef: TIntegerField
      FieldName = 'Def'
    end
    object memWSDet: TIntegerField
      FieldName = 'Det'
    end
    object memWSPelaTestReal: TIntegerField
      FieldName = 'PelaTestReal'
    end
    object memWSPelaActiveInactive: TIntegerField
      FieldName = 'PelaActiveInactive'
    end
    object memWSPelaDetailEmp: TIntegerField
      FieldName = 'PelaDetailEmp'
    end
    object memWSPratTestReal: TIntegerField
      FieldName = 'PratTestReal'
    end
    object memWSCardManualAuto: TIntegerField
      FieldName = 'CardManualAuto'
    end
    object memWSCardActiveInActive: TIntegerField
      FieldName = 'CardActiveInActive'
    end
    object memWSFrEmplId: TIntegerField
      FieldName = 'FrEmplId'
    end
    object memWSToEmplId: TIntegerField
      FieldName = 'ToEmplId'
    end
    object memWSFrEmplMhtrId: TIntegerField
      FieldName = 'FrEmplMhtrId'
    end
    object memWSToEmplMhtrId: TIntegerField
      FieldName = 'ToEmplMhtrId'
    end
    object memWSFrEmplSurname: TStringField
      FieldName = 'FrEmplSurname'
      Size = 40
    end
    object memWSToEmplSurname: TStringField
      FieldName = 'ToEmplSurname'
      Size = 40
    end
  end
  inherited dsmemWS: TDataSource
    Left = 440
  end
  object dxBarManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actCancel
          end
          item
            Action = actOK
          end
          item
            Action = actClearMemWs
            Caption = '&Clear'
          end
          item
            Action = actSaveVariants
            Caption = #925#941#945' &Variant'
          end
          item
            Action = actLoadVariants
            Caption = #913#957#940#954#955#951#963#951' V&ariant'
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end
      item
        ActionList = ActionMainList
        Caption = 'ActionMainList'
      end>
    Left = 392
    StyleName = 'Platform Default'
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 336
    object actCancel: TAction
      Caption = #913#954#973#961#969#963#951
      OnExecute = actCancelExecute
    end
    object actOK: TAction
      Caption = #913#960#959#948#959#967#942
      OnExecute = actOKExecute
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
      OnExecute = UpdateActionsExecute
    end
    object actUpdateCriteria: TAction
      Category = 'System'
      Caption = 'Criteria'
      ShortCut = 57456
      OnExecute = actUpdateCriteriaExecute
    end
  end
  object qry1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From stMem2SQL'
      'Where TableId = 110')
    Left = 592
    Top = 96
    object qry1Id: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qry1TableId: TIntegerField
      FieldName = 'TableId'
    end
    object qry1FieldName: TWideStringField
      FieldName = 'FieldName'
      Size = 100
    end
    object qry1SqlName: TWideStringField
      FieldName = 'SqlName'
      Size = 100
    end
    object qry1SqlGroup: TIntegerField
      FieldName = 'SqlGroup'
    end
    object qry1AliasSql: TWideStringField
      FieldName = 'AliasSql'
      Size = 100
    end
    object qry1SQLVar: TBooleanField
      FieldName = 'SQLVar'
    end
    object qry1TreatAs: TIntegerField
      FieldName = 'TreatAs'
    end
  end
end
