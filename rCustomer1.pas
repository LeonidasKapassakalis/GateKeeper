unit RCustomer1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, QRCtrls, DB, ADODB, QuickRpt, ExtCtrls, QRWebFilt,
  QRPDFFilt, QRExport, DMain, QRXMLSFilt;

type
  TrptCustomer1 = class(TrptBaseAvinCard)
    qryCustomer: TADOQuery;
    qryCustomerFText: TBlobField;
    dtsStation: TDataSource;
    qryCustomerMrMs1: TStringField;
    qryCustomerMrMs2: TStringField;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand1: TQRBand;
    QRDBRichText1: TQRDBRichText;
    qryCustomerFName: TStringField;
    qryCustomerCUSTOMERID: TIntegerField;
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
    qryCustomerCompanyTypeId: TIntegerField;
    procedure qryCustomerCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptCustomer1: TrptCustomer1;

implementation

{$R *.dfm}

procedure TrptCustomer1.qryCustomerCalcFields(DataSet: TDataSet);
begin
  inherited;
  // Fix
  // Case qryCustomerCONTACTMRMS.AsInteger of
  // 1:begin
  // qryCustomerMrMs1.AsString:='Αγαπητέ κύριε';
  // qryCustomerMrMs2.AsString:='Κο';
  // end;
  // 2:begin
  // qryCustomerMrMs1.AsString:='Αγαπητή κυρία';
  // qryCustomerMrMs2.AsString:='Κα';
  // end;
  // 3:begin
  // qryCustomerMrMs1.AsString:='Αγαπητή/έ κυρία/ε';
  // qryCustomerMrMs2.AsString:='  ';
  // end;
  // end;
  //
  // qryCustomerFName.AsString:=qryCustomerLASTNAME.AsString + ' ' + qryCustomerFIRSTNAME.AsString;
end;

end.
