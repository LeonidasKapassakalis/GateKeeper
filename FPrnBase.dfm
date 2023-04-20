object FrmPrnBase: TFrmPrnBase
  Left = 259
  Top = 128
  Caption = 'FrmPrnBase'
  ClientHeight = 513
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object popFilter: TPopupMenu
    OnPopup = popFilterPopup
    Left = 116
    Top = 107
    object Pedia: TMenuItem
      Caption = #928#949#948#943#945
      object FAll: TMenuItem
        Caption = #927#955#945
        OnClick = FAllClick
      end
      object FNone: TMenuItem
        Caption = #922#945#957#941#957#945
        OnClick = FNoneClick
      end
      object MC4: TMenuItem
        Caption = '-'
      end
    end
    object Variants1: TMenuItem
      Caption = 'Variants'
      object FSaveGrid: TMenuItem
        Caption = #913#960#959#952#942#954#949#965#963#951
        OnClick = FSaveGridClick
      end
      object FLoadGrid: TMenuItem
        Caption = #913#957#940#954#955#951#963#951
        OnClick = FLoadGridClick
      end
    end
    object ExcelPopBtn: TMenuItem
      Caption = 'Excel'
      OnClick = ExcelPopBtnClick
    end
    object PrnPopBtn: TMenuItem
      Caption = #917#954#964#973#960#969#963#951
      OnClick = PrnPopBtnClick
    end
    object XMLPopBtn: TMenuItem
      Caption = '@XML'
      OnClick = XMLPopBtnClick
    end
    object actBestFit: TMenuItem
      Caption = 'Best Fit'
      OnClick = actBestFitClick
    end
    object Pivot1: TMenuItem
      Caption = 'Pivot'
      OnClick = Pivot1Click
    end
  end
  object ActLstBase: TActionList
    Left = 360
    Top = 104
    object actUpdBrowse: TAction
      Caption = 'actUpdBrowse'
      ShortCut = 40968
      OnExecute = actUpdBrowseExecute
    end
    object actDispAllActions: TAction
      Caption = 'actDispAllActions'
      ShortCut = 24699
      OnExecute = actDispAllActionsExecute
    end
  end
end
