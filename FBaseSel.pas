unit FBaseSel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ComCtrls, Variants,
  DBase, ActnList, Menus, ExtCtrls;

type
  TfrmBaseSel = class(TForm)
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    cmdCancel: TAction;
    cmdExecute: TAction;
    cmdInitialize: TAction;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    cmdGetVariant: TAction;
    cmdNewVariant: TAction;
    cmdVariant: TAction;
    cmdVariant1: TMenuItem;
    cmdNewVariant1: TMenuItem;
    cmdGetVariant1: TMenuItem;
    Panel1: TPanel;
    Button1: TButton;
    Button3: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cmdInitializeExecute(Sender: TObject);
    procedure cmdCancelExecute(Sender: TObject);
    procedure cmdExecuteExecute(Sender: TObject);
    procedure cmdVariantExecute(Sender: TObject);
    procedure cmdGetVariantExecute(Sender: TObject);
    procedure cmdNewVariantExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    FDM: TDMBase;
    PFormID: Integer;
    PFormName: String;
    function CreateDataModule: TDMBase; virtual; abstract;
  public
    sqlPrep: Integer;
    SLeo: String;
    constructor CreateSecurity(aowner: TComponent; FormID: Integer);
  end;

var
  frmBaseSel: TfrmBaseSel;

const
  Constr: String = #39;

implementation

uses DMain;

{$R *.DFM}

procedure TfrmBaseSel.FormCreate(Sender: TObject);
begin
  FDM := CreateDataModule;
end;

procedure TfrmBaseSel.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    cmdCancel.Execute;
end;

constructor TfrmBaseSel.CreateSecurity(aowner: TComponent; FormID: Integer);
begin
  PFormID := FormID;
  if DMMain.FindFormName(FormID, PFormName) then
    Create(aowner)
  else
    exit;
end;

