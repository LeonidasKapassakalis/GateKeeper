object frmChangePass: TfrmChangePass
  Left = 422
  Top = 191
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #913#955#955#945#947#942' Password'
  ClientHeight = 108
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 84
    Height = 13
    Caption = #928#945#955#945#953#972' Password'
  end
  object Label2: TLabel
    Left = 16
    Top = 40
    Width = 68
    Height = 13
    Caption = #925#941#959' Password'
  end
  object Label3: TLabel
    Left = 16
    Top = 64
    Width = 114
    Height = 13
    Caption = #917#960#945#957#940#955'.'#925#941#959#965' Password'
  end
  object Edit1: TEdit
    Left = 144
    Top = 8
    Width = 121
    Height = 21
    PasswordChar = '#'
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 144
    Top = 32
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit3: TEdit
    Left = 144
    Top = 56
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 144
    Top = 80
    Width = 75
    Height = 25
    Caption = #913#955#955#945#947#942
    TabOrder = 3
    OnClick = Button1Click
  end
  object Query1: TADOQuery
    Connection = DMMain.ADOConnection
    Parameters = <
      item
        Name = 'NFPass_Pass'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'PFPass_Pass'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'PFPass_Login'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'Update stFPass set '
      'Passwd = :NFPass_Pass '
      'Where Passwd = :PFPass_Pass '
      'AND     Login = :PFPass_Login '
      ' ')
    Left = 304
    Top = 8
  end
  object Query2: TADOQuery
    Connection = DMMain.ADOConnection
    Parameters = <
      item
        Name = 'PFPass_Pass'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'PFPass_Login'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      'From stFPass '
      'Where Passwd = :PFPass_Pass '
      'AND     Login = :PFPass_Login ')
    Left = 304
    Top = 48
  end
end
