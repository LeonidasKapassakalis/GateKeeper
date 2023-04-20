unit FMembersSel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Dateutils,
  DBase, FBaseSel, Db, DBTables, ComCtrls, DBCtrls, StdCtrls, ExtCtrls, ADODB,
  ActnList, Menus, FPopUp, Variants, Mask, CheckLst, Globals, DBCtrlsEh;

type
  TfrmMembersSel = class(TfrmBaseSel)
    RadioGroup1: TRadioGroup;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    TabSheet2: TTabSheet;
    clbMerchant: TCheckListBox;
    TabSheet4: TTabSheet;
    clbStation: TCheckListBox;
    PopChLstBox: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    TabSheet5: TTabSheet;
    clbTerminal: TCheckListBox;
    TabSheet6: TTabSheet;
    clbSources: TCheckListBox;
    DBDTTrdA: TDBDateTimeEditEh;
    DBDTTrdE: TDBDateTimeEditEh;
    Label4: TLabel;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    RadioGroup5: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure cmdExecuteExecute(Sender: TObject);
    procedure cmdCancelExecute(Sender: TObject);
    procedure dtpGenCClick(Sender: TObject);
    procedure dbActiveCClick(Sender: TObject);
    procedure dbeNameADblClick(Sender: TObject);
    procedure dbeEpOnomasiaADblClick(Sender: TObject);
    procedure dbeThlOikiasADblClick(Sender: TObject);
    procedure RadioGroup2Exit(Sender: TObject);
    procedure RGExit(RadioGroup:TRadioGroup);
    procedure RGExit2(RadioGroup:TRadioGroup);
    procedure RadioGroup4Exit(Sender: TObject);
    procedure GroupBox9Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure EnhmClb(LeoCb: TCheckListBox; OnOff: Boolean);
    procedure DBDTTrdADblClick(Sender: TObject);

//    procedure EnhmClb(LeoCb: TCheckListBox; OnOff: Boolean);


  private
    { Private declarations }
  protected
      function  CreateDataModule : TDMBase; override;
  public
    { Public declarations }
  end;

implementation

uses DMain , DSubParams;

var
//  gClbCustGrp       : TCheckListBox;
//  gClbSaleMan       : TCheckListBox;
//  gClbNomos         : TCheckListBox;
//  gClbGroupCust01   : TCheckListBox;
//  gClbGroupCust02   : TCheckListBox;
//  gClbSalesOffice   : TCheckListBox;
  gclbMerchant   : TCheckListBox;
  gclbStation    : TCheckListBox;
  gclbTerminal   : TCheckListBox;
  gclbSources    : TCheckListBox;

{$R *.DFM}

function TfrmMembersSel.CreateDataModule: TDMBase;
begin
     Result := TDMSubParams.Create( Self );
end;

procedure TfrmMembersSel.FormCreate(Sender: TObject);
var x:Integer;
    cd:TDateTime;
begin
  inherited;
 RadioGroup1.ItemIndex:=1;
 cd:=Yesterday();
 for x:=0 to Self.ComponentCount -1 do
    begin
    if Self.Components[x] is TDateTimePicker then
       TDateTimePicker(Self.Components[x]).Date:=now;
    if Self.Components[x] is TDBDateTimeEditEh then
       TDBDateTimeEditEh(Self.Components[x]).Value:=today;
    end;

DBDTTrdA.Value := StartOfTheDay(cd);
DBDTTrdE.Value := EndOfTheDay(cd);

 gclbMerchant    := clbMerchant;
 gclbStation     := clbStation;
 gclbTerminal    := clbTerminal;
 gclbSources     := clbSources;

// FillCheckListBox(clbMerchant,TDMSubParams(FDM).Merchant,TDMSubParams(FDM).MerchantName,TDMSubParams(FDM).MerchantId );
// FillCheckListBox(clbStation,TDMSubParams(FDM).Station,TDMSubParams(FDM).StationName,TDMSubParams(FDM).StationId );
// FillCheckListBox(clbTerminal,TDMSubParams(FDM).Terminal,TDMSubParams(FDM).TerminalTerminalCode,TDMSubParams(FDM).TerminalId );
// FillCheckListBox(clbSources,TDMSubParams(FDM).Sources,TDMSubParams(FDM).SourcesSName,TDMSubParams(FDM).Sourcesid );


