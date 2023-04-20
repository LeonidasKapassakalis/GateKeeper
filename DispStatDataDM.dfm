object DispStatDataDM: TDispStatDataDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 412
  Width = 472
  object dsStation: TDataSource
    AutoEdit = False
    DataSet = qryStation
    Left = 88
    Top = 16
  end
  object dsTran: TDataSource
    AutoEdit = False
    DataSet = qryTrans
    Left = 88
    Top = 200
  end
  object dsApproval: TDataSource
    AutoEdit = False
    DataSet = qryApproval
    Left = 312
    Top = 88
  end
  object dsmemStation: TDataSource
    DataSet = memStation
    Left = 312
    Top = 24
  end
  object memStation: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 240
    Top = 24
    object memStationStationId: TIntegerField
      FieldName = 'StationId'
    end
    object memStationLMerchantId: TIntegerField
      FieldKind = fkLookup
      FieldName = 'LMerchantId'
      LookupDataSet = qryStationPopUp
      LookupKeyFields = 'Station.StationId'
      LookupResultField = 'Merchant.MerchantId'
      KeyFields = 'StationId'
      Lookup = True
    end
    object memStationDateFrom: TDateTimeField
      FieldName = 'DateFrom'
    end
    object memStationStationMak: TIntegerField
      FieldName = 'StationMak'
    end
  end
  object qryStationPopUp: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = qryStationPopUpCalcFields
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'Select *'
      'From V_Station_PopUp'
      '')
    Left = 232
    Top = 168
    object qryStationPopUpStationStationId: TIntegerField
      FieldName = 'Station.StationId'
    end
    object qryStationPopUpMerchantMerchantId: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object qryStationPopUpStationStreet: TWideStringField
      FieldName = 'Station.Street'
      Size = 50
    end
    object qryStationPopUpStationCity: TWideStringField
      FieldName = 'Station.City'
      Size = 50
    end
    object qryStationPopUpMerchantName: TWideStringField
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object qryStationPopUpLFullName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LFullName'
      Size = 50
      Calculated = True
    end
    object qryStationPopUpLFullName2: TStringField
      FieldKind = fkCalculated
      FieldName = 'LFullName2'
      Size = 80
      Calculated = True
    end
    object qryStationPopUpStationName: TWideStringField
      FieldName = 'Station.Name'
      Size = 100
    end
  end
  object dsStationPopUp: TDataSource
    AutoEdit = False
    DataSet = qryStationPopUp
    Left = 352
    Top = 168
  end
  object qryMerchant: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    DataSource = dsmemStation
    Parameters = <
      item
        Name = 'StationId'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'Select *'
      'From V_MST_Outer'
      'Where [Station.StationId] = :StationId'
      '')
    Left = 24
    Top = 80
    object qryMerchantTerminalidTerminalCode: TWideStringField
      FieldName = 'Terminalid.TerminalCode'
    end
    object qryMerchantStationName: TWideStringField
      FieldName = 'Station.Name'
      Size = 100
    end
    object qryMerchantMerchantName: TWideStringField
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object qryMerchantMerchantSAPCode: TWideStringField
      FieldName = 'Merchant.SAPCode'
      Size = 10
    end
    object qryMerchantTerminalTerminalid: TIntegerField
      FieldName = 'Terminal.Terminalid'
    end
    object qryMerchantStationStationId2: TIntegerField
      FieldName = 'Station.StationId'
    end
    object qryMerchantMerchantMerchantId: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object qryMerchantMerchantInActive: TBooleanField
      FieldName = 'Merchant.InActive'
    end
    object qryMerchantMerchantDeleted: TBooleanField
      FieldName = 'Merchant.Deleted'
    end
    object qryMerchantMerchantIsTest: TBooleanField
      FieldName = 'Merchant.IsTest'
    end
    object qryMerchantMerchantStopSales: TBooleanField
      FieldName = 'Merchant.StopSales'
    end
    object qryMerchantStationDeleted: TBooleanField
      FieldName = 'Station.Deleted'
    end
    object qryMerchantStationInActive: TBooleanField
      FieldName = 'Station.InActive'
    end
    object qryMerchantStationStopSales: TBooleanField
      FieldName = 'Station.StopSales'
    end
    object qryMerchantMerchantMerchantCode: TWideStringField
      FieldName = 'Merchant.MerchantCode'
      Size = 50
    end
    object qryMerchantStationStreet: TWideStringField
      FieldName = 'Station.Street'
      Size = 50
    end
    object qryMerchantStationCity: TWideStringField
      FieldName = 'Station.City'
      Size = 50
    end
    object qryMerchantStationZIP: TWideStringField
      FieldName = 'Station.ZIP'
      Size = 50
    end
    object qryMerchantMerchantAFM: TWideStringField
      FieldName = 'Merchant.AFM'
      Size = 15
    end
    object qryMerchantMerchantDOY: TWideStringField
      FieldName = 'Merchant.DOY'
      Size = 50
    end
  end
  object dsMerchant: TDataSource
    AutoEdit = False
    DataSet = qryMerchant
    Left = 88
    Top = 80
  end
  object qryTrans: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dsmemStation
    Parameters = <
      item
        Name = 'StationId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = 'DateFrom'
        DataType = ftDateTime
        Precision = 16
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'Select * From [V_TRA_STA_ACA_CUS] '
      'Where [Tran.StationID] = :StationId'
      'And      [Tran.TranDate] >= :DateFrom'
      'Order By [Tran.TranDate]')
    Left = 24
    Top = 200
    object qTranMerchantMerchantId: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object qTranMerchantName: TWideStringField
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object qTranMerchantStreet: TWideStringField
      FieldName = 'Merchant.Street'
      Size = 50
    end
    object qTranMerchantZip: TWideStringField
      FieldName = 'Merchant.Zip'
      Size = 50
    end
    object qTranMerchantCity: TWideStringField
      FieldName = 'Merchant.City'
      Size = 50
    end
    object qTranMerchantAFM: TWideStringField
      FieldName = 'Merchant.AFM'
      Size = 15
    end
    object qTranMerchantDOY: TWideStringField
      FieldName = 'Merchant.DOY'
      Size = 50
    end
    object qTranMerchantIsTest: TBooleanField
      FieldName = 'Merchant.IsTest'
    end
    object qTranMerchantAreaId: TIntegerField
      FieldName = 'Merchant.AreaId'
    end
    object qTranMerchantSAPCode: TWideStringField
      FieldName = 'Merchant.SAPCode'
      Size = 10
    end
    object qTranMerchantMerchantCode: TWideStringField
      FieldName = 'Merchant.MerchantCode'
      Size = 50
    end
    object qTranMerchantSalesMenId: TIntegerField
      FieldName = 'Merchant.SalesMenId'
    end
    object qTranMerchantDeleted: TBooleanField
      FieldName = 'Merchant.Deleted'
    end
    object qTranMerchantInActive: TBooleanField
      FieldName = 'Merchant.InActive'
    end
    object qTranMerchantStopSales: TBooleanField
      FieldName = 'Merchant.StopSales'
    end
    object qTranStationStationId: TIntegerField
      FieldName = 'Station.StationId'
    end
    object qTranStationName: TWideStringField
      FieldName = 'Station.Name'
      Size = 100
    end
    object qTranStationStreet: TWideStringField
      FieldName = 'Station.Street'
      Size = 50
    end
    object qTranStationZIP: TWideStringField
      FieldName = 'Station.ZIP'
      Size = 50
    end
    object qTranStationCity: TWideStringField
      FieldName = 'Station.City'
      Size = 50
    end
    object qTranStationAreaId: TIntegerField
      FieldName = 'Station.AreaId'
    end
    object qTranStationSalesMenId: TIntegerField
      FieldName = 'Station.SalesMenId'
    end
    object qTranStationDeleted: TBooleanField
      FieldName = 'Station.Deleted'
    end
    object qTranStationInActive: TBooleanField
      FieldName = 'Station.InActive'
    end
    object qTranStationStopSales: TBooleanField
      FieldName = 'Station.StopSales'
    end
    object qTranTerminalTerminalCode: TWideStringField
      FieldName = 'Terminal.TerminalCode'
    end
    object qTranTerminalTerminalId: TIntegerField
      FieldName = 'Terminal.TerminalId'
    end
    object qTranTerminalSerialNo: TWideStringField
      FieldName = 'Terminal.SerialNo'
      Size = 50
    end
    object qTranCUSTOMERCUSTOMERId: TIntegerField
      FieldName = 'CUSTOMER.CUSTOMERId'
    end
    object qTranCUSTOMERName: TWideStringField
      DisplayLabel = #928#949#955#940#964#951#962
      FieldName = 'CUSTOMER.Name'
      Size = 50
    end
    object qTranCUSTOMERZip: TWideStringField
      FieldName = 'CUSTOMER.Zip'
      Size = 50
    end
    object qTranCUSTOMERStreet: TWideStringField
      FieldName = 'CUSTOMER.Street'
      Size = 50
    end
    object qTranCUSTOMERCity: TWideStringField
      FieldName = 'CUSTOMER.City'
      Size = 50
    end
    object qTranCUSTOMERAFM: TWideStringField
      FieldName = 'CUSTOMER.AFM'
      Size = 15
    end
    object qTranCUSTOMERDOY: TWideStringField
      FieldName = 'CUSTOMER.DOY'
      Size = 50
    end
    object qTranCUSTOMERAreaId: TIntegerField
      FieldName = 'CUSTOMER.AreaId'
    end
    object qTranCUSTOMERCGroupId: TIntegerField
      FieldName = 'CUSTOMER.CGroupId'
    end
    object qTranCUSTOMERCClassId: TIntegerField
      FieldName = 'CUSTOMER.CClassId'
    end
    object qTranCUSTOMERBranchId: TIntegerField
      FieldName = 'CUSTOMER.BranchId'
    end
    object qTranCUSTOMERSAPCode: TWideStringField
      FieldName = 'CUSTOMER.SAPCode'
      Size = 10
    end
    object qTranCUSTOMERIsActive: TBooleanField
      FieldName = 'CUSTOMER.IsActive'
    end
    object qTranCUSTOMERSalesMenId: TIntegerField
      FieldName = 'CUSTOMER.SalesMenId'
    end
    object qTranCUSTOMERIsTest: TBooleanField
      FieldName = 'CUSTOMER.IsTest'
    end
    object qTranCUSTOMERAreaBId: TIntegerField
      FieldName = 'CUSTOMER.AreaBId'
    end
    object qTranCUSTOMERHASDETAILEMP: TBooleanField
      FieldName = 'CUSTOMER.HASDETAILEMP'
    end
    object qTranCUSTOMERCUSTOMEROFF: TBooleanField
      FieldName = 'CUSTOMER.CUSTOMEROFF'
    end
    object qTranTRANTRANDATE: TDateTimeField
      DisplayLabel = #919#956#941#961#945
      FieldName = 'TRAN.TRANDATE'
      DisplayFormat = 'ddddd'
    end
    object qTranTRANACARDID: TIntegerField
      FieldName = 'TRAN.ACARDID'
    end
    object qTranTRANMerchantId: TIntegerField
      FieldName = 'TRAN.MerchantId'
    end
    object qTranTRANStationId: TIntegerField
      FieldName = 'TRAN.StationId'
    end
    object qTranTRANTerminalId: TIntegerField
      FieldName = 'TRAN.TerminalId'
    end
    object qTranTRANAmount: TFloatField
      DisplayLabel = #913#958#943#945
      FieldName = 'TRAN.Amount'
      currency = True
    end
    object qTranTRANSitemId: TIntegerField
      FieldName = 'TRAN.SitemId'
    end
    object qTranTRANQuantity: TFloatField
      DisplayLabel = #928#959#963#972#964#951#964#945
      FieldName = 'TRAN.Quantity'
      DisplayFormat = '0.00'
    end
    object qTranTRANIsAuto: TBooleanField
      FieldName = 'TRAN.IsAuto'
    end
    object qTranTRANStationUPD: TBooleanField
      FieldName = 'TRAN.StationUPD'
    end
    object qTranTRANACARDUPD: TBooleanField
      FieldName = 'TRAN.ACARDUPD'
    end
    object qTranTRANIsVoid: TBooleanField
      FieldName = 'TRAN.IsVoid'
    end
    object qTranTRANBatchNo: TIntegerField
      FieldName = 'TRAN.BatchNo'
    end
    object qTranTRANCommissionUpd: TBooleanField
      FieldName = 'TRAN.CommissionUpd'
    end
    object qTranTRANStationUPDBT: TIntegerField
      FieldName = 'TRAN.StationUPDBT'
    end
    object qTranTRANAcardUPDBT: TIntegerField
      FieldName = 'TRAN.AcardUPDBT'
    end
    object qTranTRANCommissionUPDBT: TIntegerField
      FieldName = 'TRAN.CommissionUPDBT'
    end
    object qTranTRANTranTime: TDateTimeField
      DisplayLabel = #911#961#945
      FieldName = 'TRAN.TranTime'
      DisplayFormat = 't'
    end
    object qTranTRANIsTyped: TBooleanField
      FieldName = 'TRAN.IsTyped'
    end
    object qTranTRANDiscountUPD: TBooleanField
      FieldName = 'TRAN.DiscountUPD'
    end
    object qTranTRANDiscountUPDBT: TIntegerField
      FieldName = 'TRAN.DiscountUPDBT'
    end
    object qTranTRANDisQuantity: TFloatField
      FieldName = 'TRAN.DisQuantity'
    end
    object qTranTRANDisAmount: TFloatField
      FieldName = 'TRAN.DisAmount'
    end
    object qTranTRANPelaDailyUPD: TBooleanField
      FieldName = 'TRAN.PelaDailyUPD'
    end
    object qTranTRANPelaDailyUPDBT: TIntegerField
      FieldName = 'TRAN.PelaDailyUPDBT'
    end
    object qTranACARDACARDID: TIntegerField
      FieldName = 'ACARD.ACARDID'
    end
    object qTranACARDACARDCODE: TWideStringField
      FieldName = 'ACARD.ACARDCODE'
      Size = 50
    end
    object qTranACARDCustimerId: TIntegerField
      FieldName = 'ACARD.CustimerId'
    end
    object qTranACARDVTypeId: TIntegerField
      FieldName = 'ACARD.VTypeId'
    end
    object qTranACARDREGNO: TWideStringField
      FieldName = 'ACARD.REGNO'
      Size = 50
    end
    object qTranACARDACARDHOLDER: TWideStringField
      FieldName = 'ACARD.ACARDHOLDER'
      Size = 30
    end
    object qTranACARDIsActive: TBooleanField
      FieldName = 'ACARD.IsActive'
    end
    object qTranACARDEMPLOYEESID: TIntegerField
      FieldName = 'ACARD.EMPLOYEESID'
    end
    object qTranACARDCostCenterId: TIntegerField
      FieldName = 'ACARD.CostCenterId'
    end
    object qTranVTYPEVTYPEID: TIntegerField
      FieldName = 'VTYPE.VTYPEID'
    end
    object qTranVTYPEDescr: TWideStringField
      FieldName = 'VTYPE.Descr'
      Size = 50
    end
    object qTranREGNOSEQREGNOSEQID: TIntegerField
      FieldName = 'REGNOSEQ.REGNOSEQID'
    end
    object qTranREGNOSEQREGNO: TWideStringField
      FieldName = 'REGNOSEQ.REGNO'
      Size = 50
    end
    object qTranTRANTRANID: TIntegerField
      FieldName = 'TRAN.TRANID'
    end
    object qTranTRANKMBEFORE: TIntegerField
      FieldName = 'TRAN.KMBEFORE'
    end
    object qTranTRANKMAFTER: TIntegerField
      FieldName = 'TRAN.KMAFTER'
    end
    object qTranTRANREFSTR: TWideStringField
      FieldName = 'TRAN.REFSTR'
      Size = 50
    end
    object qTranTRANUNITPRICE: TFloatField
      FieldName = 'TRAN.UNITPRICE'
      DisplayFormat = '0.000'
    end
    object qTranSITEMCODEINTERMINAL: TIntegerField
      FieldName = 'SITEM.CODEINTERMINAL'
    end
    object qTranSITEMDESCR: TWideStringField
      FieldName = 'SITEM.DESCR'
      Size = 50
    end
    object qTranSITEMIGROUPID: TIntegerField
      FieldName = 'SITEM.IGROUPID'
    end
    object qTranIGROUPNAME: TWideStringField
      FieldName = 'IGROUP.NAME'
      Size = 50
    end
    object qTranCostCenterCCName: TWideStringField
      FieldName = 'CostCenter.CCName'
      Size = 50
    end
    object qTranCostCenterCCNameFull: TWideStringField
      FieldName = 'CostCenter.CCNameFull'
      Size = 100
    end
    object qryTransAcardAcardCodeFull: TWideStringField
      FieldName = 'Acard.AcardCodeFull'
      ReadOnly = True
      Size = 19
    end
  end
  object qryApproval: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = qryStationPopUpCalcFields
    DataSource = dsmemStation
    Parameters = <
      item
        Name = 'StationId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'Select *'
      'From V_APPROVAL'
      'Where APPROVALSTATIONID = :StationId'
      '')
    Left = 240
    Top = 88
    object qryApprovalMerchantName: TWideStringField
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object qryApprovalStationStreet: TWideStringField
      FieldName = 'Station.Street'
      Size = 50
    end
    object qryApprovalStationCity: TWideStringField
      FieldName = 'Station.City'
      Size = 50
    end
    object qryApprovalAPPROVALID: TIntegerField
      FieldName = 'APPROVALID'
    end
    object qryApprovalAPPROVALAMOUNT: TFloatField
      FieldName = 'APPROVALAMOUNT'
      currency = True
    end
    object qryApprovalAPPROVALCODE: TWideStringField
      FieldName = 'APPROVALCODE'
      Size = 10
    end
    object qryApprovalAcardAcardCodeFull: TWideStringField
      FieldName = 'Acard.AcardCodeFull'
      ReadOnly = True
      Size = 19
    end
    object qryApprovalINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qryApprovalName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object qryApprovalINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qryApprovalMerchantMerchantId: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object qryApprovalTerminalTerminalid: TIntegerField
      FieldName = 'Terminal.Terminalid'
    end
    object qryApprovalAPPROVALACARDID: TIntegerField
      FieldName = 'APPROVALACARDID'
    end
    object qryApprovalAPPROVALSTATIONID: TIntegerField
      FieldName = 'APPROVALSTATIONID'
    end
  end
  object dtsContacts: TDataSource
    AutoEdit = False
    DataSet = qryContacts
    Left = 88
    Top = 280
  end
  object qryContacts: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dsmemStation
    Parameters = <
      item
        Name = 'StationId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'Select * From VStation_Contacts'
      'Where StationID = :StationId'
      '')
    Left = 24
    Top = 280
    object qryContactsContactType_Procedure: TWideStringField
      FieldName = 'ContactType_Procedure'
      FixedChar = True
      Size = 15
    end
    object qryContactsContactsName: TWideStringField
      FieldName = 'Contacts.Name'
      Size = 50
    end
    object qryContactsContactsSurname: TWideStringField
      FieldName = 'Contacts.Surname'
      Size = 50
    end
    object qryContactsemail: TWideStringField
      FieldName = 'email'
      Size = 80
    end
    object qryContactsPhone: TWideStringField
      FieldName = 'Phone'
      Size = 45
    end
    object qryContactsFax: TWideStringField
      FieldName = 'Fax'
      Size = 45
    end
    object qryContactsMobile: TWideStringField
      FieldName = 'Mobile'
      Size = 45
    end
    object qryContactsSendMail: TBooleanField
      FieldName = 'SendMail'
    end
    object qryContactsSendFax: TBooleanField
      FieldName = 'SendFax'
    end
    object qryContactsSendPrint: TBooleanField
      FieldName = 'SendPrint'
    end
    object qryContactsMain: TBooleanField
      FieldName = 'Main'
    end
    object qryContactsAA: TIntegerField
      FieldName = 'AA'
    end
    object qryContactsStationid: TIntegerField
      FieldName = 'Stationid'
    end
    object qryContactsStationName: TWideStringField
      FieldName = 'Station.Name'
      Size = 100
    end
  end
  object qryTRCALLDET: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = qryTRCALLDETCalcFields
    DataSource = dsmemStation
    Parameters = <
      item
        Name = 'StationId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = 'DateFrom'
        DataType = ftDateTime
        Precision = 16
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'Select * '
      'From TRCALLDET'
      'Where TRCALLDSTATIONID = :StationId'
      'And TRCALLDDATE >= :DateFrom'
      '')
    Left = 24
    Top = 344
    object qryTRCALLDETTRCALLDDATE: TDateTimeField
      FieldName = 'TRCALLDDATE'
    end
    object qryTRCALLDETTRCALLDSTATIONID: TIntegerField
      FieldName = 'TRCALLDSTATIONID'
    end
    object qryTRCALLDETTRCALLDSTATUS: TIntegerField
      FieldName = 'TRCALLDSTATUS'
    end
    object qryTRCALLDETLCallStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'LCallStatus'
      Calculated = True
    end
  end
  object dtsTRCALLDET: TDataSource
    AutoEdit = False
    DataSet = qryTRCALLDET
    Left = 96
    Top = 344
  end
  object qryStationPopUp2: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    LockType = ltReadOnly
    OnCalcFields = qryStationPopUp2CalcFields
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'Select *'
      'From V_Station_PopUp'
      'Where [Merchant.MerchantId] in (Select id from MakMerCodes)')
    Left = 232
    Top = 232
    object qryStationPopUp2LFullName: TStringField
      FieldKind = fkCalculated
      FieldName = 'LFullName'
      Size = 50
      Calculated = True
    end
    object qryStationPopUp2LFullName2: TStringField
      FieldKind = fkCalculated
      FieldName = 'LFullName2'
      Size = 80
      Calculated = True
    end
    object qryStationPopUp2StationStationId: TIntegerField
      FieldName = 'Station.StationId'
    end
    object qryStationPopUp2MerchantMerchantId: TIntegerField
      FieldName = 'Merchant.MerchantId'
    end
    object qryStationPopUp2StationStreet: TWideStringField
      FieldName = 'Station.Street'
      Size = 50
    end
    object qryStationPopUp2StationCity: TWideStringField
      FieldName = 'Station.City'
      Size = 50
    end
    object qryStationPopUp2MerchantName: TWideStringField
      FieldName = 'Merchant.Name'
      Size = 100
    end
    object qryStationPopUp2StationName: TWideStringField
      FieldName = 'Station.Name'
      Size = 100
    end
  end
  object dsqryStationPopUp2: TDataSource
    AutoEdit = False
    DataSet = qryStationPopUp2
    Left = 344
    Top = 232
  end
  object dtsStationTerminal: TDataSource
    AutoEdit = False
    DataSet = qryStationTerminal
    Left = 336
    Top = 320
  end
  object qryStationTerminal: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dsmemStation
    Parameters = <
      item
        Name = 'StationId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'Select * From VStation_Terminal'
      'Where StationID = :StationId'
      '')
    Left = 232
    Top = 320
    object qryStationTerminalStationId: TIntegerField
      FieldName = 'StationId'
    end
    object qryStationTerminalTerminalCode: TWideStringField
      FieldName = 'TerminalCode'
    end
    object qryStationTerminalTerminalid: TIntegerField
      FieldName = 'Terminalid'
    end
    object qryStationTerminalTerminalSerialNo: TWideStringField
      FieldName = 'TerminalSerialNo'
      Size = 50
    end
  end
  object qryStation: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dsmemStation
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM Station')
    Left = 24
    Top = 16
    object qryStationStationid: TAutoIncField
      FieldName = 'Stationid'
      ReadOnly = True
    end
    object qryStationName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object qryStationSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object qryStationZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qryStationCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qryStationAreaId: TIntegerField
      FieldName = 'AreaId'
    end
    object qryStationSalesMenId: TIntegerField
      FieldName = 'SalesMenId'
    end
    object qryStationIGroupId1: TIntegerField
      FieldName = 'IGroupId1'
    end
    object qryStationPososto1: TFloatField
      FieldName = 'Pososto1'
    end
    object qryStationHaveGroup1: TBooleanField
      FieldName = 'HaveGroup1'
    end
    object qryStationIGroupId2: TIntegerField
      FieldName = 'IGroupId2'
    end
    object qryStationPososto2: TFloatField
      FieldName = 'Pososto2'
    end
    object qryStationHaveGroup2: TBooleanField
      FieldName = 'HaveGroup2'
    end
    object qryStationIGroupId3: TIntegerField
      FieldName = 'IGroupId3'
    end
    object qryStationPososto3: TFloatField
      FieldName = 'Pososto3'
    end
    object qryStationHaveGroup3: TBooleanField
      FieldName = 'HaveGroup3'
    end
    object qryStationIGroupId4: TIntegerField
      FieldName = 'IGroupId4'
    end
    object qryStationPososto4: TFloatField
      FieldName = 'Pososto4'
    end
    object qryStationHaveGroup4: TBooleanField
      FieldName = 'HaveGroup4'
    end
    object qryStationIGroupId5: TIntegerField
      FieldName = 'IGroupId5'
    end
    object qryStationPososto5: TFloatField
      FieldName = 'Pososto5'
    end
    object qryStationHaveGroup5: TBooleanField
      FieldName = 'HaveGroup5'
    end
    object qryStationIGroupId6: TIntegerField
      FieldName = 'IGroupId6'
    end
    object qryStationPososto6: TFloatField
      FieldName = 'Pososto6'
    end
    object qryStationHaveGroup6: TBooleanField
      FieldName = 'HaveGroup6'
    end
    object qryStationIGroupId7: TIntegerField
      FieldName = 'IGroupId7'
    end
    object qryStationPososto7: TFloatField
      FieldName = 'Pososto7'
    end
    object qryStationHaveGroup7: TBooleanField
      FieldName = 'HaveGroup7'
    end
    object qryStationIGroupId8: TIntegerField
      FieldName = 'IGroupId8'
    end
    object qryStationPososto8: TFloatField
      FieldName = 'Pososto8'
    end
    object qryStationHaveGroup8: TBooleanField
      FieldName = 'HaveGroup8'
    end
    object qryStationIGroupId9: TIntegerField
      FieldName = 'IGroupId9'
    end
    object qryStationPososto9: TFloatField
      FieldName = 'Pososto9'
    end
    object qryStationHaveGroup9: TBooleanField
      FieldName = 'HaveGroup9'
    end
    object qryStationIGroupId10: TIntegerField
      FieldName = 'IGroupId10'
    end
    object qryStationPososto10: TFloatField
      FieldName = 'Pososto10'
    end
    object qryStationHaveGroup10: TBooleanField
      FieldName = 'HaveGroup10'
    end
    object qryStationDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qryStationDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qryStationDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qryStationInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qryStationInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qryStationInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object qryStationStopSales: TBooleanField
      FieldName = 'StopSales'
    end
    object qryStationStopSalesUsr: TIntegerField
      FieldName = 'StopSalesUsr'
    end
    object qryStationStopSalesDt: TDateTimeField
      FieldName = 'StopSalesDt'
    end
    object qryStationIsTest: TBooleanField
      FieldName = 'IsTest'
    end
    object qryStationIsTestUsr: TIntegerField
      FieldName = 'IsTestUsr'
    end
    object qryStationIsTestDt: TDateTimeField
      FieldName = 'IsTestDt'
    end
    object qryStationEndPending: TBooleanField
      FieldName = 'EndPending'
    end
    object qryStationEndPendingDT: TDateTimeField
      FieldName = 'EndPendingDT'
    end
    object qryStationEndPendingUsr: TIntegerField
      FieldName = 'EndPendingUsr'
    end
  end
end
