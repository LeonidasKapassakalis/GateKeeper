unit DSubParams33;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, DBase, ADODB, ExtDlgs, Common;

type
  TDMSubParams33 = class(TDMBase)
    qryContractors: TADOQuery;
    qryContractorsid: TIntegerField;
    qryContractorsName: TWideStringField;
    qryContractorsCompany: TWideStringField;
    qryContractorsVAT: TWideStringField;
    qryContractorsInsUsr: TIntegerField;
    qryContractorsInsDT: TDateTimeField;
    qryContractorsNotes: TWideStringField;
    dtsContractors: TDataSource;
    qryContractors_Workers: TADOQuery;
    qryContractors_WorkersId: TIntegerField;
    qryContractors_WorkersLContractors_Id: TStringField;
    qryContractors_WorkersContractors_Id: TIntegerField;
    qryContractors_WorkersName: TWideStringField;
    qryContractors_WorkersSurname: TWideStringField;
    qryContractors_WorkersInsUsr: TIntegerField;
    qryContractors_WorkersInsDT: TDateTimeField;
    qryContractors_WorkersActive: TBooleanField;
    qryContractors_WorkersADT: TWideStringField;
    qryContractors_WorkersManualInsert: TBooleanField;
    dtsContractors_Workers: TDataSource;
    qryContractors_Reason: TADOQuery;
    qryContractors_ReasonId: TIntegerField;
    qryContractors_ReasonLContractors_Id: TStringField;
    qryContractors_ReasonContractors_Id: TIntegerField;
    qryContractors_ReasonName: TWideStringField;
    qryContractors_ReasonInsUsr: TIntegerField;
    qryContractors_ReasonInsDT: TDateTimeField;
    qryContractors_ReasonActive: TBooleanField;
    dtsContractors_Reason: TDataSource;
    qryContractors_Contact: TADOQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    WideStringField1: TWideStringField;
    IntegerField3: TIntegerField;
    DateTimeField1: TDateTimeField;
    BooleanField1: TBooleanField;
    dtsContractors_Contact: TDataSource;
    procedure DMSubParamsCreate(Sender: TObject);
    procedure GenBeforePost(DataSet: TDataSet);
    procedure GenAfterPost(DataSet: TDataSet);
    procedure dsCountryStateChange(Sender: TObject);
    procedure ConnUPIPFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
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

procedure TDMSubParams33.InsertRecord;
begin
end;

procedure TDMSubParams33.DMSubParamsCreate(Sender: TObject);
begin
  DMCreate(TForm(self));
end;


procedure TDMSubParams33.DeleteRecord;
begin
end;

procedure TDMSubParams33.ConnUPIPFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept := True;

end;

procedure TDMSubParams33.DeleteNamedRecord(DataSet: TDataSet);
begin
  DataSet.Delete;
end;

procedure TDMSubParams33.dsCountryStateChange(Sender: TObject);
begin
  ParamStateChange(Sender);
end;

procedure TDMSubParams33.SelectImage(dlg: TOpenPictureDialog; field: TBlobField);
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

procedure TDMSubParams33.GenBeforePost(DataSet: TDataSet);
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
end;

procedure TDMSubParams33.GenAfterPost(DataSet: TDataSet);

begin
  inherited;
  DMMain.TblChanges.UpdateBatch();


end;



end.
