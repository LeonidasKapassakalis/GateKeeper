unit FCall;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Globals, Globals0, Common;

type
  TfrmCall = class(TForm)
    DateTimePicker1: TDateTimePicker;
    MonthCalendar1: TMonthCalendar;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor CreateSpec(aowner: TComponent; var DispDateTime: TDateTime; State: TCallState);
    constructor CreateSpecTitle(aowner: TComponent; var DispDateTime: TDateTime; Title: String; State: TCallState);
  end;

var
  frmCall: TfrmCall;
  PDate: ^TDateTime;

implementation

{$R *.DFM}

constructor TfrmCall.CreateSpec(aowner: TComponent; var DispDateTime: TDateTime; State: TCallState);
begin
  Create(aowner);
  MonthCalendar1.Date  := DispDateTime;
  DateTimePicker1.Time := DispDateTime;
  PDate                := addr(DispDateTime);
  case State of
    csDate:
      begin
        DateTimePicker1.visible := false;
        DateTimePicker1.Time    := 0;
      end;
    csTime:
      begin
        MonthCalendar1.visible := false;
        MonthCalendar1.Date    := 0;
      end;
  end;
end;

constructor TfrmCall.CreateSpecTitle(aowner: TComponent; var DispDateTime: TDateTime; Title: String; State: TCallState);
begin
  Create(aowner);
  self.Caption         := Title;
  MonthCalendar1.Date  := DispDateTime;
  DateTimePicker1.Time := DispDateTime;
  PDate                := addr(DispDateTime);
  case State of
    csDate:
      begin
        DateTimePicker1.visible := false;
        DateTimePicker1.Time    := 0;
      end;
    csTime:
      begin
        MonthCalendar1.visible := false;
        MonthCalendar1.Date    := 0;
      end;
  end;
end;

procedure TfrmCall.Button1Click(Sender: TObject);
var
  TempDate: TDateTime;
begin
  DateTimePicker1.Date := MonthCalendar1.Date;
  TempDate             := DateTimePicker1.DateTime;
  PDate^               := TempDate;
end;

end.
