Unit Common;

Interface

Uses
  Dialogs, StdCtrls, Controls, SysUtils, DB, CheckLst, ADODB, Classes,
  RBaseAvinCard, Globals0, System.Types, Windows, AdoInt, System.AnsiStrings,
  Inifiles, ADOConEd, Printers, Globals,
  uRwEasyMAPI, uRwMapiSession, uRwMapiInterfaces, uRwSysUtils,
  Vcl.Grids, Vcl.DBGrids, Vcl.OleCtrls,
  // !!!  Row cannot be located for updating
  // !!!  Properties['Update Criteria'].Value := adCriteriaKey;
  // !!!  or refresh after post etc. + ADOInt
  cxGridDBTableView, cxDBLookupComboBox, DBase,
  IpTypes, IpHlpApi, IdIpWatch,
  Forms, ComObj; // !!! Alias  Vcl.Oleauto;

Resourcestring
  ERR_STR_NOT_ALLOWED = 'Δεν επιτρέπεται';

Type
  T8Bits = Set Of 0 .. 7;
  TCallState = (csDateTime, csDate, csTime);

Function AskUserNo(Ask: AnsiString): Boolean;
Function AskUserYes(Ask: AnsiString): Boolean;
Function CheckAFM(AFM: AnsiString): Boolean;

Function IsNumber(Ch: ansiChar): Boolean;
Function RegNoConvert(Const FrStr: AnsiString): AnsiString;
Function RegNoCheck(Const Str: AnsiString): Boolean;
Function LastDateOfMonth(ADate: TDateTime): TDateTime;
Function AddMonths(ADate: TDateTime; Months: Integer): TDateTime;
Function CheckDateRange(Dt1, Dt2: TField): Boolean;
Procedure CheckStringRange(Const Str1, Str2: TField);
Procedure CheckIntegerRange(Const Str1, Str2: TField);
Function ADOLikeQuotedStr(InStr: AnsiString): AnsiString;
Function ADOLikeStr(InStr: AnsiString): AnsiString;
Function ADOYesStr: AnsiString;
Function ADONoStr: AnsiString;
Function ADOYesStrN: AnsiString;
Function ADONoStrN: AnsiString;
Function StripTimeFromDateTime(Dt: TDateTime): TDateTime;
Function NowDateOnly: TDateTime;

Procedure BitSet(Ptr: PByteArray; BitNo: Integer);
Procedure BitRst(Ptr: PByteArray; BitNo: Integer);
Procedure BitVal(Ptr: PByteArray; BitNo: Integer; Val: Boolean);
Procedure BitRange(Ptr: PByteArray; ApoBitNo, EosBitNo: Integer; Val: Boolean);

procedure LoadImage(Form: TrptBaseAvinCard);
procedure LoadImage2(Form: TrptBaseAvinCard);
procedure LoadImageNoDlg(Form: TrptBaseAvinCard);
function LoadImageRt(Form: TrptBaseAvinCard): Integer;
Function BitTst(Ptr: PByteArray; BitNo: Integer): Boolean;
Function DoubleRnd(AValue: Double; ADecs: Integer): Double;
Function ADODateOnlyStr(Const Dt: TDateTime): AnsiString;

Function CheckListBoxHas(clb: TCheckListBox): Boolean;
Function CheckListBoxIsChecked(clb: TCheckListBox; ID: Integer): Boolean;
Procedure FillCheckListBox(clb: TCheckListBox; tbl: TADOTable; DescrFld, IDFld: TField);
Procedure FillCheckListBoxName(clb: TCheckListBox; tbl: TDataSet; DescrFldName, IDFldName: String);
Procedure ResetStrClb(clb: TCheckListBox);
Procedure SetStrClb(clb: TCheckListBox);
Procedure ScanCheckListBox(clb: TCheckListBox; Mode: Boolean);
Procedure FindWords(StrToFind: String; var SList: TStringList);
Function WhereApoString(Const AStr, FldName: AnsiString; Const IsFirst: Boolean = false): AnsiString;
Function WhereEosString(Const AStr, FldName: AnsiString; Const IsFirst: Boolean = false): AnsiString;
Function WhereApoNumber(Const AStr, FldName: AnsiString; Const IsFirst: Boolean = false): AnsiString;
Function WhereEosNumber(Const AStr, FldName: AnsiString; Const IsFirst: Boolean = false): AnsiString;
Function WhereApoDateOnly(Const Dt: TDateTime; Const FldName: AnsiString; Const IsFirst: Boolean = false): AnsiString;
Function WhereEosDateOnly(Const Dt: TDateTime; Const FldName: AnsiString; Const IsFirst: Boolean = false): AnsiString;
Function WhereEosBoolean(Const TrueFalse: Boolean; Const FldName: AnsiString; Const IsFirst: Boolean = false): AnsiString;
Function WhereIn(Const Values: String; Const FldName: AnsiString; Const IsFirst: Boolean = false): AnsiString;
Function FillInStrClb(clb: TCheckListBox): AnsiString;
Function PercentOfAmount(Const Amount: Double; Const Percent: Double; Const Decimals: Integer): Double;
function FormDate(aowner: TComponent; var PDate: TDateTime; State: TCallState = csDateTime): Integer;
function FormDateTitle(aowner: TComponent; var PDate: TDateTime; Title: String; State: TCallState = csDateTime): Integer;

/// /092013 - !!!!
procedure Output2XLSdx(FromGrid: TcxGridDBTableView);
procedure Output2XLSFiledx(FromGrid: TcxGridDBTableView; FileName: String);
procedure Output2XLSDBG(FromGrid: TDBGrid);
procedure OutputXMLdx(DataSet2Save: TDataSet);
procedure DMCreate(SenderForm: TForm; OpenLater: String = ''; UpdateFields: Boolean = false; UpdateToFields: Boolean = false);
procedure DMCreateSlow(SenderForm: TForm; OpenLater: String = ''; UpdateFields: Boolean = false; UpdateToFields: Boolean = false);

procedure GenTestPostWithNameN(DataSet: TDataSet);
procedure GenDeletePostWithNameN(DataSet: TDataSet);
procedure GenInActivePostWithNameN(DataSet: TDataSet);
procedure ExecMethod(OnObject: TObject; MethodName: string);

procedure ExecMethodStrParam(OnObject: TObject; MethodName: string; Param: string);
function GetFileVersion0(FileName: string = ''; const Fmt: string = '%d.%d.%d.%d'): string;
function DateToStrNum(Dt: TDateTime): string;

function ReturnFullIdNo(Number: Integer): String;
function ReturnFullIdNoUnfor(Number: Integer): String;
function ReturnCardCodeFromFullNo(Number: String): Integer;
function ReturnCardIdFromFullNo(Number: String): Integer;
function ReturnPass(CardNumber: String): String;
Function ReturnPukk(CardNumber: String): String;
function ReturnCardCode(CardNo: String): Integer;
function CheckDigitVisa(Card: String): Integer;

function FillInClbList(clb: TCheckListBox; FieldName: String): AnsiString;
function FillInClbListBrac(clb: TCheckListBox; FieldName: String): AnsiString;
procedure EnhmClb(LeoCb: TCheckListBox; OnOff: Boolean);

function ReadApplicationIni(Section: String; DetailLine: String): String;
procedure DoCursorPop;
function GetIniPath(PathName: string): String;
procedure DoCursorPush(NewCursor: TCursor = crSQLWait);
procedure GetUserNameEx(NameFormat: DWORD; lpNameBuffer: LPSTR; nSize: PULONG); stdcall; external 'secur32.dll' Name 'GetUserNameExW';
procedure MsgDlg(Text: string);
function ClearSpaces(InStr: String): string;

function GetLabelPrinterIndex(Name: String): Integer;
procedure PrinterColor(PrnIndex: Integer = -1);

function GetMac:String;
Function GetUserFromWindows:String;
function ComputerName : String;
function GetLocalIP: string;

procedure XlsWriteCellLabel(XlsStream: TStream; const ACol, ARow: Word; const AValue: string);
procedure XlsWriteCellNumber(XlsStream: TStream; const ACol, ARow: Word; const AValue: Double);
procedure XlsWriteCellRk(XlsStream: TStream; const ACol, ARow: Word; const AValue: Integer);
procedure XlsEndStream(XlsStream: TStream);
procedure XlsBeginStream(XlsStream: TStream; const BuildNumber: Word);

procedure UpdTostBrowse(stBrowseName: String; DataSet: TCustomADODataSet);
procedure UpdFromstBrowse(stBrowseName: String; DataSet: TCustomADODataSet);

Var
  gRegNoGreek:     String[80] = 'ABCDEFGHIJKLMNOPQRSTUVWXYZΑΒΓΔΕΖΗΘΙΚΛΜΝΞΟΠΡΣΤΥΦΧΨΩΆΈΊΉΎΏΪΫ1234567890';
  gRegNoLatin:     String[80] = 'ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEZHUIKLMNJOPRSTYFXCVAEIHYVIY1234567890';
  gRegNoLatinFull: String[80] = 'ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEZHUIKLMNJOPRSTYFXCVAEIHYVIY1234567890';
const
  NameUnknown = 0; // Unknown name type.
  NameFullyQualifiedDN = 1; // Fully qualified distinguished name
  NameSamCompatible = 2; // Windows NT® 4.0 account name
  NameDisplay = 3; // A "friendly" display name
  NameUniqueId = 6; // GUID string that the IIDFromString function returns
  NameCanonical = 7; // Complete canonical name
  NameUserPrincipal = 8; // User principal name
  NameCanonicalEx = 9;
  NameServicePrincipal = 10; // Generalized service principal name
  DNSDomainName = 11; // DNS domain name, plus the user name

