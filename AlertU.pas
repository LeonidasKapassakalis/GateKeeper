unit AlertU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls;

type
  TfrmAlert = class(TForm)
	imgImage: TImage;
    lblLabel: TLabel;
    procedure FormCreate(Sender: TObject);
  private
  protected
	procedure WMSysCommand( var Mess:TMessage ); message WM_SYSCOMMAND;
  public
  end;

  EAlertException = class(Exception)
  end;

{	String like form_alert in GEM [<icon>][text | text][button | button]
	icon	0	no icon
			1	warning
			2	stop
			3	information
			4	confirmation
	def_btn	= 1 to number of buttons
	Result = 1 to number of buttons

// TMsgDlgType = (mtWarning, mtError, mtInformation, mtConfirmation, mtCustom);
}
function FormAlert( icn:TMsgDlgType ; const mess:string ; def_btn:integer ; help_ctx:Longint ): Integer;
function sAlert( icn:TMsgDlgType ; const mess:string ; def_btn:integer ): Integer;
function sAlertV( icn:TMsgDlgType ; const mess:string ; const vars:array of const ; def_btn:integer ): Integer;

implementation

{$R *.DFM}

Uses
	Consts;

var
	DlgType : Integer;
	Msg : string;
	Buttons : TStringList;
	DefaultButton : Integer;
	HelpCtx : Longint;

function GetAveCharSize( Canvas:TCanvas ): TPoint;
var
	I: Integer;
	Buffer: array[0..51] of Char;
begin
	for I := 0 to 25 do
		Buffer[I] := Chr(I + Ord('A'));
	for I := 0 to 25 do
		Buffer[I + 26] := Chr( I + Ord('a') );
	GetTextExtentPoint( Canvas.Handle, Buffer, 52, TSize(Result) );
	Result.X := Result.X div 52;
end;

function Max( I,J: Integer ) : Integer;
begin
	if I > J then
		Result := I
	else
		Result := J;
end;

function FormAlertPos( icn:TMsgDlgType ; const mess:string ; def_btn:integer ;
					   help_ctx:Longint ; X,Y: Integer ) : Integer;

	function GetFirstStrPart( var sstr:string ) : string;
	var
		p1, p2 : integer;
	begin
		p1 := Pos( '[', sstr );
		p2 := Pos( ']', sstr );
		if (p1 = 0) or (p2 = 0) or (p2 < p1) then
			raise EAlertException.Create( 'Error in ''Alert'' string' );
		Result := Copy( sstr, p1+1, p2-p1-1 );
		sstr := Copy( sstr, p2+1, Length(sstr) );
	end;

var
	frm : TfrmAlert;
	p : integer;
	sstr, butts : string;
begin
	sstr := mess;
	DefaultButton := def_btn;
	Result := 0;
	try
		DlgType := Ord(icn); // StrToInt( GetFirstStrPart( sstr ) ) mod 5;
		Msg := GetFirstStrPart( sstr );
		butts := GetFirstStrPart( sstr );
		p := Pos( '|', Msg );
		while p > 0 do begin
			Msg[p] := #13;
			p := Pos( '|', Msg );
		end;
		Buttons := TStringList.Create;
		p := Pos( '|', butts );
		while p > 0 do begin
			Buttons.Append( Copy( butts, 1, p-1 ) );
			butts := Copy( butts, p+1, Length(butts) );
			p := Pos( '|', butts );
		end;
		Buttons.Append( butts );
		if (Abs(DefaultButton) < 1) or (Abs(DefaultButton) > Buttons.Count) then
			raise EAlertException.Create( 'Error in ''Alert'' string' );
		frm := TfrmAlert.Create( Application );
		with frm do
			try
				HelpContext := HelpCtx;
				if X >= 0 then
					Left := X;
				if Y >= 0 then
					Top := Y;
				Result := ShowModal;
			finally
				Free;
			end;
	finally
		Buttons.Free;
	end;
end;

function FormAlert( icn:TMsgDlgType ; const mess:string ; def_btn:integer ; help_ctx:Longint ): Integer;
begin
	Result := FormAlertPos( icn, mess, def_btn, help_ctx, -1, -1 );
end;

function sAlert( icn:TMsgDlgType ; const mess:string ; def_btn:integer ): Integer;
begin
	Result := FormAlert( icn, mess, def_btn, 0 );
end;

function sAlertV( icn:TMsgDlgType ; const mess:string ; const vars:array of const ; def_btn:integer ): Integer;
var
	sstr : string;
begin
	sstr := Format( mess, vars );
	Result := sAlert( icn, sstr, def_btn );
end;

procedure TfrmAlert.WMSysCommand( var Mess:TMessage );
begin
	if (Mess.WParam and $FFF0) = SC_CLOSE then
		Mess.Result := 0
	else
		inherited;
end;

