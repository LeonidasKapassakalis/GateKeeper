unit rCustomer2;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB, DMain;

type
  TrptCustomer2 = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    qryCustomer: TADOQuery;
    dtsStation: TDataSource;
    qryCustomerFName: TStringField;
    qryCustomerMrMs2: TStringField;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    qryCustomerCUSTOMERID: TAutoIncField;
    qryCustomerNAME: TWideStringField;
    qryCustomerSTREET: TWideStringField;
    qryCustomerZIP: TWideStringField;
    qryCustomerCITY: TWideStringField;
    qryCustomerAFM: TWideStringField;
    qryCustomerDOY: TWideStringField;
    qryCustomerSTARTDATE: TDateTimeField;
    qryCustomerAREAID: TIntegerField;
    qryCustomerLOCATIONID: TIntegerField;
    qryCustomerCGROUPID: TIntegerField;
    qryCustomerCCLASSID: TIntegerField;
    qryCustomerCREDITAMOUNT: TFloatField;
    qryCustomerINSDT: TDateTimeField;
    qryCustomerUPDDT: TDateTimeField;
    qryCustomerINSUSR: TIntegerField;
    qryCustomerUPDUSR: TIntegerField;
    qryCustomerPROFESSION: TWideStringField;
    qryCustomerBRANCHID: TIntegerField;
    qryCustomerSAPCODE: TWideStringField;
    qryCustomerISACTIVE: TBooleanField;
    qryCustomerSALESMENID: TIntegerField;
    qryCustomerDIAKID: TIntegerField;
    qryCustomerISTEST: TBooleanField;
    qryCustomerISCONS: TBooleanField;
    qryCustomerAREABID: TIntegerField;
    qryCustomerDATEPHEND: TDateTimeField;
    qryCustomerDATELOEND: TDateTimeField;
    qryCustomerHASDETAILEMP: TBooleanField;
    qryCustomerALLCARDSTOBL: TBooleanField;
    qryCustomerALLCARDSTOBLDATE: TDateTimeField;
    qryCustomerALLCARDSTOBLSYSDATE: TDateTimeField;
    qryCustomerALLCARDSTOBLUSR: TIntegerField;
    qryCustomerCUSTOMEROFF: TBooleanField;
    qryCustomerCUSTOMEROFFDATE: TDateTimeField;
    qryCustomerCUSTOMEROFFSYSDATE: TDateTimeField;
    qryCustomerCUSTOMEROFFUSR: TIntegerField;
    qryCustomerCARDHASEMPNAME: TBooleanField;
    qryCustomerDATEEND: TDateTimeField;
    qryContacts: TADOQuery;
    qryContactsCUSTOMERID: TIntegerField;
    qryContactsContactsSurname: TWideStringField;
    qryContactsContactsName: TWideStringField;
    qryContactsemail: TWideStringField;
    qryContactsPhone: TWideStringField;
    qryContactsFax: TWideStringField;
    qryContactsMobile: TWideStringField;
    qryContactsMailORFax: TIntegerField;
    qryContactsMain: TBooleanField;
    qryContactsAA: TIntegerField;
    qryContactsContactType_Procedure: TWideStringField;
    qryContactsSendMail: TBooleanField;
    qryContactsSendFax: TBooleanField;
    qryContactsSendPrint: TBooleanField;
    qryContactsContactTypeId: TIntegerField;
    qryContactsCustomerName: TWideStringField;
    qryContactsFName: TStringField;
    qryCustomerLSName: TStringField;
    procedure qryCustomerCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  rptCustomer2: TrptCustomer2;

implementation

{$R *.DFM}

procedure TrptCustomer2.qryCustomerCalcFields(DataSet: TDataSet);
begin
  // Fix
  // Case qryCustomerCONTACTMRMS.AsInteger of
  // 1:begin
  // qryCustomerMrMs2.AsString:=' Ô';
  // end;
  // 2:begin
  // qryCustomerMrMs2.AsString:=' ·';
  // end;
  // 3:begin
  // qryCustomerMrMs2.AsString:='  ';
  // end;
  // end;

  qryContactsFName.AsString := Trim(qryContactsContactsSurname.AsString + ' ' + qryContactsContactsName.AsString);
end;

end.
