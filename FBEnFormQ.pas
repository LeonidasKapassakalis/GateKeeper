unit FBEnFormQ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FBEnForm, DB, ADODB, Menus, Grids, DBGrids, ExtCtrls, ComCtrls,
  Vcl.ActnList;

type
  TfrmBEnFormQ = class(TfrmBEnForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
