unit ApplicationInfo;

interface

uses Forms, System.Classes;

type
  TAppInfo = class
  public const
    AppInfoWebsiteName: string = 'www.avinoil.gr';
    AppInfoWebsiteURL: string = 'http://www.zilchworks.com/buynow.asp';
    AppInfoCopyright: string = 'Copyright 2002-2014 © AvinOil S.A. by Leonidas Kapassakalis. All rights reserved.';
    AppInfoName: string = 'AvinCardV4';
    AppMainForm: TForm = nil;
    AppCurrentForm: TForm = nil;
    AppCurrentDM: TDataModule = nil;

  class var
    AppInfoPathData: string;
    AppInfoPathLocal: string;
    class constructor Create;
    class function SetAppInfoPath(CSIDL: integer): string; static;
    class function GetAppMForm: string; static;
    class procedure CleanUpAfterInit;
    class procedure GoToAppInfoWebsiteURL; static;
  end;

implementation

uses
  ShellApi,
  Windows,
  Winapi.SHFolder;

// ----------------------------------------------------------------------
// Added: 07-12-2014 after reading the comment by Uwe Raabe
// https://www.google.com/+UweRaabe
// http://www.uweraabe.de/Blog/
// ----------------------------------------------------------------------
class procedure TAppInfo.CleanUpAfterInit;
begin
  TAppInfo.AppMainForm := Application.MainForm;
end;

class constructor TAppInfo.Create;
begin
  TAppInfo.AppInfoPathData  := TAppInfo.SetAppInfoPath(CSIDL_COMMON_APPDATA);
  TAppInfo.AppInfoPathLocal := TAppInfo.SetAppInfoPath(CSIDL_LOCAL_APPDATA);
end;

class function TAppInfo.SetAppInfoPath(CSIDL: integer): string;
var
  LStr: array [0 .. MAX_PATH] of Char;
  S: string;
begin
  SHGetFolderPath(0, CSIDL, 0, 0, @LStr);
  S      := LStr;
  Result := S + '\' + TAppInfo.AppInfoName;
end;

class function TAppInfo.GetAppMForm: string;
begin
  Result := TAppInfo.AppMainForm.Name;
end;

class procedure TAppInfo.GoToAppInfoWebsiteURL;
begin
  ShellExecute(0, 'open', PChar(TAppInfo.AppInfoWebsiteURL), nil, nil, SW_SHOWNORMAL);
end;

// ----------------------------------------------------------------------
// Commented: 07-12-2014 after reading the comment by Uwe Raabe
// https://www.google.com/+UweRaabe
// http://www.uweraabe.de/Blog/
// ----------------------------------------------------------------------
(*
  initialization
  TAppInfo.AppInfoPathData  := TAppInfo.SetAppInfoPath(CSIDL_COMMON_APPDATA);
  TAppInfo.AppInfoPathLocal := TAppInfo.SetAppInfoPath(CSIDL_LOCAL_APPDATA);
*)
end.
