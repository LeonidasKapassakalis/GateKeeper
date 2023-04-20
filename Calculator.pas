// This unit is the component for a four functions calculator.
// It is free.  You may use it as you may see fits.  Just don't
// blame for ANY thing if some thing goes wrong.

// Just install and drop onto a form. You got instance calculator.

// Written by Leng Vang. lvang@mail.mrsars.usda.gov
// If you find it useful, please drop me a note.


unit Calculator;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,Buttons, StdCtrls, Menus;

type
  TNumericType = (ntGeneral, ntExponent, ntFixed, ntNumber, ntCurrency);
  TDataType = (dtByte, dtDouble, dtExtended, dtInteger,
               dtLongint, dtReal, dtShortint, dtSingle, dtWord);

  TAlignment = (taLeftJustify, taRightJustify);

{ numinp component }
type
  TNumInp = class (TCustomEdit)
  private
    FAlignment: TAlignment;
    FCanvas: TControlCanvas;
    FDecimals : word;
    FDigits : word;
    FFocused: Boolean;
    FMax : extended;
    FMin : extended;
    FNegColor : TColor;
    FNumericType : TNumericType;
    OldColor : TColor;
    OldTNIColor : TColor;
    FDataType : TDataType;
    FTabOnEnterKey : Boolean;
    FTextMargin: Integer;
    FValue : extended;
    FValidate : boolean;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
    procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
    procedure CalcTextMargin;
    procedure SetAlignment(Value : TAlignment);
    procedure SetDecimals(Value : word);
    procedure SetDigits(Value : word);
    procedure SetMax(Value : extended);
    procedure SetMin(Value : extended);
    procedure SetNegCol(Value:TColor);
    procedure SetNumericType(Value : TNumericType);
    procedure SetDataType(Value : TDataType);
    procedure SetTabOnEnterKey(Value: Boolean);
    procedure SetValue(Value : extended);
    procedure SetValidate(Value : boolean);
  protected
    procedure FormatText; dynamic;
    procedure CheckRange; dynamic;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    property Alignment :TAlignment Read FAlignment write SetAlignment;
    property Decimals : word read FDecimals write SetDecimals;
    property Digits : word read FDigits write SetDigits;
    property Max : extended read FMax write SetMax;
    property Min : extended read FMin write SetMin;
    property NegativeColor : Tcolor read FNegColor write SetNegCol;
    property NumericType : TNumericType read FNumericType write SetNumericType default ntGeneral;
    property DataType : TDataType read FDataType write SetDataType default dtExtended;
    property TabOnEnterKey:Boolean read FTabOnEnterKey write SetTabOnEnterKey ;
    property Value : extended read FValue write SetValue;
    property Validate : boolean read FValidate write SetValidate;
  public
    IsValid : Boolean;
    constructor Create(AOwner: TComponent); override;
    procedure KeyPress(var Key: Char); override;
    function AsByte : Byte; dynamic;
    function AsDouble : double; dynamic;
    function AsInteger : integer; dynamic;
    function AsLongint : longint; dynamic;
    function AsReal : real; dynamic;
    function AsShortInt : ShortInt; dynamic;
    function AsSingle : Single; dynamic;
    function AsWord : Word; dynamic;
    function Valid ( Value : extended ) : boolean; dynamic;
  end;

type
  TOperator = (opNONE,opAddition,opSubtraction,opMultiplication,opDivision);

  TCalculator = class(TCustomControl)
  private
    { Private declarations }
    aCh : Char;
    PreviousValue : Extended;

    ZeroBtn: TSpeedButton;
    OneBtn: TSpeedButton;
    TwoBtn: TSpeedButton;
    ThreeBtn: TSpeedButton;
    FourBtn: TSpeedButton;
    FiveBtn: TSpeedButton;
    SixBtn: TSpeedButton;
    SevenBtn: TSpeedButton;
    EightBtn: TSpeedButton;
    NineBtn: TSpeedButton;
    PeriodBtn: TSpeedButton;

    EnterBtn: TSpeedButton;
    AddBtn: TSpeedButton;
    ClearBtn: TSpeedButton;
    SubBtn: TSpeedButton;
    MultBtn: TSpeedButton;
    DividBtn: TSpeedButton;
    DisplayEdit: TNumInp;


    Operator : TOperator;
    SetToClear : Boolean;
    DecDigits : LongInt;
    Procedure Calculate;
    procedure NumberBtnClick(Sender: TObject);
    Procedure EnterBtnClick(Sender : TObject);
    Procedure AddBtnClick(Sender : TObject);
    Procedure ClearBtnClick(Sender : TObject);
    Procedure SubBtnClick(Sender : TObject);
    Procedure MultBtnClick(Sender : TObject);
    Procedure DividBtnClick(Sender : TObject);
  protected
    { Protected declarations }
  public
    { Public declarations }
    Constructor Create(AOwner : TComponent); Override;
    Destructor Destroy; Override;
    Procedure KeyPress(Var Key : Char); Override;
  published
    { Published declarations }
    Property OnKeyPress;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Library', [TCalculator]);
