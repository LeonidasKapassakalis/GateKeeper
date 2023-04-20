unit RLastCallDate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, DB, ADODB, QRCtrls, QuickRpt, ExtCtrls,
  QRExport, QRWebFilt, QRPDFFilt, DMain, QRXMLSFilt;

type
  TrptLastCallDate = class(TrptBaseAvinCard)
    QRBand3: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    dtsTran: TDataSource;
    qryTran: TADOQuery;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    QStations: TADOQuery;
    qryTranV_TRCALLDSTATUS: TIntegerField;
    qryTranV_TRCALLDDATE: TDateTimeField;
    qryTranV_TRCALLDSTATIONID: TIntegerField;
    qryTranLName: TStringField;
    qryTranLPhone: TStringField;
    QStationsStationid: TAutoIncField;
    QStationsName: TWideStringField;
    QStationsSTREET: TWideStringField;
    QStationsZIP: TWideStringField;
    QStationsCITY: TWideStringField;
    QStationsAreaId: TIntegerField;
    QStationsSalesMenId: TIntegerField;
    QStationsIGroupId1: TIntegerField;
    QStationsPososto1: TFloatField;
    QStationsHaveGroup1: TBooleanField;
    QStationsIGroupId2: TIntegerField;
    QStationsPososto2: TFloatField;
    QStationsHaveGroup2: TBooleanField;
    QStationsIGroupId3: TIntegerField;
    QStationsPososto3: TFloatField;
    QStationsHaveGroup3: TBooleanField;
    QStationsIGroupId4: TIntegerField;
    QStationsPososto4: TFloatField;
    QStationsHaveGroup4: TBooleanField;
    QStationsIGroupId5: TIntegerField;
    QStationsPososto5: TFloatField;
    QStationsHaveGroup5: TBooleanField;
    QStationsIGroupId6: TIntegerField;
    QStationsPososto6: TFloatField;
    QStationsHaveGroup6: TBooleanField;
    QStationsIGroupId7: TIntegerField;
    QStationsPososto7: TFloatField;
    QStationsHaveGroup7: TBooleanField;
    QStationsIGroupId8: TIntegerField;
    QStationsPososto8: TFloatField;
    QStationsHaveGroup8: TBooleanField;
    QStationsIGroupId9: TIntegerField;
    QStationsPososto9: TFloatField;
    QStationsHaveGroup9: TBooleanField;
    QStationsIGroupId10: TIntegerField;
    QStationsPososto10: TFloatField;
    QStationsHaveGroup10: TBooleanField;
    QStationsDeleted: TBooleanField;
    QStationsDelUsr: TIntegerField;
    QStationsDelDT: TDateTimeField;
    QStationsInActive: TBooleanField;
    QStationsInActiveUsr: TIntegerField;
    QStationsInActiveDt: TDateTimeField;
    QStationsStopSales: TBooleanField;
    QStationsStopSalesUsr: TIntegerField;
    QStationsStopSalesDt: TDateTimeField;
    QStationsIsTest: TBooleanField;
    QStationsIsTestUsr: TIntegerField;
    QStationsIsTestDt: TDateTimeField;
    procedure QStationsCalcFields(DataSet: TDataSet);
  private
  public
    procedure InitSql(SqlText: string = '');
  end;

implementation

{$R *.dfm}

procedure TrptLastCallDate.InitSql(SqlText: string);
begin
  if SqlText > '' then
    begin
      qryTran.Active := False;
      qryTran.SQL.Add(SqlText);
    end;
  qryTran.SQL.Add(' Order BY V_TRCALLDDATE DESC');
  qryTran.Active := True;
end;

procedure TrptLastCallDate.QStationsCalcFields(DataSet: TDataSet);
begin
  inherited;
  // QStationsCPhone.AsString := Trim(QStationsPHONE1.AsString + ' ' +
  // QStationsPHONE1.AsString + ' ' +
  // QStationsMOBILE.AsString)
end;

end.
