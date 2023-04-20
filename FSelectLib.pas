unit FSelectLib;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DMain, FBaseDev0, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  Data.Win.ADODB, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ActnList, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, System.DateUtils;

type
  TfrmSelectLib = class(TfrmBaseDev0)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1GId: TGuidField;
    ADOQuery1LibId: TIntegerField;
    ADOQuery1LibDateTime: TDateTimeField;
    ADOQuery1LibRegNo: TWideStringField;
    ADOQuery1LibWeight: TIntegerField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1GId: TcxGridDBColumn;
    cxGrid1DBTableView1LibId: TcxGridDBColumn;
    cxGrid1DBTableView1LibDateTime: TcxGridDBColumn;
    cxGrid1DBTableView1LibRegNo: TcxGridDBColumn;
    cxGrid1DBTableView1LibWeight: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmSelectLib.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
  // Close;
end;

procedure TfrmSelectLib.cxGrid1Enter(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrCancel;
end;

procedure TfrmSelectLib.FormCreate(Sender: TObject);
var
  x: Integer;
  AItemList: TcxFilterCriteriaItemList;
begin
  inherited;
  for x := 0 to Self.ComponentCount - 1 do
    if Components[x] is TcxGridDBTableView then
      begin
        TcxGridDBTableView(Components[x]).OptionsView.Footer := False;
        TcxGridDBTableView(Components[x]).OptionsView.GroupByBox := False;
        // TcxGridDBTableView(Components[x]).OptionsBehavior.BestFitMaxRecordCount := 10;
        // TcxGridDBTableView(Components[x]).ApplyBestFit();
        TcxGridDBTableView(Components[x]).OptionsView.Footer := False;
        TcxGridDBTableView(Components[x]).OptionsCustomize.ColumnsQuickCustomization := False;
      end;

  Self.ModalResult := mrCancel;

cxGrid1DBTableView1.DataController.Filter.BeginUpdate ;
  try
    cxGrid1DBTableView1.DataController.Filter.Root.Clear ;
    cxGrid1DBTableView1.DataController.Filter.Root.AddItem(
                                                     cxGrid1DBTableView1LibDateTime,
                                                     foGreaterEqual,
                                                     DateTimeToStr(StartOfTheDay(Now())),
                                                     DateToStr(StartOfTheDay(Now()))
                                                   );
  finally
    cxGrid1DBTableView1.DataController.Filter.EndUpdate;
  end;

cxGrid1DBTableView1.DataController.Filter.Active := True;


end;

end.
