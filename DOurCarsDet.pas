unit DOurCarsDet;

interface

uses
  System.SysUtils, System.Classes, Data.Win.ADODB, Data.DB,
  DBase, DMain, Forms, Common, FBaseDev1;

type
  TDMOurCarsDet = class(TDMBase)
    qryCarsVisitOur: TADOQuery;
    dtsCarsVisitOur: TDataSource;
    VL_Drivers: TADOQuery;
    VL_Product: TADOQuery;
    VL_Company: TADOQuery;
    VL_RegNo: TADOQuery;
    VL_CompanyName: TWideStringField;
    VL_ProductName: TWideStringField;
    VL_RegNoRegNo: TWideStringField;
    dtsDrivers: TDataSource;
    VL_Companyid: TIntegerField;
    VL_CompanyComments: TWideStringField;
    VL_CompanyFriendCompany: TBooleanField;
    VL_CompanySpecialCom: TBooleanField;
    dtsCompany: TDataSource;
    VL_RegNoid: TIntegerField;
    VL_RegNoCompanyId: TIntegerField;
    VL_RegNoCompany: TWideStringField;
    VL_RegNoCapacity: TBCDField;
    VL_RegNoGross: TBCDField;
    VL_RegNoTrustPeriod: TIntegerField;
    VL_RegNoComments: TWideStringField;
    dtsRegNo: TDataSource;
    qryCarsVisitOurid: TIntegerField;
    qryCarsVisitOurRegNoId: TIntegerField;
    qryCarsVisitOurProcedureState: TIntegerField;
    qryCarsVisitOurFriendCar: TBooleanField;
    qryCarsVisitOurDrvNameId: TIntegerField;
    qryCarsVisitOurCompanyId: TIntegerField;
    qryCarsVisitOurDA_Num: TWideStringField;
    qryCarsVisitOurProducts: TWideStringField;
    qryCarsVisitOurWithoutWeight: TBooleanField;
    qryCarsVisitOurDateTimeIn: TDateTimeField;
    qryCarsVisitOurDateTimeOut: TDateTimeField;
    qryCarsVisitOurInsUsr: TIntegerField;
    qryCarsVisitOurInsDT: TDateTimeField;
    qryCarsVisitOurInUsr: TIntegerField;
    qryCarsVisitOurOutUsr: TIntegerField;
    qryCarsVisitOurFullFilled: TBooleanField;
    qryCarsVisitOurFullFilledDT: TDateTimeField;
    qryCarsVisitOurWeight: TADOQuery;
    dtsCarsVisitOurWeight: TDataSource;
    qryCarsVisitOurWeightid: TIntegerField;
    qryCarsVisitOurWeightActionLevel: TIntegerField;
    qryCarsVisitOurWeightaa: TIntegerField;
    qryCarsVisitOurWeightWeightDT: TDateTimeField;
    qryCarsVisitOurWeightWeightAA: TIntegerField;
    qryCarsVisitOurWeightWeight: TBCDField;
    GetTRawLib: TADOQuery;
    qryCarsVisitOurWeight3: TADOQuery;
    dtsCarsVisitOurWeight3: TDataSource;
    qryCarsVisitOurWeight4: TADOQuery;
    dtsCarsVisitOurWeight4: TDataSource;
    qryCarsVisitOurWeight5: TADOQuery;
    dtsCarsVisitOurWeight5: TDataSource;
    qryCarsVisitOurWeight3id: TIntegerField;
    qryCarsVisitOurWeight3ActionLevel: TIntegerField;
    qryCarsVisitOurWeight3aa: TIntegerField;
    qryCarsVisitOurWeight3WeightDT: TDateTimeField;
    qryCarsVisitOurWeight3WeightAA: TIntegerField;
    qryCarsVisitOurWeight3Weight: TBCDField;
    qryCarsVisitOurWeight4id: TIntegerField;
    qryCarsVisitOurWeight4ActionLevel: TIntegerField;
    qryCarsVisitOurWeight4aa: TIntegerField;
    qryCarsVisitOurWeight4WeightDT: TDateTimeField;
    qryCarsVisitOurWeight4WeightAA: TIntegerField;
    qryCarsVisitOurWeight4Weight: TBCDField;
    qryCarsVisitOurWeight5id: TIntegerField;
    qryCarsVisitOurWeight5ActionLevel: TIntegerField;
    qryCarsVisitOurWeight5aa: TIntegerField;
    qryCarsVisitOurWeight5WeightDT: TDateTimeField;
    qryCarsVisitOurWeight5WeightAA: TIntegerField;
    qryCarsVisitOurWeight5Weight: TBCDField;
    GetTRawLibGId: TGuidField;
    GetTRawLibLibId: TIntegerField;
    GetTRawLibLibDateTime: TDateTimeField;
    GetTRawLibLibRegNo: TWideStringField;
    GetTRawLibLibWeight: TIntegerField;
    GetTRawLibError: TBooleanField;
    GetTRawLibUsed: TBooleanField;
    qryCarsVisitOurFullFilledUsr: TIntegerField;
    qryCarsVisitOurCalcWeight: TBCDField;
    qryCarsVisitOurNoted: TBooleanField;
    qryCarsVisitOurWeightWeightRegNo: TWideStringField;
    qryCarsVisitOurWeight3WeightRegNo: TWideStringField;
    qryCarsVisitOurWeight4WeightRegNo: TWideStringField;
    qryCarsVisitOurWeight5WeightRegNo: TWideStringField;
    qryCarsVisitOurWeightWater: TADOQuery;
    qryCarsVisitOurWeightWaterid: TIntegerField;
    qryCarsVisitOurWeightWaterActionLevel: TIntegerField;
    qryCarsVisitOurWeightWateraa: TIntegerField;
    qryCarsVisitOurWeightWaterWeightRegNo: TWideStringField;
    qryCarsVisitOurWeightWaterWeightDT: TDateTimeField;
    qryCarsVisitOurWeightWaterWeightAA: TIntegerField;
    qryCarsVisitOurWeightWaterWeight: TBCDField;
    qryCarsVisitOurWeightWaterWater: TBooleanField;
    qryCarsVisitOurWeightWater2: TBooleanField;
    qryCarsVisitOurWater: TBCDField;
    qryCarsVisitOurDTime: TDateTimeField;
    qryCarsVisitOurSpecialEltepe: TIntegerField;
    qryCarsVisitOurWeightWeightGuid: TGuidField;
    VL_SpecTank: TADOQuery;
    VL_SpecTankid: TIntegerField;
    VL_SpecTankSpName: TWideStringField;
    VL_SpecTankCompId: TIntegerField;
    dtsSpecTank: TDataSource;
    VL_CompanyCompId: TIntegerField;
    qfindSame: TADOQuery;
    qfindSameId: TIntegerField;
    qryCarsVisitOurWeight3Water: TBooleanField;
    qryCarsVisitOurWeight3WeightGuid: TGuidField;
    qryCarsVisitOurWeight4Water: TBooleanField;
    qryCarsVisitOurWeight4WeightGuid: TGuidField;
    qryCarsVisitOurWeight5Water: TBooleanField;
    qryCarsVisitOurWeight5WeightGuid: TGuidField;
    qryCarsVisitOurWeightWaterWeightGuid: TGuidField;
    qryCarsVisitOurWeightNoWater: TADOQuery;
    qryCarsVisitOurWeightNoWaterid: TIntegerField;
    qryCarsVisitOurWeightNoWaterActionLevel: TIntegerField;
    qryCarsVisitOurWeightNoWateraa: TIntegerField;
    qryCarsVisitOurWeightNoWaterWeightRegNo: TWideStringField;
    qryCarsVisitOurWeightNoWaterWeightDT: TDateTimeField;
    qryCarsVisitOurWeightNoWaterWeightAA: TIntegerField;
    qryCarsVisitOurWeightNoWaterWeight: TBCDField;
    qryCarsVisitOurWeightNoWaterWater: TBooleanField;
    qryCarsVisitOurWeightNoWaterWeightGuid: TGuidField;
    qryCarLastWeight: TADOQuery;
    qryCarLastWeightWeightDT: TDateTimeField;
    qryCarLastWeightWeight: TIntegerField;
    qryCarLastWeightWeightGuid: TGuidField;
    qryCarLastWeightidid: TIntegerField;
    qryCarLastWeightId: TIntegerField;
    VL_Driversid: TIntegerField;
    VL_DriversName: TWideStringField;
    VL_DriversCompanyId: TIntegerField;
    VL_DriversComments: TWideStringField;
    VL_DriversPhoName: TWideStringField;
    VL_DriversAutoCreate: TBooleanField;
    VL_DriversAutoCreateSource: TIntegerField;
    qryCarsVisitOurProductId: TIntegerField;
    dtsProduct: TDataSource;
    VL_Productid: TIntegerField;
    VL_ProductComments: TWideStringField;
    VL_ProductPhoName: TWideStringField;
    qryCarsVisitOurComments: TWideStringField;
    VCarLast: TADOQuery;
    VCarLastidid: TIntegerField;
    VCarLastCapacity: TBCDField;
    VCarLastGross: TBCDField;
    VCarLastTrustPeriod: TIntegerField;
    VCarLastWeight: TIntegerField;
    VCarLastRegNo: TWideStringField;
    VCarLastWeightDT: TDateTimeField;
    procedure qryCarsVisitOurAfterPost(DataSet: TDataSet);
    procedure qryCarsVisitOurBeforePost(DataSet: TDataSet);
    procedure dtsCarsVisitOurStateChange(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryCarsVisitOurBeforeInsert(DataSet: TDataSet);
    procedure VL_CompanyCalcFields(DataSet: TDataSet);
    procedure GenAfterPost(DataSet: TDataSet);
    procedure GenBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    function CheckSameReg(RegNumber, Id: Integer): Boolean;
    function CheckWithLast(var Text:String):Boolean;
    function CheckFirstLast(var Text:String):Boolean;
    function CheckForWeight: Boolean;
    function CheckReg(RegNo:String;var ErrorItem:String): Boolean;
    function CheckAA(AA:Integer; DT:TDateTime; Level:Integer): Boolean;
    procedure DeleteLib(ItemList: TStringList);
    procedure CheckUpdateParam;
    procedure UpdateLastWeight;
  end;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }

