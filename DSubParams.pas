unit DSubParams;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, DBase, ADODB, ExtDlgs, Common;

type
  TDMSubParams = class(TDMBase)
    qryCompany: TADOQuery;
    dsCompany: TDataSource;
    qryCompanyid: TIntegerField;
    qryCompanyName: TWideStringField;
    qryCompanyComments: TWideStringField;
    qryCompanyFriendCompany: TBooleanField;
    qryCompanySpecialCom: TBooleanField;
    qryDrivers: TADOQuery;
    dsDrivers: TDataSource;
    qryCars: TADOQuery;
    dsCars: TDataSource;
    qryDriversid: TIntegerField;
    qryDriversName: TWideStringField;
    qryDriversCompanyId: TIntegerField;
    qryDriversComments: TWideStringField;
    qryCarsid: TIntegerField;
    qryCarsRegNo: TWideStringField;
    qryCarsCompanyId: TIntegerField;
    qryCarsCompany: TWideStringField;
    qryCarsCapacity: TBCDField;
    qryCarsGross: TBCDField;
    qryCarsTrustPeriod: TIntegerField;
    qryCarsComments: TWideStringField;
    qryProducts: TADOQuery;
    dsProducts: TDataSource;
    qryProductsid: TIntegerField;
    qryProductsName: TWideStringField;
    qryProductsComments: TWideStringField;
    qryDriversPhoName: TWideStringField;
    qryDriversAutoCreate: TBooleanField;
    qryDriversAutoCreateSource: TIntegerField;
    qryCompanySpecialCom1: TBooleanField;
    qryCompanyPhoName: TWideStringField;
    qryCompanyAutoCreate: TBooleanField;
    qryCompanyAutoCreateSource: TIntegerField;
    qryProductsPhoName: TWideStringField;
    qryContacts: TADOQuery;
    dsContacts: TDataSource;
    qryContactsid: TIntegerField;
    qryContactsName: TWideStringField;
    qryContactsPhone: TWideStringField;
    qryContactsPhoName: TWideStringField;
    qryPersons: TADOQuery;
    dsPersons: TDataSource;
    qryPersonsId: TIntegerField;
    qryPersonsPerson: TWideStringField;
    qryPersonsCompany: TWideStringField;
    qryPersonsIdentityNo: TWideStringField;
    qryPersonsPhoPerson: TWideStringField;
    qryPersonsPhoCompany: TWideStringField;
    qryPersonsPhoIdentityNo: TWideStringField;
    qryDriversOther: TADOQuery;
    dsDriversOther: TDataSource;
    qryDriversOtherid: TIntegerField;
    qryDriversOtherName: TWideStringField;
    qryDriversOtherCompanyId: TIntegerField;
    qryDriversOtherComments: TWideStringField;
    qryDriversOtherPhoName: TWideStringField;
    qryDriversOtherAutoCreate: TBooleanField;
    qryDriversOtherAutoCreateSource: TIntegerField;
    qryCarsOther: TADOQuery;
    dsCarsOther: TDataSource;
    qryCarsOtherid: TIntegerField;
    qryCarsOtherRegNo: TWideStringField;
    qryCarsOtherCompanyId: TIntegerField;
    qryCarsOtherComments: TWideStringField;
    qrySpecTank: TADOQuery;
    dsSpecTank: TDataSource;
    qrySpecTankid: TIntegerField;
    qrySpecTankSpName: TWideStringField;
    qrySpecTankCompId: TIntegerField;
    qryDriversLCompany: TStringField;
    qryCarsLCompany: TStringField;
    qryCarsOtherLCompany: TStringField;
    qryDriversOtherLCompany: TStringField;
    CompanyFriend: TADOQuery;
    CompanyFriendid: TIntegerField;
    CompanyFriendName: TWideStringField;
    CompanyFriendComments: TWideStringField;
    CompanyFriendFriendCompany: TBooleanField;
    CompanyFriendSpecialCom: TBooleanField;
    CompanyFriendSpecialCom1: TBooleanField;
    CompanyFriendPhoName: TWideStringField;
    CompanyFriendAutoCreate: TBooleanField;
    CompanyFriendAutoCreateSource: TIntegerField;
    CompanyOther: TADOQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    BooleanField3: TBooleanField;
    WideStringField3: TWideStringField;
    BooleanField4: TBooleanField;
    IntegerField2: TIntegerField;
    dsCompanyFriend: TDataSource;
    dsCompanyOther: TDataSource;
    qryLogonMonitor: TADOQuery;
    dsLogonMonitor: TDataSource;
    qryLogonMonitorid: TIntegerField;
    qryLogonMonitorUserId: TIntegerField;
    qryLogonMonitorMacAddr: TWideStringField;
    qryLogonMonitorIPV4Addr: TWideStringField;
    qryLogonMonitorIPV6Addr: TWideStringField;
    qryLogonMonitorComputerName: TWideStringField;
    qryLogonMonitorWindowsUserName: TWideStringField;
    qryLogonMonitorLogonDT: TDateTimeField;
    qryLogonMonitorLogOffDT: TDateTimeField;
    qryLogonMonitorFileVersion: TWideStringField;
    qryDailyReport: TADOQuery;
    dtsDailyReport: TDataSource;
    qryDailyReportid: TIntegerField;
    qryDailyReportAA: TIntegerField;
    qryDailyReportInsUsr: TIntegerField;
    qryDailyReportInsDT: TDateTimeField;
    qryDailyReportInUsr: TIntegerField;
    qryDailyReportRepText: TBlobField;
    qryDailyReportRepTextNoRich: TStringField;
    qryDailyReportRepDate: TDateTimeField;
    qryDepartments: TADOQuery;
    qryDepartmentsid: TIntegerField;
    qryDepartmentsName: TWideStringField;
    dtsDepartments: TDataSource;
    qryForemen: TADOQuery;
    IntegerField3: TIntegerField;
    WideStringField4: TWideStringField;
    dtsForemen: TDataSource;
    qryDepartment_Foremen: TADOQuery;
    IntegerField4: TIntegerField;
    WideStringField5: TWideStringField;
    drsDepartment_Foremen: TDataSource;
    procedure DMSubParamsCreate(Sender: TObject);
    procedure GenBeforePost(DataSet: TDataSet);
    procedure GenAfterPost(DataSet: TDataSet);
    procedure dsCountryStateChange(Sender: TObject);
    procedure ConnUPIPFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure qryCarsRegNoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qryCarsRegNoSetText(Sender: TField; const Text: string);
    procedure qryDailyReportCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    function UpperLatin(Key: Char):Char;
  public
    MainTable: TTable;
    procedure DeleteRecord; override;
    procedure DeleteNamedRecord(DataSet: TDataSet); override;
    procedure InsertRecord; override;
    procedure SelectImage(dlg: TOpenPictureDialog; field: TBlobField);
  end;

