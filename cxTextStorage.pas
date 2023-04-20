{********************************************************************}
{                                                                    }
{       Mediacom Extension for                                       }
{       Developer Express Visual Component Library                   }
{                                                                    }
{       Version 1.0 2013-10-09                                       }
{                                                                    }
{       Copyright (c) 2013 Marek Bojarski, Mediacom                  }
{       No restrictions - free to use and to modify                  }
{                                                                    }
{       Introduced methods for GridViev                              }
{          StoreToTextStream                                         }
{          RestoreFromTextStream                                     }
{       Usage is the same as StoreToStream and RestoreFromStream     }
{                                                                    }
{********************************************************************}

unit cxTextStorage;

interface

uses
  Classes, cxGridCustomView, cxStorage;

type
  TcxTextStreamReader = class(TcxIniFileReader)
  protected
    procedure BeginRead; override;
    function CanRead: Boolean; override;
  end;

  TcxTextStreamWriter = class(TcxIniFileWriter)
  protected
    procedure EndWrite; override;
  end;

  TcxCustomGridViewHelper = class helper for TcxCustomGridView
    procedure RestoreFromTextStream(AStream: TStream;
      AChildrenCreating: Boolean = True; AChildrenDeleting: Boolean = False;
      AOptions: TcxGridStorageOptions = [gsoUseFilter, gsoUseSummary];
      const ARestoreViewName: string = ''; const AOwnerName: string = '');
    procedure StoreToTextStream(AStream: TStream;
      AOptions: TcxGridStorageOptions = []; const ASaveViewName: string = '';
      const AOwnerName: string = '');
  end;

implementation

uses SysUtils;

procedure TcxTextStreamReader.BeginRead;
var
  List: TStringList;
begin
  if CanRead then
  begin
    List := TStringList.Create;
    try
      List.LoadFromStream(StorageStream);
      IniFile.SetStrings(List);
    finally
      List.Free;
    end;
  end
  else
    IniFile.Clear;
end;

function TcxTextStreamReader.CanRead: Boolean;
begin
  Result := (StorageStream <> nil) and (StorageStream.Size > 0);
end;

procedure TcxTextStreamWriter.EndWrite;
var
  List: TStringList;
begin
  List := TStringList.Create;
  try
    IniFile.GetStrings(List);
    List.SaveToStream(StorageStream);
  finally
    List.Free;
  end;
end;

procedure TcxCustomGridViewHelper.RestoreFromTextStream(AStream: TStream;
  AChildrenCreating: Boolean = True; AChildrenDeleting: Boolean = False;
  AOptions: TcxGridStorageOptions = [gsoUseFilter, gsoUseSummary];
  const ARestoreViewName: string = ''; const AOwnerName: string = '');
begin
  RestoreFrom('', AStream, TcxTextStreamReader, AChildrenCreating,
    AChildrenDeleting, AOptions, ARestoreViewName, AOwnerName);
end;

procedure TcxCustomGridViewHelper.StoreToTextStream(AStream: TStream;
  AOptions: TcxGridStorageOptions = []; const ASaveViewName: string = '';
  const AOwnerName: string = '');
begin
  StoreTo('', AStream, TcxTextStreamWriter, True, AOptions, ASaveViewName, AOwnerName);
end;

end.
