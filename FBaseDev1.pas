unit FBaseDev1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FBaseDev0, Vcl.ActnList, Vcl.Menus,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ImgList,
  cxDBLookupComboBox, cxMRUEdit,
  Data.Win.ADODB, cCalc2, Printers,
  cxDBEdit, JvBaseDlg, JvCalc;

type
  TfrmBaseDev1 = class(TfrmBaseDev0)
    MainMenu1: TMainMenu;
    actEdit1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    actBrowse1: TMenuItem;
    actEdit2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    N5: TMenuItem;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    UpdComAct1: TMenuItem;
    actFullFill: TAction;
    ToolButton7: TToolButton;
    N6: TMenuItem;
    ToolButton8: TToolButton;
    actMainOKFF: TAction;
    StatusBar1: TStatusBar;
    JvCalculator1: TJvCalculator;
    actCalc: TAction;
    ToolButtonCalc: TToolButton;
    actFormPrint: TAction;
    PrintDialog1: TPrintDialog;
    TBPrintForm: TToolButton;
    procedure UpdateActionsExecute(Sender: TObject);
    procedure actFullFillExecute(Sender: TObject);
    procedure actCalcExecute(Sender: TObject);
    procedure actFormPrintExecute(Sender: TObject);
  private
    ActionList1: TActionList;
    { Private declarations }
  public
    function MakeFinalCheck: Boolean; virtual; abstract;
    procedure PrintCustImage;
    procedure PrintCust(TextList:TStringList);
    procedure LoadMru(editMru: TcxDBMRUEdit; Data: TCustomADODataSet; FieldIndex:Integer=0);
    procedure LoadMruEdt(editMru: TcxMRUEdit; Data: TCustomADODataSet; FieldIndex:Integer=0);
    procedure PlusState(const LeoCategory: String);
    procedure SetState(const LeoCategory: String);
    { Public declarations }
  end;

var
  frmBaseDev1: TfrmBaseDev1;

implementation

{$R *.dfm}

procedure TfrmBaseDev1.SetState(const LeoCategory: String);
var
  i: Integer;
begin
  for i := 0 to ActionMainList.ActionCount - 1 do
    begin
      if ActionMainList.Actions[i].Category = LeoCategory then
        begin
          TCustomAction(ActionMainList.Actions[i]).Visible := True;
          TCustomAction(ActionMainList.Actions[i]).Enabled := True;
        end
      else
        begin
          TCustomAction(ActionMainList.Actions[i]).Visible := False;
          TCustomAction(ActionMainList.Actions[i]).Enabled := False;
        end;
      { TODO : Clear }
      // if ((LoginGroup <> 0) And (ActionList1.Actions[i].Tag = 9999)) then
      // TCustomAction(ActionList1.Actions[i]).Visible := False;
    end;
  // if (FModal and (LeoCategory = 'Before')) then
  // PlusState('Modal');
end;

procedure TfrmBaseDev1.UpdateActionsExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmBaseDev1.PlusState(const LeoCategory: String);
var
  i: Integer;
begin
  for i := 0 to ActionMainList.ActionCount - 1 do
    if ActionMainList.Actions[i].Category = LeoCategory then
      begin
        TCustomAction(ActionMainList.Actions[i]).Visible := True;
        TCustomAction(ActionMainList.Actions[i]).Enabled := True;
      end;
end;


procedure TfrmBaseDev1.actFormPrintExecute(Sender: TObject);
var Sl:TStringList;
begin
  inherited;
  if PrintDialog1.Execute then
    begin
      Self.PrintScale := poPrintToFit;
      Sl:=TStringList.Create;
      Sl.Append('Cytop A.E.');
      Sl.Append('Τηλ 1234567890');
      Sl.Append(Datetimetostr(Now));
      Self.PrintCustImage;//(Sl);
      Sl.Free;
//Printer.Canvas.TextOut(0,0,'Place any text here');
end;
end;

