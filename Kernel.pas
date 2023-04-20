
Unit Kernel;

Interface

Uses
  Forms, Dialogs, Controls, QuickRpt, System.Classes;

Procedure AvinKernel(JobID: Integer);
Procedure AvinKernelNum(TagID: Integer);
procedure GeneralFormExecuteName(FormName: String;
  FormSubName: String = ''; FrmCaption: String = ''; DataS: String = '';
  DMName: String = '');
Function AvinCardLogin: Boolean;
function FindSecuritySub(Form:String; Group:Integer): Boolean;
function ReturnFormId(Form:String): Integer;


Implementation

Uses
  DMain, Globals, About, Company, Area, Location, Station, ImportStd,
  DBase,
  SGroup, SClass, IGroup, IClass, CGroup, CClass, SItem, Customer, VType, ACard,
  SystemParams, UGroup, UUser, Login, ExportBlackList, ExportNew, TranPro,
  PrnStationPro, PrnSItemPro, PrnCustomerPro, PrnACardPro, PrnTranPro,
  Branch, DispCardData, STranBatch, ATranBatch, STranPro, ATranPro, FTrCall, SalesMen,
  MGroup, MSevr, DirectMail, PrnDirectMailPro, TextTab, AreaB, FMErrorG, FMError, EnhmTranPro,
  PrnLogarPro, Diak, FEnhmPECall, FEnhmSTCall, Main, SysUtils, ImportSap,
  DocType, SGL, PostingKey, DPS, PrnStationCalendarPro, PrnMessagePro,
  PrnDErrorPro, DispStatData, FEnhmCoCall, DispCompD, TranP, FMerrpp, FMerrppg,
  rLastCallDate, rptBaseAvinCard, Merchant, Terminal,
  PrnStatPro, PrnDerrppPro, AreaC, AreaD, AreaE, DForm, SForm, FormAction,
  SFormAction, Employees, EnhmTransComPro, FEnhmLOCall, FEnhmDisCall, FEnhmDLCall,
  SItemDiscount, ATranDis , ATranDisC, PrnTranEmpPro, DLTran, DLTranPro, FMail,
  FSubParamsNoDev;

Function AvinCardLogin: Boolean;
Var
  f: TfrmLogin;
  Count: Integer;
  Ret: Integer;
Begin
  Count := 0;
  Result := false;
  If (GeneralDM.tblUUser.RecordCount > 0) Then Begin
    f := TfrmLogin.Create(Application);
    While (Count < 3) Do Begin { three attempts for login are allowed }
      Ret := f.ShowModal;
      If (Ret = mrCancel) Then Break
      Else If (Ret = mrOK) Then Begin
        Result := true;
        Break;
      End;
      Inc(Count);
    End;
    f.Free;
  End else Result := true;
End;

function ReturnFormId(Form:String): Integer;
begin
  GeneralDM.QFindFormId.Active:=False;
  GeneralDM.QFindFormId.Parameters.ParamByName('Name').Value:=Form;
  GeneralDM.QFindFormId.Active:=True;
  if ( GeneralDM.QFindFormId.IsEmpty ) then
     begin
      GeneralDM.tblDForm.Insert;
      GeneralDM.tblDFormName.AsString:=Form;
      GeneralDM.tblDFormPerig.AsString:=Form;
      try
       GeneralDM.tblDForm.Post;
      except
       GeneralDM.tblDForm.Cancel;
      end;
       result := ReturnFormId(Form);
     end
  else
    begin
     Result  :=GeneralDM.QFindFormIdDFormID.AsInteger;
    end;
end;

function FindSameFormExecute(FormId:Integer): Boolean;
begin
  if GeneralDM.InsertLocTrans(FormId,gUUserID) then
     result := True
  else
     begin
       GeneralDM.DisplayLocTrans(FormId);
       result := False;
     end
end;

function UnSetFormExecute(FormId:Integer): Boolean;
begin
  if GeneralDM.DeleteLocTrans(FormId,gUUserID) then
     result := True
  else
     begin
     MessageDlg('Error Reseting Status.', mtError, [mbOK], 0);
       result := False;
     end
end;


function FindSecuritySub(Form:String; Group:Integer): Boolean;
begin
  If (Group = 1) then
     begin
       Result   :=True;
       exit;
     end;
  GeneralDM.QLSForm.Active:=False;
  GeneralDM.QLSForm.Parameters.ParamByName('FormId').Value:=ReturnFormId(Form);
  GeneralDM.QLSForm.Parameters.ParamByName('GroupId').Value:=Group;
  GeneralDM.QLSForm.Active:=True;
  if ( GeneralDM.QLSForm.IsEmpty ) then
    Result:=False
  else
    begin
     Result  :=True;
    end
