unit DOtherCarsDet;

interface

uses
  System.SysUtils, System.Classes, Data.Win.ADODB, Data.DB,
  DateUtils, DBase, DMain, Forms, Common, FBaseDev1;

type
  TDMOtherCarsDet = class(TDMBase)
    qryCarsVisitOther: TADOQuery;
    dtsCarsVisitOther: TDataSource;
    VL_Drivers: TADOQuery;
    VL_Product: TADOQuery;
    VL_RegNo: TADOQuery;
    qryCarsVisitOtherid: TIntegerField;
    qryCarsVisitOtherRegNo: TWideStringField;
    qryCarsVisitOtherProcedureState: TIntegerField;
    qryCarsVisitOtherDrvName: TWideStringField;
    qryCarsVisitOtherCompany: TWideStringField;
    qryCarsVisitOtherCarOwner: TWideStringField;
    qryCarsVisitOtherDA_Num: TWideStringField;
    qryCarsVisitOtherProducts: TWideStringField;
    qryCarsVisitOtherWithoutWeight: TBooleanField;
    qryCarsVisitOtherDateTimeIn: TDateTimeField;
    qryCarsVisitOtherDateTimeOut: TDateTimeField;
    qryCarsVisitOtherInsUsr: TIntegerField;
    qryCarsVisitOtherInsDT: TDateTimeField;
    qryCarsVisitOtherInUsr: TIntegerField;
    qryCarsVisitOtherOutUsr: TIntegerField;
    qryCarsVisitOtherFullFilled: TBooleanField;
    qryCarsVisitOtherFullFilledDT: TDateTimeField;
    VL_ProductName: TWideStringField;
    qryCarsVisitOtherWeight: TADOQuery;
    dtsCarsVisitOtherWeight: TDataSource;
    qryCarsVisitOtherWeightid: TIntegerField;
    qryCarsVisitOtherWeightActionLevel: TIntegerField;
    qryCarsVisitOtherWeightaa: TIntegerField;
    qryCarsVisitOtherWeightWeightDT: TDateTimeField;
    qryCarsVisitOtherWeightWeightAA: TIntegerField;
    qryCarsVisitOtherWeightWeight: TBCDField;
    GetTRawLib: TADOQuery;
    GetTRawLibGId: TGuidField;
    GetTRawLibLibId: TIntegerField;
    GetTRawLibLibDateTime: TDateTimeField;
    GetTRawLibLibRegNo: TWideStringField;
    GetTRawLibLibWeight: TIntegerField;
    GetTRawLibUsed: TBooleanField;
    qryCarsVisitOtherWeight1: TADOQuery;
    qryCarsVisitOtherWeight1id: TIntegerField;
    qryCarsVisitOtherWeight1ActionLevel: TIntegerField;
    qryCarsVisitOtherWeight1aa: TIntegerField;
    qryCarsVisitOtherWeight1WeightDT: TDateTimeField;
    qryCarsVisitOtherWeight1WeightAA: TIntegerField;
    qryCarsVisitOtherWeight1Weight: TBCDField;
    dtsCarsVisitOtherWeight1: TDataSource;
    qryCarsVisitOtherWeight2: TADOQuery;
    qryCarsVisitOtherWeight2id: TIntegerField;
    qryCarsVisitOtherWeight2ActionLevel: TIntegerField;
    qryCarsVisitOtherWeight2aa: TIntegerField;
    qryCarsVisitOtherWeight2WeightDT: TDateTimeField;
    qryCarsVisitOtherWeight2WeightAA: TIntegerField;
    qryCarsVisitOtherWeight2Weight: TBCDField;
    dtsCarsVisitOtherWeight2: TDataSource;
    GetTRawLibError: TBooleanField;
    qryCarsVisitOtherWeightWeightRegNo: TWideStringField;
    qryCarsVisitOtherWeight1WeightRegNo: TWideStringField;
    qryCarsVisitOtherWeight2WeightRegNo: TWideStringField;
    qryCarsVisitOtherCalcWeight: TBCDField;
    qryCarsVisitOtherNoted: TBooleanField;
    qryCarsVisitOtherFullFilledUsr: TIntegerField;
    qryCarsVisitOtherDTime: TDateTimeField;
    ADOQuery1: TADOQuery;
    WideStringField1: TWideStringField;
    VL_Company: TADOQuery;
    WideStringField2: TWideStringField;
    VL_CarOwner: TADOQuery;
    WideStringField3: TWideStringField;
    qryCarsVisitOtherWeightWeightGuid: TGuidField;
    qfindSame: TADOQuery;
    qfindSameId: TIntegerField;
    qryCarsVisitOtherWeight1WeightGuid: TGuidField;
    qryCarsVisitOtherWeight2WeightGuid: TGuidField;
    qryCarsVisitOtherCompanyId: TIntegerField;
    qryCarsVisitOtherDriverId: TIntegerField;
    qryCarsVisitOtherProductId: TIntegerField;
    dsVL_Product: TDataSource;
    VL_Productid: TIntegerField;
    VL_ProductComments: TWideStringField;
    VL_ProductPhoName: TWideStringField;
    dsVL_Company: TDataSource;
    VL_Companyid: TIntegerField;
    VL_CompanyComments: TWideStringField;
    VL_CompanyFriendCompany: TBooleanField;
    VL_CompanySpecialCom: TBooleanField;
    VL_CompanySpecialCom1: TBooleanField;
    VL_CompanyPhoName: TWideStringField;
    VL_CompanyAutoCreate: TBooleanField;
    VL_CompanyAutoCreateSource: TIntegerField;
    qryDriversOther: TADOQuery;
    qryDriversOtherid: TIntegerField;
    qryDriversOtherName: TWideStringField;
    qryDriversOtherCompanyId: TIntegerField;
    qryDriversOtherComments: TWideStringField;
    qryDriversOtherPhoName: TWideStringField;
    qryDriversOtherAutoCreate: TBooleanField;
    qryDriversOtherAutoCreateSource: TIntegerField;
    dsDriversOther: TDataSource;
    qryCarsOther: TADOQuery;
    qryCarsOtherid: TIntegerField;
    qryCarsOtherRegNo: TWideStringField;
    qryCarsOtherCompanyId: TIntegerField;
    qryCarsOtherComments: TWideStringField;
    dsCarsOther: TDataSource;
    qryCompany: TADOQuery;
    dsCompany: TDataSource;
    qryCompanyid: TIntegerField;
    qryCompanyName: TWideStringField;
    qryCompanyComments: TWideStringField;
    qryCompanyFriendCompany: TBooleanField;
    qryCompanySpecialCom: TBooleanField;
    qryCompanySpecialCom1: TBooleanField;
    qryCompanyPhoName: TWideStringField;
    qryCompanyAutoCreate: TBooleanField;
    qryCompanyAutoCreateSource: TIntegerField;
    spCheckCar: TADOStoredProc;
    spCheckCarid: TIntegerField;
    spCheckCarRegNo: TWideStringField;
    spCheckDriver: TADOStoredProc;
    spCheckCompany: TADOStoredProc;
    spCheckDriverid: TIntegerField;
    spCheckDriverName: TWideStringField;
    spCheckDriverCompanyId: TIntegerField;
    spCheckCompanyid: TIntegerField;
    spCheckCompanyName: TWideStringField;
    VL_Driversid: TIntegerField;
    VL_DriversName: TWideStringField;
    VL_DriversCompanyId: TIntegerField;
    VL_DriversComments: TWideStringField;
    VL_DriversPhoName: TWideStringField;
    VL_DriversAutoCreate: TBooleanField;
    VL_DriversAutoCreateSource: TIntegerField;
    VL_RegNoid: TIntegerField;
    VL_RegNoRegNo: TWideStringField;
    VL_RegNoCompanyId: TIntegerField;
    VL_RegNoComments: TWideStringField;
    qryCarsVisitOtherComments: TWideStringField;
    qryCarsVisitOtherLong_Stay: TBooleanField;
    procedure qryCarsVisitOtherAfterPost(DataSet: TDataSet);
    procedure qryCarsVisitOtherBeforePost(DataSet: TDataSet);
    procedure dtsCarsVisitOtherStateChange(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryCarsVisitOtherCalcFields(DataSet: TDataSet);

    procedure GenAfterPost(DataSet: TDataSet);
    procedure GenBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    function CheckSameReg(RegNumber: String; Id: Integer): Boolean;
    function CheckForWeight: Boolean;
    function CheckReg(RegNo:string;var ErrorItem:String): Boolean;

    function CheckAA(AA: Integer;DT: TDateTime; Level: Integer): Boolean;
    procedure DeleteLib(ItemList: TStringList);
    procedure CheckUpdateParam;
  end;

var
  DMOtherCarsDet: TDMOtherCarsDet;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }

uses FMain;

{$R *.dfm}

procedure TDMOtherCarsDet.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMCreate(TForm(self),'qryCarsVisitOther,qryCarsVisitOtherWeight,qryCarsVisitOtherWeight1,qryCarsVisitOtherWeight2,GetTRawLib,qfindSame');
end;

procedure TDMOtherCarsDet.dtsCarsVisitOtherStateChange(Sender: TObject);
begin
  inherited;
  if self.Owner is TfrmBaseDev1 then
    if TDataSource(Sender).State in [dsInsert, dsEdit] then
      begin
        TfrmBaseDev1(self.Owner).SetState('UPD')
      end
    else
      begin
        TfrmBaseDev1(self.Owner).SetState('Browse');
      end;
end;

procedure TDMOtherCarsDet.qryCarsVisitOtherAfterPost(DataSet: TDataSet);
begin
  inherited;
  DMMain.TblChanges.UpdateBatch();
end;

procedure TDMOtherCarsDet.qryCarsVisitOtherBeforePost(DataSet: TDataSet);
begin
  inherited;
  BeforePost0(DataSet, 'CarsVisitOther');
end;

procedure TDMOtherCarsDet.qryCarsVisitOtherCalcFields(DataSet: TDataSet);
var
  m, d, s: Integer;
