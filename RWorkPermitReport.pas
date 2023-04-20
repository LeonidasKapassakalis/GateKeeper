unit RWorkPermitReport;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RBaseAvinCard, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB, QRExport,
  QRWebFilt, QRPDFFilt, Common, QRXMLSFilt, RBaseAdo, QRNewXLSXFilt, QRXLSXFilt;

type
  TrptWorkPermitReport = class(TrptBaseAdo)
    QRBand2: TQRBand;
    DataSource1: TDataSource;
    ADOQuery1Id: TIntegerField;
    ADOQuery1Issue_Date: TDateTimeField;
    ADOQuery1Department_Id: TIntegerField;
    ADOQuery1Contractor_Id: TIntegerField;
    ADOQuery1Number_of_Workers: TIntegerField;
    ADOQuery1Μονάδα_Εργασίας: TWideStringField;
    ADOQuery1Εξοπλισμος: TWideStringField;
    ADOQuery1Start_Time: TDateTimeField;
    ADOQuery1End_Time: TDateTimeField;
    ADOQuery1ΠΕΡΙΓΡΑΦΗ_ΕΡΓΑΣΙΑΣ: TWideStringField;
    ADOQuery1ΙΚΡΙΩΜΑ: TBooleanField;
    ADOQuery1ΕΚΣΚΑΦΗ: TBooleanField;
    ADOQuery1ΓΕΡΑΝΟΣ: TBooleanField;
    ADOQuery1ΕΙΣΟΔΟΣ_ΣΕ_ΚΛΕΙΣΤΟ_ΧΩΡΟ: TBooleanField;
    ADOQuery1ΘΕΡΜΗ_ΕΡΓΑΣΙΑ: TBooleanField;
    ADOQuery1ΡΑΔΙΟΓΡΑΦΙΕΣ: TBooleanField;
    ADOQuery1ΚΟΙΝΗ_ΕΡΓΑΣΙΑ: TBooleanField;
    ADOQuery1Απαιτείται_έλεγχος_αερίων: TBooleanField;
    ADOQuery1Εύφλεκετα: TBooleanField;
    ADOQuery1Η2S: TBooleanField;
    ADOQuery1CO: TBooleanField;
    ADOQuery1O2: TBooleanField;
    ADOQuery1ΧΕΙΡΙΣΤΗΣ_ΕΛΕΓΧΟ: TWideStringField;
    ADOQuery1ΚΩΔΙΚΟΣ_ΟΡΓΑΝΟΥ: TWideStringField;
    ADOQuery1Αποσυμπίεση_εξοπλισμού: TBooleanField;
    ADOQuery1Υγρά_εγλωβισμένα_βάνες: TBooleanField;
    ADOQuery1Καθαρίστηκε_εξοπλισμός: TBooleanField;
    ADOQuery1Συμπληρωματικός_φωτισμός: TBooleanField;
    ADOQuery1Oχήματα_φλογοπαγίδες: TBooleanField;
    ADOQuery1Προειδοποιητικά_σήματα: TBooleanField;
    ADOQuery1Εκκένωση_εξοπλισμού: TBooleanField;
    ADOQuery1Απομόνωση_εξοπλισμού: TBooleanField;
    ADOQuery1Καθαρισμός_ατμός: TBooleanField;
    ADOQuery1Καθαρισμός_άζωτο: TBooleanField;
    ADOQuery1Καθαρισμός_νερό: TBooleanField;
    ADOQuery1Κάλυψη_υπονόμων: TBooleanField;
    ADOQuery1Συμπληρωματικά_μέτρα: TWideStringField;
    ADOQuery1Παρίσταση_χειριστής: TWideStringField;
    ADOQuery1Ιικρίωμα_πιστοποιημένο: TBooleanField;
    ADOQuery1Γνωμάτευση_ΑΕΕ: TBooleanField;
    ADOQuery1ΑΑ_βεβαίωσης_ικριώματος: TWideStringField;
    ADOQuery1Έλαβα_γνώση_ΑΕΕ: TWideStringField;
    ADOQuery1Υπόγειοι_αγωγοί: TBooleanField;
    ADOQuery1Υπόγεια_καλώδια: TBooleanField;
    ADOQuery1Εκσκαφη_με_μηχανικα_μεσα: TBooleanField;
    ADOQuery1Αναγνώριση_του_χώρου_εκσκαφής: TBooleanField;
    ADOQuery1Συμπληρωματικά_μέτρα_εκσκαφή: TWideStringField;
    ADOQuery1Συμπληρώθηκε_το_έντυπο_ελέγχου: TBooleanField;
    ADOQuery1Αρ_εντύπου_κλειστου_χώρου: TWideStringField;
    ADOQuery1Έγινε_μέτρηση_έλεγχος_αερίων: TBooleanField;
    ADOQuery1Έλαβα_γνώση_και_συμφωνώ_ο_αιτήσας_την_ΑΕΕ: TWideStringField;
    ADOQuery1Ηλεκτρολογική_απομόνωση: TBooleanField;
    ADOQuery1Συνεχής_παρουσία_ηλεκτρολόγου: TBooleanField;
    ADOQuery1Καλώδια_μονωμένα: TBooleanField;
    ADOQuery1Φωτιστικά_σώματα: TBooleanField;
    ADOQuery1Πινακίδα_ηλεκτρικής_απομόνωσης: TBooleanField;
    ADOQuery1Αρ_πινακιδίων_απομόνωσης: TIntegerField;
    ADOQuery1Ηλεκτρολόγος: TWideStringField;
    ADOQuery1Έντυπο_θερμές_εργασίες: TBooleanField;
    ADOQuery1Αρ_εντύπου_θερμές_εργασίες: TWideStringField;
    ADOQuery1Έντυπο_ραδιογραφίες: TBooleanField;
    ADOQuery1Αρ_εντύπου_ραδιογραφίες: TWideStringField;
    ADOQuery1Κράνος_κεφαλής: TBooleanField;
    ADOQuery1Γάντια_εργασίας: TBooleanField;
    ADOQuery1Ηλεκτρολογικά_γάντια: TBooleanField;
    ADOQuery1Οματουάλια: TBooleanField;
    ADOQuery1Προσωπίδα: TBooleanField;
    ADOQuery1Ελαστικά_υποδήματα: TBooleanField;
    ADOQuery1Ωτοασπίδες: TBooleanField;
    ADOQuery1Φόρμα_εργασίας: TBooleanField;
    ADOQuery1Ζώνη_ανάρτησης_σε_ύψος: TBooleanField;
    ADOQuery1Αναπνευστική_συσκευή: TBooleanField;
    ADOQuery1Αποφεύγετε_επαφή_με_το_δέρμα: TBooleanField;
    ADOQuery1Συμπληρωματικά_μέτρα_Ατομικής_Προστασίας: TWideStringField;
    ADOQuery1Πυροσβεστήρες: TIntegerField;
    ADOQuery1Μάνικες: TIntegerField;
    ADOQuery1Αλλα_μέσα_πυρόσβεσης: TWideStringField;
    ADOQuery1Ειδικά_εργαλεία: TWideStringField;
    ADOQuery1Εργοδηγος_τμήματος: TWideStringField;
    ADOQuery1Προβλεπόμενα_ΜΑΠ: TBooleanField;
    ADOQuery1Προβλεπόμενα_μέτρα_ασφαλείας: TBooleanField;
    ADOQuery1ΤΑ_εγκατάστασης: TBooleanField;
    ADOQuery1Η_ΕΡΓΑΣΙΑ_ΔΙΕΚΟΠΗ_ΑΠΟ_ΤΟΝ: TWideStringField;
    ADOQuery1Η_ΕΡΓΑΣΙΑ_ΔΙΕΚΟΠΗ_ΩΡΑ: TWideStringField;
    ADOQuery1ΛΟΓΟΣ_ΑΝΑΚΛΗΣΗΣ: TWideStringField;
    ADOQuery1InsUsr: TIntegerField;
    ADOQuery1InsDT: TDateTimeField;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText36: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    qryContractors: TADOQuery;
    qryContractorsid: TIntegerField;
    qryContractorsName: TWideStringField;
    qryContractorsCompany: TWideStringField;
    qryContractorsVAT: TWideStringField;
    qryContractorsInsUsr: TIntegerField;
    qryContractorsInsDT: TDateTimeField;
    qryContractorsNotes: TWideStringField;
    dtsContractors: TDataSource;
    qryDepartments: TADOQuery;
    qryDepartmentsid: TIntegerField;
    qryDepartmentsName: TWideStringField;
    ADOQuery1LDepartment: TStringField;
    ADOQuery1LContractor: TStringField;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText52: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    ADOQuery1Εύφλεκετα_Value: TFloatField;
    ADOQuery1Η2S_Value: TFloatField;
    ADOQuery1CO_Value: TFloatField;
    ADOQuery1O2_Value: TFloatField;
    ADOQuery1Έντυπο_γερανου: TBooleanField;
    ADOQuery1Αρ_εντύπου_γερανου: TWideStringField;
    ADOQuery1Foreman_Id: TIntegerField;
    ADOQuery1Ο_αιτων_την_αδεια_εκτελεσης_εργασιας: TWideStringField;
    ADOQuery1Ο_Τεχνικος_Ασφαλειας_της_εγκαταστασης: TWideStringField;
    ADOQuery1Εγκρίση_ΤΑ_Υπερ: TBooleanField;
    ADOQuery1FullFilled: TBooleanField;
    ADOQuery1FullFilledDT: TDateTimeField;
    ADOQuery1FullFilledUsr: TIntegerField;
    ADOQuery1FullFilledCancel: TBooleanField;
    ADOQuery1Απαιτείται_συνεχής_έλεγχος_αερίων: TBooleanField;
    QRDBText62: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText73: TQRDBText;
    QRSubDetail13: TQRSubDetail;
    QRLabel33: TQRLabel;
    QRDBText63: TQRDBText;
    QRSubDetail14: TQRSubDetail;
    QRLabel34: TQRLabel;
    QRSubDetail15: TQRSubDetail;
    QRLabel35: TQRLabel;
    QRDBText78: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRDBText84: TQRDBText;
    QRDBText85: TQRDBText;
    QRDBText86: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText87: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText89: TQRDBText;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText75: TQRDBText;
    QRDBText76: TQRDBText;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRSubDetail16: TQRSubDetail;
    QRLabel48: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRDBText77: TQRDBText;
    QRDBText91: TQRDBText;
    QRDBText92: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText2: TQRDBText;
    QRSubDetail17: TQRSubDetail;
    QRLabel19: TQRLabel;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel18: TQRLabel;
    ADOQuery1Εργοδηγος_εργολάβου: TWideStringField;
    QRDBText66: TQRDBText;
    QRDBText93: TQRDBText;
    QRSysData1: TQRSysData;
    QRSubDetail18: TQRSubDetail;
    QRSubDetail19: TQRSubDetail;
    QRDBText94: TQRDBText;
    QRDBText95: TQRDBText;
    QRLabel52: TQRLabel;
    QRDBText97: TQRDBText;
    QRDBText98: TQRDBText;
    QRDBText99: TQRDBText;
    QRLabel53: TQRLabel;
    QRSubDetail20: TQRSubDetail;
    QRSubDetail21: TQRSubDetail;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRSubDetail22: TQRSubDetail;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    ADOQuery1Αυτόνομη_αναπνευστική_συσκευή: TBooleanField;
    ADOQuery1Airpack: TBooleanField;
    ADOQuery1Διαφυγής_10_λεπτών: TBooleanField;
    ADOQuery1Προσωπικά_ολοκλήρου_Προσώπου_με_φίλτρο: TBooleanField;
    ADOQuery1Μάσκα_Σκόνης: TBooleanField;
    ADOQuery1Παρατηρήσεις: TWideStringField;
    ADOQuery1γ1_Περιέχοντα_τώρα: TBooleanField;
    ADOQuery1γ1_Περιέχοντα_πρίν: TBooleanField;
    ADOQuery1γ1_Εύφλεκτο: TBooleanField;
    ADOQuery1γ1_Εκρηκτικό: TBooleanField;
    ADOQuery1γ1_Διαβρωτικό: TBooleanField;
    ADOQuery1γ1_Τοξικό: TBooleanField;
    ADOQuery1γ1_Καυστικό: TBooleanField;
    ADOQuery1γ1_Ερεθιστικό: TBooleanField;
    ADOQuery1γ1_Εξοπλισμός_υπό_ηλεκτρική_τάση: TBooleanField;
    ADOQuery1γ1_Ενεργός_τώρα: TBooleanField;
    ADOQuery1γ1_Ενεργός_πρίν: TBooleanField;
    ADOQuery1γ2_Πτώση_από_ύψος: TBooleanField;
    ADOQuery1γ2_Υψηλή_πίεση: TBooleanField;
    ADOQuery1γ2_Ηλεκτρικοί_Κίνδυνοι: TBooleanField;
    ADOQuery1γ2_Είσοδος_σε_κλειστό_Χώρο: TBooleanField;
    ADOQuery1γ2_Υψηλή_Θερμοκρασία: TBooleanField;
    ADOQuery1γ2_Ραδιογραφία: TBooleanField;
    ADOQuery1γ2_Πιθανότητα_Διαρροής: TBooleanField;
    ADOQuery1γ2_Χημικά: TBooleanField;
    ADOQuery1γ2_Άλλα_: TWideStringField;
    ADOQuery1γ3_Μονάδα_σε_λειτουργεία: TBooleanField;
    ADOQuery1γ3_Υπόγειες_ηλεκτρικές_γραμμές_υπό_τάση: TBooleanField;
    ADOQuery1γ3_H2S_Υδρόθειο: TBooleanField;
    ADOQuery1γ3_HC_Υδρογονάνφρακες: TBooleanField;
    ADOQuery1γ3_Παράλληλες_Εργασίες_SIMOPS: TBooleanField;
    ADOQuery1γ3_Εύφλεκτο: TBooleanField;
    ADOQuery1γ3_Περιοχή_Ταξινομημένη_κατά_ATEX: TBooleanField;
    ADOQuery1γ3_Θόρυβος: TBooleanField;
    ADOQuery1γ3_Άλλα_: TWideStringField;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    ADOQuery1γ1_Περιεχόμενα_Ρευστά_της_Διεργασίας_κατά_την_Λειτουργία: TBooleanField;
    ADOQuery1γ1_Πίεση: TFloatField;
    ADOQuery1γ1_Θερμοκρασία: TFloatField;
    ADOQuery1Αριθμός_Πινακιδίων: TWideStringField;
    ADOQuery1Αριθμός_Σχεδίου: TWideStringField;
    QRDBText48: TQRDBText;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRDBText49: TQRDBText;
    QRDBText100: TQRDBText;
    QRDBText101: TQRDBText;
    QRDBText102: TQRDBText;
    QRDBText103: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText104: TQRDBText;
    QRDBText105: TQRDBText;
    QRDBText106: TQRDBText;
    QRDBText107: TQRDBText;
    QRDBText108: TQRDBText;
    QRDBText109: TQRDBText;
    QRDBText110: TQRDBText;
    QRDBText111: TQRDBText;
    QRDBText112: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel32: TQRLabel;
    QRSubDetail24: TQRSubDetail;
    QRLabel55: TQRLabel;
    QRDBText113: TQRDBText;
    QRDBText116: TQRDBText;
    QRDBText114: TQRDBText;
    QRDBText115: TQRDBText;
    QRDBText117: TQRDBText;
    QRDBText118: TQRDBText;
    QRDBText119: TQRDBText;
    QRDBText120: TQRDBText;
    QRDBText121: TQRDBText;
    QRDBText122: TQRDBText;
    QRDBText123: TQRDBText;
    QRDBText124: TQRDBText;
    QRDBText125: TQRDBText;
    QRLabel54: TQRLabel;
    QRDBText126: TQRDBText;
    QRSubDetail25: TQRSubDetail;
    QRLabel56: TQRLabel;
    QRDBText127: TQRDBText;
    QRDBText128: TQRDBText;
    QRDBText129: TQRDBText;
    QRDBText130: TQRDBText;
    QRDBText131: TQRDBText;
    QRDBText133: TQRDBText;
    QRDBText134: TQRDBText;
    QRLabel57: TQRLabel;
    QRDBText135: TQRDBText;
    QRDBText132: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText136: TQRDBText;
    QRDBText137: TQRDBText;
    QRDBText138: TQRDBText;
    QRDBText139: TQRDBText;
    QRShape15: TQRShape;
    QRDBText39: TQRDBText;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    ADOQuery1LDepartment_Foreman: TStringField;
    ADOQuery1Department_Foreman_Id: TIntegerField;
    qryDepartment_Foremen: TADOQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    QRSubDetail26: TQRSubDetail;
    QRLabel58: TQRLabel;
    QRSubDetail27: TQRSubDetail;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRDBText88: TQRDBText;
    ADOQuery1From_Id_Copy: TIntegerField;
    ADOQuery1Visible_Till: TDateTimeField;
    ADOQuery1Deleted: TBooleanField;
    ADOQuery1DelUsr: TIntegerField;
    ADOQuery1DelDT: TDateTimeField;
    ADOQuery1Αρ_Γνωστοποιησης: TWideStringField;
    QRLabel61: TQRLabel;
    QRDBText90: TQRDBText;
    ADOQuery1LFrom_Id_Copy: TStringField;
    ADOQuery1WorkStopped: TBooleanField;
    ADOQuery1WorkStoppedUsr: TIntegerField;
    ADOQuery1WorkStoppedDT: TDateTimeField;
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: string);
    procedure QRSubDetail5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail9BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail12BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail18BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail20BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail22BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail26BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail27BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail28BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ADOQuery1CalcFields(DataSet: TDataSet);
  private

  public

  end;

