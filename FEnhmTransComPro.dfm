inherited frmEnhmTransComPrologue: TfrmEnhmTransComPrologue
  Left = 284
  Top = 204
  Caption = #917#957#951#956#941#961#969#963#951' '#933#960#945#955#955#942#955#969#957
  ClientHeight = 179
  ClientWidth = 546
  OldCreateOrder = True
  OnCreate = FormCreate
  ExplicitWidth = 554
  ExplicitHeight = 206
  PixelsPerInch = 96
  TextHeight = 13
  object ue: TPanel [0]
    Left = 0
    Top = 82
    Width = 546
    Height = 97
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 36
      Top = 36
      Width = 105
      Height = 13
      Caption = #917#957#951#956#941#961#969#963#951' '#928#949#955#945#964#974#957
    end
    object dblcPEF: TDBLookupComboBox
      Left = 212
      Top = 32
      Width = 145
      Height = 21
      DataField = 'FrDate'
      DataSource = dtsWS
      KeyField = 'ENPCALLID'
      ListField = 'ENPCALLDATE'
      ListSource = dtsEnhmPeCall
      NullValueKey = 27
      TabOrder = 0
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 23
    Width = 546
    Height = 59
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 36
      Top = 24
      Width = 44
      Height = 13
      Caption = #917#964#945#953#961#949#943#945
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 152
      Top = 18
      Width = 269
      Height = 21
      DataField = 'FrCompany'
      DataSource = dtsWS
      KeyField = 'CUSTOMERID'
      ListField = 'NAME'
      ListSource = dtsCustomer
      NullValueKey = 27
      TabOrder = 0
    end
  end
  object ActionToolBar1: TActionToolBar [2]
    Left = 0
    Top = 0
    Width = 546
    Height = 23
    ActionManager = dxBarManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  inherited ActionMainList: TActionList
    Left = 64
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
            ShortCut = 13
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 296
    Top = 65528
    StyleName = 'Platform Default'
  end
  object ActionList1: TActionList
    Left = 248
    Top = 65528
    object actCancel: TAction
      Caption = #913#954#973#961#969#963#951
      OnExecute = actCancelExecute
    end
    object actOK: TAction
      Caption = #913#960#959#948#959#967#942
      ShortCut = 13
      OnExecute = actOKExecute
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
    end
  end
  object memWS: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 128
    Top = 8
    object memWSFrCompany: TIntegerField
      FieldName = 'FrCompany'
    end
    object memWSFrDate: TIntegerField
      FieldName = 'FrDate'
    end
  end
  object dtsWS: TDataSource
    DataSet = memWS
    Left = 176
    Top = 8
  end
  object QryCustomer: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select CustomerId, Name From Customer '
      'Where HasDetailEmp = 1')
    Left = 444
    Top = 24
    object QryCustomerCUSTOMERID: TAutoIncField
      FieldName = 'CUSTOMERID'
      ReadOnly = True
    end
    object QryCustomerNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
  end
  object dtsCustomer: TDataSource
    DataSet = QryCustomer
    Left = 484
    Top = 24
  end
  object qryEnhmPeCall: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select EnPCallId, EnPCallDate '
      'From EnhmPeCall'
      'Where EnPCallFrom = 1'
      '')
    Left = 444
    Top = 96
    object qryEnhmPeCallENPCALLID: TAutoIncField
      FieldName = 'ENPCALLID'
      ReadOnly = True
    end
    object qryEnhmPeCallENPCALLDATE: TDateTimeField
      FieldName = 'ENPCALLDATE'
    end
  end
  object dtsEnhmPeCall: TDataSource
    DataSet = qryEnhmPeCall
    Left = 492
    Top = 96
  end
end
