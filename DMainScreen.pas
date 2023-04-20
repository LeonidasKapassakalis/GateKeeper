unit DMainScreen;

interface

uses
  System.SysUtils, System.Classes, DMain, Data.DB, Data.Win.ADODB, DBase, Forms, Common,
  DateUtils;

type
  TDMMainScreen = class(TDMBase)
    qryBrPersons: TADOQuery;
    dtsBrPersons: TDataSource;
    qryBrCarFriend: TADOQuery;
    dtsBrCarFriend: TDataSource;
    qryBrPersonsid: TIntegerField;
    qryBrPersonsName: TWideStringField;
    qryBrPersonsCompany: TWideStringField;
    qryBrPersonsIdentityNo: TWideStringField;
    qryBrPersonsReason: TWideStringField;
    qryBrPersonsContactWith: TWideStringField;
    qryBrPersonsWithCar: TBooleanField;
    qryBrPersonsDateTimeIn: TDateTimeField;
    qryBrPersonsDateTimeOut: TDateTimeField;
    qryBrPersonsInsUsr: TIntegerField;
    qryBrPersonsInsDT: TDateTimeField;
    qryBrPersonsInUsr: TIntegerField;
    qryBrPersonsOutUsr: TIntegerField;
    qryBrPersonsFullFilled: TBooleanField;
    qryBrPersonsFullFilledDT: TDateTimeField;
    qryBrPersonsComments: TWideStringField;
    qryBrCarNoFriend: TADOQuery;
    dtsBrCarNoFriend: TDataSource;
    qryBrCarNoFriendid: TIntegerField;
    qryBrCarNoFriendRegNo: TWideStringField;
    qryBrCarNoFriendProcedureState: TIntegerField;
    qryBrCarNoFriendDrvName: TWideStringField;
    qryBrCarNoFriendCompany: TWideStringField;
    qryBrCarNoFriendCarOwner: TWideStringField;
    qryBrCarNoFriendDA_Num: TWideStringField;
    qryBrCarNoFriendProducts: TWideStringField;
    qryBrCarNoFriendWithoutWeight: TBooleanField;
    qryBrCarNoFriendDateTimeIn: TDateTimeField;
    qryBrCarNoFriendDateTimeOut: TDateTimeField;
    qryBrCarNoFriendInsUsr: TIntegerField;
    qryBrCarNoFriendInsDT: TDateTimeField;
    qryBrCarNoFriendInUsr: TIntegerField;
    qryBrCarNoFriendOutUsr: TIntegerField;
    qryBrCarNoFriendFullFilled: TBooleanField;
    qryBrCarNoFriendFullFilledDT: TDateTimeField;
    qryBrCarNoFriendComments: TWideStringField;
    qryBrCarFriendid: TIntegerField;
    qryBrCarFriendRegNoId: TIntegerField;
    qryBrCarFriendProcedureState: TIntegerField;
    qryBrCarFriendFriendCar: TBooleanField;
    qryBrCarFriendDrvNameId: TIntegerField;
    qryBrCarFriendCompanyId: TIntegerField;
    qryBrCarFriendDA_Num: TWideStringField;
    qryBrCarFriendProducts: TWideStringField;
    qryBrCarFriendWithoutWeight: TBooleanField;
    qryBrCarFriendDateTimeIn: TDateTimeField;
    qryBrCarFriendDateTimeOut: TDateTimeField;
    qryBrCarFriendInsUsr: TIntegerField;
    qryBrCarFriendInsDT: TDateTimeField;
    qryBrCarFriendInUsr: TIntegerField;
    qryBrCarFriendOutUsr: TIntegerField;
    qryBrCarFriendFullFilled: TBooleanField;
    qryBrCarFriendFullFilledDT: TDateTimeField;
    qryBrCarFriendComments: TWideStringField;
    VL_Drivers: TADOQuery;
    VL_Driversid: TIntegerField;
    VL_DriversName: TWideStringField;
    VL_DriversCompanyId: TIntegerField;
    VL_DriversComments: TWideStringField;
    VL_Company: TADOQuery;
    VL_CompanyName: TWideStringField;
    VL_Companyid: TIntegerField;
    VL_CompanyComments: TWideStringField;
    VL_CompanyFriendCompany: TBooleanField;
    VL_CompanySpecialCom: TBooleanField;
    VL_RegNo: TADOQuery;
    VL_RegNoid: TIntegerField;
    VL_RegNoCompanyId: TIntegerField;
    VL_RegNoRegNo: TWideStringField;
    VL_RegNoCompany: TWideStringField;
    VL_RegNoCapacity: TBCDField;
    VL_RegNoGross: TBCDField;
    VL_RegNoTrustPeriod: TIntegerField;
    VL_RegNoComments: TWideStringField;
    dtsDrivers: TDataSource;
    dtsCompany: TDataSource;
    dtsRegNo: TDataSource;
    qryBrCarFriendLComp: TStringField;
    qryBrCarFriendLReg: TStringField;
    qryBrCarFriendLDrvName: TStringField;
    qryBrPersonsCarNumber: TWideStringField;
    qryBrPersonsCardNumber: TWideStringField;
    qryBrPersonsTimeInS: TStringField;
    qryBrPersonsDateIn: TDateField;
    qryBrCarFriendTimeInS: TStringField;
    qryBrCarFriendDateIn: TDateField;
    qryBrCarNoFriendTimeInS: TStringField;
    qryBrCarNoFriendDateIn: TDateField;
    qryBrCarFriendLTypeDrom: TStringField;
    qryBrCarNoFriendLTypeDrom: TStringField;
    qryBrCarNoFriendFullFilledUsr: TIntegerField;
    qryBrCarNoFriendCalcWeight: TBCDField;
    qryBrCarNoFriendNoted: TBooleanField;
    qryAirlift: TADOQuery;
    IntegerField9: TIntegerField;
    DateField2: TDateField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    BooleanField4: TBooleanField;
    StringField6: TStringField;
    DateTimeField5: TDateTimeField;
    DateTimeField6: TDateTimeField;
    IntegerField10: TIntegerField;
    DateTimeField7: TDateTimeField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    BooleanField5: TBooleanField;
    DateTimeField8: TDateTimeField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    dtsAirlift: TDataSource;
    qryAirliftContactId: TIntegerField;
    qryAirliftFullFilledUsr: TIntegerField;
    qryAirliftDTime: TDateTimeField;
    qryBrWorkers: TADOQuery;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    WideStringField1: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField14: TWideStringField;
    BooleanField1: TBooleanField;
    StringField1: TStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    IntegerField2: TIntegerField;
    DateTimeField3: TDateTimeField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    BooleanField2: TBooleanField;
    DateTimeField4: TDateTimeField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    dtsBrWorkers: TDataSource;
    qryBrWorkersContractors_Id: TIntegerField;
    qryBrWorkersContractors_Workers_Id: TIntegerField;
    qryBrWorkersSurname: TWideStringField;
    qryBrWorkersADT: TWideStringField;
    qryBrWorkersFullFilledUsr: TIntegerField;
    qryBrWorkersDTime: TDateTimeField;
    qryBrWorkersContact: TWideStringField;
    qryBrWorkersCompany: TWideStringField;
    qryBrWorkersReason_Id: TIntegerField;
    qryBrWorkersContact_Id: TIntegerField;
    qryBrWorkersContractors: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryBrPersonsCalcFields(DataSet: TDataSet);
    procedure qryBrCarFriendCalcFields(DataSet: TDataSet);
    procedure qryBrCarNoFriendCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMMainScreen: TDMMainScreen;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }

