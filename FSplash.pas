unit FSplash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, jpeg, StdCtrls, IniFiles, ADODB, ADOConEd, DB;

type
  TfrmSplash = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    ADOConnection: TADOConnection;
  private
    { Private declarations }
  protected
    { Private declarations }
  public
    Procedure ReadApplicationIni;
  End;

Implementation

Uses
  Globals, Globals0;

{$R *.dfm}
{ TfrmSplash }

Procedure TfrmSplash.ReadApplicationIni;
Var
  a: AnsiString;
  f: TIniFile;
Begin
  Label1.Caption := 'Ανάγνωση ρυθμίσεων εφαρμογής';
  Application.ProcessMessages;
  a          := ChangeFileExt(Application.ExeName, '.INI');
  f          := TIniFile.Create(a);
  gADOConStr := f.ReadString(INI_ADO_SECTION, INI_CONNECTION_STRING_LINE, '');
  If (Length(gADOConStr) = 0) Then
    Begin
      If EditConnectionString(ADOConnection) Then
        Begin
          gADOConStr := ADOConnection.ConnectionString;
          f.WriteString(INI_ADO_SECTION, INI_CONNECTION_STRING_LINE, gADOConStr);
        End;
    End;
  gExportADOConStr := f.ReadString(INI_ADO_SECTION, INI_EXPORT_STRING_LINE, '');

  f.Free;
  Label1.Caption := 'Σύνδεση με την βάση δεδομένων';
  Application.ProcessMessages;
End;
// gExportADOconStr : AnsiString;

end.