end;

Procedure AvinOpenModal(FormClass: TFormClass);
Var
  Form: TForm;
Begin
  GeneralDM.tblDForm.Insert;
  GeneralDM.tblDFormName.AsString:=FormClass.ClassName;
  GeneralDM.tblDFormPerig.AsString:=FormClass.ClassName;
  try
    GeneralDM.tblDForm.Post;
  except
    GeneralDM.tblDForm.Cancel;
  end;

if FindSecuritySub(FormClass.ClassName,gUGroupID) then
  begin
    try
      try
        Form := FormClass.Create(Application);
        Form.ShowModal;
      except
        MessageDlg('Error create form' + FormClass.ClassName, mtError, [mbOK], 0);
      end;
    finally
      Form.Free;
    end;
  end
else
MessageDlg('Δεν έχετε το Δικαίωμα '+FormClass.ClassName, mtError, [mbOK], 0);
End;

Procedure AvinOpenModalSec(FormClass: TFormClass);
Var
  Form: TForm;
  FormId:Integer;
Begin
  GeneralDM.tblDForm.Insert;
  GeneralDM.tblDFormName.AsString:=FormClass.ClassName;
  GeneralDM.tblDFormPerig.AsString:=FormClass.ClassName;
  try
    GeneralDM.tblDForm.Post;
  except
    GeneralDM.tblDForm.Cancel;
  end;

if FindSecuritySub(FormClass.ClassName,gUGroupID) then
  begin
    FormId := ReturnFormId(FormClass.ClassName);
    if FindSameFormExecute(FormId) then
       begin
         try
           try
             Form := FormClass.Create(Application);
             Form.ShowModal;
           except
             MessageDlg('Error create form' + FormClass.ClassName, mtError, [mbOK], 0);
           end;
         finally
           Form.Free;
           UnSetFormExecute(FormId)
        end;
       end
    else
     MessageDlg(FormClass.ClassName+ ' is already running! Only one Instance allowed.', mtError, [mbOK], 0);
  end
else
MessageDlg('Δεν έχετε το Δικαίωμα '+FormClass.ClassName, mtError, [mbOK], 0);
End;

/////////////////////////////////////////////////////////

Procedure AvinReportModal;
Var  Form: TrptLastCallDate;
Begin
     try
     try
        Form := TrptLastCallDate.Create(frmMain);
        Form.PreviewModal;
      except
        MessageDlg('Error create form', mtError, [mbOK], 0);
      end;
    finally
      Form.Free;
    end;
End;

/////////////////////////////////////////////////////////

