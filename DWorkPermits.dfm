inherited DMWorkPermits: TDMWorkPermits
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  object qryWork_Permit: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    OnCalcFields = qryWork_PermitCalcFields
    Parameters = <
      item
        Name = 'TillDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = 44927d
      end>
    SQL.Strings = (
      'SELECT *'
      '  FROM Work_Permit'
      'Where Visible_Till > :TillDate'
      '')
    Left = 32
    Top = 32
    object qryWork_PermitLDepartment: TStringField
      FieldKind = fkLookup
      FieldName = 'LDepartment'
      LookupDataSet = qryDepartments
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'Department_Id'
      Lookup = True
    end
    object qryWork_PermitLContractor: TStringField
      FieldKind = fkLookup
      FieldName = 'LContractor'
      LookupDataSet = qryContractors
      LookupKeyFields = 'id'
      LookupResultField = 'Name'
      KeyFields = 'Contractor_Id'
      Lookup = True
    end
    object qryWork_PermitId: TIntegerField
      FieldName = 'Id'
    end
    object qryWork_PermitIssue_Date: TDateTimeField
      FieldName = 'Issue_Date'
      DisplayFormat = 'ddddd '
    end
    object qryWork_PermitDepartment_Id: TIntegerField
      FieldName = 'Department_Id'
    end
    object qryWork_PermitContractor_Id: TIntegerField
      FieldName = 'Contractor_Id'
    end
    object qryWork_PermitNumber_of_Workers: TIntegerField
      FieldName = 'Number_of_Workers'
    end
    object qryWork_PermitΜονάδα_Εργασίας: TWideStringField
      FieldName = #924#959#957#940#948#945'_'#917#961#947#945#963#943#945#962
      Size = 100
    end
    object qryWork_PermitΕξοπλισμος: TWideStringField
      FieldName = #917#958#959#960#955#953#963#956#959#962
      Size = 100
    end
    object qryWork_PermitStart_Time: TDateTimeField
      FieldName = 'Start_Time'
    end
    object qryWork_PermitEnd_Time: TDateTimeField
      FieldName = 'End_Time'
    end
    object qryWork_PermitΠΕΡΙΓΡΑΦΗ_ΕΡΓΑΣΙΑΣ: TWideStringField
      FieldName = #928#917#929#921#915#929#913#934#919'_'#917#929#915#913#931#921#913#931
      FixedChar = True
      Size = 200
    end
    object qryWork_PermitΙΚΡΙΩΜΑ: TBooleanField
      FieldName = #921#922#929#921#937#924#913
    end
    object qryWork_PermitΕΚΣΚΑΦΗ: TBooleanField
      FieldName = #917#922#931#922#913#934#919
    end
    object qryWork_PermitΓΕΡΑΝΟΣ: TBooleanField
      FieldName = #915#917#929#913#925#927#931
    end
    object qryWork_PermitΕΙΣΟΔΟΣ_ΣΕ_ΚΛΕΙΣΤΟ_ΧΩΡΟ: TBooleanField
      FieldName = #917#921#931#927#916#927#931'_'#931#917'_'#922#923#917#921#931#932#927'_'#935#937#929#927
    end
    object qryWork_PermitΘΕΡΜΗ_ΕΡΓΑΣΙΑ: TBooleanField
      FieldName = #920#917#929#924#919'_'#917#929#915#913#931#921#913
    end
    object qryWork_PermitΡΑΔΙΟΓΡΑΦΙΕΣ: TBooleanField
      FieldName = #929#913#916#921#927#915#929#913#934#921#917#931
    end
    object qryWork_PermitΚΟΙΝΗ_ΕΡΓΑΣΙΑ: TBooleanField
      FieldName = #922#927#921#925#919'_'#917#929#915#913#931#921#913
    end
    object qryWork_PermitΑπαιτείται_έλεγχος_αερίων: TBooleanField
      FieldName = #913#960#945#953#964#949#943#964#945#953'_'#941#955#949#947#967#959#962'_'#945#949#961#943#969#957
    end
    object qryWork_PermitΕύφλεκετα: TBooleanField
      FieldName = #917#973#966#955#949#954#949#964#945
    end
    object qryWork_PermitΗ2S: TBooleanField
      FieldName = #919'2S'
    end
    object qryWork_PermitCO: TBooleanField
      FieldName = 'CO'
    end
    object qryWork_PermitO2: TBooleanField
      FieldName = 'O2'
    end
    object qryWork_PermitΧΕΙΡΙΣΤΗΣ_ΕΛΕΓΧΟ: TWideStringField
      FieldName = #935#917#921#929#921#931#932#919#931'_'#917#923#917#915#935#927
      FixedChar = True
      Size = 50
    end
    object qryWork_PermitΚΩΔΙΚΟΣ_ΟΡΓΑΝΟΥ: TWideStringField
      FieldName = #922#937#916#921#922#927#931'_'#927#929#915#913#925#927#933
      FixedChar = True
      Size = 50
    end
    object qryWork_PermitΑποσυμπίεση_εξοπλισμού: TBooleanField
      FieldName = #913#960#959#963#965#956#960#943#949#963#951'_'#949#958#959#960#955#953#963#956#959#973
    end
    object qryWork_PermitΥγρά_εγλωβισμένα_βάνες: TBooleanField
      FieldName = #933#947#961#940'_'#949#947#955#969#946#953#963#956#941#957#945'_'#946#940#957#949#962
    end
    object qryWork_PermitΚαθαρίστηκε_εξοπλισμός: TBooleanField
      FieldName = #922#945#952#945#961#943#963#964#951#954#949'_'#949#958#959#960#955#953#963#956#972#962
    end
    object qryWork_PermitΣυμπληρωματικός_φωτισμός: TBooleanField
      FieldName = #931#965#956#960#955#951#961#969#956#945#964#953#954#972#962'_'#966#969#964#953#963#956#972#962
    end
    object qryWork_PermitOχήματα_φλογοπαγίδες: TBooleanField
      FieldName = 'O'#967#942#956#945#964#945'_'#966#955#959#947#959#960#945#947#943#948#949#962
    end
    object qryWork_PermitΠροειδοποιητικά_σήματα: TBooleanField
      FieldName = #928#961#959#949#953#948#959#960#959#953#951#964#953#954#940'_'#963#942#956#945#964#945
    end
    object qryWork_PermitΕκκένωση_εξοπλισμού: TBooleanField
      FieldName = #917#954#954#941#957#969#963#951'_'#949#958#959#960#955#953#963#956#959#973
    end
    object qryWork_PermitΑπομόνωση_εξοπλισμού: TBooleanField
      FieldName = #913#960#959#956#972#957#969#963#951'_'#949#958#959#960#955#953#963#956#959#973
    end
    object qryWork_PermitΚαθαρισμός_ατμός: TBooleanField
      FieldName = #922#945#952#945#961#953#963#956#972#962'_'#945#964#956#972#962
    end
    object qryWork_PermitΚαθαρισμός_άζωτο: TBooleanField
      FieldName = #922#945#952#945#961#953#963#956#972#962'_'#940#950#969#964#959
    end
    object qryWork_PermitΚαθαρισμός_νερό: TBooleanField
      FieldName = #922#945#952#945#961#953#963#956#972#962'_'#957#949#961#972
    end
    object qryWork_PermitΚάλυψη_υπονόμων: TBooleanField
      FieldName = #922#940#955#965#968#951'_'#965#960#959#957#972#956#969#957
    end
    object qryWork_PermitΣυμπληρωματικά_μέτρα: TWideStringField
      FieldName = #931#965#956#960#955#951#961#969#956#945#964#953#954#940'_'#956#941#964#961#945
      FixedChar = True
      Size = 100
    end
    object qryWork_PermitΠαρίσταση_χειριστής: TWideStringField
      FieldName = #928#945#961#943#963#964#945#963#951'_'#967#949#953#961#953#963#964#942#962
      FixedChar = True
      Size = 50
    end
    object qryWork_PermitΙικρίωμα_πιστοποιημένο: TBooleanField
      FieldName = #921#953#954#961#943#969#956#945'_'#960#953#963#964#959#960#959#953#951#956#941#957#959
    end
    object qryWork_PermitΓνωμάτευση_ΑΕΕ: TBooleanField
      FieldName = #915#957#969#956#940#964#949#965#963#951'_'#913#917#917
    end
    object qryWork_PermitΑΑ_βεβαίωσης_ικριώματος: TWideStringField
      FieldName = #913#913'_'#946#949#946#945#943#969#963#951#962'_'#953#954#961#953#974#956#945#964#959#962
      FixedChar = True
      Size = 50
    end
    object qryWork_PermitΈλαβα_γνώση_ΑΕΕ: TWideStringField
      FieldName = #904#955#945#946#945'_'#947#957#974#963#951'_'#913#917#917
      FixedChar = True
      Size = 100
    end
    object qryWork_PermitΥπόγειοι_αγωγοί: TBooleanField
      FieldName = #933#960#972#947#949#953#959#953'_'#945#947#969#947#959#943
    end
    object qryWork_PermitΥπόγεια_καλώδια: TBooleanField
      FieldName = #933#960#972#947#949#953#945'_'#954#945#955#974#948#953#945
    end
    object qryWork_PermitΕκσκαφη_με_μηχανικα_μεσα: TBooleanField
      FieldName = #917#954#963#954#945#966#951'_'#956#949'_'#956#951#967#945#957#953#954#945'_'#956#949#963#945
    end
    object qryWork_PermitΑναγνώριση_του_χώρου_εκσκαφής: TBooleanField
      FieldName = #913#957#945#947#957#974#961#953#963#951'_'#964#959#965'_'#967#974#961#959#965'_'#949#954#963#954#945#966#942#962
    end
    object qryWork_PermitΣυμπληρωματικά_μέτρα_εκσκαφή: TWideStringField
      FieldName = #931#965#956#960#955#951#961#969#956#945#964#953#954#940'_'#956#941#964#961#945'_'#949#954#963#954#945#966#942
      FixedChar = True
      Size = 100
    end
    object qryWork_PermitΣυμπληρώθηκε_το_έντυπο_ελέγχου: TBooleanField
      FieldName = #931#965#956#960#955#951#961#974#952#951#954#949'_'#964#959'_'#941#957#964#965#960#959'_'#949#955#941#947#967#959#965
    end
    object qryWork_PermitΑρ_εντύπου_κλειστου_χώρου: TWideStringField
      FieldName = #913#961'_'#949#957#964#973#960#959#965'_'#954#955#949#953#963#964#959#965'_'#967#974#961#959#965
      FixedChar = True
      Size = 10
    end
    object qryWork_PermitΈγινε_μέτρηση_έλεγχος_αερίων: TBooleanField
      FieldName = #904#947#953#957#949'_'#956#941#964#961#951#963#951'_'#941#955#949#947#967#959#962'_'#945#949#961#943#969#957
    end
    object qryWork_PermitΈλαβα_γνώση_και_συμφωνώ_ο_αιτήσας_την_ΑΕΕ: TWideStringField
      FieldName = #904#955#945#946#945'_'#947#957#974#963#951'_'#954#945#953'_'#963#965#956#966#969#957#974'_'#959'_'#945#953#964#942#963#945#962'_'#964#951#957'_'#913#917#917
      FixedChar = True
      Size = 50
    end
    object qryWork_PermitΗλεκτρολογική_απομόνωση: TBooleanField
      FieldName = #919#955#949#954#964#961#959#955#959#947#953#954#942'_'#945#960#959#956#972#957#969#963#951
    end
    object qryWork_PermitΣυνεχής_παρουσία_ηλεκτρολόγου: TBooleanField
      FieldName = #931#965#957#949#967#942#962'_'#960#945#961#959#965#963#943#945'_'#951#955#949#954#964#961#959#955#972#947#959#965
    end
    object qryWork_PermitΚαλώδια_μονωμένα: TBooleanField
      FieldName = #922#945#955#974#948#953#945'_'#956#959#957#969#956#941#957#945
    end
    object qryWork_PermitΦωτιστικά_σώματα: TBooleanField
      FieldName = #934#969#964#953#963#964#953#954#940'_'#963#974#956#945#964#945
    end
    object qryWork_PermitΠινακίδα_ηλεκτρικής_απομόνωσης: TBooleanField
      FieldName = #928#953#957#945#954#943#948#945'_'#951#955#949#954#964#961#953#954#942#962'_'#945#960#959#956#972#957#969#963#951#962
    end
    object qryWork_PermitΑρ_πινακιδίων_απομόνωσης: TIntegerField
      FieldName = #913#961'_'#960#953#957#945#954#953#948#943#969#957'_'#945#960#959#956#972#957#969#963#951#962
    end
    object qryWork_PermitΗλεκτρολόγος: TWideStringField
      FieldName = #919#955#949#954#964#961#959#955#972#947#959#962
      FixedChar = True
      Size = 100
    end
    object qryWork_PermitΈντυπο_θερμές_εργασίες: TBooleanField
      FieldName = #904#957#964#965#960#959'_'#952#949#961#956#941#962'_'#949#961#947#945#963#943#949#962
    end
    object qryWork_PermitΑρ_εντύπου_θερμές_εργασίες: TWideStringField
      FieldName = #913#961'_'#949#957#964#973#960#959#965'_'#952#949#961#956#941#962'_'#949#961#947#945#963#943#949#962
      FixedChar = True
      Size = 10
    end
    object qryWork_PermitΈντυπο_ραδιογραφίες: TBooleanField
      FieldName = #904#957#964#965#960#959'_'#961#945#948#953#959#947#961#945#966#943#949#962
    end
    object qryWork_PermitΑρ_εντύπου_ραδιογραφίες: TWideStringField
      FieldName = #913#961'_'#949#957#964#973#960#959#965'_'#961#945#948#953#959#947#961#945#966#943#949#962
      FixedChar = True
      Size = 10
    end
    object qryWork_PermitΚράνος_κεφαλής: TBooleanField
      FieldName = #922#961#940#957#959#962'_'#954#949#966#945#955#942#962
    end
    object qryWork_PermitΓάντια_εργασίας: TBooleanField
      FieldName = #915#940#957#964#953#945'_'#949#961#947#945#963#943#945#962
    end
    object qryWork_PermitΗλεκτρολογικά_γάντια: TBooleanField
      FieldName = #919#955#949#954#964#961#959#955#959#947#953#954#940'_'#947#940#957#964#953#945
    end
    object qryWork_PermitΟματουάλια: TBooleanField
      FieldName = #927#956#945#964#959#965#940#955#953#945
    end
    object qryWork_PermitΠροσωπίδα: TBooleanField
      FieldName = #928#961#959#963#969#960#943#948#945
    end
    object qryWork_PermitΕλαστικά_υποδήματα: TBooleanField
      FieldName = #917#955#945#963#964#953#954#940'_'#965#960#959#948#942#956#945#964#945
    end
    object qryWork_PermitΩτοασπίδες: TBooleanField
      FieldName = #937#964#959#945#963#960#943#948#949#962
    end
    object qryWork_PermitΦόρμα_εργασίας: TBooleanField
      FieldName = #934#972#961#956#945'_'#949#961#947#945#963#943#945#962
    end
    object qryWork_PermitΖώνη_ανάρτησης_σε_ύψος: TBooleanField
      FieldName = #918#974#957#951'_'#945#957#940#961#964#951#963#951#962'_'#963#949'_'#973#968#959#962
    end
    object qryWork_PermitΑναπνευστική_συσκευή: TBooleanField
      FieldName = #913#957#945#960#957#949#965#963#964#953#954#942'_'#963#965#963#954#949#965#942
    end
    object qryWork_PermitΑποφεύγετε_επαφή_με_το_δέρμα: TBooleanField
      FieldName = #913#960#959#966#949#973#947#949#964#949'_'#949#960#945#966#942'_'#956#949'_'#964#959'_'#948#941#961#956#945
    end
    object qryWork_PermitΣυμπληρωματικά_μέτρα_Ατομικής_Προστασίας: TWideStringField
      FieldName = #931#965#956#960#955#951#961#969#956#945#964#953#954#940'_'#956#941#964#961#945'_'#913#964#959#956#953#954#942#962'_'#928#961#959#963#964#945#963#943#945#962
      FixedChar = True
      Size = 100
    end
    object qryWork_PermitΠυροσβεστήρες: TIntegerField
      FieldName = #928#965#961#959#963#946#949#963#964#942#961#949#962
    end
    object qryWork_PermitΜάνικες: TIntegerField
      FieldName = #924#940#957#953#954#949#962
    end
    object qryWork_PermitΑλλα_μέσα_πυρόσβεσης: TWideStringField
      FieldName = #913#955#955#945'_'#956#941#963#945'_'#960#965#961#972#963#946#949#963#951#962
      FixedChar = True
      Size = 100
    end
    object qryWork_PermitΕιδικά_εργαλεία: TWideStringField
      FieldName = #917#953#948#953#954#940'_'#949#961#947#945#955#949#943#945
      FixedChar = True
      Size = 100
    end
    object qryWork_PermitΕργοδηγος_τμήματος: TWideStringField
      FieldName = #917#961#947#959#948#951#947#959#962'_'#964#956#942#956#945#964#959#962
      FixedChar = True
      Size = 100
    end
    object qryWork_PermitΠροβλεπόμενα_ΜΑΠ: TBooleanField
      FieldName = #928#961#959#946#955#949#960#972#956#949#957#945'_'#924#913#928
    end
    object qryWork_PermitΠροβλεπόμενα_μέτρα_ασφαλείας: TBooleanField
      FieldName = #928#961#959#946#955#949#960#972#956#949#957#945'_'#956#941#964#961#945'_'#945#963#966#945#955#949#943#945#962
    end
    object qryWork_PermitΤΑ_εγκατάστασης: TBooleanField
      FieldName = #932#913'_'#949#947#954#945#964#940#963#964#945#963#951#962
    end
    object qryWork_PermitΗ_ΕΡΓΑΣΙΑ_ΔΙΕΚΟΠΗ_ΑΠΟ_ΤΟΝ: TWideStringField
      FieldName = #919'_'#917#929#915#913#931#921#913'_'#916#921#917#922#927#928#919'_'#913#928#927'_'#932#927#925
      FixedChar = True
      Size = 50
    end
    object qryWork_PermitΗ_ΕΡΓΑΣΙΑ_ΔΙΕΚΟΠΗ_ΩΡΑ: TWideStringField
      FieldName = #919'_'#917#929#915#913#931#921#913'_'#916#921#917#922#927#928#919'_'#937#929#913
      FixedChar = True
      Size = 10
    end
    object qryWork_PermitΛΟΓΟΣ_ΑΝΑΚΛΗΣΗΣ: TWideStringField
      FieldName = #923#927#915#927#931'_'#913#925#913#922#923#919#931#919#931
      FixedChar = True
      Size = 150
    end
    object qryWork_PermitInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryWork_PermitInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryWork_PermitΕύφλεκετα_Value: TFloatField
      FieldName = #917#973#966#955#949#954#949#964#945'_Value'
    end
    object qryWork_PermitΗ2S_Value: TFloatField
      FieldName = #919'2S_Value'
    end
    object qryWork_PermitCO_Value: TFloatField
      FieldName = 'CO_Value'
    end
    object qryWork_PermitO2_Value: TFloatField
      FieldName = 'O2_Value'
    end
    object qryWork_PermitΈντυπο_γερανου: TBooleanField
      FieldName = #904#957#964#965#960#959'_'#947#949#961#945#957#959#965
    end
    object qryWork_PermitΑρ_εντύπου_γερανου: TWideStringField
      FieldName = #913#961'_'#949#957#964#973#960#959#965'_'#947#949#961#945#957#959#965
      FixedChar = True
      Size = 10
    end
    object qryWork_PermitForeman_Id: TIntegerField
      FieldName = 'Foreman_Id'
    end
    object qryWork_PermitFullFilled: TBooleanField
      FieldName = 'FullFilled'
      DisplayValues = #927#955#959#954#955#951#961#969#956#941#957#951
    end
    object qryWork_PermitFullFilledDT: TDateTimeField
      FieldName = 'FullFilledDT'
    end
    object qryWork_PermitFullFilledUsr: TIntegerField
      FieldName = 'FullFilledUsr'
    end
    object qryWork_PermitFullFilledCancel: TBooleanField
      FieldName = 'FullFilledCancel'
    end
    object qryWork_PermitΕγκρίση_ΤΑ_Υπερ: TBooleanField
      FieldName = #917#947#954#961#943#963#951'_'#932#913'_'#933#960#949#961
      DisplayValues = 'M'#949' '#904#947#954#961#953#963#951';'#935#969#961#943#962' '#904#947#954#961#953#963#951
    end
    object qryWork_PermitΟ_αιτων_την_αδεια_εκτελεσης_εργασιας: TWideStringField
      FieldName = #927'_'#945#953#964#969#957'_'#964#951#957'_'#945#948#949#953#945'_'#949#954#964#949#955#949#963#951#962'_'#949#961#947#945#963#953#945#962
      FixedChar = True
      Size = 100
    end
    object qryWork_PermitΟ_Τεχνικος_Ασφαλειας_της_εγκαταστασης: TWideStringField
      FieldName = #927'_'#932#949#967#957#953#954#959#962'_'#913#963#966#945#955#949#953#945#962'_'#964#951#962'_'#949#947#954#945#964#945#963#964#945#963#951#962
      FixedChar = True
      Size = 100
    end
    object qryWork_PermitΑπαιτείται_συνεχής_έλεγχος_αερίων: TBooleanField
      FieldName = #913#960#945#953#964#949#943#964#945#953'_'#963#965#957#949#967#942#962'_'#941#955#949#947#967#959#962'_'#945#949#961#943#969#957
    end
    object qryWork_PermitΕργοδηγος_εργολάβου: TWideStringField
      FieldName = #917#961#947#959#948#951#947#959#962'_'#949#961#947#959#955#940#946#959#965
      FixedChar = True
      Size = 50
    end
    object qryWork_PermitΑυτόνομη_αναπνευστική_συσκευή: TBooleanField
      FieldName = #913#965#964#972#957#959#956#951'_'#945#957#945#960#957#949#965#963#964#953#954#942'_'#963#965#963#954#949#965#942
    end
    object qryWork_PermitAirpack: TBooleanField
      FieldName = 'Airpack'
    end
    object qryWork_PermitΔιαφυγής_10_λεπτών: TBooleanField
      FieldName = #916#953#945#966#965#947#942#962'_10_'#955#949#960#964#974#957
    end
    object qryWork_PermitΠροσωπικά_ολοκλήρου_Προσώπου_με_φίλτρο: TBooleanField
      FieldName = #928#961#959#963#969#960#953#954#940'_'#959#955#959#954#955#942#961#959#965'_'#928#961#959#963#974#960#959#965'_'#956#949'_'#966#943#955#964#961#959
    end
    object qryWork_PermitΜάσκα_Σκόνης: TBooleanField
      FieldName = #924#940#963#954#945'_'#931#954#972#957#951#962
    end
    object qryWork_PermitΠαρατηρήσεις: TWideStringField
      FieldName = #928#945#961#945#964#951#961#942#963#949#953#962
      Size = 300
    end
    object qryWork_Permitγ1_Περιεχόμενα_Ρευστά_της_Διεργασίας_κατά_την_Λειτουργία: TBooleanField
      FieldName = #947'1_'#928#949#961#953#949#967#972#956#949#957#945'_'#929#949#965#963#964#940'_'#964#951#962'_'#916#953#949#961#947#945#963#943#945#962'_'#954#945#964#940'_'#964#951#957'_'#923#949#953#964#959#965#961#947#943#945
    end
    object qryWork_Permitγ1_Πίεση: TFloatField
      FieldName = #947'1_'#928#943#949#963#951
    end
    object qryWork_Permitγ1_Θερμοκρασία: TFloatField
      FieldName = #947'1_'#920#949#961#956#959#954#961#945#963#943#945
    end
    object qryWork_Permitγ1_Περιέχοντα_τώρα: TBooleanField
      FieldName = #947'1_'#928#949#961#953#941#967#959#957#964#945'_'#964#974#961#945
    end
    object qryWork_Permitγ1_Περιέχοντα_πρίν: TBooleanField
      FieldName = #947'1_'#928#949#961#953#941#967#959#957#964#945'_'#960#961#943#957
    end
    object qryWork_Permitγ1_Εύφλεκτο: TBooleanField
      FieldName = #947'1_'#917#973#966#955#949#954#964#959
    end
    object qryWork_Permitγ1_Εκρηκτικό: TBooleanField
      FieldName = #947'1_'#917#954#961#951#954#964#953#954#972
    end
    object qryWork_Permitγ1_Διαβρωτικό: TBooleanField
      FieldName = #947'1_'#916#953#945#946#961#969#964#953#954#972
    end
    object qryWork_Permitγ1_Τοξικό: TBooleanField
      FieldName = #947'1_'#932#959#958#953#954#972
    end
    object qryWork_Permitγ1_Καυστικό: TBooleanField
      FieldName = #947'1_'#922#945#965#963#964#953#954#972
    end
    object qryWork_Permitγ1_Ερεθιστικό: TBooleanField
      FieldName = #947'1_'#917#961#949#952#953#963#964#953#954#972
    end
    object qryWork_Permitγ1_Εξοπλισμός_υπό_ηλεκτρική_τάση: TBooleanField
      FieldName = #947'1_'#917#958#959#960#955#953#963#956#972#962'_'#965#960#972'_'#951#955#949#954#964#961#953#954#942'_'#964#940#963#951
    end
    object qryWork_Permitγ1_Ενεργός_τώρα: TBooleanField
      FieldName = #947'1_'#917#957#949#961#947#972#962'_'#964#974#961#945
    end
    object qryWork_Permitγ1_Ενεργός_πρίν: TBooleanField
      FieldName = #947'1_'#917#957#949#961#947#972#962'_'#960#961#943#957
    end
    object qryWork_Permitγ2_Πτώση_από_ύψος: TBooleanField
      FieldName = #947'2_'#928#964#974#963#951'_'#945#960#972'_'#973#968#959#962
    end
    object qryWork_Permitγ2_Υψηλή_πίεση: TBooleanField
      FieldName = #947'2_'#933#968#951#955#942'_'#960#943#949#963#951
    end
    object qryWork_Permitγ2_Ηλεκτρικοί_Κίνδυνοι: TBooleanField
      FieldName = #947'2_'#919#955#949#954#964#961#953#954#959#943'_'#922#943#957#948#965#957#959#953
    end
    object qryWork_Permitγ2_Είσοδος_σε_κλειστό_Χώρο: TBooleanField
      FieldName = #947'2_'#917#943#963#959#948#959#962'_'#963#949'_'#954#955#949#953#963#964#972'_'#935#974#961#959
    end
    object qryWork_Permitγ2_Υψηλή_Θερμοκρασία: TBooleanField
      FieldName = #947'2_'#933#968#951#955#942'_'#920#949#961#956#959#954#961#945#963#943#945
    end
    object qryWork_Permitγ2_Ραδιογραφία: TBooleanField
      FieldName = #947'2_'#929#945#948#953#959#947#961#945#966#943#945
    end
    object qryWork_Permitγ2_Πιθανότητα_Διαρροής: TBooleanField
      FieldName = #947'2_'#928#953#952#945#957#972#964#951#964#945'_'#916#953#945#961#961#959#942#962
    end
    object qryWork_Permitγ2_Χημικά: TBooleanField
      FieldName = #947'2_'#935#951#956#953#954#940
    end
    object qryWork_Permitγ2_Άλλα_: TWideStringField
      FieldName = #947'2_'#902#955#955#945'_'
      Size = 100
    end
    object qryWork_Permitγ3_Μονάδα_σε_λειτουργεία: TBooleanField
      FieldName = #947'3_'#924#959#957#940#948#945'_'#963#949'_'#955#949#953#964#959#965#961#947#949#943#945
    end
    object qryWork_Permitγ3_Υπόγειες_ηλεκτρικές_γραμμές_υπό_τάση: TBooleanField
      FieldName = #947'3_'#933#960#972#947#949#953#949#962'_'#951#955#949#954#964#961#953#954#941#962'_'#947#961#945#956#956#941#962'_'#965#960#972'_'#964#940#963#951
    end
    object qryWork_Permitγ3_H2S_Υδρόθειο: TBooleanField
      FieldName = #947'3_H2S_'#933#948#961#972#952#949#953#959
    end
    object qryWork_Permitγ3_HC_Υδρογονάνφρακες: TBooleanField
      FieldName = #947'3_HC_'#933#948#961#959#947#959#957#940#957#966#961#945#954#949#962
    end
    object qryWork_Permitγ3_Παράλληλες_Εργασίες_SIMOPS: TBooleanField
      FieldName = #947'3_'#928#945#961#940#955#955#951#955#949#962'_'#917#961#947#945#963#943#949#962'_SIMOPS'
    end
    object qryWork_Permitγ3_Εύφλεκτο: TBooleanField
      FieldName = #947'3_'#917#973#966#955#949#954#964#959
    end
    object qryWork_Permitγ3_Περιοχή_Ταξινομημένη_κατά_ATEX: TBooleanField
      FieldName = #947'3_'#928#949#961#953#959#967#942'_'#932#945#958#953#957#959#956#951#956#941#957#951'_'#954#945#964#940'_ATEX'
    end
    object qryWork_Permitγ3_Θόρυβος: TBooleanField
      FieldName = #947'3_'#920#972#961#965#946#959#962
    end
    object qryWork_Permitγ3_Άλλα_: TWideStringField
      FieldName = #947'3_'#902#955#955#945'_'
      Size = 100
    end
    object qryWork_PermitΑριθμός_Πινακιδίων: TWideStringField
      FieldName = #913#961#953#952#956#972#962'_'#928#953#957#945#954#953#948#943#969#957
      Size = 10
    end
    object qryWork_PermitΑριθμός_Σχεδίου: TWideStringField
      FieldName = #913#961#953#952#956#972#962'_'#931#967#949#948#943#959#965
      Size = 10
    end
    object qryWork_PermitDepartment_Foreman_Id: TIntegerField
      FieldName = 'Department_Foreman_Id'
    end
    object qryWork_PermitFrom_Id_Copy: TIntegerField
      FieldName = 'From_Id_Copy'
    end
    object qryWork_PermitVisible_Till: TDateTimeField
      FieldName = 'Visible_Till'
    end
    object qryWork_PermitDeleted: TBooleanField
      FieldName = 'Deleted'
      DisplayValues = #916#953#949#947#961#945#956#956#941#957#951
    end
    object qryWork_PermitDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryWork_PermitDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryWork_PermitΑρ_Γνωστοποιησης: TWideStringField
      FieldName = #913#961'_'#915#957#969#963#964#959#960#959#953#951#963#951#962
    end
    object qryWork_PermitLFrom_Id_Copy: TStringField
      FieldKind = fkCalculated
      FieldName = 'LFrom_Id_Copy'
      Calculated = True
    end
    object qryWork_PermitWorkStopped: TBooleanField
      FieldName = 'WorkStopped'
      DisplayValues = #913#957#945#954#955#942#952#951#954#949';'
    end
    object qryWork_PermitWorkStoppedUsr: TIntegerField
      FieldName = 'WorkStoppedUsr'
    end
    object qryWork_PermitWorkStoppedDT: TDateTimeField
      FieldName = 'WorkStoppedDT'
    end
  end
  object qryContractors: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Contractors')
    Left = 344
    Top = 32
    object qryContractorsid: TIntegerField
      FieldName = 'id'
    end
    object qryContractorsName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object qryContractorsCompany: TWideStringField
      FieldName = 'Company'
      Size = 100
    end
    object qryContractorsVAT: TWideStringField
      FieldName = 'VAT'
      FixedChar = True
      Size = 10
    end
    object qryContractorsInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qryContractorsInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qryContractorsNotes: TWideStringField
      FieldName = 'Notes'
      Size = 200
    end
  end
  object dtsContractors: TDataSource
    AutoEdit = False
    DataSet = qryContractors
    Left = 488
    Top = 32
  end
  object qryDepartments: TADOQuery
    Active = True
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Departments')
    Left = 344
    Top = 116
    object qryDepartmentsid: TIntegerField
      FieldName = 'id'
    end
    object qryDepartmentsName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object dtsDepartments: TDataSource
    AutoEdit = False
    DataSet = qryDepartments
    Left = 488
    Top = 116
  end
  object dtsWork_Permit: TDataSource
    AutoEdit = False
    DataSet = qryWork_Permit
    Left = 128
    Top = 32
  end
  object qryForemen: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Foremen')
    Left = 344
    Top = 200
    object IntegerField1: TIntegerField
      FieldName = 'id'
    end
    object WideStringField1: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object dtsForemen: TDataSource
    AutoEdit = False
    DataSet = qryForemen
    Left = 488
    Top = 200
  end
  object qryDepartment_Foremen: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    BeforePost = GenBeforePost
    AfterPost = GenAfterPost
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      '  FROM Department_Foremen')
    Left = 344
    Top = 272
    object IntegerField2: TIntegerField
      FieldName = 'id'
    end
    object WideStringField2: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object drsDepartment_Foremen: TDataSource
    AutoEdit = False
    DataSet = qryDepartment_Foremen
    Left = 488
    Top = 272
  end
  object spUpdate_Work_Permit_Status: TADOStoredProc
    Tag = 9999
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    ProcedureName = 'Update_Work_Permit_Status;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@PUsr'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PDateTime'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 120
    Top = 108
  end
end
