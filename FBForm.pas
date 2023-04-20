unit FBForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls;

type
  IFormNameInterface = interface
    ['{B562E9E6-CFC5-4811-82D9-CBA99257E865}']
    function FirstName: String;
    function LastName: String;
  end;

type
  TfrmBForm = class(TForm, IFormNameInterface)
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    function FirstName: String;
    function LastName: String;
  private
    FModal: boolean;
    FCreated: boolean;
  protected
    PFormName: String;
    PFormID: Integer;
  public
    constructor CreateModal(aowner: TComponent);
    constructor CreateSecurity(aowner: TComponent; FormID: Integer);
    constructor CreateSecurityModal(aowner: TComponent; FormID: Integer);
    constructor CreateSecurityN(aowner: TComponent; FormID: Integer);
    procedure SetStatusText(Text: String; Index: Integer);
    property Created: boolean read FCreated write FCreated;
  end;

var
  frmBForm: TfrmBForm;

implementation

uses FMain, DMain;

{$R *.DFM}

constructor TfrmBForm.CreateModal(aowner: TComponent);
begin
  FModal  := True;
  Created := False;
  Create(aowner);
end;

constructor TfrmBForm.CreateSecurity(aowner: TComponent; FormID: Integer);
begin
  PFormID := FormID;
  Created := False;
  if DMMain.FindFormName(PFormID, PFormName) then
    Create(aowner)
  else
    exit;
end;

constructor TfrmBForm.CreateSecurityN(aowner: TComponent; FormID: Integer);
begin
  PFormID := FormID;
  Created := False;
  if DMMain.FindFormName(PFormID, PFormName) then
    Create(aowner)
  else
    exit;
end;

constructor TfrmBForm.CreateSecurityModal(aowner: TComponent; FormID: Integer);
begin
  FModal  := True;
  PFormID := FormID;
  Created := False;
  if DMMain.FindFormName(FormID, PFormName) then
    Create(aowner)
  else
    exit;
end;

procedure TfrmBForm.FormCreate(Sender: TObject);
var
  LLeft, LWidth, LTop, LHeight, State: Integer;
begin
  frmMain.ReadIniSub(PFormName, LLeft, LTop, LWidth, LHeight, State);
  frmMain.SetDisplayedForm(Self);
  if LWidth > 0 then
    SetBounds(LLeft, LTop, LWidth, LHeight);
  Self.Font  := frmMain.AppFonts[5];
  Self.Color := frmMain.AppColors[5];
  // panBottom.Color :=FrmMain.AppColors[5];
  // panBottom.Font  :=FrmMain.AppFonts[5];
end;

procedure TfrmBForm.FormDestroy(Sender: TObject);
begin
  frmMain.SetDisplayedForm(nil);
  frmMain.WriteIniSub(PFormName, Self.Left, Self.Top, Self.Width, Self.Height, 0);
end;

function TfrmBForm.LastName: String;
begin
  Result := Self.ClassName;
end;

function TfrmBForm.FirstName: String;
begin
  Result := Self.ClassName;
end;

procedure TfrmBForm.SetStatusText(Text: String; Index: Integer);
begin
  StatusBar1.Panels[Index].Text := Text;
end;

end.
