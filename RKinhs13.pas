unit RKinhs13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, QRCtrls, QuickRpt, ExtCtrls, DB,
  ADODB, QRExport, VCLTee.TeEngine, VCLTee.TeeProcs,
  QRWebFilt, QRPDFFilt, VCLTee.TeeGDIPlus, VCLTee.Series, VCLTee.Chart,
  VCLTee.DBChart, DMain, QRXMLSFilt, QrTee;

type
  TrptKinhs13 = class(TrptBaseAvinCard)
    dtsTran: TDataSource;
    qryTran: TADOQuery;
    qrySItem: TADOQuery;
    qrySItemSITEMID: TAutoIncField;
    qrySItemDESCR: TWideStringField;
    qrySItemIGROUPID: TIntegerField;
    qrySItemICLASSID: TIntegerField;
    qrySItemPOSOSTO: TFloatField;
    qrySItemCODEINTERMINAL: TIntegerField;
    qrySItemINSDT: TDateTimeField;
    qrySItemUPDDT: TDateTimeField;
    qrySItemINSUSR: TIntegerField;
    qrySItemUPDUSR: TIntegerField;
    QCustomer: TADOQuery;
    QRBand1: TQRBand;
    qryTranCustomerCustomerId: TAutoIncField;
    qryTranCountKinhs: TIntegerField;
    qryTranSumAmount: TFloatField;
    qryTranSumQuantity: TFloatField;
    QCustomerCUSTOMERID: TAutoIncField;
    QCustomerNAME: TWideStringField;
    QCustomerSTREET: TWideStringField;
    QCustomerZIP: TWideStringField;
    QCustomerCITY: TWideStringField;
    QCustomerAFM: TWideStringField;
    QCustomerDOY: TWideStringField;
    QCustomerPHONE1: TWideStringField;
    QCustomerPHONE2: TWideStringField;
    QCustomerMOBILE: TWideStringField;
    QCustomerFAX: TWideStringField;
    QCustomerSTARTDATE: TDateTimeField;
    QCustomerAREAID: TIntegerField;
    QCustomerLOCATIONID: TIntegerField;
    QCustomerCGROUPID: TIntegerField;
    QCustomerCCLASSID: TIntegerField;
    QCustomerCREDITAMOUNT: TFloatField;
    QCustomerINSDT: TDateTimeField;
    QCustomerUPDDT: TDateTimeField;
    QCustomerINSUSR: TIntegerField;
    QCustomerUPDUSR: TIntegerField;
    QCustomerPROFESSION: TWideStringField;
    QCustomerEMAIL: TWideStringField;
    QCustomerLASTNAME: TWideStringField;
    QCustomerFIRSTNAME: TWideStringField;
    QCustomerMETERBOOLEAN: TBooleanField;
    QCustomerPINBOOLEAN: TBooleanField;
    QCustomerIGROUPID1: TIntegerField;
    QCustomerIGROUPID2: TIntegerField;
    QCustomerIGROUPID3: TIntegerField;
    QCustomerIGROUPID4: TIntegerField;
    QCustomerDAYAMOUNT: TFloatField;
    QCustomerMONTHAMOUNT: TFloatField;
    QCustomerBRANCHID: TIntegerField;
    QCustomerSAPCODE: TWideStringField;
    QCustomerISACTIVE: TBooleanField;
    QCustomerSALESMENID: TIntegerField;
    qryTranCustomerName: TStringField;
    QRDBChart1: TQRDBChart;
    QRChart1: TQRChart;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