// RadioGroup2.ItemIndex :=1;
// RadioGroup4.ItemIndex :=2;



{ dtpKatPIA.Date:=now;
 dtpKatPIE.Date:=now;
 dtpKatInE.Date:=now;
 dtpKatInA.Date:=now;
 dtpKatMSA.Date:=now;
 dtpKatMSE.Date:=now;
 dtpKatPSA.Date:=now;
 dtpKatPSE.Date:=now;
 dtpKatDelPelA.Date:=now;
 dtpKatDelPelE.Date:=now;
 dtpKatDelProA.Date:=now;
 dtpKatDelProE.Date:=now;}
end;

procedure TfrmMembersSel.cmdExecuteExecute(Sender: TObject);
var x,y,z:String;
begin
  inherited;

//  x:= FillInStrClb(clbMerchant);
//  if x > ' ' then
//    begin
//      if (sqlprep=1) then
//          sleo:= sleo + ' AND ';
//      sleo:= sleo + clbMerchant.Hint + ' In ( ' + x + ' )' ;
//      sqlprep:=1;
//    end;
//
//  z:= FillInStrClb(clbStation);
//  if z > ' ' then
//    begin
//      if (sqlprep=1) then
//          sleo:= sleo + ' AND ';
//      sleo:= sleo + clbStation.Hint + ' In ( ' + z + ' )' ;
//      sqlprep:=1;
//    end;
//
//  z:= FillInStrClb(clbTerminal);
//  if z > ' ' then
//    begin
//      if (sqlprep=1) then
//          sleo:= sleo + ' AND ';
//      sleo:= sleo + clbTerminal.Hint + ' In ( ' + z + ' )' ;
//      sqlprep:=1;
//    end;
//
//  z:= FillInStrClb(clbSources);
//  if z > ' ' then
//    begin
//      if (sqlprep=1) then
//          sleo:= sleo + ' AND ';
//      sleo:= sleo + clbSources.Hint + ' In ( ' + z + ' )' ;
//      sqlprep:=1;
//    end;



//  MessageDlg(sleo, mtWarning, [mbOK], 0);

end;

procedure TfrmMembersSel.cmdCancelExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmMembersSel.dtpGenCClick(Sender: TObject);
begin
  inherited;
if TCheckBox(Sender).Checked then
   TCheckBox(Sender).Font.Style:=TCheckBox(Sender).Font.Style + [fsBold]
else
   TCheckBox(Sender).Font.Style:=TCheckBox(Sender).Font.Style - [fsBold];
end;

procedure TfrmMembersSel.dbActiveCClick(Sender: TObject);
var LeoS:String;
    LeoCB:TCheckBox;
    i:Integer;
begin
  inherited;
If Sender is TCheckBox then
  begin
    LeoS:=TCheckBox(Sender).Name;
    i:=Length(LeoS);
    If Not(LeoS[i] = 'M') then
      begin
        LeoS[i]:='M';
        LeoCB:=TCheckBox(FindComponent(LeoS));
        if Not( LeoCB = Nil ) then
           if TCheckBox(Sender).Checked then
             LeoCB.Font.Style:=LeoCB.Font.Style + [fsBold]
           else
             LeoCB.Font.Style:=LeoCB.Font.Style - [fsBold];
      end;

  end;

end;

procedure TfrmMembersSel.DBDTTrdADblClick(Sender: TObject);
begin
  inherited;
  with Sender as TDBDateTimeEditEh do
       Clear;
end;

