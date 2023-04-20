unit rAcardGrComp1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, QRExport, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB,
  QRWebFilt, QRPDFFilt, QRXMLSFilt;

type
  TrptAcardGrComp1 = class(TrptBaseAvinCard)
    QRGroup1: TQRGroup;
    QRImage1: TQRImage;
    QRSysData5: TQRSysData;
    QRSysData8: TQRSysData;
    QRTextFilter2: TQRTextFilter;
    QRCSVFilter2: TQRCSVFilter;
    QRExcelFilter2: TQRExcelFilter;
    QRRTFFilter2: TQRRTFFilter;
    QRWMFFilter2: TQRWMFFilter;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    ADOQuery1: TADOQuery;
    ADOQuery1FullCardNo: TStringField;
    DataSource1: TDataSource;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText4: TQRDBText;
    qryEmployees: TADOQuery;
    qryEmployeesId: TAutoIncField;
    qryEmployeesCustomerId: TIntegerField;
    qryEmployeesMhtrId: TIntegerField;
    qryEmployeesName: TWideStringField;
    qryEmployeesSurName: TWideStringField;
    qryEmployeesAddress: TWideStringField;
    qryEmployeesTK: TWideStringField;
    qryEmployeesTown: TWideStringField;
    qryEmployeesAFM: TWideStringField;
    qryEmployeesDOY: TWideStringField;
    qryEmployeesYpokId: TIntegerField;
    qryEmployeesLNameSurname: TStringField;
    ADOQuery1LEmpName: TStringField;
    ADOQuery1LEmpMhtrId: TStringField;
    QRDBText3: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    ADOQuery1ACARDACARDID: TIntegerField;
    ADOQuery1ACARDACARDCODE: TWideStringField;
    ADOQuery1ACARDCUSTOMERID0: TIntegerField;
    ADOQuery1ACARDISSUEDATE: TDateTimeField;
    ADOQuery1ACARDEXPIREDATE: TDateTimeField;
    ADOQuery1ACARDMETERBOOLEAN: TBooleanField;
    ADOQuery1ACARDPINBOOLEAN: TBooleanField;
    ADOQuery1ACARDINSDT: TDateTimeField;
    ADOQuery1ACARDUPDDT: TDateTimeField;
    ADOQuery1ACARDINSUSR: TIntegerField;
    ADOQuery1ACARDUPDUSR: TIntegerField;
    ADOQuery1ACARDSTARTDATE: TDateTimeField;
    ADOQuery1ACARDVTYPEID: TIntegerField;
    ADOQuery1ACARDCREATEBOOLEAN: TBooleanField;
    ADOQuery1ACARDBLACKLISTBOOLEAN: TBooleanField;
    ADOQuery1ACARDBLACKLISTDATE: TDateTimeField;
    ADOQuery1ACARDBLACKLISTUSR: TIntegerField;
    ADOQuery1ACARDBLACKLISTNOTES: TWideStringField;
    ADOQuery1ACARDIGROUPID1: TIntegerField;
    ADOQuery1ACARDIGROUPID2: TIntegerField;
    ADOQuery1ACARDIGROUPID3: TIntegerField;
    ADOQuery1ACARDIGROUPID4: TIntegerField;
    ADOQuery1DAYAMOUNT: TFloatField;
    ADOQuery1MONTHAMOUNT: TFloatField;
    ADOQuery1REGNO: TWideStringField;
    ADOQuery1ACARDHOLDER: TWideStringField;
    ADOQuery1ISACTIVE: TBooleanField;
    ADOQuery1EXPIREPHDATE: TDateTimeField;
    ADOQuery1EXPIRELODATE: TDateTimeField;
    ADOQuery1ACARDIGROUPID5: TIntegerField;
    ADOQuery1EMPLOYEESID: TIntegerField;
    ADOQuery1NEWCARDBOOLEAN: TBooleanField;
    ADOQuery1NEWCARDID: TIntegerField;
    ADOQuery1CARDHASEMPNAME: TBooleanField;
    ADOQuery1ACARDCODENUM: TIntegerField;
    ADOQuery1INACTIVEDATE: TDateTimeField;
    ADOQuery1INACTIVEUSR: TIntegerField;
    ADOQuery1INACTIVENOTES: TWideStringField;
    ADOQuery1ACARDIGROUPID6: TIntegerField;
    ADOQuery1ACARDIGROUPID7: TIntegerField;
    ADOQuery1ACARDIGROUPID8: TIntegerField;
    ADOQuery1ACARDIGROUPID9: TIntegerField;
    ADOQuery1ACARDIGROUPID10: TIntegerField;
    ADOQuery1COSTCENTERID: TIntegerField;
    ADOQuery1VTypeDescr: TWideStringField;
    ADOQuery1CClassDescr: TWideStringField;
    ADOQuery1CUSTOMERDescr: TWideStringField;
    ADOQuery1CUSTOMERName: TWideStringField;
    ADOQuery1CGroupDescr: TWideStringField;
    ADOQuery1AcardCUSTOMERId: TIntegerField;
    ADOQuery1CUSTOMERStreet: TWideStringField;
    ADOQuery1CUSTOMERZip: TWideStringField;
    ADOQuery1CUSTOMERCity: TWideStringField;
    ADOQuery1CUSTOMERSAPCODE: TWideStringField;
    ADOQuery1CUSTOMERHASDETAILEMP: TBooleanField;
    ADOQuery1CUSTOMERCUSTOMERID: TIntegerField;
    ADOQuery1CUSTOMERISTEST: TBooleanField;
    ADOQuery1CostCenterCCName: TWideStringField;
    ADOQuery1ACARDPENDING: TBooleanField;
    ADOQuery1AcardCodeFull: TWideStringField;
    procedure qryEmployeesCalcFields(DataSet: TDataSet);
    procedure ADOQuery1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptAcardGrComp1: TrptAcardGrComp1;

implementation

uses DMain, Common;

{$R *.dfm}

procedure TrptAcardGrComp1.qryEmployeesCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryEmployeesLNameSurname.AsString := Trim(qryEmployeesName.AsString) + ' ' + Trim(qryEmployeesSurName.AsString);
end;

procedure TrptAcardGrComp1.ADOQuery1CalcFields(DataSet: TDataSet);
begin
  inherited;
  ADOQuery1FullCardNo.AsString := ReturnFullIdNo(ADOQuery1ACARDACARDCODE.AsInteger);
end;

end.
