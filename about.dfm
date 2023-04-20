object AboutBox: TAboutBox
  Left = 445
  Top = 127
  AutoSize = True
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'About'
  ClientHeight = 197
  ClientWidth = 341
  Color = clBtnFace
  Constraints.MinHeight = 222
  Constraints.MinWidth = 349
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  DesignSize = (
    341
    197)
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 341
    Height = 161
    AutoSize = True
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 341
    Height = 161
    BevelOuter = bvLowered
    Constraints.MaxHeight = 161
    Constraints.MaxWidth = 341
    Constraints.MinHeight = 161
    Constraints.MinWidth = 341
    TabOrder = 0
    object ProgramIcon: TImage
      Left = 304
      Top = 0
      Width = 32
      Height = 32
      Center = True
      Picture.Data = {
        055449636F6E0000010001002020100000000000E80200001600000028000000
        2000000040000000010004000000000080020000000000000000000000000000
        0000000000000000000080000080000000808000800000008000800080800000
        C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        0000000008888888888888888888888888888888000000000000000000000000
        000000080F8888888888888888888888888888080F7F7F7F7F7F7F7F7F7F7F7F
        7F7F78080FF7F7F788888888888888F7F7F7F8080F7F7F70000000000000087F
        7F7F78080FF7F7F0FFFFFFFFFFFF08F7F7F7F8080F7F7F70FFFFFFFFFFFF087F
        7F7F78080FF7F000FFFFFFFFFFFF08F7F7F7F8080F7F70F0FFFFFFFFFFFF087F
        7F7F78080FF7F0F0FFFFFFFFFFFF08F7F7F7F8080F7000F0CCCCCC070707087F
        7F7F78080FF0F0F000000000000007F7F7F7F8080F70F0FFFFFFFFFFFF087F7F
        7F7F78080FF0F0CCCCCC07070708F7F7F7F7F8080F70F00000000000000F7F7F
        7F7F78080FF0FFFFFFFFFFFF08F7F7F7F7F7F8080F70CCCCCC070707087F7F7F
        7F7F78080FF000000000000007F7F7F7F7F7F8080FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF08000000000000000000000000000000080F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F080F0007F000F70007F7F7F7F7F7F7F7080FFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF08000000000000000000000000000000080CCCCCCCCCCCCCCCCCCCCCCC
        0707070800000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFFFFFFFFFFFFFF8000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFF
        FFFFFFFF}
      Stretch = True
      IsControl = True
    end
    object ProductName: TLabel
      Left = 8
      Top = 8
      Width = 68
      Height = 13
      Caption = 'Product Name'
      IsControl = True
    end
    object Version: TLabel
      Left = 8
      Top = 32
      Width = 35
      Height = 13
      Caption = 'Version'
      IsControl = True
    end
    object Copyright: TLabel
      Left = 8
      Top = 56
      Width = 44
      Height = 13
      Caption = 'Copyright'
      IsControl = True
    end
    object Comments: TLabel
      Left = 8
      Top = 80
      Width = 49
      Height = 13
      Caption = 'Comments'
      WordWrap = True
      IsControl = True
    end
    object LProductName: TLabel
      Left = 96
      Top = 8
      Width = 65
      Height = 13
      Caption = 'ProductName'
    end
    object LVersion: TLabel
      Left = 96
      Top = 32
      Width = 35
      Height = 13
      Caption = 'Version'
    end
    object LCopyright: TLabel
      Left = 96
      Top = 56
      Width = 49
      Height = 13
      Caption = 'CopyRight'
    end
    object LComments: TLabel
      Left = 96
      Top = 80
      Width = 49
      Height = 13
      Caption = 'Comments'
    end
    object Label5: TLabel
      Left = 96
      Top = 104
      Width = 3
      Height = 13
    end
    object LCompanyName: TLabel
      Left = 96
      Top = 104
      Width = 72
      Height = 13
      Caption = 'CompanyName'
    end
    object CompanyName: TLabel
      Left = 8
      Top = 104
      Width = 72
      Height = 13
      Caption = 'CompanyName'
      WordWrap = True
      IsControl = True
    end
    object LCompileDate: TLabel
      Left = 96
      Top = 128
      Width = 86
      Height = 13
      Caption = 'Compile DateTime'
    end
    object Label1: TLabel
      Left = 8
      Top = 128
      Width = 68
      Height = 13
      AutoSize = False
      Caption = 'Compile DT'
      WordWrap = True
      IsControl = True
    end
  end
  object OKButton: TButton
    Left = 144
    Top = 164
    Width = 65
    Height = 33
    Anchors = []
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnKeyDown = OKButtonKeyDown
    IsControl = True
  end
  object EPInfoExe1: TEPInfoExe
    LangId = '040804E5'
    Left = 224
    Top = 48
  end
end