implementation

uses DMain, FPrnTran;

{$R *.DFM}

procedure TrptWorkPermitReport.QRExpr2Print(sender: TObject; var Value: String);
begin
  Value := format('%m', [(strtofloat(Value))]);
end;

procedure TrptWorkPermitReport.QRExpr3Print(sender: TObject; var Value: String);
begin
  Value := format('%f', [(strtofloat(Value))]);
end;

procedure TrptWorkPermitReport.ADOQuery1CalcFields(DataSet: TDataSet);
begin
  inherited;
  if ADOQuery1From_Id_Copy.AsInteger > 0 then
     ADOQuery1LFrom_Id_Copy.AsString := inttostr(ADOQuery1Id.AsInteger) + '(' + inttostr(ADOQuery1From_Id_Copy.AsInteger) + ')'
  else
    ADOQuery1LFrom_Id_Copy.AsString := inttostr(ADOQuery1Id.AsInteger);
end;

procedure TrptWorkPermitReport.QRDBText8Print(sender: TObject;
  var Value: string);
var TextDF, TextCH: string;
begin
  inherited;
  try
    if StrToBool(Value) then
    begin
       TQRDBText(sender).Font.Style := [fsBold];
       TQRDBText(sender).Font.Size := 8;
    end
    else
    begin
       TQRDBText(sender).Font.Style := [fsStrikeOut];
              TQRDBText(sender).Font.Size := 0;
       TQRDBText(sender).Height := 0;
    end;

    TextCH := TQRDBText(sender).HelpKeyword;
    if TextCH > '' then
       Value := TextCH
    else
       Value := TQRDBText(sender).DataField;
  except
     Value := '---';
  end;
