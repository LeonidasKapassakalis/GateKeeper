inherited frmInsApproval: TfrmInsApproval
  Left = 290
  Top = 180
  ActiveControl = MaskEdit1
  Caption = #904#947#954#961#953#963#951
  ClientHeight = 202
  ClientWidth = 627
  OldCreateOrder = True
  OnCreate = FormCreate
  ExplicitWidth = 635
  ExplicitHeight = 229
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 40
    Width = 32
    Height = 13
    Caption = #922#940#961#964#945
  end
  object Label2: TLabel [1]
    Left = 16
    Top = 72
    Width = 47
    Height = 13
    Caption = #928#961#945#964#942#961#953#959
  end
  object Label3: TLabel [2]
    Left = 16
    Top = 121
    Width = 22
    Height = 13
    Caption = #913#958#943#945
  end
  object Label4: TLabel [3]
    Left = 16
    Top = 91
    Width = 50
    Height = 13
    Caption = #924#945#954#961#945#943#969#957
  end
  object dbeAmount: TDBEdit [4]
    Left = 80
    Top = 118
    Width = 121
    Height = 21
    DataField = 'Amount'
    DataSource = dsmemStation
    TabOrder = 4
  end
  object ActionToolBar1: TActionToolBar [5]
    Left = 0
    Top = 0
    Width = 627
    Height = 23
    ActionManager = dxBarManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  object cblc14: TcxDBLookupComboBox [6]
    Left = 80
    Top = 64
    DataBinding.DataField = 'NameKey'
    DataBinding.DataSource = dsmemStation
    Properties.Alignment.Horz = taLeftJustify
    Properties.ClearKey = 27
    Properties.DropDownAutoSize = True
    Properties.KeyFieldNames = 'Station.StationId'
    Properties.ListColumns = <
      item
        SortOrder = soAscending
        Width = 1200
        FieldName = 'FName'
      end>
    Properties.ListSource = dsStation
    TabOrder = 1
    Width = 497
  end
  object cblcAcard: TcxDBLookupComboBox [7]
    Left = 80
    Top = 91
    DataBinding.DataField = 'CardKey'
    DataBinding.DataSource = dsmemStation
    Properties.Alignment.Horz = taLeftJustify
    Properties.DropDownAutoSize = True
    Properties.KeyFieldNames = 'Acard.AcardId'
    Properties.ListColumns = <
      item
        FieldName = 'Acard.AcardCodeFull'
      end>
    Properties.ListSource = dsAcard
    TabOrder = 5
    Visible = False
    Width = 281
  end
  object MaskEdit1: TMaskEdit [8]
    Left = 80
    Top = 37
    Width = 137
    Height = 21
    EditMask = '\1\4\0\5 \2\800 0000 0000;1;_'
    MaxLength = 19
    TabOrder = 0
    Text = '1405 28            '
    OnExit = MaskEdit1Exit
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox [9]
    Left = 80
    Top = 91
    DataBinding.DataField = 'NameKey'
    DataBinding.DataSource = dsmemStation
    Properties.Alignment.Horz = taLeftJustify
    Properties.ClearKey = 27
    Properties.DropDownAutoSize = True
    Properties.KeyFieldNames = 'Station.StationId'
    Properties.ListColumns = <
      item
        SortOrder = soAscending
        Width = 1200
        FieldName = 'FName2'
      end>
    Properties.ListSource = dsStation2
    TabOrder = 2
    Width = 473
  end
  inherited popFilter: TPopupMenu
    Left = 316
    Top = 65531
  end
  inherited ActionMainList: TActionList
    Left = 464
    Top = 112
  end
  object memStation: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 256
    Top = 144
    object memStationNameKey: TIntegerField
      FieldName = 'NameKey'
    end
    object memStationCardKey: TIntegerField
      FieldName = 'CardKey'
    end
    object memStationAmount: TCurrencyField
      FieldName = 'Amount'
    end
    object memStationAcardCode: TIntegerField
      FieldKind = fkLookup
      FieldName = 'AcardCode'
      LookupDataSet = qryACard
      LookupKeyFields = 'Acard.AcardId'
      LookupResultField = 'Acard.AcardCode'
      KeyFields = 'CardKey'
      Lookup = True
    end
  end
  object dsmemStation: TDataSource
    DataSet = memStation
    Left = 312
    Top = 144
  end
  object dsAcard: TDataSource
    AutoEdit = False
    DataSet = qryACard
    Left = 544
    Top = 120
  end
  object qryACard: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'Select * From V_Acard_PopUp')
    Left = 248
    Top = 8
    object qryACardAcardAcardId: TAutoIncField
      FieldName = 'Acard.AcardId'
      ReadOnly = True
    end
    object qryACardAcardREGNO: TWideStringField
      FieldName = 'Acard.REGNO'
      Size = 50
    end
    object qryACardAcardAcardCode: TWideStringField
      FieldName = 'Acard.AcardCode'
      Size = 50
    end
    object qryACardAcardAcardCodeFull: TWideStringField
      DisplayLabel = 'AvinCard Code'
      FieldName = 'Acard.AcardCodeFull'
      ReadOnly = True
      Size = 19
    end
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 464
    Top = 16
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
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 368
    Top = 24
    StyleName = 'Platform Default'
  end
  object InsApproval: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Approval')
    Left = 560
    Top = 64
    object InsApprovalAPPROVALID: TAutoIncField
      FieldName = 'APPROVALID'
      ReadOnly = True
    end
    object InsApprovalAPPROVALACARDID: TIntegerField
      FieldName = 'APPROVALACARDID'
    end
    object InsApprovalAPPROVALSTATIONID: TIntegerField
      FieldName = 'APPROVALSTATIONID'
    end
    object InsApprovalAPPROVALAMOUNT: TFloatField
      FieldName = 'APPROVALAMOUNT'
    end
    object InsApprovalAPPROVALCODE: TWideStringField
      FieldName = 'APPROVALCODE'
      Size = 10
    end
    object InsApprovalINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object InsApprovalUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object InsApprovalINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object InsApprovalUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
  end
  object dsStation: TDataSource
    AutoEdit = False
    DataSet = qryStation
    Left = 568
    Top = 8
  end
  object qryStation: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'Select * ,  RTrim(LTrim([Merchant.Name] + '#39' '#39' +[Station.Street]+' +
        #39' '#39'+ [Station.City])) As FName, RTrim(LTrim([Station.Name] + '#39' '#39 +
        ' +[Station.Street]+'#39' '#39'+ [Station.City]))  As FName2'
      'From V_MST_Lite')
    Left = 528
    object qryStationMerchantName: TWideStringField
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object qryStationStationStationId: TIntegerField
      FieldName = 'Station.StationId'
    end
    object qryStationMerchantMerchantId: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object qryStationStationStreet: TWideStringField
      FieldName = 'Station.Street'
      Size = 50
    end
    object qryStationStationCity: TWideStringField
      FieldName = 'Station.City'
      Size = 50
    end
    object qryStationTerminalTerminalid: TIntegerField
      FieldName = 'Terminal.Terminalid'
    end
    object qryStationFName: TWideStringField
      FieldName = 'FName'
      ReadOnly = True
      Size = 202
    end
    object qryStationFName2: TStringField
      FieldName = 'FName2'
      Size = 80
    end
  end
  object qryStation2: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      
        'Select * ,  RTrim(LTrim([Merchant.Name] + '#39' '#39' +[Station.Street]+' +
        #39' '#39'+ [Station.City])) As FName, RTrim(LTrim([Station.Name] + '#39' '#39 +
        ' +[Station.Street]+'#39' '#39'+ [Station.City]))  As FName2'
      'From V_MST_Lite'
      'Where [Merchant.MerchantId] in (Select id from MakMerCodes)'
      '')
    Left = 400
    Top = 152
    object WideStringField1: TWideStringField
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object IntegerField1: TIntegerField
      FieldName = 'Station.StationId'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object WideStringField2: TWideStringField
      FieldName = 'Station.Street'
      Size = 50
    end
    object WideStringField3: TWideStringField
      FieldName = 'Station.City'
      Size = 50
    end
    object IntegerField3: TIntegerField
      FieldName = 'Terminal.Terminalid'
    end
    object WideStringField4: TWideStringField
      FieldName = 'FName'
      ReadOnly = True
      Size = 202
    end
    object StringField1: TStringField
      FieldName = 'FName2'
      Size = 80
    end
  end
  object dsStation2: TDataSource
    AutoEdit = False
    DataSet = qryStation2
    Left = 480
    Top = 152
  end
end