uses FMain;

{$R *.dfm}

procedure TDMOurCarsDet.DataModuleCreate(Sender: TObject);
begin
  inherited;
//  VL_RegNo.Active := True;
//  VL_Product.Active := True;
//  VL_Company.Active := True;
//  VL_Drivers.Active := True;
//  VL_SpecTank.Active := True;
//  qryCarsVisitOur.Active := True;
//  qryCarsVisitOurWeight.Active := True;
//  qryCarsVisitOurWeight3.Active := True;
//  qryCarsVisitOurWeight4.Active := True;
//  qryCarsVisitOurWeight5.Active := True;
//  qryCarsVisitOurWeightWater.Active := True;
//  qryCarsVisitOurWeightNoWater.Active := True;
//  GetTRawLib.Active := True;
//  qryCarLastWeight.Active := True;
  DMCreate(TForm(self),'qryCarsVisitOur,qryCarsVisitOurWeight,qryCarsVisitOurWeight3,qryCarsVisitOurWeight4,qryCarsVisitOurWeight5,qryCarsVisitOurWeightWater,qryCarsVisitOurWeightNoWater,GetTRawLib,qfindSame');
end;

procedure TDMOurCarsDet.dtsCarsVisitOurStateChange(Sender: TObject);
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

procedure TDMOurCarsDet.qryCarsVisitOurAfterPost(DataSet: TDataSet);
begin
  inherited;
  DMMain.TblChanges.UpdateBatch();