procedure TfrmMembersSel.dbeNameADblClick(Sender: TObject);
var frm:TfrmPopUp;
begin
//  frm:=TfrmPopup.Create(Self);
//  frm.ADOQuery1.sql.Clear;
//  if TEdit(Sender).Text > ' ' then
//    begin
//     frm.AdoQuery1.sql.Add('Select Firm AS Name, Name AS Rest From Pelates');
//     frm.AdoQuery1.sql.Add('Where Firm Like '+ QuotedStr(TEdit(Sender).Text));
//     frm.AdoQuery1.sql.Add('Order By Name');
//    end
//  else
//     frm.AdoQuery1.sql.Add('Select Firm AS Name, Name AS Rest From Pelates Order By Firm');
//  frm.ADOQuery1.FieldByName('Name').DisplayWidth:=20;
//  frm.ADOQuery1.FieldByName('Rest').DisplayWidth:=30;
//  frm.ADOQuery1.Active:=True;
//  if Sender is TDBEdit then
//     begin
//       frm.DBLookupComboBox1.DataSource:=TDBEdit(Sender).DataSource;
//       frm.DBLookupComboBox1.DataField :=TDBEdit(Sender).DataField;
//     end;
//  frm.ShowModal;
//  if Sender is TEdit then
//    if Not (frm.DBLookupComboBox1.KeyValue = Null ) then
//       TEdit(Sender).Text:=frm.DBLookupComboBox1.KeyValue;
//  frm.Free;
end;

procedure TfrmMembersSel.dbeEpOnomasiaADblClick(Sender: TObject);
var frm:TfrmPopUp;
begin
//  frm:=TfrmPopup.Create(Self);
//  frm.ADOQuery1.sql.Clear;
//  if TEdit(Sender).Text > ' ' then
//    begin
//     frm.AdoQuery1.sql.Add('Select Name , " " AS Rest From Pelates');
//     frm.AdoQuery1.sql.Add('Where Name Like '+ QuotedStr(TEdit(Sender).Text));
//     frm.AdoQuery1.sql.Add('Order By Name');
//    end
//  else
//     frm.AdoQuery1.sql.Add('Select Name, " " AS Rest From Pelates Order By Name');
//  frm.ADOQuery1.FieldByName('Name').DisplayWidth:=50;
//  frm.ADOQuery1.FieldByName('Rest').DisplayWidth:=0;
//  frm.ADOQuery1.Active:=True;
//  if Sender is TDBEdit then
//     begin
//       frm.DBLookupComboBox1.DataSource:=TDBEdit(Sender).DataSource;
//       frm.DBLookupComboBox1.DataField :=TDBEdit(Sender).DataField;
//     end;
//  frm.ShowModal;
//  if Sender is TEdit then
//    if Not (frm.DBLookupComboBox1.KeyValue = Null ) then
//       TEdit(Sender).Text:=frm.DBLookupComboBox1.KeyValue;
//  frm.Free;
end;

procedure TfrmMembersSel.dbeThlOikiasADblClick(Sender: TObject);
var frm:TfrmPopUp;
begin
//  frm:=TfrmPopup.Create(Self);
//  frm.ADOQuery1.sql.Clear;
//  if TEdit(Sender).Text > ' ' then
//    begin
//     frm.AdoQuery1.sql.Add('Select Str(SAPId) AS Name , Name AS Rest From Pelates');
//     frm.AdoQuery1.sql.Add('Where SAPId Like '+ QuotedStr(TEdit(Sender).Text));
//     frm.AdoQuery1.sql.Add('Order By Name');
//    end
//  else
//     frm.AdoQuery1.sql.Add('Select Str(SAPId) AS Name, Name AS Rest From Pelates Order By Name');
//  frm.ADOQuery1.FieldByName('Name').DisplayWidth:=6;
//  frm.ADOQuery1.FieldByName('Rest').DisplayWidth:=44;
//  frm.ADOQuery1.Active:=True;
//  if Sender is TDBEdit then
//     begin
//       frm.DBLookupComboBox1.DataSource:=TDBEdit(Sender).DataSource;
//       frm.DBLookupComboBox1.DataField :=TDBEdit(Sender).DataField;
//     end;
//  frm.ShowModal;
//  if Sender is TEdit then
//    if Not (frm.DBLookupComboBox1.KeyValue = Null ) then
//       TEdit(Sender).Text:=frm.DBLookupComboBox1.KeyValue;
//  if Sender is TMaskEdit then
//    if Not (frm.DBLookupComboBox1.KeyValue = Null ) then
//       TMaskEdit(Sender).Text:=frm.DBLookupComboBox1.KeyValue;
//  frm.Free;
end;

