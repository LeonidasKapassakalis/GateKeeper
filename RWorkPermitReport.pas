unit RWorkPermitReport;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB, QRExport,
  QRWebFilt, QRPDFFilt, Common, QRXMLSFilt, RBaseAdo, QRNewXLSXFilt, QRXLSXFilt;

type
  TrptWorkPermitReport = class(TrptBaseAdo)
    QRBand2: TQRBand;
    DataSource1: TDataSource;
    ADOQuery1Id: TIntegerField;
    ADOQuery1Issue_Date: TDateTimeField;
    ADOQuery1Department_Id: TIntegerField;
    ADOQuery1Contractor_Id: TIntegerField;
    ADOQuery1Number_of_Workers: TIntegerField;
    ADOQuery1������_��������: TWideStringField;
    ADOQuery1����������: TWideStringField;
    ADOQuery1Start_Time: TDateTimeField;
    ADOQuery1End_Time: TDateTimeField;
    ADOQuery1���������_��������: TWideStringField;
    ADOQuery1�������: TBooleanField;
    ADOQuery1�������: TBooleanField;
    ADOQuery1�������: TBooleanField;
    ADOQuery1�������_��_�������_����: TBooleanField;
    ADOQuery1�����_�������: TBooleanField;
    ADOQuery1������������: TBooleanField;
    ADOQuery1�����_�������: TBooleanField;
    ADOQuery1����������_�������_������: TBooleanField;
    ADOQuery1���������: TBooleanField;
    ADOQuery1�2S: TBooleanField;
    ADOQuery1CO: TBooleanField;
    ADOQuery1O2: TBooleanField;
    ADOQuery1���������_������: TWideStringField;
    ADOQuery1�������_�������: TWideStringField;
    ADOQuery1�����������_����������: TBooleanField;
    ADOQuery1����_�����������_�����: TBooleanField;
    ADOQuery1�����������_����������: TBooleanField;
    ADOQuery1���������������_��������: TBooleanField;
    ADOQuery1O������_������������: TBooleanField;
    ADOQuery1���������������_������: TBooleanField;
    ADOQuery1��������_����������: TBooleanField;
    ADOQuery1���������_����������: TBooleanField;
    ADOQuery1����������_�����: TBooleanField;
    ADOQuery1����������_�����: TBooleanField;
    ADOQuery1����������_����: TBooleanField;
    ADOQuery1������_��������: TBooleanField;
    ADOQuery1��������������_�����: TWideStringField;
    ADOQuery1���������_���������: TWideStringField;
    ADOQuery1��������_�������������: TBooleanField;
    ADOQuery1����������_���: TBooleanField;
    ADOQuery1��_���������_����������: TWideStringField;
    ADOQuery1�����_�����_���: TWideStringField;
    ADOQuery1��������_������: TBooleanField;
    ADOQuery1�������_�������: TBooleanField;
    ADOQuery1�������_��_��������_����: TBooleanField;
    ADOQuery1����������_���_�����_��������: TBooleanField;
    ADOQuery1��������������_�����_�������: TWideStringField;
    ADOQuery1������������_��_������_�������: TBooleanField;
    ADOQuery1��_�������_��������_�����: TWideStringField;
    ADOQuery1�����_�������_�������_������: TBooleanField;
    ADOQuery1�����_�����_���_�������_�_�������_���_���: TWideStringField;
    ADOQuery1�������������_���������: TBooleanField;
    ADOQuery1�������_��������_������������: TBooleanField;
    ADOQuery1�������_��������: TBooleanField;
    ADOQuery1���������_������: TBooleanField;
    ADOQuery1��������_����������_����������: TBooleanField;
    ADOQuery1��_����������_����������: TIntegerField;
    ADOQuery1������������: TWideStringField;
    ADOQuery1������_������_��������: TBooleanField;
    ADOQuery1��_�������_������_��������: TWideStringField;
    ADOQuery1������_������������: TBooleanField;
    ADOQuery1��_�������_������������: TWideStringField;
    ADOQuery1������_�������: TBooleanField;
    ADOQuery1������_��������: TBooleanField;
    ADOQuery1�������������_������: TBooleanField;
    ADOQuery1����������: TBooleanField;
    ADOQuery1���������: TBooleanField;
    ADOQuery1��������_���������: TBooleanField;
    ADOQuery1����������: TBooleanField;
    ADOQuery1�����_��������: TBooleanField;
    ADOQuery1����_���������_��_����: TBooleanField;
    ADOQuery1������������_�������: TBooleanField;
    ADOQuery1����������_�����_��_��_�����: TBooleanField;
    ADOQuery1��������������_�����_��������_����������: TWideStringField;
    ADOQuery1�������������: TIntegerField;
    ADOQuery1�������: TIntegerField;
    ADOQuery1����_����_����������: TWideStringField;
    ADOQuery1������_��������: TWideStringField;
    ADOQuery1���������_��������: TWideStringField;
    ADOQuery1������������_���: TBooleanField;
    ADOQuery1������������_�����_���������: TBooleanField;
    ADOQuery1��_������������: TBooleanField;
    ADOQuery1�_�������_�������_���_���: TWideStringField;
    ADOQuery1�_�������_�������_���: TWideStringField;
    ADOQuery1�����_���������: TWideStringField;
    ADOQuery1InsUsr: TIntegerField;
    ADOQuery1InsDT: TDateTimeField;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText36: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    qryContractors: TADOQuery;
    qryContractorsid: TIntegerField;
    qryContractorsName: TWideStringField;
    qryContractorsCompany: TWideStringField;
    qryContractorsVAT: TWideStringField;
    qryContractorsInsUsr: TIntegerField;
    qryContractorsInsDT: TDateTimeField;
    qryContractorsNotes: TWideStringField;
    dtsContractors: TDataSource;
    qryDepartments: TADOQuery;
    qryDepartmentsid: TIntegerField;
    qryDepartmentsName: TWideStringField;
    ADOQuery1LDepartment: TStringField;
    ADOQuery1LContractor: TStringField;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText52: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    ADOQuery1���������_Value: TFloatField;
    ADOQuery1�2S_Value: TFloatField;
    ADOQuery1CO_Value: TFloatField;
    ADOQuery1O2_Value: TFloatField;
    ADOQuery1������_�������: TBooleanField;
    ADOQuery1��_�������_�������: TWideStringField;
    ADOQuery1Foreman_Id: TIntegerField;
    ADOQuery1�_�����_���_�����_���������_��������: TWideStringField;
    ADOQuery1�_��������_���������_���_������������: TWideStringField;
    ADOQuery1�������_��_����: TBooleanField;
    ADOQuery1FullFilled: TBooleanField;
    ADOQuery1FullFilledDT: TDateTimeField;
    ADOQuery1FullFilledUsr: TIntegerField;
    ADOQuery1FullFilledCancel: TBooleanField;
    ADOQuery1����������_�������_�������_������: TBooleanField;
    QRDBText62: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText73: TQRDBText;
    QRSubDetail13: TQRSubDetail;
    QRLabel33: TQRLabel;
    QRDBText63: TQRDBText;
    QRSubDetail14: TQRSubDetail;
    QRLabel34: TQRLabel;
    QRSubDetail15: TQRSubDetail;
    QRLabel35: TQRLabel;
    QRDBText78: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRDBText84: TQRDBText;
    QRDBText85: TQRDBText;
    QRDBText86: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText87: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText89: TQRDBText;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText75: TQRDBText;
    QRDBText76: TQRDBText;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRSubDetail16: TQRSubDetail;
    QRLabel48: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRDBText77: TQRDBText;
    QRDBText91: TQRDBText;
    QRDBText92: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText2: TQRDBText;
    QRSubDetail17: TQRSubDetail;
    QRLabel19: TQRLabel;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel18: TQRLabel;
    ADOQuery1���������_���������: TWideStringField;
    QRDBText66: TQRDBText;
    QRDBText93: TQRDBText;
    QRSysData1: TQRSysData;
    QRSubDetail18: TQRSubDetail;
    QRSubDetail19: TQRSubDetail;
    QRDBText94: TQRDBText;
    QRDBText95: TQRDBText;
    QRLabel52: TQRLabel;
    QRDBText97: TQRDBText;
    QRDBText98: TQRDBText;
    QRDBText99: TQRDBText;
    QRLabel53: TQRLabel;
    QRSubDetail20: TQRSubDetail;
    QRSubDetail21: TQRSubDetail;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRSubDetail22: TQRSubDetail;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    ADOQuery1��������_������������_�������: TBooleanField;
    ADOQuery1Airpack: TBooleanField;
    ADOQuery1��������_10_������: TBooleanField;
    ADOQuery1���������_���������_��������_��_������: TBooleanField;
    ADOQuery1�����_������: TBooleanField;
    ADOQuery1������������: TWideStringField;
    ADOQuery1�1_����������_����: TBooleanField;
    ADOQuery1�1_����������_����: TBooleanField;
    ADOQuery1�1_��������: TBooleanField;
    ADOQuery1�1_���������: TBooleanField;
    ADOQuery1�1_����������: TBooleanField;
    ADOQuery1�1_������: TBooleanField;
    ADOQuery1�1_��������: TBooleanField;
    ADOQuery1�1_����������: TBooleanField;
    ADOQuery1�1_����������_���_���������_����: TBooleanField;
    ADOQuery1�1_�������_����: TBooleanField;
    ADOQuery1�1_�������_����: TBooleanField;
    ADOQuery1�2_�����_���_����: TBooleanField;
    ADOQuery1�2_�����_�����: TBooleanField;
    ADOQuery1�2_����������_��������: TBooleanField;
    ADOQuery1�2_�������_��_�������_����: TBooleanField;
    ADOQuery1�2_�����_�����������: TBooleanField;
    ADOQuery1�2_�����������: TBooleanField;
    ADOQuery1�2_����������_��������: TBooleanField;
    ADOQuery1�2_������: TBooleanField;
    ADOQuery1�2_����_: TWideStringField;
    ADOQuery1�3_������_��_�����������: TBooleanField;
    ADOQuery1�3_��������_����������_�������_���_����: TBooleanField;
    ADOQuery1�3_H2S_��������: TBooleanField;
    ADOQuery1�3_HC_���������������: TBooleanField;
    ADOQuery1�3_����������_��������_SIMOPS: TBooleanField;
    ADOQuery1�3_��������: TBooleanField;
    ADOQuery1�3_�������_������������_����_ATEX: TBooleanField;
    ADOQuery1�3_�������: TBooleanField;
    ADOQuery1�3_����_: TWideStringField;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    ADOQuery1�1_�����������_������_���_����������_����_���_����������: TBooleanField;
    ADOQuery1�1_�����: TFloatField;
    ADOQuery1�1_�����������: TFloatField;
    ADOQuery1�������_����������: TWideStringField;
    ADOQuery1�������_�������: TWideStringField;
    QRDBText48: TQRDBText;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRDBText49: TQRDBText;
    QRDBText100: TQRDBText;
    QRDBText101: TQRDBText;
    QRDBText102: TQRDBText;
    QRDBText103: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText104: TQRDBText;
    QRDBText105: TQRDBText;
    QRDBText106: TQRDBText;
    QRDBText107: TQRDBText;
    QRDBText108: TQRDBText;
    QRDBText109: TQRDBText;
    QRDBText110: TQRDBText;
    QRDBText111: TQRDBText;
    QRDBText112: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel32: TQRLabel;
    QRSubDetail24: TQRSubDetail;
    QRLabel55: TQRLabel;
    QRDBText113: TQRDBText;
    QRDBText116: TQRDBText;
    QRDBText114: TQRDBText;
    QRDBText115: TQRDBText;
    QRDBText117: TQRDBText;
    QRDBText118: TQRDBText;
    QRDBText119: TQRDBText;
    QRDBText120: TQRDBText;
    QRDBText121: TQRDBText;
    QRDBText122: TQRDBText;
    QRDBText123: TQRDBText;
    QRDBText124: TQRDBText;
    QRDBText125: TQRDBText;
    QRLabel54: TQRLabel;
    QRDBText126: TQRDBText;
    QRSubDetail25: TQRSubDetail;
    QRLabel56: TQRLabel;
    QRDBText127: TQRDBText;
    QRDBText128: TQRDBText;
    QRDBText129: TQRDBText;
    QRDBText130: TQRDBText;
    QRDBText131: TQRDBText;
    QRDBText133: TQRDBText;
    QRDBText134: TQRDBText;
    QRLabel57: TQRLabel;
    QRDBText135: TQRDBText;
    QRDBText132: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText136: TQRDBText;
    QRDBText137: TQRDBText;
    QRDBText138: TQRDBText;
    QRDBText139: TQRDBText;
    QRShape15: TQRShape;
    QRDBText39: TQRDBText;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    ADOQuery1LDepartment_Foreman: TStringField;
    ADOQuery1Department_Foreman_Id: TIntegerField;
    qryDepartment_Foremen: TADOQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    QRSubDetail26: TQRSubDetail;
    QRLabel58: TQRLabel;
    QRSubDetail27: TQRSubDetail;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRDBText88: TQRDBText;
    ADOQuery1From_Id_Copy: TIntegerField;
    ADOQuery1Visible_Till: TDateTimeField;
    ADOQuery1Deleted: TBooleanField;
    ADOQuery1DelUsr: TIntegerField;
    ADOQuery1DelDT: TDateTimeField;
    ADOQuery1��_�������������: TWideStringField;
    QRLabel61: TQRLabel;
    QRDBText90: TQRDBText;
    ADOQuery1LFrom_Id_Copy: TStringField;
    ADOQuery1WorkStopped: TBooleanField;
    ADOQuery1WorkStoppedUsr: TIntegerField;
    ADOQuery1WorkStoppedDT: TDateTimeField;
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: string);
    procedure QRSubDetail5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail9BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail12BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail18BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail20BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail22BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail26BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail27BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail28BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ADOQuery1CalcFields(DataSet: TDataSet);
  private

  public

  end;