end;



type
  TSetOfChar = set of char;

const
  MaxByte    : byte     = 255;
  MinByte    : byte     = 0;
  MaxDouble  : double   = 1.7E308;
  MinDouble  : double   = -1.7E308;
  MaxExtended: extended = 1.1E4932;
  MinExtended: extended = -1.1E4932;
  MaxInteger : integer  = 32767;
  MinInteger : integer  = -32768;
  MaxLongint : longint  = 2147483647;
  MinLongint : longint  = -2147483647;
  MaxReal    : real     = 1.7E38;
  MinReal    : real     = -1.7E38;
  MaxShortInt: ShortInt = 127;
  MinShortInt: ShortInt = -128;
  MaxSingle  : Single   = 3.4E38;
  MinSingle  : Single   = -3.4E38;
  MaxWord    : Word     = 65535;
  MinWord    : Word     = 0;

{========================================================================}
{ Custom Numeric Edit                                                    }
{========================================================================}

constructor TNumInp.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Width := 85;
  FNumericType := ntGeneral;
  FDataType := dtExtended;
  FDigits := 12;
  FDecimals := 2;
  FMax := 0.0;
  FMin := 0.0;
  AutoSelect := true;
  FValidate := true;
  IsValid := true;
  FValue := 0.0;
  MaxLength := FDigits;
  CalcTextMargin;
  Text := '0.0';
  OldColor:=Font.Color;
  OldTNIColor := Color;
  FormatText;
  end;

 procedure  TNumInp.SetAlignment(Value : TAlignment);
 begin
  if FAlignment <> Value then
  begin
   FAlignment := Value;
   invalidate; {repaint the control}
  end;
 end;

function TNumInp.AsByte: byte;
begin
  Result := 0;
  if (FValue <= MaxByte) and (FValue >= MinByte) then
     Result := Round(FValue);
end;

function TNumInp.AsDouble: double;
begin
  Result := 0;
  if (FValue <= MaxDouble) and (FValue >= MinDouble) then
     Result := FValue;
end;

function TNumInp.AsInteger: integer;
begin
  Result := 0;
  if (FValue <= MaxInteger) and (FValue >= MinInteger) then
      Result := round(FValue)
end;

function TNumInp.AsLongint: longint;
begin
  Result := 0;
  if (FValue <= MaxLongint) and (FValue >= MinLongint) then
      Result := round(FValue);
end;

function TNumInp.AsReal: real;
begin
  Result := 0;
  if (FValue <= MaxReal) and (FValue >= MinReal) then
     Result := FValue;
end;

function TNumInp.AsShortInt: ShortInt;
begin
  Result := 0;
  if (FValue <= MaxShortInt) and  (FValue >= MinShortInt) then
     Result := Round(FValue);
end;

function TNumInp.AsSingle: Single;
begin
  Result := 0;
  if (FValue <= MaxSingle) and  (FValue >= MinSingle) then
     Result := FValue;
end;

function TNumInp.AsWord: Word;
begin
  Result := 0;
  if (FValue <= MaxWord) and  (FValue >= MinWord) then
     Result := Round(FValue);
end;

procedure TNumInp.SetMin(Value: extended);
begin
  if FMin <> Value then
  begin
    FMin := Value;
    CheckRange;
    if FMin > FMax then FMin := FMax;
    if FValue < FMin then
      FValue := FMin;
    FormatText;
  end;
end;

procedure TNumInp.SetMax(Value: extended);
begin
  if FMax <> Value then
  begin
    FMax := Value;
    CheckRange;
    if FMax < FMin then FMax := FMin;
    if FValue > FMax then
      FValue := FMax;
    FormatText;
  end;
end;

procedure TNumInp.SetValue(Value: extended);
begin
  if (FValue <> Value) and (Valid(Value)) then
  begin
    FValue := Value;
    FormatText;
  end
end;