begin
  inherited;
  if DataSet.FieldByName('DateTimeOut').IsNull then
    begin
    end
  else
    begin
      m := MinutesBetween(DataSet.FieldByName('DateTimeOut').AsDateTime, DataSet.FieldByName('DateTimeIn').AsDateTime);
      s := m;
      d := m div 1440;
      m := m mod 1440;
      // if d > 0 then
      // DataSet.FieldByName('Durr').AsString := Format('%d Ημέρες %d Ώρες %d Λεπτά',[d,m div 60,m mod 60])
      // else
      // DataSet.FieldByName('Durr').AsString := Format('%d Ώρες %d Λεπτά',[m div 60,m mod 60]);
    end;
end;

function TDMOtherCarsDet.CheckAA(AA:Integer; DT:TDateTime; Level:Integer): Boolean;
var
  TQry: TADOQuery;
begin
  Result := True;

  TQry := qryCarsVisitOtherWeight;
  if TQry.IsEmpty then
    begin
      Result := True;
      exit;
    end;
  TQry.DisableControls;
  TQry.First;
  repeat
    if TQry.FieldByName('WeightAA').AsInteger > AA then
       if frmMain.ValidLibAA then
          Result := False;
    if TQry.FieldByName('WeightDT').AsDateTime > DT then
       if frmMain.ValidLibDT then
          Result := False;
    TQry.Next;
  until TQry.Eof;
  TQry.EnableControls;



  if Level = 1 then
    TQry := qryCarsVisitOtherWeight1;
  if Level = 2 then
    TQry := qryCarsVisitOtherWeight2;

//  if TQry.IsEmpty then
//    begin
//      Result := True;
//      exit;
//    end;

  TQry.DisableControls;
  TQry.First;
  repeat
    if TQry.FieldByName('WeightAA').AsInteger > AA then
       if frmMain.ValidLibAA then
          Result := False;
    if TQry.FieldByName('WeightDT').AsDateTime > DT then
       if frmMain.ValidLibDT then
          Result := False;
    TQry.Next;
  until TQry.Eof;
  TQry.EnableControls;
end;

function TDMOtherCarsDet.CheckReg(RegNo:string;var ErrorItem:String): Boolean;
var
  TQry: TADOQuery;
begin
  Result := True;
  TQry   := qryCarsVisitOtherWeight;

  if TQry.IsEmpty then
    begin
      Result := True;
      exit;
    end;

  TQry.DisableControls;
  TQry.First;
  repeat
    if Trim(TQry.FieldByName('WeightRegNo').AsString) <> Trim(RegNo) then
      begin
        Result := False;
        ErrorItem:=ErrorItem+' '+TQry.FieldByName('WeightAA').AsString;
      end;
    TQry.Next;
  until TQry.Eof;
  TQry.EnableControls;
end;

function TDMOtherCarsDet.CheckSameReg(RegNumber: String; Id: Integer): Boolean;
begin
  qfindSame.active                                 := False;
  qfindSame.Parameters.ParamByName('PRegNo').Value := RegNumber;
  qfindSame.active                                 := True;
  if qfindSame.IsEmpty then
    Result := False
  else if qfindSameId.AsInteger = Id then
    Result := False
  else
    Result := True;