{$R *.dfm}

procedure TDMMainScreen.DataModuleCreate(Sender: TObject);
begin
  DMCreate(TForm(self));
end;

procedure TDMMainScreen.qryBrCarFriendCalcFields(DataSet: TDataSet);
var
  m, d, s: Integer;
begin
  inherited;
  DataSet.FieldByName('DateIn').AsDateTime := Int(DataSet.FieldByName('DateTimeIn').AsDateTime);
  m                                        := MinutesBetween(Now(), DataSet.FieldByName('DateTimeIn').AsDateTime);
  s                                        := m;
  d                                        := m div 1440;
  m                                        := m mod 1440;
  if d > 0 then
    DataSet.FieldByName('TimeInS').AsString := Format('%d Ημέρες %d Ώρες %d Λεπτά', [d, m div 60, m mod 60])
  else
    DataSet.FieldByName('TimeInS').AsString := Format('%d Ώρες %d Λεπτά', [m div 60, m mod 60]);

  case DataSet.FieldByName('ProcedureState').AsInteger of
    1:
      DataSet.FieldByName('LTypeDrom').AsString := 'Εισαγωγή';
    2:
      DataSet.FieldByName('LTypeDrom').AsString := 'Εξαγωγή';
    3:
      DataSet.FieldByName('LTypeDrom').AsString := 'Συλλογή';
    4:
      DataSet.FieldByName('LTypeDrom').AsString := 'Διανομή';
    5:
      DataSet.FieldByName('LTypeDrom').AsString := 'Εισαγωγή';
  end;

end;

procedure TDMMainScreen.qryBrCarNoFriendCalcFields(DataSet: TDataSet);
var
  m, d, s: Integer;
begin
  inherited;
  DataSet.FieldByName('DateIn').AsDateTime := Int(DataSet.FieldByName('DateTimeIn').AsDateTime);
  m                                        := MinutesBetween(Now(), DataSet.FieldByName('DateTimeIn').AsDateTime);
  s                                        := m;
  d                                        := m div 1440;
  m                                        := m mod 1440;
  if d > 0 then
    DataSet.FieldByName('TimeInS').AsString := Format('%d Ημέρες %d Ώρες %d Λεπτά', [d, m div 60, m mod 60])
  else
    DataSet.FieldByName('TimeInS').AsString := Format('%d Ώρες %d Λεπτά', [m div 60, m mod 60]);

  case DataSet.FieldByName('ProcedureState').AsInteger of
    1:
      DataSet.FieldByName('LTypeDrom').AsString := 'Εισαγωγή';
    2:
      DataSet.FieldByName('LTypeDrom').AsString := 'Εξαγωγή';
    3:
      DataSet.FieldByName('LTypeDrom').AsString := 'Συλλογή';
    4:
      DataSet.FieldByName('LTypeDrom').AsString := 'Διανομή';
    5:
      DataSet.FieldByName('LTypeDrom').AsString := 'Εισαγωγή';
  end;
end;

procedure TDMMainScreen.qryBrPersonsCalcFields(DataSet: TDataSet);
var
  m, d, s: Integer;
begin
  inherited;
  DataSet.FieldByName('DateIn').AsDateTime := Int(DataSet.FieldByName('DateTimeIn').AsDateTime);
  m                                        := MinutesBetween(Now(), DataSet.FieldByName('DateTimeIn').AsDateTime);
  s                                        := m;
  d                                        := m div 1440;
  m                                        := m mod 1440;
  if d > 0 then
    DataSet.FieldByName('TimeInS').AsString := Format('%d Ημέρες %d Ώρες %d Λεπτά', [d, m div 60, m mod 60])
  else
    DataSet.FieldByName('TimeInS').AsString := Format('%d Ώρες %d Λεπτά', [m div 60, m mod 60])
end;

end.
