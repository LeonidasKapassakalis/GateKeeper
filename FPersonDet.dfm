inherited frmPersonDet: TfrmPersonDet
  Caption = #914#953#946#955#943#959' '#917#953#963#972#948#959#965' - '#917#958#972#948#959#965' '#917#960#953#963#954#949#960#964#974#957
  ClientHeight = 497
  Position = poScreenCenter
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
      Caption = #914#953#946#955#943#959' '#917#953#963#972#948#959#965' - '#917#958#972#948#959#965' '#917#960#953#963#954#949#960#964#974#957
      Font.Charset = GREEK_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Book Antiqua'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 452
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 93
    Width = 703
    Height = 148
    Align = alTop
    TabOrder = 1
    object Label9: TLabel
      Left = 24
      Top = 9
      Width = 82
      Height = 13
      Caption = #927#957#959#956#945#964#949#960#974#957#965#956#959
      FocusControl = cxdbtName
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
      Top = 37
      Width = 72
      Height = 13
      Caption = #931#965#957#940#957#964#951#963#951' '#956#949
      FocusControl = cxdbtContactWith
    end
    object Label4: TLabel
      Left = 384
      Top = 36
      Width = 102
      Height = 13
      Caption = #931#954#959#960#972#962' '#931#965#957#940#957#964#951#963#951#962
      FocusControl = cxdbtReason
    end
    object Label5: TLabel
      Left = 24
      Top = 91
      Width = 98
      Height = 13
      Caption = #917#964#945#953#961#949#943#945' '#917#960#953#963#954#941#960#964#951
      FocusControl = cxdbtCompany
    end
    object Label6: TLabel
      Left = 384
      Top = 88
      Width = 81
      Height = 13
      Caption = #913#961#953#952#956#972#962' '#922#940#961#964#945#962
      FocusControl = cxDBSpinEdit1
    end
    object lblCarNumber: TLabel
      Left = 384
      Top = 60
      Width = 68
      Height = 13
      Caption = #913#961#953#952#956#972#962' '#922#965#954#955'.'
      FocusControl = cxdbtCarNumber
    end
    object cxDBCBWithCar: TcxDBCheckBox
      Left = 24
      Top = 60
      AutoSize = False
      Caption = #913#965#964#959#954#943#957#951#964#959' / '#924#951#967#945#957#942
      DataBinding.DataField = 'WithCar'
      DataBinding.DataSource = DMPersonDet.dtsPersonsVisit
      ParentFont = False
      Properties.Alignment = taRightJustify
      Properties.OnChange = cxDBCBWithCarPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 4
      Height = 21
      Width = 181
    end
    object cxdbtName: TcxDBMRUEdit
      Left = 128
      Top = 6
      AutoSize = False
      DataBinding.DataField = 'Name'
      DataBinding.DataSource = DMPersonDet.dtsPersonsVisit
      Properties.CharCase = ecUpperCase
      Properties.ShowEllipsis = False
      TabOrder = 0
      OnExit = cxdbtNameExit
      Height = 21
      Width = 186
    end
    object cxdbtIdentityNo: TcxDBMRUEdit
      Left = 504
      Top = 6
      DataBinding.DataField = 'IdentityNo'
      DataBinding.DataSource = DMPersonDet.dtsPersonsVisit
      Properties.CharCase = ecUpperCase
      Properties.ShowEllipsis = False
      TabOrder = 1
      Width = 169
    end
    object cxdbtCarNumber: TcxDBMRUEdit
      Left = 504
      Top = 58
      DataBinding.DataField = 'CarNumber'
      DataBinding.DataSource = DMPersonDet.dtsPersonsVisit
      Properties.CharCase = ecUpperCase
      Properties.ShowEllipsis = False
      TabOrder = 5
      OnKeyPress = cxdbtCarNumberKeyPress
      Width = 169
    end
    object cxdbtContactWith: TcxDBMRUEdit
      Left = 128
      Top = 33
      DataBinding.DataField = 'ContactWith'
      DataBinding.DataSource = DMPersonDet.dtsPersonsVisit
      Properties.CharCase = ecUpperCase
      Properties.ShowEllipsis = False
      TabOrder = 2
      Width = 186
    end
    object cxdbtReason: TcxDBMRUEdit
      Left = 504
      Top = 31
      DataBinding.DataField = 'Reason'
      DataBinding.DataSource = DMPersonDet.dtsPersonsVisit
      Properties.CharCase = ecUpperCase
      Properties.ShowEllipsis = False
      TabOrder = 3
      Width = 169
    end
    object cxdbtCompany: TcxDBMRUEdit
      Left = 128
      Top = 87
      DataBinding.DataField = 'Company'
      DataBinding.DataSource = DMPersonDet.dtsPersonsVisit
      Properties.CharCase = ecUpperCase
      Properties.ShowEllipsis = False
      TabOrder = 6
      Width = 186
    end
    object cxDBSpinEdit1: TcxDBTextEdit
      Left = 504
      Top = 85
      DataBinding.DataField = 'CardNumber'
      DataBinding.DataSource = DMPersonDet.dtsPersonsVisit
      TabOrder = 7
      Width = 129
    end
    object Button1: TButton
      Left = 328
      Top = 6
      Width = 50
      Height = 25
      Action = actSrc
      TabOrder = 8
    end
    object cxDBCBAir_Lift: TcxDBCheckBox
      Left = 24
      Top = 120
      AutoSize = False
      Caption = 'AirLift'
      DataBinding.DataField = 'Air_Lift'
      DataBinding.DataSource = DMPersonDet.dtsPersonsVisit
      ParentFont = False
      Properties.Alignment = taRightJustify
      Properties.OnChange = cxDBCBWithCarPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 9
      OnClick = cxDBCBAir_LiftClick
      Height = 21
      Width = 85
    end
  end
  object Panel3333: TPanel [3]
    Left = 0
    Top = 241
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
      DataBinding.DataSource = DMPersonDet.dtsPersonsVisit
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
      DataBinding.DataSource = DMPersonDet.dtsPersonsVisit
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Properties.Kind = ckDateTime
      Properties.ReadOnly = False
      TabOrder = 1
      Width = 221
    end
  end
  object Panel5: TPanel [4]
    Left = 0
    Top = 313
    Width = 703
    Height = 153
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 3
    object Label10: TLabel
      Left = 7
      Top = 64
      Width = 49
      Height = 13
      AutoSize = False
    end
    object cxDBMemo1: TcxDBMemo
      Left = 1
      Top = 1
      Align = alClient
      DataBinding.DataField = 'Comments'
      DataBinding.DataSource = DMPersonDet.dtsPersonsVisit
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 151
      Width = 701
    end
  end
  inherited ToolBar1: TToolBar
    TabOrder = 4
    object cxDBLabel1: TcxDBLabel
      Left = 680
      Top = 0
      TabStop = False
      DataBinding.DataField = 'FullFilled'
      DataBinding.DataSource = DMPersonDet.dtsPersonsVisit
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
    inherited actMainOKFF: TAction
      OnExecute = actMainOKFFExecute
    end
    object actSrc: TAction
      Tag = 999
      Category = 'UPD'
      Caption = #917#973#961#949#963#951
      OnExecute = actSrcExecute
    end
  end
  inherited MainMenu1: TMainMenu
    Left = 456
    Top = 320
  end
  inherited ImageList1: TImageList
    Left = 88
    Top = 320
  end
  inherited JvCalculator1: TJvCalculator
    Left = 16
    Top = 240
  end
  inherited PrintDialog1: TPrintDialog
    Left = 284
    Top = 344
  end
end
