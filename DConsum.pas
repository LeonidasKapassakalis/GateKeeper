unit DConsum;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDMConsum = class(TDataModule)
    SPSumfromtoGR: TADOStoredProc;
    SPSumfromtoGRSumQuantity: TFloatField;
    SPSumfromtoGRSumAmount: TFloatField;
    ADOStoredProc2: TADOStoredProc;
    ADOStoredProc2Quantity: TFloatField;
    ADOStoredProc2KMAfter: TIntegerField;
    ADOStoredProc2AMOUNT: TFloatField;
    ADOStoredProc3: TADOStoredProc;
    ADOStoredProc3Quantity: TFloatField;
    ADOStoredProc3KMAfter: TIntegerField;
    ADOStoredProc3Amount: TFloatField;
    ADOStoredProc4: TADOStoredProc;
    ADOStoredProc4QUANTITY: TFloatField;
    ADOStoredProc4AMOUNT: TFloatField;
    ADOStoredProc4KMAFTER: TIntegerField;
    SPSumfromto: TADOStoredProc;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    ADOStoredProc5: TADOStoredProc;
    FloatField3: TFloatField;
    IntegerField1: TIntegerField;
    FloatField4: TFloatField;
    ADOStoredProc6: TADOStoredProc;
    FloatField5: TFloatField;
    IntegerField2: TIntegerField;
    FloatField6: TFloatField;
    ADOStoredProc7: TADOStoredProc;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    IntegerField3: TIntegerField;
  private
    { Private declarations }
  public
    function ReturnConsumptionGroup(Card: Integer; FromDT, ToDT: TDateTime; ProductGroup: Integer; var ConLtr: Real; var ConEur: Real; var KMDone: Integer;
      Var Milieage: String): Boolean;
    function ReturnConsumptionItem(Card: Integer; FromDT, ToDT: TDateTime; Product: Integer; var ConLtr: Real; var ConEur: Real; var KMDone: Integer; Var Milieage: String)
      : Boolean;
  end;

implementation

uses DMain;

{$R *.dfm}

function TDMConsum.ReturnConsumptionGroup(Card: Integer; FromDT, ToDT: TDateTime; ProductGroup: Integer; var ConLtr: Real; var ConEur: Real; var KMDone: Integer;
  Var Milieage: String): Boolean;
var
  Quant, Quant1, Quant2, PQuant, Mil: Real;
  Amount, Amount1, Amount2, PAmount, MilAmount: Real;
  Km1, Km2, PKm: Integer;
  Proced2: Boolean;
