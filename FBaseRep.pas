unit FBaseRep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FBaseDev0, Vcl.ActnList, Vcl.Menus, DateUtils,
  DMainScreen, DMain, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPSCore, dxPScxCommon, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, Data.Win.ADODB, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxGridExportLink,
  dxCore;

type
  TfrmBaseRep = class(TfrmBaseDev0)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qryMain: TADOQuery;
    dtsMain: TDataSource;
    dxComponentPrinter1: TdxComponentPrinter;
    PrinterSetupDialog1: TPrinterSetupDialog;
    dxComponentPrinter1Link1: TdxGridReportLink;
    Pr1: TMenuItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    actExpand: TMenuItem;
    actCollapse: TMenuItem;
    VTableFieldsNames: TADOQuery;
    VTableFieldsNamesTableName: TWideStringField;
    VTableFieldsNamesFieldName: TWideStringField;
    VTableFieldsNamesTableId: TIntegerField;
    VTableFieldsNamesid: TIntegerField;
    VTableFieldsNamesType: TWideStringField;
    VTableFieldsNamesCheckChanges: TBooleanField;
    VTableFieldsNamesFName: TWideStringField;
    VTableFieldsNamesDescription: TWideStringField;
    VTableFieldsNamesLabel: TWideStringField;
    VTableFieldsNamesRequired: TBooleanField;
    VTableFieldsNamesGridOrder: TIntegerField;
    VTableFieldsNamesVisible: TBooleanField;
    VTableFieldsNamesVisibleForCust: TBooleanField;
    VTableFieldsNamesWidth: TIntegerField;
    VTableFieldsNamesMinWidth: TIntegerField;
    VTableFieldsNamesBestFitWidth: TIntegerField;
    VTableFieldsNamesGrouping: TBooleanField;
    VTableFieldsNamesGroupingType: TIntegerField;
    VTableFieldsNamesGroupingOrder: TIntegerField;
    qryFieldNames: TADOQuery;
    qryFieldNamesid: TIntegerField;
    qryFieldNamesTableId: TIntegerField;
    qryFieldNamesFieldName: TWideStringField;
    qryFieldNamesDescription: TWideStringField;
    qryFieldNamesType: TWideStringField;
    qryFieldNamesCheckChanges: TBooleanField;
    qryFieldNamesLabel: TWideStringField;
    qryFieldNamesRequired: TBooleanField;
    qryFieldNamesGridOrder: TIntegerField;
    qryFieldNamesVisible: TBooleanField;
    qryFieldNamesVisibleForCust: TBooleanField;
    qryFieldNamesWidth: TIntegerField;
    qryFieldNamesMinWidth: TIntegerField;
    qryFieldNamesBestFitWidth: TIntegerField;
    qryFieldNamesGrouping: TBooleanField;
    qryFieldNamesGroupingType: TIntegerField;
    qryFieldNamesGroupingOrder: TIntegerField;
    qryFieldNamesSortOrder: TIntegerField;
    qryFieldNamesSortIndes: TIntegerField;
    qryFieldNamesGroupFooters: TBooleanField;
    VTableFieldsNamesExpr1: TIntegerField;
    VTableFieldsNamesSortOrder: TIntegerField;
    VTableFieldsNamesSortIndes: TIntegerField;
    VTableFieldsNamesGroupFooters: TBooleanField;
    actGroupBox: TMenuItem;
    SaveDialog1: TSaveDialog;
    actExcel2: TMenuItem;
    procedure Pr1Click(Sender: TObject);
    procedure actExpandClick(Sender: TObject);
    procedure actCollapseClick(Sender: TObject);
    procedure qryFieldNamesBeforePost(DataSet: TDataSet);
    procedure actGroupBoxClick(Sender: TObject);
    procedure actExcel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure EnhmTableFields(Table:TCustomADODataSet;TableId:Integer);
    procedure EnhmcxGridFields(cxTable:TcxGridDBTableView;TableId:Integer);
    procedure EnhmFieldsFromTable(Table:TCustomADODataSet;TableId:Integer);
    procedure EnhmcxGridFromTable(cxTable:TcxGridDBTableView;TableId:Integer);
  end;


implementation

{$R *.dfm}

procedure TfrmBaseRep.actCollapseClick(Sender: TObject);
begin
  inherited;
  PopupcxGridDBTableView.DataController.Groups.FullCollapse;
end;

procedure TfrmBaseRep.actExcel2Click(Sender: TObject);
begin
  inherited;
//      PopupcxGridDBTableView := TcxGridDBTableView(TcxGridSite(popFilter.PopupComponent).GridView);
//      PopupcxGridLevel       := TcxGridLevel(TcxGridSite(popFilter.PopupComponent).GridView);

  if SaveDialog1.Execute then
  begin
    ExportGridToExcel(SaveDialog1.FileName,cxGrid1);
  end;
end;

procedure TfrmBaseRep.actExpandClick(Sender: TObject);
begin
  inherited;
  PopupcxGridDBTableView.DataController.Groups.FullExpand;
end;

procedure TfrmBaseRep.actGroupBoxClick(Sender: TObject);
var x:Integer;
begin
  inherited;
  for x := 0 to Self.ComponentCount-1 do
    begin
      if Self.Components[x] is TcxGridDBTableView  then
         TcxGridDBTableView(Self.Components[x]).OptionsView.GroupByBox := Not TcxGridDBTableView(Self.Components[x]).OptionsView.GroupByBox;
    end;
end;

