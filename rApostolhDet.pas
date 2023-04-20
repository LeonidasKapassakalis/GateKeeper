unit rApostolhDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, DB, ADODB, QRCtrls, QuickRpt, ExtCtrls, QRExport,
  QRWebFilt, QRPDFFilt, QRXMLSFilt;

type
  TrptApostolhDet = class(TrptBaseAvinCard)
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    ADOQuery1: TADOQuery;
    ADOQuery1LProd1: TStringField;
    ADOQuery1LProd2: TStringField;
    ADOQuery1LProd3: TStringField;
    ADOQuery1LProd4: TStringField;
    ADOQuery1LProd5: TStringField;
    ADOQuery1LProd6: TStringField;
    ADOQuery1LProd7: TStringField;
    ADOQuery1LProd8: TStringField;
    ADOQuery1LProd9: TStringField;
    ADOQuery1LProd10: TStringField;
    ADOQuery1Pass: TStringField;
    ADOQuery1Pukk: TStringField;
    DataSource1: TDataSource;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
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
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    qryIGroup: TADOQuery;
    qryIGroupId: TAutoIncField;
    qryIGroupName: TWideStringField;
    procedure ADOQuery1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses DMain, Common;

{$R *.dfm}

procedure TrptApostolhDet.ADOQuery1CalcFields(DataSet: TDataSet);
begin
  inherited;
  // AdoQuery1FullCardNo.AsString :=ReturnFullIdNo(AdoQuery1AcardCode.AsInteger);
  ADOQuery1Pass.AsString := ReturnPass(ADOQuery1AcardCodeFull.AsString);
  ADOQuery1Pukk.AsString := ReturnPukk(ADOQuery1AcardCodeFull.AsString);
end;

end.
