unit rApostolh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, DB, ADODB, QRCtrls, QuickRpt, ExtCtrls, QRExport,
  QRWebFilt, QRPDFFilt, QRXMLSFilt;

type
  TrptApostolh = class(TrptBaseAvinCard)
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    QRBand5: TQRBand;
    QRMemo2: TQRMemo;
    QRMemo1: TQRMemo;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText10: TQRDBText;
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
    ADOQuery1FullCardNo: TStringField;
    ADOQuery1AcardCodeFull: TWideStringField;
    procedure ADOQuery1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses DMain, Common;

{$R *.dfm}

procedure TrptApostolh.ADOQuery1CalcFields(DataSet: TDataSet);
begin
  inherited;
  ADOQuery1FullCardNo.AsString := ReturnFullIdNo(ADOQuery1ACARDACARDCODE.AsInteger);

  // Case AdoQuery1CUSTOMERCONTACTMRMS.AsInteger of
  // 1:begin
  // AdoQuery1MrMs.AsString:='Αγαπητέ κύριε';
  // end;
  // 2:begin
  // AdoQuery1MrMs.AsString:='Αγαπητή κυρία';
  // end;
  // 3:begin
  // AdoQuery1MrMs.AsString:='Αγαπητή/έ κυρία/ε';
  // end;
  // else
  // begin
  // AdoQuery1MrMs.AsString:='Αγαπητή/έ κυρία/ε';
  // end;
  // end;
end;

end.
