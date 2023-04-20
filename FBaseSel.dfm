object frmBaseSel: TfrmBaseSel
  Left = 415
  Top = 149
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'frmBaseSel'
  ClientHeight = 403
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 348
    Width = 391
    Height = 55
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      391
      55)
    object Button1: TButton
      Left = 32
      Top = 10
      Width = 105
      Height = 33
      Action = cmdCancel
      Anchors = [akLeft, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Button3: TButton
      Left = 154
      Top = 24
      Width = 98
      Height = 19
      Action = cmdInitialize
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 1
    end
    object Button2: TButton
      Left = 276
      Top = 10
      Width = 97
      Height = 33
      Action = cmdExecute
      Anchors = [akLeft, akTop, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 1
      ParentFont = False
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 391
    Height = 348
    Align = alClient
    TabOrder = 1
    object Label12: TLabel
      Left = 136
      Top = 16
      Width = 42
      Height = 20
      Caption = #913#960#972
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 296
      Top = 16
      Width = 42
      Height = 20
      Caption = #904#969#962
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
    end
  end
  object MainMenu1: TMainMenu
    Left = 88
    Top = 72
    object N1: TMenuItem
      Action = cmdExecute
    end
    object N2: TMenuItem
      Action = cmdCancel
    end
    object N3: TMenuItem
      Action = cmdInitialize
    end
    object cmdVariant1: TMenuItem
      Action = cmdVariant
      object cmdNewVariant1: TMenuItem
        Action = cmdNewVariant
      end
      object cmdGetVariant1: TMenuItem
        Action = cmdGetVariant
      end
    end
  end
  object ActionList1: TActionList
    Left = 176
    Top = 72
    object cmdCancel: TAction
      Caption = #913#954#973#961#969#963#951
      OnExecute = cmdCancelExecute
    end
    object cmdExecute: TAction
      Caption = #917#954#964#941#955#949#963#951
      OnExecute = cmdExecuteExecute
    end
    object cmdInitialize: TAction
      Caption = #925#941#945' '#922#961#953#964#942#961#953#945
      OnExecute = cmdInitializeExecute
    end
    object cmdGetVariant: TAction
      Caption = #917#960#953#955#959#947#942' Variant'
      Hint = #917#960#953#955#959#947#942' Variant'
      OnExecute = cmdGetVariantExecute
    end
    object cmdNewVariant: TAction
      Caption = #925#941#945' Variant'
      Hint = #925#941#945' Variant'
      OnExecute = cmdNewVariantExecute
    end
    object cmdVariant: TAction
      Caption = #924#949#964#945#946#955#951#964#941#962
      Hint = #924#949#964#945#946#955#951#964#941#962
      OnExecute = cmdVariantExecute
    end
  end
end