procedure TfrmBaseSel.cmdInitializeExecute(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
    begin
      if Self.Components[i] is TEdit then
        TEdit(Self.Components[i]).Text := '';
      if Self.Components[i] is TMaskEdit then
        TMaskEdit(Self.Components[i]).Text := '';
      if Self.Components[i] is TRadioGroup then
        TRadioGroup(Self.Components[i]).ItemIndex := 0;
      if Self.Components[i] is TCheckBox then
        TCheckBox(Self.Components[i]).Checked := False;
      if Self.Components[i] is TDBLookUpComboBox then
        if (Not(TDBLookUpComboBox(Self.Components[i]).Tag = 999)) then
          TDBLookUpComboBox(Self.Components[i]).KeyValue := null;
    end;
end;

procedure TfrmBaseSel.cmdCancelExecute(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
end;

procedure TfrmBaseSel.cmdExecuteExecute(Sender: TObject);
var
  i: Integer;

  procedure SqlGroupBox(LeoGB: TGroupBox);
  var
    i, x: Integer;
    LeoStr: String;
  begin
    x      := 0;
    LeoStr := '(';
    for i  := 0 to Self.ComponentCount - 1 do
      if Self.Components[i].GetParentComponent = LeoGB then
        if Self.Components[i] is TCheckBox then
          if TCheckBox(Self.Components[i]).Checked then
            begin
              LeoStr := LeoStr + ',' + inttostr(Self.Components[i].Tag);
              inc(x);
            end;
    LeoStr := LeoStr + ')';
    if x = 0 then
      exit;
    if (sqlPrep = 1) then
      SLeo := SLeo + ' AND ';
    Delete(LeoStr, 2, 1);
    SLeo := SLeo + LeoGB.Hint + ' In ' + LeoStr;
  end;

  procedure SqlTDTP(LeoATP: TDateTimePicker);
  var
    LeoS, L1, L2: String;
    LeoETP: TDateTimePicker;
    i: Integer;
    L1D, L2D: Double;
  begin
    LeoS := LeoATP.Name;
    i    := Length(LeoS);
    if LeoS[i] = 'E' then
      exit;
    LeoS[i] := 'E';
    LeoETP  := TDateTimePicker(FindComponent(LeoS));
    if LeoETP = nil then
      exit;

    // To String for a DBfield of type yyyymmdd
    // DateTimeToString(L1,'yyyymmdd',LeoATP.DateTime);
    // DateTimeToString(L2,'yyyymmdd',LeoETP.DateTime);
    // DateTimeToString(L1,'dd/mm/yyyy',LeoATP.DateTime);
    // DateTimeToString(L2,'dd/mm/yyyy',LeoETP.DateTime);
    L1D := Double(LeoATP.DateTime);
    L2D := Double(LeoETP.DateTime);

    if ((LeoATP.Date > 0) AND (LeoETP.Date > 0)) then
      begin
        if (sqlPrep = 1) then
          SLeo := SLeo + ' AND ';
        SLeo   := SLeo + LeoATP.Hint + ' >= ';
        // sleo:= sleo + constr + L1 + constr ;
        SLeo := SLeo + FloattoStrF(L1D, ffFixed, 5, 0);
        SLeo := SLeo + ' AND ' + LeoATP.Hint + ' <= ';
        // sleo:= sleo + constr + L2 + constr ;
        SLeo    := SLeo + FloattoStrF(L2D, ffFixed, 5, 0);
        sqlPrep := 1;
      end;
    if ((LeoATP.Date > 0) AND (NOT(LeoETP.Date > 0))) then
      begin
        if (sqlPrep = 1) then
          SLeo  := SLeo + ' AND ';
        SLeo    := SLeo + LeoATP.Hint + ' >= ';
        SLeo    := SLeo + L1;
        sqlPrep := 1;
      end;
    if ((NOT(LeoATP.Date > 0)) AND (LeoETP.Date > 0)) then
      begin
        if (sqlPrep = 1) then
          SLeo  := SLeo + ' AND ';
        SLeo    := SLeo + LeoATP.Hint + ' <= ';
        SLeo    := SLeo + L2;
        sqlPrep := 1;
      end;
  end;

  procedure SqlTDTPAlt(LeoATP: TDateTimePicker);
  var
    LeoS, L1, L2: String;
    LeoETP: TDateTimePicker;
    LeoETCB: TCheckBox;
    LeoB: Boolean;
    i: Integer;
    // YY,MM,DD:Word;
    // L1D,L2D:Integer;
    L1D, L2D: Double;
  begin
    LeoS := LeoATP.Name;
    i    := Length(LeoS);
    if LeoS[i] = 'E' then
      exit;
    LeoS[i] := 'E';
    LeoETP  := TDateTimePicker(FindComponent(LeoS));
    if LeoETP = nil then
      exit;
    LeoS[i] := 'C';
    LeoETCB := TCheckBox(FindComponent(LeoS));
    if Not(LeoETCB = nil) then
      if Not(LeoETCB.Checked) then
        exit;

    // DecodeDate(LeoATP.Date,YY,MM,DD);
    // L1D:=((MM-1)*31)+DD;
    // DecodeDate(LeoETP.Date,YY,MM,DD);
    // L2D:=((MM-1)*31)+DD;

    L1D := Double(LeoATP.DateTime);
    L2D := Double(LeoETP.DateTime);

    if ((LeoATP.Date > 0) AND (LeoETP.Date > 0)) then
      begin
        if (sqlPrep = 1) then
          SLeo := SLeo + ' AND ';
        SLeo   := SLeo + LeoATP.Hint + ' >= ';
        // sleo:= sleo + inttoStr(L1D);
        SLeo := SLeo + FloattoStrF(L1D, ffFixed, 5, 0);
        SLeo := SLeo + ' AND ' + LeoATP.Hint + ' <= ';
        // sleo:= sleo + inttoStr(L2D);
        SLeo    := SLeo + FloattoStrF(L2D, ffFixed, 5, 0);
        sqlPrep := 1;
      end;
    if ((LeoATP.Date > 0) AND (NOT(LeoETP.Date > 0))) then
      begin
        if (sqlPrep = 1) then
          SLeo := SLeo + ' AND ';
        SLeo   := SLeo + LeoATP.Hint + ' >= ';
        // sleo:= sleo + inttoStr(L1D);
        SLeo    := SLeo + FloattoStrF(L1D, ffFixed, 5, 0);
        sqlPrep := 1;
      end;
    if ((NOT(LeoATP.Date > 0)) AND (LeoETP.Date > 0)) then
      begin
        if (sqlPrep = 1) then
          SLeo := SLeo + ' AND ';
        SLeo   := SLeo + LeoATP.Hint + ' <= ';
        // sleo:= sleo + inttoStr(L2D);
        SLeo    := SLeo + FloattoStrF(L2D, ffFixed, 5, 0);
        sqlPrep := 1;
      end;
  end;

  procedure SqlTDTPStr(LeoATP: TDateTimePicker);
  var
    LeoS, L1, L2: String;
    LeoETP: TDateTimePicker;
    i: Integer;
    L1D, L2D: Double;
  begin
    LeoS := LeoATP.Name;
    i    := Length(LeoS);
    if LeoS[i] = 'E' then
      exit;
    LeoS[i] := 'E';
    LeoETP  := TDateTimePicker(FindComponent(LeoS));
    if LeoETP = nil then
      exit;

    // To String for a DBfield of type yyyymmdd
    // DateTimeToString(L1,'yyyymmdd',LeoATP.DateTime);
    // DateTimeToString(L2,'yyyymmdd',LeoETP.DateTime);
    // DateTimeToString(L1,'dd/mm/yyyy',LeoATP.DateTime);
    // DateTimeToString(L2,'dd/mm/yyyy',LeoETP.DateTime);
    L1D := Double(LeoATP.DateTime);
    L2D := Double(LeoETP.DateTime);

    if ((LeoATP.Date > 0) AND (LeoETP.Date > 0)) then
      begin
        if (sqlPrep = 1) then
          SLeo  := SLeo + ' AND ';
        SLeo    := SLeo + LeoATP.Hint + ' >= ';
        SLeo    := SLeo + DateToStr(LeoATP.Date);
        SLeo    := SLeo + ' AND ' + LeoATP.Hint + ' <= ';
        SLeo    := SLeo + DateToStr(LeoETP.Date);
        sqlPrep := 1;
      end;
  end;

  procedure SqlTDTPAlt2(LeoATP: TDateTimePicker);
  var
    LeoS, L1, L2, Ld1, Ld2: String;
    LeoETP: TDateTimePicker;
    LeoETCB: TCheckBox;
    LeoB: Boolean;
    i: Integer;
    L1D, L2D: Double;
    LeoFS: TFormatSettings;
  begin
    LeoS := LeoATP.Name;
    i    := Length(LeoS);
    if LeoS[i] = 'E' then
      exit;
    LeoS[i] := 'E';
    LeoETP  := TDateTimePicker(FindComponent(LeoS));
    if LeoETP = nil then
      exit;
    LeoS[i] := 'C';
    LeoETCB := TCheckBox(FindComponent(LeoS));
    if Not(LeoETCB = nil) then
      if Not(LeoETCB.Checked) then
        exit;

    // DateToString(Ld1,LeoATP.DateTime,'dd/mm/yyyy');
    // DateToString(Ld2,LeoETP.DateTime,'dd/mm/yyyy');

    GetLocaleFormatSettings($0408, LeoFS);
    LeoFS.ShortDateFormat := 'dd/mm/yyyy';
    LeoFS.LongDateFormat  := 'dd/mm/yyyy';
    LeoFS.TimeAMString    := '';
    LeoFS.TimePMString    := '';
    LeoFS.ShortTimeFormat := 'HH:MM:SS';
    LeoFS.LongTimeFormat  := 'HH:MM:SS';
    Ld1                   := DateTimeToStr(LeoATP.DateTime, LeoFS);
    Ld2                   := DateTimeToStr(LeoETP.DateTime, LeoFS);

    if ((LeoATP.Date > 0) AND (LeoETP.Date > 0)) then
      begin
        if (sqlPrep = 1) then
          SLeo  := SLeo + ' AND ';
        SLeo    := SLeo + LeoATP.Hint + ' >= ';
        SLeo    := SLeo + ' CONVERT(DATETIME,' + Constr + Ld1 + Constr + ', 103)';
        SLeo    := SLeo + ' AND ' + LeoATP.Hint + ' <= ';
        SLeo    := SLeo + ' CONVERT(DATETIME,' + Constr + Ld2 + Constr + ', 103)';
        sqlPrep := 1;
      end;
  end;

  procedure SqlEdit(LeoEA: TEdit);
  var
    LeoS: String;
    NumericField: Boolean;
    LeoET: TEdit;
    i: Integer;
  begin
    LeoS := LeoEA.Name;
    if LeoS[1] = 'n' then
      NumericField := True
    else
      NumericField := False;
    i              := Length(LeoS);
    if LeoS[i] = 'E' then
      exit;
    LeoS[i] := 'E';
    LeoET   := TEdit(FindComponent(LeoS));
    if LeoET = nil then
      exit;

    if ((LeoEA.Text <> '') AND (LeoET.Text <> '')) then
      begin
        if (sqlPrep = 1) then
          SLeo := SLeo + ' AND ';
        SLeo   := SLeo + LeoEA.Hint + ' >= ';
        if NumericField then
          begin
            SLeo := SLeo + LeoEA.Text;
            SLeo := SLeo + ' AND ' + LeoEA.Hint + ' <= ';
            SLeo := SLeo + LeoET.Text;
          end
        else
          begin
            SLeo := SLeo + Constr + LeoEA.Text + Constr;
            SLeo := SLeo + ' AND ' + LeoEA.Hint + ' <= ';
            SLeo := SLeo + Constr + LeoET.Text + Constr;
          end;
        sqlPrep := 1;
      end;
    if ((LeoEA.Text <> '') AND (LeoET.Text = '')) then
      begin
        if (sqlPrep = 1) then
          SLeo := SLeo + ' AND ';
        if NumericField then
          begin
            SLeo := SLeo + LeoEA.Hint + ' >= ';
            SLeo := SLeo + LeoEA.Text;
          end
        else
          begin
            SLeo := SLeo + LeoEA.Hint + ' >= ';
            SLeo := SLeo + Constr + LeoEA.Text + Constr;
          end;
        sqlPrep := 1;
      end;
    if ((LeoEA.Text = '') AND (LeoET.Text <> '')) then
      begin
        if (sqlPrep = 1) then
          SLeo := SLeo + ' AND ';
        if NumericField then
          begin
            SLeo := SLeo + LeoEA.Hint + ' <= ';
            SLeo := SLeo + LeoET.Text;
          end
        else
          begin
            SLeo := SLeo + LeoEA.Hint + ' <= ';
            SLeo := SLeo + Constr + LeoET.Text + Constr;
          end;
        sqlPrep := 1;
      end;
  end;

  procedure SqlMEdit(LeoEA: TMaskEdit);
  var
    LeoS: String;
    LeoET: TMaskEdit;
    i: Integer;
  begin
    LeoS := LeoEA.Name;
    i    := Length(LeoS);
    if LeoS[i] = 'E' then
      exit;
    LeoS[i] := 'E';
    LeoET   := TMaskEdit(FindComponent(LeoS));
    if LeoET = nil then
      exit;

    if ((LeoEA.Text <> '') AND (LeoET.Text <> '')) then
      begin
        if (sqlPrep = 1) then
          SLeo  := SLeo + ' AND ';
        SLeo    := SLeo + LeoEA.Hint + ' >= ';
        SLeo    := SLeo + Constr + LeoEA.Text + Constr;
        SLeo    := SLeo + ' AND ' + LeoEA.Hint + ' <= ';
        SLeo    := SLeo + LeoET.Text;
        sqlPrep := 1;
      end;
    if ((LeoEA.Text <> '') AND (LeoET.Text = '')) then
      begin
        if (sqlPrep = 1) then
          SLeo  := SLeo + ' AND ';
        SLeo    := SLeo + LeoEA.Hint + ' >= ';
        SLeo    := SLeo + LeoEA.Text;
        sqlPrep := 1;
      end;
    if ((LeoEA.Text = '') AND (LeoET.Text <> '')) then
      begin
        if (sqlPrep = 1) then
          SLeo  := SLeo + ' AND ';
        SLeo    := SLeo + LeoEA.Hint + ' <= ';
        SLeo    := SLeo + LeoET.Text;
        sqlPrep := 1;
      end;
  end;

  procedure SqlMNEdit(LeoEA: TMaskEdit);
  var
    LeoS: String;
    LeoET: TMaskEdit;
    i: Integer;
  begin
    LeoS := LeoEA.Name;
    i    := Length(LeoS);
    if LeoS[i] = 'E' then
      exit;
    LeoS[i] := 'E';
    LeoET   := TMaskEdit(FindComponent(LeoS));
    if LeoET = nil then
      exit;

    if ((LeoEA.Text <> '') AND (LeoET.Text <> '')) then
      begin
        if (sqlPrep = 1) then
          SLeo  := SLeo + ' AND ';
        SLeo    := SLeo + LeoEA.Hint + ' >= ';
        SLeo    := SLeo + Trim(LeoEA.Text);
        SLeo    := SLeo + ' AND ' + LeoEA.Hint + ' <= ';
        SLeo    := SLeo + Trim(LeoET.Text);
        sqlPrep := 1;
      end;
    if ((LeoEA.Text <> '') AND (LeoET.Text = '')) then
      begin
        if (sqlPrep = 1) then
          SLeo  := SLeo + ' AND ';
        SLeo    := SLeo + LeoEA.Hint + ' >= ';
        SLeo    := SLeo + Trim(LeoEA.Text);
        sqlPrep := 1;
      end;
    if ((LeoEA.Text = '') AND (LeoET.Text <> '')) then
      begin
        if (sqlPrep = 1) then
          SLeo  := SLeo + ' AND ';
        SLeo    := SLeo + LeoEA.Hint + ' <= ';
        SLeo    := SLeo + Trim(LeoET.Text);
        sqlPrep := 1;
      end;
  end;

  procedure SqlRadioGroup(LeoRG: TRadioGroup);
  begin
    if LeoRG.ItemIndex = 1 then
      begin
        if (sqlPrep = 1) then
          SLeo  := SLeo + ' AND ';
        SLeo    := SLeo + LeoRG.Hint + ' = True';
        sqlPrep := 1;
      end;
    if LeoRG.ItemIndex = 2 then
      begin
        if (sqlPrep = 1) then
          SLeo  := SLeo + ' AND ';
        SLeo    := SLeo + LeoRG.Hint + ' = False';
        sqlPrep := 1;
      end;
  end;

  procedure SqlCB(LeoCB: TDBLookUpComboBox);
  begin
    if (Not(LeoCB.KeyValue = null)) then
      if (LeoCB.KeyValue > -1) then
        begin
          if (sqlPrep = 1) then
            SLeo  := SLeo + ' AND ';
          SLeo    := SLeo + LeoCB.Hint + ' = ';
          SLeo    := SLeo + inttostr(LeoCB.KeyValue);
          sqlPrep := 1;
        end;
  end;

  procedure SqlChB(LeoChB: TCheckBox);
  begin
    if (LeoChB.State = cbChecked) then
      begin
        if (sqlPrep = 1) then
          SLeo  := SLeo + ' AND ';
        SLeo    := SLeo + LeoChB.Hint + ' = ';
        SLeo    := SLeo + 'True';
        sqlPrep := 1;
      end;
    if (LeoChB.State = cbUnChecked) then
      begin
        if (sqlPrep = 1) then
          SLeo  := SLeo + ' AND ';
        SLeo    := SLeo + LeoChB.Hint + ' = ';
        SLeo    := SLeo + 'False';
        sqlPrep := 1;
      end;
  end;

  procedure SqlChBAlt(LeoChB: TCheckBox);
  var
    LeoS, L1, L2: String;
    LeoETCB: TCheckBox;
    LeoB: Boolean;
    i: Integer;
  begin
    LeoS := LeoChB.Name;
    i    := Length(LeoS);
    if LeoS[i] = 'C' then
      exit;
    LeoS[i] := 'C';
    LeoETCB := TCheckBox(FindComponent(LeoS));
    if LeoETCB = nil then
      exit;
    LeoS[i] := 'C';
    LeoETCB := TCheckBox(FindComponent(LeoS));
    if Not(LeoETCB = nil) then
      if Not(LeoETCB.Checked) then
        exit;

    if (LeoChB.State = cbChecked) then
      begin
        if (sqlPrep = 1) then
          SLeo  := SLeo + ' AND ';
        SLeo    := SLeo + LeoChB.Hint + ' = ';
        SLeo    := SLeo + 'True';
        sqlPrep := 1;
      end;
    if (LeoChB.State = cbUnChecked) then
      begin
        if (sqlPrep = 1) then
          SLeo  := SLeo + ' AND ';
        SLeo    := SLeo + LeoChB.Hint + ' = ';
        SLeo    := SLeo + 'False';
        sqlPrep := 1;
      end;
  end;

begin
  sqlPrep := 0;
  for i   := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TRadioGroup then
        if Components[i].Tag = 0 then
          SqlRadioGroup(TRadioGroup(Components[i]));
      if Components[i] is TEdit then
        SqlEdit(TEdit(Components[i]));
      if Components[i] is TMaskEdit then
        if Components[i].Tag = 0 then
          SqlMEdit(TMaskEdit(Components[i]))
        else
          SqlMNEdit(TMaskEdit(Components[i]));
      if Components[i] is TCheckBox then
        if Components[i].Tag = 0 then
          SqlChB(TCheckBox(Components[i]))
        else
          SqlChBAlt(TCheckBox(Components[i]));
      if Components[i] is TDBLookUpComboBox then
        SqlCB(TDBLookUpComboBox(Components[i]));
      if Components[i] is TGroupBox then
        if Components[i].Tag = 1 then
          SqlGroupBox(TGroupBox(Components[i]));
      if Components[i] is TDateTimePicker then
        begin
          if Components[i].Tag = 0 then
            SqlTDTP(TDateTimePicker(Components[i]));
          if Components[i].Tag = 1 then
            SqlTDTPAlt(TDateTimePicker(Components[i]));
          if Components[i].Tag = 2 then
            SqlTDTPAlt2(TDateTimePicker(Components[i]));
        end;
    end;
  SLeo             := SLeo + ' ';
  Self.ModalResult := mrOK;
end;

procedure TfrmBaseSel.cmdVariantExecute(Sender: TObject);
begin
  //
end;

procedure TfrmBaseSel.cmdGetVariantExecute(Sender: TObject);
var
  FieldName, FieldValue: String;
  FieldType, LLL: Integer;
  PComponent: TComponent;
begin
  DMMain.GetVariant(PFormID, LLL);
  while DMMain.GetVariantDetail(4, FieldName, FieldType, FieldValue) do
    begin
      case FieldType of
        1:
          TEdit(FindComponent(FieldName)).Text := FieldValue;
        4:
          TMaskEdit(FindComponent(FieldName)).Text := FieldValue;
        2:
          TDBLookUpComboBox(FindComponent(FieldName)).KeyValue := FieldValue;
        3:
          if FieldValue = 'True' then
            TCheckBox(FindComponent(FieldName)).Checked := True
          else
            TCheckBox(FindComponent(FieldName)).Checked := False;
        5:
          TRadioGroup(FindComponent(FieldName)).ItemIndex := strtoint(FieldValue);
      end;
    end;
end;

procedure TfrmBaseSel.cmdNewVariantExecute(Sender: TObject);
var
  i, VarId: Integer;
  Name, Perig: String;
begin
  if DMMain.NewVariant(Self, Name, Perig, PFormID, VarId) then
    begin
      for i := 0 to Self.ComponentCount - 1 do
        begin
          if Self.Components[i] is TEdit then
            DMMain.NewVariantDetail(VarId, Self.Components[i].Name, 1, TEdit(Self.Components[i]).Text);
          if Self.Components[i] is TMaskEdit then
            DMMain.NewVariantDetail(VarId, Self.Components[i].Name, 4, TMaskEdit(Self.Components[i]).Text);
          if Self.Components[i] is TDBLookUpComboBox then
            if TDBLookUpComboBox(Self.Components[i]).KeyValue > 0 then
              DMMain.NewVariantDetail(VarId, Self.Components[i].Name, 2, inttostr(TDBLookUpComboBox(Self.Components[i]).KeyValue));
          if Self.Components[i] is TCheckBox then
            if TCheckBox(Self.Components[i]).Checked then
              DMMain.NewVariantDetail(VarId, Self.Components[i].Name, 3, 'True')
            else
              DMMain.NewVariantDetail(VarId, Self.Components[i].Name, 3, 'False');
          if Self.Components[i] is TRadioGroup then
            DMMain.NewVariantDetail(VarId, Self.Components[i].Name, 5, inttostr(TRadioGroup(Self.Components[i]).ItemIndex));
        end;
    end;
end;

end.
