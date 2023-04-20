unit RBase;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, DMain, ADODB;

type
  TrptBase = class(TQuickRep)
    Query2: TADOQuery;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
  public
  end;

implementation

{$R *.DFM}

procedure TrptBase.QuickRepBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  DMain.GreekPrint(Sender AS TQuickRep);
end;

end.