end;

procedure TDMOurCarsDet.qryCarsVisitOurBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  BeforePost00(DataSet, 'CarsVisitOur');
end;

procedure TDMOurCarsDet.qryCarsVisitOurBeforePost(DataSet: TDataSet);
begin
  inherited;
  BeforePost0(DataSet, 'CarsVisitOur');
end;

procedure TDMOurCarsDet.VL_CompanyCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CompId').Value := DataSet.FieldByName('Id').Value;
end;

function TDMOurCarsDet.CheckAA(AA:Integer; DT:TDateTime; Level:Integer): Boolean;
var
  TQry: TADOQuery;
begin
  Result := True;

  TQry := qryCarsVisitOurWeight;
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

  if Level = 3 then
    TQry := qryCarsVisitOurWeight3;
  if Level = 4 then
    TQry := qryCarsVisitOurWeight4;
  if Level = 5 then
    TQry := qryCarsVisitOurWeight5;

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

function TDMOurCarsDet.CheckReg(RegNo:string;var ErrorItem:String): Boolean;
var
  TQry: TADOQuery;
begin
  Result := True;
  TQry   := qryCarsVisitOurWeight;

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

function TDMOurCarsDet.CheckForWeight: Boolean;
begin
  if qryCarsVisitOurWeight3.IsEmpty or qryCarsVisitOurWeight4.IsEmpty or qryCarsVisitOurWeight4.IsEmpty then
    Result := False
  else
    Result := True;

