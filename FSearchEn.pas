unit FSearchEn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TfrmSearchEn = class(TForm)
  private
    procedure FillCombo;
    function  CreateEdit(Owner:TForm;Name,LName:String;Width:Integer;LField:TFieldClass;NNField:String): TComponent ;
    function  CreateLCB(Owner: TForm; Name, LName: String; Width: Integer;
                        LField: TFieldClass; NNField: String; Field: TField): TComponent;
  public
    { Public declarations }
  end;

var
  frmSearchEn: TfrmSearchEn;

implementation

{$R *.dfm}

{ TForm1 }

function TfrmSearchEn.CreateEdit(Owner: TForm; Name, LName: String;
  Width: Integer; LField: TFieldClass; NNField: String): TComponent;
var LEdit,LEdit1:TEdit;
    LLabel:TLabel;
begin
    CurTop              := CurTop + 20;
    LEdit:=TEdit.Create(Self);
    LEdit.Name          := 'EdtF' + Name;
    Ledit.Hint          := NNField;
    Ledit.Parent        := Owner;
    Ledit.Top           := CurTop;
    Ledit.Left          := 150 ;
    if width*10+10+150 > self.Width then
      Ledit.Width         := self.Width-150-10
    else
      Ledit.Width         := Width*10+10;
    Ledit.Visible       := True;
    Ledit.Text          := '';
    if LField = TDateTimeField then
       Ledit.OnDblClick := EditDateEnter;

    LEdit1:=TEdit.Create(Self);
    LEdit1.Name          := 'EdtT' + Name;
    Ledit1.Hint          := NNField;
    Ledit1.Parent        := Owner;
    Ledit1.Top           := CurTop;
    Ledit1.Left          := 350 ;
    if width*10+10+150 > self.Width then
      Ledit1.Width         := self.Width-150-10
    else
      Ledit1.Width         := Width*10+10;
    Ledit1.Visible       := True;
    Ledit1.Text          := '';
    if LField = TDateTimeField then
       Ledit1.OnDblClick := EditDateEnter;


    LLabel:=TLabel.Create(Owner);
    LLabel.Name         := 'L' + Name;
    LLabel.Parent       := Owner;
    LLabel.Caption      := LName;
    LLabel.Top          := CurTop;
    LLabel.Left         := 10 ;
    LLabel.Width        := 130;
    Self.Height         := CurTop + 120;
end;

function TfrmSearchEn.CreateLCB(Owner: TForm; Name, LName: String;
  Width: Integer; LField: TFieldClass; NNField: String;
  Field: TField): TComponent;
var LEdit:TDBLookUpComboBox;
    LLabel:TLabel;
    DSet,DSet1:TDataSource;
    LeoName:String;
    x:Integer;
begin
    CurTop              := CurTop + 20;
    LEdit:=TDBLookUpComboBox.Create(Self);
    LEdit.Name          := 'LCB' + Name;
    Ledit.Parent        := Owner;
    Ledit.Top           := CurTop;
    Ledit.Left          := 150 ;
    Ledit.Width         := 80;
    Ledit.Visible       := True;
    LeoName             :=TStringField(Field).LookupDataSet.Name;
    LeoName             := 'ds'+LeoName;
    Ledit.Hint          := TStringField(Field).KeyFields;

    for x:= 0 to PDM.ComponentCount -1 do
    begin
      if PDM.Components[x].Name=LeoName then
        begin
         LEdit.ListSource    :=TDataSource(PDM.Components[x]);
//         TDataSource(PDM.Components[x]).DataSet.Active:=True;
        end
    end;

    LEdit.ListField     := TStringField(Field).LookupResultField;
    LEdit.KeyField      := TStringField(Field).LookupKeyFields;

    LLabel:=TLabel.Create(Owner);
    LLabel.Name         := 'L' + Name;
    LLabel.Parent       := Owner;
    LLabel.Caption      := LName;
    LLabel.Top          := CurTop;
    LLabel.Left         := 10 ;
    LLabel.Width        := 130;
    Self.Height         := CurTop + 120;
end;

procedure TfrmSearchEn.FillCombo;
var
	n,LWidth,LIndex : integer;
        NField,NNField,LName:String;
        LField:TFieldClass;
        LFieldItem:TField;
begin
	for	n := 0 to FGrid.Columns.Count - 1 do
        begin
         if Not( FGrid.Columns.Items[n].Field.Calculated ) then
//               ( FGrid.Columns.Items[n].Field.Lookup )) then

         if Not ( FGrid.Columns.Items[n].Field.Lookup) then
            begin
              NField:= Fgrid.Columns.Items[n].FieldName;
              LIndex:= FGrid.DataSource.DataSet.FieldByName(NField).Index;
              LName := FGrid.DataSource.DataSet.Fields[LIndex].DisplayName;
              LWidth:= FGrid.DataSource.DataSet.Fields[LIndex].DisplayWidth;
              LField:= FGrid.DataSource.DataSet.FieldDefs[LIndex].FieldClass;
              NNField:=NField;
              Delete(NField,Pos('.',NField),1);
              CreateEdit(Self,NField,LName,LWidth,LField,NNField);
            end
         else
            begin
              NField:= Fgrid.Columns.Items[n].FieldName;
              LIndex:= FGrid.DataSource.DataSet.FieldByName(NField).Index;
              LName := FGrid.DataSource.DataSet.Fields[LIndex].DisplayName;
              LWidth:= FGrid.DataSource.DataSet.Fields[LIndex].DisplayWidth;
              LField:= FGrid.DataSource.DataSet.FieldDefs[LIndex].FieldClass;
              LFieldItem:= FGrid.DataSource.DataSet.FieldByName(NField);
              NNField:=NField;
              Delete(NField,Pos('.',NField),1);
              CreateLCB(Self,NField,LName,LWidth,LField,NNField,LFieldItem);
            end;
        end
end;

end.