procedure TfrmMembersSel.RadioGroup2Exit(Sender: TObject);
begin
// RGExit(RadioGroup4);
end;

          procedure TfrmMembersSel.RGExit(RadioGroup: TRadioGroup);
var Leo:TWinControl;
    x:Integer;
begin
  inherited;
  Leo:=RadioGroup.Parent;
if RadioGroup.ItemIndex = 1 then
   begin
   for x:=0 to self.ComponentCount -1 do
    begin
     if self.Components[x] is TDateTimePicker then
        if TDateTimePicker(self.Components[x]).Parent = Leo then
           TDateTimePicker(self.Components[x]).Enabled := True;
     if self.Components[x] is TCheckBox then
        if TCheckBox(self.Components[x]).Parent = Leo then
           TCheckBox(self.Components[x]).Enabled := True;
    end
   end
else
   begin
   for x:=0 to self.ComponentCount -1 do
    begin
     if self.Components[x] is TDateTimePicker then
        if TDateTimePicker(self.Components[x]).Parent = Leo then
           TDateTimePicker(self.Components[x]).Enabled := False;
     if self.Components[x] is TCheckBox then
        if TCheckBox(self.Components[x]).Parent = Leo then
           TCheckBox(self.Components[x]).Enabled := False;
    end
   end
end;

procedure TfrmMembersSel.RGExit2(RadioGroup: TRadioGroup);
var Leo:TWinControl;
    x:Integer;
begin
  inherited;
  Leo:=RadioGroup.Parent;
if RadioGroup.ItemIndex = 2 then
   begin
   for x:=0 to self.ComponentCount -1 do
    begin
     if self.Components[x] is TDateTimePicker then
        if TDateTimePicker(self.Components[x]).Parent = Leo then
           TDateTimePicker(self.Components[x]).Enabled := True;
     if self.Components[x] is TCheckBox then
        if TCheckBox(self.Components[x]).Parent = Leo then
           TCheckBox(self.Components[x]).Enabled := True;
    end
   end
else
   begin
   for x:=0 to self.ComponentCount -1 do
    begin
     if self.Components[x] is TDateTimePicker then
        if TDateTimePicker(self.Components[x]).Parent = Leo then
           TDateTimePicker(self.Components[x]).Enabled := False;
     if self.Components[x] is TCheckBox then
        if TCheckBox(self.Components[x]).Parent = Leo then
           TCheckBox(self.Components[x]).Enabled := False;
    end
   end
end;


procedure TfrmMembersSel.RadioGroup4Exit(Sender: TObject);
begin
  inherited;
// RGExit(RadioGroup4)
end;

procedure TfrmMembersSel.GroupBox9Click(Sender: TObject);
begin
  inherited;
// RGExit(RadioGroup4)
end;

procedure TfrmMembersSel.N4Click(Sender: TObject);
begin
  inherited;
	if (PopChLstBox.PopupComponent is TCheckListBox ) then
      EnhmClb(TCheckListBox(PopChLstBox.PopupComponent),True);
end;

procedure TfrmMembersSel.N5Click(Sender: TObject);
begin
  inherited;
	if (PopChLstBox.PopupComponent is TCheckListBox ) then
      EnhmClb(TCheckListBox(PopChLstBox.PopupComponent),False);
end;

procedure TfrmMembersSel.EnhmClb(LeoCb:TCheckListBox;OnOff:Boolean);
var x:Integer;
begin
      for x:=0 to LeoCB.Items.Count -1 do
          LeoCB.Checked[x]:=OnOff;
end;

end.
