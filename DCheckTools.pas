unit DCheckTools;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, DBase, ADODB, ExtDlgs, Common;

type
  TDMCheckTools = class(TDMBase)
    qryTerminal_Not_Connected: TADOQuery;
    qryTerminal_Not_ConnectedTerminalid: TIntegerField;
    qryTerminal_Not_ConnectedTerminalCode: TWideStringField;
    qryTerminal_Not_ConnectedTerminalSerialNo: TWideStringField;
    qryTerminal_Not_ConnectedCreateBoolean: TBooleanField;
    qryTerminal_Not_ConnectedPending: TBooleanField;
    qryTerminal_Not_ConnectedStationTerminalId: TIntegerField;
    dtsTerminal_Not_Connected: TDataSource;
    qryStation_Not_Connected_2_Merchant: TADOQuery;
    dtsStation_Not_Connected_2_Mer: TDataSource;
    qryStation_Not_Connected_2_MerchantStationid: TIntegerField;
    qryStation_Not_Connected_2_MerchantName: TWideStringField;
    qryStation_Not_Connected_2_MerchantSTREET: TWideStringField;
    qryStation_Not_Connected_2_MerchantZIP: TWideStringField;
    qryStation_Not_Connected_2_MerchantCITY: TWideStringField;
    qryStation_Not_Connected_2_MerchantMerchantStationId: TIntegerField;
    qryStation_Not_Connected_2_Terminals: TADOQuery;
    dtsStation_Not_Connected_2_Ter: TDataSource;
    qryStation_Not_Connected_2_TerminalsStationid: TIntegerField;
    qryStation_Not_Connected_2_TerminalsName: TWideStringField;
    qryStation_Not_Connected_2_TerminalsSTREET: TWideStringField;
    qryStation_Not_Connected_2_TerminalsStationTerminalId: TIntegerField;
    qryStation_Not_Connected_2_TerminalsZIP: TWideStringField;
    qryStation_Not_Connected_2_TerminalsCITY: TWideStringField;
    qryMerchant_Not_Connected: TADOQuery;
    dtsMerchant_Not_Connected: TDataSource;
    qryMerchant_Not_ConnectedMerchantId: TIntegerField;
    qryMerchant_Not_ConnectedName: TWideStringField;
    qryMerchant_Not_ConnectedStreet: TWideStringField;
    qryMerchant_Not_ConnectedZIP: TWideStringField;
    qryMerchant_Not_ConnectedCity: TWideStringField;
    qryMerchant_Not_ConnectedMerchantStationId: TIntegerField;
    qryCCExists: TADOQuery;
    dtsCCExists: TDataSource;
    qrySCExists: TADOQuery;
    dtsSCExists: TDataSource;
    qryMCExists: TADOQuery;
    dtsMCExists: TDataSource;
    qryCCExistsCUSTOMERID: TIntegerField;
    qryCCExistsNAME: TWideStringField;
    qryCCExistsZIP: TWideStringField;
    qryCCExistsSTREET: TWideStringField;
    qryCCExistsCITY: TWideStringField;
    qryCCExistsAFM: TWideStringField;
    qryCCExistsCheckSt: TIntegerField;
    qryCCExistsCUSTOMERCUSTOMERID: TIntegerField;
    qrySCExistsStationStationId: TIntegerField;
    qrySCExistsCheckSt: TIntegerField;
    qrySCExistsStationid: TIntegerField;
    qrySCExistsName: TWideStringField;
    qrySCExistsSTREET: TWideStringField;
    qrySCExistsZIP: TWideStringField;
    qrySCExistsCITY: TWideStringField;
    qryMCExistsName: TWideStringField;
    qryMCExistsStreet: TWideStringField;
    qryMCExistsZIP: TWideStringField;
    qryMCExistsMerchantId: TIntegerField;
    qryMCExistsCity: TWideStringField;
    qryMCExistsMerchantMerchantId: TIntegerField;
    qryMCExistsCheckSt: TIntegerField;
    VariantsMemWsMain: TADOTable;
    VariantsMemWsMainid: TAutoIncField;
    VariantsMemWsMainName: TWideStringField;
    VariantsMemWsMainPerig: TWideStringField;
    VariantsMemWsMainClassFormName: TWideStringField;
    VariantsMemWsMainInsUsr: TIntegerField;
    VariantsMemWsMainInsDT: TDateTimeField;
    VariantsMemWsMainUpdUsr: TIntegerField;
    VariantsMemWsMainUpdDT: TDateTimeField;
    VariantsMemWsMainDeleted: TBooleanField;
    VariantsMemWsMainDelUsr: TIntegerField;
    VariantsMemWsMainDelDT: TDateTimeField;
    VariantsMemWsMainSubsequentAction: TWideStringField;
    VariantsMemWsMainSubsequentComments: TWideStringField;
    VariantsMemWsMainSubsequentMail: TWideStringField;
    VariantsMemWsDetail: TADOTable;
    VariantsMemWsDetailId: TAutoIncField;
    VariantsMemWsDetailVariantId: TIntegerField;
    VariantsMemWsDetailCalcAsValue: TBooleanField;
    VariantsMemWsDetailFieldName: TWideStringField;
    VariantsMemWsDetailFieldType: TIntegerField;
    VariantsMemWsDetailFieldValue: TWideStringField;
    VariantsMemWsDetailLVariantName: TStringField;
    dsVariantsMemWsMain: TDataSource;
    dsVariantsMemWsDetail: TDataSource;
    VariantsMemWsDetailCalcType: TWideStringField;
    VariantsMemWsMainSubsequentAutoClose: TBooleanField;
    VariantsMemWsMainSubsequentActivateTrans: TBooleanField;
    VariantsMemWsMainSubsequentAutoExec: TBooleanField;
    VariantsMemWsMainSubsequentLogSection: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    MainTable: TTable;
  end;

implementation

uses DMain;

{$R *.DFM}

procedure TDMCheckTools.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMCreate(TForm(self));
end;

end.
