unit DWorkPermits;

interface

uses
  System.SysUtils, System.Classes, DBase, DMain, Data.DB, Data.Win.ADODB,
  Forms, Common, FBaseDev1;

type
  TDMWorkPermits = class(TDMBase)
    qryWork_Permit: TADOQuery;
    qryContractors: TADOQuery;
    qryContractorsid: TIntegerField;
    qryContractorsName: TWideStringField;
    qryContractorsCompany: TWideStringField;
    qryContractorsVAT: TWideStringField;
    qryContractorsInsUsr: TIntegerField;
    qryContractorsInsDT: TDateTimeField;
    qryContractorsNotes: TWideStringField;
    dtsContractors: TDataSource;
    qryDepartments: TADOQuery;
    dtsDepartments: TDataSource;
    qryDepartmentsid: TIntegerField;
    qryDepartmentsName: TWideStringField;
    dtsWork_Permit: TDataSource;
    qryWork_PermitLContractor: TStringField;
    qryWork_PermitLDepartment: TStringField;
    qryWork_PermitId: TIntegerField;
    qryWork_PermitDepartment_Id: TIntegerField;
    qryWork_PermitContractor_Id: TIntegerField;
    qryWork_PermitNumber_of_Workers: TIntegerField;
    qryWork_PermitÌïíÜäá_Åñãáóßáò: TWideStringField;
    qryWork_PermitÅîïðëéóìïò: TWideStringField;
    qryWork_PermitStart_Time: TDateTimeField;
    qryWork_PermitEnd_Time: TDateTimeField;
    qryWork_PermitÐÅÑÉÃÑÁÖÇ_ÅÑÃÁÓÉÁÓ: TWideStringField;
    qryWork_PermitÉÊÑÉÙÌÁ: TBooleanField;
    qryWork_PermitÅÊÓÊÁÖÇ: TBooleanField;
    qryWork_PermitÃÅÑÁÍÏÓ: TBooleanField;
    qryWork_PermitÅÉÓÏÄÏÓ_ÓÅ_ÊËÅÉÓÔÏ_×ÙÑÏ: TBooleanField;
    qryWork_PermitÈÅÑÌÇ_ÅÑÃÁÓÉÁ: TBooleanField;
    qryWork_PermitÑÁÄÉÏÃÑÁÖÉÅÓ: TBooleanField;
    qryWork_PermitÊÏÉÍÇ_ÅÑÃÁÓÉÁ: TBooleanField;
    qryWork_PermitÁðáéôåßôáé_Ýëåã÷ïò_áåñßùí: TBooleanField;
    qryWork_PermitÅýöëåêåôá: TBooleanField;
    qryWork_PermitÇ2S: TBooleanField;
    qryWork_PermitCO: TBooleanField;
    qryWork_PermitO2: TBooleanField;
    qryWork_Permit×ÅÉÑÉÓÔÇÓ_ÅËÅÃ×Ï: TWideStringField;
    qryWork_PermitÊÙÄÉÊÏÓ_ÏÑÃÁÍÏÕ: TWideStringField;
    qryWork_PermitÁðïóõìðßåóç_åîïðëéóìïý: TBooleanField;
    qryWork_PermitÕãñÜ_åãëùâéóìÝíá_âÜíåò: TBooleanField;
    qryWork_PermitÊáèáñßóôçêå_åîïðëéóìüò: TBooleanField;
    qryWork_PermitÓõìðëçñùìáôéêüò_öùôéóìüò: TBooleanField;
    qryWork_PermitO÷Þìáôá_öëïãïðáãßäåò: TBooleanField;
    qryWork_PermitÐñïåéäïðïéçôéêÜ_óÞìáôá: TBooleanField;
    qryWork_PermitÅêêÝíùóç_åîïðëéóìïý: TBooleanField;
    qryWork_PermitÁðïìüíùóç_åîïðëéóìïý: TBooleanField;
    qryWork_PermitÊáèáñéóìüò_áôìüò: TBooleanField;
    qryWork_PermitÊáèáñéóìüò_Üæùôï: TBooleanField;
    qryWork_PermitÊáèáñéóìüò_íåñü: TBooleanField;
    qryWork_PermitÊÜëõøç_õðïíüìùí: TBooleanField;
    qryWork_PermitÓõìðëçñùìáôéêÜ_ìÝôñá: TWideStringField;
    qryWork_PermitÐáñßóôáóç_÷åéñéóôÞò: TWideStringField;
    qryWork_PermitÉéêñßùìá_ðéóôïðïéçìÝíï: TBooleanField;
    qryWork_PermitÃíùìÜôåõóç_ÁÅÅ: TBooleanField;
    qryWork_PermitÁÁ_âåâáßùóçò_éêñéþìáôïò: TWideStringField;
    qryWork_Permit¸ëáâá_ãíþóç_ÁÅÅ: TWideStringField;
    qryWork_PermitÕðüãåéïé_áãùãïß: TBooleanField;
    qryWork_PermitÕðüãåéá_êáëþäéá: TBooleanField;
    qryWork_PermitÅêóêáöç_ìå_ìç÷áíéêá_ìåóá: TBooleanField;
    qryWork_PermitÁíáãíþñéóç_ôïõ_÷þñïõ_åêóêáöÞò: TBooleanField;
    qryWork_PermitÓõìðëçñùìáôéêÜ_ìÝôñá_åêóêáöÞ: TWideStringField;
    qryWork_PermitÓõìðëçñþèçêå_ôï_Ýíôõðï_åëÝã÷ïõ: TBooleanField;
    qryWork_PermitÁñ_åíôýðïõ_êëåéóôïõ_÷þñïõ: TWideStringField;
    qryWork_Permit¸ãéíå_ìÝôñçóç_Ýëåã÷ïò_áåñßùí: TBooleanField;
    qryWork_Permit¸ëáâá_ãíþóç_êáé_óõìöùíþ_ï_áéôÞóáò_ôçí_ÁÅÅ: TWideStringField;
    qryWork_PermitÇëåêôñïëïãéêÞ_áðïìüíùóç: TBooleanField;
    qryWork_PermitÓõíå÷Þò_ðáñïõóßá_çëåêôñïëüãïõ: TBooleanField;
    qryWork_PermitÊáëþäéá_ìïíùìÝíá: TBooleanField;
    qryWork_PermitÖùôéóôéêÜ_óþìáôá: TBooleanField;
    qryWork_PermitÐéíáêßäá_çëåêôñéêÞò_áðïìüíùóçò: TBooleanField;
    qryWork_PermitÁñ_ðéíáêéäßùí_áðïìüíùóçò: TIntegerField;
    qryWork_PermitÇëåêôñïëüãïò: TWideStringField;
    qryWork_Permit¸íôõðï_èåñìÝò_åñãáóßåò: TBooleanField;
    qryWork_PermitÁñ_åíôýðïõ_èåñìÝò_åñãáóßåò: TWideStringField;
    qryWork_Permit¸íôõðï_ñáäéïãñáößåò: TBooleanField;
    qryWork_PermitÁñ_åíôýðïõ_ñáäéïãñáößåò: TWideStringField;
    qryWork_PermitÊñÜíïò_êåöáëÞò: TBooleanField;
    qryWork_PermitÃÜíôéá_åñãáóßáò: TBooleanField;
    qryWork_PermitÇëåêôñïëïãéêÜ_ãÜíôéá: TBooleanField;
    qryWork_PermitÏìáôïõÜëéá: TBooleanField;
    qryWork_PermitÐñïóùðßäá: TBooleanField;
    qryWork_PermitÅëáóôéêÜ_õðïäÞìáôá: TBooleanField;
    qryWork_PermitÙôïáóðßäåò: TBooleanField;
    qryWork_PermitÖüñìá_åñãáóßáò: TBooleanField;
    qryWork_PermitÆþíç_áíÜñôçóçò_óå_ýøïò: TBooleanField;
    qryWork_PermitÁíáðíåõóôéêÞ_óõóêåõÞ: TBooleanField;
    qryWork_PermitÁðïöåýãåôå_åðáöÞ_ìå_ôï_äÝñìá: TBooleanField;
    qryWork_PermitÓõìðëçñùìáôéêÜ_ìÝôñá_ÁôïìéêÞò_Ðñïóôáóßáò: TWideStringField;
    qryWork_PermitÐõñïóâåóôÞñåò: TIntegerField;
    qryWork_PermitÌÜíéêåò: TIntegerField;
    qryWork_PermitÁëëá_ìÝóá_ðõñüóâåóçò: TWideStringField;
    qryWork_PermitÅéäéêÜ_åñãáëåßá: TWideStringField;
    qryWork_PermitÅñãïäçãïò_ôìÞìáôïò: TWideStringField;
    qryWork_PermitÐñïâëåðüìåíá_ÌÁÐ: TBooleanField;
    qryWork_PermitÐñïâëåðüìåíá_ìÝôñá_áóöáëåßáò: TBooleanField;
    qryWork_PermitÔÁ_åãêáôÜóôáóçò: TBooleanField;
    qryWork_PermitÇ_ÅÑÃÁÓÉÁ_ÄÉÅÊÏÐÇ_ÁÐÏ_ÔÏÍ: TWideStringField;
    qryWork_PermitÇ_ÅÑÃÁÓÉÁ_ÄÉÅÊÏÐÇ_ÙÑÁ: TWideStringField;
    qryWork_PermitËÏÃÏÓ_ÁÍÁÊËÇÓÇÓ: TWideStringField;
    qryWork_PermitInsUsr: TIntegerField;
    qryWork_PermitInsDT: TDateTimeField;
    qryWork_PermitIssue_Date: TDateTimeField;
    qryForemen: TADOQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    dtsForemen: TDataSource;
    qryWork_PermitÅýöëåêåôá_Value: TFloatField;
    qryWork_PermitÇ2S_Value: TFloatField;
    qryWork_PermitCO_Value: TFloatField;
    qryWork_PermitO2_Value: TFloatField;
    qryWork_Permit¸íôõðï_ãåñáíïõ: TBooleanField;
    qryWork_PermitÁñ_åíôýðïõ_ãåñáíïõ: TWideStringField;
    qryWork_PermitForeman_Id: TIntegerField;
    qryWork_PermitFullFilled: TBooleanField;
    qryWork_PermitFullFilledDT: TDateTimeField;
    qryWork_PermitFullFilledUsr: TIntegerField;
    qryWork_PermitFullFilledCancel: TBooleanField;
    qryWork_PermitÅãêñßóç_ÔÁ_Õðåñ: TBooleanField;
    qryWork_PermitÏ_áéôùí_ôçí_áäåéá_åêôåëåóçò_åñãáóéáò: TWideStringField;
    qryWork_PermitÏ_Ôå÷íéêïò_Áóöáëåéáò_ôçò_åãêáôáóôáóçò: TWideStringField;
    qryWork_PermitÁðáéôåßôáé_óõíå÷Þò_Ýëåã÷ïò_áåñßùí: TBooleanField;
    qryWork_PermitÅñãïäçãïò_åñãïëÜâïõ: TWideStringField;
    qryWork_PermitÁõôüíïìç_áíáðíåõóôéêÞ_óõóêåõÞ: TBooleanField;
    qryWork_PermitAirpack: TBooleanField;
    qryWork_PermitÄéáöõãÞò_10_ëåðôþí: TBooleanField;
    qryWork_PermitÐñïóùðéêÜ_ïëïêëÞñïõ_Ðñïóþðïõ_ìå_ößëôñï: TBooleanField;
    qryWork_PermitÌÜóêá_Óêüíçò: TBooleanField;
    qryWork_PermitÐáñáôçñÞóåéò: TWideStringField;
    qryWork_Permitã1_ÐåñéÝ÷ïíôá_ôþñá: TBooleanField;
    qryWork_Permitã1_ÐåñéÝ÷ïíôá_ðñßí: TBooleanField;
    qryWork_Permitã1_Åýöëåêôï: TBooleanField;
    qryWork_Permitã1_Åêñçêôéêü: TBooleanField;
    qryWork_Permitã1_Äéáâñùôéêü: TBooleanField;
    qryWork_Permitã1_Ôïîéêü: TBooleanField;
    qryWork_Permitã1_Êáõóôéêü: TBooleanField;
    qryWork_Permitã1_Åñåèéóôéêü: TBooleanField;
    qryWork_Permitã1_Åîïðëéóìüò_õðü_çëåêôñéêÞ_ôÜóç: TBooleanField;
    qryWork_Permitã1_Åíåñãüò_ôþñá: TBooleanField;
    qryWork_Permitã1_Åíåñãüò_ðñßí: TBooleanField;
    qryWork_Permitã2_Ðôþóç_áðü_ýøïò: TBooleanField;
    qryWork_Permitã2_ÕøçëÞ_ðßåóç: TBooleanField;
    qryWork_Permitã2_Çëåêôñéêïß_Êßíäõíïé: TBooleanField;
    qryWork_Permitã2_Åßóïäïò_óå_êëåéóôü_×þñï: TBooleanField;
    qryWork_Permitã2_ÕøçëÞ_Èåñìïêñáóßá: TBooleanField;
    qryWork_Permitã2_Ñáäéïãñáößá: TBooleanField;
    qryWork_Permitã2_Ðéèáíüôçôá_ÄéáññïÞò: TBooleanField;
    qryWork_Permitã2_×çìéêÜ: TBooleanField;
    qryWork_Permitã2_¢ëëá_: TWideStringField;
    qryWork_Permitã3_ÌïíÜäá_óå_ëåéôïõñãåßá: TBooleanField;
    qryWork_Permitã3_Õðüãåéåò_çëåêôñéêÝò_ãñáììÝò_õðü_ôÜóç: TBooleanField;
    qryWork_Permitã3_H2S_Õäñüèåéï: TBooleanField;
    qryWork_Permitã3_HC_ÕäñïãïíÜíöñáêåò: TBooleanField;
    qryWork_Permitã3_ÐáñÜëëçëåò_Åñãáóßåò_SIMOPS: TBooleanField;
    qryWork_Permitã3_Åýöëåêôï: TBooleanField;
    qryWork_Permitã3_Ðåñéï÷Þ_ÔáîéíïìçìÝíç_êáôÜ_ATEX: TBooleanField;
    qryWork_Permitã3_Èüñõâïò: TBooleanField;
    qryWork_Permitã3_¢ëëá_: TWideStringField;
    qryWork_Permitã1_Ðåñéå÷üìåíá_ÑåõóôÜ_ôçò_Äéåñãáóßáò_êáôÜ_ôçí_Ëåéôïõñãßá: TBooleanField;
    qryWork_Permitã1_Ðßåóç: TFloatField;
    qryWork_Permitã1_Èåñìïêñáóßá: TFloatField;
    qryWork_PermitÁñéèìüò_Ðéíáêéäßùí: TWideStringField;
    qryWork_PermitÁñéèìüò_Ó÷åäßïõ: TWideStringField;
    qryDepartment_Foremen: TADOQuery;
    IntegerField2: TIntegerField;
    WideStringField2: TWideStringField;
    drsDepartment_Foremen: TDataSource;
    qryWork_PermitDepartment_Foreman_Id: TIntegerField;
    spUpdate_Work_Permit_Status: TADOStoredProc;
    qryWork_PermitFrom_Id_Copy: TIntegerField;
    qryWork_PermitVisible_Till: TDateTimeField;
    qryWork_PermitDeleted: TBooleanField;
    qryWork_PermitDelUsr: TIntegerField;
    qryWork_PermitDelDT: TDateTimeField;
    qryWork_PermitÁñ_Ãíùóôïðïéçóçò: TWideStringField;
    qryWork_PermitLFrom_Id_Copy: TStringField;
    qryWork_PermitWorkStopped: TBooleanField;
    qryWork_PermitWorkStoppedUsr: TIntegerField;
    qryWork_PermitWorkStoppedDT: TDateTimeField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryWorkersVisitBeforePost(DataSet: TDataSet);
    procedure qryWorkersVisitAfterPost(DataSet: TDataSet);
    procedure dtsWorkersVisitStateChange(Sender: TObject);
    procedure GenAfterPost(DataSet: TDataSet);
    procedure GenBeforePost(DataSet: TDataSet);
    procedure qryWorkersVisitCalcFields(DataSet: TDataSet);
    procedure qryWork_PermitCalcFields(DataSet: TDataSet);
  private


    { Private declarations }
  public
    procedure CheckUpdateParam;
    { Public declarations }
  end;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }

uses FMain;

{$R *.dfm}

procedure TDMWorkPermits.DataModuleCreate(Sender: TObject);
begin
  inherited;
  spUpdate_Work_Permit_Status.ExecProc();
  DMCreate(TForm(self),'qryWorkersVisit');
end;

procedure TDMWorkPermits.dtsWorkersVisitStateChange(Sender: TObject);
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

procedure TDMWorkPermits.qryWorkersVisitAfterPost(DataSet: TDataSet);
begin
  inherited;
  DMMain.TblChanges.UpdateBatch();
end;

procedure TDMWorkPermits.qryWorkersVisitBeforePost(DataSet: TDataSet);
begin
  inherited;
  BeforePost0(DataSet, 'WorkersVisit');
end;

procedure TDMWorkPermits.qryWorkersVisitCalcFields(DataSet: TDataSet);
begin
  inherited;
//  qryWorkersVisitPContractors_Id.AsInteger := 1;//qryWorkersVisitContractors_Id.AsInteger;
end;

procedure TDMWorkPermits.qryWork_PermitCalcFields(DataSet: TDataSet);
begin
  inherited;
  if qryWork_PermitFrom_Id_Copy.AsInteger > 0 then
     qryWork_PermitLFrom_Id_Copy.AsString := '(' + inttostr(qryWork_PermitFrom_Id_Copy.AsInteger) + ')'
  else
    qryWork_PermitLFrom_Id_Copy.AsString := '';


end;

procedure TDMWorkPermits.GenAfterPost(DataSet: TDataSet);
begin
  inherited;
//  DMMain.TblChanges.UpdateBatch();
end;


procedure TDMWorkPermits.GenBeforePost(DataSet: TDataSet);
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

procedure TDMWorkPermits.CheckUpdateParam;
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

//var PName:string;
//begin
//  inherited;
//  PName:=frmMain.String2Pho(cxdbtName.Text);
//  if DM.qryPersons.Locate('PhoName',PName,[]) then
//
//  else
//    begin
//      DM.qryPersons.Insert;
//      DM.qryPersons.Edit;
//      DM.qryPersonsPerson.AsString    := cxdbtName.Text;
//      DM.qryPersonsPhoPerson.AsString := PName;
//      DM.qryPersons.Post;
//    end;



end.
