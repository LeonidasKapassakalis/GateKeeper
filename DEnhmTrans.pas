unit DEnhmTrans;

interface

uses
  System.SysUtils, System.Classes, DBase, Data.DB, Data.Win.ADODB, Forms, Common;

type
  TDMEnhmTrans = class(TDMBase)
    qryEnhmDlCall: TADOQuery;
    qryEnhmDlCallENDLCALLID: TAutoIncField;
    qryEnhmDlCallENDLCALLDATE: TDateTimeField;
    qryEnhmDlCallENDLCALLTRY: TIntegerField;
    qryEnhmDlCallINSDT: TDateTimeField;
    qryEnhmDlCallUPDDT: TDateTimeField;
    qryEnhmDlCallINSUSR: TIntegerField;
    qryEnhmDlCallUPDUSR: TIntegerField;
    qryEnhmDlCallENDLCALLFROM: TIntegerField;
    dtsEnhmDlCall: TDataSource;
    qryENHMCOCALL: TADOQuery;
    dtsENHMCOCALL: TDataSource;
    qryENHMDISCALL: TADOQuery;
    dtsENHMDISCALL: TDataSource;
    qryENHMSTCALL: TADOQuery;
    dtsENHMSTCALL: TDataSource;
    qryENHMCOCALLENCCALLID: TAutoIncField;
    qryENHMCOCALLENCCALLDATE: TDateTimeField;
    qryENHMCOCALLINSDT: TDateTimeField;
    qryENHMCOCALLUPDDT: TDateTimeField;
    qryENHMCOCALLINSUSR: TIntegerField;
    qryENHMCOCALLUPDUSR: TIntegerField;
    qryENHMDISCALLENHMDISCALLID: TAutoIncField;
    qryENHMDISCALLENHMDISCALLDATE: TDateTimeField;
    qryENHMDISCALLINSDT: TDateTimeField;
    qryENHMDISCALLUPDDT: TDateTimeField;
    qryENHMDISCALLINSUSR: TIntegerField;
    qryENHMDISCALLUPDUSR: TIntegerField;
    qryENHMSTCALLENSCALLID: TAutoIncField;
    qryENHMSTCALLENSCALLDATE: TDateTimeField;
    qryENHMSTCALLINSDT: TDateTimeField;
    qryENHMSTCALLUPDDT: TDateTimeField;
    qryENHMSTCALLINSUSR: TIntegerField;
    qryENHMSTCALLUPDUSR: TIntegerField;
    qryENHMSTCALLENSCALLFROM: TIntegerField;
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
    qryEnhmPeCall: TADOQuery;
    qryEnhmPeCallENPCALLID: TAutoIncField;
    qryEnhmPeCallENPCALLDATE: TDateTimeField;
    qryEnhmPeCallINSDT: TDateTimeField;
    qryEnhmPeCallUPDDT: TDateTimeField;
    qryEnhmPeCallINSUSR: TIntegerField;
    qryEnhmPeCallUPDUSR: TIntegerField;
    qryEnhmPeCallENPCALLFROM: TIntegerField;
    dtsEnhmPeCall: TDataSource;
    qryEnhmDlCallENDLCALLDATETRY: TStringField;
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

procedure TDMEnhmTrans.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMCreate(TForm(self));
end;

end.
