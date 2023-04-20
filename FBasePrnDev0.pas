unit FBasePrnDev0;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, AdoDb, DB, Menus, Vcl.DBCtrls,
  cxGridCustomView, cxGridDBTableView, cxDBLookupComboBox,
  dxmdaset, dxCore, cxDBLookupEdit, cxLookupDBGrid,
  DMain, Common, FBaseDev0, FFilterEn, DBase, RSubParams;

type
  TfrmBasePrnDev0 = class(TfrmBaseDev0)
    actSaveVariants: TAction;
    actLoadVariants: TAction;
    actClearMemWs: TAction;
    memWS: TdxMemData;
    dsmemWS: TDataSource;
    procedure actLoadVariantsExecute(Sender: TObject);
    procedure actSaveVariantsExecute(Sender: TObject);
    procedure actClearMemWsExecute(Sender: TObject);
    procedure actDispAllActionsExecute(Sender: TObject);

  private
  published
  public
    procedure rgDailyUpdateGExit(Sender: TObject); virtual;
    procedure InitMemWs; virtual;
  end;

implementation

uses FMain;

{$R *.dfm}

procedure TfrmBasePrnDev0.actClearMemWsExecute(Sender: TObject);
var
  x: Integer;
begin
  inherited;
  for x                   := 0 to memWS.FieldCount - 1 do
    memWS.Fields[x].Value := null;
  InitMemWs;
end;

procedure TfrmBasePrnDev0.actDispAllActionsExecute(Sender: TObject);
var
  x: Integer;
  leo: TStringList;
begin
  leo   := TStringList.Create;
  for x := 0 to Self.ComponentCount - 1 do
    begin
      if Self.Components[x] is TAction then
        leo.Add(TAction(Self.Components[x]).Name + ' | ' + TAction(Self.Components[x]).Caption + ' | ' + TAction(Self.Components[x]).Category);
    end;

  MessageDlg(leo.Text, mtCustom, [mbOK], 0);
  leo.Free;
end;

procedure TfrmBasePrnDev0.actLoadVariantsExecute(Sender: TObject);
var
  x: Integer;
  act: TAction;
  actn: TNotifyEvent;
  action, comments, mail: string;
  aClose, aTrans, aExec, aLogSection: Boolean;
begin
  inherited;
  for x                   := 0 to memWS.FieldCount - 1 do
    memWS.Fields[x].Value := null;
  InitMemWs();
  DMMain.GetVariantMemWs(Self, Self.ClassName, memWS, action, comments, mail, aClose, aTrans, aExec, aLogSection);
  if comments > '' then
    MessageDlg(comments, mtInformation, [mbOK], 0);
  GVarAction     := action;
  GVarComments   := comments;
  GVarMail       := mail;
  GVarClose      := aClose;
  GVarTrans      := aTrans;
  GVarExec       := aExec;
  GVarLogSection := aLogSection;

  for x := 0 to Self.ComponentCount - 1 do
    if Self.Components[x] is TdbRadioGroup then
      if Assigned(TdbRadioGroup(Self.Components[x]).OnClick) then
        begin
          rgDailyUpdateGExit(TdbRadioGroup(Self.Components[x]));
        end;
end;

procedure TfrmBasePrnDev0.actSaveVariantsExecute(Sender: TObject);
begin
  inherited;
  DMMain.NewVariantMemWs(Self, Self.ClassName, memWS);
end;

procedure TfrmBasePrnDev0.InitMemWs;
begin
  Assert(False, 'Not Implemented');
end;

procedure TfrmBasePrnDev0.rgDailyUpdateGExit(Sender: TObject);
begin
  //
end;

end.
