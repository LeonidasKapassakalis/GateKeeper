unit DPrnStatCall;

interface

uses
  System.SysUtils, System.Classes, DBase, Data.DB, Data.Win.ADODB, Forms, Common;

type
  TDMPrnStatCall = class(TDMBase)
    qryMerchant: TADOQuery;
    dtsMerchant: TDataSource;
    qryStation: TADOQuery;
    dtsStation: TDataSource;
    qryTerminal: TADOQuery;
    dtsTerminal: TDataSource;
    qryStationStationid: TAutoIncField;
    qryStationName: TWideStringField;
    qryStationSTREET: TWideStringField;
    qryStationZIP: TWideStringField;
    qryStationCITY: TWideStringField;
    qryStationAreaId: TIntegerField;
    qryStationSalesMenId: TIntegerField;
    qryStationIGroupId1: TIntegerField;
    qryStationPososto1: TFloatField;
    qryStationHaveGroup1: TBooleanField;
    qryStationIGroupId2: TIntegerField;
    qryStationPososto2: TFloatField;
    qryStationHaveGroup2: TBooleanField;
    qryStationIGroupId3: TIntegerField;
    qryStationPososto3: TFloatField;
    qryStationHaveGroup3: TBooleanField;
    qryStationIGroupId4: TIntegerField;
    qryStationPososto4: TFloatField;
    qryStationHaveGroup4: TBooleanField;
    qryStationIGroupId5: TIntegerField;
    qryStationPososto5: TFloatField;
    qryStationHaveGroup5: TBooleanField;
    qryStationIGroupId6: TIntegerField;
    qryStationPososto6: TFloatField;
    qryStationHaveGroup6: TBooleanField;
    qryStationIGroupId7: TIntegerField;
    qryStationPososto7: TFloatField;
    qryStationHaveGroup7: TBooleanField;
    qryStationIGroupId8: TIntegerField;
    qryStationPososto8: TFloatField;
    qryStationHaveGroup8: TBooleanField;
    qryStationIGroupId9: TIntegerField;
    qryStationPososto9: TFloatField;
    qryStationHaveGroup9: TBooleanField;
    qryStationIGroupId10: TIntegerField;
    qryStationPososto10: TFloatField;
    qryStationHaveGroup10: TBooleanField;
    qryStationDeleted: TBooleanField;
    qryStationDelUsr: TIntegerField;
    qryStationDelDT: TDateTimeField;
    qryStationInActive: TBooleanField;
    qryStationInActiveUsr: TIntegerField;
    qryStationInActiveDt: TDateTimeField;
    qryStationStopSales: TBooleanField;
    qryStationStopSalesUsr: TIntegerField;
    qryStationStopSalesDt: TDateTimeField;
    qryTerminalTerminalid: TIntegerField;
    qryTerminalTerminalCode: TWideStringField;
    qryTerminalTerminalSerialNo: TWideStringField;
    qryTerminalTerminalType: TIntegerField;
    qryTrCallDate: TADOQuery;
    dtsTrCallDate: TDataSource;
    qryTrCallDateTRCALLID: TAutoIncField;
    qryTrCallDateTRCALLDATE: TDateTimeField;
    qryTrCallDateTRCALLAUTOUPDATE: TBooleanField;
    qryTrCallDateTRCALLAUTOUPDATECNT: TIntegerField;
    qryTrCallDateTRCALLAUTOUPDATECNTST: TIntegerField;
    qryTrCallDateTRCALLAUTOUPDATECNTST0: TIntegerField;
    qryTrCallDateTRCALLMANUPDATE: TBooleanField;
    qryTrCallDateTRCALLENHMPELA: TBooleanField;
    qryTrCallDateTRCALLENHMPRAT: TBooleanField;
    qryTrCallDateINSDT: TDateTimeField;
    qryTrCallDateUPDDT: TDateTimeField;
    qryTrCallDateINSUSR: TIntegerField;
    qryTrCallDateUPDUSR: TIntegerField;
    qryTrCallDateTRCALLAUTOUPDATECNTDEL: TIntegerField;
    qryMerchantMerchantId: TIntegerField;
    qryMerchantName: TWideStringField;
    qryMerchantSAPCode: TWideStringField;
    qryMerchantStreet: TWideStringField;
    qryMerchantZIP: TWideStringField;
    qryMerchantCity: TWideStringField;
    qryMerchantAFM: TWideStringField;
    qryMerchantDOY: TWideStringField;
    qryMerchantISTEST: TBooleanField;
    qryMerchantAreaId: TIntegerField;
    qryMerchantMerchantCode: TWideStringField;
    qryMerchantSalesMenId: TIntegerField;
    qryMerchantInsUsr: TIntegerField;
    qryMerchantInsDT: TDateTimeField;
    qryMerchantUpdUsr: TIntegerField;
    qryMerchantUpdDT: TDateTimeField;
    qryMerchantDeleted: TBooleanField;
    qryMerchantDelUsr: TIntegerField;
    qryMerchantDelDT: TDateTimeField;
    qryMerchantInActive: TBooleanField;
    qryMerchantInActiveUsr: TIntegerField;
    qryMerchantInActiveDt: TDateTimeField;
    qryMerchantStopSales: TBooleanField;
    qryMerchantStopSalesUsr: TIntegerField;
    qryMerchantStopSalesDt: TDateTimeField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }

uses DMain;

{$R *.dfm}

procedure TDMPrnStatCall.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMCreate(TForm(self));
end;

end.