end;

procedure TrptWorkPermitReport.QRExpr1Print(sender: TObject; var Value: String);
begin
  Value := format('%m', [(strtofloat(Value))]);
end;

procedure TrptWorkPermitReport.QRLabel8Print(sender: TObject; var Value: String);
begin
  inherited;
  if self.Owner is TfrmPrnTran then
    if TfrmPrnTran(self.Owner).ToDate > 0 then
      Value := 'Κινήσεις έως ' + datetostr(TfrmPrnTran(self.Owner).ToDate)
    else
      Value := ' '
  else
    Value := ' ';
end;

procedure TrptWorkPermitReport.QRSubDetail10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := ADOQuery1ΓΕΡΑΝΟΣ.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail12BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := ADOQuery1ΙΚΡΙΩΜΑ.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail18BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := Not ADOQuery1ΙΚΡΙΩΜΑ.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail20BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := Not ADOQuery1ΕΚΣΚΑΦΗ.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail22BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := Not ADOQuery1ΕΙΣΟΔΟΣ_ΣΕ_ΚΛΕΙΣΤΟ_ΧΩΡΟ.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail26BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := Not ADOQuery1ΘΕΡΜΗ_ΕΡΓΑΣΙΑ.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail27BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := Not ADOQuery1ΡΑΔΙΟΓΡΑΦΙΕΣ.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail28BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PrintBand := Not ADOQuery1ΓΕΡΑΝΟΣ.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := ADOQuery1ΓΕΡΑΝΟΣ.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := ADOQuery1ΕΚΣΚΑΦΗ.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := ADOQuery1ΕΙΣΟΔΟΣ_ΣΕ_ΚΛΕΙΣΤΟ_ΧΩΡΟ.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := ADOQuery1ΘΕΡΜΗ_ΕΡΓΑΣΙΑ.AsBoolean;
end;

procedure TrptWorkPermitReport.QRSubDetail9BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
 PrintBand := ADOQuery1ΡΑΔΙΟΓΡΑΦΙΕΣ.AsBoolean;
end;

end.
