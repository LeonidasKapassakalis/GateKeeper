object frmBaseDev0: TfrmBaseDev0
  Left = 257
  Top = 113
  Caption = 'frmBaseDev0'
  ClientHeight = 438
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object popFilter: TPopupMenu
    OnPopup = popFilterPopup
    Left = 404
    Top = 91
    object Pedia: TMenuItem
      Caption = #928#949#948#943#945
      HelpContext = 4030
      object FAll: TMenuItem
        Caption = #908#955#945
        HelpContext = 4030
        OnClick = FAllClick
      end
      object FNone: TMenuItem
        Caption = #922#945#957#941#957#945
        HelpContext = 4030
      end
      object MC5: TMenuItem
        Caption = '-'
      end
    end
    object dummyVariant: TMenuItem
      Caption = 'Variants'
      object actNewVariant: TMenuItem
        Caption = #913#960#959#952#942#954#949#965#963#951
        OnClick = newVariantClick
      end
      object actRestoreVariant: TMenuItem
        Caption = #913#957#940#954#955#951#963#951
        OnClick = actRestoreVariantClick
      end
    end
    object Grid2Excel: TMenuItem
      Caption = 'Excel'
      OnClick = Grid2ExcelClick
    end
    object Grid2Prn: TMenuItem
      Caption = #917#954#964#973#960#969#963#951
      OnClick = Grid2PrnClick
    end
    object Grid2XML: TMenuItem
      Caption = '@XML'
      OnClick = Grid2XMLClick
    end
    object actBestFit: TMenuItem
      Caption = 'Best Fit'
      OnClick = actBestFitClick
    end
  end
  object ActionMainList: TActionList
    OnExecute = ActionMainListExecute
    Left = 512
    Top = 88
    object actMainClose: TAction
      Category = 'Browse'
      Caption = #917#960#953#963#964#961#959#966#942
    end
    object actMainInsert: TAction
      Category = 'Browse'
      Caption = #917#953#963#945#947#969#947#942
    end
    object actMainUpdate: TAction
      Category = 'Browse'
      Caption = #924#949#964#945#946#959#955#942
    end
    object actMainDelete: TAction
      Category = 'Browse'
      Caption = #916#953#945#947#961#945#966#942
      OnExecute = actMainDeleteExecute
    end
    object actMainOK: TAction
      Category = 'UPD'
      Caption = #913#960#959#948#959#967#942
    end
    object actMainCancel: TAction
      Category = 'UPD'
      Caption = #913#954#973#961#969#963#951
    end
    object UpdComAct: TAction
      Category = 'Browse'
      Caption = 'UpdComAct'
      ShortCut = 24698
      OnExecute = UpdateActionsExecute
    end
    object actMainDisp: TAction
      Category = 'Browse'
      Caption = #917#956#966#940#957#953#963#951
      OnExecute = actMainDispExecute
    end
    object actMainNext: TAction
      Tag = 9100
      Caption = 'actNext'
      ShortCut = 16424
      OnExecute = actMainNextExecute
    end
    object actMainPrev: TAction
      Tag = 9100
      Caption = 'actPrev'
      ShortCut = 16422
      OnExecute = actMainPrevExecute
    end
    object actMainFirst: TAction
      Tag = 9100
      Caption = 'actFirst'
      ShortCut = 16420
      OnExecute = actMainFirstExecute
    end
    object actMainLast: TAction
      Tag = 9100
      Caption = 'actLast'
      ShortCut = 16419
      OnExecute = actMainLastExecute
    end
    object actDispId: TAction
      Caption = 'actDispId'
      ShortCut = 24699
      OnExecute = actDispIdExecute
    end
    object actUpdBrowse: TAction
      Caption = 'actUpdBrowse'
      ShortCut = 40968
      OnExecute = actUpdBrowseExecute
    end
    object actDispAllActions: TAction
      Caption = 'actDispAllActions'
      ShortCut = 57467
      OnExecute = actDispAllActionsExecute
    end
    object actBrowse: TAction
      Category = 'Browse'
      Caption = 'actBrowse'
      OnExecute = actBrowseExecute
    end
    object actEdit: TAction
      Category = 'UPD'
      Caption = 'actEdit'
      OnExecute = actEditExecute
    end
  end
end