implementation

uses DMain, FMain;

{$R *.DFM}

procedure TDMSubParams.InsertRecord;
begin
end;

procedure TDMSubParams.qryCarsRegNoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var x:Integer;
    tms:string;
begin
  inherited;
  Text:=Sender.AsString;
  if Length(Text)>0 then
  begin
  for x := 0 to Length(Text)-1 do
      tms:=tms+UpperLatin(Text[x]);
//  text:=tms;
  end;
end;

procedure TDMSubParams.qryCarsRegNoSetText(Sender: TField; const Text: string);
var x:Integer;
    tms:string;
begin
  inherited;
  if Length(Text)>0 then
  begin
  for x := 1 to Length(Text) do
      tms:=tms+UpperLatin(Text[x]);
  Sender.AsString:=tms;
  end;
end;

procedure TDMSubParams.qryDailyReportCalcFields(DataSet: TDataSet);
begin
  inherited;
   qryDailyReportRepTextNoRich.AsString :=
   frmmain.ConvertRTFToAsciiText(qryDailyReportRepText.AsString);
end;

function TDMSubParams.UpperLatin(Key: Char):Char;
var
  i, PosA: Integer;
  kk: AnsiChar;
  KU: string;
begin
  KU   := Key;
  KU   := AnsiUpperCase(Key);
  PosA := Pos(KU, gRegNoGreek);
  if not(PosA = 0) then
    begin
      result:= Char(gRegNoLatin[PosA]);
    end
  else
    begin
      result:= Key;
    end
end;



procedure TDMSubParams.GenAfterPost(DataSet: TDataSet);
begin
  inherited;
  DMMain.TblChanges.UpdateBatch();
end;


procedure TDMSubParams.DMSubParamsCreate(Sender: TObject);
begin
  DMCreate(TForm(self));
end;

procedure TDMSubParams.GenBeforePost(DataSet: TDataSet);
var nStr:string;
begin
//  BeforePost(DataSet);
  if Assigned(DataSet.FindField('PhoName')) then
    if Assigned(DataSet.FindField('Name')) then
      DataSet.FieldByName('PhoName').Value:=frmMain.String2Pho(DataSet.FieldByName('Name').Value);

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

procedure TDMSubParams.DeleteRecord;
begin
end;

procedure TDMSubParams.ConnUPIPFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept := True;

end;

procedure TDMSubParams.DeleteNamedRecord(DataSet: TDataSet);
begin
  DataSet.Delete;
end;

procedure TDMSubParams.dsCountryStateChange(Sender: TObject);
begin
  ParamStateChange(Sender);
end;

procedure TDMSubParams.SelectImage(dlg: TOpenPictureDialog; field: TBlobField);
var
  stream: TBlobStream;
  image: TPicture;
  ds: TDataSet;
begin
  image  := nil;
  stream := nil;
  ds     := field.DataSet;
  try
    if dlg.Execute then
      begin
        if (ds.State = dsBrowse) then
          if ds.Eof and ds.Bof then
            ds.Insert
          else
            ds.Edit;
        image           := TPicture.Create;
        stream          := TBlobStream.Create(field, bmWrite);
        stream.Position := 0;
        image.LoadFromFile(dlg.FileName);
        image.Graphic.SaveToStream(stream);
      end;
  finally
    image.Free;
    stream.Free;
  end;
end;


//procedure TDMPersonDet.qryPersonsVisitAfterPost(DataSet: TDataSet);
//begin
//  inherited;
//  DMMain.TblChanges.UpdateBatch();
//end;
//
//procedure TDMPersonDet.qryPersonsVisitBeforePost(DataSet: TDataSet);
//begin
//  inherited;
//  BeforePost0(DataSet, 'PersonsVisit');
//end;


end.