procedure TfrmBaseDev1.actFullFillExecute(Sender: TObject);
begin
  inherited;
  if Assigned(SelectMainData) then
    if SelectMainData.FieldByName('FullFilled').AsBoolean = True then
      // if MakeFinalCheck then
      // begin
      // SelectMainData.Edit;
      // SelectMainData.FieldByName('FullFilled').AsBoolean := True;
      // SelectMainData.Post;
      // end
      // else
      // begin
      // MessageDlg('Δεν μπορεί να γίνει ολοκλήρωση.', mtError, [mbOK], 0);
      // end
      // else
      begin
        if MessageDlg('Θα γίνει αναίρεση της ολοκλήρωσης.', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            SelectMainData.Edit;
            SelectMainData.FieldByName('FullFilled').AsBoolean := False;
            SelectMainData.Post;
          end;
      end;
  // SelectMainData.Last;
end;

procedure TfrmBaseDev1.actCalcExecute(Sender: TObject);
var Leo:TTheCalculator;
begin
  inherited;

  Leo := TTheCalculator.Create(Self);
  Leo.ShowModal;
  Leo.Free;
end;

procedure TfrmBaseDev1.LoadMru(editMru: TcxDBMRUEdit; Data: TCustomADODataSet; FieldIndex:Integer=0);
begin
  Data.DisableControls;
  Data.First;
  repeat
    editMru.Properties.LookupItems.Add(Trim(Data.Fields[FieldIndex].AsString));
    Data.Next
  until Data.Eof;
  Data.EnableControls;
end;

procedure TfrmBaseDev1.LoadMruEdt(editMru: TcxMRUEdit; Data: TCustomADODataSet; FieldIndex:Integer=0);
begin
  Data.DisableControls;
  Data.First;
  repeat
    editMru.Properties.LookupItems.Add(Trim(Data.Fields[FieldIndex].AsString));
    Data.Next
  until Data.Eof;
  Data.EnableControls;
end;


procedure TfrmBaseDev1.PrintCust(TextList:TStringList);
var
  FormImage: TBitmap;
  InfoSize: DWORD;
  ImageSize: DWORD;
  Bits: HBITMAP;
  DIBWidth, DIBHeight: Longint;
  PrintWidth, PrintHeight: Longint;
  Info: PBitmapInfo;
  Image: Pointer;
  SLines,SAdd:Integer;
begin
  Printer.BeginDoc;
  try
    FormImage := GetFormImage;
    Canvas.Lock;
    try
      { Paint bitmap to the printer }
      with Printer, Canvas do
      begin
        Bits := FormImage.Handle;
        GetDIBSizes(Bits, InfoSize, ImageSize);
        Info := AllocMem(InfoSize);
        try
          Image := AllocMem(ImageSize);
          try
            GetDIB(Bits, 0, Info^, Image^);
          with Info.bmiHeader do
          begin
            DIBWidth := biWidth;
            DIBHeight := biHeight;
          end;
          case PrintScale of
            poProportional:
              begin
                PrintWidth := MulDiv(DIBWidth, GetDeviceCaps(Handle,
                  LOGPIXELSX), PixelsPerInch);
                PrintHeight := MulDiv(DIBHeight, GetDeviceCaps(Handle,
                  LOGPIXELSY), PixelsPerInch);
              end;
            poPrintToFit:
              begin
                PrintWidth := MulDiv(DIBWidth, PageHeight, DIBHeight);
                if PrintWidth < PageWidth then
                  PrintHeight := PageHeight
                else
                begin
                  PrintWidth := PageWidth;
                  PrintHeight := MulDiv(DIBHeight, PageWidth, DIBWidth);
                end;
              end;
          else
            PrintWidth := DIBWidth;
            PrintHeight := DIBHeight;
          end;
            StretchDIBits(Canvas.Handle, 0, 0, PrintWidth, PrintHeight, 0, 0,
              DIBWidth, DIBHeight, Image, Info^, DIB_RGB_COLORS, SRCCOPY);
          finally
            FreeMem(Image, ImageSize);
          end;
        finally
          FreeMem(Info, InfoSize);
        end;
      end;
    finally
      Canvas.Unlock;
      FormImage.Free;
    end;
  finally
    SAdd:=100;
    for  SLines := 0 to TextList.Count-1 do
    begin
       Printer.Canvas.TextOut(0,PrintHeight+SAdd,TextList[SLines]);
       SAdd:=SAdd+100
    end;
    Printer.EndDoc;
  end;
end;

procedure TfrmBaseDev1.PrintCustImage;
var
  FormImage: TBitmap;
  InfoSize: DWORD;
  ImageSize: DWORD;
  Bits: HBITMAP;
  DIBWidth, DIBHeight: Longint;
  PrintWidth, PrintHeight: Longint;
  Info: PBitmapInfo;
  Image: Pointer;
  Gra:TBitmap;
begin
  Printer.BeginDoc;
  Gra:=TBitmap.Create;
  try
    Gra.LoadFromFile('LPCLOGO.bmp');
    Printer.Canvas.Draw(0, 0, Gra);
  except
  end;
  try
    FormImage := GetFormImage;
    Canvas.Lock;
    try
      { Paint bitmap to the printer }
      with Printer, Canvas do
      begin
        Bits := FormImage.Handle;
        GetDIBSizes(Bits, InfoSize, ImageSize);
        Info := AllocMem(InfoSize);
        try
          Image := AllocMem(ImageSize);
          try
            GetDIB(Bits, 0, Info^, Image^);
          with Info.bmiHeader do
          begin
            DIBWidth := biWidth;
            DIBHeight := biHeight;
          end;
          case PrintScale of
            poProportional:
              begin
                PrintWidth := MulDiv(DIBWidth, GetDeviceCaps(Handle,
                  LOGPIXELSX), PixelsPerInch);
                PrintHeight := MulDiv(DIBHeight, GetDeviceCaps(Handle,
                  LOGPIXELSY), PixelsPerInch);
              end;
            poPrintToFit:
              begin
                PrintWidth := MulDiv(DIBWidth, PageHeight, DIBHeight);
                if PrintWidth < PageWidth then
                  PrintHeight := PageHeight
                else
                begin
                  PrintWidth := PageWidth;
                  PrintHeight := MulDiv(DIBHeight, PageWidth, DIBWidth);
                end;
              end;
          else
            PrintWidth := DIBWidth;
            PrintHeight := DIBHeight;
          end;
            StretchDIBits(Canvas.Handle, 0, 400, PrintWidth, PrintHeight, 0, 0,
              DIBWidth, DIBHeight, Image, Info^, DIB_RGB_COLORS, SRCCOPY);
            Draw(0, 0, Gra);
          finally
            FreeMem(Image, ImageSize);
          end;
        finally
          FreeMem(Info, InfoSize);
        end;
      end;
    finally
      Canvas.Unlock;
      FormImage.Free;
    end;
  finally
    Printer.EndDoc;
  end;
end;



end.
