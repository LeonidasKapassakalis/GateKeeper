Unit CommonOut2000;

Interface

Uses
  Dialogs, StdCtrls, Controls, SysUtils, DB, CheckLst, ADODB, Classes,
  RBaseAvinCard, Globals0, System.Types, Windows, AdoInt, System.AnsiStrings,
  Inifiles, ADOConEd, OutLook2000;

procedure CreateDraftMail(PelaName, CCName, BccName, SubjectStr, Text: String);
procedure CreateDraftMailStd(Mail, PelaName: String);

Implementation

uses FMain;

procedure CreateDraftMail(PelaName, CCName, BccName, SubjectStr, Text: String);
var
  MI: MailItem;
  FaxAd: String;
  OutlookApplication1: TOutlookApplication;
begin
  OutlookApplication1 := TOutlookApplication.Create(frmMain);
  MI                  := OutlookApplication1.CreateItem(olMailItem) as MailItem;
  // MI.Recipients.Add(PelaName);
  MI.To_     := PelaName;
  MI.CC      := CCName;
  MI.BCC     := BccName;
  MI.Subject := SubjectStr;
  MI.Body    := Text;
  // MI.Attachments.Add(AttachFile,EmptyParam,EmptyParam,EmptyParam);
  try
    MI.Save;
  except
    MessageDlg('Πρόβλημα στην αποστολή Mail.', mtError, [mbOK], 0);
  end;
end;

procedure CreateDraftMailStd(Mail, PelaName: String);
var
  MI: MailItem;
  FaxAd: String;
  OutlookApplication1: TOutlookApplication;
begin
  OutlookApplication1 := TOutlookApplication.Create(frmMain);
  MI                  := OutlookApplication1.CreateItem(olMailItem) as MailItem;
  // MI.Recipients.Add(PelaName);
  MI.To_     := Mail;
  MI.Subject := PelaName;
  // MI.Body         := Text;
  // MI.Attachments.Add(AttachFile,EmptyParam,EmptyParam,EmptyParam);
  try
    MI.Save;
  except
    MessageDlg('Πρόβλημα στην αποστολή Mail.', mtError, [mbOK], 0);
  end;
end;

End.