procedure TfrmBaseRep.EnhmTableFields(Table:TCustomADODataSet;TableId:Integer);
var x:Integer;
begin
  qryFieldNames.Active:=True;
  for x:=0 to Table.FieldCount -1 do
  begin
    qryFieldNames.Insert;
    qryFieldNames.Edit;
    qryFieldNamesTableId.AsInteger  := TableId;
    qryFieldNamesFieldName.AsString := Table.Fields[x].FieldName;
    qryFieldNamesLabel.AsString     := Table.Fields[x].DisplayName;
    qryFieldNamesRequired.AsBoolean := Table.Fields[x].Required;
    try
      qryFieldNames.Post;
    except
      qryFieldNames.Cancel;
    end;
  end;
end;

procedure TfrmBaseRep.EnhmFieldsFromTable(Table:TCustomADODataSet;TableId:Integer);
var Tf:TField;
begin
  VTableFieldsNames.Active    := False;
  VTableFieldsNames.Filter    := 'TableId = '+inttostr(TableId);
  VTableFieldsNames.Filtered  := True;
  VTableFieldsNames.Active    := True;

  VTableFieldsNames.First;
  repeat
    Tf:=Table.FindField(Trim(VTableFieldsNamesFieldName.AsString));
    if Assigned(Tf) then
    begin
       tf.DisplayLabel :=Trim(VTableFieldsNamesLabel.AsString);
       tf.Required     :=VTableFieldsNamesRequired.AsBoolean;
    end;
    VTableFieldsNames.Next;
  until VTableFieldsNames.Eof;
end;

procedure TfrmBaseRep.EnhmcxGridFields(cxTable:TcxGridDBTableView;TableId:Integer);
var x:Integer;
begin
  for x:=0 to cxTable.ColumnCount -1 do
  begin
    qryFieldNames.Insert;
    qryFieldNames.Edit;
    qryFieldNamesTableId.AsInteger := TableId;
    qryFieldNamesFieldName.AsString        := cxTable.Columns[x].DataBinding.FieldName;
    qryFieldNamesLabel.AsString            := cxTable.Columns[x].Caption;
    qryFieldNamesWidth.AsInteger           := cxTable.Columns[x].Width;
    qryFieldNamesBestFitWidth.AsInteger    := cxTable.Columns[x].MinWidth;
    qryFieldNamesGridOrder.AsInteger       := cxTable.Columns[x].Index;
    qryFieldNamesVisible.AsBoolean         := cxTable.Columns[x].Visible;
    qryFieldNamesVisibleForCust.AsBoolean  := cxTable.Columns[x].VisibleForCustomization;
    qryFieldNamesGroupingOrder.AsInteger   := cxTable.Columns[x].GroupIndex;
    qryFieldNamesGroupingType.AsInteger    := ord(cxTable.Columns[x].DateTimeGrouping);
    qryFieldNamesSortOrder.AsInteger       := ord(cxTable.Columns[x].SortOrder);
    qryFieldNamesSortIndes.AsInteger       := cxTable.Columns[x].SortIndex;
    qryFieldNamesGroupFooters.AsBoolean    := cxTable.Columns[x].Options.GroupFooters;
    try
      qryFieldNames.Post;
    except
      qryFieldNames.Cancel;
    end;
  end;
end;

procedure TfrmBaseRep.EnhmcxGridFromTable(cxTable:TcxGridDBTableView;TableId:Integer);
var Tdx:TcxCustomGridTableItem;
    idx:Integer;
begin
  VTableFieldsNames.Active    := False;
  VTableFieldsNames.Filter    := 'TableId = '+inttostr(TableId);
  VTableFieldsNames.Filtered  := True;
  VTableFieldsNames.Active    := True;

  VTableFieldsNames.First;
  repeat
//    Tdx:=cxTable.FindItemByName(Trim(VTableFieldsNamesFieldName.AsString));
//GetColumnByFieldName
//    cxTable.
    Tdx:=cxTable.GetColumnByFieldName(Trim(VTableFieldsNamesFieldName.AsString));
    if Assigned(Tdx) then
    begin
        idx:=Tdx.Index;
        cxTable.Columns[idx].Caption                    := Trim(VTableFieldsNamesLabel.AsString);
        cxTable.Columns[idx].Width                      := VTableFieldsNamesWidth.AsInteger;
        cxTable.Columns[idx].MinWidth                   := VTableFieldsNamesBestFitWidth.AsInteger;
        cxTable.Columns[idx].Visible                    := VTableFieldsNamesVisible.AsBoolean;
        cxTable.Columns[idx].VisibleForCustomization    := VTableFieldsNamesVisibleForCust.AsBoolean;
//        cxTable.Columns[idx].GroupIndex                 := VTableFieldsNamesGroupingOrder.AsInteger;
        if VTableFieldsNamesGroupingOrder.AsInteger >= 0 then
        begin
           cxTable.Columns[idx].GroupIndex       := VTableFieldsNamesGroupingOrder.AsInteger;
           cxTable.Columns[idx].Options.Grouping := True;
        end;
        cxTable.Columns[idx].DateTimeGrouping           := TcxGridDateTimeGrouping(VTableFieldsNamesGroupingType.AsInteger);
        cxTable.Columns[idx].SortOrder                  := TdxSortOrder(VTableFieldsNamesSortOrder.AsInteger);
        cxTable.Columns[idx].SortIndex                  := VTableFieldsNamesSortIndes.AsInteger;
        cxTable.Columns[idx].Options.GroupFooters       := VTableFieldsNamesGroupFooters.AsBoolean;
        cxTable.Columns[idx].Index                      := VTableFieldsNamesGridOrder.AsInteger;
    end;
    VTableFieldsNames.Next;
  until VTableFieldsNames.Eof;
end;

procedure TfrmBaseRep.Pr1Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link1.Preview();
end;

procedure TfrmBaseRep.qryFieldNamesBeforePost(DataSet: TDataSet);
begin
  inherited;
  TADOQuery(DataSet).FieldByName('ID').AsInteger := CreateKey('FieldNames');
end;

end.
