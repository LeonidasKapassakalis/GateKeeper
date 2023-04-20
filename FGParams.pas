unit FGParams;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfrmGParams = class(TForm)
    ColorDialog1: TColorDialog;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    PrinterSetupDialog1: TPrinterSetupDialog;
    FontDialog1: TFontDialog;
    CheckBox1: TCheckBox;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Edit1Click(Sender: TObject);
    procedure Edit1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGParams: TfrmGParams;

implementation

uses FMain;

{$R *.DFM}

procedure TfrmGParams.Edit1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    begin
      ColorDialog1.Color := (Sender as TEdit).Color;
      if ColorDialog1.Execute then
        begin
          (Sender as TEdit).Color := ColorDialog1.Color;
          (Sender as TEdit).Refresh;
        end
    end
  else
    begin
      FontDialog1.Font := (Sender as TEdit).Font;
      if FontDialog1.Execute then
        begin
          (Sender as TEdit).Font := FontDialog1.Font;
          (Sender as TEdit).Refresh;
        end
    end;
end;

procedure TfrmGParams.Edit1DblClick(Sender: TObject);
begin
  if FontDialog1.Execute then
    begin
      (Sender as TEdit).Font := FontDialog1.Font;
      (Sender as TEdit).Refresh;
    end;
end;

procedure TfrmGParams.FormCreate(Sender: TObject);
var
  c, Ccolor: String;
  i, iColor: Integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
    begin
      if Self.Components[i] is TEdit then
        begin
          With Self.Components[i] as TEdit do
            begin
              c := inttostr(Tag);
              frmMain.ReadIniG('Color' + c, Ccolor);
              if Ccolor > '' then
                Color := StrtoInt(Ccolor);
              frmMain.ReadIniG('ColorF' + c, Ccolor);
              if Ccolor > '' then
                Font.Color := StrtoInt(Ccolor);
              frmMain.ReadIniG('FontCrSet' + c, Ccolor);
              if Ccolor > '' then
                Font.Charset := StrtoInt(Ccolor);
              frmMain.ReadIniG('FontCrSetFontName' + c, Ccolor);
              if Ccolor > '' then
                Font.Name := Ccolor;
              frmMain.ReadIniG('FontCrSetFontSize' + c, Ccolor);
              if Ccolor > '' then
                Font.Size := StrtoInt(Ccolor);
              frmMain.ReadIniG('FontCrSetFontHeight' + c, Ccolor);
              if Ccolor > '' then
                Font.Height := StrtoInt(Ccolor);
              frmMain.ReadIniG('FontCrSetFontPixelPerInch' + c, Ccolor);
              if Ccolor > '' then
                Font.PixelsPerInch := StrtoInt(Ccolor);
              frmMain.ReadIniG('FontCrSetFontStyle' + c, Ccolor);
              if Ccolor > '' then
                begin
                  if Length(Ccolor) < 4 then
                    begin
                      if Length(Ccolor) = 3 then
                        Ccolor := Concat('0', Ccolor);
                      if Length(Ccolor) = 2 then
                        Ccolor := Concat('00', Ccolor);
                      if Length(Ccolor) = 1 then
                        Ccolor := Concat('000', Ccolor);
                      if Length(Ccolor) = 0 then
                        Ccolor := Concat('0000', Ccolor);
                    end;
                  if Ccolor[1] = '1' then
                    Font.Style := Font.Style + [fsBold];
                  if Ccolor[2] = '1' then
                    Font.Style := Font.Style + [fsItalic];
                  if Ccolor[3] = '1' then
                    Font.Style := Font.Style + [fsUnderline];
                  if Ccolor[4] = '1' then
                    Font.Style := Font.Style + [fsStrikeOut];
                end;
            end;
        end;
    end;
end;

procedure TfrmGParams.Button1Click(Sender: TObject);
var
  c, Ccolor: String;
  i, iColor: Integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
    begin
      if Self.Components[i] is TEdit then
        begin
          With Self.Components[i] as TEdit do
            begin
              c      := inttostr(Tag);
              Ccolor := inttostr(Color);
              frmMain.WriteIniG('Color' + c, Ccolor);
              Ccolor := inttostr(Font.Color);
              frmMain.WriteIniG('ColorF' + c, Ccolor);
              Ccolor := inttostr(Font.Charset);
              frmMain.WriteIniG('FontCrSet' + c, Ccolor);
              Ccolor := Font.Name;
              frmMain.WriteIniG('FontCrSetFontName' + c, Ccolor);
              Ccolor := inttostr(Font.Size);
              frmMain.WriteIniG('FontCrSetFontSize' + c, Ccolor);
              Ccolor := inttostr(Font.Height);
              frmMain.WriteIniG('FontCrSetFontHeight' + c, Ccolor);
              Ccolor := inttostr(Font.PixelsPerInch);
              frmMain.WriteIniG('FontCrSetFontPixelPerInch', Ccolor);
              iColor := 0;
              if Font.Style >= [fsBold] then
                iColor := iColor + 1000;
              if Font.Style >= [fsItalic] then
                iColor := iColor + 100;
              if Font.Style >= [fsUnderline] then
                iColor := iColor + 10;
              if Font.Style >= [fsStrikeOut] then
                iColor := iColor + 1;
              Ccolor   := inttostr(iColor);
              frmMain.WriteIniG('FontCrSetFontStyle' + c, Ccolor);
            end;
        end;
    end;
end;

end.
