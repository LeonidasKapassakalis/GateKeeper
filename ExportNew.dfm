inherited frmExportNew: TfrmExportNew
  Left = 416
  Top = 237
  BorderIcons = []
  Caption = #917#957#964#959#955#941#962' '#948#951#956#953#959#965#961#947#943#945#962' '#957#941#969#957' '#954#945#961#964#974#957
  ClientHeight = 119
  ClientWidth = 549
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  ExplicitWidth = 557
  ExplicitHeight = 146
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 48
    Width = 55
    Height = 13
    Caption = #916#953#945#948#953#954#945#963#943#945
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 91
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object ProgressBar1: TProgressBar [2]
    Left = 8
    Top = 64
    Width = 537
    Height = 16
    TabOrder = 0
  end
  object ActionToolBar1: TActionToolBar [3]
    Left = 0
    Top = 0
    Width = 549
    Height = 23
    ActionManager = ActionManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  inherited popFilter: TPopupMenu
    Left = 364
    Top = 3
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 424
    object actCancel: TAction
      Caption = #913#954#973#961#969#963#951
      OnExecute = actCancelExecute
    end
    object actOK: TAction
      Caption = #913#960#959#948#959#967#942
      OnExecute = actOKExecute
      OnUpdate = actOKUpdate
    end
    object actPreview: TAction
      Caption = #917#954#964#973#960#969#963#951
      OnExecute = actPreviewExecute
      OnUpdate = actOKUpdate
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
      OnExecute = UpdateActionsExecute
    end
  end
  object qryACard: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ACARD')
    Left = 144
    Top = 8
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
    object qryACardDAYAMOUNT: TFloatField
      FieldName = 'DAYAMOUNT'
    end
    object qryACardMONTHAMOUNT: TFloatField
      FieldName = 'MONTHAMOUNT'
    end
    object qryACardREGNO: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
    object qryACardIGROUPID5: TIntegerField
      FieldName = 'IGROUPID5'
    end
    object qryACardACARDHOLDER: TWideStringField
      FieldName = 'ACARDHOLDER'
      Size = 30
    end
    object qryACardISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qryACardEXPIREPHDATE: TDateTimeField
      FieldName = 'EXPIREPHDATE'
    end
    object qryACardEXPIRELODATE: TDateTimeField
      FieldName = 'EXPIRELODATE'
    end
    object qryACardEMPLOYEESID: TIntegerField
      FieldName = 'EMPLOYEESID'
    end
    object qryACardNEWCARDBOOLEAN: TBooleanField
      FieldName = 'NEWCARDBOOLEAN'
    end
    object qryACardNEWCARDID: TIntegerField
      FieldName = 'NEWCARDID'
    end
    object qryACardCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object qryACardACARDCODENUM: TIntegerField
      FieldName = 'ACARDCODENUM'
    end
    object qryACardINACTIVEDATE: TDateTimeField
      FieldName = 'INACTIVEDATE'
    end
    object qryACardINACTIVEUSR: TIntegerField
      FieldName = 'INACTIVEUSR'
    end
    object qryACardINACTIVENOTES: TWideStringField
      FieldName = 'INACTIVENOTES'
      FixedChar = True
      Size = 200
    end
    object qryACardIGROUPID6: TIntegerField
      FieldName = 'IGROUPID6'
    end
    object qryACardIGROUPID7: TIntegerField
      FieldName = 'IGROUPID7'
    end
    object qryACardIGROUPID8: TIntegerField
      FieldName = 'IGROUPID8'
    end
    object qryACardIGROUPID9: TIntegerField
      FieldName = 'IGROUPID9'
    end
    object qryACardIGROUPID10: TIntegerField
      FieldName = 'IGROUPID10'
    end
    object qryACardCOSTCENTERID: TIntegerField
      FieldName = 'COSTCENTERID'
    end
    object qryACardPending: TBooleanField
      FieldName = 'Pending'
    end
  end
  object qryCustomer: TADOQuery
    Connection = DMMain.ADOConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT CUSTOMERID, NAME FROM CUSTOMER')
    Left = 488
    object qryCustomerCUSTOMERID: TAutoIncField
      FieldName = 'CUSTOMERID'
      ReadOnly = True
    end
    object qryCustomerNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
  end
  object ExportADOConnection: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=E:\De' +
      'lphi\Delphi\AvinCard SQL V2.5\New.mdb;Mode=Share Deny None;Exten' +
      'ded Properties="";Persist Security Info=False;Jet OLEDB:System d' +
      'atabase="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Passwor' +
      'd="";Jet OLEDB:Engine Type=4;Jet OLEDB:Database Locking Mode=0;J' +
      'et OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transac' +
      'tions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create Syst' +
      'em Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don' +
      #39't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replic' +
      'a Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    BeforeConnect = ExportADOConnectionBeforeConnect
    Left = 240
    Top = 8
  end
  object cmdExport: TADOCommand
    Connection = ExportADOConnection
    Parameters = <>
    Left = 112
    Top = 56
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
            Action = actPreview
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 40
    Top = 16
    StyleName = 'Platform Default'
  end
end
