Unit Globals;

Interface

Const
  JOB_ABOUT = 1;
  JOB_COMPANY = 2;
  JOB_AREA = 3;
  JOB_LOCATION = 4;
  JOB_STATION = 5;
  JOB_SGROUP = 6;
  JOB_SCLASS = 7;
  JOB_IMPORT = 8;
  JOB_IGROUP = 9;
  JOB_ICLASS = 10;
  JOB_CGROUP = 11;
  JOB_CCLASS = 12;
  JOB_SITEM = 13;
  JOB_CUSTOMER = 14;
  JOB_VTYPE = 15;
  JOB_ACARD = 16;
  JOB_EXPORT_BLACK_LIST = 17;
  JOB_EXPORT_NEW_CARDS = 18;
  JOB_SYSTEM_PARAMS = 19;
  JOB_UGROUP = 20;
  JOB_UUSER = 21;
  JOB_TRAN = 22;
  JOB_PRN_STATION = 23;
  JOB_PRN_SITEM = 24;
  JOB_PRN_CUSTOMER = 25;
  JOB_PRN_ACARD = 26;
  JOB_PRN_TRAN = 27;
  JOB_BRANCH = 28;
  JOB_STRAN_BATCH = 29;
  JOB_ATRAN_BATCH = 30;
  JOB_STRAN = 31;
  JOB_ATRAN = 32;
  JOB_DISPCARDDATA = 200;
  JOB_MGROUP = 201;
  JOB_MSEVR = 202;
  JOB_TRCALL = 203;
  JOB_DIRECTMAIL = 204;
  JOB_SALESMEN = 205;
  JOB_DIRECTMAILPRINT = 206;
  JOB_TEXTTAB = 207;
  JOB_AREAB = 208;
  JOB_MERRORG = 209;
  JOB_MERROR = 210;
  JOB_ENHMSAP = 211;
  JOB_PRNLOGAR = 300;
  JOB_DIAK = 301;
  JOB_STTRANS = 302;
  JOB_PETRANS = 303;
  JOB_SAPIMPORT = 304;
  JOB_DOCTYP = 305;
  JOB_PK = 306;
  JOB_SGL = 307;
  JOB_DPS = 308;
  JOB_TRCALLPRN = 309;
  JOB_PRNMESS = 310;
  JOB_DISPSTAT = 311;
  JOB_PRNDERR = 312;
  JOB_COTRANS = 313;
  JOB_TRANP = 314;
  JOB_DISPCOMPDATA = 315;
  JOB_MERRPPG = 316;
  JOB_MERRPP = 317;
  JOB_STAT = 318;
  JOB_PRNDERRPP = 319;
  JOB_AREAC = 320;
  JOB_AREAD = 321;
  JOB_AREAE = 322;
  JOB_DFORM = 500;
  JOB_SFORM = 501;
  JOB_FORMACTION = 502;
  JOB_SFORMACTION = 503;
  JOB_EMPLOYEES = 504;
  JOB_ENHMTRANCOMPRO = 505;
  JOB_TRLOCALL = 506;

  JOB_SITEMDISCOUNT = 600;
  JOB_ENHMDISCALL = 601;
  JOB_ATRANDIS = 602;
  JOB_ATRANDISC = 603;

  JOB_PRN_TRAN_EMP = 604;

  JOB_ENHMDLCALL = 700;
  JOB_DLTRAN = 701;
  JOB_LASTCALLDATE = 702;
  JOB_MAIL = 900;

  JOB_MERCHANT = 910;
  JOB_TERMINAL = 920;

  INI_ADO_SECTION = 'ADO_SECTION';
  INI_CONNECTION_STRING_LINE = 'ConnectionString';
  INI_EXPORT_STRING_LINE = 'ExportConnectionString';
  INI_EXPORT_SAP_PRAT = 'ExportSAPPratConnectionString';
  INI_EXPORT_SAP_DAILY = 'ExportSAPDAILYConnectionString';
  INI_EXPORT_SAP_PARAKRAT = 'ExportSAPParakratConnectionString';
  INI_EXPORT_SAP_PARAKRATK = 'ExportSAPParakratKentConnectionString';
  INI_EXPORT_SAP_PARAKRATY = 'ExportSAPParakratYpokConnectionString';
  INI_IMPORT_SAP_MOVEMENTS = 'ImportSapMovementsConnectionString';
  INI_VAT_CODE_COMMISSION = 'VatCodeForCommissionString';
  EXPORT_BLACKLIST = 'ExportBlackList';

  MAIL_TO = 'MailToAddress';
  MAIL_CC = 'MailCCAddress';
  MAIL_BCC = 'MailBCCAddress';

  ADO_ERR_NONE = 0;
  ADO_ERR_OPEN_TABLE = 1;

Var
  gADOConStr: AnsiString;
  gExportADOConStr: AnsiString;
  gADOError: Integer;

  gUGroupID, LoginGroup: Integer;
  gUUserDESCR, LoginName: AnsiString;
  gUUserID, LoginId: Integer;

  // gRegNoGreek: String[80]
  // = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ¡¬√ƒ≈∆«»… ÀÃÕŒœ–—”‘’÷◊ÿŸ¢∏∫πæø⁄€1234567890';
  // gRegNoLatin: String[80]
  // = 'ABCDEFGHIJKLMNOPQRSTUVWXYZAB  EZH IK MN O R TY X          1234567890';

Implementation

// Now In Common
// Function RegNoConv(Ch: ansiChar): ansiChar;
// Var
// i, Len: Integer;
// Begin
// result := ' ';
// Len    := length(gRegNoGreek);
// For i  := 1 To Len Do
// Begin
// If (gRegNoGreek[i] = Ch) Then
// Begin
// result := gRegNoLatin[i];
// exit;
// End;
// End;
// End;
// Now In Common

End.
