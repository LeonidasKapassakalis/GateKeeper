inherited frmExportBlackList: TfrmExportBlackList
  Left = 320
  Top = 310
  BorderIcons = []
  Caption = #916#951#956#953#959#965#961#947#943#945' '#945#961#967#949#943#959#965' black list'
  ClientHeight = 177
  ClientWidth = 561
  OldCreateOrder = True
  Position = poScreenCenter
  ExplicitWidth = 569
  ExplicitHeight = 204
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 48
    Width = 55
    Height = 13
    Caption = #916#953#945#948#953#954#945#963#943#945
  end
  object ProgressBar1: TProgressBar [1]
    Left = 8
    Top = 64
    Width = 537
    Height = 16
    TabOrder = 0
  end
  object ActionToolBar1: TActionToolBar [2]
    Left = 0
    Top = 0
    Width = 561
    Height = 23
    ActionManager = ActionManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  inherited ActionMainList: TActionList
    Left = 472
    Top = 112
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 360
    object actCancel: TAction
      Caption = #913#954#973#961#969#963#951
      OnExecute = actCancelExecute
    end
    object actOK: TAction
      Caption = #927#955#941#962' '#959#953' '#922#940#961#964#949#962
      OnExecute = actOKExecute
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
      OnExecute = UpdateActionsExecute
    end
    object actOKTill: TAction
      Caption = #924#949' '#922#961#953#964#942#961#953#959' '#919#956#949#961#959#956#951#957#943#945' '#923#942#958#951#962
      OnExecute = actOKTillExecute
    end
  end
  object dxBarManager1: TActionManager
    Left = 240
    Top = 32
    StyleName = 'Platform Default'
  end
  object qryACard: TADOQuery
    Connection = DMMain.ADOConnection
    OnCalcFields = qryACardCalcFields
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ACARD')
    Left = 168
    Top = 32
    object qryACardACARDID: TAutoIncField
      FieldName = 'ACARDID'
      ReadOnly = True
    end
    object qryACardACARDCODE: TWideStringField
      FieldName = 'ACARDCODE'
      Size = 50
    end
    object qryACardCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qryACardISSUEDATE: TDateTimeField
      FieldName = 'ISSUEDATE'
    end
    object qryACardEXPIREDATE: TDateTimeField
      FieldName = 'EXPIREDATE'
    end
    object qryACardMETERBOOLEAN: TBooleanField
      FieldName = 'METERBOOLEAN'
    end
    object qryACardPINBOOLEAN: TBooleanField
      FieldName = 'PINBOOLEAN'
    end
    object qryACardINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryACardUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qryACardINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryACardUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qryACardSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qryACardVTYPEID: TIntegerField
      FieldName = 'VTYPEID'
    end
    object qryACardCREATEBOOLEAN: TBooleanField
      FieldName = 'CREATEBOOLEAN'
    end
    object qryACardBLACKLISTBOOLEAN: TBooleanField
      FieldName = 'BLACKLISTBOOLEAN'
    end
    object qryACardBLACKLISTDATE: TDateTimeField
      FieldName = 'BLACKLISTDATE'
    end
    object qryACardBLACKLISTUSR: TIntegerField
      FieldName = 'BLACKLISTUSR'
    end
    object qryACardBLACKLISTNOTES: TWideStringField
      FieldName = 'BLACKLISTNOTES'
      Size = 200
    end
    object qryACardIGROUPID1: TIntegerField
      FieldName = 'IGROUPID1'
    end
    object qryACardIGROUPID2: TIntegerField
      FieldName = 'IGROUPID2'
    end
    object qryACardIGROUPID3: TIntegerField
      FieldName = 'IGROUPID3'
    end
    object qryACardIGROUPID4: TIntegerField
      FieldName = 'IGROUPID4'
    end
    object qryACardFullCardNo: TStringField
      FieldKind = fkCalculated
      FieldName = 'FullCardNo'
      Calculated = True
    end
  end
  object SaveDialog1: TSaveDialog
    FileName = 'AvinCard.BLA'
    Title = #913#961#967#949#943#959' BlackList'
    Left = 424
    Top = 8
  end
  object ActionManager1: TActionManager
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
            Action = actOKTill
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 504
    Top = 16
    StyleName = 'Platform Default'
  end
end
