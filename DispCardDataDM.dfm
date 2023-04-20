object DispCardDataDM: TDispCardDataDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 363
  Width = 544
  object dsSItems: TDataSource
    DataSet = qSItems
    Left = 264
    Top = 72
  end
  object qSItems: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from IGroup')
    Left = 192
    Top = 72
    object qSItemsId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object qSItemsName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
    object qSItemsBITNO: TIntegerField
      FieldName = 'BITNO'
    end
    object qSItemsPOSOSTO: TFloatField
      FieldName = 'POSOSTO'
    end
    object qSItemsInsUsr: TIntegerField
      FieldName = 'InsUsr'
    end
    object qSItemsInsDT: TDateTimeField
      FieldName = 'InsDT'
    end
    object qSItemsUpdUsr: TIntegerField
      FieldName = 'UpdUsr'
    end
    object qSItemsUpdDT: TDateTimeField
      FieldName = 'UpdDT'
    end
    object qSItemsDeleted: TBooleanField
      FieldName = 'Deleted'
    end
    object qSItemsDelUsr: TIntegerField
      FieldName = 'DelUsr'
    end
    object qSItemsDelDT: TDateTimeField
      FieldName = 'DelDT'
    end
    object qSItemsInActive: TBooleanField
      FieldName = 'InActive'
    end
    object qSItemsInActiveUsr: TIntegerField
      FieldName = 'InActiveUsr'
    end
    object qSItemsInActiveDt: TDateTimeField
      FieldName = 'InActiveDt'
    end
    object qSItemsUseKM: TBooleanField
      FieldName = 'UseKM'
    end
    object qSItemsUseQuantity: TBooleanField
      FieldName = 'UseQuantity'
    end
    object qSItemsCalcCons: TBooleanField
      FieldName = 'CalcCons'
    end
  end
  object QStation: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select StationID,Name From Station')
    Left = 192
    Top = 16
    object QStationStationID: TAutoIncField
      FieldName = 'StationID'
      ReadOnly = True
    end
    object QStationName: TWideStringField
      FieldName = 'Name'
      Size = 50
    end
  end
  object dsStation: TDataSource
    AutoEdit = False
    DataSet = QStation
    Left = 264
    Top = 16
  end
  object dsTran: TDataSource
    AutoEdit = False
    DataSet = qTran
    Left = 64
    Top = 64
  end
  object qTran: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dsmemStation
    Parameters = <
      item
        Name = 'ACardId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'DateFrom'
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'Select * From [V_TRA_STA_ACA_CUS] '
      'Where [Tran.AcardID] = :ACardId'
      'And      [Tran.TranDate] >= :DateFrom'
      'Order By [Tran.TranDate]')
    Left = 16
    Top = 64
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
      FieldName = 'TRAN.Amount'
      currency = True
    end
    object qTranTRANSitemId: TIntegerField
      FieldName = 'TRAN.SitemId'
    end
    object qTranTRANQuantity: TFloatField
      FieldName = 'TRAN.Quantity'
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
  end
  object qCust: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dsACard
    Parameters = <
      item
        Name = 'CustomerId'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Value = 8
      end>
    Prepared = True
    SQL.Strings = (
      'Select * From Customer Where CustomerId = :CustomerId')
    Left = 16
    Top = 120
    object qCustCUSTOMERID: TAutoIncField
      FieldName = 'CUSTOMERID'
      ReadOnly = True
    end
    object qCustNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object qCustSTREET: TWideStringField
      FieldName = 'STREET'
      Size = 50
    end
    object qCustZIP: TWideStringField
      FieldName = 'ZIP'
      Size = 50
    end
    object qCustCITY: TWideStringField
      FieldName = 'CITY'
      Size = 50
    end
    object qCustAFM: TWideStringField
      FieldName = 'AFM'
      Size = 15
    end
    object qCustDOY: TWideStringField
      FieldName = 'DOY'
      Size = 50
    end
    object qCustSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qCustAREAID: TIntegerField
      FieldName = 'AREAID'
    end
    object qCustLOCATIONID: TIntegerField
      FieldName = 'LOCATIONID'
    end
    object qCustCGROUPID: TIntegerField
      FieldName = 'CGROUPID'
    end
    object qCustCCLASSID: TIntegerField
      FieldName = 'CCLASSID'
    end
    object qCustCREDITAMOUNT: TFloatField
      FieldName = 'CREDITAMOUNT'
    end
    object qCustINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qCustUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qCustINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qCustUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qCustPROFESSION: TWideStringField
      FieldName = 'PROFESSION'
      Size = 50
    end
    object qCustBRANCHID: TIntegerField
      FieldName = 'BRANCHID'
    end
    object qCustSAPCODE: TWideStringField
      FieldName = 'SAPCODE'
      Size = 10
    end
    object qCustISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qCustSALESMENID: TIntegerField
      FieldName = 'SALESMENID'
    end
    object qCustDIAKID: TIntegerField
      FieldName = 'DIAKID'
    end
    object qCustISTEST: TBooleanField
      FieldName = 'ISTEST'
    end
    object qCustISCONS: TBooleanField
      FieldName = 'ISCONS'
    end
    object qCustAREABID: TIntegerField
      FieldName = 'AREABID'
    end
    object qCustDATEPHEND: TDateTimeField
      FieldName = 'DATEPHEND'
    end
    object qCustDATELOEND: TDateTimeField
      FieldName = 'DATELOEND'
    end
    object qCustHASDETAILEMP: TBooleanField
      FieldName = 'HASDETAILEMP'
    end
    object qCustALLCARDSTOBL: TBooleanField
      FieldName = 'ALLCARDSTOBL'
    end
    object qCustALLCARDSTOBLDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLDATE'
    end
    object qCustALLCARDSTOBLSYSDATE: TDateTimeField
      FieldName = 'ALLCARDSTOBLSYSDATE'
    end
    object qCustALLCARDSTOBLUSR: TIntegerField
      FieldName = 'ALLCARDSTOBLUSR'
    end
    object qCustCUSTOMEROFF: TBooleanField
      FieldName = 'CUSTOMEROFF'
    end
    object qCustCUSTOMEROFFDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFDATE'
    end
    object qCustCUSTOMEROFFSYSDATE: TDateTimeField
      FieldName = 'CUSTOMEROFFSYSDATE'
    end
    object qCustCUSTOMEROFFUSR: TIntegerField
      FieldName = 'CUSTOMEROFFUSR'
    end
    object qCustCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object qCustDATEEND: TDateTimeField
      FieldName = 'DATEEND'
    end
    object qCustCompanyTypeId: TIntegerField
      FieldName = 'CompanyTypeId'
    end
    object qCustGarantieId: TIntegerField
      FieldName = 'GarantieId'
    end
    object qCustGarantieAmount: TBCDField
      FieldName = 'GarantieAmount'
      Precision = 19
    end
    object qCustComments: TMemoField
      FieldName = 'Comments'
      BlobType = ftMemo
    end
  end
  object dsCust: TDataSource
    AutoEdit = False
    DataSet = qCust
    Left = 64
    Top = 120
  end
  object dsACard: TDataSource
    AutoEdit = False
    DataSet = qACard
    Left = 64
    Top = 8
  end
  object qACard: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dsmemStation
    Parameters = <
      item
        Name = 'ACardId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    Prepared = True
    SQL.Strings = (
      'Select * From VACARD Where AcardId = :ACardId')
    Left = 16
    Top = 8
    object qACardACARDID: TAutoIncField
      FieldName = 'ACARDID'
      ReadOnly = True
    end
    object qACardACARDCODE: TWideStringField
      FieldName = 'ACARDCODE'
      Size = 50
    end
    object qACardCUSTOMERID: TIntegerField
      FieldName = 'CUSTOMERID'
    end
    object qACardISSUEDATE: TDateTimeField
      FieldName = 'ISSUEDATE'
    end
    object qACardEXPIREDATE: TDateTimeField
      FieldName = 'EXPIREDATE'
    end
    object qACardMETERBOOLEAN: TBooleanField
      FieldName = 'METERBOOLEAN'
    end
    object qACardPINBOOLEAN: TBooleanField
      FieldName = 'PINBOOLEAN'
    end
    object qACardINSDT: TDateTimeField
      FieldName = 'INSDT'
    end
    object qACardUPDDT: TDateTimeField
      FieldName = 'UPDDT'
    end
    object qACardINSUSR: TIntegerField
      FieldName = 'INSUSR'
    end
    object qACardUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
    end
    object qACardSTARTDATE: TDateTimeField
      FieldName = 'STARTDATE'
    end
    object qACardVTYPEID: TIntegerField
      FieldName = 'VTYPEID'
    end
    object qACardCREATEBOOLEAN: TBooleanField
      FieldName = 'CREATEBOOLEAN'
    end
    object qACardBLACKLISTBOOLEAN: TBooleanField
      FieldName = 'BLACKLISTBOOLEAN'
    end
    object qACardBLACKLISTDATE: TDateTimeField
      FieldName = 'BLACKLISTDATE'
    end
    object qACardBLACKLISTUSR: TIntegerField
      FieldName = 'BLACKLISTUSR'
    end
    object qACardBLACKLISTNOTES: TWideStringField
      FieldName = 'BLACKLISTNOTES'
      Size = 200
    end
    object qACardIGROUPID1: TIntegerField
      FieldName = 'IGROUPID1'
    end
    object qACardIGROUPID2: TIntegerField
      FieldName = 'IGROUPID2'
    end
    object qACardIGROUPID3: TIntegerField
      FieldName = 'IGROUPID3'
    end
    object qACardIGROUPID4: TIntegerField
      FieldName = 'IGROUPID4'
    end
    object qACardIGROUPID5: TIntegerField
      FieldName = 'IGROUPID5'
    end
    object qACardIGROUPID6: TIntegerField
      FieldName = 'IGROUPID6'
    end
    object qACardIGROUPID7: TIntegerField
      FieldName = 'IGROUPID7'
    end
    object qACardIGROUPID8: TIntegerField
      FieldName = 'IGROUPID8'
    end
    object qACardIGROUPID9: TIntegerField
      FieldName = 'IGROUPID9'
    end
    object qACardIGROUPID10: TIntegerField
      FieldName = 'IGROUPID10'
    end
    object qACardDAYAMOUNT: TFloatField
      FieldName = 'DAYAMOUNT'
      currency = True
    end
    object qACardMONTHAMOUNT: TFloatField
      FieldName = 'MONTHAMOUNT'
      currency = True
    end
    object qACardREGNO: TWideStringField
      FieldName = 'REGNO'
      Size = 50
    end
    object qACardACARDHOLDER: TWideStringField
      FieldName = 'ACARDHOLDER'
      Size = 30
    end
    object qACardISACTIVE: TBooleanField
      FieldName = 'ISACTIVE'
    end
    object qACardEXPIREPHDATE: TDateTimeField
      FieldName = 'EXPIREPHDATE'
    end
    object qACardEXPIRELODATE: TDateTimeField
      FieldName = 'EXPIRELODATE'
    end
    object qACardEMPLOYEESID: TIntegerField
      FieldName = 'EMPLOYEESID'
    end
    object qACardNEWCARDBOOLEAN: TBooleanField
      FieldName = 'NEWCARDBOOLEAN'
    end
    object qACardNEWCARDID: TIntegerField
      FieldName = 'NEWCARDID'
    end
    object qACardCARDHASEMPNAME: TBooleanField
      FieldName = 'CARDHASEMPNAME'
    end
    object qACardACARDCODENUM: TIntegerField
      FieldName = 'ACARDCODENUM'
    end
    object qACardINACTIVEDATE: TDateTimeField
      FieldName = 'INACTIVEDATE'
    end
    object qACardINACTIVEUSR: TIntegerField
      FieldName = 'INACTIVEUSR'
    end
    object qACardINACTIVENOTES: TWideStringField
      FieldName = 'INACTIVENOTES'
      FixedChar = True
      Size = 200
    end
    object qACardCOSTCENTERID: TIntegerField
      FieldName = 'COSTCENTERID'
    end
    object qACardAcardCodeFull: TWideStringField
      FieldName = 'AcardCodeFull'
      ReadOnly = True
      Size = 19
    end
    object qACardLProd1: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd1'
      LookupDataSet = qSItems
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'IGROUPID1'
      ReadOnly = True
      Lookup = True
    end
    object qACardLProd2: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd2'
      LookupDataSet = qSItems
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'IGROUPID2'
      ReadOnly = True
      Lookup = True
    end
    object qACardLProd3: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd3'
      LookupDataSet = qSItems
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'IGROUPID3'
      ReadOnly = True
      Lookup = True
    end
    object qACardLProd4: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd4'
      LookupDataSet = qSItems
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'IGROUPID4'
      ReadOnly = True
      Lookup = True
    end
    object qACardLProd5: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd5'
      LookupDataSet = qSItems
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'IGROUPID5'
      Lookup = True
    end
    object qACardLProd6: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd6'
      LookupDataSet = qSItems
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'IGROUPID6'
      Lookup = True
    end
    object qACardLProd7: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd7'
      LookupDataSet = qSItems
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'IGROUPID7'
      Lookup = True
    end
    object qACardLProd8: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd8'
      LookupDataSet = qSItems
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'IGROUPID8'
      Lookup = True
    end
    object qACardLProd9: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd9'
      LookupDataSet = qSItems
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'IGROUPID9'
      Lookup = True
    end
    object qACardLProd10: TStringField
      FieldKind = fkLookup
      FieldName = 'LProd10'
      LookupDataSet = qSItems
      LookupKeyFields = 'Id'
      LookupResultField = 'Name'
      KeyFields = 'IGROUPID10'
      Lookup = True
    end
  end
  object qApproval: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    DataSource = dsACard
    Parameters = <
      item
        Name = 'ACardId'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Select * From Approval'
      'Where ApprovalAcardId = :ACardId')
    Left = 192
    Top = 144
    object qApprovalAPPROVALID: TAutoIncField
      FieldName = 'APPROVALID'
      ReadOnly = True
      Visible = False
    end
    object qApprovalAPPROVALACARDID: TIntegerField
      FieldName = 'APPROVALACARDID'
      Visible = False
    end
    object qApprovalAPPROVALSTATIONID: TIntegerField
      FieldName = 'APPROVALSTATIONID'
      Visible = False
    end
    object qApprovalAPPROVALAMOUNT: TFloatField
      DisplayLabel = #913#958#943#945
      FieldName = 'APPROVALAMOUNT'
      currency = True
    end
    object qApprovalAPPROVALCODE: TWideStringField
      DisplayLabel = #922#969#948#953#954#972#962
      FieldName = 'APPROVALCODE'
      Size = 10
    end
    object qApprovalINSDT: TDateTimeField
      DisplayLabel = #919#956'/'#957#943#945
      FieldName = 'INSDT'
    end
    object qApprovalUPDDT: TDateTimeField
      FieldName = 'UPDDT'
      Visible = False
    end
    object qApprovalINSUSR: TIntegerField
      DisplayLabel = #935#961#942#963#964#951#962
      FieldName = 'INSUSR'
      Visible = False
    end
    object qApprovalUPDUSR: TIntegerField
      FieldName = 'UPDUSR'
      Visible = False
    end
  end
  object dsApproval: TDataSource
    DataSet = qApproval
    Left = 264
    Top = 144
  end
  object memStation: TdxMemData
    Indexes = <>
    SortOptions = []
    OnCalcFields = memStationCalcFields
    Left = 48
    Top = 264
    object memStationCardKey: TIntegerField
      FieldName = 'CardKey'
    end
    object memStationAcardId: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'AcardId'
      Calculated = True
    end
    object memStationDateFrom: TDateTimeField
      FieldName = 'DateFrom'
    end
  end
  object dsmemStation: TDataSource
    DataSet = memStation
    Left = 112
    Top = 264
  end
  object ADOQuery1: TADOQuery
    Connection = DMMain.ADOConnection
    CursorType = ctStatic
    OnCalcFields = ADOQuery1CalcFields
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'Select * From V_ACARD_PopUp')
    Left = 400
    Top = 152
    object ADOQuery1AcardAcardId: TAutoIncField
      FieldName = 'Acard.AcardId'
      ReadOnly = True
    end
    object ADOQuery1AcardREGNO: TWideStringField
      DisplayLabel = #913#961'.'#922#965#954#955#959#966#959#961#943#945#962
      DisplayWidth = 12
      FieldName = 'Acard.REGNO'
      Size = 50
    end
    object ADOQuery1AcardAcardCode: TWideStringField
      FieldName = 'Acard.AcardCode'
      Size = 50
    end
    object ADOQuery1AcardAcardCodeFull: TWideStringField
      DisplayLabel = #922#940#961#964#945
      FieldName = 'Acard.AcardCodeFull'
      ReadOnly = True
      Size = 19
    end
    object ADOQuery1AcardId: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'AcardId'
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = ADOQuery1
    Left = 456
    Top = 152
  end
end