procedure TfrmAlert.FormCreate(Sender: TObject);
const
	mcHorzMargin = 8;
	mcVertMargin = 8;
	mcHorzSpacing = 10;
	mcVertSpacing = 10;
	mcButtonWidth = 50;
	mcButtonHeight = 14;
	mcButtonSpacing = 4;
	Captions: array[0..3] of integer = (12000, 12001, 12002, 12003);
	IconIDs: array[0..4] of PChar =
			(IDI_EXCLAMATION, IDI_HAND, IDI_ASTERISK, IDI_QUESTION, nil);
var
	DialogUnits												: TPoint;
	HorzMargin, VertMargin, HorzSpacing, VertSpacing,
	ButtonWidth, ButtonHeight, ButtonSpacing, ButtonCount,
	ButtonGroupWidth, IconTextWidth, IconTextHeight, X, B	: Integer;
	bCancel													: boolean;
	IconID													: PChar;
	TextRect												: TRect;
	AButton													: TButton;

	function MaxButtonW : integer;
	var
		n, max_w : integer;
		butt_rect : TRect;
	begin
		max_w := 0;
		SetRect( butt_rect, 0, 0, Screen.Width div 2, 0 );
		for n:=0 to Buttons.Count-1 do begin
			DrawText( Canvas.Handle, PChar(Buttons.Strings[n]), -1, butt_rect, DT_CALCRECT or DT_SINGLELINE );
			if butt_rect.Right - butt_rect.Left > max_w then
				max_w := butt_rect.Right - butt_rect.Left;
		end;
		Result := max_w + ButtonSpacing * 4;
	end;

begin
	if DefaultButton > 0 then
		EnableMenuItem( GetSystemMenu( Handle, False ), SC_CLOSE, MF_BYCOMMAND or MF_GRAYED );
	DialogUnits := GetAveCharSize(Canvas);
	HorzMargin := MulDiv(mcHorzMargin, DialogUnits.X, 4);
	VertMargin := MulDiv(mcVertMargin, DialogUnits.Y, 8);
	HorzSpacing := MulDiv(mcHorzSpacing, DialogUnits.X, 4);
	VertSpacing := MulDiv(mcVertSpacing, DialogUnits.Y, 8);
	ButtonHeight := MulDiv(mcButtonHeight, DialogUnits.Y, 8);
	ButtonSpacing := MulDiv(mcButtonSpacing, DialogUnits.X, 4);
	ButtonWidth := Max( MulDiv(mcButtonWidth, DialogUnits.X, 4), MaxButtonW );
	SetRect( TextRect, 0, 0, Screen.Width div 2, 0 );
	DrawText( Canvas.Handle, PChar(Msg), -1, TextRect, DT_CALCRECT or DT_WORDBREAK );
	IconID := IconIDs[DlgType];
	IconTextWidth := TextRect.Right;
	IconTextHeight := TextRect.Bottom;
	if IconID <> nil then begin
		Inc(IconTextWidth, 32 + HorzSpacing);
		if IconTextHeight < 32 then
			IconTextHeight := 32;
	end;
	ButtonCount := Buttons.Count;
	ButtonGroupWidth := 0;
	if ButtonCount <> 0 then
		ButtonGroupWidth := ButtonWidth * ButtonCount + ButtonSpacing * (ButtonCount - 1);
	ClientWidth := Max(IconTextWidth, ButtonGroupWidth) + HorzMargin * 2;
	ClientHeight := IconTextHeight + ButtonHeight + VertSpacing + VertMargin * 2;
	Left := (Screen.Width div 2) - (Width div 2);
	Top := (Screen.Height div 2) - (Height div 2);
	if DlgType < 4 then
		Caption := LoadStr(Captions[DlgType])
	else
		Caption := Application.Title;
	if IconID = nil then
		imgImage.Visible := False
	else
		with imgImage do begin
			Picture.Icon.Handle := LoadIcon(0, IconID);
			SetBounds(HorzMargin, VertMargin, 32, 32);
		end;
	with lblLabel do begin
		Caption := Msg;
		BoundsRect := TextRect;
		SetBounds(IconTextWidth - TextRect.Right + HorzMargin, VertMargin,
					TextRect.Right, TextRect.Bottom);
	end;
	X := (ClientWidth - ButtonGroupWidth) div 2;
	if DefaultButton < 0 then begin
		bCancel := True;
		DefaultButton := Abs(DefaultButton);
	end else
		bCancel := False;
	for B := 0 to ButtonCount-1 do begin
		AButton := TButton.Create(Self);
		with AButton do begin
			Name := 'btn' + IntToStr( B );
			Caption := Buttons.Strings[B];
			Parent := Self;
			ModalResult := B+1;
			if B+1 = DefaultButton then begin
				Default := True;
				Cancel := bCancel;
				Self.ActiveControl := AButton;
			end;
			SetBounds(X, IconTextHeight + VertMargin + VertSpacing,
						ButtonWidth, ButtonHeight);
			Inc(X, ButtonWidth + ButtonSpacing);
		end;
	end;
end;

end.
