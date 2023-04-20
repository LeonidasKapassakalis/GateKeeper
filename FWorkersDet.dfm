inherited frmWorkersDet: TfrmWorkersDet
  Caption = #914#953#946#955#943#959' '#917#953#963#972#948#959#965' - '#917#958#972#948#959#965' '#917#961#947#959#955#940#946#969#957
  ClientHeight = 497
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  ExplicitWidth = 711
  ExplicitHeight = 543
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText [0]
    Left = 320
    Top = 216
    Width = 65
    Height = 17
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 52
    Width = 703
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 695
      Height = 32
      Align = alTop
      Alignment = taCenter
      Anchors = []
      Caption = #914#953#946#955#943#959' '#917#953#963#972#948#959#965' - '#917#958#972#948#959#965' '#917#961#947#959#955#940#946#969#957
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Book Antiqua'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 449
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 93
    Width = 703
    Height = 136
    Align = alTop
    TabOrder = 1
    object Label9: TLabel
      Left = 24
      Top = 36
      Width = 32
      Height = 13
      Caption = #927#957#959#956#945
    end
    object Label2: TLabel
      Left = 384
      Top = 9
      Width = 105
      Height = 13
      Caption = #913#961#953#952#956#972#962' '#932#945#965#964#972#964#951#964#945#962
      FocusControl = cxdbtIdentityNo
    end
    object Label3: TLabel
      Left = 24
      Top = 61
      Width = 72
      Height = 13
      Caption = #931#965#957#940#957#964#951#963#951' '#956#949
    end
    object Label4: TLabel
      Left = 384
      Top = 60
      Width = 102
      Height = 13
      Caption = #931#954#959#960#972#962' '#931#965#957#940#957#964#951#963#951#962
    end
    object Label5: TLabel
      Left = 24
      Top = 11
      Width = 54
      Height = 13
      Caption = #917#961#947#959#955#940#946#959#962
      FocusControl = cxdbtCompany
    end
    object Label6: TLabel
      Left = 384
      Top = 112
      Width = 81
      Height = 13
      Caption = #913#961#953#952#956#972#962' '#922#940#961#964#945#962
      FocusControl = cxDBSpinEdit1
    end
    object lblCarNumber: TLabel
      Left = 384
      Top = 84
      Width = 68
      Height = 13
      Caption = #913#961#953#952#956#972#962' '#922#965#954#955'.'
      FocusControl = cxdbtCarNumber
    end
    object Label10: TLabel
      Left = 384
      Top = 36
      Width = 44
      Height = 13
      Caption = #917#960#974#957#965#956#959
    end
    object cxDBCBWithCar: TcxDBCheckBox
      Left = 24
      Top = 84
      AutoSize = False
      Caption = #913#965#964#959#954#943#957#951#964#959' / '#924#951#967#945#957#942
      DataBinding.DataField = 'WithCar'
      DataBinding.DataSource = DMWorkersDet.dtsWorkersVisit
      ParentFont = False
      Properties.Alignment = taRightJustify
      Properties.OnChange = cxDBCBWithCarPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 21
      Width = 181
    end
    object cxdbtCarNumber: TcxDBMRUEdit
      Left = 504
      Top = 82
      DataBinding.DataField = 'CarNumber'
      DataBinding.DataSource = DMWorkersDet.dtsWorkersVisit
      Properties.CharCase = ecUpperCase
      Properties.ShowEllipsis = False
      TabOrder = 2
      OnKeyPress = cxdbtCarNumberKeyPress
      Width = 169
    end
    object cxDBSpinEdit1: TcxDBTextEdit
      Left = 504
      Top = 109
      DataBinding.DataField = 'CardNumber'
      DataBinding.DataSource = DMWorkersDet.dtsWorkersVisit
      TabOrder = 4
      Width = 129
    end
    object Button1: TButton
      Left = 328
      Top = 6
      Width = 50
      Height = 25
      Action = actSrc
      TabOrder = 5
    end
    object cxDBTextEditContractors_Id: TcxDBTextEdit
      Left = 72
      Top = 109
      DataBinding.DataField = 'Contractors_Id'
      DataBinding.DataSource = DMWorkersDet.dtsWorkersVisit
      TabOrder = 6
      Visible = False
      Width = 37
    end
    object cxDBTextEditContractors_Workers_Id: TcxDBTextEdit
      Left = 24
      Top = 109
      DataBinding.DataField = 'Contractors_Workers_Id'
      DataBinding.DataSource = DMWorkersDet.dtsWorkersVisit
      TabOrder = 7
      Visible = False
      Width = 37
    end
    object cxdbtCompany1: TcxDBLookupComboBox
      Left = 132
      Top = 108
      DataBinding.DataField = 'Contractors_Id'
      DataBinding.DataSource = DMWorkersDet.dtsWorkersVisit
      Properties.DropDownAutoSize = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'Company'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = DMWorkersDet.dtsVL_Contractors
      TabOrder = 8
      Visible = False
      OnExit = cxdbtCompany1Exit
      Width = 181
    end
    object cxdbtReason: TcxDBLookupComboBox
      Left = 504
      Top = 56
      DataBinding.DataField = 'Reason_Id'
      DataBinding.DataSource = DMWorkersDet.dtsWorkersVisit
      Properties.DropDownAutoSize = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'Id'
      Properties.ListColumns = <
        item
          FieldName = 'Name'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DMWorkersDet.dts_ReasonContractors
      TabOrder = 9
      Width = 169
    end
    object cxdbtContactWith: TcxDBLookupComboBox
      Left = 130
      Top = 60
      DataBinding.DataField = 'Contact_Id'
      DataBinding.DataSource = DMWorkersDet.dtsWorkersVisit
      Properties.DropDownAutoSize = True
      Properties.GridMode = True
      Properties.KeyFieldNames = 'Id'
      Properties.ListColumns = <
        item
          FieldName = 'Name'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DMWorkersDet.dts_ContactContractors
      TabOrder = 10
      Width = 183
    end
    object cxdbtName: TcxMRUEdit
      Left = 131
      Top = 32
      Properties.ReadOnly = False
      Properties.ShowEllipsis = False
      TabOrder = 11
      Width = 182
    end
    object cxdbtCompany: TcxMRUEdit
      Left = 128
      Top = 7
      Properties.CharCase = ecUpperCase
      Properties.ShowEllipsis = False
      TabOrder = 3
      Width = 186
    end
    object cxdbtIdentityNo: TcxMRUEdit
      Left = 504
      Top = 6
      Properties.CharCase = ecUpperCase
      Properties.ShowEllipsis = False
      TabOrder = 0
      Width = 169
    end
    object Button2: TButton
      Left = 328
      Top = 54
      Width = 50
      Height = 25
      Action = actAddWorker
      Caption = '+ '#917#961#947#945#950
      TabOrder = 12
    end
  end
  object Panel3333: TPanel [3]
    Left = 0
    Top = 229
    Width = 703
    Height = 72
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 2
    object Label7: TLabel
      Left = 128
      Top = 16
      Width = 137
      Height = 13
      Alignment = taCenter
      Caption = #919#956#949#961#959#956#951#957#943#945' / '#39#937#961#945' '#917#953#963#972#948#959#965
      FocusControl = cxDBDateEdit1
    end
    object Label8: TLabel
      Left = 128
      Top = 35
      Width = 132
      Height = 13
      Caption = #919#956#949#961#959#956#951#957#943#945' / '#39#937#961#945' '#917#958#972#948#959#965
      FocusControl = cxDBDateEdit2
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 300
      Top = 6
      TabStop = False
      DataBinding.DataField = 'DateTimeIn'
      DataBinding.DataSource = DMWorkersDet.dtsWorkersVisit
      Properties.AutoSelect = False
      Properties.Kind = ckDateTime
      Properties.ReadOnly = False
      TabOrder = 0
      Width = 221
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 300
      Top = 28
      TabStop = False
      DataBinding.DataField = 'DateTimeOut'
      DataBinding.DataSource = DMWorkersDet.dtsWorkersVisit
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Properties.Kind = ckDateTime
      Properties.ReadOnly = False
      TabOrder = 1
      Width = 221
    end
  end
  object Panel5: TPanel [4]
    Left = 0
    Top = 301
    Width = 703
    Height = 165
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 3
    object cxDBMemo1: TcxDBMemo
      Left = 1
      Top = 1
      Align = alClient
      DataBinding.DataField = 'Comments'
      DataBinding.DataSource = DMWorkersDet.dtsWorkersVisit
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 163
      Width = 701
    end
  end
  inherited ToolBar1: TToolBar
    TabOrder = 4
    inherited ToolButtonCalc: TToolButton
      Action = actAddWorker
    end
    object cxDBLabel1: TcxDBLabel
      Left = 680
      Top = 0
      TabStop = False
      DataBinding.DataField = 'FullFilled'
      DataBinding.DataSource = DMWorkersDet.dtsWorkersVisit
      ParentFont = False
      Properties.LabelEffect = cxleCool
      Properties.LabelStyle = cxlsRaised
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Height = 52
      Width = 155
    end
  end
  object PanelBtnCom: TPanel [6]
    Left = 0
    Top = 466
    Width = 703
    Height = 1
    Align = alBottom
    TabOrder = 5
  end
  inherited StatusBar1: TStatusBar
    Top = 467
    ExplicitTop = 467
  end
  object cxdbtSurname: TcxMRUEdit [8]
    Left = 505
    Top = 124
    AutoSize = False
    Properties.CharCase = ecUpperCase
    Properties.ShowEllipsis = False
    TabOrder = 7
    Height = 21
    Width = 168
  end
  inherited popFilter: TPopupMenu
    Left = 604
    Top = 323
  end
  inherited ActionMainList: TActionList
    Left = 536
    Top = 320
    inherited actMainInsert: TAction
      OnExecute = actMainInsertExecute
    end
    inherited actMainUpdate: TAction
      OnExecute = actMainUpdateExecute
    end
    inherited actMainOK: TAction
      OnExecute = actMainOKExecute
    end
    inherited actMainCancel: TAction
      Tag = 999
      OnExecute = actMainCancelExecute
    end
    inherited actDispAllActions: TAction
      ShortCut = 0
    end
    inherited actMainOKFF: TAction
      OnExecute = actMainOKFFExecute
    end
    object actSrc: TAction
      Tag = 999
      Category = 'UPD'
      Caption = #917#973#961#949#963#951
      OnExecute = actSrcExecute
    end
    object actAddWorker: TAction
      Category = 'UPD'
      Caption = #928#961#959#963#952#951#954#951' '#917#961#947#945#950#959#956#941#957#959#965
      ImageIndex = 11
      OnExecute = actAddWorkerExecute
    end
  end
  inherited MainMenu1: TMainMenu
    Left = 456
    Top = 320
    object N7: TMenuItem
      Action = actAddWorker
    end
  end
  inherited ImageList1: TImageList
    Left = 88
    Top = 320
  end
  inherited JvCalculator1: TJvCalculator
    Left = 340
    Top = 180
  end
  inherited PrintDialog1: TPrintDialog
    Left = 284
    Top = 344
  end
end
