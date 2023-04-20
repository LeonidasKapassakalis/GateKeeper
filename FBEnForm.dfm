inherited frmBEnForm: TfrmBEnForm
  Left = 259
  Top = 169
  Caption = 'frmBEnForm'
  Menu = MainMenu1
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PnlTop: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 65
    Align = alTop
    TabOrder = 1
  end
  object PnlBottom: TPanel
    Left = 0
    Top = 65
    Width = 688
    Height = 369
    Align = alClient
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 686
      Height = 367
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'TabSheet1'
        TabVisible = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object FormGrid: TDBGrid
          Left = 0
          Top = 0
          Width = 678
          Height = 357
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = FormGridEnter
          OnTitleClick = FormGridTitleClick
        end
      end
    end
  end
  object popFilter: TPopupMenu
    Left = 44
    Top = 131
    object N7: TMenuItem
      Action = actDispCurr0
      Visible = False
    end
    object N8: TMenuItem
      Action = actEquipment0
      Visible = False
    end
    object N9: TMenuItem
      Action = actKart0
      Visible = False
    end
    object N6: TMenuItem
      Caption = '-'
      Visible = False
    end
    object pmsFilter: TMenuItem
      Caption = #934#943#955#964#961#959
      OnClick = pmsFilterClick
    end
    object pmsCancelFilter: TMenuItem
      Caption = #913#954#973#961#969#963#951' '#966#943#955#964#961#959#965
      OnClick = pmsCancelFilterClick
    end
    object popfilterDis: TMenuItem
      Caption = #917#956#966#940#957#953#963#951' '#934#943#955#964#961#959#965
      OnClick = popfilterDisClick
    end
    object MC1: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #917#973#961#949#963#951
      OnClick = N2Click
    end
    object NUnder1: TMenuItem
      Caption = '-'
    end
    object actOutputToXL: TMenuItem
      Caption = #931#949' Excel'
      OnClick = actOutputToXLClick
    end
    object MC2: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #917#954#964#973#960#969#963#951' '#928#943#957#945#954#945
      OnClick = N4Click
    end
    object MC3: TMenuItem
      Caption = '-'
    end
    object Pedia: TMenuItem
      Caption = #928#949#948#943#945
      object FAll: TMenuItem
        Caption = #908#955#945
        OnClick = FAllClick
      end
      object FNone: TMenuItem
        Caption = #922#945#957#941#957#945
        OnClick = FNoneClick
      end
      object MC5: TMenuItem
        Caption = '-'
      end
    end
    object MC4: TMenuItem
      Caption = '-'
    end
    object Indexes: TMenuItem
      Caption = #932#945#958#953#957#972#956#951#963#951
      object NNone: TMenuItem
        Caption = #935#969#961#943#962
        OnClick = NNoneClick
      end
      object IndDisp: TMenuItem
        Caption = #928#961#959#946#959#955#942
        OnClick = IndDispClick
      end
      object PediaIdx: TMenuItem
        Caption = #928#949#948#943#945
        object PediaIdxActive: TMenuItem
          Caption = #917#957#949#961#947#959#960#959#943#951#963#951
          OnClick = PediaIdxActiveClick
        end
        object MC7: TMenuItem
          Caption = '-'
        end
      end
      object MC6: TMenuItem
        Caption = '-'
      end
      object TMenuItem
        Visible = False
      end
    end
  end
  object ActionList: TActionList
    OnExecute = ActionListExecute
    Left = 176
    Top = 192
    object Refresh: TAction
      Caption = 'Refresh'
      ShortCut = 16466
    end
    object UpdateActions: TAction
      Tag = 9999
      Category = 'Before'
      Caption = #917#957#951#956#941#961'.'#917#957#949#961#947#949#953#974#957' '#934#959#961#956#940#962
      OnExecute = UpdateActionsExecute
    end
    object actKart0: TAction
      Caption = #922#945#961#964#941#955#955#945
    end
    object actDispCurr0: TAction
      Caption = #932#961#941#967#959#965#963#945' '#920#941#963#951
    end
    object actEquipment0: TAction
      Caption = #917#958#959#960#955#953#963#956#972#962
    end
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 320
    Top = 216
  end
end