implementation

uses DMain, FPrnTran;

{$R *.DFM}

procedure TrptWorkPermitReport.QRExpr2Print(sender: TObject; var Value: String);
begin
  Value := format('%m', [(strtofloat(Value))]);
end;

procedure TrptWorkPermitReport.QRExpr3Print(sender: TObject; var Value: String);
begin
  Value := format('%f', [(strtofloat(Value))]);
end;

procedure TrptWorkPermitReport.ADOQuery1CalcFields(DataSet: TDataSet);
begin
  inherited;
  if ADOQuery1From_Id_Copy.AsInteger > 0 then
     ADOQuery1LFrom_Id_Copy.AsString := inttostr(ADOQuery1Id.AsInteger) + '(' + inttostr(ADOQuery1From_Id_Copy.AsInteger) + ')'
  else
    ADOQuery1LFrom_Id_Copy.AsString := inttostr(ADOQuery1Id.AsInteger);
end;

procedure TrptWorkPermitReport.QRDBText8Print(sender: TObject;
  var Value: string);
var TextDF, TextCH: string;
begin
  inherited;
  try
    if StrToBool(Value) then
    begin
       TQRDBText(sender).Font.Style := [fsBold];
       TQRDBText(sender).Font.Size := 8;
    end
    else
    begin
       TQRDBText(sender).Font.Style := [fsStrikeOut];
              TQRDBText(sender).Font.Size := 0;
       TQRDBText(sender).Height := 0;
    end;

    TextCH := TQRDBText(sender).HelpKeyword;
    if TextCH > '' then
       Value := TextCH
    else
       Value := TQRDBText(sender).DataField;
  except
     Value := '---';
  end;
end;

procedure TrptWorkPermitReport.QRExpr1Print(sender: TObject; var Value: String);
begin
  Value := format('%m', [(strtofloat(Value))]);
end;

procedure TrptWorkPermitReport.QRLabel8Print(sender: TObject; var Value: String);
begin
  inherited;
  if self.Owner is TfrmPrnTran then
    if TfrmPrnTran(self.Owner).ToDate > 0 then
      Value := '�������� ��� ' + datetostr(TfrmPrnTran(self.Owner).ToDate)
    else
      Value := ' '
  else
    Value := ' ';
end;

procedure TrptWorkPermitReport.QRSubDetail10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := ADOQuery1�������.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail12BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := ADOQuery1�������.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail18BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := Not ADOQuery1�������.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail20BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := Not ADOQuery1�������.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail22BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := Not ADOQuery1�������_��_�������_����.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail26BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := Not ADOQuery1�����_�������.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail27BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := Not ADOQuery1������������.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail28BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := Not ADOQuery1�������.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := ADOQuery1�������.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := ADOQuery1�������.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := ADOQuery1�������_��_�������_����.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := ADOQuery1�����_�������.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := ADOQuery1������������.AsBoolean;
end;

end.
