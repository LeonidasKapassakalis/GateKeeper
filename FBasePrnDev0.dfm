inherited frmBasePrnDev0: TfrmBasePrnDev0
  Caption = 'frmBasePrnDev0'
  PixelsPerInch = 96
  TextHeight = 13
  inherited popFilter: TPopupMenu
    Left = 268
    Top = 35
  end
  inherited ActionMainList: TActionList
    Left = 360
    Top = 32
    object actSaveVariants: TAction [14]
      Caption = #925#941#945' Variant'
      OnExecute = actSaveVariantsExecute
    end
    object actLoadVariants: TAction [15]
      Caption = #913#957#940#954#955#951#963#951' Variant'
      OnExecute = actLoadVariantsExecute
    end
    object actClearMemWs: TAction [16]
      Caption = 'Clear'
      OnExecute = actClearMemWsExecute
    end
  end
  object memWS: TdxMemData
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F240000000400000009000700467244617465000400
      000009000700546F44617465001000000001000C0046724143617264436F6465
      001000000001000C00546F4143617264436F6465000400000003000C00467253
      746174696F6E4964000400000003000C00546F53746174696F6E496400040000
      0003000D0046724D65726368616E744964000400000003000D00546F4D657263
      68616E744964000A00000001000E0046724D65726368616E74536170000A0000
      0001000E00546F4D65726368616E74536170000A00000001000E004672437573
      746F6D6572536170001400000001000E00546F437573746F6D65725361700032
      00000001000B004672437573746F6D6572003200000001000B00546F43757374
      6F6D6572000400000003000D0046725465726D696E616C496400040000000300
      0D00546F5465726D696E616C496400080000000B000A00467244617465496E73
      00080000000B000A00546F44617465496E73000400000003000F004672437573
      746F6D6572436F6465000400000003000F00546F437573746F6D6572436F6465
      0004000000090009004672446174655374000400000009000900546F44617465
      5374000400000003000400446566000400000003000400446574000400000003
      000900456E686D50656C46000400000003000900456E686D50656C5400040000
      0003000900456E686D436F6D46000400000003000900456E686D436F6D540004
      00000003000A00456E686D4469736346000400000003000A00456E686D446973
      6354000400000003000A00456E686D5374617446000400000003000A00456E68
      6D53746174540004000000030007004261746368460004000000030007004261
      74636854000200000005000B00456E686D4461696C7947000200000005000A00
      456E686D50656C614700}
    SortOptions = []
    Left = 480
    Top = 40
  end
  object dsmemWS: TDataSource
    DataSet = memWS
    Left = 544
    Top = 40
  end
end
