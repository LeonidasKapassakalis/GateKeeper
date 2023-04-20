inherited frmAddWorkersBatch: TfrmAddWorkersBatch
  Caption = 'Batch '#922#945#964#945#967#969#961#951#963#951' '#917#961#947#945#950#959#956#941#957#959#965' '#917#961#947#959#955#940#946#959#965
  ClientHeight = 634
  ClientWidth = 895
  ExplicitWidth = 903
  ExplicitHeight = 661
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    Top = 615
    Width = 895
    ExplicitTop = 615
    ExplicitWidth = 895
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 895
    Height = 49
    Align = alTop
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 185
      Height = 47
      Align = alLeft
      TabOrder = 0
      ExplicitLeft = 36
      ExplicitTop = 60
      ExplicitHeight = 41
      object Button1: TButton
        Left = 1
        Top = 1
        Width = 183
        Height = 45
        Action = actLoadExcel
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 4
        ExplicitTop = 12
        ExplicitWidth = 181
        ExplicitHeight = 25
      end
    end
    object Panel5: TPanel
      Left = 186
      Top = 1
      Width = 523
      Height = 47
      Align = alClient
      TabOrder = 1
      ExplicitLeft = 288
      ExplicitTop = 48
      ExplicitWidth = 185
      ExplicitHeight = 41
      object Button2: TButton
        Left = 1
        Top = 1
        Width = 521
        Height = 45
        Action = actCheckVatExist
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 4
        ExplicitTop = 12
        ExplicitWidth = 181
        ExplicitHeight = 25
      end
    end
    object Panel6: TPanel
      Left = 709
      Top = 1
      Width = 185
      Height = 47
      Align = alRight
      TabOrder = 2
      ExplicitLeft = 636
      ExplicitTop = 48
      ExplicitHeight = 41
      object Button3: TButton
        Left = 1
        Top = 1
        Width = 183
        Height = 45
        Action = actUpdate2DB
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 4
        ExplicitTop = 12
        ExplicitWidth = 181
        ExplicitHeight = 25
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 895
    Height = 566
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 2
    ExplicitTop = 145
    ExplicitHeight = 470
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 893
      Height = 564
      Align = alClient
      AutoSize = True
      Caption = 'Panel1'
      TabOrder = 0
      VerticalAlignment = taAlignBottom
      ExplicitHeight = 468
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 891
        Height = 562
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = True
        ExplicitHeight = 466
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          OnCustomDrawCell = cxGridDBTableView1CustomDrawCell
          DataController.DataSource = DataSource3
          DataController.DetailKeyFieldNames = 'Worker_Id'
          DataController.Filter.AutoDataSetFilter = True
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = 'Count ####0'
              Kind = skCount
              FieldName = 'ACARD.ACARDID'
              DisplayText = #928#955#942#952#959#962
              Sorted = True
              VisibleForCustomization = False
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'Count ##0,000'
              Kind = skCount
              FieldName = 'DateIn'
              DisplayText = #928#955#942#952#959#962
              Sorted = True
            end>
          DataController.Summary.SummaryGroups = <>
          DateTimeHandling.Grouping = dtgByDate
          Filtering.ColumnFilteredItemsList = True
          FilterRow.SeparatorWidth = 15
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          FilterRow.ApplyInputDelay = 100
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnFiltering = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.NoDataToDisplayInfoText = #916#949#957' '#965#960#940#961#967#949#953' '#949#961#947#945#950#972#956#949#957#959#962' '#956#949' '#943#948#953#959' '#931#964#959#953#967#949#943#945
          OptionsView.Footer = True
          OptionsView.GroupFooterMultiSummaries = True
          object cxGridDBTableView1Contractor_Id: TcxGridDBColumn
            DataBinding.FieldName = 'Contractor_Id'
          end
          object cxGridDBTableView1ContractorFound: TcxGridDBColumn
            DataBinding.FieldName = 'ContractorFound'
          end
          object cxGridDBTableView1WorkerADTFound: TcxGridDBColumn
            DataBinding.FieldName = 'WorkerADTFound'
          end
          object cxGridDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
          end
          object cxGridDBTableView1DBColumn: TcxGridDBColumn
            DataBinding.FieldName = #913'/'#913
          end
          object cxGridDBTableView1DBColumn1: TcxGridDBColumn
            DataBinding.FieldName = #922#913#932#913#931#932#913#931#919
          end
          object cxGridDBTableView1DBColumn2: TcxGridDBColumn
            DataBinding.FieldName = #919#924#917#929#927#924#919#925#921#913' '#917#915#922#929#921#931#919#931
          end
          object cxGridDBTableView1DBColumn3: TcxGridDBColumn
            DataBinding.FieldName = #917#928#937#925#933#924#921#913' '#917#929#915#927#923#913#914#927#933
            GroupIndex = 0
          end
          object cxGridDBTableView1_: TcxGridDBColumn
            DataBinding.FieldName = #913#934#924'_ '#917#929#915#927#923#913#914#927#933
          end
          object cxGridDBTableView1DBColumn4: TcxGridDBColumn
            DataBinding.FieldName = #913#929' '#932#913#933#932#927#932#919#932#913#931
          end
          object cxGridDBTableView1DBColumn5: TcxGridDBColumn
            DataBinding.FieldName = #917#928#937#925#933#924#927
          end
          object cxGridDBTableView1DBColumn6: TcxGridDBColumn
            DataBinding.FieldName = #927#925#927#924#913
          end
          object cxGridDBTableView1Field9: TcxGridDBColumn
            DataBinding.FieldName = 'Field9'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = fnHelpCompanyVAT
    Left = 448
    Top = 192
  end
  object fnHelpCompanyVAT: TADOStoredProc
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'CheckContractorWithVAT;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@PVAT'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = '123456789'
      end>
    Prepared = True
    Left = 356
    Top = 200
    object fnHelpCompanyVATId: TIntegerField
      FieldName = 'Id'
    end
  end
  object fnHelpWorkerADT: TADOStoredProc
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'CheckWorkerWithADT;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@PADT'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = '111'
      end
      item
        Name = '@PConId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 356
    Top = 260
    object fnHelpWorkerADTName: TWideStringField
      FieldName = 'Name'
      Size = 30
    end
    object fnHelpWorkerADTSurname: TWideStringField
      FieldName = 'Surname'
      Size = 30
    end
    object fnHelpWorkerADTCompany: TWideStringField
      FieldName = 'Company'
      Size = 100
    end
    object fnHelpWorkerADTADT: TWideStringField
      FieldName = 'ADT'
      FixedChar = True
      Size = 10
    end
    object fnHelpWorkerADTContractor_Id: TIntegerField
      FieldName = 'Contractor_Id'
    end
    object fnHelpWorkerADTWorker_Id: TIntegerField
      FieldName = 'Worker_Id'
    end
  end
  object DataSource2: TDataSource
    DataSet = fnHelpWorkerADT
    Left = 448
    Top = 252
  end
  object ActionList1: TActionList
    Left = 744
    Top = 180
    object actLoadExcel: TAction
      Caption = 'Load Excel'
      OnExecute = actLoadExcelExecute
    end
    object actCheckVatExist: TAction
      Caption = 'Check'
      OnExecute = actCheckVatExistExecute
    end
    object actUpdate2DB: TAction
      Caption = 'Update to Database'
      OnExecute = actUpdate2DBExecute
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Xls|*.xls|Xlsx|*.xlsx'
    Left = 816
    Top = 168
  end
  object Cds1: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = #913'/'#913
        DataType = ftFloat
      end
      item
        Name = #922#913#932#913#931#932#913#931#919
        DataType = ftWideString
        Size = 255
      end
      item
        Name = #919#924#917#929#927#924#919#925#921#913' '#917#915#922#929#921#931#919#931
        DataType = ftDateTime
      end
      item
        Name = #917#928#937#925#933#924#921#913' '#917#929#915#927#923#913#914#927#933
        DataType = ftWideString
        Size = 255
      end
      item
        Name = #913#934#924'_ '#917#929#915#927#923#913#914#927#933
        DataType = ftFloat
      end
      item
        Name = #913#929' '#932#913#933#932#927#932#919#932#913#931
        DataType = ftFloat
      end
      item
        Name = #917#928#937#925#933#924#927
        DataType = ftWideString
        Size = 255
      end
      item
        Name = #927#925#927#924#913
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Field9'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'Contractor_Id'
        DataType = ftInteger
      end
      item
        Name = 'ContractorFound'
        DataType = ftBoolean
      end
      item
        Name = 'WorkerADTFound'
        DataType = ftBoolean
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 540
    Top = 192
    Data = {
      2E0200009619E0BD01000000180000000D0000000000030000002E0202494404
      0001000200010007535542545950450200490008004175746F696E630005CE91
      2FCE91080004000000000012CE9ACE91CEA4CE91CEA3CEA4CE91CEA3CE970200
      4A000000010005574944544802000200FE011FCE97CE9CCE95CEA1CE9FCE9CCE
      97CE9DCE99CE9120CE95CE93CE9ACEA1CE990800080000000100094649454C44
      4E414D4526000980CE97CE9CCE95CEA1CE9FCE9CCE97CE9DCE99CE9120CE95CE
      93CE9ACEA1CE99CEA3CE97CEA3001FCE95CEA0CEA9CE9DCEA5CE9CCE99CE9120
      CE95CEA1CE93CE9FCE9BCE91CE9202004A000000020005574944544802000200
      FE01094649454C444E414D4524000980CE95CEA0CEA9CE9DCEA5CE9CCE99CE91
      20CE95CEA1CE93CE9FCE9BCE91CE92CE9FCEA5001ACE91CEA6CE9C5F20CE95CE
      A1CE93CE9FCE9BCE91CE92CE9FCEA5080004000000000019CE91CEA120CEA4CE
      91CEA5CEA4CE9FCEA4CE97CEA4CE91CEA308000400000000000ECE95CEA0CEA9
      CE9DCEA5CE9CCE9F02004A000000010005574944544802000200FE010ACE9FCE
      9DCE9FCE9CCE9102004A000000010005574944544802000200FE01064669656C
      643902004A000000010005574944544802000200FE010D436F6E74726163746F
      725F496404000100000000000F436F6E74726163746F72466F756E6402000300
      000000000E576F726B6572414454466F756E64020003000000000001000C4155
      544F494E4356414C55450400010001000000}
    object Cds1ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object Cds1ΑΑ: TFloatField
      FieldName = #913'/'#913
    end
    object Cds1ΚΑΤΑΣΤΑΣΗ: TWideStringField
      FieldName = #922#913#932#913#931#932#913#931#919
      Size = 255
    end
    object Cds1ΗΜΕΡΟΜΗΝΙΑΕΓΚΡΙΣΗΣ: TDateTimeField
      FieldName = #919#924#917#929#927#924#919#925#921#913' '#917#915#922#929#921#931#919#931
    end
    object Cds1ΕΠΩΝΥΜΙΑΕΡΓΟΛΑΒΟΥ: TWideStringField
      FieldName = #917#928#937#925#933#924#921#913' '#917#929#915#927#923#913#914#927#933
      Size = 255
    end
    object Cds1ΑΦΜ_ΕΡΓΟΛΑΒΟΥ: TFloatField
      FieldName = #913#934#924'_ '#917#929#915#927#923#913#914#927#933
    end
    object Cds1ΑΡΤΑΥΤΟΤΗΤΑΣ: TFloatField
      FieldName = #913#929' '#932#913#933#932#927#932#919#932#913#931
    end
    object Cds1ΕΠΩΝΥΜΟ: TWideStringField
      FieldName = #917#928#937#925#933#924#927
      Size = 255
    end
    object Cds1ΟΝΟΜΑ: TWideStringField
      FieldName = #927#925#927#924#913
      Size = 255
    end
    object Cds1Field9: TWideStringField
      FieldName = 'Field9'
      Size = 255
    end
    object Cds1Contractor_Id: TIntegerField
      FieldName = 'Contractor_Id'
    end
    object Cds1ContractorFound: TBooleanField
      FieldName = 'ContractorFound'
    end
    object Cds1WorkerADTFound: TBooleanField
      FieldName = 'WorkerADTFound'
    end
  end
  object ADOTable1: TADOTable
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Documents and Se' +
      'ttings\Leonidas\Desktop\Database1.mdb;Persist Security Info=Fals' +
      'e'
    CursorType = ctStatic
    TableName = #923#921#931#932#913' '#917#915#922#917#922#929#921#924#917#925#937#925
    Left = 816
    Top = 264
    object ADOTable1ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOTable1ΑΑ: TFloatField
      FieldName = #913'/'#913
    end
    object ADOTable1ΚΑΤΑΣΤΑΣΗ: TWideStringField
      FieldName = #922#913#932#913#931#932#913#931#919
      Size = 255
    end
    object ADOTable1ΗΜΕΡΟΜΗΝΙΑΕΓΚΡΙΣΗΣ: TDateTimeField
      FieldName = #919#924#917#929#927#924#919#925#921#913' '#917#915#922#929#921#931#919#931
    end
    object ADOTable1ΕΠΩΝΥΜΙΑΕΡΓΟΛΑΒΟΥ: TWideStringField
      FieldName = #917#928#937#925#933#924#921#913' '#917#929#915#927#923#913#914#927#933
      Size = 255
    end
    object ADOTable1ΑΦΜ_ΕΡΓΟΛΑΒΟΥ: TFloatField
      FieldName = #913#934#924'_ '#917#929#915#927#923#913#914#927#933
    end
    object ADOTable1ΑΡΤΑΥΤΟΤΗΤΑΣ: TFloatField
      FieldName = #913#929' '#932#913#933#932#927#932#919#932#913#931
    end
    object ADOTable1ΕΠΩΝΥΜΟ: TWideStringField
      FieldName = #917#928#937#925#933#924#927
      Size = 255
    end
    object ADOTable1ΟΝΟΜΑ: TWideStringField
      FieldName = #927#925#927#924#913
      Size = 255
    end
    object ADOTable1Field9: TWideStringField
      FieldName = 'Field9'
      Size = 255
    end
  end
  object DataSource3: TDataSource
    DataSet = Cds1
    Left = 544
    Top = 252
  end
end
