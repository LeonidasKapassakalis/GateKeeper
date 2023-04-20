unit RSubParams;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, DB, DBGrids, Forms, Printers, Quickrpt, QRCtrls,
  cxGridDBTableView,
  QRExport, QRXMLSFilt, QRPDFFilt;

type
  TRptSubParams = class(TQuickRep)
    QRBandPF: TQRBand;
    QRBandPH: TQRBand;
    QRLabel1: TQRLabel;
    QRBandD: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRTextFilter1: TQRTextFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRWMFFilter1: TQRWMFFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    QRCSVFilter1: TQRCSVFilter;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure QuickRepAfterPrint(Sender: TObject);
  private
    LeoGrid: TComponent;
  public
    constructor CreateFrom(aowner: TComponent; Grid: TComponent; RepName: String);
    constructor CreateFromDev(aowner: TComponent; Grid: TcxGridDBTableView; RepName: String);
  end;

var
  RptSubParams: TRptSubParams;

implementation

uses DMain;

{$R *.DFM}

constructor TRptSubParams.CreateFrom(aowner: TComponent; Grid: TComponent; RepName: String);
var
  i, ii, ll: integer;
  RLabel: TQRLabel;
  RDBText: TQRDBText;
  LeoField: TField;
  LeoS: String;
begin
  if (Grid is TDBGrid) then
    begin
      create(aowner);
      ll := 10;
      if (Grid is TDBGrid) then
        with Grid as TDBGrid do
          begin
            LeoGrid := DataSource.DataSet;
            DataSource.DataSet.DisableControls;
            Self.DataSet     := DataSource.DataSet;
            QRLabel1.Caption := RepName;
            for i            := 0 to Columns.Count - 1 do
              begin
                RLabel   := TQRLabel.create(QRBandPH);
                LeoField := Columns[i].Field;
                LeoS     := LeoField.FieldName;
                ii       := -1;
                repeat
                  ii := ii + 1;
                until DataSource.DataSet.Fields[ii].FieldName = LeoS;
                // RLabel.Caption      :=Grid.DataSource.DataSet.Fields[ii].DisplayLabel;
                if Columns[i].Visible then
                  begin
                    RLabel.Caption    := Columns[i].Title.Caption;
                    RLabel.Width      := Columns[i].Width;
                    RLabel.AutoSize   := False;
                    RLabel.Parent     := QRBandPH;
                    RLabel.Left       := ll;
                    RLabel.Top        := 65;
                    RLabel.Font.Style := [fsBold, fsUnderline];

                    RDBText           := TQRDBText.create(QRBandD);
                    RDBText.DataField := DataSource.DataSet.Fields[ii].FieldName;
                    RDBText.DataSet   := DataSource.DataSet;
                    RDBText.Width     := Columns[i].Width;
                    RDBText.Font      := Columns[i].Font;
                    RDBText.AutoSize  := False;
                    RDBText.Parent    := QRBandD;
                    RDBText.Left      := ll;
                    RDBText.Top       := 8;

                    ll := ll + RLabel.Width + 10;
                  end;

                if ll > 700 then
                  Self.Page.Orientation := poLandscape;
              end
          end;

      DMain.GreekPrint(Self AS TQuickRep);
    end
end;

constructor TRptSubParams.CreateFromDev(aowner: TComponent; Grid: TcxGridDBTableView; RepName: String);
var
  i, ii, ll: integer;
  RLabel: TQRLabel;
  RDBText: TQRDBText;
  LeoField: TField;
  LeoS: String;
begin
  if (Grid is TcxGridDBTableView) then
    begin
      create(aowner);
      ll := 10;
      if (Grid is TcxGridDBTableView) then
        with Grid as TcxGridDBTableView do
          begin
            LeoGrid := DataController.DataSource.DataSet;
            DataController.DataSource.DataSet.DisableControls;
            Self.DataSet     := DataController.DataSource.DataSet;
            QRLabel1.Caption := RepName;
            for i            := 0 to ColumnCount - 1 do
              begin
                RLabel   := TQRLabel.create(QRBandPH);
                LeoField := Columns[i].DataBinding.Field;
                LeoS     := LeoField.FieldName;
                ii       := -1;
                repeat
                  ii := ii + 1;
                until DataController.DataSource.DataSet.Fields[ii].FieldName = LeoS;
                // RLabel.Caption      :=Grid.DataSource.DataSet.Fields[ii].DisplayLabel;
                if Columns[i].Visible then
                  begin
                    RLabel.Caption    := Columns[i].Caption;
                    RLabel.Width      := Columns[i].Width;
                    RLabel.AutoSize   := False;
                    RLabel.Parent     := QRBandPH;
                    RLabel.Left       := ll;
                    RLabel.Top        := 65;
                    RLabel.Font.Style := [fsBold, fsUnderline];

                    RDBText           := TQRDBText.create(QRBandD);
                    RDBText.DataField := DataController.DataSource.DataSet.Fields[ii].FieldName;
                    RDBText.DataSet   := DataController.DataSource.DataSet;
                    RDBText.Width     := Columns[i].Width;
                    // RDBText.Font        :=Columns[i].Font;
                    RDBText.AutoSize := False;
                    RDBText.Parent   := QRBandD;
                    RDBText.Left     := ll;
                    RDBText.Top      := 8;

                    ll := ll + RLabel.Width + 10;
                  end;

                if ll > 700 then
                  Self.Page.Orientation := poLandscape;
              end
          end;

      DMain.GreekPrint(Self AS TQuickRep);
    end

end;

procedure TRptSubParams.QuickRepBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  DMain.GreekPrint(Sender AS TQuickRep);
end;

procedure TRptSubParams.QuickRepAfterPrint(Sender: TObject);
begin
  TDataSet(LeoGrid).EnableControls;
end;

end.
