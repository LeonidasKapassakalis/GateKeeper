unit DSubParams00;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, DBase, ADODB, ExtDlgs, Common;

type
  TDMSubParams00 = class(TDMBase)
    dsContacts: TDataSource;
    Contacts: TADOTable;
    Contactsid: TIntegerField;
    ContactsName: TWideStringField;
    ContactsSurname: TWideStringField;
    Contactsemail: TWideStringField;
    ContactsPhone: TWideStringField;
    ContactsFax: TWideStringField;
    ContactsMobile: TWideStringField;
    dsMerchant_Contacts: TDataSource;
    Merchant_Contacts: TADOTable;
    Merchant_ContactsLContacts: TStringField;
    dsContactType: TDataSource;
    ContactType: TADOTable;
    ContactTypeContactTypeId: TAutoIncField;
    ContactTypeContactType_Name: TWideStringField;
    ContactTypeContactType_Procedure: TWideStringField;
    ContactTypeInsUsr: TIntegerField;
    ContactTypeInsDT: TDateTimeField;
    ContactTypeUpdUsr: TIntegerField;
    ContactTypeUpdDT: TDateTimeField;
    ContactTypeDeleted: TBooleanField;
    ContactTypeDelUsr: TIntegerField;
    ContactTypeDelDT: TDateTimeField;
    ContactTypeInActive: TBooleanField;
    ContactTypeInActiveUsr: TIntegerField;
    ContactTypeInActiveDt: TDateTimeField;
    Merchant_ContactsMerchantContactsId: TAutoIncField;
    Merchant_ContactsMerchantId: TIntegerField;
    Merchant_ContactsContactId: TIntegerField;
    Merchant_ContactsContactTypeId: TIntegerField;
    Merchant_ContactsMain: TBooleanField;
    Merchant_ContactsAA: TIntegerField;
    ContactsSendMail: TBooleanField;
    ContactsSendFax: TBooleanField;
    ContactsSendPrint: TBooleanField;
    qryContacts2MSC: TADOQuery;
    qryContacts2MSCStationStationId: TIntegerField;
    qryContacts2MSCCUSTOMERCUSTOMERID: TIntegerField;
    qryContacts2MSCCUSTOMERNAME: TWideStringField;
    qryContacts2MSCCUSTOMERSTREET: TWideStringField;
    qryContacts2MSCCUSTOMERZIP: TWideStringField;
    qryContacts2MSCCUSTOMERCITY: TWideStringField;
    qryContacts2MSCCUSTOMERAFM: TWideStringField;
    qryContacts2MSCCUSTOMERDOY: TWideStringField;
    qryContacts2MSCStationName: TWideStringField;
    qryContacts2MSCStationStreet: TWideStringField;
    qryContacts2MSCStationZIP: TWideStringField;
    qryContacts2MSCStationCity: TWideStringField;
    qryContacts2MSCMerchantMerchantId: TIntegerField;
    qryContacts2MSCMerchantName: TWideStringField;
    qryContacts2MSCMerchantStreet: TWideStringField;
    qryContacts2MSCMerchantZIP: TWideStringField;
    qryContacts2MSCMerchantCity: TWideStringField;
    qryContacts2MSCMerchantAFM: TWideStringField;
    qryContacts2MSCMerchantDOY: TWideStringField;
    qryContacts2MSCContactsId: TIntegerField;
    qryContacts2MSCContactsType: TIntegerField;
    qryContacts2MSCContactsType_id: TIntegerField;
    qryContacts2MSCContactsSurname: TWideStringField;
    qryContacts2MSCContactsName: TWideStringField;
    qryContacts2MSCContactsemail: TWideStringField;
    qryContacts2MSCContactsPhone: TWideStringField;
    qryContacts2MSCContactsFAX: TWideStringField;
    qryContacts2MSCContactsMobile: TWideStringField;
    qryContacts2MSCContactsSendMail: TBooleanField;
    qryContacts2MSCContactsSendFax: TBooleanField;
    qryContacts2MSCContactsSendPrint: TBooleanField;
    dsContacts2MSC: TDataSource;
    ContactsOldCode: TIntegerField;
    ContactsOldType: TIntegerField;
    ContactsComments: TMemoField;
    qryMSTOuter: TADOQuery;
    dtsMSTOuter: TDataSource;
    qryMSTOuterMerchantName: TWideStringField;
    qryMSTOuterStationStreet: TWideStringField;
    qryMSTOuterStationCity: TWideStringField;
    qryMSTOuterStationZIP: TWideStringField;
    qryMSTOuterTerminalidTerminalCode: TWideStringField;
    qryMSTOuterFax: TWideStringField;
    qryMSTOuterPhone: TWideStringField;
    qryView_2Contacts2: TADOQuery;
    qryView_2Contacts2ConParid: TIntegerField;
    qryView_2Contacts2ParId: TIntegerField;
    qryView_2Contacts2ContactId: TIntegerField;
    qryView_2Contacts2FromWhere: TIntegerField;
    qryView_2Contacts2FromWhere0: TIntegerField;
    qryView_2Contacts2Name: TWideStringField;
    qryView_2Contacts2Surname: TWideStringField;
    qryView_2Contacts2email: TWideStringField;
    qryView_2Contacts2Phone: TWideStringField;
    qryView_2Contacts2Fax: TWideStringField;
    qryView_2Contacts2Mobile: TWideStringField;
    qryView_2Contacts2Name0: TWideStringField;
    qryView_2Contacts2CUSTOMERID0: TIntegerField;
    dtsView_2Contacts2: TDataSource;
    qryView_2Contacts22: TADOQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    IntegerField6: TIntegerField;
    dtsView_2Contacts22: TDataSource;
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

procedure TDMSubParams00.InsertRecord;
begin
end;

procedure TDMSubParams00.DMSubParamsCreate(Sender: TObject);
begin
  DMCreate(TForm(self));
end;

procedure TDMSubParams00.GenBeforePost(DataSet: TDataSet);
begin
  BeforePost(DataSet);
end;

procedure TDMSubParams00.DeleteRecord;
begin
end;

procedure TDMSubParams00.ConnUPIPFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept := True;

end;

procedure TDMSubParams00.DeleteNamedRecord(DataSet: TDataSet);
begin
  DataSet.Delete;
end;

procedure TDMSubParams00.dsCountryStateChange(Sender: TObject);
begin
  ParamStateChange(Sender);
end;

procedure TDMSubParams00.SelectImage(dlg: TOpenPictureDialog; field: TBlobField);
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