end;

procedure TDMOurCarsDet.DeleteLib(ItemList: TStringList);
var
  i: Integer;
  Tmp: TStringList;
begin
  Tmp   := TStringList.Create;
  for i := 0 to ItemList.Count - 1 do
    begin
      GetTRawLib.Parameters.ParamByName('PGid').Value := ItemList[i];
      GetTRawLib.Active                               := False;
      GetTRawLib.Active                               := True;
      if GetTRawLib.RecordCount = 0 then
        Break;
      GetTRawLib.Edit;
      Tmp.Add(GetTRawLibLibId.AsString);
      GetTRawLibUsed.AsBoolean := False;
      GetTRawLib.Post;
    end;

  qryCarsVisitOurWeight.First;
  repeat
    if Tmp.Find(qryCarsVisitOurWeightaa.AsString, i) then
      qryCarsVisitOurWeight.Delete
    else
      qryCarsVisitOurWeight.Next;
  until qryCarsVisitOurWeight.Eof;

end;

function TDMOurCarsDet.CheckSameReg(RegNumber: Integer; Id: Integer): Boolean;
begin
  qfindSame.Active                                 := False;
  qfindSame.Parameters.ParamByName('PRegNo').Value := RegNumber;
  qfindSame.Active                                 := True;
  if qfindSame.IsEmpty then
    Result := False
  else if qfindSameId.AsInteger = Id then
    Result := False
  else
    Result := True;
end;

procedure TDMOurCarsDet.CheckUpdateParam;
var PName,PCompany,PIdentity:string;
begin
//  PName     :=frmMain.String2Pho(qryPersonsVisitName.Text);
//  PCompany  :=frmMain.String2Pho(qryPersonsVisitCompany.Text);
//  PIdentity :=frmMain.String2Pho(qryPersonsVisitIdentityNo.Text);
//  qryPersons.Insert;
//  qryPersons.Edit;
//  qryPersonsPerson.AsString       := qryPersonsVisitName.Text;
//  qryPersonsPhoPerson.AsString    := PName;
//  qryPersonsCompany.AsString      := qryPersonsVisitCompany.Text;
//  qryPersonsPhoCompany.AsString   := PCompany;
//  qryPersonsIdentityNo.AsString   := qryPersonsVisitIdentityNo.Text;
//  qryPersonsPhoIdentityNo.AsString:= PIdentity;
//  qryPersons.Post;
end;

