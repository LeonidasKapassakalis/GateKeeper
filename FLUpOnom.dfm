inherited frmLUpOnom: TfrmLUpOnom
  Caption = #917#965#961#949#964#942#961#953#959
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlTop: TPanel
    Visible = False
  end
  inherited PnlBottom: TPanel
    inherited PageControl1: TPageControl
      inherited TabSheet1: TTabSheet
        inherited FormGrid: TDBGrid
          DataSource = DataSource1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = popFilter
          ReadOnly = True
          OnDblClick = FormGridDblClick
        end
      end
    end
  end
  inherited popFilter: TPopupMenu
    inherited N2: TMenuItem
      ShortCut = 16454
    end
  end
end