procedure TNumInp.SetDigits(Value: word);
begin
  if FDigits <> Value then
  begin
    FDigits := Value;
    MaxLength := FDigits;
    FormatText;
  end;
end;

procedure TNumInp.SetDecimals (Value: word);
begin
  if FDecimals <> Value then
  begin
   if FDataType in [dtByte, dtInteger, dtLongint, dtShortint, dtWord] then
     FDecimals := 0 else
    FDecimals := Value;
    FormatText;
  end;
end;

procedure TNumInp.SetDataType(Value: TDataType);
begin
  if FDataType <> Value then
  begin
    FDataType := Value;
    if FDataType in [dtByte, dtInteger, dtLongint, dtShortint, dtWord] then
       begin
       FNumericType := ntGeneral;
       FDecimals:=0;
       end;
    CheckRange;
    FormatText;
  end;
end;

procedure TNumInp.SetNegCol (Value: Tcolor);
begin
  if FNegColor <> Value then
     FNegColor:=Value;
     FormatText;
 end;

procedure TNumInp.SetNumericType(Value: TNumericType);
begin
  if FDataType in [dtDouble, dtExtended, dtReal, dtSingle] then
     if FNumericType <> Value then
     begin
       FNumericType := Value;
       FormatText;
     end
  else FNumericType := ntGeneral;
end;

procedure TNumInp.SetValidate(Value: boolean);
begin
  if FValidate <> Value then
  begin
    FValidate := Value;
    if FValidate and ((FValue < FMin) or (FValue > FMax)) then
    begin
      FValue := FMin;
      FormatText;
    end;
  end;
end;

procedure TNumInp.SetTabOnEnterKey(Value: Boolean);
begin
  if FTabOnEnterKey <> Value then
  begin
    FTabOnEnterKey := Value;
  end;
end;

function TNumInp.Valid(Value: extended): boolean;
var
  S: string;
begin
  Result := true;
  if FValidate and ((Value < FMin) or (Value > FMax)) then
  begin
    FmtStr(S, 'Value must be between %g and %g', [FMin, FMax]);
    MessageDlg(S, mtError, [mbOk], 0);
    Result := false;
  end
end;

procedure  TNumInp.KeyDown(var Key: Word; Shift: TShiftState);
begin
  if (key = VK_UP) then
     PostMessage(GetparentForm(Self).Handle, WM_NEXTDLGCTL ,1,0);
  if (Key = VK_DOWN) then
     PostMessage(GetparentForm(Self).Handle, WM_NEXTDLGCTL ,0,0);
  inherited KeyDown(Key, Shift);
end;

