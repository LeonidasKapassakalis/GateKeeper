unit FSelPersons;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FBaseSel, Vcl.ActnList, Vcl.Menus,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.CheckLst, Vcl.Mask, DBCtrlsEh, Vcl.ComCtrls;

type
  TfrmSelPersons = class(TfrmBaseSel)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBDTTrdA: TDBDateTimeEditEh;
    DBDTTrdE: TDBDateTimeEditEh;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    TabSheet2: TTabSheet;
    clbMerchant: TCheckListBox;
    TabSheet3: TTabSheet;
    clbStation: TCheckListBox;
    TabSheet4: TTabSheet;
    clbTerminal: TCheckListBox;
    TabSheet5: TTabSheet;
    clbSources: TCheckListBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelPersons: TfrmSelPersons;

implementation

{$R *.dfm}

end.
