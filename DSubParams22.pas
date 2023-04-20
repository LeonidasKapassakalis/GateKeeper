unit DSubParams22;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, DBase, ADODB, ExtDlgs, Common;

type
  TDMSubParams22 = class(TDMBase)
    qryTRawLib: TADOQuery;
    qryTRawLibGId: TGuidField;
    qryTRawLibLibId: TIntegerField;
    qryTRawLibLibDateTime: TDateTimeField;
    qryTRawLibLibRegNo: TWideStringField;
    qryTRawLibLibWeight: TIntegerField;
    qryTRawLibError: TBooleanField;
    qryTRawLibUsed: TBooleanField;
    dsTRawLib: TDataSource;
    procedure DMSubParamsCreate(Sender: TObject);
    procedure GenBeforePost(DataSet: TDataSet);
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

uses DMain;

{$R *.DFM}

procedure TDMSubParams22.InsertRecord;
begin
end;

procedure TDMSubParams22.DMSubParamsCreate(Sender: TObject);
begin
  DMCreate(TForm(self));
end;

procedure TDMSubParams22.GenBeforePost(DataSet: TDataSet);
begin
  BeforePost(DataSet);
end;

procedure TDMSubParams22.DeleteRecord;
begin
end;

procedure TDMSubParams22.ConnUPIPFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept := True;

end;

procedure TDMSubParams22.DeleteNamedRecord(DataSet: TDataSet);
begin
  DataSet.Delete;
end;

procedure TDMSubParams22.dsCountryStateChange(Sender: TObject);
begin
  ParamStateChange(Sender);
end;

procedure TDMSubParams22.SelectImage(dlg: TOpenPictureDialog; field: TBlobField);
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

end.