Implementation

uses FCall, DMain, FFilterEn, FMain, WinSpool;

procedure FindWords(StrToFind: String; var SList: TStringList);
var
  x, y: Integer;
  Wd, StrTmp: String;
begin
  StrTmp    := StrToFind;
  StrToFind := StringReplace(StrTmp, ';', ',', []);

  repeat
    y := Pos(',', StrTmp);
    if y = 0 then
      begin
        SList.Add(StrTmp);
        exit;
      end
    else
      begin
        SList.Add(Copy(StrTmp, 1, (y - 1)));
        Delete(StrTmp, 1, y);
      end
      until length(StrTmp) = 0;
  end;

  procedure LoadImage(Form: TrptBaseAvinCard);
  begin
    // TODO Inherit from a base AvinCard Report
    // TODO Create Color BW or None Dialog
    if Form is TrptBaseAvinCard then
      try
        case MessageDlg('Ενχρώμο(Yes) , Ασπρόμαυτο(No) ή Καθόλου(Cancel) Logo Avin Card', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
          mrYes:
            begin
              // TrptBaseAvinCard(Form).QRACardLogo.Picture.LoadFromFile
              // ('.\AvinCardSmall.bmp');
              // TrptBaseAvinCard(Form).QRACardLogo1.Picture.LoadFromFile
              // ('.\AvinCardSmall.bmp');
              TrptBaseAvinCard(Form).QRACardLogo.Picture  := frmMain.Image2.Picture;
              TrptBaseAvinCard(Form).QRACardLogo1.Picture := frmMain.Image2.Picture;
            end;
          mrNo:
            begin
              // TrptBaseAvinCard(Form).QRACardLogo.Picture.LoadFromFile
              // ('.\AvinCardSmallBw.bmp');
              // TrptBaseAvinCard(Form).QRACardLogo1.Picture.LoadFromFile
              // ('.\AvinCardSmallBw.bmp');
              TrptBaseAvinCard(Form).QRACardLogo.Picture  := frmMain.Image3.Picture;
              TrptBaseAvinCard(Form).QRACardLogo1.Picture := frmMain.Image3.Picture;
            end;
        end;
      except
      end;
  end;

  procedure LoadImage2(Form: TrptBaseAvinCard);
  begin
    // TODO Inherit from a base AvinCard Report
    // TODO Create Color BW or None Dialog
    if Form is TrptBaseAvinCard then
      if frmMain.InBAtchAction then
        begin
          TrptBaseAvinCard(Form).QRACardLogo.Picture  := frmMain.Image2.Picture;
          TrptBaseAvinCard(Form).QRACardLogo1.Picture := frmMain.Image2.Picture;
        end
      else
        begin
          try
            case MessageDlg('Ενχρώμο(Yes) , Ασπρόμαυτο(No) ή Καθόλου(Cancel) Logo Avin Card', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
              mrYes:
                begin
                  TrptBaseAvinCard(Form).QRACardLogo.Picture := frmMain.Image2.Picture;
                  TrptBaseAvinCard(Form).QRACardLogo1.Picture := frmMain.Image2.Picture;
                end;
              mrNo:
                begin
                  TrptBaseAvinCard(Form).QRACardLogo.Picture := frmMain.Image3.Picture;
                  TrptBaseAvinCard(Form).QRACardLogo1.Picture := frmMain.Image3.Picture;
                end;
            end;
          except
          end;
        end;
  end;

  function LoadImageRt(Form: TrptBaseAvinCard): Integer;
  begin
    // TODO Inherit from a base AvinCard Report
    // TODO Create Color BW or None Dialog
    if Form is TrptBaseAvinCard then
      try
        case MessageDlg('Ενχρώμο(Yes) , Ασπρόμαυτο(No) ή Καθόλου(Cancel) Logo Avin Card', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
          mrYes:
            begin
              // TrptBaseAvinCard(Form).QRACardLogo.Picture.LoadFromFile
              // ('.\AvinCardSmall.bmp');
              // TrptBaseAvinCard(Form).QRACardLogo1.Picture.LoadFromFile
              // ('.\AvinCardSmall.bmp');
              TrptBaseAvinCard(Form).QRACardLogo.Picture  := frmMain.Image2.Picture;
              TrptBaseAvinCard(Form).QRACardLogo1.Picture := frmMain.Image2.Picture;
              result                                      := 1;
            end;
          mrNo:
            begin
              // TrptBaseAvinCard(Form).QRACardLogo.Picture.LoadFromFile
              // ('.\AvinCardSmallBw.bmp');
              // TrptBaseAvinCard(Form).QRACardLogo1.Picture.LoadFromFile
              // ('.\AvinCardSmallBw.bmp');
              TrptBaseAvinCard(Form).QRACardLogo.Picture  := frmMain.Image3.Picture;
              TrptBaseAvinCard(Form).QRACardLogo1.Picture := frmMain.Image3.Picture;
              result                                      := 2;
            end;
          mrCancel:
            begin
              result := 3;
            end;
        end;
      except
      end;
  end;

  Function DefMessageDlg(Const aCaption: String; Const Msg: String; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; DefButton: Integer; HelpCtx: Longint): Integer;
  { +------------------------------------------------------------
    Parameters:
    aCaption: Caption to use for the dialog. If empty the default is used.
    Msg     : message to display
    Dlgtype : type of dialog, see MessageDlg online help
    Buttons : buttons to display, see MessageDlg online help
    Defbutton: ModalResult of the button that should be the default.
    HelpCtx:  help context (optional)
    Returns:
    ModalResult of the dialog
    Description:
    This is a wrapper around CreateMessageDialog, basically
    an extension of the MessageDlg VCL function that allows
    us to modify the caption and determine which button will
    be the default.
    Error Conditions:
    none

    Created: 07.06.98 14:54:20 by P. Below
    +------------------------------------------------------------ }
  Var
    i: Integer;
    btn: TButton;
  Begin
    With CreateMessageDialog(Msg, DlgType, Buttons) Do
      Try
        If length(aCaption) > 0 Then
          Caption   := aCaption;
        HelpContext := HelpCtx;
        For i       := 0 To ComponentCount - 1 Do
          Begin
            If Components[i] Is TButton Then
              Begin
                btn         := TButton(Components[i]);
                btn.Default := btn.ModalResult = DefButton;
                If btn.Default Then
                  ActiveControl := btn;
              End;
          End; { For }
        result := ShowModal;
      Finally
        Free;
      End;
  End;

  Function AskUserNo(Ask: AnsiString): Boolean;
  Begin
    { TODO : the last argument is the help item to be display if the [Help] button is shown !!! }
    result := false;
    If (DefMessageDlg('AvinCard', Ask, mtConfirmation, [mbYes, mbNo], mrNo, 0) = mrYes) Then
      result := true;
  End;

  Function AskUserYes(Ask: AnsiString): Boolean;
  Begin
    { TODO : the last argument is the help item to be display if the [Help] button is shown !!! }
    result := false;
    If (DefMessageDlg('AvinCard', Ask, mtConfirmation, [mbYes, mbNo], mrYes, 0) = mrYes) Then
      result := true;
  End;

  Function CheckAFM(AFM: AnsiString): Boolean;
  Var
    i, j, Sum: Integer;
    s2: String[3];
  Begin
    result := false;
    If length(AFM) <> 9 Then
      exit;
    Sum   := 0;
    For i := 1 To 8 Do
      Begin
        If (AFM[i] >= '0') And (AFM[i] <= '9') Then
          Sum := Sum + (ord(AFM[i]) - 48) * (1 Shl (9 - i))
        Else
          exit;
      End;
    j   := Sum Div 11;
    Sum := Sum - (j * 11);
    Str(Sum, s2);
    If s2[length(s2)] <> AFM[9] Then
      exit;
    result := true;
  End;

  { TODO -cMust Fix 2010 : Char Conversion }

  Function RegNoConv(Ch: ansiChar): ansiChar;
  Var
    i, Len: Integer;
  Begin
    result := ' ';
    Len    := length(gRegNoGreek);
    For i  := 1 To Len Do
      Begin
        If (gRegNoGreek[i] = Ch) Then
          Begin
            result := gRegNoLatin[i];
            exit;
          End;
      End;
  End;

  Function IsAlpha(Ch: ansiChar): Boolean;
  Begin
    result := (Ch >= 'A') And (Ch <= 'z');
  End;

  Function IsNumber(Ch: ansiChar): Boolean;
  Begin
    result := (Ch >= '0') And (Ch <= '9');
  End;

  Function IsAAANNNN(Const Str: AnsiString): Boolean;
  Begin
    result := false;
    { TODO -cMust Fix 2010 : Char Conversion }
    If (length(Str) >= 7) Then
      Begin
        If (IsAlpha(Str[1]) = true) And (IsAlpha(Str[2]) = true) And (IsAlpha(Str[3]) = true) And (IsNumber(Str[4]) = true) And (IsNumber(Str[5]) = true) And
          (IsNumber(Str[6]) = true) And (IsNumber(Str[7]) = true) Then
          Begin
            If (length(Str) = 7) Then
              result := true;
          End;
      End;
  End;

  Function IsAANNNN(Const Str: AnsiString): Boolean;
  Begin
    result := false;
    { TODO -cMust Fix 2010 : Char Conversion }
    { If (Length(Str) >= 6) Then Begin
      If (IsAlpha(Str[1]) = true) And (IsAlpha(Str[2]) = true) And
      (IsNumber(Str[3]) = true) And (IsNumber(Str[4]) = true) And
      (IsNumber(Str[5]) = true) And (IsNumber(Str[6]) = true) Then Begin
      If (Length(Str) = 6) Then Result := true;
      End;
      End; }
  End;

  Function RegNoConvert(Const FrStr: AnsiString): AnsiString;
  Var
    a: AnsiString;
    i: Integer;
    Ch: ansiChar;
  Begin
    result := '';
    { TODO -cMust Fix 2010 : Char Conversion }
    a     := AnsiUpperCase(Trim(FrStr));
    For i := 1 To length(a) Do
      Begin
        Ch := RegNoConv(a[i]);
        If (Ch <> ' ') Then
          result := result + Ch;
      End;
  End;

  Function RegNoCheck(Const Str: AnsiString): Boolean;
  Begin
    result := false;
    If (IsAAANNNN(Str) = true) Then
      result := true
    Else If (IsAANNNN(Str) = true) Then
      result := true;
  End;

  Function IsLeapYear(AYear: Integer): Boolean;
  { AYear the year to be processed - should be 4 digit, eg 1999. }
  Begin
    result := ((AYear And 3) = 0) And ((AYear Mod 100 > 0) Or (AYear Mod 400 = 0));
  End;

  Function LastDayOfMonth(AMonth, AYear: Integer): Integer;
  Begin
    Case AMonth Of
      2:
        Begin
          If (IsLeapYear(AYear) = true) Then
            result := 29
          Else
            result := 28;
        End;
      4, 6, 9, 11:
        result := 30;
    Else
      result := 31;
    End;
  End;

  Function LastDateOfMonth(ADate: TDateTime): TDateTime;
  Var
    D, M, y: Word;
  Begin
    Decodedate(ADate, y, M, D);
    D      := LastDayOfMonth(M, y);
    result := EncodeDate(y, M, D);
  End;

  Function AddMonths(ADate: TDateTime; Months: Integer): TDateTime;
  Var
    D, M, y: Word;
    IMonth: Integer;
  Begin
    Decodedate(ADate, y, M, D);
    IMonth := M + Months;
    If (IMonth > 12) Then
      Begin
        y      := y + (IMonth - 1) Div 12;
        IMonth := IMonth Mod 12;
        If (IMonth = 0) Then
          IMonth := 12;
      End
    Else If (IMonth < 1) Then
      Begin
        y      := y + (IMonth Div 12) - 1; { sub years }
        IMonth := 12 - abs(IMonth) Mod 12;
      End;
    M := IMonth;
    { ensure day of month is valid }
    If (M = 2) Then
      Begin
        If (IsLeapYear(y) = true) And (D > 29) Then
          D := 29
        Else If (IsLeapYear(y) = false) And (D > 28) Then
          D := 28;
      End
    Else If (M In [4, 6, 9, 11]) And (D = 31) Then
      D    := 30;
    result := EncodeDate(y, M, D);
  End;

  Function CheckDateRange(Dt1, Dt2: TField): Boolean;
  Begin
    result := true;
    If (Dt1.IsNull = false) And (Dt2.IsNull = false) Then
      Begin
        If (Dt1.AsDateTime > Dt2.AsDateTime) Then
          Begin
            result := false;
            MessageDlg('Δεν επιτρέπεται.' + ' ' + Dt1.Name + '>' + Dt2.Name, mtError, [mbOK], 0);
            { TODO : κανονικά πρέπει να χρησιμοποιήσουμε Exception (και όχι MessageDlg) }
          End;
      End;
  End;

  Function ADOLikeQuotedStr(InStr: AnsiString): AnsiString;
  Begin
    result := QuotedStr(ADOLikeStr(InStr));
  End;

  Function ADOLikeStr(InStr: AnsiString): AnsiString;
  Var
    Len: Integer;
    i: Integer;
  Begin
    { TODO : για τη μετατροπή των wildchars πρέπει να υπάρχουν parameters in <APPL>.INI }
    Len    := length(InStr);
    result := '*';
    If Len > 0 Then
      Begin
        If InStr[Len] = '*' Then
          result := InStr
        Else
          result := InStr + '*';
      End;
    For i := 1 To length(result) Do
      Begin
        If result[i] = '*' Then
          result[i] := '%'
        Else If result[i] = '?' Then
          result[i] := '_';
      End;
  End;

  Function StripTimeFromDateTime(Dt: TDateTime): TDateTime;
  Begin
    ReplaceTime(Dt, 0.0);
    result := Dt;
  End;

  Function NowDateOnly: TDateTime;
  Begin
    result := StripTimeFromDateTime(Now);
  End;

  Function ADOYesStr: AnsiString;
  Begin
    result := '1';
  End;

  Function ADONoStr: AnsiString;
  Begin
    result := '0';
  End;

  Function ADOYesStrN: AnsiString;
  Begin
    result := 'True';
  End;

  Function ADONoStrN: AnsiString;
  Begin
    result := 'False';
  End;

  Procedure BitCalcIndices(Var ByteIdx, BitIdx: Integer; BitNo: Integer);
  Begin
    ByteIdx := BitNo Div 8;
    BitIdx  := BitNo Mod 8;
  End;

  Procedure BitSet(Ptr: PByteArray; BitNo: Integer);
  Var
    ByteIdx, BitIdx: Integer;
  Begin
    BitCalcIndices(ByteIdx, BitIdx, BitNo);
    Include(T8Bits(Ptr[ByteIdx]), BitIdx);
  End;

  Procedure BitRst(Ptr: PByteArray; BitNo: Integer);
  Var
    ByteIdx, BitIdx: Integer;
  Begin
    BitCalcIndices(ByteIdx, BitIdx, BitNo);
    Exclude(T8Bits(Ptr[ByteIdx]), BitIdx);
  End;

  Procedure BitVal(Ptr: PByteArray; BitNo: Integer; Val: Boolean);
  Begin
    If (Val = true) Then
      BitSet(Ptr, BitNo)
    Else
      BitRst(Ptr, BitNo);
  End;

  Procedure BitRange(Ptr: PByteArray; ApoBitNo, EosBitNo: Integer; Val: Boolean);
  Var
    i: Integer;
  Begin
    For i := ApoBitNo To EosBitNo Do
      BitVal(Ptr, i, Val);
  End;

  Function BitTst(Ptr: PByteArray; BitNo: Integer): Boolean;
  Var
    ByteIdx, BitIdx: Integer;
  Begin
    result := false;
    BitCalcIndices(ByteIdx, BitIdx, BitNo);
    If (BitIdx In T8Bits(Ptr[ByteIdx])) Then
      result := true;
  End;

  Function DoubleRnd(AValue: Double; ADecs: Integer): Double;
  Var
    s: String;
    err: Integer;
  Begin
    Str((AValue + 0.00000000000001): 1: ADecs, s);
    Val(s, AValue, err);
    result := AValue;
  End;

  Procedure CheckStringRange(Const Str1, Str2: TField);
  Begin
    If (Str1.AsString <> '') And (Str2.AsString <> '') Then
      Begin
        If (Str1.AsString > Str2.AsString) Then
          Raise Exception.Create(ERR_STR_NOT_ALLOWED);
      End;
  End;

  Procedure CheckIntegerRange(Const Str1, Str2: TField);
  Begin
    If (Str1.AsString <> '') And (Str2.AsString <> '') Then
      Begin
        If (Str1.AsInteger > Str2.AsInteger) Then
          Raise Exception.Create(ERR_STR_NOT_ALLOWED);
      End;
  End;

  Function ADODateOnlyStr(Const Dt: TDateTime): AnsiString;
  Begin
    // Access Code
    // Result := '#' + FormatDateTime('mm/dd/yyyy', Dt) + '#';

    // SQL Code
    result := chr(39) + FormatDateTime('mm/dd/yyyy', Dt) + chr(39);
  End;

  Function CheckListBoxHas(clb: TCheckListBox): Boolean;
  Var
    i: Integer;
  Begin
    result := false;
    For i  := 0 To (clb.Count - 1) Do
      Begin
        If (clb.Checked[i] = false) Then
          Begin
            result := true;
            exit;
          End;
      End;
  End;

  Function CheckListBoxIsChecked(clb: TCheckListBox; ID: Integer): Boolean;
  Var
    i: Integer;
  Begin
    result := false;
    For i  := 0 To (clb.Count - 1) Do
      Begin
        If (Integer(clb.Items.Objects[i]) = ID) Then
          Begin
            result := clb.Checked[i];
            exit;
          End;
      End;
  End;

  Procedure FillCheckListBox(clb: TCheckListBox; tbl: TADOTable; DescrFld, IDFld: TField);
  Var
    i: Integer;
  Begin
    clb.Clear;
    tbl.First;
    While (tbl.Eof = false) Do
      Begin
        i              := clb.Items.AddObject(DescrFld.AsString, TObject(IDFld.AsInteger));
        clb.Checked[i] := true;
        tbl.Next;
      End;
  End;

  Procedure ScanCheckListBox(clb: TCheckListBox; Mode: Boolean);
  Var
    i: Integer;
  Begin
    For i := 0 To (clb.Count - 1) Do
      Begin
        clb.Checked[i] := Mode;
      End;
  End;

  Procedure ResetStrClb(clb: TCheckListBox);
  var
    i: Integer;
  begin
    for i            := 0 to clb.Count - 1 do
      clb.Checked[i] := false;
  end;

  Procedure SetStrClb(clb: TCheckListBox);
  var
    i: Integer;
  begin
    for i            := 0 to clb.Count - 1 do
      clb.Checked[i] := true;
  end;

  Function FillInStrClb(clb: TCheckListBox): AnsiString;
  var
    i, x: Integer;
    c: AnsiString;
  begin
    result := '';
    x      := 0;
    for i  := 0 to clb.Count - 1 do
      begin
        if clb.Checked[i] then
          begin
            c := c + inttostr((Integer(clb.Items.Objects[i])));
            c := c + ',';
            inc(x);
          end
      end;
    if x = clb.Count then
      result := ''
    else
      begin
        SetLength(c, (length(c) - 1));
        result := c;
      end;
  end;

  Function WhereApoString(Const AStr, FldName: AnsiString; Const IsFirst: Boolean = false): AnsiString;
  Begin
    result := '';
    If (length(AStr) <> 0) Then
      Begin
        If (IsFirst = false) Then
          result := ' AND ';
        result   := result + ' ' + FldName + ' >= ' + QuotedStr(AStr);
      End;
  End;

  Function WhereEosString(Const AStr, FldName: AnsiString; Const IsFirst: Boolean = false): AnsiString;
  Begin
    result := '';
    If (length(AStr) <> 0) Then
      Begin
        If (IsFirst = false) Then
          result := ' AND ';
        result   := result + ' ' + FldName + ' <= ' + QuotedStr(AStr);
      End;
  End;

  Function WhereApoNumber(Const AStr, FldName: AnsiString; Const IsFirst: Boolean = false): AnsiString;
  Begin
    result := '';
    If (length(AStr) <> 0) Then
      Begin
        If (IsFirst = false) Then
          result := ' AND ';
        result   := result + ' ' + FldName + ' >= ' + AStr;
      End;
  End;

  Function WhereEosNumber(Const AStr, FldName: AnsiString; Const IsFirst: Boolean = false): AnsiString;
  Begin
    result := '';
    If (length(AStr) <> 0) Then
      Begin
        If (IsFirst = false) Then
          result := ' AND ';
        result   := result + ' ' + FldName + ' <= ' + AStr;
      End;
  End;

  Function WhereIn(Const Values: String; Const FldName: AnsiString; Const IsFirst: Boolean = false): AnsiString;
  begin
    result := '';
    If (length(Values) <> 0) Then
      Begin
        If (IsFirst = false) Then
          result := ' AND ';
        result   := result + ' ' + FldName + ' In (' + Values + ')';
      End;
  end;

  Function WhereEosBoolean(Const TrueFalse: Boolean; Const FldName: AnsiString; Const IsFirst: Boolean = false): AnsiString;
  Begin
    result := '';
    // If (Length(AStr) <> 0) Then Begin
    If (IsFirst = false) Then
      result := ' AND ';
    If TrueFalse = true then
      // Result := Result + ' ' + FldName + ' = ' + BoolToStr(True)
      result := result + ' ' + FldName + ' = 1'
    else
      // Result := Result + ' ' + FldName + ' = ' + BoolToStr(False);
      result := result + ' ' + FldName + ' = 0';
    // End;
  End;

  Function WhereApoDateOnly(Const Dt: TDateTime; Const FldName: AnsiString; Const IsFirst: Boolean = false): AnsiString;
  Begin
    result := '';
    If (Trunc(Dt) <> 0) Then
      Begin
        If (IsFirst = false) Then
          result := ' AND ';
        result   := result + ' ' + FldName + ' >= ' + ADODateOnlyStr(Dt);
      End;
  End;

  Function WhereEosDateOnly(Const Dt: TDateTime; Const FldName: AnsiString; Const IsFirst: Boolean = false): AnsiString;
  Begin
    result := '';
    If (Trunc(Dt) <> 0) Then
      Begin
        If (IsFirst = false) Then
          result := ' AND ';
        result   := result + ' ' + FldName + ' <= ' + ADODateOnlyStr(Dt);
      End;
  End;

  Function PercentOfAmount(Const Amount: Double; Const Percent: Double; Const Decimals: Integer): Double;
  Begin
    result := (Percent * Amount) / 100;
    result := DoubleRnd(result, Decimals);
  End;

  function FormDate(aowner: TComponent; var PDate: TDateTime; State: TCallState = csDateTime): Integer;
  var
    frm: TfrmCall;
  begin
    if PDate = 0 then
      PDate := Now;
    frm     := TfrmCall.CreateSpec(aowner, PDate, State);
    result  := frm.ShowModal;
    frm.Free;
  end;

  function FormDateTitle(aowner: TComponent; var PDate: TDateTime; Title: String; State: TCallState = csDateTime): Integer;
  var
    frm: TfrmCall;
  begin
    if PDate = 0 then
      PDate := Now;
    frm     := TfrmCall.CreateSpecTitle(aowner, PDate, Title, State);
    result  := frm.ShowModal;
    frm.Free;
  end;

  /// /////// 092013 -
  procedure OutputXMLdx(DataSet2Save: TDataSet);
  var
    SvD: TSaveDialog;
  begin
    DataSet2Save.DisableControls;
    try
      DoCursorPush(crSQLWait);
      SvD            := TSaveDialog.Create(Application);
      SvD.Filter     := 'XML files (*.xml)|*.XML';
      SvD.DefaultExt := '*.XML';
      if SvD.Execute then
        if DataSet2Save is TCustomADODataSet then
          TCustomADODataSet(DataSet2Save).SaveToFile(SvD.FileName);
    finally
      DataSet2Save.EnableControls;
      DoCursorPop;
      SvD.Free;
    end;
  end;

  procedure Output2XLSdx(FromGrid: TcxGridDBTableView);
  var
    x, i, y, DispFCnt: Integer;
    Sheet: Variant;
    XLApp: Variant;
    FldName: String;
    FieldsArr: Array [1 .. 100] of Integer;
  begin
    DoCursorPush(crSQLWait);
    FromGrid.DataController.DataSource.DataSet.DisableControls;
    FromGrid.DataController.DataSource.DataSet.First;
    XLApp := CreateOleObject('Excel.Application');
    // XLApp.Visible := True;
    XLApp.Visible := false;
    // XLApp.Workbooks.Add(xlWBatWorkSheet);
    XLApp.Workbooks.Add();
    XLApp.Workbooks[1].WorkSheets[1].Name := 'Delphi Data';
    Sheet                                 := XLApp.Workbooks[1].WorkSheets['Delphi Data'];

    y := FromGrid.ColumnCount - 1;

    DispFCnt := 0;

    for x := 0 to y do
      if FromGrid.Columns[x].Visible = true then
        begin
          DispFCnt            := DispFCnt + 1;
          FieldsArr[DispFCnt] := x;
        end;

    if DispFCnt = 0 then
      exit;

    i := 1;

    for x := 1 to DispFCnt do
      begin
        y                 := FieldsArr[x];
        FldName           := FromGrid.Columns[y].DataBinding.FieldName;
        Sheet.Cells[1, x] := FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).DisplayLabel;
        // sheet.cells[1,x].interior.colorindex := 6;
        Sheet.Cells[1, x].font.Name := 'Arial';
        // sheet.cells[1,x].font.FontStyle := 'Έντονα';
        Sheet.Cells[1, x].font.FontStyle     := 'Bold';
        Sheet.Cells[1, x].font.Size          := 12;
        Sheet.Cells[1, x].font.Strikethrough := false;
        Sheet.Cells[1, x].font.Superscript   := false;
        Sheet.Cells[1, x].font.Subscript     := false;
        Sheet.Cells[1, x].font.OutlineFont   := false;
        Sheet.Cells[1, x].font.Shadow        := false;
        Sheet.Cells[1, x].font.Underline     := false;
        // sheet.cells[1,x].font.ColorIndex := xlAutomatic;
      end;

    i := 2;

    try
      repeat
        for x := 1 to DispFCnt do
          begin
            y       := FieldsArr[x];
            FldName := FromGrid.Columns[y].DataBinding.FieldName;
            if FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).ClassType = TBCDField then
              begin
                Sheet.Cells[i, x].NumberFormat := '#.##0,00 €';
                Sheet.Cells[i, x]              := FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).AsFloat;
              end
            else if FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).ClassType = TFloatField then
              begin
                Sheet.Cells[i, x].NumberFormat := '###.###.##0,00';
                Sheet.Cells[i, x]              := FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).AsFloat;
              end
            else if FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).ClassType = TIntegerField then
              begin
                Sheet.Cells[i, x] := FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).AsLargeInt;
              end
            else if FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).ClassType = TDateTimeField then
              begin
                Sheet.Cells[i, x] := FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).AsDateTime;
              end
            else
              Sheet.Cells[i, x] := chr(39) + FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).AsString;
          end;
        i := i + 1;
        FromGrid.DataController.DataSource.DataSet.Next;
      until FromGrid.DataController.DataSource.DataSet.Eof finally FromGrid.DataController.DataSource.DataSet.EnableControls;
    end;
    DoCursorPop;

    MessageDlg('Export Done.', mtWarning, [mbOK], 0);

    XLApp.Visible := true;
  end;

  procedure Output2XLSDBG(FromGrid: TDBGrid);
  var
    x, i, y, DispFCnt: Integer;
    Sheet: Variant;
    XLApp: Variant;
    FldName: String;
    FieldsArr: Array [1 .. 100] of Integer;
  begin
    DoCursorPush(crSQLWait);
    FromGrid.DataSource.DataSet.DisableControls;
    FromGrid.DataSource.DataSet.First;
    XLApp := CreateOleObject('Excel.Application');
    // XLApp.Visible := True;
    XLApp.Visible := false;
    // XLApp.Workbooks.Add(xlWBatWorkSheet);
    XLApp.Workbooks.Add();
    XLApp.Workbooks[1].WorkSheets[1].Name := 'Delphi Data';
    Sheet                                 := XLApp.Workbooks[1].WorkSheets['Delphi Data'];

    y := FromGrid.Columns.Count - 1;

    DispFCnt := 0;

    for x := 0 to y do
      if FromGrid.Columns[x].Visible = true then
        begin
          DispFCnt            := DispFCnt + 1;
          FieldsArr[DispFCnt] := x;
        end;

    if DispFCnt = 0 then
      exit;

    i := 1;

    for x := 1 to DispFCnt do
      begin
        y                 := FieldsArr[x];
        FldName           := FromGrid.Columns[y].FieldName;
        Sheet.Cells[1, x] := FromGrid.DataSource.DataSet.FieldByName(FldName).DisplayLabel;
        // sheet.cells[1,x].interior.colorindex := 6;
        Sheet.Cells[1, x].font.Name := 'Arial';
        // sheet.cells[1,x].font.FontStyle := 'Έντονα';
        Sheet.Cells[1, x].font.FontStyle     := 'Bold';
        Sheet.Cells[1, x].font.Size          := 12;
        Sheet.Cells[1, x].font.Strikethrough := false;
        Sheet.Cells[1, x].font.Superscript   := false;
        Sheet.Cells[1, x].font.Subscript     := false;
        Sheet.Cells[1, x].font.OutlineFont   := false;
        Sheet.Cells[1, x].font.Shadow        := false;
        Sheet.Cells[1, x].font.Underline     := false;
        // sheet.cells[1,x].font.ColorIndex := xlAutomatic;
      end;

    i := 2;

    try
      repeat
        for x := 1 to DispFCnt do
          begin
            y       := FieldsArr[x];
            FldName := FromGrid.Columns[y].FieldName;
            if FromGrid.DataSource.DataSet.FieldByName(FldName).ClassType = TBCDField then
              begin
                Sheet.Cells[i, x].NumberFormat := '#.##0,00 €';
                Sheet.Cells[i, x]              := FromGrid.DataSource.DataSet.FieldByName(FldName).AsFloat;
              end
            else if FromGrid.DataSource.DataSet.FieldByName(FldName).ClassType = TFloatField then
              begin
                Sheet.Cells[i, x].NumberFormat := '###.###.##0,00';
                Sheet.Cells[i, x]              := FromGrid.DataSource.DataSet.FieldByName(FldName).AsFloat;
              end
            else if FromGrid.DataSource.DataSet.FieldByName(FldName).ClassType = TIntegerField then
              begin
                Sheet.Cells[i, x] := FromGrid.DataSource.DataSet.FieldByName(FldName).AsInteger;
              end
            else if FromGrid.DataSource.DataSet.FieldByName(FldName).ClassType = TDateTimeField then
              begin
                Sheet.Cells[i, x] := FromGrid.DataSource.DataSet.FieldByName(FldName).AsDateTime;
              end
            else
              Sheet.Cells[i, x] := chr(39) + FromGrid.DataSource.DataSet.FieldByName(FldName).AsString;
          end;
        i := i + 1;
        FromGrid.DataSource.DataSet.Next;
      until FromGrid.DataSource.DataSet.Eof finally FromGrid.DataSource.DataSet.EnableControls;
    end;
    DoCursorPop;

    MessageDlg('Export Done.', mtWarning, [mbOK], 0);

    XLApp.Visible := true;
  end;

  function GetFileVersion0(FileName: string = ''; const Fmt: string = '%d.%d.%d.%d'): string;
  var
    iBufferSize: DWORD;
    iDummy: DWORD;
    pBuffer: Pointer;
    pFileInfo: Pointer;
    iVer: array [1 .. 4] of Word;
  begin
    // set default value
    // !!!
    // if filename = '' then
    // FileName := Application.ExeName;
    result := '';
    // get size of version info (0 if no version info exists)
    iBufferSize := GetFileVersionInfoSize(PChar(FileName), iDummy);
    if (iBufferSize > 0) then
      begin
        Getmem(pBuffer, iBufferSize);
        try
          // get fixed file info
          GetFileVersionInfo(PChar(FileName), 0, iBufferSize, pBuffer);
          VerQueryValue(pBuffer, '\', pFileInfo, iDummy);
          // read version blocks
          iVer[1] := HiWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionMS);
          iVer[2] := LoWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionMS);
          iVer[3] := HiWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionLS);
          iVer[4] := LoWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionLS);
        finally
          Freemem(pBuffer);
        end;
        // format result string
        result := Format(Fmt, [iVer[1], iVer[2], iVer[3], iVer[4]]);
      end;
  end;

  function DateToStrNum(Dt: TDateTime): string;
  var
    y, M, D, hh, mm, ss, ms: Word;
  begin
    Decodedate(Dt, y, M, D);
    DecodeTime(Dt, hh, mm, ss, ms);
    result := Format('%2.2d_%2.2d_%2.2d_%2.2d_%2.2d_%2.2d_%3.3d', [y, M, D, hh, mm, ss, ms])
  end;

  procedure DMCreate(SenderForm: TForm; OpenLater: String = ''; UpdateFields: Boolean = false; UpdateToFields: Boolean = false);
  var
    x, x1, x2, x3, x4: Integer;
    xx: TADOTable;
    xf: TField;
    ExSl: TStringList;
    LaterOpenSl: TStringList;
  begin
    LaterOpenSl := TStringList.Create();
    if OpenLater > '' then
      LaterOpenSl.CommaText:=OpenLater;
    LaterOpenSl.Sort;

    for x := 0 to SenderForm.ComponentCount - 1 do
      begin
        if ((SenderForm.Components[x] is TCustomADODataSet) and (TCustomADODataSet(SenderForm.Components[x]).Tag < 9000)) then
          with SenderForm.Components[x] as TCustomADODataSet do
            begin
              if LaterOpenSl.Find(TCustomADODataSet(SenderForm.Components[x]).Name, x2) then
                begin
                  Active := false
                end
              else
                begin
                  Active := true;
                end;
            end;
      end;
  end;

  procedure DMCreateSlow(SenderForm: TForm; OpenLater: String = ''; UpdateFields: Boolean = false; UpdateToFields: Boolean = false);
  var
    x, x1, x2, x3, x4: Integer;
    xx: TADOTable;
    xf: TField;
    ExSl: TStringList;
    LaterOpenSl: TStringList;
  begin
    ExSl := TStringList.Create();
    ExSl.Add('InsUsr');
    ExSl.Add('InsDT');
    ExSl.Add('UpdUsr');
    ExSl.Add('UpdDT');
    ExSl.Add('DelUsr');
    ExSl.Add('DelDt');
    ExSl.Add('InActiveUsr');
    ExSl.Add('InActiveDT');
    ExSl.Sort;

    LaterOpenSl := TStringList.Create();
    if OpenLater > '' then
      LaterOpenSl.Add(OpenLater);
    LaterOpenSl.Sort;

    for x := 0 to SenderForm.ComponentCount - 1 do
      begin
        // if SenderForm.Components[x] is TAdoTable then
        if SenderForm.Components[x] is TCustomADODataSet then
          begin
            if UpdateFields then
              begin
                DMMain.UpdToTableFields(TDataSet(SenderForm.Components[x]));
              end;
            if UpdateToFields then
              begin
                DMMain.UpdFromTableFields(TDataSet(SenderForm.Components[x]));
              end;
          end;

        if ((SenderForm.Components[x] is TCustomADODataSet) and (TCustomADODataSet(SenderForm.Components[x]).Tag < 9000)) then
          with SenderForm.Components[x] as TCustomADODataSet do
            begin
              if LaterOpenSl.Find(TCustomADODataSet(SenderForm.Components[x]).Name, x2) then
                begin
                  Active := false
                end
              else
                begin
                  Active                              := true;
                  try
                  Properties['Update Criteria'].Value := adCriteriaKey;
                  except
                  MessageDlg('', mtCustom, [mbOK], 0);
                  end;

                end;
              // !!!  Row cannot be located for updating
              /// or refresh after post etc. + ADOInt

              for x1 := 0 to FieldCount - 1 do
                begin
                  if ExSl.Find(Fields[x1].FieldName, x2) then
                    Fields[x1].Visible := false
                  else
                    Fields[x1].Visible := true;
                end;
            end;

        // Old outdated
        { if SenderForm.Components[x] is TAdoQuery then
          begin
          DMMain.UpdToTableFields(TDataSet(SenderForm.Components[x]));
          DMMain.UpdFromTableFields(TDataSet(SenderForm.Components[x]));
          end;

          if SenderForm.Components[x] is TADOQuery then
          with SenderForm.Components[x] as TAdoQuery do
          begin
          Active := True;
          for x1 := 0 to FieldCount -1 do
          begin
          if ExSl.Find(Fields[x1].FieldName,x2) then
          Fields[x1].Visible := False;
          end;
          end; }
      end;
  end;

  procedure GenDeletePostWithNameN(DataSet: TDataSet);
  begin
    if Not(DataSet.State in [dsEdit]) then
      DataSet.Edit;

    if DataSet.State = dsEdit then
      begin
        try
          DataSet.FindField('Deleted').Value := true;
        except
          //
        end;
        try
          DataSet.FindField('DelUsr').Value := LoginId;
        except
          //
        end;
        try
          DataSet.FieldByName('DelDt').Value := Now();
        except
          //
        end;
        DataSet.Post;
      end;
  end;

  procedure GenInActivePostWithNameN(DataSet: TDataSet);
  begin
    if Not(DataSet.State in [dsEdit]) then
      DataSet.Edit;

    if DataSet.State = dsEdit then
      begin
        try
          DataSet.FindField('InActive').Value := true;
        except
          //
        end;
        try
          DataSet.FindField('InActiveUsr').Value := LoginId;
        except
          //
        end;
        try
          DataSet.FieldByName('InActiveDt').Value := Now();
        except
          //
        end;
        DataSet.Post;
      end;
  end;

  procedure GenTestPostWithNameN(DataSet: TDataSet);
  begin
    if Not(DataSet.State in [dsEdit]) then
      DataSet.Edit;

    if DataSet.State = dsEdit then
      begin
        try
          DataSet.FindField('IsTest').Value := true;
        except
          //
        end;
        try
          DataSet.FindField('TstUsr').Value := LoginId;
        except
          //
        end;
        try
          DataSet.FieldByName('TstDt').Value := Now();
        except
          //
        end;
        DataSet.Post;
      end;
  end;

  procedure ExecMethod(OnObject: TObject; MethodName: string);
  type
    TExec = procedure of object;
  var
    Routine: TMethod;
    Exec: TExec;
  begin
    Routine.Data := Pointer(OnObject);
    Routine.Code := OnObject.MethodAddress(MethodName);
    if NOT Assigned(Routine.Code) then
      exit;
    Exec := TExec(Routine);
    Exec;
  end;

  procedure ExecMethodStrParam(OnObject: TObject; MethodName: string; Param: string);
  type
    TExec = procedure(Param0: String) of object;
  var
    Routine: TMethod;
    Exec: TExec;
  begin
    Routine.Data := Pointer(OnObject);
    Routine.Code := OnObject.MethodAddress(MethodName);
    if NOT Assigned(Routine.Code) then
      exit;
    Exec := TExec(Routine);
    Exec(Param);
  end;

  function ReturnFullIdNo(Number: Integer): String;
  var
    c, c1, c2, c3, c4: String;
  begin
    c      := '140528' + Format('%.9d', [Number]) + inttostr((CheckDigitVisa('140528' + Format('%.9d', [Number]))));
    c1     := Copy(c, 1, 4);
    c2     := Copy(c, 5, 4);
    c3     := Copy(c, 9, 4);
    c4     := Copy(c, 13, 4);
    result := Format('%s-%s-%s-%s', [c1, c2, c3, c4]);
  end;

  function ReturnFullIdNoUnfor(Number: Integer): String;
  var
    c: String;
  begin
    result := '140528' + Format('%.9d', [Number]) + inttostr((CheckDigitVisa('140528' + Format('%.9d', [Number]))));
  end;

  Function ReturnPass(CardNumber: String): String;
  var
    i: int64;
    c: String;
  begin
    i := 1;
    i := i * ((ord(CardNumber[11])));
    // Error Mellon 28062005
    // i:=i*((Ord(CardNumber[13])));
    i := i * ((ord(CardNumber[14])));
    i := i * ((ord(CardNumber[17])));
    i := i * ((ord(CardNumber[18])));
    c := (inttostr(i));
    if length(c) < 8 then
      repeat
        c := '0' + c;
      until Not(length(c) < 8);
    ReturnPass := c[1] + c[3] + c[5] + c[7];
  end;

  Function ReturnPukk(CardNumber: String): String;
  var
    i: int64;
    c: String;
  begin
    i := 1;
    i := i * ((ord(CardNumber[11])));
    i := i * ((ord(CardNumber[13])));
    i := i * ((ord(CardNumber[17])));
    i := i * ((ord(CardNumber[18])));
    c := (inttostr(i));
    if length(c) < 8 then
      repeat
        c := '0' + c;
      until Not(length(c) < 8);
    ReturnPukk := c[2] + c[4] + c[6] + c[8];
  end;

  function ReturnCardCode(CardNo: String): Integer;
  var
    s: String;
  begin
    if length(CardNo) > 16 then
      s := Copy(CardNo, 8, 10)
    else
      s            := Copy(CardNo, 7, 9);
    s              := AnsiReplaceText(s, '-', '');
    ReturnCardCode := strtoint(s);
  end;

  function ReturnCardCodeFromFullNo(Number: String): Integer;
  var
    x: Integer;
    s1, s2: String;
  begin
    if length(Number) = 19 then
      begin
        Delete(Number, 19, 1);
        Delete(Number, 15, 1);
        Delete(Number, 10, 1);
        Delete(Number, 1, 7);
        result := strtoint(Number);
        exit;
      end;
    if length(Number) = 16 then
      begin
        Delete(Number, 1, 6);
        Delete(Number, 10, 1);
        result := strtoint(Number);
      end
    else if length(Number) = 15 then
      begin
        Delete(Number, 1, 6);
        result := strtoint(Number);
      end
    else
      begin
        result := strtoint(Number);
      end;
  end;

  function ReturnCardIdFromFullNo(Number: String): Integer;
  var
    x: Integer;
    s1, s2: String;
  begin
    x                          := ReturnCardCodeFromFullNo(Number);
    DMMain.qFromCode2Id.Active := false;
    DMMain.qFromCode2Id.Parameters.ParamByName('PAcardCode').Value := x;
    DMMain.qFromCode2Id.Active := true;
    result                     := DMMain.qFromCode2IdAcardId.AsInteger;
    DMMain.qFromCode2Id.Active := false;
  end;

  function CheckDigitVisa(Card: String): Integer;
  var
    i, x, y, z, f: Integer;
    c: Char;
  begin
    x := 0;
    i := 1;
    repeat
      c := Card[i];
      z := ord(c);
      y := ((ord(Card[i]) - 48) * 2);
      if y > 9 then
        y := (y mod 10) + 1;
      x   := x + y;
      i   := i + 2;
    until i > 15;

    i := 2;
    repeat
      y := (ord(Card[i]) - 48);
      x := x + y;
      i := i + 2;
    until i > 14;

    f := (10 - (x mod 10));

    if f = 10 then
      CheckDigitVisa := 0
    else
      CheckDigitVisa := f;

  end;

  function FillInClbList(clb: TCheckListBox; FieldName: String): AnsiString;
  var
    i, x: Integer;
    c: AnsiString;
  begin
    result := '';
    x      := 0;
    for i  := 0 to clb.Count - 1 do
      begin
        if clb.Checked[i] then
          begin
            c := c + '([' + FieldName + ']=' + inttostr((Integer(clb.Items.Objects[i]))) + ')';
            // c:=c+FieldName+'='+inttostr((Integer(clb.Items.Objects[i])))+' ';
            c := c + ' OR ';
            inc(x);
          end
      end;
    if x = clb.Count then
      result := ''
    else
      begin
        SetLength(c, (length(c) - 4));
        result := c;
      end;
  end;

  function FillInClbListBrac(clb: TCheckListBox; FieldName: String): AnsiString;
  var
    i, x: Integer;
    c: AnsiString;
  begin
    result := '[' + FieldName + '] IN (';
    x      := 0;
    for i  := 0 to clb.Count - 1 do
      begin
        if clb.Checked[i] then
          begin
            if x > 0 then
              c := c + ',';
            c   := c + inttostr((Integer(clb.Items.Objects[i])));
            inc(x);
          end
      end;
    if x = clb.Count then
      result := ''
    else
      begin
        c := result + c + ')';
        // SetLength(c,(Length(c)-4));
        result := c;
      end;
  end;

  procedure EnhmClb(LeoCb: TCheckListBox; OnOff: Boolean);
  var
    x: Integer;
  begin
    for x              := 0 to LeoCb.Items.Count - 1 do
      LeoCb.Checked[x] := OnOff;
  end;

  Procedure FillCheckListBoxName(clb: TCheckListBox; tbl: TDataSet; DescrFldName, IDFldName: String);
  Var
    i: Integer;
  Begin
    clb.Clear;
    tbl.First;
    While (tbl.Eof = false) Do
      Begin
        i              := clb.Items.AddObject(tbl.FieldByName(DescrFldName).AsString, TObject(tbl.FieldByName(IDFldName).AsInteger));
        clb.Checked[i] := true;
        tbl.Next;
      End;
  End;

  // !!!

  Procedure DoCursorPop;
  Var
    i: Integer;
  begin
    If (Assigned(frmMain.ApplCursorList) = true) Then
      Begin
        i := frmMain.ApplCursorList.Count - 1;
        If (i >= 0) Then
          Begin
            Screen.Cursor := TCursor(frmMain.ApplCursorList.Items[i]);
            frmMain.ApplCursorList.Delete(i);
          End;
      End;
  end;

  Procedure DoCursorPush(NewCursor: TCursor = crSQLWait);
  begin
    If (Assigned(frmMain.ApplCursorList) = true) Then
      Begin
        frmMain.ApplCursorList.Add(Pointer(Screen.Cursor));
        Screen.Cursor := NewCursor;
      end;
  end;

  function GetIniPath(PathName: string): String;
  var
    LeoImpDir: String;
  begin
    LeoImpDir := ReadApplicationIni(INI_ADO_SECTION, PathName);
    if LeoImpDir > '' then
      result := LeoImpDir
    else
      result := ExtractFilePath(Application.ExeName);
  end;

  function ReadApplicationIni(Section: String; DetailLine: String): String;
  Var
    a, b: AnsiString;
    f: TIniFile;
  Begin
    a      := ChangeFileExt(Application.ExeName, '.INI');
    f      := TIniFile.Create(a);
    result := f.ReadString(Section, DetailLine, '');
    f.Free;
  end;

  procedure MsgDlg(Text: string);
  begin
    // if Globals.LoginID = 0 then
    // MessageDlg(Text, mtWarning, [mbOK], 0);
  end;

  function ClearSpaces(InStr: String): string;
  var
    x, y: Integer;
  begin
    y       := length(InStr);
    for x   := 0 to y do
      InStr := StringReplace(InStr, '  ', ' ', []);
    result  := InStr;
  end;

  // General Functions for F4 F5

  procedure cxDbLCParamClick(Sender: TObject);
  var
    PopField: String;
    PopDBLC: TcxDBLookupComboBox;
    frm: TfrmFilterEn;
    TmpSql: string;
  begin
    PopDBLC := TcxDBLookupComboBox(Sender);
    if Assigned(PopDBLC.Properties.ListField) then
      begin
        PopField := PopDBLC.Properties.ListField.Name;
        frm      := TfrmFilterEn.CreateWithParamDSet(Application, PopDBLC.Properties.ListSource.DataSet, TDMBase(Sender));
        // frm:=TfrmFilterEn.CreateWithParamDSet(Application,PopDBLC.Properties.ListSource.DataSet ,TDMBase(self));
        if frm.ShowModal = mrOk then
          TmpSql := frm.KSleo
        else
          TmpSql := '';
        frm.Free;
        PopDBLC.Properties.ListSource.DataSet.Active := false;
        // DM.qryBrowser.SQL.Text:= DM.BrowseSqlInit.Text;
        if TmpSql > '' then
          begin
            TAdoQuery(PopDBLC.Properties.ListSource.DataSet).Filtered := false;
            TAdoQuery(PopDBLC.Properties.ListSource.DataSet).Filter := TmpSql;
            TAdoQuery(PopDBLC.Properties.ListSource.DataSet).Filtered := true;
            // TAdoQuery(PopDBLC.Properties.ListSource.DataSet).SQL.Add(' Where  ' + TmpSql);
          end
        else
          begin
            TAdoQuery(PopDBLC.Properties.ListSource.DataSet).Filtered := false;
          end;

        PopDBLC.Properties.ListSource.DataSet.Active := true;
        TcxDBLookupComboBox(Sender).Properties.ListSource.DataSet.Active := false;
        TcxDBLookupComboBox(Sender).Properties.ListSource.DataSet.Active := true;
      end;
  end;

  procedure cxDbLCDblClick(Sender: TObject);
  var
    PopField: String;
    PopDBLC: TcxDBLookupComboBox;
  begin
    if Sender is TcxDBLookupComboBox then
      begin
        PopDBLC := TcxDBLookupComboBox(Sender);
        if Assigned(PopDBLC.Properties.ListField) then
          begin
            PopField := PopDBLC.Properties.ListField.Name;
            // MessageDlg(PopDBLC.Properties.KeyFieldNames, mtWarning, [mbOK], 0);
            // MessageDlg(PopDBLC.Properties.ListSource.DataSet.FieldByName(PopDBLC.Properties.KeyFieldNames).Value, mtWarning, [mbOK], 0);

            // !!! Strict reference to frmMain
            try
              PopDBLC.DataBinding.DataSource.DataSet.Post;
              PopDBLC.DataBinding.DataSource.DataSet.Edit;
              frmMain.actSubParamNoWrapPopupExecute(PopField, PopDBLC.Properties.KeyFieldNames, '',
                PopDBLC.DataBinding.DataSource.DataSet.FieldByName(PopDBLC.DataBinding.DataField).Value);
              // PopDBLC.Properties.ListSource.DataSet.FieldByName(PopDBLC.Properties.KeyFieldNames).Value);
            finally
              TcxDBLookupComboBox(Sender).Properties.ListSource.DataSet.Active := false;
              TcxDBLookupComboBox(Sender).Properties.ListSource.DataSet.Active := true;
            end;
          end;
      end;
  end;

  procedure cblcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  begin
    if Key = VK_F4 then
      if Sender is TcxDBLookupComboBox then
        cxDbLCParamClick(Sender);
    if Key = VK_F5 then
      if Sender is TcxDBLookupComboBox then
        cxDbLCDblClick(Sender);
  end;

  function GetLabelPrinterIndex(Name: String): Integer;
  var
    i: Integer;
    s: TPrinter;
  begin
    result := -1;
    // s:= TPrinter.Create;
    for i := 0 to Printer.Printers.Count - 1 do
      begin
        Printer.PrinterIndex := i;
        MsgDlg(Printer.Printers[i]);
        if Printer.Orientation = poPortrait then
          MsgDlg('poPortrait')
        else
          MsgDlg('poLandscape');
        MsgDlg(inttostr(Printer.PrinterIndex));
        MsgDlg(inttostr(Printer.Copies));
        MsgDlg(inttostr(Printer.PageWidth));
        MsgDlg(inttostr(Printer.PageHeight));
        // MsgDlg(IntToStr(GetDeviceCaps(Printer.Canvas.Handle, NUMCOLORS)));
        PrinterColor(i);
        if AnsiContainsText(Printer.Printers[i], Name) then
          result := i;
      end;
  end;

  procedure PrinterColor(PrnIndex: Integer = -1);
  var
    Dev, Drv, Prt: array [0 .. 255] of Char;
    DM1: PDeviceMode;
    DM2: PDeviceMode;
    Sz: Integer;
    DevM: THandle;
  begin
    Printer.PrinterIndex := PrnIndex;
    Printer.GetPrinter(Dev, Drv, Prt, DevM);
    DM1 := nil;
    DM2 := nil;
    Sz  := DocumentProperties(0, 0, Dev, DM1^, DM2^, 0);
    Getmem(DM1, Sz);
    DocumentProperties(0, 0, Dev, DM1^, DM2^, DM_OUT_BUFFER);
    if DM1^.dmColor > 1 then
      MsgDlg(Dev + ': Color')
    else
      MsgDlg(Dev + ': Black and White');
    if DM1^.dmFields and DM_Color <> 0 then
      MsgDlg('Printer supports color printing')
    else
      MsgDlg('Printer does not support color printing');
    Freemem(DM1);
  end;

  procedure LoadImageNoDlg(Form: TrptBaseAvinCard);
  begin
    if Form is TrptBaseAvinCard then
      try
        TrptBaseAvinCard(Form).QRACardLogo.Picture  := frmMain.Image2.Picture;
        TrptBaseAvinCard(Form).QRACardLogo1.Picture := frmMain.Image2.Picture;
      except
      end;
  end;

  /// /////////////////////////////////////////////////////////////
  /// Excel write without OLE
  const
    CXlsBof: array [0 .. 5] of Word = ($809, 8, 00, $10, 0, 0);
    CXlsEof: array [0 .. 1] of Word = ($0A, 00);
    CXlsLabel: array [0 .. 5] of Word = ($204, 0, 0, 0, 0, 0);
    CXlsNumber: array [0 .. 4] of Word = ($203, 14, 0, 0, 0);
    CXlsRk: array [0 .. 4] of Word = ($27E, 10, 0, 0, 0);

  procedure XlsBeginStream(XlsStream: TStream; const BuildNumber: Word);
  begin
    CXlsBof[4] := BuildNumber;
    XlsStream.WriteBuffer(CXlsBof, SizeOf(CXlsBof));
  end;

  procedure XlsEndStream(XlsStream: TStream);
  begin
    XlsStream.WriteBuffer(CXlsEof, SizeOf(CXlsEof));
  end;

  procedure XlsWriteCellRk(XlsStream: TStream; const ACol, ARow: Word; const AValue: Integer);
  var
    V: Integer;
  begin
    CXlsRk[2] := ARow;
    CXlsRk[3] := ACol;
    XlsStream.WriteBuffer(CXlsRk, SizeOf(CXlsRk));
    V := (AValue shl 2) or 2;
    XlsStream.WriteBuffer(V, 4);
  end;

  procedure XlsWriteCellNumber(XlsStream: TStream; const ACol, ARow: Word; const AValue: Double);
  begin
    CXlsNumber[2] := ARow;
    CXlsNumber[3] := ACol;
    XlsStream.WriteBuffer(CXlsNumber, SizeOf(CXlsNumber));
    XlsStream.WriteBuffer(AValue, 8);
  end;

  procedure XlsWriteCellLabel(XlsStream: TStream; const ACol, ARow: Word; const AValue: string);
  var
    L: Word;
  begin
    L            := length(AValue);
    CXlsLabel[1] := 8 + L;
    CXlsLabel[2] := ARow;
    CXlsLabel[3] := ACol;
    CXlsLabel[5] := L;
    XlsStream.WriteBuffer(CXlsLabel, SizeOf(CXlsLabel));
    XlsStream.WriteBuffer(Pointer(AValue)^, L);
  end;

  /// Excel write without OLE
  /// /////////////////////////////////////////////////////////////



  // procedure TForm1.Button1Click(Sender: TObject);
  // var
  // FStream: TFileStream;
  // I, J: Integer;
  // begin
  // FStream := TFileStream.Create('J:\e.xls', fmCreate);
  // try
  // XlsBeginStream(FStream, 0);
  // for I := 0 to 99 do
  // for J := 0 to 99 do
  // begin
  // XlsWriteCellNumber(FStream, I, J, 34.34);
  // // XlsWriteCellRk(FStream, I, J, 3434);
  // // XlsWriteCellLabel(FStream, I, J, Format('Cell: %d,%d', [I, J]));
  // end;
  // XlsEndStream(FStream);
  // finally
  // FStream.Free;
  // end;
  // end;
  //

  /// Excel write without OLE
  /// /////////////////////////////////////////////////////////////
  ///
  ///
  procedure UpdTostBrowse(stBrowseName: String; DataSet: TCustomADODataSet);
  begin
    DMMain.UpdTostBrowse(stBrowseName, DataSet);
  end;

  procedure UpdFromstBrowse(stBrowseName: String; DataSet: TCustomADODataSet);
  begin
    DMMain.UpdFromstBrowse(stBrowseName, DataSet);
  end;

  procedure SendFaxGen(FaxNo, PelaName: string);
  var
    Sleo: TStringList;
    x, xx: Integer;
    FaxAd: String;
    FaxAdList: TStringList;
    TempStream: TFileStream;
    NewMessage: IRwMapiMailMessage;
    nslx: TStringList;
    RwMapSes: TRwMapiSession;
  begin

    RwMapSes := TRwMapiSession.Create(Application);
    try
      NewMessage         := RwMapSes.CreateMessage(ftDraft) as IRwMapiMailMessage;
      FaxAd              := '[fax:' + Trim(PelaName) + '@' + Trim(FaxNo) + ']';
      NewMessage.RecipTo := FaxAd;
      NewMessage.SubmitMessage(astMoveToSentItems);
    finally
      RwMapSes.Free;
    end;
  end;

  procedure SendMailGen(MailNo, PelaName: string);
  var
    Sleo: TStringList;
    x, xx: Integer;
    FaxAd: String;
    FaxAdList: TStringList;
    TempStream: TFileStream;
    NewMessage: IRwMapiMailMessage;
    nslx: TStringList;
    RwMapSes: TRwMapiSession;
  begin

    RwMapSes := TRwMapiSession.Create(Application);
    try
      NewMessage         := RwMapSes.CreateMessage(ftDraft) as IRwMapiMailMessage;
      FaxAd              := Trim(MailNo);
      NewMessage.RecipTo := FaxAd;
      NewMessage.SubmitMessage(astMoveToSentItems);
    finally
      RwMapSes.Free;
    end;
  end;

  procedure Output2XLSFiledx(FromGrid: TcxGridDBTableView; FileName: String);
  var
    x, i, y, DispFCnt: Integer;
    Sheet: Variant;
    XLApp: Variant;
    FldName: String;
    FieldsArr: Array [1 .. 100] of Integer;
  begin
    DoCursorPush(crSQLWait);
    FromGrid.DataController.DataSource.DataSet.DisableControls;
    FromGrid.DataController.DataSource.DataSet.First;
    XLApp := CreateOleObject('Excel.Application');
    // XLApp.Visible := True;
    XLApp.Visible := false;
    // XLApp.Workbooks.Add(xlWBatWorkSheet);
    XLApp.Workbooks.Add();
    XLApp.Workbooks[1].WorkSheets[1].Name := 'Delphi Data';
    Sheet                                 := XLApp.Workbooks[1].WorkSheets['Delphi Data'];

    y := FromGrid.ColumnCount - 1;

    DispFCnt := 0;

    for x := 0 to y do
      if FromGrid.Columns[x].Visible = true then
        begin
          DispFCnt            := DispFCnt + 1;
          FieldsArr[DispFCnt] := x;
        end;

    if DispFCnt = 0 then
      exit;

    i := 1;

    for x := 1 to DispFCnt do
      begin
        y                 := FieldsArr[x];
        FldName           := FromGrid.Columns[y].DataBinding.FieldName;
        Sheet.Cells[1, x] := FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).DisplayLabel;
        // sheet.cells[1,x].interior.colorindex := 6;
        Sheet.Cells[1, x].font.Name := 'Arial';
        // sheet.cells[1,x].font.FontStyle := 'Έντονα';
        Sheet.Cells[1, x].font.FontStyle     := 'Bold';
        Sheet.Cells[1, x].font.Size          := 12;
        Sheet.Cells[1, x].font.Strikethrough := false;
        Sheet.Cells[1, x].font.Superscript   := false;
        Sheet.Cells[1, x].font.Subscript     := false;
        Sheet.Cells[1, x].font.OutlineFont   := false;
        Sheet.Cells[1, x].font.Shadow        := false;
        Sheet.Cells[1, x].font.Underline     := false;
        // sheet.cells[1,x].font.ColorIndex := xlAutomatic;
      end;

    i := 2;

    try
      repeat
        for x := 1 to DispFCnt do
          begin
            y       := FieldsArr[x];
            FldName := FromGrid.Columns[y].DataBinding.FieldName;
            if FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).ClassType = TBCDField then
              begin
                Sheet.Cells[i, x].NumberFormat := '#.##0,00 €';
                Sheet.Cells[i, x]              := FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).AsFloat;
              end
            else if FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).ClassType = TFloatField then
              begin
                Sheet.Cells[i, x].NumberFormat := '###.###.##0,00';
                Sheet.Cells[i, x]              := FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).AsFloat;
              end
            else if FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).ClassType = TIntegerField then
              begin
                Sheet.Cells[i, x] := FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).AsInteger;
              end
            else if FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).ClassType = TDateTimeField then
              begin
                Sheet.Cells[i, x] := FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).AsDateTime;
              end
            else
              Sheet.Cells[i, x] := FromGrid.DataController.DataSource.DataSet.FieldByName(FldName).AsString;
          end;
        i := i + 1;
        FromGrid.DataController.DataSource.DataSet.Next;
        Application.ProcessMessages;
      until FromGrid.DataController.DataSource.DataSet.Eof finally FromGrid.DataController.DataSource.DataSet.EnableControls;
    end;
    DoCursorPop;
    try
      try
        XLApp.Workbooks[1].SaveAs(FileName, 56);
        XLApp.Workbooks[1].Save;
      except
        XLApp.Workbooks[1].SaveAs(FileName);
        XLApp.Workbooks[1].Save;
      end;
    finally
      XLApp.quit;
    end;

    MessageDlg('Export Done to file ' + FileName, mtWarning, [mbOK], 0);


    // XLApp.Workbooks[1].SaveAs('Leonidas.txt');
    // ActiveWorkbook.SaveAs Filename:= _
    // "C:\Documents and Settings\Leonidas\Desktop\Book1.xls", FileFormat:=xlNormal _
    // , Password:="", WriteResPassword:="", ReadOnlyRecommended:=False, _
    // CreateBackup:=False

    // XLApp.Visible := True;
  end;