Procedure AvinKernel(JobID: Integer);
Begin
  if frmMain.IsTest Then
    begin
     Beep();
     Beep();
     MessageDlg('Test Enviroment.', mtInformation,[mbOk], 0);
    end;

  Case JobID Of
    JOB_ABOUT           : AvinOpenModal(TfrmAbout); { TODO : τακτοποίηση της frmAbout...περιεχόμενο...στοιχεία }
    JOB_COMPANY         : AvinOpenModal(TfrmCompany);
    JOB_AREA            : AvinOpenModal(TfrmArea);
    JOB_LOCATION        : AvinOpenModal(TfrmLocation);
    JOB_STATION         : AvinOpenModal(TfrmStation);
    JOB_SGROUP          : AvinOpenModal(TfrmSGroup);
    JOB_SCLASS          : AvinOpenModal(TfrmSClass);
    JOB_IMPORT          : AvinOpenModalSec(TfrmImportStd);
    JOB_IGROUP          : AvinOpenModal(TfrmIGroup);
    JOB_ICLASS          : AvinOpenModal(TfrmIClass);
    JOB_CGROUP          : AvinOpenModal(TfrmCGroup);
    JOB_CCLASS          : AvinOpenModal(TfrmCClass);
    JOB_SITEM           : AvinOpenModal(TfrmSItem);
    JOB_CUSTOMER        : AvinOpenModal(TfrmCustomer);
    JOB_VTYPE           : AvinOpenModal(TfrmVType);
    JOB_ACARD           : AvinOpenModal(TfrmACard);
    JOB_EXPORT_BLACK_LIST: AvinOpenModalSec(TfrmExportBlackList);
    JOB_EXPORT_NEW_CARDS: AvinOpenModalSec(TfrmExportNew);
    JOB_SYSTEM_PARAMS   : AvinOpenModal(TfrmSystemParams);
    JOB_UGROUP          : AvinOpenModal(TfrmUGroup);
    JOB_UUSER           : AvinOpenModal(TfrmUUser);
    JOB_TRAN            : AvinOpenModal(TfrmTranPrologue);
    JOB_PRN_STATION     : AvinOpenModal(TfrmPrnStationPrologue);
    JOB_PRN_SITEM       : AvinOpenModal(TfrmPrnSItemPrologue);
    JOB_PRN_CUSTOMER    : AvinOpenModal(TfrmPrnCustomerPrologue);
    JOB_PRN_ACARD       : AvinOpenModal(TfrmPrnACardPrologue);
    JOB_PRN_TRAN        : AvinOpenModal(TfrmPrnTranPrologue);
    JOB_BRANCH          : AvinOpenModal(TfrmBranch);
    JOB_STRAN_BATCH     : AvinOpenModal(TfrmSTranBatch);
    JOB_ATRAN_BATCH     : AvinOpenModal(TfrmATranBatch);
    JOB_STRAN           : AvinOpenModal(TfrmSTranPrologue);
    JOB_DISPCARDDATA    : AvinOpenModal(TfrmDispCardData);
    JOB_MGROUP          : AvinOpenModal(TfrmMGroup);
    JOB_MSEVR           : AvinOpenModal(TfrmMSevr);
    JOB_ATRAN           : AvinOpenModal(TfrmATranPrologue);
    JOB_TRCALL          : AvinOpenModal(TfrmTrCall);
    JOB_DIRECTMAIL      : AvinOpenModal(TfrmDirectMail);
    JOB_SALESMEN        : AvinOpenModal(TfrmSalesMen);
    JOB_DIRECTMAILPRINT : AvinOpenModal(TfrmPrnDirectMailPro);
    JOB_TEXTTAB         : AvinOpenModal(TfrmTextTab);
    JOB_AREAB           : AvinOpenModal(TfrmAreaB);
    JOB_MERRORG         : AvinOpenModal(TfrmMErrorG);
    JOB_MERROR          : AvinOpenModal(TfrmMError);
    JOB_ENHMSAP         : AvinOpenModal(TfrmEnhmTranPrologue);
    JOB_PRNLOGAR        : AvinOpenModal(TfrmPrnLogarPrologue);
    JOB_DIAK            : AvinOpenModal(TfrmDiak);
    JOB_PETRANS         : AvinOpenModal(TfrmEnhmPECall);
    JOB_STTRANS         : AvinOpenModal(TfrmEnhmSTCall);
    JOB_SAPIMPORT       : AvinOpenModal(TfrmImportSap);
    JOB_DOCTYP          : AvinOpenModal(TfrmDocType);
    JOB_PK              : AvinOpenModal(TfrmPostingKey);
    JOB_SGL             : AvinOpenModal(TfrmSGL);
    JOB_DPS             : AvinOpenModal(TfrmDPS);
    JOB_TRCALLPRN       : AvinOpenModal(TfrmPrnStationCallendarPro);
    JOB_PRNMESS         : AvinOpenModal(TfrmPrnMessagePro);
    JOB_DISPSTAT        : AvinOpenModal(TfrmDispStatData);
    JOB_PRNDERR         : AvinOpenModal(TfrmPrnDErrorPro);
    JOB_COTRANS         : AvinOpenModal(TfrmEnhmCoCall);
    JOB_TRANP           : AvinOpenModal(TfrmTranP);
    JOB_DISPCOMPDATA    : AvinOpenModal(TfrmDispCompD);
    JOB_MERRPPG         : AvinOpenModal(TfrmMerrppG);
    JOB_MERRPP          : AvinOpenModal(TfrmMerrpp);
    JOB_STAT            : AvinOpenModal(TFrmPrnStatPro);
    JOB_PRNDERRPP       : AvinOpenModal(TFrmPrnDerrppPro);

    JOB_AREAC           : AvinOpenModal(TFrmAreaC);
    JOB_AREAD           : AvinOpenModal(TFrmAreaD);
    JOB_AREAE           : AvinOpenModal(TFrmAreaE);

    JOB_DFORM           : AvinOpenModal(TFrmDForm);
    JOB_SFORM           : AvinOpenModal(TFrmSForm);
    JOB_FORMACTION      : AvinOpenModal(TFrmFormAction);
    JOB_SFORMACTION     : AvinOpenModal(TFrmSFormAction);
    JOB_EMPLOYEES       : AvinOpenModal(TFrmEmployees);
    JOB_ENHMTRANCOMPRO  : AvinOpenModal(TFrmEnhmTransComPrologue);
    JOB_TRLOCALL        : AvinOpenModal(TFrmEnhmLoCall);
    JOB_SITEMDISCOUNT   : AvinOpenModal(TFrmSitemDiscount);
    JOB_ENHMDISCALL     : AvinOpenModal(TFrmEnhmDisCall);
    JOB_ATRANDIS        : AvinOpenModal(TFrmATranDis);
    JOB_ATRANDISC       : AvinOpenModal(TFrmATranDisC);

    JOB_ENHMDLCALL      : AvinOpenModal(TFrmEnhmDlCall);
    JOB_DLTRAN          : AvinOpenModal(TFrmDlTranPrologue);
    JOB_MAIL            : AvinOpenModal(TFrmMail);

    JOB_MERCHANT        : AvinOpenModal(TFrmMerchant);
    JOB_TERMINAL        : AvinOpenModal(TFrmTerminal);


    JOB_LASTCALLDATE    : AvinReportModal;

    JOB_PRN_TRAN_EMP: AvinOpenModal(TfrmPrnTranEmpPro);
  else
    MessageDlg('Δεν υπάρχει η ενέργεια',mtConfirmation,[mbYes],0)
  End;
