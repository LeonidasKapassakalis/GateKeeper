inherited frmACard: TfrmACard
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = #922#940#961#964#949#962
  ClientHeight = 623
  ClientWidth = 891
  Font.Height = -10
  OldCreateOrder = True
  Scaled = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 899
  ExplicitHeight = 650
  PixelsPerInch = 96
  TextHeight = 13
  object ActionToolBar1: TActionToolBar [0]
    Left = 0
    Top = 0
    Width = 891
    Height = 23
    ActionManager = ActionManager1
    Caption = 'ActionToolBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Spacing = 0
  end
  object Panel1: TPanel [1]
    AlignWithMargins = True
    Left = 3
    Top = 26
    Width = 885
    Height = 594
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 1
    object dxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 883
      Height = 592
      Align = alClient
      Anchors = []
      TabOrder = 0
      Properties.ActivePage = tabBrowser
      Properties.CustomButtons.Buttons = <>
      Properties.HideTabs = True
      ClientRectBottom = 592
      ClientRectRight = 883
      ClientRectTop = 0
      object tabBrowser: TcxTabSheet
        AllowCloseButton = False
        Caption = '[Browser]'
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dxBevel1: TdxBevel
          Left = 728
          Top = 328
          Width = 50
          Height = 50
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 883
          Height = 592
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = True
          object cxGrid1DBTableView1: TcxGridDBTableView
            PopupMenu = popFilter
            OnDblClick = cxGrid1DBTableView1DblClick
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
            DataController.DetailKeyFieldNames = 'ACARD.ACARDID'
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
                FieldName = 'AcardCodeFull000'
                DisplayText = #928#955#942#952#959#962
                Sorted = True
              end>
            DataController.Summary.SummaryGroups = <>
            Filtering.ColumnFilteredItemsList = True
            FilterRow.SeparatorWidth = 15
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            FilterRow.ApplyInputDelay = 100
            OptionsBehavior.AlwaysShowEditor = True
            OptionsBehavior.ImmediateEditor = False
            OptionsCustomize.ColumnHiding = True
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.Footer = True
            OptionsView.GroupFooterMultiSummaries = True
            OptionsView.GroupFooters = gfAlwaysVisible
            object cxGrid1DBTableView1AcardId: TcxGridDBColumn
              Caption = 'Id'
              DataBinding.FieldName = 'AcardId'
              Visible = False
            end
            object cxGrid1DBTableView1CUSTOMERName: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.Name'
              Width = 150
            end
            object cxGrid1DBTableView1AcardCodeFull: TcxGridDBColumn
              DataBinding.FieldName = 'AcardCodeFull'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1AcardCodeFull000: TcxGridDBColumn
              DataBinding.FieldName = 'AcardCodeFull000'
              Width = 120
            end
            object cxGrid1DBTableView1REGNO: TcxGridDBColumn
              DataBinding.FieldName = 'REGNO'
              Width = 80
            end
            object cxGrid1DBTableView1ACARDPENDING: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.PENDING'
            end
            object cxGrid1DBTableView1DAYAMOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'DAYAMOUNT'
            end
            object cxGrid1DBTableView1MONTHAMOUNT: TcxGridDBColumn
              DataBinding.FieldName = 'MONTHAMOUNT'
            end
            object cxGrid1DBTableView1ACARDSTARTDATE: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.STARTDATE'
              Width = 80
            end
            object cxGrid1DBTableView1ACARDISSUEDATE: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.ISSUEDATE'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDCREATEBOOLEAN: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.CREATEBOOLEAN'
            end
            object cxGrid1DBTableView1ACARDEXPIREDATE: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.EXPIREDATE'
              Width = 80
            end
            object cxGrid1DBTableView1ACARDBLACKLISTBOOLEAN: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.BLACKLISTBOOLEAN'
            end
            object cxGrid1DBTableView1ACARDBLACKLISTDATE: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.BLACKLISTDATE'
              Width = 80
            end
            object cxGrid1DBTableView1ISACTIVE: TcxGridDBColumn
              DataBinding.FieldName = 'ISACTIVE'
            end
            object cxGrid1DBTableView1VTypeDescr: TcxGridDBColumn
              DataBinding.FieldName = 'VType.Descr'
            end
            object cxGrid1DBTableView1LEmp: TcxGridDBColumn
              DataBinding.FieldName = 'LEmp'
            end
            object cxGrid1DBTableView1ACARDACARDID: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.ACARDID'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDACARDCODE: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.ACARDCODE'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDCUSTOMERID0: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.CUSTOMERID0'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDMETERBOOLEAN: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.METERBOOLEAN'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDPINBOOLEAN: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.PINBOOLEAN'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDINSDT: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.INSDT'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDUPDDT: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.UPDDT'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDINSUSR: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.INSUSR'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDUPDUSR: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.UPDUSR'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDVTYPEID: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.VTYPEID'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDBLACKLISTUSR: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.BLACKLISTUSR'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDBLACKLISTNOTES: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.BLACKLISTNOTES'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDIGROUPID1: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.IGROUPID1'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDIGROUPID2: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.IGROUPID2'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDIGROUPID3: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.IGROUPID3'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDIGROUPID4: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.IGROUPID4'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDHOLDER: TcxGridDBColumn
              DataBinding.FieldName = 'ACARDHOLDER'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1EXPIREPHDATE: TcxGridDBColumn
              DataBinding.FieldName = 'EXPIREPHDATE'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1EXPIRELODATE: TcxGridDBColumn
              DataBinding.FieldName = 'EXPIRELODATE'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDIGROUPID5: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.IGROUPID5'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1EMPLOYEESID: TcxGridDBColumn
              DataBinding.FieldName = 'EMPLOYEESID'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1NEWCARDBOOLEAN: TcxGridDBColumn
              DataBinding.FieldName = 'NEWCARDBOOLEAN'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1NEWCARDID: TcxGridDBColumn
              DataBinding.FieldName = 'NEWCARDID'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1CARDHASEMPNAME: TcxGridDBColumn
              DataBinding.FieldName = 'CARDHASEMPNAME'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDCODENUM: TcxGridDBColumn
              DataBinding.FieldName = 'ACARDCODENUM'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1INACTIVEDATE: TcxGridDBColumn
              DataBinding.FieldName = 'INACTIVEDATE'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1INACTIVEUSR: TcxGridDBColumn
              DataBinding.FieldName = 'INACTIVEUSR'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1INACTIVENOTES: TcxGridDBColumn
              DataBinding.FieldName = 'INACTIVENOTES'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDIGROUPID6: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.IGROUPID6'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDIGROUPID7: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.IGROUPID7'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDIGROUPID8: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.IGROUPID8'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDIGROUPID9: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.IGROUPID9'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1ACARDIGROUPID10: TcxGridDBColumn
              DataBinding.FieldName = 'ACARD.IGROUPID10'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1COSTCENTERID: TcxGridDBColumn
              DataBinding.FieldName = 'COSTCENTERID'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1CClassDescr: TcxGridDBColumn
              DataBinding.FieldName = 'CClass.Descr'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1CUSTOMERDescr: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.Descr'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1CGroupDescr: TcxGridDBColumn
              DataBinding.FieldName = 'CGroup.Descr'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1AcardCUSTOMERId: TcxGridDBColumn
              DataBinding.FieldName = 'Acard.CUSTOMERId'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1CUSTOMERStreet: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.Street'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1CUSTOMERZip: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.Zip'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1CUSTOMERCity: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.City'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1CUSTOMERSAPCODE: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.SAPCODE'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1CUSTOMERHASDETAILEMP: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.HASDETAILEMP'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1CUSTOMERCUSTOMERID: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.CUSTOMERID'
              Visible = False
              VisibleForCustomization = False
            end
            object cxGrid1DBTableView1CUSTOMERISTEST: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTOMER.ISTEST'
              Visible = False
              VisibleForCustomization = False
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object tabData: TcxTabSheet
        AlignWithMargins = True
        Caption = '[Data]'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dxPageControl2: TcxPageControl
          Left = 0
          Top = 0
          Width = 877
          Height = 586
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = tabFirstPage
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 586
          ClientRectRight = 877
          ClientRectTop = 24
          object tabFirstPage: TcxTabSheet
            Caption = #931#964#959#953#967#949#943#945
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label11: TLabel
              Left = 13
              Top = -6
              Width = 74
              Height = 24
              Caption = 'Label11'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label1: TLabel
              Left = 24
              Top = 80
              Width = 40
              Height = 13
              Caption = #922#969#948#953#954#972#962
            end
            object Label2: TLabel
              Left = 24
              Top = 104
              Width = 43
              Height = 13
              Caption = #928#949#955#940#964#951#962
            end
            object Label3: TLabel
              Left = 24
              Top = 152
              Width = 104
              Height = 13
              Caption = #919#956'/'#957#943#945' '#954#945#964#945#967#974#961#953#963#951#962
            end
            object Label4: TLabel
              Left = 24
              Top = 176
              Width = 79
              Height = 13
              Caption = #919#956'/'#957#943#945' '#941#957#945#961#958#951#962
            end
            object Label5: TLabel
              Left = 24
              Top = 200
              Width = 65
              Height = 13
              Caption = #919#956'/'#957#943#945' '#955#942#958#951#962
            end
            object Label6: TLabel
              Left = 20
              Top = 224
              Width = 82
              Height = 13
              Caption = #932#973#960#959#962' '#959#967#942#956#945#964#959#962
            end
            object Label17: TLabel
              Left = 24
              Top = 24
              Width = 106
              Height = 13
              Caption = #913#961#953#952#956#972#962' '#954#965#954#955#959#966#959#961#943#945#962
            end
            object Label18: TLabel
              Left = 24
              Top = 56
              Width = 55
              Height = 13
              Caption = #922#945#961#964#959#973#967#959#962
            end
            object Label21: TLabel
              Left = 332
              Top = 32
              Width = 75
              Height = 13
              Caption = #922#945#964#945#967'.'#922#969#948#953#954#959#973
              Visible = False
            end
            object lblEmp: TLabel
              Left = 20
              Top = 128
              Width = 54
              Height = 13
              Caption = #933#960#940#955#955#951#955#959#962
              Enabled = False
            end
            object LabelInActive: TLabel
              Left = 139
              Top = -6
              Width = 126
              Height = 24
              Caption = 'LabelInActive'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object lblcc: TLabel
              Left = 24
              Top = 243
              Width = 82
              Height = 13
              Caption = #922#941#957#964#961#959' '#922#972#963#964#959#965#962
            end
            object dxDBEdit1: TcxDBTextEdit
              Left = 144
              Top = 72
              TabStop = False
              DataBinding.DataField = 'FullCardNo'
              TabOrder = 4
              Width = 161
            end
            object dxDBDateEdit1: TcxDBDateEdit
              Left = 144
              Top = 168
              DataBinding.DataField = 'STARTDATE'
              Properties.SaveTime = False
              Properties.ShowTime = False
              TabOrder = 6
              Width = 97
            end
            object dxDBDateEdit2: TcxDBDateEdit
              Left = 144
              Top = 144
              DataBinding.DataField = 'ISSUEDATE'
              Properties.SaveTime = False
              Properties.ShowTime = False
              TabOrder = 5
              Width = 97
            end
            object dxDBDateEdit3: TcxDBDateEdit
              Left = 144
              Top = 192
              DataBinding.DataField = 'EXPIREDATE'
              Properties.SaveTime = False
              Properties.ShowTime = False
              TabOrder = 7
              Width = 97
            end
            object dxDBLookupEdit1: TcxDBLookupComboBox
              Left = 144
              Top = 216
              DataBinding.DataField = 'VTYPEID'
              Properties.KeyFieldNames = 'VTYPEID'
              Properties.ListColumns = <
                item
                  FieldName = 'DESCR'
                end>
              TabOrder = 15
              Width = 137
            end
            object dxDBCheckEdit1: TcxDBCheckBox
              Left = 358
              Top = 97
              Caption = #927#948#972#956#949#964#961#959
              DataBinding.DataField = 'METERBOOLEAN'
              TabOrder = 9
            end
            object dxDBCheckEdit2: TcxDBCheckBox
              Left = 358
              Top = 124
              Caption = #935#961#942#963#951' PIN'
              DataBinding.DataField = 'PINBOOLEAN'
              TabOrder = 10
            end
            object dxDBCheckEdit3: TcxDBCheckBox
              Left = 358
              Top = 174
              Caption = #917#957#964#959#955#942' '#948#951#956#953#959#965#961#947#943#945#962
              DataBinding.DataField = 'CREATEBOOLEAN'
              TabOrder = 12
            end
            object GroupBox1: TGroupBox
              Left = 497
              Top = 120
              Width = 216
              Height = 153
              Caption = #927#956#940#948#949#962' '#960#961#959#970#972#957#964#969#957
              TabOrder = 17
              object dxDBLookupEdit2: TcxDBLookupComboBox
                Left = 8
                Top = 24
                DataBinding.DataField = 'IGROUPID1'
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                TabOrder = 0
                OnDblClick = cxDbLCDblClick
                Width = 98
              end
              object dxDBLookupEdit3: TcxDBLookupComboBox
                Left = 8
                Top = 48
                DataBinding.DataField = 'IGROUPID2'
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                TabOrder = 1
                OnDblClick = cxDbLCDblClick
                Width = 98
              end
              object dxDBLookupEdit4: TcxDBLookupComboBox
                Left = 8
                Top = 72
                DataBinding.DataField = 'IGROUPID3'
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                TabOrder = 2
                OnDblClick = cxDbLCDblClick
                Width = 98
              end
              object dxDBLookupEdit5: TcxDBLookupComboBox
                Left = 8
                Top = 96
                DataBinding.DataField = 'IGROUPID4'
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                TabOrder = 3
                OnDblClick = cxDbLCDblClick
                Width = 98
              end
              object dxDBLookupEdit7: TcxDBLookupComboBox
                Left = 8
                Top = 120
                DataBinding.DataField = 'IGROUPID5'
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                TabOrder = 4
                OnDblClick = cxDbLCDblClick
                Width = 98
              end
              object cxDBLookupComboBox2: TcxDBLookupComboBox
                Left = 112
                Top = 24
                DataBinding.DataField = 'IGROUPID6'
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                TabOrder = 5
                OnDblClick = cxDbLCDblClick
                Width = 98
              end
              object cxDBLookupComboBox3: TcxDBLookupComboBox
                Left = 112
                Top = 96
                DataBinding.DataField = 'IGROUPID7'
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                TabOrder = 6
                OnDblClick = cxDbLCDblClick
                Width = 98
              end
              object cxDBLookupComboBox4: TcxDBLookupComboBox
                Left = 112
                Top = 48
                DataBinding.DataField = 'IGROUPID8'
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                TabOrder = 7
                OnDblClick = cxDbLCDblClick
                Width = 98
              end
              object cxDBLookupComboBox5: TcxDBLookupComboBox
                Left = 112
                Top = 120
                DataBinding.DataField = 'IGROUPID9'
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                TabOrder = 8
                OnDblClick = cxDbLCDblClick
                Width = 98
              end
              object cxDBLookupComboBox6: TcxDBLookupComboBox
                Left = 110
                Top = 72
                DataBinding.DataField = 'IGROUPID10'
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                TabOrder = 9
                OnDblClick = cxDbLCDblClick
                Width = 98
              end
            end
            object GroupBoxBlackList: TGroupBox
              Left = 48
              Top = 304
              Width = 657
              Height = 97
              Caption = #931#964#959#953#967#949#943#945' black list'
              TabOrder = 18
              object Label12: TLabel
                Left = 32
                Top = 20
                Width = 55
                Height = 13
                Caption = #913#960#972' '#951#956'/'#957#943#945
              end
              object Label13: TLabel
                Left = 37
                Top = 44
                Width = 50
                Height = 13
                Caption = #935#949#953#961#953#963#964#942#962
              end
              object Label14: TLabel
                Left = 14
                Top = 68
                Width = 73
                Height = 13
                Caption = #928#945#961#945#964#951#961#942#963#949#953#962
              end
              object dxDBDateEdit4: TcxDBDateEdit
                Left = 104
                Top = 16
                TabStop = False
                DataBinding.DataField = 'BLACKLISTDATE'
                TabOrder = 0
                Width = 121
              end
              object dxDBLookupEdit6: TcxDBLookupComboBox
                Left = 104
                Top = 40
                TabStop = False
                DataBinding.DataField = 'BLACKLISTUSR'
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                Properties.ListSource = DMMain.dsFpass
                TabOrder = 1
                Width = 121
              end
              object dxDBEdit3: TcxDBTextEdit
                Left = 104
                Top = 64
                DataBinding.DataField = 'BLACKLISTNOTES'
                TabOrder = 2
                Width = 473
              end
            end
            object GroupBox3: TGroupBox
              Left = 540
              Top = 19
              Width = 176
              Height = 85
              Caption = #908#961#953#945
              TabOrder = 16
              object Label15: TLabel
                Left = 13
                Top = 26
                Width = 38
                Height = 13
                Caption = #919#956#941#961#945#962
              end
              object Label16: TLabel
                Left = 13
                Top = 52
                Width = 27
                Height = 13
                Caption = #924#942#957#945
              end
              object dxDBCurrencyEdit1: TcxDBCurrencyEdit
                Left = 59
                Top = 20
                DataBinding.DataField = 'DAYAMOUNT'
                TabOrder = 0
                Width = 98
              end
              object dxDBCurrencyEdit2: TcxDBCurrencyEdit
                Left = 59
                Top = 46
                DataBinding.DataField = 'MONTHAMOUNT'
                TabOrder = 1
                Width = 98
              end
            end
            object dxDBEdit4: TcxDBTextEdit
              Left = 144
              Top = 24
              DataBinding.DataField = 'REGNO'
              TabOrder = 0
              Width = 121
            end
            object dxDBEdit5: TcxDBTextEdit
              Left = 144
              Top = 48
              DataBinding.DataField = 'ACARDHOLDER'
              Enabled = False
              TabOrder = 3
              Width = 161
            end
            object dxDBCheckEdit4: TcxDBCheckBox
              Left = 358
              Top = 148
              Caption = #917#957#949#961#947#942
              DataBinding.DataField = 'ISACTIVE'
              Properties.ReadOnly = True
              TabOrder = 11
            end
            object Edit1: TEdit
              Left = 420
              Top = 24
              Width = 45
              Height = 21
              TabStop = False
              TabOrder = 8
              Visible = False
            end
            object dxDBCheckEdit5: TcxDBCheckBox
              Left = 358
              Top = 198
              Caption = #917#957#964#959#955#942' '#925#941#945#962' '#922#940#961#964#945#962
              DataBinding.DataField = 'NEWCARDBOOLEAN'
              TabOrder = 13
            end
            object dxDBCheckEdit6: TcxDBCheckBox
              Left = 358
              Top = 222
              Caption = #922#945#961#964#959#973#967#959#962' '#963#949' '#922#940#961#964#945
              DataBinding.DataField = 'CARDHASEMPNAME'
              Properties.OnChange = dxDBCheckEdit6PropertiesChange
              TabOrder = 14
            end
            object GroupBoxInActive: TGroupBox
              Left = 48
              Top = 408
              Width = 657
              Height = 97
              Caption = #931#964#959#953#967#949#943#945' '#913#957#949#957#949#961#947#942#962' '#922#940#961#964#945#962
              TabOrder = 19
              Visible = False
              object Label24: TLabel
                Left = 32
                Top = 20
                Width = 55
                Height = 13
                Caption = #913#960#972' '#951#956'/'#957#943#945
              end
              object Label25: TLabel
                Left = 37
                Top = 44
                Width = 50
                Height = 13
                Caption = #935#949#953#961#953#963#964#942#962
              end
              object Label26: TLabel
                Left = 14
                Top = 68
                Width = 73
                Height = 13
                Caption = #928#945#961#945#964#951#961#942#963#949#953#962
              end
              object dxDBDateEdit7: TcxDBDateEdit
                Left = 104
                Top = 16
                TabStop = False
                DataBinding.DataField = 'INACTIVEDATE'
                TabOrder = 0
                Width = 121
              end
              object dxDBLookupEdit8: TcxDBLookupComboBox
                Left = 104
                Top = 40
                TabStop = False
                DataBinding.DataField = 'INACTIVEUSR'
                Properties.KeyFieldNames = 'Id'
                Properties.ListColumns = <
                  item
                    FieldName = 'Name'
                  end>
                Properties.ListSource = DMMain.dsFpass
                TabOrder = 1
                Width = 121
              end
              object dxDBEdit7: TcxDBTextEdit
                Left = 104
                Top = 64
                DataBinding.DataField = 'INACTIVENOTES'
                TabOrder = 2
                Width = 473
              end
            end
            object CheckBox1: TCheckBox
              Left = 360
              Top = 72
              Width = 113
              Height = 17
              Hint = #935#969#961#943#962' '#924#959#961#966#959#960#959#943#951#963#951' '#913#961#953#952#956#959#973' '#922#965#954#955#959#966#959#961#943#945#962
              Caption = #927#967#953' '#913#961#953#952#956'.'#922#965#954#955'. '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsItalic, fsUnderline]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 20
            end
            object cxDBLookupComboBox7: TcxDBLookupComboBox
              Left = 144
              Top = 96
              DataBinding.DataField = 'CUSTOMERID'
              Properties.ClearKey = 27
              Properties.HideSelection = False
              Properties.KeyFieldNames = 'CUSTOMERID'
              Properties.ListColumns = <
                item
                  FieldName = 'NAME'
                end>
              Properties.ListOptions.SyncMode = True
              TabOrder = 1
              OnExit = cxDBLookupComboBox7Exit
              Width = 185
            end
            object cxDblCbEmp: TcxDBLookupComboBox
              Left = 144
              Top = 120
              DataBinding.DataField = 'EMPLOYEESID'
              Enabled = False
              Properties.HideSelection = False
              Properties.KeyFieldNames = 'Id'
              Properties.ListColumns = <
                item
                  SortOrder = soAscending
                  FieldName = 'FName'
                end>
              TabOrder = 2
              OnExit = cxDblCbEmpExit
              Width = 185
            end
            object cxDBCheckBox1: TcxDBCheckBox
              Left = 361
              Top = 245
              Caption = #931#949' '#913#957#945#956#959#957#942
              DataBinding.DataField = 'Pending'
              TabOrder = 21
            end
            object cxDblCbCC: TcxDBLookupComboBox
              Left = 144
              Top = 240
              DataBinding.DataField = 'COSTCENTERID'
              Enabled = False
              Properties.KeyFieldNames = 'CostCenterId'
              Properties.ListColumns = <
                item
                  FieldName = 'CCNameFull'
                end>
              Properties.ListOptions.AnsiSort = True
              Properties.ListOptions.SyncMode = True
              TabOrder = 22
              Width = 185
            end
          end
          object tabBlackList: TcxTabSheet
            Caption = #921#963#964#959#961#953#954#972
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxGrid2: TcxGrid
              Left = 3
              Top = 3
              Width = 885
              Height = 358
              TabOrder = 0
              object cxGrid2DBTableView1: TcxGridDBTableView
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
                DataController.DetailKeyFieldNames = 'BLACKLISTID'
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Filtering.ColumnFilteredItemsList = True
                OptionsBehavior.ImmediateEditor = False
                OptionsCustomize.ColumnHiding = True
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.CellSelect = False
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                OptionsView.GroupFooterMultiSummaries = True
                OptionsView.GroupFooters = gfAlwaysVisible
                object cxGrid2DBTableView1BLACKLISTID: TcxGridDBColumn
                  DataBinding.FieldName = 'BLACKLISTID'
                  Visible = False
                  Width = 29
                end
                object cxGrid2DBTableView1ACARDID: TcxGridDBColumn
                  DataBinding.FieldName = 'ACARDID'
                  Visible = False
                  Width = 158
                end
                object cxGrid2DBTableView1FRDATE: TcxGridDBColumn
                  DataBinding.FieldName = 'FRDATE'
                  Width = 43
                end
                object cxGrid2DBTableView1TODATE: TcxGridDBColumn
                  DataBinding.FieldName = 'TODATE'
                  Width = 42
                end
                object cxGrid2DBTableView1NOTES: TcxGridDBColumn
                  DataBinding.FieldName = 'NOTES'
                  Width = 451
                end
                object cxGrid2DBTableView1INSDT: TcxGridDBColumn
                  DataBinding.FieldName = 'INSDT'
                  Visible = False
                  Width = 42
                end
                object cxGrid2DBTableView1UPDDT: TcxGridDBColumn
                  DataBinding.FieldName = 'UPDDT'
                  Visible = False
                  Width = 42
                end
                object cxGrid2DBTableView1INSUSR: TcxGridDBColumn
                  DataBinding.FieldName = 'INSUSR'
                  Visible = False
                  Width = 24
                end
                object cxGrid2DBTableView1UPDUSR: TcxGridDBColumn
                  DataBinding.FieldName = 'UPDUSR'
                  Visible = False
                  Width = 24
                end
              end
              object cxGrid2Level1: TcxGridLevel
                GridView = cxGrid2DBTableView1
              end
            end
          end
        end
      end
    end
  end
  inherited popFilter: TPopupMenu
    Left = 772
    Top = 227
  end
  inherited ActionMainList: TActionList
    Left = 552
    Top = 72
  end
  object ActionList1: TActionList
    OnExecute = ActionList1Execute
    Left = 484
    Top = 184
    object actClose: TAction
      Category = 'Browse'
      Caption = #917#960#953#963#964#961#959#966#942
      OnExecute = actCloseExecute
    end
    object actInsert: TAction
      Category = 'Browse'
      Caption = #917#953#963#945#947#969#947#942
      OnExecute = actInsertExecute
    end
    object actUpdate: TAction
      Category = 'Browse'
      Caption = #924#949#964#945#946#959#955#942
      OnExecute = actUpdateExecute
    end
    object actDelete: TAction
      Category = 'Browse'
      Caption = #916#953#945#947#961#945#966#942
      OnExecute = actDeleteExecute
    end
    object actOK: TAction
      Category = 'UPD'
      Caption = #913#960#959#948#959#967#942
      OnExecute = actOKExecute
    end
    object actCancel: TAction
      Category = 'UPD'
      Caption = #913#954#973#961#969#963#951
      OnExecute = actCancelExecute
    end
    object actToBlackList: TAction
      Category = 'Browse'
      Caption = #931#949' black list'
      OnExecute = actToBlackListExecute
    end
    object actFromBlackList: TAction
      Category = 'Browse'
      Caption = #913#954#973#961#969#963#951' black list'
      OnExecute = actFromBlackListExecute
    end
    object UpdCommandAct: TAction
      Caption = 'UpdCommandAct'
      ShortCut = 40968
      OnExecute = UpdateActionsExecute
      OnUpdate = UpdCommandActUpdate
    end
    object actCopy: TAction
      Category = 'Browse'
      Caption = #913#957#964#953#947#961#945#966#942' '#963#949' '#925#941#945
      OnExecute = actCopyExecute
    end
    object actGridPrint: TAction
      Caption = #917#954#964'.Grid'
    end
    object actInActive: TAction
      Category = 'Browse'
      Caption = #913#957#949#957#949#961#947#942
      OnExecute = actInActiveExecute
    end
    object actDisp: TAction
      Category = 'Browse'
      Caption = #917#956#966#940#957#953#963#951
      ShortCut = 123
      SecondaryShortCuts.Strings = (
        '')
      OnExecute = actDispExecute
    end
    object actStat: TAction
      Category = 'Browse'
      Caption = #931#964#945#964#953#963#964#953#954#940
      OnExecute = actStatExecute
    end
    object actUndoInActive: TAction
      Category = 'Browse'
      Caption = #917#957#949#961#947#942
      OnExecute = actUndoInActiveExecute
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actClose
          end
          item
            Action = actInsert
          end
          item
            Action = actUpdate
          end
          item
            Action = actDelete
          end
          item
            Action = actCancel
          end
          item
            Action = actOK
          end
          item
            Action = actToBlackList
            Caption = #931#949' &black list'
          end
          item
            Action = actFromBlackList
            Caption = #913#954#973#961#969#963#951' b&lack list'
          end
          item
            Action = actCopy
          end
          item
            Action = actGridPrint
            Caption = #917#954#964'.&Grid'
          end
          item
            Action = actInActive
          end>
      end
      item
        Items = <
          item
            Action = actClose
          end
          item
            Action = actInsert
          end
          item
            Action = actUpdate
          end
          item
            Action = actDelete
          end
          item
            Action = actOK
          end
          item
            Action = actCancel
          end
          item
            Action = actToBlackList
            Caption = #931#949' &black list'
          end
          item
            Action = actFromBlackList
            Caption = #913#954#973#961#969#963#951' b&lack list'
          end
          item
            Action = actCopy
          end
          item
            Action = actGridPrint
            Caption = #917#954#964'.&Grid'
          end
          item
            Action = actInActive
          end>
      end
      item
        Items = <
          item
            Action = actDisp
            ShortCut = 123
          end
          item
            Action = actInsert
          end
          item
            Action = actUpdate
          end
          item
            Action = actDelete
          end
          item
            Action = actInActive
          end
          item
            Action = actUndoInActive
          end
          item
            Action = actStat
          end
          item
            Action = actToBlackList
            Caption = #931#949' &black list'
          end
          item
            Action = actFromBlackList
            Caption = #913#954#973#961#969#963#951' b&lack list'
          end
          item
            Action = actCopy
          end
          item
            Action = actOK
          end
          item
            Action = actCancel
          end
          item
            Action = UpdCommandAct
            Caption = '&UpdCommandAct'
            ShortCut = 40968
          end>
        ActionBar = ActionToolBar1
      end>
    LinkedActionLists = <
      item
        ActionList = ActionList1
        Caption = 'ActionList1'
      end>
    Left = 776
    Top = 168
    StyleName = 'Platform Default'
  end
  object ColorDialog1: TColorDialog
    Left = 776
    Top = 112
  end
  object memWS: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F240000000400000009000700467244617465000400
      000009000700546F44617465001000000001000C0046724143617264436F6465
      001000000001000C00546F4143617264436F6465000400000003000C00467253
      746174696F6E4964000400000003000C00546F53746174696F6E496400040000
      0003000D0046724D65726368616E744964000400000003000D00546F4D657263
      68616E744964000A00000001000E0046724D65726368616E74536170000A0000
      0001000E00546F4D65726368616E74536170000A00000001000E004672437573
      746F6D6572536170001400000001000E00546F437573746F6D65725361700032
      00000001000B004672437573746F6D6572003200000001000B00546F43757374
      6F6D6572000400000003000D0046725465726D696E616C496400040000000300
      0D00546F5465726D696E616C496400080000000B000A00467244617465496E73
      00080000000B000A00546F44617465496E73000400000003000F004672437573
      746F6D6572436F6465000400000003000F00546F437573746F6D6572436F6465
      0004000000090009004672446174655374000400000009000900546F44617465
      5374000400000003000400446566000400000003000400446574000400000003
      000900456E686D50656C46000400000003000900456E686D50656C5400040000
      0003000900456E686D436F6D46000400000003000900456E686D436F6D540004
      00000003000A00456E686D4469736346000400000003000A00456E686D446973
      6354000400000003000A00456E686D5374617446000400000003000A00456E68
      6D53746174540004000000030007004261746368460004000000030007004261
      74636854000200000005000B00456E686D4461696C7947000200000005000A00
      456E686D50656C614700}
    SortOptions = []
    Left = 496
    Top = 72
    object memWSComponentName: TStringField
      FieldName = 'ComponentName'
    end
    object memWSComponentValueInt: TIntegerField
      FieldName = 'ComponentValueInt'
    end
    object memWSComponentValueDT: TDateTimeField
      FieldName = 'ComponentValueDT'
    end
  end
end