function GetMac:String;
var
  NumInterfaces: Cardinal;
  AdapterInfo: array of TIpAdapterInfo;
  OutBufLen: ULONG;
  Tmo:string;
  i: integer;
begin
  GetNumberOfInterfaces(NumInterfaces);
  SetLength(AdapterInfo, NumInterfaces);
  OutBufLen := NumInterfaces * SizeOf(TIpAdapterInfo);
  GetAdaptersInfo(@AdapterInfo[0], OutBufLen);

//  Memo1.Lines.Clear;
  for i := 0 to 0 do begin //NumInterfaces - 1 do begin
    tmo:=Format('%.2x:%.2x:%.2x:%.2x:%.2x:%.2x',
      [AdapterInfo[i].Address[0], AdapterInfo[i].Address[1],
       AdapterInfo[i].Address[2], AdapterInfo[i].Address[3],
       AdapterInfo[i].Address[4], AdapterInfo[i].Address[5]]);
  end;
  Result:=tmo;
end;

function GetLocalIP: string;
var IPW: TIdIPWatch;
begin
  Result := '127.0.0.1';
  IpW := TIdIPWatch.Create(nil);
  try
    if IpW.LocalIP <> '' then
      Result := IpW.LocalIP;
  finally
    IpW.Free;
  end;
end;

function ComputerName : String;
var
  buffer: array[0..255] of char;
  size: dword;
begin
  size := 256;
  if GetComputerName(buffer, size) then
    Result := buffer
  else
    Result := ''
end;

Function GetUserFromWindows:String;
Var
  UserName : string;
  UserNameLen : Dword;
Begin
  UserNameLen := 255;
  SetLength(userName, UserNameLen) ;
  If GetUserName(PChar(UserName), UserNameLen) Then
    Result := Copy(UserName,1,UserNameLen - 1)
  Else
    Result := 'Unknown';
End;


End.
