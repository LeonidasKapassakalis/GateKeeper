unit FEnhmPelates;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, ActnList, DB, Common, DEnhmTrans, CommonOut2000,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC,
  Vcl.ComCtrls, Vcl.PlatformDefaultStyleActnCtrls, cxNavigator, FBaseDev0,
  Vcl.Menus;

type
  TfrmFEnhmPelates = class(TfrmBaseDev0)
    dxPageControl1: TcxPageControl;
    tabBrowser: TcxTabSheet;
    StatusBar1: TStatusBar;
    dxBarManager1: TActionManager;
    qryTran: TADOQuery;
    qryTranSumAmount: TFloatField;
    qryTranSumQuantity: TFloatField;
    dtsTran: TDataSource;
    ADOQuery2: TADOQuery;
    ADOQuery1: TADOQuery;
    ActionList1: TActionList;
    actEnhmPelates: TAction;
    actClose: TAction;
    EnhmSap: TADOTable;
    EnhmSapCodePrat: TIntegerField;
    EnhmSapCodeCust: TIntegerField;
    EnhmSapAmount: TIntegerField;
    EnhmSapNeg: TIntegerField;
    EnhmSapSText: TStringField;
    EnhmTrans: TADOQuery;
    InsTrans: TADOQuery;
    InsTransTRANCID: TAutoIncField;
    InsTransCUSTOMERID: TIntegerField;
    InsTransDEBIT: TFloatField;
    InsTransCREDIT: TFloatField;
    InsTransTTEXT: TWideStringField;
    InsTransTRANCDATE: TDateTimeField;
    InsTransTRANBCID: TIntegerField;
    InsTransINSDT: TDateTimeField;
    InsTransUPDDT: TDateTimeField;
    InsTransINSUSR: TIntegerField;
    InsTransUPDUSR: TIntegerField;
    qryDeleteTranC: TADOQuery;
    IntegerField3: TIntegerField;
    WideStringField3: TWideStringField;
    IntegerField4: TIntegerField;
    WideStringField4: TWideStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    UpdCommandAct: TAction;
    InsTransENHMCOCALLID: TIntegerField;
    InsTransENHMCOCALLDATE: TDateTimeField;
    InsTransAUTOUPDATE: TBooleanField;
    InsTransVALUEDAY: TDateTimeField;
    InsTransVALUEDAYUPDATED: TBooleanField;
    qryTranCustomerId: TIntegerField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ActionToolBar1: TActionToolBar;
    ADOQuery1CUSTOMERID: TAutoIncField;
    ADOQuery1NAME: TWideStringField;
    ADOQuery1STREET: TWideStringField;
    ADOQuery1ZIP: TWideStringField;
    ADOQuery1CITY: TWideStringField;
    ADOQuery1AFM: TWideStringField;
    ADOQuery1DOY: TWideStringField;
    ADOQuery1STARTDATE: TDateTimeField;
    ADOQuery1AREAID: TIntegerField;
    ADOQuery1LOCATIONID: TIntegerField;
    ADOQuery1CGROUPID: TIntegerField;
    ADOQuery1CCLASSID: TIntegerField;
    ADOQuery1CREDITAMOUNT: TFloatField;
    ADOQuery1INSDT: TDateTimeField;
    ADOQuery1UPDDT: TDateTimeField;
    ADOQuery1INSUSR: TIntegerField;
    ADOQuery1UPDUSR: TIntegerField;
    ADOQuery1PROFESSION: TWideStringField;
    ADOQuery1BRANCHID: TIntegerField;
    ADOQuery1SAPCODE: TWideStringField;
    ADOQuery1ISACTIVE: TBooleanField;
    ADOQuery1SALESMENID: TIntegerField;
    ADOQuery1DIAKID: TIntegerField;
    ADOQuery1ISTEST: TBooleanField;
    ADOQuery1ISCONS: TBooleanField;
    ADOQuery1AREABID: TIntegerField;
    ADOQuery1DATEPHEND: TDateTimeField;
    ADOQuery1DATELOEND: TDateTimeField;
    ADOQuery1HASDETAILEMP: TBooleanField;
    ADOQuery1ALLCARDSTOBL: TBooleanField;
    ADOQuery1ALLCARDSTOBLDATE: TDateTimeField;
    ADOQuery1ALLCARDSTOBLSYSDATE: TDateTimeField;
    ADOQuery1ALLCARDSTOBLUSR: TIntegerField;
    ADOQuery1CUSTOMEROFF: TBooleanField;
    ADOQuery1CUSTOMEROFFDATE: TDateTimeField;
    ADOQuery1CUSTOMEROFFSYSDATE: TDateTimeField;
    ADOQuery1CUSTOMEROFFUSR: TIntegerField;
    ADOQuery1CARDHASEMPNAME: TBooleanField;
    ADOQuery1DATEEND: TDateTimeField;
    ADOQuery1CompanyTypeId: TIntegerField;
    ADOQuery2Stationid: TAutoIncField;
    ADOQuery2Name: TWideStringField;
    ADOQuery2STREET: TWideStringField;
    ADOQuery2ZIP: TWideStringField;
    ADOQuery2CITY: TWideStringField;
    ADOQuery2AreaId: TIntegerField;
    ADOQuery2SalesMenId: TIntegerField;
    ADOQuery2IGroupId1: TIntegerField;
    ADOQuery2Pososto1: TFloatField;
    ADOQuery2HaveGroup1: TBooleanField;
    ADOQuery2IGroupId2: TIntegerField;
    ADOQuery2Pososto2: TFloatField;
    ADOQuery2HaveGroup2: TBooleanField;
    ADOQuery2IGroupId3: TIntegerField;
    ADOQuery2Pososto3: TFloatField;
    ADOQuery2HaveGroup3: TBooleanField;
    ADOQuery2IGroupId4: TIntegerField;
    ADOQuery2Pososto4: TFloatField;
    ADOQuery2HaveGroup4: TBooleanField;
    ADOQuery2IGroupId5: TIntegerField;
    ADOQuery2Pososto5: TFloatField;
    ADOQuery2HaveGroup5: TBooleanField;
    ADOQuery2IGroupId6: TIntegerField;
    ADOQuery2Pososto6: TFloatField;
    ADOQuery2HaveGroup6: TBooleanField;
    ADOQuery2IGroupId7: TIntegerField;
    ADOQuery2Pososto7: TFloatField;
    ADOQuery2HaveGroup7: TBooleanField;
    ADOQuery2IGroupId8: TIntegerField;
    ADOQuery2Pososto8: TFloatField;
    ADOQuery2HaveGroup8: TBooleanField;
    ADOQuery2IGroupId9: TIntegerField;
    ADOQuery2Pososto9: TFloatField;
    ADOQuery2HaveGroup9: TBooleanField;
    ADOQuery2IGroupId10: TIntegerField;
    ADOQuery2Pososto10: TFloatField;
    ADOQuery2HaveGroup10: TBooleanField;
    ADOQuery2Deleted: TBooleanField;
    ADOQuery2DelUsr: TIntegerField;
    ADOQuery2DelDT: TDateTimeField;
    ADOQuery2InActive: TBooleanField;
    ADOQuery2InActiveUsr: TIntegerField;
    ADOQuery2InActiveDt: TDateTimeField;
    ADOQuery2StopSales: TBooleanField;
    ADOQuery2StopSalesUsr: TIntegerField;
    ADOQuery2StopSalesDt: TDateTimeField;
    ADOQuery2IsTest: TBooleanField;
    ADOQuery2IsTestUsr: TIntegerField;
    ADOQuery2IsTestDt: TDateTimeField;
    qryTranLCustomer: TStringField;
    qryTranLCustomerSAP: TStringField;
    cxGrid1DBTableView1SumAmount: TcxGridDBColumn;
    cxGrid1DBTableView1SumQuantity: TcxGridDBColumn;
    cxGrid1DBTableView1CustomerId: TcxGridDBColumn;
    cxGrid1DBTableView1LCustomer: TcxGridDBColumn;
    cxGrid1DBTableView1LCustomerSAP: TcxGridDBColumn;
    procedure actEnhmPelatesExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    DM: TDMEnhmTrans;
    ToDate: TDateTime;
  end;