procedure TNumInp.KeyPress(var Key: Char);
var
i,x,Sel,OldLength:Integer;
TRashText,OldText:String;
begin
x:=0;
  {if EnterKey and TabOnEnter}
  if (key = #13) and (FTabOnEnterKey) then
   begin
       PostMessage(GetparentForm(Self).Handle, WM_NEXTDLGCTL ,0,0);
       Key := #0;
       Exit;
   end;

{ Restore last entry if ESC}
    if (key = #27) then
      begin
  SendMessage(Self.Handle, WM_UNDO,0,0);
        SelectAll;
        Key := #0;
        exit;
      end;
{if copy or cut selection}
if (Key = ^C) or (Key = ^X) then exit;

{if Paste check if valid else undo}
if (Key = ^V) then
begin
 try
 OldText:=Text;
 SendMessage(Self.Handle, WM_PASTE ,0,0);
  FValue:=StrToFloat(Text);
  Valid(FValue);
  FormatText;
   if Length(Text) > MaxLength then {Check Length}
   begin
     Text:=OldText;
     MessageBeep(0);
   end;
 except
SendMessage(Self.Handle, WM_UNDO ,0,0);
MessageBeep(0);
end;
  Key := #0;
  exit;
end;

{Check for valid Characters}
  if Key in ['0'..'9', '-', '+', 'e', 'E', DecimalSeparator, #8] then
  begin
    if Key in ['e', 'E', DecimalSeparator] then
       if FDataType in [dtDouble, dtExtended, dtReal, dtSingle] then
       else Key := #0;
    inherited KeyPress(Key);
  end
  else  Key := #0;

{Check on Exponent }
 if FNumericType = ntExponent then
 begin
  if Key='e' then Key:='E';
 if Key in ['-','+','E', DecimalSeparator,'0'..'9'] then
  begin
   if ((pos(DecimalSeparator,Text) >0)and (Key=DecimalSeparator))
    or ((pos('E',Text) > 0) and (Key = 'E'))
    or ((SelStart > 0) and (Key = '-')and(pos('E',Text) = 0))
    or ((pos('E',Text) = 0) and (Key = '+'))
    or ((pos('E',Text) > 0) and (SelStart <> pos('E',Text)) and (Key = '-')
        and (SelStart>0))
    or ((pos('E',Text) > 0) and (Length(Text)> SelStart) and(Text[SelStart+1] in ['+','-']))
    or ((pos('E',Text) > 0) and (SelStart <> pos('E',Text)) and (Key = '+'))
    or ((Key = 'E') and not(text[SelStart] in ['0'..'9']))then
    begin
        MessageBeep(0);
        Key:=#0;
    end;
   end;
  { Check for backspace on E, if + or - Sign exists after E restrict removal}
   if (Key = #8)
      and (pos('E',Text) > 0)
      and (SelStart = pos('E',Text))
      and (Length(Text)> SelStart)
      and(Text[SelStart+1] in ['+','-']) then
        begin
        MessageBeep(0);
        Key:=#0;
    end;
   exit;
  end;

 {Clear selection in control If selection include DecimalPoint clear
   all numbers from start selection}
  if Sellength > 0 then
  begin
    if (SelStart+1 <= pos(DecimalSeparator,Text))
    and (SelStart+SelLength >= pos(DecimalSeparator,Text))then
    begin
    SelLength:=Length(Text)- SelStart;
    SendMessage(Self.Handle, WM_CLEAR, 0, 0);
    end
    else
    SendMessage(Self.Handle, WM_CLEAR, 0, 0);
   end;

{Take away all non numeric characters and leave the cursor}
   Sel:=SelStart;
   TrashText:='';
   OldLength:=Length(Text);
    for i:=1 to length(Text) do
    if ( Text[i] in ['0'..'9',DecimalSeparator,'-']) then
       TrashText:=TrashText+Text[i] else if i > sel then inc(x);
       Text:=TrashText;
       SelStart:=Sel-(OldLength-Length(Text))+x;

{Check for Back Space on Decimal, if decimal exist restrict removal if it will
 exceed characters before Decimal}
if     (key=#8)
       and (pos(DecimalSeparator,Text) >0)
       and (SelStart = pos(DecimalSeparator,Text))
       and (Length(Text)> pos(DecimalSeparator,Text))
       and (Length(Text)> MaxLength-FDecimals) then
       begin
        MessageBeep(0);
        Key:=#0;
        Exit;
       end;

 {Check for decimal is allowed and if decimal exist}
 if   (key = DecimalSeparator)
      and (Fdecimals = 0)
      or  (pos(DecimalSeparator,Text) >0)
      and (Key=DecimalSeparator)
      or  (SelStart<Length(Text)-FDecimals)
      and (Key=DecimalSeparator)
      and (Length(Text)>FDecimals)then
      begin
        MessageBeep(0);
        Key:=#0;
        Exit;
      end;

{Check for negative sign, only allowed as first character}
  if (key='-') and (SelStart<>0)then
       begin
        MessageBeep(0);
        Key:=#0;
        Exit;
       end;

 {Check max characters before decimal }
        if  (Key<>#8)
             and (pos(DecimalSeparator,Text) >0)
             and (pos(DecimalSeparator,Text) >= MaxLength-FDecimals)
             and (selstart < pos(DecimalSeparator,Text))
             or  (Key in ['0'..'9'])
             and (FDecimals <>0)
             and (selstart <= MaxLength-FDecimals)
             and (Length(Text)>=MaxLength-FDecimals-1)
             and (pos(DecimalSeparator,Text) = 0)
             then
                begin
      {Add Decimal automatically if max characters before Decimal}
                if (Key in ['0'..'9'])
                 and (FDecimals <>0)
                 and (selstart = MaxLength-FDecimals-1)
                 and (pos(DecimalSeparator,Text) = 0) then
                    begin
                         key:=DecimalSeparator;
                         exit
                    end;
                   MessageBeep(0);
                   Key:=#0;
                   Exit;
                end;

 {Check max characters after decimal}
        if  (Key<>#8)
             and (pos(DecimalSeparator,Text) >0)
             and (Length(Text)-pos(DecimalSeparator,Text)>=FDecimals)
             and (selstart >= pos(DecimalSeparator,Text)) then
                begin
                    MessageBeep(0);
                     Key:=#0;
                     Exit;
                end;

end;

procedure TNumInp.CMEnter(var Message: TCMEnter);
begin
{make sure the cursor is at the beginning if AutoSelect = False}
 if   (AutoSelect = False) then
      SelStart := 0;
 FFocused := True; {info for WM_PAINT }
 inherited;
end;

procedure TNumInp.CMExit(var Message: TCMExit);
var
  X: extended;
  TrashText : String;
  i:integer;
begin
  try
    {Using this to remove Currency symbol and Thousand seperator}
    TrashText:='';
    for i:=1 to length(Text) do
    if ( Text[i] in ['0'..'9',DecimalSeparator,'-','E','e','+']) then
         TrashText:=TrashText+Text[i];

    Text := TrashText;
     if Text='' then Text:='0';

    X := StrToFloat(Text);
    if Valid(X) then
    begin
      IsValid := true;
      FValue := X;
      FormatText;
      FFocused := False;  {info for WM_PAINT }
      invalidate; { This will repaint the control WM_PAINT Message}
      inherited ;
    end
    else
    begin
      IsValid := false;
      SelectAll;
      SetFocus;
    end;
  except
    on E: EConvertError do
    begin
      MessageDlg('''' + Text + ''' is no valid numeric input.', mtError, [mbOK], 0);
      SelectAll;
      SetFocus;
    end;
  end;
end;

procedure TNumInp.CheckRange;
var
  LMax, LMin: Extended;

  procedure check;
    begin
      if ((FMin < LMin) or (FMin > LMax)) then FMin := LMin;
      if ((FMax > LMax) or (FMax < LMin)) then FMax := LMax;
      if ((FValue < LMin) or (FValue > LMax))
         then FValue := 0;
    end;

begin
  case FDataType of
       dtByte:
         begin
           LMax := MaxByte; LMin := MinByte;
           check;
         end;
       dtDouble:
         begin
           LMax := MaxDouble; LMin := MinDouble;
           check;
         end;
       dtExtended:
         begin
           LMax := MaxExtended; LMin := MinExtended;
           check;
         end;
       dtInteger:
         begin
           LMax := MaxInteger; LMin := MinInteger;
           check;
         end;
       dtLongint:
         begin
           LMax := MaxLongInt; LMin := MinLongInt;
           check;
         end;
       dtReal:
         begin
           LMax := MaxReal; LMin := MinReal;
           check;
         end;
       dtShortint:
         begin
           LMax := MaxShortInt; LMin := MinShortInt;
           check;
         end;
       dtSingle:
         begin
           LMax := MaxSingle; LMin := MinSingle;
           check;
         end;
       dtWord:
         begin
           LMax := MaxWord; LMin := MinWord;
           check;
         end;
  end;
end;

procedure TNumInp.FormatText;
var
  X: Extended;
begin
  if FNumericType = ntExponent
     then MaxLength := FDigits + 3 + FDecimals
     else MaxLength := FDigits;

  if FDataType in [dtDouble, dtExtended, dtReal, dtSingle] then
  begin
    X := FValue;
    case FNumericType of
      ntNumber   : Text := FloatToStrF ( X, ffNumber, FDigits, FDecimals);
      ntGeneral  : Text := FloatToStrF ( X, ffGeneral, FDigits, FDecimals);
      ntExponent : Text := FloatToStrF ( X, ffExponent, FDigits, FDecimals);
      ntFixed    : Text := FloatToStrF ( X, ffFixed, FDigits, FDecimals);
      ntCurrency : Text := FloatToStrF ( X, ffCurrency, FDigits, FDecimals);
    end
  end
  else
  begin
    FValue := Round(FValue);
    X := FValue;
    Text := IntToStr(Round(X));
  end;
  if FValue < 0 then Font.Color:=FNegColor else Font.Color:=OldColor;
end;

procedure TNumInp.CMFontChanged(var Message: TMessage);
begin
  inherited;
  CalcTextMargin;
end;

procedure TNumInp.CalcTextMargin;
var
  DC: HDC;
  SaveFont: HFont;
  I: Integer;
  SysMetrics, Metrics: TTextMetric;
begin
  DC := GetDC(0);
  GetTextMetrics(DC, SysMetrics);
  SaveFont := SelectObject(DC, Font.Handle);
  GetTextMetrics(DC, Metrics);
  SelectObject(DC, SaveFont);
  ReleaseDC(0, DC);
  I := SysMetrics.tmHeight;
  if I > Metrics.tmHeight then I := Metrics.tmHeight;
  FTextMargin := I div 4;
end;

procedure TNumInp.WMPaint(var Message: TWMPaint);
var
  Width, Indent, Left, I: Integer;
  R: TRect;
  DC: HDC;
  PS: TPaintStruct;
  S: string;
begin
{ BugFix? : }
{ CMEnter doesn't execute, when the control is focused by a keystroke }
  if Self.Focused then FFocused := true;

  if (FAlignment = taLeftJustify) or FFocused then
  begin
    inherited;
    Exit;
  end;
{ Since edit controls do not handle justification unless multi-line (and
  then only poorly) we will draw right and center justify manually unless
  the edit has the focus. }
  if FCanvas = nil then
  begin
    FCanvas := TControlCanvas.Create;
    FCanvas.Control := Self;
  end;
  DC := Message.DC;
  if DC = 0 then DC := BeginPaint(Handle, PS);
  FCanvas.Handle := DC;
  try
    FCanvas.Font := Font;
    with FCanvas do
    begin
      R := ClientRect;
      if (BorderStyle = bsSingle) then
      begin
        Brush.Color := clWindowFrame;
        FrameRect(R);
        InflateRect(R, -1, -1);
      end;
      Brush.Color := Color;
      S := Text;
      Width := TextWidth(S);
      if BorderStyle = bsNone then Indent := 0 else Indent := FTextMargin;
      if FAlignment = taRightJustify then
        Left := R.Right - Width - Indent else
        Left := (R.Left + R.Right - Width) div 2;
      TextRect(R, Left, Indent, S);
    end;
  finally
    FCanvas.Handle := 0;
    if Message.DC = 0 then EndPaint(Handle, PS);
  end;
end;

Constructor TCalculator.Create(AOwner : TComponent);
begin
  Inherited Create(AOwner);
  ZeroBtn := TSpeedButton.Create(Self);
  ZeroBtn.Parent := Self;
  ZeroBtn.Caption := '0';
  ZeroBtn.Left := 2;
  ZeroBtn.Top := 142;
  ZeroBtn.Height := 25;
  ZeroBtn.Width := 53;
  ZeroBtn.OnClick := NumberBtnClick;
  ZeroBtn.Tag := 0;


  OneBtn   := TSpeedButton.Create(Self);
  OneBtn.Parent := Self;
  OneBtn.Caption := '1';
  OneBtn.Left := 2;
  OneBtn.Top := 114;
  OneBtn.Height := 25;
  OneBtn.Width := 25;
  OneBtn.OnClick := NumberBtnClick;
  OneBtn.Tag := 1;

  TwoBtn   := TSpeedButton.Create(Self);
  TwoBtn.Parent := Self;
  TwoBtn.Caption := '2';
  TwoBtn.Left := 30;
  TwoBtn.Top := 114;
  TwoBtn.Height := 25;
  TwoBtn.Width := 25;
  TwoBtn.OnClick := NumberBtnClick;
  TwoBtn.Tag := 2;

  ThreeBtn := TSpeedButton.Create(Self);
  ThreeBtn.Parent := Self;
  ThreeBtn.Caption := '3';
  ThreeBtn.Left := 58;
  ThreeBtn.Top := 114;
  ThreeBtn.Height := 25;
  ThreeBtn.Width := 25;
  ThreeBtn.OnClick := NumberBtnClick;
  ThreeBtn.Tag := 3;

  FourBtn  := TSpeedButton.Create(Self);
  FourBtn.Parent := Self;
  FourBtn.Caption := '4';
  FourBtn.Left := 2;
  FourBtn.Top := 86;
  FourBtn.Height := 25;
  FourBtn.Width := 25;
  FourBtn.OnClick := NumberBtnClick;
  FourBtn.Tag := 4;

  FiveBtn  := TSpeedButton.Create(Self);
  FiveBtn.Parent := Self;
  FiveBtn.Caption := '5';
  FiveBtn.Left := 30;
  FiveBtn.Top := 86;
  FiveBtn.Height := 25;
  FiveBtn.Width := 25;
  FiveBtn.OnClick := NumberBtnClick;
  FiveBtn.Tag := 5;

  SixBtn   := TSpeedButton.Create(Self);
  SixBtn.Parent := Self;
  SixBtn.Caption := '6';
  SixBtn.Left := 58;
  SixBtn.Top := 86;
  SixBtn.Height := 25;
  SixBtn.Width := 25;
  SixBtn.OnClick := NumberBtnClick;
  SixBtn.Tag := 6;

  SevenBtn := TSpeedButton.Create(Self);
  SevenBtn.Parent := Self;
  SevenBtn.Caption := '7';
  SevenBtn.Left := 2;
  SevenBtn.Top := 58;
  SevenBtn.Height := 25;
  SevenBtn.Width := 25;
  SevenBtn.OnClick := NumberBtnClick;
  SevenBtn.Tag := 7;

  EightBtn := TSpeedButton.Create(Self);
  EightBtn.Parent := Self;
  EightBtn.Caption := '8';
  EightBtn.Left := 30;
  EightBtn.Top := 58;
  EightBtn.Height := 25;
  EightBtn.Width := 25;
  EightBtn.OnClick := NumberBtnClick;
  EightBtn.Tag := 8;

  NineBtn  := TSpeedButton.Create(Self);
  NineBtn.Parent := Self;
  NineBtn.Caption := '9';
  NineBtn.Left := 58;
  NineBtn.Top := 58;
  NineBtn.Height := 25;
  NineBtn.Width := 25;
  NineBtn.OnClick := NumberBtnClick;
  NineBtn.Tag := 9;

  PeriodBtn:= TSpeedButton.Create(Self);
  PeriodBtn.Parent := Self;
  PeriodBtn.Caption := '.';
  PeriodBtn.Left := 58;
  PeriodBtn.Top := 142;
  PeriodBtn.Height := 25;
  PeriodBtn.Width := 25;
  PeriodBtn.OnClick := NumberBtnClick;
  periodBtn.Tag := 10;

  EnterBtn := TSpeedButton.Create(Self);
  EnterBtn.Parent := Self;
  EnterBtn.Caption := '=';
  EnterBtn.Left := 86;
  EnterBtn.Top := 114;
  EnterBtn.Height := 53;
  EnterBtn.Width := 25;
  EnterBtn.OnClick := EnterBtnClick;

  AddBtn   := TSpeedButton.Create(Self);
  AddBtn.Parent := Self;
  AddBtn.Caption := '+';
  AddBtn.Left := 86;
  AddBtn.Top := 58;
  AddBtn.Height := 53;
  AddBtn.Width := 25;
  AddBtn.OnClick := AddBtnClick;

  ClearBtn := TSpeedButton.Create(Self);
  ClearBtn.Parent := Self;
  ClearBtn.Caption := 'C';
  ClearBtn.Left := 2;
  ClearBtn.Top := 30;
  ClearBtn.Height := 25;
  ClearBtn.Width := 25;
  ClearBtn.OnClick := ClearBtnClick;

  SubBtn   := TSpeedButton.Create(Self);
  SubBtn.Parent := Self;
  SubBtn.Caption := '-';
  SubBtn.Left := 86;
  SubBtn.Top := 30;
  SubBtn.Height := 25;
  SubBtn.Width := 25;
  SubBtn.OnClick := SubBtnClick;

  MultBtn  := TSpeedButton.Create(Self);
  MultBtn.Parent := Self;
  MultBtn.Caption := '*';
  MultBtn.Left := 58;
  MultBtn.Top := 30;
  MultBtn.Height := 25;
  MultBtn.Width := 25;
  MultBtn.OnClick := MultBtnClick;

  DividBtn := TSpeedButton.Create(Self);
  DividBtn.Parent := Self;
  DividBtn.Caption := '/';
  DividBtn.Left := 30;
  DividBtn.Top := 30;
  DividBtn.Height := 25;
  DividBtn.Width := 25;
  DividBtn.OnClick := DividBtnClick;

  DisplayEdit:= TNumInp.Create(Self);
  DisplayEdit.Parent := Self;
  DisplayEdit.AutoSelect := FALSE;
  DisplayEdit.AutoSize := FALSe;
  DisplayEdit.Decimals := 18;
  DisplayEdit.Digits := 26;
  DisplayEdit.Left := 2;
  DisplayEdit.Top := 4;
  DisplayEdit.Height := 21;
  DisplayEdit.Width := 110;
  DisplayEdit.Alignment := taRightJustify;
  DisplayEdit.Min := -MaxLongInt;
  DisplayEdit.Max := MaxLongInt;
  DisplayEdit.HideSelection := FALSE;
  DisplayEdit.TabStop := FALSE;
//  DisplayEdit.Enabled := FALSE;
  DisplayEdit.Font.Style := [fsBold];

  Height := 194;
  Width := 120;
  SetToClear := TRUE;
  Operator := opNONE;
end;

Destructor TCalculator.Destroy;
begin
  SevenBtn.Free;
  EightBtn.Free;
  NineBtn.Free;
  ZeroBtn.Free;
  FourBtn.Free;
  FiveBtn.Free;
  SixBtn.Free;
  PeriodBtn.Free;
  OneBtn.Free;
  TwoBtn.Free;
  ThreeBtn.Free;
  EnterBtn.Free;
  AddBtn.Free;
  ClearBtn.Free;
  SubBtn.Free;
  MultBtn.Free;
  DividBtn.Free;
  DisplayEdit.Free;
  Inherited Destroy;
end;


Procedure TCalculator.KeyPress(Var Key : Char);
begin
  Case Key Of
    '0': ZeroBtn.Click;
    '1': OneBtn.Click;
    '2': TwoBtn.Click;
    '3': ThreeBtn.Click;
    '4': FourBtn.Click;
    '5': FiveBtn.Click;
    '6': SixBtn.Click;
    '7': SevenBtn.Click;
    '8': EightBtn.Click;
    '9': NineBtn.Click;
    '.': PeriodBtn.Click;
    '+': AddBtn.Click;
    '-': SubBtn.Click;
    '*': MultBtn.Click;
    '/': DividBtn.Click;
    'c','C': ClearBtn.Click;
    #13: EnterBtn.Click;
    Else
      Key := #0;
  end;
end;


procedure TCalculator.NumberBtnClick(Sender: TObject);
begin
  If SetToClear Then
    Begin
      DisplayEdit.Value := 0;
      DecDigits := 10;
      SetToClear := FALSE;
    end;

  Case TSpeedButton(Sender).Tag Of
    0..9:
      Begin
        If PeriodBtn.Enabled Then
            DisplayEdit.Value := Displayedit.Value * 10 +
                                 TSpeedButton(Sender).Tag
        Else
          begin
            DisplayEdit.Value := DisplayEdit.Value +
                           (TSpeedButton(Sender).Tag/DecDigits);
            DecDigits := DecDigits * 10;
          end;
      end;
    10: // . decimal point.
      begin
        PeriodBtn.Enabled := FALSE;
      end;
  end;
end;


Procedure TCalculator.Calculate;
begin
  If (PreviousValue <> 0) AND (Operator <> opNONE) Then
    Case Operator Of
      opAddition:
        DisplayEdit.Value := PreviousValue + DisplayEdit.Value;
      opSubtraction:
        DisplayEdit.Value := PreviousValue - DisplayEdit.Value;
      opMultiplication:
        DisplayEdit.Value := PreviousValue * DisplayEdit.Value;
      opDivision: If DisplayEdit.Value <> 0 Then
                  DisplayEdit.Value := PreviousValue / DisplayEdit.Value;
    end;
end;

Procedure TCalculator.EnterBtnClick(Sender : TObject);
begin
  // Perform Calculation.
  PeriodBtn.Enabled := TRUE;
  Calculate;
  SetToClear := TRUE;
  Operator := opNONE;
end;


Procedure TCalculator.ClearBtnClick(Sender : TObject);
begin
  DisplayEdit.Value := 0;
  PreviousValue := 0;
  PeriodBtn.Enabled := TRUE;
  SetToClear := TRUE;
  Operator := opNONE;

end;

Procedure TCalculator.AddBtnClick(Sender : TObject);
begin
  // Addition.
  Calculate;
  PreviousValue := DisplayEdit.Value;
  Operator := opAddition;
  PeriodBtn.Enabled := TRUE;
  SetToClear := TRUE;
end;

Procedure TCalculator.SubBtnClick(Sender : TObject);
begin
  Calculate;
  PreviousValue := DisplayEdit.Value;
  Operator := opSubtraction;
  PeriodBtn.Enabled := TRUE;
  SetToClear := TRUE;
end;

Procedure TCalculator.MultBtnClick(Sender : TObject);
begin
  Calculate;
  PreviousValue := DisplayEdit.Value;
  Operator := opMultiplication;
  PeriodBtn.Enabled := TRUE;
  SetToClear := TRUE;
end;

Procedure TCalculator.DividBtnClick(Sender : TObject);
begin
  Calculate;
  PreviousValue := DisplayEdit.Value;
  Operator := opDivision;
  PeriodBtn.Enabled := TRUE;
  SetToClear := TRUE;
end;

end.
