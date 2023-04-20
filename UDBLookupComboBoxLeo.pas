unit UDBLookupComboBoxLeo;

interface

uses cxDBLookupComboBox;

type
  TcxDBLookupComboBoxLeo = class(TcxDBLookupComboBox)
    procedure TcxDBLookupComboBoxLeoDblClick(Sender: TObject);
  Public
    procedure actSubParamNoWrapPopUp(FormName: String);

  end;

implementation

{ TcxDBLookupComboBoxLeo }

procedure TcxDBLookupComboBoxLeo.actSubParamNoWrapPopUp(FormName: String);
begin

end;

procedure TcxDBLookupComboBoxLeo.TcxDBLookupComboBoxLeoDblClick(Sender: TObject);
var
  PopField: String;
  PopDBLC: TcxDBLookupComboBoxLeo;
begin
  if Sender is TcxDBLookupComboBoxLeo then
    begin
      PopDBLC := TcxDBLookupComboBoxLeo(Sender);
      if Assigned(PopDBLC.Properties.ListField) then
        begin
          PopField := PopDBLC.Properties.ListField.Name;
          self.actSubParamNoWrapPopUp(PopField);
          TcxDBLookupComboBoxLeo(Sender).Properties.ListSource.DataSet.Refresh;
        end;
    end;
end;

end.