implementation

uses Globals, DMain, FMain;

{$R *.dfm}

procedure TfrmFEnhmPelates.actEnhmPelatesExecute(Sender: TObject);
var x:Integer;
    CallVar:Variant;
    BatchNo:Integer;
    YY,MM,DD:Word;
begin
// Check if all Customers Station Have Valid Sap Codes
 qryTran.First;
  repeat
    try
      x:=qryTranLCustomerSAP.AsInteger
    except
         MessageDlg('Πρόβλημα με Κωδικό SAP Πελάτη '+ qryTranLCustomer.AsString, mtError, [mbOK], 0);
         exit;
    end;
    if Not x > 0 then
       begin
         MessageDlg('Πρόβλημα με Κωδικό SAP Πελάτη '+ qryTranLCustomer.AsString, mtError, [mbOK], 0);
         exit;
       end;
    qryTran.Next;
  until qryTran.Eof;

/////////////////////////////////////////////////////////////

  DecodeDate(ToDate,YY,MM,DD);

  CallVar:= Inttostr(DD) + '/' + inttostr(MM) + '/' + inttostr(YY) ;
//  VarArrayOf([Inttostr(DD) + '/' + inttostr(MM) + '/' + inttostr(YY)],1)

////Requery Data from Server to find last Enhm
  DM.qryEnhmPECall.Active := False;
  DM.qryEnhmPECall.Active := True;

  if DM.qryEnhmPECall.Locate('EnPCallDate;EnPCallFrom',VarArrayOf([Inttostr(DD) + '/' + inttostr(MM) + '/' + inttostr(YY),'1']),[]) then
     begin
        if MessageDlg('Εχετε ήδη Ενημερώσει για την Ημερομηνία.' + chr(13) +
                      'Nα διαγραφούν οι εγγραφές;', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           begin
               qryDeleteTranC.Parameters.ParamByName('PTranBCID').Value:=DM.qryEnhmPECallENPCALLID.AsInteger;
               qryDeleteTranC.ExecSQL;
               self.Refresh;
           end
        else
           exit;
     end
  else
     begin
       DM.qryEnhmPECall.Insert;
       DM.qryEnhmPECall.Edit;
       DM.qryEnhmPECall.FieldByName('EnPCallDate').AsDateTime := ToDate;
       DM.qryEnhmPECall.FieldByName('EnPCallFrom').AsInteger  := 1;
       DM.qryEnhmPECall.Post;
     end;
//  if GeneralDM.tblEnhmPECall.Locate('EnPCallDate',CallVar,[]) then
  if DM.qryEnhmPECall.Locate('EnPCallDate;EnPCallFrom',VarArrayOf([Inttostr(DD) + '/' + inttostr(MM) + '/' + inttostr(YY),'1']),[]) then
     begin
       BatchNo:=DM.qryEnhmPECallENPCALLID.AsInteger;
     end
  else
     begin
        ShowMessage('Πρόβλημα στην Ενημέρωση');
        exit;
     end ;

  qryTran.First;
  StatusBar1.Panels[0].Text   :=' ';
  repeat
    InsTrans.Active:=True;
    InsTrans.Insert;
    InsTrans.Edit;
    InsTransCUSTOMERID.AsInteger        :=qryTranCustomerId.AsInteger;
    InsTransTRANBCID.AsInteger          :=BatchNo;
    InsTransDEBIT.AsFloat               :=qryTranSumAmount.AsFloat;
    InsTransTTEXT.AsString              :='Αξία Συναλλαγών έως ' + datetostr(ToDate) ;
    InsTransTRANCDATE.AsDateTime        :=ToDate;
    InsTransINSDT.AsDateTime            :=now();
    InsTransUPDDT.AsDateTime            :=now();
    InsTransINSUSR.AsInteger            :=gUUserId;
    InsTransUPDUSR.AsInteger            :=gUUserId;
    InsTransAUTOUPDATE.AsBoolean        :=True;
    InsTransVALUEDAYUPDATED.AsBoolean   :=False;
    InsTrans.Post;

    qryTran.Next;
  until qryTran.Eof;

  EnhmTrans.Parameters.ParamByName('BTACard').Value:=BatchNo;
  EnhmTrans.Parameters.ParamByName('BTUpd').Value  :=True;
  EnhmTrans.ExecSQL;

  StatusBar1.Panels[0].Text   :=' ';

  CreateDraftMail(ReadApplicationIni(INI_ADO_SECTION,MAIL_TO),
                  ReadApplicationIni(INI_ADO_SECTION,MAIL_CC),
                  ReadApplicationIni(INI_ADO_SECTION,MAIL_BCC),
                  'Ενημέρωση Δεκαημέρου Αρχείου AVINCARD',
                  'Ενημέρωση Δεκαημέρου Αρχείου AVINCARD '+ DatetoStr(ToDate));

  MessageDlg('Ολοκλήρωση Διαδικασίας!', mtInformation, [mbOK], 0);
end;

procedure TfrmFEnhmPelates.FormCreate(Sender: TObject);
begin
  inherited;
  DM:=TDMEnhmTrans.Create(self);
end;

procedure TfrmFEnhmPelates.actCloseExecute(Sender: TObject);
begin
  Close;
end;

end.
