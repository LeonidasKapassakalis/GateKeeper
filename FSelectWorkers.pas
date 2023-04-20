unit FSelectWorkers;

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
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmSelectWorkers = class(TfrmBaseDev0)
    DataSource1: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    fnHelpPerson: TADOStoredProc;
    cxGrid1DBTableView1Name: TcxGridDBColumn;
    cxGrid1DBTableView1SurName: TcxGridDBColumn;
    cxGrid1DBTableView1Company: TcxGridDBColumn;
    cxGrid1DBTableView1ADT: TcxGridDBColumn;
    fnHelpPersonName: TWideStringField;
    fnHelpPersonSurName: TWideStringField;
    fnHelpPersonCompany: TWideStringField;
    fnHelpPersonADT: TWideStringField;
    fnHelpPersonContractor_Id: TIntegerField;
    fnHelpPersonWorker_Id: TIntegerField;
    cxGrid1DBTableView1Contractor_Id: TcxGridDBColumn;
    cxGrid1DBTableView1Worker_Id: TcxGridDBColumn;
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

procedure TfrmSelectWorkers.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
  // Close;
end;

procedure TfrmSelectWorkers.cxGrid1Enter(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrCancel;
end;

procedure TfrmSelectWorkers.FormCreate(Sender: TObject);
var
  x: Integer;
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
end;

end.