end;

function TDMOtherCarsDet.CheckForWeight: Boolean;
begin
  if qryCarsVisitOtherWeight1.IsEmpty or qryCarsVisitOtherWeight2.IsEmpty then
    Result := False
  else
    Result := True;
end;

procedure TDMOtherCarsDet.DeleteLib(ItemList: TStringList);
var
  i: Integer;
  Tmp: TStringList;
begin
  Tmp   := TStringList.Create;
  for i := 0 to ItemList.Count - 1 do
    begin
      GetTRawLib.Parameters.ParamByName('PGid').Value := ItemList[i];
      GetTRawLib.active                               := False;
      GetTRawLib.active                               := True;
      if GetTRawLib.RecordCount = 0 then
        Break;
      GetTRawLib.Edit;
      Tmp.Add(GetTRawLibLibId.AsString);
      GetTRawLibUsed.AsBoolean := False;
      GetTRawLib.Post;
    end;

  qryCarsVisitOtherWeight.First;
  repeat
    if Tmp.Find(qryCarsVisitOtherWeightaa.AsString, i) then
      qryCarsVisitOtherWeight.Delete
    else
      qryCarsVisitOtherWeight.Next;
  until qryCarsVisitOtherWeight.Eof;
end;

procedure TDMOtherCarsDet.CheckUpdateParam;
Var TmpCompany:Integer;
begin
  spCheckCompany.Active := False;
  spCheckCompany.Parameters.ParamByName('@ComName').Value := frmMain.String2Pho(qryCarsVisitOtherCompany.Text);
  spCheckCompany.Active := True;
  if spCheckCompany.IsEmpty then
  begin
  qryCompany.Insert;
  qryCompany.Edit;
  qryCompanyName.AsString            := qryCarsVisitOtherCompany.Text;
  qryCompanyPhoName.AsString         := frmMain.String2Pho(qryCarsVisitOtherCompany.Text);
  qryCompanyAutoCreate.AsBoolean     := True;
  qryCompanyFriendCompany.AsBoolean  := False;
  qryCompany.Post;
  TmpCompany:=qryCompanyid.AsInteger;
  end
  else
  begin
  TmpCompany:=spCheckCompanyid.AsInteger;
  end;


  spCheckDriver.Active := False;
  spCheckDriver.Parameters.ParamByName('@DriverName').Value := frmMain.String2Pho(qryCarsVisitOtherDrvName.Text);
  spCheckDriver.Active := True;
  if spCheckDriver.IsEmpty then
  begin
  qryDriversOther.Insert;
  qryDriversOther.Edit;
  qryDriversOtherName.AsString       := qryCarsVisitOtherDrvName.Text;
  qryDriversOtherPhoName.AsString    := frmMain.String2Pho(qryCarsVisitOtherDrvName.Text);
  qryDriversOtherCompanyId.AsInteger := TmpCompany;
  qryDriversOther.Post;
  end;

  spCheckCar.Active := False;
  spCheckCar.Parameters.ParamByName('@RegNo').Value := qryCarsVisitOtherRegNo.Text;
  spCheckCar.Active := True;
  if spCheckCar.IsEmpty then
  begin
  qryCarsOther.Insert;
  qryCarsOther.Edit;
  qryCarsOtherRegNo.AsString         := qryCarsVisitOtherRegNo.Text;
  qryCarsOtherCompanyId.AsInteger    := TmpCompany;
  qryCarsOther.Post;
  end;


end;

procedure TDMOtherCarsDet.GenAfterPost(DataSet: TDataSet);
begin
  inherited;
  DMMain.TblChanges.UpdateBatch();
end;


procedure TDMOtherCarsDet.GenBeforePost(DataSet: TDataSet);
var nStr:string;
begin
//  BeforePost(DataSet);
//  DataSet.FieldByName('PhoPerson').Value:=frmMain.String2Pho(DataSet.FieldByName('Person').Value);

  if DataSet is TADOQuery then
  begin
    nStr:=StringReplace(DataSet.Name,'qry','',[]);
    BeforePost0(DataSet, nStr);
  end
  else
  begin
  BeforePost0(DataSet);
  end;
//  BeforePost0(DataSet, 'CarsVisitOther');
end;



end.