procedure TDMOurCarsDet.GenAfterPost(DataSet: TDataSet);
begin
  inherited;
  DMMain.TblChanges.UpdateBatch();
end;


procedure TDMOurCarsDet.GenBeforePost(DataSet: TDataSet);
var nStr:string;
begin
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

procedure TDMOurCarsDet.UpdateLastWeight;
begin
  qryCarsVisitOurWeight5.Last;

  if qryCarLastWeight.IsEmpty then
  begin
    qryCarLastWeight.Insert;
    qryCarLastWeight.Edit;
    qryCarLastWeightidid.AsInteger      := qryCarsVisitOurRegNoId.AsInteger;
    qryCarLastWeightWeight.AsInteger    := qryCarsVisitOurWeight5Weight.AsInteger;
    qryCarLastWeightWeightDT.AsDateTime := qryCarsVisitOurWeight5WeightDT.AsDateTime;
    qryCarLastWeightWeightGuid.Value    := qryCarsVisitOurWeight5WeightGuid.Value;
    qryCarLastWeight.Post;
  end
  else
  begin
    qryCarLastWeight.Edit;
    qryCarLastWeightWeight.AsInteger    := qryCarsVisitOurWeight5Weight.AsInteger;
    qryCarLastWeightWeightDT.AsDateTime := qryCarsVisitOurWeight5WeightDT.AsDateTime;
    qryCarLastWeightWeightGuid.Value    := qryCarsVisitOurWeight5WeightGuid.Value;
    qryCarLastWeight.Post;
  end;
end;

function TDMOurCarsDet.CheckWithLast(var Text:String):Boolean;
var cw,lw:Integer;
begin
    if qryCarsVisitOurWeight3.IsEmpty or VCarLast.IsEmpty then
    begin
       Result:=True;
       Text:= '';
       Exit;
    end
    else
    begin
      cw:=qryCarsVisitOurWeight3Weight.AsInteger;
      lw:=VCarLastWeight.AsInteger;
      if VCarLastTrustPeriod.AsInteger > 0 then
         if Abs(cw-lw) > VCarLastTrustPeriod.AsInteger then
         begin
            Text:= 'Απόκληση(TE) ' + inttostr(Abs((cw-lw)))+ ' > '+ VCarLastTrustPeriod.AsString;
            Result:=False;
         end
         else
         begin
            Text:= 'Τελ.ζύγιση ' +Datetimetostr(VCarLastWeightDT.AsDateTime);
            Result:=True;
         end;
    end;
//    Result:=True;
end;

function TDMOurCarsDet.CheckFirstLast(var Text:String):Boolean;
var fw,lw:Integer;
begin
    if qryCarsVisitOurWeight3.IsEmpty or qryCarsVisitOurWeight5.IsEmpty or VCarLast.IsEmpty then
    begin
       Result:=True;
       Text:= '';
       Exit;
    end
    else
    begin
      qryCarsVisitOurWeight3.First;
      fw:=qryCarsVisitOurWeight3Weight.AsInteger;
      qryCarsVisitOurWeight5.Last;
      lw:=qryCarsVisitOurWeight5Weight.AsInteger;
      VCarLastWeight.AsInteger;
      if VCarLastTrustPeriod.AsInteger > 0 then
         if Abs(fw-lw) > VCarLastTrustPeriod.AsInteger then
         begin
            Text:= 'Απόκληση(EE) ' + inttostr(Abs((fw-lw)))+' > '+VCarLastTrustPeriod.AsString;
            Result:=False;
         end
         else
         begin
            Text:= '';
            Result:=True;
         end;
    end;
end;



end.