begin
  try
    SPSumfromtoGR.Active                                  := False;
    SPSumfromtoGR.Parameters.ParamByName(':PACard').Value := Card;
    SPSumfromtoGR.Parameters.ParamByName(':PProductGroup').Value := ProductGroup;
    SPSumfromtoGR.Parameters.ParamByName(':PDateFrom').Value := FromDT;
    SPSumfromtoGR.Parameters.ParamByName(':PDateTo').Value := ToDT;
    SPSumfromtoGR.Active := True;
    Quant                := SPSumfromtoGRSumQuantity.AsFloat;
    Amount               := SPSumfromtoGRSumAmount.AsFloat;
    if SPSumfromtoGR.IsEmpty then
      begin
        Milieage := '';
        Result   := False;
        exit;
      end;
    if (Not(Quant > 0)) then
      begin
        Milieage := '';
        Result   := False;
        exit;
      end;
  except
    Quant  := 0;
    Amount := 0;
  end;

  SPSumfromtoGR.Active := False;

  try
    ADOStoredProc2.Active                                 := False;
    ADOStoredProc2.Parameters.ParamByName('PACard').Value := Card;
    ADOStoredProc2.Parameters.ParamByName('PProductGroup').Value := ProductGroup;
    ADOStoredProc2.Parameters.ParamByName('PDateFrom').Value := FromDT;
    ADOStoredProc2.Active := True;
    if ADOStoredProc2.IsEmpty then
      begin
        Quant2  := 1;
        Amount2 := 0;
        Km2     := 1;
        Proced2 := False;
      end
    else
      begin
        ADOStoredProc2.First;
        Quant2  := ADOStoredProc2Quantity.AsFloat;
        Amount2 := ADOStoredProc2AMOUNT.AsFloat;
        Km2     := ADOStoredProc2KMAfter.AsInteger;
        Proced2 := True;
      end;
  except
    Quant2  := 0;
    Amount2 := 0;
    Km2     := 0;
    Proced2 := False;
  end;

  ADOStoredProc2.Active := False;

  try
    ADOStoredProc3.Active                                 := False;
    ADOStoredProc3.Parameters.ParamByName('PACard').Value := Card;
    ADOStoredProc3.Parameters.ParamByName('PProductGroup').Value := ProductGroup;
    ADOStoredProc3.Parameters.ParamByName('PDateFrom').Value := FromDT;
    ADOStoredProc3.Parameters.ParamByName('PDateTo').Value := ToDT;
    ADOStoredProc3.Active := True;
    if ADOStoredProc3.IsEmpty then
      begin
        Quant1  := 1;
        Amount1 := 0;
        Km1     := 1;
      end
    else
      begin
        ADOStoredProc3.First;
        Quant1  := ADOStoredProc3Quantity.AsFloat;
        Amount1 := ADOStoredProc3Amount.AsFloat;
        Km1     := ADOStoredProc3KMAfter.AsInteger;
      end;
  except
    Quant1  := 0;
    Amount1 := 0;
    Km1     := 0;
  end;

  ADOStoredProc3.Active := False;

  if Proced2 = False then
    begin
      try
        ADOStoredProc4.Active := False;
        ADOStoredProc4.Parameters.ParamByName('PACard').Value := Card;
        ADOStoredProc4.Parameters.ParamByName('PProductGroup').Value := ProductGroup;
        ADOStoredProc4.Parameters.ParamByName('PDateFrom').Value := FromDT;
        ADOStoredProc4.Active := True;
        if ADOStoredProc4.IsEmpty then
          begin
            Quant2  := 0;
            Amount2 := 0;
            Km2     := 0;
          end
        else
          begin
            ADOStoredProc4.First;
            Quant2  := ADOStoredProc4QUANTITY.AsFloat;
            Amount2 := ADOStoredProc4AMOUNT.AsFloat;
            Km2     := ADOStoredProc4KMAFTER.AsInteger;
            Quant2  := 0;
            Amount2 := 0;
          end;
      except
        Quant2  := 0;
        Amount2 := 0;
        Km2     := 0;
      end;
    end;

  PQuant  := Quant - Quant1 + Quant2;
  PAmount := Amount - Amount1 + Amount2;
  PKm     := Km1 - Km2;

  try
    Mil       := (((Quant - Quant1 + Quant2) / (PKm / 100)));
    MilAmount := (((Amount - Amount1 + Amount2) / (PKm / 100)));
  except
    Mil       := 0;
    MilAmount := 0;
  end;

  Mil       := Mil;
  MilAmount := MilAmount;

  if ((PQuant > 0) OR (PKm > 0) OR (Mil > 0)) then
    if PKm > 0 then
      begin
        Milieage := 'Υπολογισμός Κατανάλωσης ' + Format('%.2f Lt/100Km , %.2f €/100Km  Kαταναλωση για %d Km', [Mil, MilAmount, PKm]);
        Result   := True;
      end
    else if PKm = 0 then
      begin
        Milieage := '';
        Result   := False;
      end
    else
      begin
        Milieage := 'Πρόβλημα στην Καταχώρηση Km';
        Milieage := '';
        Result   := False;
      end
  else
    begin
      Milieage := '';
      Result   := False;
    end;

  if (PQuant < 0) then
    begin
      Milieage := 'Πρόβλημα στην Καταχώρηση Km';
      Result   := False;
    end;

  ConLtr := Mil;
  ConEur := MilAmount;
  KMDone := PKm;
end;

function TDMConsum.ReturnConsumptionItem(Card: Integer; FromDT, ToDT: TDateTime; Product: Integer; var ConLtr, ConEur: Real; var KMDone: Integer; var Milieage: String): Boolean;
begin

end;

end.