End;

Procedure AvinKernelNum(TagId: Integer);
var frm:TfrmSubParamsNoDev;
    Leo, Leo01: String;
    LeoDM:TDataModule;
    FormId : Integer;
Begin
  if frmMain.IsTest Then
    begin
     Beep();
     Beep();
     MessageDlg('Test Enviroment.', mtInformation,[mbOk], 0);
    end;


//    frm:= TfrmSubParamsNoDev.CreateSecurityWithOut(Application,121,'Leo',TDMBase(GeneralDM),'dtsDForm','111');
//    frm.ShowModal;
//    frm.Free;



//    JOB_PRN_TRAN_EMP: AvinOpenModal(TfrmPrnTranEmpPro);
//  else
//    MessageDlg('Δεν υπάρχει η ενέργεια',mtConfirmation,[mbYes],0)
//  End;

{procedure TfrmMain.actSubParamNoExecute(Sender: TObject);
var
  Leo, Leo01: String;
  LeoDM:TDataModule;
begin
  with Sender as TAction do
    begin
      Leo := TAction(Sender).HelpKeyword;}
      Leo := 'TfrmArea00';
      GeneralDM.SPstRetFormId.Active := False;
      GeneralDM.SPstRetFormId.Parameters.ParamByName('@FormName').Value := Leo;
      GeneralDM.SPstRetFormId.Active := True;
      if GeneralDM.SPstRetFormId.IsEmpty then
      begin
         GeneralDM.FindSecurity(Leo, 0 , FormID)
      end

      else
      begin
//      if GeneralDM.SPstRetFormIdDataModule.AsString = 'TDMSubParams' then
//         LeoDM := TDataModule(TDMSubParams);
//      if GeneralDM.SPstRetFormIdDataModule.AsString = 'TDMSysSubParams' then
//         LeoDM := TDataModule(TDMSysSubParams);
//      if LeoDM = Nil then
//         LeoDM := TDataModule(TDMSubParams);
      GeneralFormExecuteName(GeneralDM.SPstRetFormIdAncestorForm.AsString,
                             GeneralDM.SPstRetFormIdName.AsString,
                             GeneralDM.SPstRetFormIdPerig.AsString,
                             GeneralDM.SPstRetFormIdDataSourceName.AsString,
                             GeneralDM.SPstRetFormIdDataModule.AsString);
      end;
    end;


{procedure GeneralFormExecuteId(Sender: TObject; MenuId: Integer);
var
  frm: TForm;
begin
  if DMMain.FindSecurity('TfrmTableIds', LoginGroup, FormID) then
    begin
      frm := TfrmTableIds.CreateSecurity(self, FormID);
      try
        frm.ShowModal;
      finally
        frm.Free;
        DMMain.UpdSecurity('TfrmTableIds');
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;}

procedure GeneralFormExecuteName(FormName: String;
  FormSubName: String = ''; FrmCaption: String = ''; DataS: String = '';
  DMName: String = '');
var
  frm: TForm;
  fc: TFormClass;
  dc: TFormClass;
  FormId :Integer;
begin
  if  GeneralDM.FindSecurity(FormSubName, LoginGroup, FormID) then
    begin
      fc  := TFormClass(FindClass(FormName));
      dc  := TFormClass(FindClass(DMName));
      frm := fc.Create(Application);
//      if frm is TfrmSubParams then
//        TfrmSubParams(frm).FormSetDisp(self, FormID);
      if frm is TfrmSubParamsNoDev then
        TfrmSubParamsNoDev(frm).FormSetDispNo(application, FormID, FormSubName,
          dc, DataS, FrmCaption);
      try
        frm.ShowModal;
      finally
        frm.Free;
//        DMMain.UpdSecurity(FormSubName);
      end;
    end
  else
    MessageDlg('Δεν έχετε δικαίωμα ', mtError, [mbOK], 0)
end;

End.

