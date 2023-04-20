unit About;

interface

uses Windows, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, info, SysUtils, jpeg;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    OKButton: TButton;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    LProductName: TLabel;
    LVersion: TLabel;
    LCopyright: TLabel;
    LComments: TLabel;
    Label5: TLabel;
    LCompanyName: TLabel;
    CompanyName: TLabel;
    Image1: TImage;
    EPInfoExe1: TEPInfoExe;
    LCompileDate: TLabel;
    Label1: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure OKButtonKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.DFM}

procedure TAboutBox.FormActivate(Sender: TObject);
begin
  EPInfoExe1.LangId  := '040904E4';
  EPInfoExe1.ExeName := Application.ExeName;
  EPInfoExe1.Execute;

  LVersion.Caption     := EPInfoExe1.FileVersion;
  LCompanyName.Caption := EPInfoExe1.CompanyName;
  LComments.Caption    := EPInfoExe1.Comments;
  LCopyright.Caption   := EPInfoExe1.LegalCopyright;
  LProductName.Caption := EPInfoExe1.InternalName;
  LCompileDate.Caption := DateTimeToStr(FileDateToDateTime(FileAge(ParamStr(0))));
  self.Refresh;
end;

procedure TAboutBox.OKButtonKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Leo: Integer;
  Image2: TJpegImage;
  LeoKey: Boolean;
begin

  if (Key in [VK_F2, VK_F3, VK_F4, VK_F5, VK_F6, VK_F7, VK_F8, VK_F9, VK_F10, VK_F11]) then
    LeoKey := True
  else
    LeoKey := False;

  if ((Shift = [ssShift, ssAlt, ssCtrl]) and ((Key = VK_F1) or LeoKey)) then
    begin
      self.ModalResult := 0;
      Image1.Visible   := True;
      if Not(LeoKey) then
        Leo := SysUtils.DayOfWeek(now())
      else
        case Key of
          VK_F2:
            Leo := 12;
          VK_F3:
            Leo := 13;
          VK_F4:
            Leo := 14;
          VK_F5:
            Leo := 15;
          VK_F6:
            Leo := 16;
          VK_F7:
            Leo := 17;
          VK_F8:
            Leo := 18;
          VK_F9:
            Leo := 19;
          VK_F10:
            Leo := 20;
          VK_F11:
            Leo := 21;
        end;
      Image2 := TJpegImage.Create;
      Image2.LoadFromFile('DbApp' + inttostr(Leo) + '.xxx');
      Image1.Picture.Assign(Image2);
      Image1.Width  := Image1.Picture.Width;
      Image1.Height := Image1.Picture.Height;
      // Image1.Repaint;
      // self.Resize;
      Image2.Free;
      Panel1.Visible := False;
    end;
  if ((Shift = [ssShift, ssAlt, ssCtrl]) and (Key = VK_F12)) then
    begin
      self.ModalResult := 0;
      Image1.Visible   := False;
      Panel1.Visible   := True;
      OKButton.Left    := 144;
      OKButton.Top     := 172;
    end;
end;

end.
