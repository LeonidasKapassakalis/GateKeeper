object frmSearchDisplay: TfrmSearchDisplay
  Left = 322
  Top = 90
  Caption = 'frmSearchDisplay'
  ClientHeight = 559
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grid: TDBGrid
    Left = 0
    Top = 0
    Width = 569
    Height = 518
    Align = alClient
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect]
    PopupMenu = popFilter
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnColumnMoved = GridColumnMoved
    OnDblClick = GridDblClick
    OnTitleClick = GridTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'address'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telephone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fax'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AFM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOY'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mech'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'deigmata'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'area'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'class'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'occupation'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tbenz'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sfragides'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cif'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cifWPrice'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cifBPrice'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'representative'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'natTemp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sap'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'salesType'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'payMethod'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'aactive'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'city'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zip'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 518
    Width = 569
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 360
      Top = 8
      Width = 75
      Height = 25
      Caption = #917#960#953#955#959#947#942
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 456
      Top = 8
      Width = 75
      Height = 25
      Caption = #913#954#973#961#969#963#951
      ModalResult = 2
      TabOrder = 1
    end
  end
  object Query1: TQuery
    DatabaseName = 'AvinSF'
    SQL.Strings = (
      
        'SELECT  id, name, address, telephone, fax, AFM, DOY, mech, deigm' +
        'ata, area, class, occupation, tbenz, sfragides, cif, cifWPrice, ' +
        'cifBPrice, representative, natTemp, sap, salesType, payMethod, a' +
        'active, city, zip'
      'FROM pelates Pelates'
      'WHERE ID > 0'
      'ORDER BY name'
      ''
      '')
    Left = 24
    Top = 72
    object Query1id: TIntegerField
      DisplayLabel = #922#969#948#953#954#972#962
      FieldName = 'id'
      Origin = 'AVINSF.pelates.id'
    end
    object Query1name: TStringField
      DisplayLabel = #917#960#969#957#965#956#943#945
      FieldName = 'name'
      Origin = 'AVINSF.pelates.name'
      Size = 100
    end
    object Query1address: TStringField
      DisplayLabel = #916#953#949#973#952#965#957#963#951
      FieldName = 'address'
      Origin = 'AVINSF.pelates.address'
      Size = 50
    end
    object Query1telephone: TStringField
      DisplayLabel = #932#951#955'.'
      FieldName = 'telephone'
      Origin = 'AVINSF.pelates.telephone'
      Size = 50
    end
    object Query1fax: TStringField
      DisplayLabel = 'FAX'
      FieldName = 'fax'
      Origin = 'AVINSF.pelates.fax'
      Size = 50
    end
    object Query1AFM: TStringField
      DisplayLabel = #913#934#924
      FieldName = 'AFM'
      Origin = 'AVINSF.pelates.AFM'
      Size = 15
    end
    object Query1DOY: TStringField
      DisplayLabel = #916#927#933
      FieldName = 'DOY'
      Origin = 'AVINSF.pelates.DOY'
      Size = 30
    end
    object Query1mech: TStringField
      FieldName = 'mech'
      Origin = 'AVINSF.pelates.mech'
      Size = 5
    end
    object Query1deigmata: TBooleanField
      DisplayLabel = #916#949#943#947#956#945#964#945
      FieldName = 'deigmata'
      Origin = 'AVINSF.pelates.deigmata'
      DisplayValues = #925#945#953';'#908#967#953
    end
    object Query1area: TIntegerField
      DisplayLabel = #928#949#961#953#959#967#942
      FieldName = 'area'
      Origin = 'AVINSF.pelates.area'
    end
    object Query1class: TIntegerField
      FieldName = 'class'
      Origin = 'AVINSF.pelates.class'
    end
    object Query1occupation: TStringField
      FieldName = 'occupation'
      Origin = 'AVINSF.pelates.occupation'
      Size = 40
    end
    object Query1tbenz: TBooleanField
      DisplayLabel = #932#945#956'.'#914#949#957#950'.'
      FieldName = 'tbenz'
      Origin = 'AVINSF.pelates.tbenz'
      DisplayValues = #925#945#953';'#908#967#953
    end
    object Query1sfragides: TBooleanField
      DisplayLabel = #931#966#961#945#947#943#948#949#962
      FieldName = 'sfragides'
      Origin = 'AVINSF.pelates.sfragides'
      DisplayValues = #925#945#953';'#908#967#953
    end
    object Query1cif: TBooleanField
      DisplayLabel = 'CIF'
      FieldName = 'cif'
      Origin = 'AVINSF.pelates.cif'
      DisplayValues = #925#945#953';'#908#967#953
    end
    object Query1cifWPrice: TFloatField
      FieldName = 'cifWPrice'
      Origin = 'AVINSF.pelates.cifWPrice'
    end
    object Query1cifBPrice: TFloatField
      FieldName = 'cifBPrice'
      Origin = 'AVINSF.pelates.cifBPrice'
    end
    object Query1representative: TStringField
      FieldName = 'representative'
      Origin = 'AVINSF.pelates.representative'
      Size = 50
    end
    object Query1natTemp: TBooleanField
      DisplayLabel = #934#965#963'.'#920#949#961#956'.'
      FieldName = 'natTemp'
      Origin = 'AVINSF.pelates.natTemp'
      DisplayValues = #925#945#953';'#908#967#953
    end
    object Query1sap: TStringField
      FieldName = 'sap'
      Origin = 'AVINSF.pelates.sap'
      Size = 18
    end
    object Query1salesType: TIntegerField
      FieldName = 'salesType'
      Origin = 'AVINSF.pelates.salesType'
    end
    object Query1payMethod: TIntegerField
      FieldName = 'payMethod'
      Origin = 'AVINSF.pelates.payMethod'
    end
    object Query1aactive: TBooleanField
      DisplayLabel = #917#957#949#961#947#972
      FieldName = 'aactive'
      Origin = 'AVINSF.pelates.aactive'
      DisplayValues = #925#945#953';'#908#967#953
    end
    object Query1city: TStringField
      FieldName = 'city'
      Origin = 'AVINSF.pelates.city'
      Size = 35
    end
    object Query1zip: TStringField
      DisplayLabel = #932'.'#922'.'
      FieldName = 'zip'
      Origin = 'AVINSF.pelates.zip'
      Size = 5
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 80
    Top = 72
  end
  object popFilter: TPopupMenu
    Left = 116
    Top = 267
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
    end
    object MC1: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #917#973#961#949#963#951
      OnClick = N2Click
    end
    object MC2: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #917#954#964#973#960#969#963#951' '#928#943#957#945#954#945
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
      end
      object IndDisp: TMenuItem
        Caption = #928#961#959#946#959#955#942
      end
      object PediaIdx: TMenuItem
        Caption = #928#949#948#943#945
        object PediaIdxActive: TMenuItem
          Caption = #917#957#949#961#947#959#960#959#943#951#963#951
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
  object Query2: TQuery
    DatabaseName = 'AvinSF'
    SQL.Strings = (
      'SELECT Count( id) as CID'
      'FROM pelates Pelates'
      'WHERE ID > 0'
      ''
      '')
    Left = 40
    Top = 152
    object Query2CID: TIntegerField
      FieldName = 'CID'
      Origin = 'AVINSF.pelates.id'
    end
  end
end
