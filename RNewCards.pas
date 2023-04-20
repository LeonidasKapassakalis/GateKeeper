unit RNewCards;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, ADODB,
  QRExport, QRPDFFilt;

type
  TrptNewCards = class(TQuickRep)
    ADOTable1: TADOTable;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRGroup1: TQRGroup;
    ADOTable1CardNo: TWideStringField;
    ADOTable1CompanyName: TWideStringField;
    ADOTable1VehicleNo: TWideStringField;
    ADOTable1DayFloorLimit: TFloatField;
    ADOTable1MonthFloorLimit: TFloatField;
    ADOTable1StartingDate: TWideStringField;
    ADOTable1ExpirationDate: TWideStringField;
    ADOTable1Version: TWordField;
    ADOTable1Product1: TBooleanField;
    ADOTable1Product2: TBooleanField;
    ADOTable1Product3: TBooleanField;
    ADOTable1Product4: TBooleanField;
    ADOTable1Product5: TBooleanField;
    ADOTable1Product6: TBooleanField;
    ADOTable1Product7: TBooleanField;
    ADOTable1Product8: TBooleanField;
    ADOTable1Product9: TBooleanField;
    ADOTable1Product10: TBooleanField;
    ADOTable1Product11: TBooleanField;
    ADOTable1Product12: TBooleanField;
    ADOTable1Product13: TBooleanField;
    ADOTable1Product14: TBooleanField;
    ADOTable1Product15: TBooleanField;
    ADOTable1Product16: TBooleanField;
    QRBand3: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRSysData2: TQRSysData;
    QRDBText7: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel10: TQRLabel;
    ADOTable1CalcDayFloor: TCurrencyField;
    ADOTable1CalcMonthFloor: TCurrencyField;
    QRDBText14: TQRDBText;
    TitleBand1: TQRBand;
    procedure ADOTable1CalcFields(DataSet: TDataSet);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: String);
  private

  public

  end;

var
  rptNewCards: TrptNewCards;

implementation

uses ExportNew;

{$R *.DFM}

procedure TrptNewCards.ADOTable1CalcFields(DataSet: TDataSet);
begin
  ADOTable1CalcMonthFloor.AsCurrency := ADOTable1MonthFloorLimit.AsCurrency;
  ADOTable1CalcDayFloor.AsCurrency   := ADOTable1DayFloorLimit.AsCurrency;
end;

procedure TrptNewCards.QRDBText6Print(sender: TObject; var Value: String);
var
  i, x: Integer;
begin
  i     := ADOTable1StartingDate.AsInteger div 100;
  x     := ADOTable1StartingDate.AsInteger mod 100;
  Value := format('%.2d/%.2d', [i, x]);
end;

procedure TrptNewCards.QRDBText5Print(sender: TObject; var Value: String);
var
  i, x: Integer;
begin
  i     := ADOTable1ExpirationDate.AsInteger div 100;
  x     := ADOTable1ExpirationDate.AsInteger mod 100;
  Value := format('%.2d/%.2d', [i, x]);
end;

end.
